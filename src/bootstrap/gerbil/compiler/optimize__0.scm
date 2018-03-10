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
    (lambda _$args27334_
      (apply make-struct-instance gxc#optimizer-info::t _$args27334_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27332_)
      (if (##fx< '2 (##vector-length _self27332_))
          (begin
            (##vector-set! _self27332_ '1 (make-hash-table-eq))
            (##vector-set! _self27332_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27332_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27346 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27346) __obj27346))))))
  (define gxc#optimize!
    (lambda (_ctx27204_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27204_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27204_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27207_
                  (gxc#optimize-source
                   (##structure-ref _ctx27204_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27204_
              _code27207_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27149_)
      (letrec* ((_deps27151_
                 (let* ((_imports27195_
                         (##structure-ref
                          _ctx27149_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27197_ (gx#core-context-prelude__% _ctx27149_)))
                   (if _$e27197_
                       ((lambda (_g2719927201_)
                          (cons _g2719927201_ _imports27195_))
                        _$e27197_)
                       _imports27195_))))
        (let _lp27153_ ((_rest27155_ _deps27151_))
          (let* ((_rest2715627164_ _rest27155_)
                 (_E2715927168_
                  (lambda () (error '"No clause matching" _rest2715627164_)))
                 (_else2715827172_ (lambda () '#!void))
                 (_K2716027183_
                  (lambda (_rest27175_ _hd27176_)
                    (if (##structure-instance-of?
                         _hd27176_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27176_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27178_
                                       (gx#core-context-prelude__% _hd27176_)))
                                  (if _$e27178_
                                      ((lambda (_pre27181_)
                                         (_lp27153_
                                          (cons _pre27181_
                                                (##structure-ref
                                                 _hd27176_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27178_)
                                      (_lp27153_
                                       (##structure-ref
                                        _hd27176_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27176_)))
                          (_lp27153_ _rest27175_))
                        (if (##structure-instance-of?
                             _hd27176_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27176_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27153_
                                     (##structure-ref
                                      _hd27176_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27176_)))
                              (_lp27153_ _rest27175_))
                            (if (##structure-direct-instance-of?
                                 _hd27176_
                                 'gx#module-import::t)
                                (_lp27153_
                                 (cons (##direct-structure-ref
                                        _hd27176_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27175_))
                                (if (##structure-direct-instance-of?
                                     _hd27176_
                                     'gx#module-export::t)
                                    (_lp27153_
                                     (cons (##direct-structure-ref
                                            _hd27176_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27175_))
                                    (if (##structure-direct-instance-of?
                                         _hd27176_
                                         'gx#import-set::t)
                                        (_lp27153_
                                         (cons (##direct-structure-ref
                                                _hd27176_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27175_))
                                        (error '"Unexpected module import"
                                               _hd27176_)))))))))
            (if (##pair? _rest2715627164_)
                (let ((_hd2716127186_ (##car _rest2715627164_))
                      (_tl2716227188_ (##cdr _rest2715627164_)))
                  (let* ((_hd27191_ _hd2716127186_)
                         (_rest27193_ _tl2716227188_))
                    (_K2716027183_ _rest27193_ _hd27191_)))
                (_else2715827172_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27129_)
      (if (if (##structure-instance-of? _ctx27129_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27129_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27131_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27133_
                  (##structure-ref _ctx27129_ '1 gx#expander-context::t '#f))
                 (_mod27135_ (table-ref _ht27131_ _id27133_ '#f)))
            (let ((_$e27138_ _mod27135_))
              (if _$e27138_
                  _$e27138_
                  (let* ((_mod27141_ (gxc#optimizer-import-ssxi _ctx27129_))
                         (_val27146_
                          (let ((_$e27143_ _mod27141_))
                            (if _$e27143_ _$e27143_ '#!void))))
                    (begin
                      (table-set! _ht27131_ _id27133_ _val27146_)
                      _val27146_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27106_)
      (letrec ((_catch-e27108_
                (lambda (_exn27127_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27106_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27127_))
                        '#!void)
                    '#f)))
               (_import-e27109_
                (lambda ()
                  (let* ((_str-id27112_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx27106_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27120_
                          (let ((_odir2711327115_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2711327115_
                                (let ((_odir27118_ _odir2711327115_))
                                  (path-expand
                                   (string-append _str-id27112_ '".ss")
                                   _odir27118_))
                                '#f)))
                         (_library-path27122_
                          (string->symbol
                           (string-append '":" _str-id27112_ '".ss")))
                         (_ssxi-path27124_
                          (if (if _artefact-path27120_
                                  (file-exists? _artefact-path27120_)
                                  '#f)
                              _artefact-path27120_
                              _library-path27122_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27124_)
                      (gx#import-module__% _ssxi-path27124_ '#t '#t))))))
        (if (##structure-ref _ctx27106_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27108_ _import-e27109_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27103_
      (apply make-struct-instance gxc#!type::t _$args27103_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27100_
      (apply make-struct-instance gxc#!alias::t _$args27100_)))
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
    (lambda _$args27097_
      (apply make-struct-instance gxc#!struct-type::t _$args27097_)))
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
    (lambda _$args27094_
      (apply make-struct-instance gxc#!procedure::t _$args27094_)))
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
    (lambda _$args27091_
      (apply make-struct-instance gxc#!struct-pred::t _$args27091_)))
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
    (lambda _$args27088_
      (apply make-struct-instance gxc#!struct-cons::t _$args27088_)))
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
    (lambda _$args27085_
      (apply make-struct-instance gxc#!struct-getf::t _$args27085_)))
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
    (lambda _$args27082_
      (apply make-struct-instance gxc#!struct-setf::t _$args27082_)))
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
    (lambda _$args27079_
      (apply make-struct-instance gxc#!lambda::t _$args27079_)))
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
    (lambda _$args27076_
      (apply make-struct-instance gxc#!case-lambda::t _$args27076_)))
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
    (lambda _$args27073_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27073_)))
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
    (lambda _$args27070_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27070_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27062_
             _id27063_
             _super27064_
             _fields27065_
             _xfields27066_
             _ctor27067_
             _plist27068_)
      (if (##fx< '7 (##vector-length _self27062_))
          (begin
            (##vector-set! _self27062_ '1 _id27063_)
            (##vector-set! _self27062_ '2 _super27064_)
            (##vector-set! _self27062_ '3 _fields27065_)
            (##vector-set! _self27062_ '4 _xfields27066_)
            (##vector-set! _self27062_ '5 _ctor27067_)
            (##vector-set! _self27062_ '6 _plist27068_)
            (##vector-set! _self27062_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27062_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self26906_
               _id26907_
               _arity26908_
               _dispatch26909_
               _inline26910_
               _typedecl26911_)
        (if (##fx< '5 (##vector-length _self26906_))
            (begin
              (##vector-set! _self26906_ '1 _id26907_)
              (##vector-set! _self26906_ '2 _arity26908_)
              (##vector-set! _self26906_ '3 _dispatch26909_)
              (##vector-set! _self26906_ '4 _inline26910_)
              (##vector-set! _self26906_ '5 _typedecl26911_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self26906_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self26916_ _id26917_ _arity26918_ _dispatch26919_)
          (let* ((_inline26921_ '#f) (_typedecl26923_ '#f))
            (if (##fx< '5 (##vector-length _self26916_))
                (begin
                  (##vector-set! _self26916_ '1 _id26917_)
                  (##vector-set! _self26916_ '2 _arity26918_)
                  (##vector-set! _self26916_ '3 _dispatch26919_)
                  (##vector-set! _self26916_ '4 _inline26921_)
                  (##vector-set! _self26916_ '5 _typedecl26923_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26916_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self26925_
                 _id26926_
                 _arity26927_
                 _dispatch26928_
                 _inline26929_)
          (let ((_typedecl26931_ '#f))
            (if (##fx< '5 (##vector-length _self26925_))
                (begin
                  (##vector-set! _self26925_ '1 _id26926_)
                  (##vector-set! _self26925_ '2 _arity26927_)
                  (##vector-set! _self26925_ '3 _dispatch26928_)
                  (##vector-set! _self26925_ '4 _inline26929_)
                  (##vector-set! _self26925_ '5 _typedecl26931_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26925_)))))
      (define gxc#!lambda:::init!
        (lambda _g27354_
          (let ((_g27353_ (length _g27354_)))
            (cond ((fx= _g27353_ 4) (apply gxc#!lambda:::init!__0 _g27354_))
                  ((fx= _g27353_ 5) (apply gxc#!lambda:::init!__1 _g27354_))
                  ((fx= _g27353_ 6)
                   (apply (lambda (_self26933_
                                   _id26934_
                                   _arity26935_
                                   _dispatch26936_
                                   _inline26937_
                                   _typedecl26938_)
                            (if (##fx< '5 (##vector-length _self26933_))
                                (begin
                                  (##vector-set! _self26933_ '1 _id26934_)
                                  (##vector-set! _self26933_ '2 _arity26935_)
                                  (##vector-set!
                                   _self26933_
                                   '3
                                   _dispatch26936_)
                                  (##vector-set! _self26933_ '4 _inline26937_)
                                  (##vector-set!
                                   _self26933_
                                   '5
                                   _typedecl26938_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self26933_)))
                          _g27354_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27354_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type26776_)
      (let ((_$e26778_
             (##structure-ref _type26776_ '7 gxc#!struct-type::t '#f)))
        (if _$e26778_
            (values _$e26778_)
            (let ((_vtab26781_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type26776_
                 _vtab26781_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab26781_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type26767_ _method26768_)
      (let ((_vtab2676926771_
             (##structure-ref _type26767_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2676926771_
            (let ((_vtab26774_ _vtab2676926771_))
              (table-ref _vtab26774_ _method26768_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym26751_ _type26752_ _local?26753_)
        (begin
          (if (##structure-instance-of? _type26752_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym26751_
                     _type26752_))
          (gxc#verbose
           '"declare-type "
           _sym26751_
           '" "
           (struct->list _type26752_))
          (table-set!
           (if _local?26753_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym26751_
           _type26752_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym26758_ _type26759_)
          (let ((_local?26761_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym26758_
             _type26759_
             _local?26761_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27356_
          (let ((_g27355_ (length _g27356_)))
            (cond ((fx= _g27355_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27356_))
                  ((fx= _g27355_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27356_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27356_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t26727_ _method26728_ _sym26729_ _rebind?26730_)
        (let ((_type26732_ (gxc#optimizer-resolve-type _type-t26727_)))
          (if (##structure-instance-of? _type26732_ 'gxc#!struct-type::t)
              (let ((_vtab26734_ (gxc#!struct-type-vtab _type26732_)))
                (if _rebind?26730_
                    (if (hash-key? _vtab26734_ _method26728_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t26727_
                         '" "
                         _method26728_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t26727_
                         '" "
                         _method26728_))
                    (if (hash-key? _vtab26734_ _method26728_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t26727_
                           '" "
                           _method26728_
                           '" => "
                           _sym26729_)
                          (table-set! _vtab26734_ _method26728_ _sym26729_)))))
              (if (not _type26732_)
                  (gxc#verbose '"declare-method: unknown type " _type-t26727_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t26727_
                         _type26732_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t26739_ _method26740_ _sym26741_)
          (let ((_rebind?26743_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t26739_
             _method26740_
             _sym26741_
             _rebind?26743_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27358_
          (let ((_g27357_ (length _g27358_)))
            (cond ((fx= _g27357_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27358_))
                  ((fx= _g27357_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27358_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27358_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym26715_)
      (let ((_$e26723_
             (let ((_ht2671626718_ (gxc#current-compile-local-type)))
               (if _ht2671626718_
                   (let ((_ht26721_ _ht2671626718_))
                     (table-ref _ht26721_ _sym26715_ '#f))
                   '#f))))
        (if _$e26723_
            _$e26723_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym26715_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym26707_)
      (let ((_type2670826710_ (gxc#optimizer-lookup-type _sym26707_)))
        (if _type2670826710_
            (let ((_type26713_ _type2670826710_))
              (if (##structure-instance-of? _type26713_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type26713_ '1 gxc#!type::t '#f))
                  _type26713_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t26702_ _method26703_)
      (let ((_type26705_ (gxc#optimizer-resolve-type _type-t26702_)))
        (if (##structure-instance-of? _type26705_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type26705_ _method26703_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx26698_)
      (begin
        (gxc#apply-collect-mutators _stx26698_)
        (let ((_stx26700_ (gxc#apply-lift-top-lambdas _stx26698_)))
          (begin
            (gxc#apply-collect-type-info _stx26700_)
            (gxc#apply-optimize-call _stx26700_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl26695_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26695_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl26695_ '%#lambda gxc#xform-identity)
           (table-set! _tbl26695_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl26695_ '%#let-values gxc#xform-identity)
           (table-set! _tbl26695_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl26695_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl26695_ '%#quote gxc#xform-identity)
           (table-set! _tbl26695_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26695_ '%#call gxc#xform-identity)
           (table-set! _tbl26695_ '%#if gxc#xform-identity)
           (table-set! _tbl26695_ '%#ref gxc#xform-identity)
           (table-set! _tbl26695_ '%#set! gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl26695_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl26695_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl26695_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl26691_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26691_ '%#begin gxc#xform-identity)
           (table-set! _tbl26691_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl26691_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl26691_ '%#module gxc#xform-identity)
           (table-set! _tbl26691_ '%#import gxc#xform-identity)
           (table-set! _tbl26691_ '%#export gxc#xform-identity)
           (table-set! _tbl26691_ '%#provide gxc#xform-identity)
           (table-set! _tbl26691_ '%#extern gxc#xform-identity)
           (table-set! _tbl26691_ '%#define-values gxc#xform-identity)
           (table-set! _tbl26691_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl26691_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl26691_ '%#declare gxc#xform-identity)
           _tbl26691_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl26687_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26687_ (force gxc#&identity-special-form))
           (hash-copy! _tbl26687_ (force gxc#&identity-expression))
           _tbl26687_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl26683_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl26683_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl26683_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl26683_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl26683_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl26683_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl26683_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl26683_ '%#quote gxc#xform-identity)
           (table-set! _tbl26683_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26683_ '%#call gxc#xform-operands)
           (table-set! _tbl26683_ '%#if gxc#xform-operands)
           (table-set! _tbl26683_ '%#ref gxc#xform-identity)
           (table-set! _tbl26683_ '%#set! gxc#xform-setq%)
           (table-set! _tbl26683_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl26683_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl26683_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl26683_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl26683_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl26683_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl26683_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl26683_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl26683_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl26679_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26679_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl26679_ (force gxc#&identity))
           (table-set! _tbl26679_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26679_ '%#module gxc#xform-module%)
           (table-set! _tbl26679_ '%#define-values gxc#xform-define-values%)
           _tbl26679_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl26675_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26675_ (force gxc#&void))
           (table-set! _tbl26675_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26675_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26675_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26675_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26675_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26675_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl26675_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl26675_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl26675_ '%#call gxc#collect-operands)
           (table-set! _tbl26675_ '%#if gxc#collect-operands)
           (table-set! _tbl26675_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl26675_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl26675_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl26675_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl26675_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl26675_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl26675_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl26675_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl26675_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl26675_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx26668_ . _args26670_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26668_ _args26670_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl26665_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26665_ (force gxc#&basic-xform))
           (table-set!
            _tbl26665_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26665_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26665_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26665_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26665_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26658_ . _args26660_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26658_ _args26660_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl26655_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26655_ (force gxc#&basic-xform-expression))
           (table-set! _tbl26655_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26655_ '%#ref gxc#expression-subst-ref%)
           _tbl26655_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx26648_ . _args26650_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26648_ _args26650_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl26645_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26645_ (force gxc#&void))
           (table-set! _tbl26645_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26645_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26645_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26645_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26645_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26645_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26645_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26645_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26645_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26645_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26645_ '%#if gxc#collect-operands)
           (table-set! _tbl26645_ '%#set! gxc#collect-body-setq%)
           _tbl26645_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26638_ . _args26640_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26638_ _args26640_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl26635_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26635_ (force gxc#&false))
           (table-set! _tbl26635_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26635_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26635_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26635_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl26635_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26635_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26635_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26628_ . _args26630_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26628_ _args26630_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl26625_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26625_ (force gxc#&basic-xform))
           (table-set! _tbl26625_ '%#call gxc#optimize-call%)
           _tbl26625_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx26618_ . _args26620_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26618_ _args26620_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl26615_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26615_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl26615_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl26615_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl26615_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl26615_ '%#call gxc#generate-ssxi-call%)
           _tbl26615_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx26608_ . _args26610_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26608_ _args26610_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx26605_ . _args26606_) _stx26605_))
  (define gxc#xform-wrap-source
    (lambda (_stx26602_ _src-stx26603_)
      (gx#stx-wrap-source _stx26602_ (gx#stx-source _src-stx26603_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args26596_)
      (lambda (_g2659726599_)
        (apply gxc#compile-e _g2659726599_ _args26596_))))
  (define gxc#xform-begin%
    (lambda (_stx26555_ . _args26556_)
      (let* ((_g2655826568_
              (lambda (_g2655926565_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2655926565_)))
             (_g2655726593_
              (lambda (_g2655926571_)
                (if (gx#stx-pair? _g2655926571_)
                    (let ((_e2656126573_ (gx#stx-e _g2655926571_)))
                      (let ((_hd2656226576_ (##car _e2656126573_))
                            (_tl2656326578_ (##cdr _e2656126573_)))
                        ((lambda (_L26581_)
                           (let ((_forms26591_
                                  (map (gxc#xform-apply-compile-e _args26556_)
                                       _L26581_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms26591_)
                              _stx26555_)))
                         _tl2656326578_)))
                    (_g2655826568_ _g2655926571_)))))
        (_g2655726593_ _stx26555_))))
  (define gxc#xform-module%
    (lambda (_stx26492_ . _args26493_)
      (let* ((_g2649526509_
              (lambda (_g2649626506_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2649626506_)))
             (_g2649426552_
              (lambda (_g2649626512_)
                (if (gx#stx-pair? _g2649626512_)
                    (let ((_e2649926514_ (gx#stx-e _g2649626512_)))
                      (let ((_hd2650026517_ (##car _e2649926514_))
                            (_tl2650126519_ (##cdr _e2649926514_)))
                        (if (gx#stx-pair? _tl2650126519_)
                            (let ((_e2650226522_ (gx#stx-e _tl2650126519_)))
                              (let ((_hd2650326525_ (##car _e2650226522_))
                                    (_tl2650426527_ (##cdr _e2650226522_)))
                                ((lambda (_L26530_ _L26531_)
                                   (let* ((_ctx26544_
                                           (gx#syntax-local-e__0 _L26531_))
                                          (_code26546_
                                           (##structure-ref
                                            _ctx26544_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code26549_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code26546_
                                                     _args26493_))
                                            gx#current-expander-context
                                            _ctx26544_)))
                                     (begin
                                       (##structure-set!
                                        _ctx26544_
                                        _code26549_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L26531_
                                                    (cons _code26549_ '())))
                                        _stx26492_))))
                                 _tl2650426527_
                                 _hd2650326525_)))
                            (_g2649526509_ _g2649626512_))))
                    (_g2649526509_ _g2649626512_)))))
        (_g2649426552_ _stx26492_))))
  (define gxc#xform-define-values%
    (lambda (_stx26422_ . _args26423_)
      (let* ((_g2642526442_
              (lambda (_g2642626439_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2642626439_)))
             (_g2642426489_
              (lambda (_g2642626445_)
                (if (gx#stx-pair? _g2642626445_)
                    (let ((_e2642926447_ (gx#stx-e _g2642626445_)))
                      (let ((_hd2643026450_ (##car _e2642926447_))
                            (_tl2643126452_ (##cdr _e2642926447_)))
                        (if (gx#stx-pair? _tl2643126452_)
                            (let ((_e2643226455_ (gx#stx-e _tl2643126452_)))
                              (let ((_hd2643326458_ (##car _e2643226455_))
                                    (_tl2643426460_ (##cdr _e2643226455_)))
                                (if (gx#stx-pair? _tl2643426460_)
                                    (let ((_e2643526463_
                                           (gx#stx-e _tl2643426460_)))
                                      (let ((_hd2643626466_
                                             (##car _e2643526463_))
                                            (_tl2643726468_
                                             (##cdr _e2643526463_)))
                                        (if (gx#stx-null? _tl2643726468_)
                                            ((lambda (_L26471_ _L26472_)
                                               (let ((_expr26487_
                                                      (apply gxc#compile-e
                                                             _L26471_
                                                             _args26423_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26472_
                                                              (cons _expr26487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26422_)))
                                             _hd2643626466_
                                             _hd2643326458_)
                                            (_g2642526442_ _g2642626445_))))
                                    (_g2642526442_ _g2642626445_))))
                            (_g2642526442_ _g2642626445_))))
                    (_g2642526442_ _g2642626445_)))))
        (_g2642426489_ _stx26422_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26352_ . _args26353_)
      (let* ((_g2635526372_
              (lambda (_g2635626369_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2635626369_)))
             (_g2635426419_
              (lambda (_g2635626375_)
                (if (gx#stx-pair? _g2635626375_)
                    (let ((_e2635926377_ (gx#stx-e _g2635626375_)))
                      (let ((_hd2636026380_ (##car _e2635926377_))
                            (_tl2636126382_ (##cdr _e2635926377_)))
                        (if (gx#stx-pair? _tl2636126382_)
                            (let ((_e2636226385_ (gx#stx-e _tl2636126382_)))
                              (let ((_hd2636326388_ (##car _e2636226385_))
                                    (_tl2636426390_ (##cdr _e2636226385_)))
                                (if (gx#stx-pair? _tl2636426390_)
                                    (let ((_e2636526393_
                                           (gx#stx-e _tl2636426390_)))
                                      (let ((_hd2636626396_
                                             (##car _e2636526393_))
                                            (_tl2636726398_
                                             (##cdr _e2636526393_)))
                                        (if (gx#stx-null? _tl2636726398_)
                                            ((lambda (_L26401_ _L26402_)
                                               (let ((_expr26417_
                                                      (apply gxc#compile-e
                                                             _L26401_
                                                             _args26353_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26402_
                                                              (cons _expr26417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26352_)))
                                             _hd2636626396_
                                             _hd2636326388_)
                                            (_g2635526372_ _g2635626375_))))
                                    (_g2635526372_ _g2635626375_))))
                            (_g2635526372_ _g2635626375_))))
                    (_g2635526372_ _g2635626375_)))))
        (_g2635426419_ _stx26352_))))
  (define gxc#xform-lambda%
    (lambda (_stx26295_ . _args26296_)
      (let* ((_g2629826312_
              (lambda (_g2629926309_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2629926309_)))
             (_g2629726349_
              (lambda (_g2629926315_)
                (if (gx#stx-pair? _g2629926315_)
                    (let ((_e2630226317_ (gx#stx-e _g2629926315_)))
                      (let ((_hd2630326320_ (##car _e2630226317_))
                            (_tl2630426322_ (##cdr _e2630226317_)))
                        (if (gx#stx-pair? _tl2630426322_)
                            (let ((_e2630526325_ (gx#stx-e _tl2630426322_)))
                              (let ((_hd2630626328_ (##car _e2630526325_))
                                    (_tl2630726330_ (##cdr _e2630526325_)))
                                ((lambda (_L26333_ _L26334_)
                                   (let ((_body26347_
                                          (map (gxc#xform-apply-compile-e
                                                _args26296_)
                                               _L26333_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26334_ _body26347_))
                                      _stx26295_)))
                                 _tl2630726330_
                                 _hd2630626328_)))
                            (_g2629826312_ _g2629926315_))))
                    (_g2629826312_ _g2629926315_)))))
        (_g2629726349_ _stx26295_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26208_ . _args26209_)
      (letrec ((_clause-e26211_
                (lambda (_clause26252_)
                  (let* ((_g2625426265_
                          (lambda (_g2625526262_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2625526262_)))
                         (_g2625326292_
                          (lambda (_g2625526268_)
                            (if (gx#stx-pair? _g2625526268_)
                                (let ((_e2625826270_ (gx#stx-e _g2625526268_)))
                                  (let ((_hd2625926273_ (##car _e2625826270_))
                                        (_tl2626026275_ (##cdr _e2625826270_)))
                                    ((lambda (_L26278_ _L26279_)
                                       (let ((_body26290_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26209_)
                                                   _L26278_)))
                                         (cons _L26279_ _body26290_)))
                                     _tl2626026275_
                                     _hd2625926273_)))
                                (_g2625426265_ _g2625526268_)))))
                    (_g2625326292_ _clause26252_)))))
        (let* ((_g2621326223_
                (lambda (_g2621426220_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2621426220_)))
               (_g2621226249_
                (lambda (_g2621426226_)
                  (if (gx#stx-pair? _g2621426226_)
                      (let ((_e2621626228_ (gx#stx-e _g2621426226_)))
                        (let ((_hd2621726231_ (##car _e2621626228_))
                              (_tl2621826233_ (##cdr _e2621626228_)))
                          ((lambda (_L26236_)
                             (let ((_clauses26247_
                                    (map _clause-e26211_ _L26236_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26247_)
                                _stx26208_)))
                           _tl2621826233_)))
                      (_g2621326223_ _g2621426226_)))))
          (_g2621226249_ _stx26208_)))))
  (define gxc#xform-let-values%
    (lambda (_stx26002_ . _args26003_)
      (let* ((_g2600526038_
              (lambda (_g2600626035_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2600626035_)))
             (_g2600426205_
              (lambda (_g2600626041_)
                (if (gx#stx-pair? _g2600626041_)
                    (let ((_e2601126043_ (gx#stx-e _g2600626041_)))
                      (let ((_hd2601226046_ (##car _e2601126043_))
                            (_tl2601326048_ (##cdr _e2601126043_)))
                        (if (gx#stx-pair? _tl2601326048_)
                            (let ((_e2601426051_ (gx#stx-e _tl2601326048_)))
                              (let ((_hd2601526054_ (##car _e2601426051_))
                                    (_tl2601626056_ (##cdr _e2601426051_)))
                                (if (gx#stx-pair/null? _hd2601526054_)
                                    (if (fx>= (gx#stx-length _hd2601526054_)
                                              '0)
                                        (let ((_g27359_
                                               (gx#syntax-split-splice
                                                _hd2601526054_
                                                '0)))
                                          (begin
                                            (let ((_g27360_
                                                   (values-count _g27359_)))
                                              (if (not (fx= _g27360_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27360_)))
                                            (let ((_target2601726059_
                                                   (values-ref _g27359_ 0))
                                                  (_tl2601926061_
                                                   (values-ref _g27359_ 1)))
                                              (if (gx#stx-null? _tl2601926061_)
                                                  (letrec ((_loop2602026064_
                                                            (lambda (_hd2601826067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2602426069_
                             _hd2602526071_)
                      (if (gx#stx-pair? _hd2601826067_)
                          (let ((_e2602126074_ (gx#stx-e _hd2601826067_)))
                            (let ((_lp-hd2602226077_ (##car _e2602126074_))
                                  (_lp-tl2602326079_ (##cdr _e2602126074_)))
                              (if (gx#stx-pair? _lp-hd2602226077_)
                                  (let ((_e2602826082_
                                         (gx#stx-e _lp-hd2602226077_)))
                                    (let ((_hd2602926085_
                                           (##car _e2602826082_))
                                          (_tl2603026087_
                                           (##cdr _e2602826082_)))
                                      (if (gx#stx-pair? _tl2603026087_)
                                          (let ((_e2603126090_
                                                 (gx#stx-e _tl2603026087_)))
                                            (let ((_hd2603226093_
                                                   (##car _e2603126090_))
                                                  (_tl2603326095_
                                                   (##cdr _e2603126090_)))
                                              (if (gx#stx-null? _tl2603326095_)
                                                  (_loop2602026064_
                                                   _lp-tl2602326079_
                                                   (cons _hd2603226093_
                                                         _expr2602426069_)
                                                   (cons _hd2602926085_
                                                         _hd2602526071_))
                                                  (_g2600526038_
                                                   _g2600626041_))))
                                          (_g2600526038_ _g2600626041_))))
                                  (_g2600526038_ _g2600626041_))))
                          (let ((_expr2602626098_ (reverse _expr2602426069_))
                                (_hd2602726100_ (reverse _hd2602526071_)))
                            ((lambda (_L26103_ _L26104_ _L26105_ _L26106_)
                               (let* ((_g2612526141_
                                       (lambda (_g2612626138_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2612626138_)))
                                      (_g2612426195_
                                       (lambda (_g2612626144_)
                                         (if (gx#stx-pair/null? _g2612626144_)
                                             (if (fx>= (gx#stx-length
                                                        _g2612626144_)
                                                       '0)
                                                 (let ((_g27361_
                                                        (gx#syntax-split-splice
                                                         _g2612626144_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27362_
                                                            (values-count
                                                             _g27361_)))
                                                       (if (not (fx= _g27362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g27362_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2612826146_
                                                            (values-ref
                                                             _g27361_
                                                             0))
                                                           (_tl2613026148_
                                                            (values-ref
                                                             _g27361_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2613026148_)
                                                           (letrec ((_loop2613126151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2612926154_ _expr2613526156_)
                               (if (gx#stx-pair? _hd2612926154_)
                                   (let ((_e2613226159_
                                          (gx#syntax-e _hd2612926154_)))
                                     (let ((_lp-hd2613326162_
                                            (##car _e2613226159_))
                                           (_lp-tl2613426164_
                                            (##cdr _e2613226159_)))
                                       (_loop2613126151_
                                        _lp-tl2613426164_
                                        (cons _lp-hd2613326162_
                                              _expr2613526156_))))
                                   (let ((_expr2613626167_
                                          (reverse _expr2613526156_)))
                                     ((lambda (_L26170_)
                                        (let ()
                                          (let ((_body26183_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26003_)
                                                      _L26103_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26106_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26170_
                                                            _L26105_)
                                                           (foldr2 (lambda (_g2618426188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2618526190_
                                    _g2618626192_)
                             (cons (cons _g2618526190_
                                         (cons _g2618426188_ '()))
                                   _g2618626192_))
                           '()
                           _L26170_
                           _L26105_))
                 _body26183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx26002_))))
                                      _expr2613626167_))))))
                     (_loop2613126151_ _target2612826146_ '()))
                   (_g2612526141_ _g2612626144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2612526141_ _g2612626144_))
                                             (_g2612526141_ _g2612626144_)))))
                                 (_g2612426195_
                                  (map (gxc#xform-apply-compile-e _args26003_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2619726200_
                                                          _g2619826202_)
                                                   (cons _g2619726200_
                                                         _g2619826202_))
                                                 '()
                                                 _L26104_))))))
                             _tl2601626056_
                             _expr2602626098_
                             _hd2602726100_
                             _hd2601226046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2602026064_
                                                     _target2601726059_
                                                     '()
                                                     '()))
                                                  (_g2600526038_
                                                   _g2600626041_)))))
                                        (_g2600526038_ _g2600626041_))
                                    (_g2600526038_ _g2600626041_))))
                            (_g2600526038_ _g2600626041_))))
                    (_g2600526038_ _g2600626041_)))))
        (_g2600426205_ _stx26002_))))
  (define gxc#xform-operands
    (lambda (_stx25958_ . _args25959_)
      (let* ((_g2596125972_
              (lambda (_g2596225969_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2596225969_)))
             (_g2596025999_
              (lambda (_g2596225975_)
                (if (gx#stx-pair? _g2596225975_)
                    (let ((_e2596525977_ (gx#stx-e _g2596225975_)))
                      (let ((_hd2596625980_ (##car _e2596525977_))
                            (_tl2596725982_ (##cdr _e2596525977_)))
                        ((lambda (_L25985_ _L25986_)
                           (let ((_rands25997_
                                  (map (gxc#xform-apply-compile-e _args25959_)
                                       _L25985_)))
                             (gxc#xform-wrap-source
                              (cons _L25986_ _rands25997_)
                              _stx25958_)))
                         _tl2596725982_
                         _hd2596625980_)))
                    (_g2596125972_ _g2596225975_)))))
        (_g2596025999_ _stx25958_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx25888_ . _args25889_)
      (let* ((_g2589125908_
              (lambda (_g2589225905_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2589225905_)))
             (_g2589025955_
              (lambda (_g2589225911_)
                (if (gx#stx-pair? _g2589225911_)
                    (let ((_e2589525913_ (gx#stx-e _g2589225911_)))
                      (let ((_hd2589625916_ (##car _e2589525913_))
                            (_tl2589725918_ (##cdr _e2589525913_)))
                        (if (gx#stx-pair? _tl2589725918_)
                            (let ((_e2589825921_ (gx#stx-e _tl2589725918_)))
                              (let ((_hd2589925924_ (##car _e2589825921_))
                                    (_tl2590025926_ (##cdr _e2589825921_)))
                                (if (gx#stx-pair? _tl2590025926_)
                                    (let ((_e2590125929_
                                           (gx#stx-e _tl2590025926_)))
                                      (let ((_hd2590225932_
                                             (##car _e2590125929_))
                                            (_tl2590325934_
                                             (##cdr _e2590125929_)))
                                        (if (gx#stx-null? _tl2590325934_)
                                            ((lambda (_L25937_ _L25938_)
                                               (let ((_expr25953_
                                                      (apply gxc#compile-e
                                                             _L25937_
                                                             _args25889_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L25938_
                                                              (cons _expr25953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx25888_)))
                                             _hd2590225932_
                                             _hd2589925924_)
                                            (_g2589125908_ _g2589225911_))))
                                    (_g2589125908_ _g2589225911_))))
                            (_g2589125908_ _g2589225911_))))
                    (_g2589125908_ _g2589225911_)))))
        (_g2589025955_ _stx25888_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx25819_)
      (let* ((_g2582125838_
              (lambda (_g2582225835_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2582225835_)))
             (_g2582025885_
              (lambda (_g2582225841_)
                (if (gx#stx-pair? _g2582225841_)
                    (let ((_e2582525843_ (gx#stx-e _g2582225841_)))
                      (let ((_hd2582625846_ (##car _e2582525843_))
                            (_tl2582725848_ (##cdr _e2582525843_)))
                        (if (gx#stx-pair? _tl2582725848_)
                            (let ((_e2582825851_ (gx#stx-e _tl2582725848_)))
                              (let ((_hd2582925854_ (##car _e2582825851_))
                                    (_tl2583025856_ (##cdr _e2582825851_)))
                                (if (gx#stx-pair? _tl2583025856_)
                                    (let ((_e2583125859_
                                           (gx#stx-e _tl2583025856_)))
                                      (let ((_hd2583225862_
                                             (##car _e2583125859_))
                                            (_tl2583325864_
                                             (##cdr _e2583125859_)))
                                        (if (gx#stx-null? _tl2583325864_)
                                            ((lambda (_L25867_ _L25868_)
                                               (let ((_sym25883_
                                                      (gxc#generate-runtime-binding-id
                                                       _L25868_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym25883_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym25883_
                                                    '#t)
                                                   (gxc#compile-e _L25867_))))
                                             _hd2583225862_
                                             _hd2582925854_)
                                            (_g2582125838_ _g2582225841_))))
                                    (_g2582125838_ _g2582225841_))))
                            (_g2582125838_ _g2582225841_))))
                    (_g2582125838_ _g2582225841_)))))
        (_g2582025885_ _stx25819_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25053_)
      (let* ((_g2505825215_
              (lambda (_g2505925212_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2505925212_)))
             (_g2505725222_ (lambda (_g2505925218_) ((lambda () '#f))))
             (_g2505625362_
              (lambda (_g2505925225_)
                (if (gx#stx-pair? _g2505925225_)
                    (let ((_e2517525227_ (gx#stx-e _g2505925225_)))
                      (let ((_hd2517625230_ (##car _e2517525227_))
                            (_tl2517725232_ (##cdr _e2517525227_)))
                        (if (gx#stx-pair? _tl2517725232_)
                            (let ((_e2517825235_ (gx#stx-e _tl2517725232_)))
                              (let ((_hd2517925238_ (##car _e2517825235_))
                                    (_tl2518025240_ (##cdr _e2517825235_)))
                                (if (gx#stx-pair? _hd2517925238_)
                                    (let ((_e2518125243_
                                           (gx#stx-e _hd2517925238_)))
                                      (let ((_hd2518225246_
                                             (##car _e2518125243_))
                                            (_tl2518325248_
                                             (##cdr _e2518125243_)))
                                        (if (gx#identifier? _hd2518225246_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2518225246_)
                                                (if (gx#stx-pair?
                                                     _tl2518325248_)
                                                    (let ((_e2518425251_
                                                           (gx#stx-e
                                                            _tl2518325248_)))
                                                      (let ((_hd2518525254_
                                                             (##car _e2518425251_))
                                                            (_tl2518625256_
                                                             (##cdr _e2518425251_)))
                                                        (if (gx#stx-pair?
                                                             _hd2518525254_)
                                                            (let ((_e2518725259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2518525254_)))
                      (let ((_hd2518825262_ (##car _e2518725259_))
                            (_tl2518925264_ (##cdr _e2518725259_)))
                        (if (gx#identifier? _hd2518825262_)
                            (if (gx#stx-eq? '%#ref _hd2518825262_)
                                (if (gx#stx-pair? _tl2518925264_)
                                    (let ((_e2519025267_
                                           (gx#stx-e _tl2518925264_)))
                                      (let ((_hd2519125270_
                                             (##car _e2519025267_))
                                            (_tl2519225272_
                                             (##cdr _e2519025267_)))
                                        (if (gx#stx-null? _tl2519225272_)
                                            (if (gx#stx-pair? _tl2518625256_)
                                                (let ((_e2519325275_
                                                       (gx#stx-e
                                                        _tl2518625256_)))
                                                  (let ((_hd2519425278_
                                                         (##car _e2519325275_))
                                                        (_tl2519525280_
                                                         (##cdr _e2519325275_)))
                                                    (if (gx#stx-pair?
                                                         _hd2519425278_)
                                                        (let ((_e2519625283_
                                                               (gx#stx-e
                                                                _hd2519425278_)))
                                                          (let ((_hd2519725286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2519625283_))
                        (_tl2519825288_ (##cdr _e2519625283_)))
                    (if (gx#identifier? _hd2519725286_)
                        (if (gx#stx-eq? '%#ref _hd2519725286_)
                            (if (gx#stx-pair? _tl2519825288_)
                                (let ((_e2519925291_
                                       (gx#stx-e _tl2519825288_)))
                                  (let ((_hd2520025294_ (##car _e2519925291_))
                                        (_tl2520125296_ (##cdr _e2519925291_)))
                                    (if (gx#stx-null? _tl2520125296_)
                                        (if (gx#stx-pair? _tl2519525280_)
                                            (let ((_e2520225299_
                                                   (gx#stx-e _tl2519525280_)))
                                              (let ((_hd2520325302_
                                                     (##car _e2520225299_))
                                                    (_tl2520425304_
                                                     (##cdr _e2520225299_)))
                                                (if (gx#stx-pair?
                                                     _hd2520325302_)
                                                    (let ((_e2520525307_
                                                           (gx#stx-e
                                                            _hd2520325302_)))
                                                      (let ((_hd2520625310_
                                                             (##car _e2520525307_))
                                                            (_tl2520725312_
                                                             (##cdr _e2520525307_)))
                                                        (if (gx#identifier?
                                                             _hd2520625310_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2520625310_)
                        (if (gx#stx-pair? _tl2520725312_)
                            (let ((_e2520825315_ (gx#stx-e _tl2520725312_)))
                              (let ((_hd2520925318_ (##car _e2520825315_))
                                    (_tl2521025320_ (##cdr _e2520825315_)))
                                (if (gx#stx-null? _tl2521025320_)
                                    (if (gx#stx-null? _tl2520425304_)
                                        (if (gx#stx-null? _tl2518025240_)
                                            ((lambda (_L25323_
                                                      _L25324_
                                                      _L25325_
                                                      _L25326_)
                                               (if (if (gx#identifier?
                                                        _L25326_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25325_)
                        'apply)
                   (if (gx#free-identifier=? _L25326_ _L25323_)
                       (not (gx#free-identifier=? _L25324_ _L25326_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2505725222_
                                                    _g2505925225_)))
                                             _hd2520925318_
                                             _hd2520025294_
                                             _hd2519125270_
                                             _hd2517625230_)
                                            (_g2505725222_ _g2505925225_))
                                        (_g2505725222_ _g2505925225_))
                                    (_g2505725222_ _g2505925225_))))
                            (_g2505725222_ _g2505925225_))
                        (_g2505725222_ _g2505925225_))
                    (_g2505725222_ _g2505925225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2505725222_
                                                     _g2505925225_))))
                                            (_g2505725222_ _g2505925225_))
                                        (_g2505725222_ _g2505925225_))))
                                (_g2505725222_ _g2505925225_))
                            (_g2505725222_ _g2505925225_))
                        (_g2505725222_ _g2505925225_))))
                (_g2505725222_ _g2505925225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505725222_ _g2505925225_))
                                            (_g2505725222_ _g2505925225_))))
                                    (_g2505725222_ _g2505925225_))
                                (_g2505725222_ _g2505925225_))
                            (_g2505725222_ _g2505925225_))))
                    (_g2505725222_ _g2505925225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2505725222_
                                                     _g2505925225_))
                                                (_g2505725222_ _g2505925225_))
                                            (_g2505725222_ _g2505925225_))))
                                    (_g2505725222_ _g2505925225_))))
                            (_g2505725222_ _g2505925225_))))
                    (_g2505725222_ _g2505925225_))))
             (_g2505525622_
              (lambda (_g2505925365_)
                (if (gx#stx-pair? _g2505925365_)
                    (let ((_e2511125367_ (gx#stx-e _g2505925365_)))
                      (let ((_hd2511225370_ (##car _e2511125367_))
                            (_tl2511325372_ (##cdr _e2511125367_)))
                        (if (gx#stx-pair/null? _hd2511225370_)
                            (if (fx>= (gx#stx-length _hd2511225370_) '0)
                                (let ((_g27363_
                                       (gx#syntax-split-splice
                                        _hd2511225370_
                                        '0)))
                                  (begin
                                    (let ((_g27364_ (values-count _g27363_)))
                                      (if (not (fx= _g27364_ 2))
                                          (error "Context expects 2 values"
                                                 _g27364_)))
                                    (let ((_target2511425375_
                                           (values-ref _g27363_ 0))
                                          (_tl2511625377_
                                           (values-ref _g27363_ 1)))
                                      (letrec ((_loop2511725380_
                                                (lambda (_hd2511525383_
                                                         _arg2512125385_)
                                                  (if (gx#stx-pair?
                                                       _hd2511525383_)
                                                      (let ((_e2511825388_
                                                             (gx#stx-e
                                                              _hd2511525383_)))
                                                        (let ((_lp-hd2511925391_
                                                               (##car _e2511825388_))
                                                              (_lp-tl2512025393_
                                                               (##cdr _e2511825388_)))
                                                          (_loop2511725380_
                                                           _lp-tl2512025393_
                                                           (cons _lp-hd2511925391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2512125385_))))
              (let ((_arg2512225396_ (reverse _arg2512125385_)))
                (if (gx#stx-pair? _tl2511325372_)
                    (let ((_e2512325399_ (gx#stx-e _tl2511325372_)))
                      (let ((_hd2512425402_ (##car _e2512325399_))
                            (_tl2512525404_ (##cdr _e2512325399_)))
                        (if (gx#stx-pair? _hd2512425402_)
                            (let ((_e2512625407_ (gx#stx-e _hd2512425402_)))
                              (let ((_hd2512725410_ (##car _e2512625407_))
                                    (_tl2512825412_ (##cdr _e2512625407_)))
                                (if (gx#identifier? _hd2512725410_)
                                    (if (gx#stx-eq? '%#call _hd2512725410_)
                                        (if (gx#stx-pair? _tl2512825412_)
                                            (let ((_e2512925415_
                                                   (gx#stx-e _tl2512825412_)))
                                              (let ((_hd2513025418_
                                                     (##car _e2512925415_))
                                                    (_tl2513125420_
                                                     (##cdr _e2512925415_)))
                                                (if (gx#stx-pair?
                                                     _hd2513025418_)
                                                    (let ((_e2513225423_
                                                           (gx#stx-e
                                                            _hd2513025418_)))
                                                      (let ((_hd2513325426_
                                                             (##car _e2513225423_))
                                                            (_tl2513425428_
                                                             (##cdr _e2513225423_)))
                                                        (if (gx#identifier?
                                                             _hd2513325426_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2513325426_)
                        (if (gx#stx-pair? _tl2513425428_)
                            (let ((_e2513525431_ (gx#stx-e _tl2513425428_)))
                              (let ((_hd2513625434_ (##car _e2513525431_))
                                    (_tl2513725436_ (##cdr _e2513525431_)))
                                (if (gx#stx-null? _tl2513725436_)
                                    (if (gx#stx-pair? _tl2513125420_)
                                        (let ((_e2513825439_
                                               (gx#stx-e _tl2513125420_)))
                                          (let ((_hd2513925442_
                                                 (##car _e2513825439_))
                                                (_tl2514025444_
                                                 (##cdr _e2513825439_)))
                                            (if (gx#stx-pair? _hd2513925442_)
                                                (let ((_e2514125447_
                                                       (gx#stx-e
                                                        _hd2513925442_)))
                                                  (let ((_hd2514225450_
                                                         (##car _e2514125447_))
                                                        (_tl2514325452_
                                                         (##cdr _e2514125447_)))
                                                    (if (gx#identifier?
                                                         _hd2514225450_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2514225450_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2514325452_)
                        (let ((_e2514425455_ (gx#stx-e _tl2514325452_)))
                          (let ((_hd2514525458_ (##car _e2514425455_))
                                (_tl2514625460_ (##cdr _e2514425455_)))
                            (if (gx#stx-null? _tl2514625460_)
                                (if (gx#stx-pair/null? _tl2514025444_)
                                    (if (fx>= (gx#stx-length _tl2514025444_)
                                              '1)
                                        (let ((_g27365_
                                               (gx#syntax-split-splice
                                                _tl2514025444_
                                                '1)))
                                          (begin
                                            (let ((_g27366_
                                                   (values-count _g27365_)))
                                              (if (not (fx= _g27366_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27366_)))
                                            (let ((_target2514725463_
                                                   (values-ref _g27365_ 0))
                                                  (_tl2514925465_
                                                   (values-ref _g27365_ 1)))
                                              (if (gx#stx-pair? _tl2514925465_)
                                                  (let ((_e2515625468_
                                                         (gx#stx-e
                                                          _tl2514925465_)))
                                                    (let ((_hd2515725471_
                                                           (##car _e2515625468_))
                                                          (_tl2515825473_
                                                           (##cdr _e2515625468_)))
                                                      (if (gx#stx-pair?
                                                           _hd2515725471_)
                                                          (let ((_e2515925476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2515725471_)))
                    (let ((_hd2516025479_ (##car _e2515925476_))
                          (_tl2516125481_ (##cdr _e2515925476_)))
                      (if (gx#identifier? _hd2516025479_)
                          (if (gx#stx-eq? '%#ref _hd2516025479_)
                              (if (gx#stx-pair? _tl2516125481_)
                                  (let ((_e2516225484_
                                         (gx#stx-e _tl2516125481_)))
                                    (let ((_hd2516325487_
                                           (##car _e2516225484_))
                                          (_tl2516425489_
                                           (##cdr _e2516225484_)))
                                      (if (gx#stx-null? _tl2516425489_)
                                          (if (gx#stx-null? _tl2515825473_)
                                              (letrec ((_loop2515025492_
                                                        (lambda (_hd2514825495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2515425497_)
                  (if (gx#stx-pair? _hd2514825495_)
                      (let ((_e2515125500_ (gx#stx-e _hd2514825495_)))
                        (let ((_lp-hd2515225503_ (##car _e2515125500_))
                              (_lp-tl2515325505_ (##cdr _e2515125500_)))
                          (if (gx#stx-pair? _lp-hd2515225503_)
                              (let ((_e2516525508_
                                     (gx#stx-e _lp-hd2515225503_)))
                                (let ((_hd2516625511_ (##car _e2516525508_))
                                      (_tl2516725513_ (##cdr _e2516525508_)))
                                  (if (gx#identifier? _hd2516625511_)
                                      (if (gx#stx-eq? '%#ref _hd2516625511_)
                                          (if (gx#stx-pair? _tl2516725513_)
                                              (let ((_e2516825516_
                                                     (gx#stx-e
                                                      _tl2516725513_)))
                                                (let ((_hd2516925519_
                                                       (##car _e2516825516_))
                                                      (_tl2517025521_
                                                       (##cdr _e2516825516_)))
                                                  (if (gx#stx-null?
                                                       _tl2517025521_)
                                                      (_loop2515025492_
                                                       _lp-tl2515325505_
                                                       (cons _hd2516925519_
                                                             _xarg2515425497_))
                                                      (_g2505625362_
                                                       _g2505925365_))))
                                              (_g2505625362_ _g2505925365_))
                                          (_g2505625362_ _g2505925365_))
                                      (_g2505625362_ _g2505925365_))))
                              (_g2505625362_ _g2505925365_))))
                      (let ((_xarg2515525524_ (reverse _xarg2515425497_)))
                        (if (gx#stx-null? _tl2512525404_)
                            ((lambda (_L25527_
                                      _L25528_
                                      _L25529_
                                      _L25530_
                                      _L25531_
                                      _L25532_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2557525578_
                                                           _g2557625580_)
                                                    (cons _g2557525578_
                                                          _g2557625580_))
                                                  '()
                                                  _L25532_)))
                                       (if (gx#identifier? _L25531_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L25530_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2558225585_ _g2558325587_)
                                    (cons _g2558225585_ _g2558325587_))
                                  '()
                                  _L25532_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2558925592_ _g2559025594_)
                                    (cons _g2558925592_ _g2559025594_))
                                  '()
                                  _L25528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2559625599_ _g2559725601_)
                                    (cons _g2559625599_ _g2559725601_))
                                  '()
                                  _L25532_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2560325606_ _g2560425608_)
                                    (cons _g2560325606_ _g2560425608_))
                                  '()
                                  _L25528_)))
               (if (gx#free-identifier=? _L25531_ _L25527_)
                   (not (find (lambda (_g2561025612_)
                                (gx#free-identifier=? _g2561025612_ _L25529_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2561425617_ _g2561525619_)
                                          (cons _g2561425617_ _g2561525619_))
                                        (cons _L25531_ '())
                                        _L25532_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2505625362_ _g2505925365_)))
                             _hd2516325487_
                             _xarg2515525524_
                             _hd2514525458_
                             _hd2513625434_
                             _tl2511625377_
                             _arg2512225396_)
                            (_g2505625362_ _g2505925365_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2515025492_
                                                 _target2514725463_
                                                 '()))
                                              (_g2505625362_ _g2505925365_))
                                          (_g2505625362_ _g2505925365_))))
                                  (_g2505625362_ _g2505925365_))
                              (_g2505625362_ _g2505925365_))
                          (_g2505625362_ _g2505925365_))))
                  (_g2505625362_ _g2505925365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2505625362_
                                                   _g2505925365_)))))
                                        (_g2505625362_ _g2505925365_))
                                    (_g2505625362_ _g2505925365_))
                                (_g2505625362_ _g2505925365_))))
                        (_g2505625362_ _g2505925365_))
                    (_g2505625362_ _g2505925365_))
                (_g2505625362_ _g2505925365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505625362_
                                                 _g2505925365_))))
                                        (_g2505625362_ _g2505925365_))
                                    (_g2505625362_ _g2505925365_))))
                            (_g2505625362_ _g2505925365_))
                        (_g2505625362_ _g2505925365_))
                    (_g2505625362_ _g2505925365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2505625362_
                                                     _g2505925365_))))
                                            (_g2505625362_ _g2505925365_))
                                        (_g2505625362_ _g2505925365_))
                                    (_g2505625362_ _g2505925365_))))
                            (_g2505625362_ _g2505925365_))))
                    (_g2505625362_ _g2505925365_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2511725380_
                                         _target2511425375_
                                         '())))))
                                (_g2505625362_ _g2505925365_))
                            (_g2505625362_ _g2505925365_))))
                    (_g2505625362_ _g2505925365_))))
             (_g2505425816_
              (lambda (_g2505925625_)
                (if (gx#stx-pair? _g2505925625_)
                    (let ((_e2506325627_ (gx#stx-e _g2505925625_)))
                      (let ((_hd2506425630_ (##car _e2506325627_))
                            (_tl2506525632_ (##cdr _e2506325627_)))
                        (if (gx#stx-pair/null? _hd2506425630_)
                            (if (fx>= (gx#stx-length _hd2506425630_) '0)
                                (let ((_g27367_
                                       (gx#syntax-split-splice
                                        _hd2506425630_
                                        '0)))
                                  (begin
                                    (let ((_g27368_ (values-count _g27367_)))
                                      (if (not (fx= _g27368_ 2))
                                          (error "Context expects 2 values"
                                                 _g27368_)))
                                    (let ((_target2506625635_
                                           (values-ref _g27367_ 0))
                                          (_tl2506825637_
                                           (values-ref _g27367_ 1)))
                                      (if (gx#stx-null? _tl2506825637_)
                                          (letrec ((_loop2506925640_
                                                    (lambda (_hd2506725643_
                                                             _arg2507325645_)
                                                      (if (gx#stx-pair?
                                                           _hd2506725643_)
                                                          (let ((_e2507025648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2506725643_)))
                    (let ((_lp-hd2507125651_ (##car _e2507025648_))
                          (_lp-tl2507225653_ (##cdr _e2507025648_)))
                      (_loop2506925640_
                       _lp-tl2507225653_
                       (cons _lp-hd2507125651_ _arg2507325645_))))
                  (let ((_arg2507425656_ (reverse _arg2507325645_)))
                    (if (gx#stx-pair? _tl2506525632_)
                        (let ((_e2507525659_ (gx#stx-e _tl2506525632_)))
                          (let ((_hd2507625662_ (##car _e2507525659_))
                                (_tl2507725664_ (##cdr _e2507525659_)))
                            (if (gx#stx-pair? _hd2507625662_)
                                (let ((_e2507825667_
                                       (gx#stx-e _hd2507625662_)))
                                  (let ((_hd2507925670_ (##car _e2507825667_))
                                        (_tl2508025672_ (##cdr _e2507825667_)))
                                    (if (gx#identifier? _hd2507925670_)
                                        (if (gx#stx-eq? '%#call _hd2507925670_)
                                            (if (gx#stx-pair? _tl2508025672_)
                                                (let ((_e2508125675_
                                                       (gx#stx-e
                                                        _tl2508025672_)))
                                                  (let ((_hd2508225678_
                                                         (##car _e2508125675_))
                                                        (_tl2508325680_
                                                         (##cdr _e2508125675_)))
                                                    (if (gx#stx-pair?
                                                         _hd2508225678_)
                                                        (let ((_e2508425683_
                                                               (gx#stx-e
                                                                _hd2508225678_)))
                                                          (let ((_hd2508525686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2508425683_))
                        (_tl2508625688_ (##cdr _e2508425683_)))
                    (if (gx#identifier? _hd2508525686_)
                        (if (gx#stx-eq? '%#ref _hd2508525686_)
                            (if (gx#stx-pair? _tl2508625688_)
                                (let ((_e2508725691_
                                       (gx#stx-e _tl2508625688_)))
                                  (let ((_hd2508825694_ (##car _e2508725691_))
                                        (_tl2508925696_ (##cdr _e2508725691_)))
                                    (if (gx#stx-null? _tl2508925696_)
                                        (if (gx#stx-pair/null? _tl2508325680_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2508325680_)
                                                      '0)
                                                (let ((_g27369_
                                                       (gx#syntax-split-splice
                                                        _tl2508325680_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27370_
                                                           (values-count
                                                            _g27369_)))
                                                      (if (not (fx= _g27370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2509025699_
                                                           (values-ref
                                                            _g27369_
                                                            0))
                                                          (_tl2509225701_
                                                           (values-ref
                                                            _g27369_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2509225701_)
                                                          (letrec ((_loop2509325704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2509125707_ _xarg2509725709_)
                              (if (gx#stx-pair? _hd2509125707_)
                                  (let ((_e2509425712_
                                         (gx#stx-e _hd2509125707_)))
                                    (let ((_lp-hd2509525715_
                                           (##car _e2509425712_))
                                          (_lp-tl2509625717_
                                           (##cdr _e2509425712_)))
                                      (if (gx#stx-pair? _lp-hd2509525715_)
                                          (let ((_e2509925720_
                                                 (gx#stx-e _lp-hd2509525715_)))
                                            (let ((_hd2510025723_
                                                   (##car _e2509925720_))
                                                  (_tl2510125725_
                                                   (##cdr _e2509925720_)))
                                              (if (gx#identifier?
                                                   _hd2510025723_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2510025723_)
                                                      (if (gx#stx-pair?
                                                           _tl2510125725_)
                                                          (let ((_e2510225728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2510125725_)))
                    (let ((_hd2510325731_ (##car _e2510225728_))
                          (_tl2510425733_ (##cdr _e2510225728_)))
                      (if (gx#stx-null? _tl2510425733_)
                          (_loop2509325704_
                           _lp-tl2509625717_
                           (cons _hd2510325731_ _xarg2509725709_))
                          (_g2505525622_ _g2505925625_))))
                  (_g2505525622_ _g2505925625_))
              (_g2505525622_ _g2505925625_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2505525622_
                                                   _g2505925625_))))
                                          (_g2505525622_ _g2505925625_))))
                                  (let ((_xarg2509825736_
                                         (reverse _xarg2509725709_)))
                                    (if (gx#stx-null? _tl2507725664_)
                                        ((lambda (_L25739_ _L25740_ _L25741_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2576925772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2577025774_)
                        (cons _g2576925772_ _g2577025774_))
                      '()
                      _L25741_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2577625779_ _g2577725781_)
                                        (cons _g2577625779_ _g2577725781_))
                                      '()
                                      _L25741_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2578325786_ _g2578425788_)
                                        (cons _g2578325786_ _g2578425788_))
                                      '()
                                      _L25739_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2579025793_ _g2579125795_)
                                        (cons _g2579025793_ _g2579125795_))
                                      '()
                                      _L25741_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2579725800_ _g2579825802_)
                                        (cons _g2579725800_ _g2579825802_))
                                      '()
                                      _L25739_)))
                   (not (find (lambda (_g2580425806_)
                                (gx#free-identifier=? _g2580425806_ _L25740_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2580825811_ _g2580925813_)
                                          (cons _g2580825811_ _g2580925813_))
                                        '()
                                        _L25741_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2505525622_ _g2505925625_)))
                                         _xarg2509825736_
                                         _hd2508825694_
                                         _arg2507425656_)
                                        (_g2505525622_ _g2505925625_)))))))
                    (_loop2509325704_ _target2509025699_ '()))
                  (_g2505525622_ _g2505925625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505525622_ _g2505925625_))
                                            (_g2505525622_ _g2505925625_))
                                        (_g2505525622_ _g2505925625_))))
                                (_g2505525622_ _g2505925625_))
                            (_g2505525622_ _g2505925625_))
                        (_g2505525622_ _g2505925625_))))
                (_g2505525622_ _g2505925625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505525622_ _g2505925625_))
                                            (_g2505525622_ _g2505925625_))
                                        (_g2505525622_ _g2505925625_))))
                                (_g2505525622_ _g2505925625_))))
                        (_g2505525622_ _g2505925625_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2506925640_
                                             _target2506625635_
                                             '()))
                                          (_g2505525622_ _g2505925625_)))))
                                (_g2505525622_ _g2505925625_))
                            (_g2505525622_ _g2505925625_))))
                    (_g2505525622_ _g2505925625_)))))
        (_g2505425816_ _form25053_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form24521_)
      (let* ((_g2452524649_
              (lambda (_g2452624646_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2452624646_)))
             (_g2452424766_
              (lambda (_g2452624652_)
                (if (gx#stx-pair? _g2452624652_)
                    (let ((_e2461524654_ (gx#stx-e _g2452624652_)))
                      (let ((_hd2461624657_ (##car _e2461524654_))
                            (_tl2461724659_ (##cdr _e2461524654_)))
                        (if (gx#stx-pair? _tl2461724659_)
                            (let ((_e2461824662_ (gx#stx-e _tl2461724659_)))
                              (let ((_hd2461924665_ (##car _e2461824662_))
                                    (_tl2462024667_ (##cdr _e2461824662_)))
                                (if (gx#stx-pair? _hd2461924665_)
                                    (let ((_e2462124670_
                                           (gx#stx-e _hd2461924665_)))
                                      (let ((_hd2462224673_
                                             (##car _e2462124670_))
                                            (_tl2462324675_
                                             (##cdr _e2462124670_)))
                                        (if (gx#identifier? _hd2462224673_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2462224673_)
                                                (if (gx#stx-pair?
                                                     _tl2462324675_)
                                                    (let ((_e2462424678_
                                                           (gx#stx-e
                                                            _tl2462324675_)))
                                                      (let ((_hd2462524681_
                                                             (##car _e2462424678_))
                                                            (_tl2462624683_
                                                             (##cdr _e2462424678_)))
                                                        (if (gx#stx-pair?
                                                             _hd2462524681_)
                                                            (let ((_e2462724686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2462524681_)))
                      (let ((_hd2462824689_ (##car _e2462724686_))
                            (_tl2462924691_ (##cdr _e2462724686_)))
                        (if (gx#identifier? _hd2462824689_)
                            (if (gx#stx-eq? '%#ref _hd2462824689_)
                                (if (gx#stx-pair? _tl2462924691_)
                                    (let ((_e2463024694_
                                           (gx#stx-e _tl2462924691_)))
                                      (let ((_hd2463124697_
                                             (##car _e2463024694_))
                                            (_tl2463224699_
                                             (##cdr _e2463024694_)))
                                        (if (gx#stx-null? _tl2463224699_)
                                            (if (gx#stx-pair? _tl2462624683_)
                                                (let ((_e2463324702_
                                                       (gx#stx-e
                                                        _tl2462624683_)))
                                                  (let ((_hd2463424705_
                                                         (##car _e2463324702_))
                                                        (_tl2463524707_
                                                         (##cdr _e2463324702_)))
                                                    (if (gx#stx-pair?
                                                         _hd2463424705_)
                                                        (let ((_e2463624710_
                                                               (gx#stx-e
                                                                _hd2463424705_)))
                                                          (let ((_hd2463724713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2463624710_))
                        (_tl2463824715_ (##cdr _e2463624710_)))
                    (if (gx#identifier? _hd2463724713_)
                        (if (gx#stx-eq? '%#ref _hd2463724713_)
                            (if (gx#stx-pair? _tl2463824715_)
                                (let ((_e2463924718_
                                       (gx#stx-e _tl2463824715_)))
                                  (let ((_hd2464024721_ (##car _e2463924718_))
                                        (_tl2464124723_ (##cdr _e2463924718_)))
                                    (if (gx#stx-null? _tl2464124723_)
                                        (if (gx#stx-pair? _tl2463524707_)
                                            (let ((_e2464224726_
                                                   (gx#stx-e _tl2463524707_)))
                                              (let ((_hd2464324729_
                                                     (##car _e2464224726_))
                                                    (_tl2464424731_
                                                     (##cdr _e2464224726_)))
                                                (if (gx#stx-null?
                                                     _tl2464424731_)
                                                    (if (gx#stx-null?
                                                         _tl2462024667_)
                                                        ((lambda (_L24734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24735_
                          _L24736_)
                   (gxc#generate-runtime-binding-id _L24734_))
                 _hd2464024721_
                 _hd2463124697_
                 _hd2461624657_)
                (_g2452524649_ _g2452624652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2452524649_
                                                     _g2452624652_))))
                                            (_g2452524649_ _g2452624652_))
                                        (_g2452524649_ _g2452624652_))))
                                (_g2452524649_ _g2452624652_))
                            (_g2452524649_ _g2452624652_))
                        (_g2452524649_ _g2452624652_))))
                (_g2452524649_ _g2452624652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452524649_ _g2452624652_))
                                            (_g2452524649_ _g2452624652_))))
                                    (_g2452524649_ _g2452624652_))
                                (_g2452524649_ _g2452624652_))
                            (_g2452524649_ _g2452624652_))))
                    (_g2452524649_ _g2452624652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2452524649_
                                                     _g2452624652_))
                                                (_g2452524649_ _g2452624652_))
                                            (_g2452524649_ _g2452624652_))))
                                    (_g2452524649_ _g2452624652_))))
                            (_g2452524649_ _g2452624652_))))
                    (_g2452524649_ _g2452624652_))))
             (_g2452324902_
              (lambda (_g2452624769_)
                (if (gx#stx-pair? _g2452624769_)
                    (let ((_e2457624771_ (gx#stx-e _g2452624769_)))
                      (let ((_hd2457724774_ (##car _e2457624771_))
                            (_tl2457824776_ (##cdr _e2457624771_)))
                        (if (gx#stx-pair/null? _hd2457724774_)
                            (if (fx>= (gx#stx-length _hd2457724774_) '0)
                                (let ((_g27371_
                                       (gx#syntax-split-splice
                                        _hd2457724774_
                                        '0)))
                                  (begin
                                    (let ((_g27372_ (values-count _g27371_)))
                                      (if (not (fx= _g27372_ 2))
                                          (error "Context expects 2 values"
                                                 _g27372_)))
                                    (let ((_target2457924779_
                                           (values-ref _g27371_ 0))
                                          (_tl2458124781_
                                           (values-ref _g27371_ 1)))
                                      (letrec ((_loop2458224784_
                                                (lambda (_hd2458024787_
                                                         _arg2458624789_)
                                                  (if (gx#stx-pair?
                                                       _hd2458024787_)
                                                      (let ((_e2458324792_
                                                             (gx#stx-e
                                                              _hd2458024787_)))
                                                        (let ((_lp-hd2458424795_
                                                               (##car _e2458324792_))
                                                              (_lp-tl2458524797_
                                                               (##cdr _e2458324792_)))
                                                          (_loop2458224784_
                                                           _lp-tl2458524797_
                                                           (cons _lp-hd2458424795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2458624789_))))
              (let ((_arg2458724800_ (reverse _arg2458624789_)))
                (if (gx#stx-pair? _tl2457824776_)
                    (let ((_e2458824803_ (gx#stx-e _tl2457824776_)))
                      (let ((_hd2458924806_ (##car _e2458824803_))
                            (_tl2459024808_ (##cdr _e2458824803_)))
                        (if (gx#stx-pair? _hd2458924806_)
                            (let ((_e2459124811_ (gx#stx-e _hd2458924806_)))
                              (let ((_hd2459224814_ (##car _e2459124811_))
                                    (_tl2459324816_ (##cdr _e2459124811_)))
                                (if (gx#identifier? _hd2459224814_)
                                    (if (gx#stx-eq? '%#call _hd2459224814_)
                                        (if (gx#stx-pair? _tl2459324816_)
                                            (let ((_e2459424819_
                                                   (gx#stx-e _tl2459324816_)))
                                              (let ((_hd2459524822_
                                                     (##car _e2459424819_))
                                                    (_tl2459624824_
                                                     (##cdr _e2459424819_)))
                                                (if (gx#stx-pair?
                                                     _hd2459524822_)
                                                    (let ((_e2459724827_
                                                           (gx#stx-e
                                                            _hd2459524822_)))
                                                      (let ((_hd2459824830_
                                                             (##car _e2459724827_))
                                                            (_tl2459924832_
                                                             (##cdr _e2459724827_)))
                                                        (if (gx#identifier?
                                                             _hd2459824830_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2459824830_)
                        (if (gx#stx-pair? _tl2459924832_)
                            (let ((_e2460024835_ (gx#stx-e _tl2459924832_)))
                              (let ((_hd2460124838_ (##car _e2460024835_))
                                    (_tl2460224840_ (##cdr _e2460024835_)))
                                (if (gx#stx-null? _tl2460224840_)
                                    (if (gx#stx-pair? _tl2459624824_)
                                        (let ((_e2460324843_
                                               (gx#stx-e _tl2459624824_)))
                                          (let ((_hd2460424846_
                                                 (##car _e2460324843_))
                                                (_tl2460524848_
                                                 (##cdr _e2460324843_)))
                                            (if (gx#stx-pair? _hd2460424846_)
                                                (let ((_e2460624851_
                                                       (gx#stx-e
                                                        _hd2460424846_)))
                                                  (let ((_hd2460724854_
                                                         (##car _e2460624851_))
                                                        (_tl2460824856_
                                                         (##cdr _e2460624851_)))
                                                    (if (gx#identifier?
                                                         _hd2460724854_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2460724854_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2460824856_)
                        (let ((_e2460924859_ (gx#stx-e _tl2460824856_)))
                          (let ((_hd2461024862_ (##car _e2460924859_))
                                (_tl2461124864_ (##cdr _e2460924859_)))
                            (if (gx#stx-null? _tl2461124864_)
                                (if (gx#stx-null? _tl2459024808_)
                                    ((lambda (_L24867_
                                              _L24868_
                                              _L24869_
                                              _L24870_)
                                       (gxc#generate-runtime-binding-id
                                        _L24867_))
                                     _hd2461024862_
                                     _hd2460124838_
                                     _tl2458124781_
                                     _arg2458724800_)
                                    (_g2452424766_ _g2452624769_))
                                (_g2452424766_ _g2452624769_))))
                        (_g2452424766_ _g2452624769_))
                    (_g2452424766_ _g2452624769_))
                (_g2452424766_ _g2452624769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452424766_
                                                 _g2452624769_))))
                                        (_g2452424766_ _g2452624769_))
                                    (_g2452424766_ _g2452624769_))))
                            (_g2452424766_ _g2452624769_))
                        (_g2452424766_ _g2452624769_))
                    (_g2452424766_ _g2452624769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2452424766_
                                                     _g2452624769_))))
                                            (_g2452424766_ _g2452624769_))
                                        (_g2452424766_ _g2452624769_))
                                    (_g2452424766_ _g2452624769_))))
                            (_g2452424766_ _g2452624769_))))
                    (_g2452424766_ _g2452624769_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2458224784_
                                         _target2457924779_
                                         '())))))
                                (_g2452424766_ _g2452624769_))
                            (_g2452424766_ _g2452624769_))))
                    (_g2452424766_ _g2452624769_))))
             (_g2452225050_
              (lambda (_g2452624905_)
                (if (gx#stx-pair? _g2452624905_)
                    (let ((_e2453024907_ (gx#stx-e _g2452624905_)))
                      (let ((_hd2453124910_ (##car _e2453024907_))
                            (_tl2453224912_ (##cdr _e2453024907_)))
                        (if (gx#stx-pair/null? _hd2453124910_)
                            (if (fx>= (gx#stx-length _hd2453124910_) '0)
                                (let ((_g27373_
                                       (gx#syntax-split-splice
                                        _hd2453124910_
                                        '0)))
                                  (begin
                                    (let ((_g27374_ (values-count _g27373_)))
                                      (if (not (fx= _g27374_ 2))
                                          (error "Context expects 2 values"
                                                 _g27374_)))
                                    (let ((_target2453324915_
                                           (values-ref _g27373_ 0))
                                          (_tl2453524917_
                                           (values-ref _g27373_ 1)))
                                      (if (gx#stx-null? _tl2453524917_)
                                          (letrec ((_loop2453624920_
                                                    (lambda (_hd2453424923_
                                                             _arg2454024925_)
                                                      (if (gx#stx-pair?
                                                           _hd2453424923_)
                                                          (let ((_e2453724928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2453424923_)))
                    (let ((_lp-hd2453824931_ (##car _e2453724928_))
                          (_lp-tl2453924933_ (##cdr _e2453724928_)))
                      (_loop2453624920_
                       _lp-tl2453924933_
                       (cons _lp-hd2453824931_ _arg2454024925_))))
                  (let ((_arg2454124936_ (reverse _arg2454024925_)))
                    (if (gx#stx-pair? _tl2453224912_)
                        (let ((_e2454224939_ (gx#stx-e _tl2453224912_)))
                          (let ((_hd2454324942_ (##car _e2454224939_))
                                (_tl2454424944_ (##cdr _e2454224939_)))
                            (if (gx#stx-pair? _hd2454324942_)
                                (let ((_e2454524947_
                                       (gx#stx-e _hd2454324942_)))
                                  (let ((_hd2454624950_ (##car _e2454524947_))
                                        (_tl2454724952_ (##cdr _e2454524947_)))
                                    (if (gx#identifier? _hd2454624950_)
                                        (if (gx#stx-eq? '%#call _hd2454624950_)
                                            (if (gx#stx-pair? _tl2454724952_)
                                                (let ((_e2454824955_
                                                       (gx#stx-e
                                                        _tl2454724952_)))
                                                  (let ((_hd2454924958_
                                                         (##car _e2454824955_))
                                                        (_tl2455024960_
                                                         (##cdr _e2454824955_)))
                                                    (if (gx#stx-pair?
                                                         _hd2454924958_)
                                                        (let ((_e2455124963_
                                                               (gx#stx-e
                                                                _hd2454924958_)))
                                                          (let ((_hd2455224966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2455124963_))
                        (_tl2455324968_ (##cdr _e2455124963_)))
                    (if (gx#identifier? _hd2455224966_)
                        (if (gx#stx-eq? '%#ref _hd2455224966_)
                            (if (gx#stx-pair? _tl2455324968_)
                                (let ((_e2455424971_
                                       (gx#stx-e _tl2455324968_)))
                                  (let ((_hd2455524974_ (##car _e2455424971_))
                                        (_tl2455624976_ (##cdr _e2455424971_)))
                                    (if (gx#stx-null? _tl2455624976_)
                                        (if (gx#stx-pair/null? _tl2455024960_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2455024960_)
                                                      '0)
                                                (let ((_g27375_
                                                       (gx#syntax-split-splice
                                                        _tl2455024960_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27376_
                                                           (values-count
                                                            _g27375_)))
                                                      (if (not (fx= _g27376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27376_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2455724979_
                                                           (values-ref
                                                            _g27375_
                                                            0))
                                                          (_tl2455924981_
                                                           (values-ref
                                                            _g27375_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2455924981_)
                                                          (letrec ((_loop2456024984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2455824987_ _xarg2456424989_)
                              (if (gx#stx-pair? _hd2455824987_)
                                  (let ((_e2456124992_
                                         (gx#stx-e _hd2455824987_)))
                                    (let ((_lp-hd2456224995_
                                           (##car _e2456124992_))
                                          (_lp-tl2456324997_
                                           (##cdr _e2456124992_)))
                                      (if (gx#stx-pair? _lp-hd2456224995_)
                                          (let ((_e2456625000_
                                                 (gx#stx-e _lp-hd2456224995_)))
                                            (let ((_hd2456725003_
                                                   (##car _e2456625000_))
                                                  (_tl2456825005_
                                                   (##cdr _e2456625000_)))
                                              (if (gx#identifier?
                                                   _hd2456725003_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2456725003_)
                                                      (if (gx#stx-pair?
                                                           _tl2456825005_)
                                                          (let ((_e2456925008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2456825005_)))
                    (let ((_hd2457025011_ (##car _e2456925008_))
                          (_tl2457125013_ (##cdr _e2456925008_)))
                      (if (gx#stx-null? _tl2457125013_)
                          (_loop2456024984_
                           _lp-tl2456324997_
                           (cons _hd2457025011_ _xarg2456424989_))
                          (_g2452324902_ _g2452624905_))))
                  (_g2452324902_ _g2452624905_))
              (_g2452324902_ _g2452624905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2452324902_
                                                   _g2452624905_))))
                                          (_g2452324902_ _g2452624905_))))
                                  (let ((_xarg2456525016_
                                         (reverse _xarg2456424989_)))
                                    (if (gx#stx-null? _tl2454424944_)
                                        ((lambda (_L25019_ _L25020_ _L25021_)
                                           (gxc#generate-runtime-binding-id
                                            _L25020_))
                                         _xarg2456525016_
                                         _hd2455524974_
                                         _arg2454124936_)
                                        (_g2452324902_ _g2452624905_)))))))
                    (_loop2456024984_ _target2455724979_ '()))
                  (_g2452324902_ _g2452624905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452324902_ _g2452624905_))
                                            (_g2452324902_ _g2452624905_))
                                        (_g2452324902_ _g2452624905_))))
                                (_g2452324902_ _g2452624905_))
                            (_g2452324902_ _g2452624905_))
                        (_g2452324902_ _g2452624905_))))
                (_g2452324902_ _g2452624905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452324902_ _g2452624905_))
                                            (_g2452324902_ _g2452624905_))
                                        (_g2452324902_ _g2452624905_))))
                                (_g2452324902_ _g2452624905_))))
                        (_g2452324902_ _g2452624905_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2453624920_
                                             _target2453324915_
                                             '()))
                                          (_g2452324902_ _g2452624905_)))))
                                (_g2452324902_ _g2452624905_))
                            (_g2452324902_ _g2452624905_))))
                    (_g2452324902_ _g2452624905_)))))
        (_g2452225050_ _form24521_))))
  (define gxc#lambda-form-arity
    (lambda (_form24325_)
      (let* ((_g2432724341_
              (lambda (_g2432824338_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2432824338_)))
             (_g2432624518_
              (lambda (_g2432824344_)
                (if (gx#stx-pair? _g2432824344_)
                    (let ((_e2433124346_ (gx#stx-e _g2432824344_)))
                      (let ((_hd2433224349_ (##car _e2433124346_))
                            (_tl2433324351_ (##cdr _e2433124346_)))
                        (if (gx#stx-pair? _tl2433324351_)
                            (let ((_e2433424354_ (gx#stx-e _tl2433324351_)))
                              (let ((_hd2433524357_ (##car _e2433424354_))
                                    (_tl2433624359_ (##cdr _e2433424354_)))
                                (if (gx#stx-null? _tl2433624359_)
                                    ((lambda (_L24362_ _L24363_)
                                       (let* ((_g2437824406_
                                               (lambda (_g2437924403_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2437924403_)))
                                              (_g2437724419_
                                               (lambda (_g2437924409_)
                                                 ((lambda (_L24411_)
                                                    (cons '0 '()))
                                                  _g2437924409_)))
                                              (_g2437624468_
                                               (lambda (_g2437924422_)
                                                 (if (gx#stx-pair/null?
                                                      _g2437924422_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2437924422_)
                                                               '0)
                                                         (let ((_g27377_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2437924422_
                         '0)))
                   (begin
                     (let ((_g27378_ (values-count _g27377_)))
                       (if (not (fx= _g27378_ 2))
                           (error "Context expects 2 values" _g27378_)))
                     (let ((_target2439224424_ (values-ref _g27377_ 0))
                           (_tl2439424426_ (values-ref _g27377_ 1)))
                       (letrec ((_loop2439524429_
                                 (lambda (_hd2439324432_ _arg2439924434_)
                                   (if (gx#stx-pair? _hd2439324432_)
                                       (let ((_e2439624437_
                                              (gx#stx-e _hd2439324432_)))
                                         (let ((_lp-hd2439724440_
                                                (##car _e2439624437_))
                                               (_lp-tl2439824442_
                                                (##cdr _e2439624437_)))
                                           (_loop2439524429_
                                            _lp-tl2439824442_
                                            (cons _lp-hd2439724440_
                                                  _arg2439924434_))))
                                       (let ((_arg2440024445_
                                              (reverse _arg2439924434_)))
                                         ((lambda (_L24448_ _L24449_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2446024463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2446124465_)
                              (cons _g2446024463_ _g2446124465_))
                            '()
                            _L24449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2439424426_
                                          _arg2440024445_))))))
                         (_loop2439524429_ _target2439224424_ '())))))
                 (_g2437724419_ _g2437924422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2437724419_
                                                      _g2437924422_))))
                                              (_g2437524515_
                                               (lambda (_g2437924471_)
                                                 (if (gx#stx-pair/null?
                                                      _g2437924471_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2437924471_)
                                                               '0)
                                                         (let ((_g27379_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2437924471_
                         '0)))
                   (begin
                     (let ((_g27380_ (values-count _g27379_)))
                       (if (not (fx= _g27380_ 2))
                           (error "Context expects 2 values" _g27380_)))
                     (let ((_target2438124473_ (values-ref _g27379_ 0))
                           (_tl2438324475_ (values-ref _g27379_ 1)))
                       (if (gx#stx-null? _tl2438324475_)
                           (letrec ((_loop2438424478_
                                     (lambda (_hd2438224481_ _arg2438824483_)
                                       (if (gx#stx-pair? _hd2438224481_)
                                           (let ((_e2438524486_
                                                  (gx#stx-e _hd2438224481_)))
                                             (let ((_lp-hd2438624489_
                                                    (##car _e2438524486_))
                                                   (_lp-tl2438724491_
                                                    (##cdr _e2438524486_)))
                                               (_loop2438424478_
                                                _lp-tl2438724491_
                                                (cons _lp-hd2438624489_
                                                      _arg2438824483_))))
                                           (let ((_arg2438924494_
                                                  (reverse _arg2438824483_)))
                                             ((lambda (_L24497_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2450724510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2450824512_)
                            (cons _g2450724510_ _g2450824512_))
                          '()
                          _L24497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2438924494_))))))
                             (_loop2438424478_ _target2438124473_ '()))
                           (_g2437624468_ _g2437924471_)))))
                 (_g2437624468_ _g2437924471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2437624468_
                                                      _g2437924471_)))))
                                         (_g2437524515_ _L24363_)))
                                     _hd2433524357_
                                     _hd2433224349_)
                                    (_g2432724341_ _g2432824344_))))
                            (_g2432724341_ _g2432824344_))))
                    (_g2432724341_ _g2432824344_)))))
        (_g2432624518_ _form24325_))))
  (define gxc#lambda-expr?
    (lambda (_expr24278_)
      (let* ((_g2428124291_
              (lambda (_g2428224288_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2428224288_)))
             (_g2428024298_ (lambda (_g2428224294_) ((lambda () '#f))))
             (_g2427924322_
              (lambda (_g2428224301_)
                (if (gx#stx-pair? _g2428224301_)
                    (let ((_e2428424303_ (gx#stx-e _g2428224301_)))
                      (let ((_hd2428524306_ (##car _e2428424303_))
                            (_tl2428624308_ (##cdr _e2428424303_)))
                        (if (gx#identifier? _hd2428524306_)
                            (if (gx#stx-eq? '%#lambda _hd2428524306_)
                                ((lambda (_L24311_) '#t) _tl2428624308_)
                                (_g2428024298_ _g2428224301_))
                            (_g2428024298_ _g2428224301_))))
                    (_g2428024298_ _g2428224301_)))))
        (_g2427924322_ _expr24278_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24231_)
      (let* ((_g2423424244_
              (lambda (_g2423524241_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2423524241_)))
             (_g2423324251_ (lambda (_g2423524247_) ((lambda () '#f))))
             (_g2423224275_
              (lambda (_g2423524254_)
                (if (gx#stx-pair? _g2423524254_)
                    (let ((_e2423724256_ (gx#stx-e _g2423524254_)))
                      (let ((_hd2423824259_ (##car _e2423724256_))
                            (_tl2423924261_ (##cdr _e2423724256_)))
                        (if (gx#identifier? _hd2423824259_)
                            (if (gx#stx-eq? '%#case-lambda _hd2423824259_)
                                ((lambda (_L24264_) '#t) _tl2423924261_)
                                (_g2423324251_ _g2423524254_))
                            (_g2423324251_ _g2423524254_))))
                    (_g2423324251_ _g2423524254_)))))
        (_g2423224275_ _expr24231_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24100_)
      (let* ((_g2410324133_
              (lambda (_g2410424130_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2410424130_)))
             (_g2410224140_ (lambda (_g2410424136_) ((lambda () '#f))))
             (_g2410124228_
              (lambda (_g2410424143_)
                (if (gx#stx-pair? _g2410424143_)
                    (let ((_e2410824145_ (gx#stx-e _g2410424143_)))
                      (let ((_hd2410924148_ (##car _e2410824145_))
                            (_tl2411024150_ (##cdr _e2410824145_)))
                        (if (gx#identifier? _hd2410924148_)
                            (if (gx#stx-eq? '%#let-values _hd2410924148_)
                                (if (gx#stx-pair? _tl2411024150_)
                                    (let ((_e2411124153_
                                           (gx#stx-e _tl2411024150_)))
                                      (let ((_hd2411224156_
                                             (##car _e2411124153_))
                                            (_tl2411324158_
                                             (##cdr _e2411124153_)))
                                        (if (gx#stx-pair? _hd2411224156_)
                                            (let ((_e2411424161_
                                                   (gx#stx-e _hd2411224156_)))
                                              (let ((_hd2411524164_
                                                     (##car _e2411424161_))
                                                    (_tl2411624166_
                                                     (##cdr _e2411424161_)))
                                                (if (gx#stx-pair?
                                                     _hd2411524164_)
                                                    (let ((_e2411724169_
                                                           (gx#stx-e
                                                            _hd2411524164_)))
                                                      (let ((_hd2411824172_
                                                             (##car _e2411724169_))
                                                            (_tl2411924174_
                                                             (##cdr _e2411724169_)))
                                                        (if (gx#stx-pair?
                                                             _hd2411824172_)
                                                            (let ((_e2412024177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2411824172_)))
                      (let ((_hd2412124180_ (##car _e2412024177_))
                            (_tl2412224182_ (##cdr _e2412024177_)))
                        (if (gx#stx-null? _tl2412224182_)
                            (if (gx#stx-pair? _tl2411924174_)
                                (let ((_e2412324185_
                                       (gx#stx-e _tl2411924174_)))
                                  (let ((_hd2412424188_ (##car _e2412324185_))
                                        (_tl2412524190_ (##cdr _e2412324185_)))
                                    (if (gx#stx-null? _tl2412524190_)
                                        (if (gx#stx-null? _tl2411624166_)
                                            (if (gx#stx-pair? _tl2411324158_)
                                                (let ((_e2412624193_
                                                       (gx#stx-e
                                                        _tl2411324158_)))
                                                  (let ((_hd2412724196_
                                                         (##car _e2412624193_))
                                                        (_tl2412824198_
                                                         (##cdr _e2412624193_)))
                                                    (if (gx#stx-null?
                                                         _tl2412824198_)
                                                        ((lambda (_L24201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24202_
                          _L24203_)
                   (if (gx#identifier? _L24203_)
                       (if (gxc#lambda-expr? _L24202_)
                           (gxc#case-lambda-expr? _L24201_)
                           '#f)
                       '#f))
                 _hd2412724196_
                 _hd2412424188_
                 _hd2412124180_)
                (_g2410224140_ _g2410424143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2410224140_ _g2410424143_))
                                            (_g2410224140_ _g2410424143_))
                                        (_g2410224140_ _g2410424143_))))
                                (_g2410224140_ _g2410424143_))
                            (_g2410224140_ _g2410424143_))))
                    (_g2410224140_ _g2410424143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2410224140_
                                                     _g2410424143_))))
                                            (_g2410224140_ _g2410424143_))))
                                    (_g2410224140_ _g2410424143_))
                                (_g2410224140_ _g2410424143_))
                            (_g2410224140_ _g2410424143_))))
                    (_g2410224140_ _g2410424143_)))))
        (_g2410124228_ _expr24100_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23425_)
      (let* ((_g2342823586_
              (lambda (_g2342923583_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2342923583_)))
             (_g2342723593_ (lambda (_g2342923589_) ((lambda () '#f))))
             (_g2342624097_
              (lambda (_g2342923596_)
                (if (gx#stx-pair? _g2342923596_)
                    (let ((_e2344123598_ (gx#stx-e _g2342923596_)))
                      (let ((_hd2344223601_ (##car _e2344123598_))
                            (_tl2344323603_ (##cdr _e2344123598_)))
                        (if (gx#identifier? _hd2344223601_)
                            (if (gx#stx-eq? '%#let-values _hd2344223601_)
                                (if (gx#stx-pair? _tl2344323603_)
                                    (let ((_e2344423606_
                                           (gx#stx-e _tl2344323603_)))
                                      (let ((_hd2344523609_
                                             (##car _e2344423606_))
                                            (_tl2344623611_
                                             (##cdr _e2344423606_)))
                                        (if (gx#stx-pair? _hd2344523609_)
                                            (let ((_e2344723614_
                                                   (gx#stx-e _hd2344523609_)))
                                              (let ((_hd2344823617_
                                                     (##car _e2344723614_))
                                                    (_tl2344923619_
                                                     (##cdr _e2344723614_)))
                                                (if (gx#stx-pair?
                                                     _hd2344823617_)
                                                    (let ((_e2345023622_
                                                           (gx#stx-e
                                                            _hd2344823617_)))
                                                      (let ((_hd2345123625_
                                                             (##car _e2345023622_))
                                                            (_tl2345223627_
                                                             (##cdr _e2345023622_)))
                                                        (if (gx#stx-pair?
                                                             _hd2345123625_)
                                                            (let ((_e2345323630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2345123625_)))
                      (let ((_hd2345423633_ (##car _e2345323630_))
                            (_tl2345523635_ (##cdr _e2345323630_)))
                        (if (gx#stx-null? _tl2345523635_)
                            (if (gx#stx-pair? _tl2345223627_)
                                (let ((_e2345623638_
                                       (gx#stx-e _tl2345223627_)))
                                  (let ((_hd2345723641_ (##car _e2345623638_))
                                        (_tl2345823643_ (##cdr _e2345623638_)))
                                    (if (gx#stx-pair? _hd2345723641_)
                                        (let ((_e2345923646_
                                               (gx#stx-e _hd2345723641_)))
                                          (let ((_hd2346023649_
                                                 (##car _e2345923646_))
                                                (_tl2346123651_
                                                 (##cdr _e2345923646_)))
                                            (if (gx#identifier? _hd2346023649_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2346023649_)
                                                    (if (gx#stx-pair?
                                                         _tl2346123651_)
                                                        (let ((_e2346223654_
                                                               (gx#stx-e
                                                                _tl2346123651_)))
                                                          (let ((_hd2346323657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2346223654_))
                        (_tl2346423659_ (##cdr _e2346223654_)))
                    (if (gx#stx-pair? _hd2346323657_)
                        (let ((_e2346523662_ (gx#stx-e _hd2346323657_)))
                          (let ((_hd2346623665_ (##car _e2346523662_))
                                (_tl2346723667_ (##cdr _e2346523662_)))
                            (if (gx#stx-pair? _hd2346623665_)
                                (let ((_e2346823670_
                                       (gx#stx-e _hd2346623665_)))
                                  (let ((_hd2346923673_ (##car _e2346823670_))
                                        (_tl2347023675_ (##cdr _e2346823670_)))
                                    (if (gx#stx-pair? _hd2346923673_)
                                        (let ((_e2347123678_
                                               (gx#stx-e _hd2346923673_)))
                                          (let ((_hd2347223681_
                                                 (##car _e2347123678_))
                                                (_tl2347323683_
                                                 (##cdr _e2347123678_)))
                                            (if (gx#stx-null? _tl2347323683_)
                                                (if (gx#stx-pair?
                                                     _tl2347023675_)
                                                    (let ((_e2347423686_
                                                           (gx#stx-e
                                                            _tl2347023675_)))
                                                      (let ((_hd2347523689_
                                                             (##car _e2347423686_))
                                                            (_tl2347623691_
                                                             (##cdr _e2347423686_)))
                                                        (if (gx#stx-null?
                                                             _tl2347623691_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2346723667_)
                        (if (gx#stx-pair? _tl2346423659_)
                            (let ((_e2347723694_ (gx#stx-e _tl2346423659_)))
                              (let ((_hd2347823697_ (##car _e2347723694_))
                                    (_tl2347923699_ (##cdr _e2347723694_)))
                                (if (gx#stx-pair? _hd2347823697_)
                                    (let ((_e2348023702_
                                           (gx#stx-e _hd2347823697_)))
                                      (let ((_hd2348123705_
                                             (##car _e2348023702_))
                                            (_tl2348223707_
                                             (##cdr _e2348023702_)))
                                        (if (gx#identifier? _hd2348123705_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2348123705_)
                                                (if (gx#stx-pair?
                                                     _tl2348223707_)
                                                    (let ((_e2348323710_
                                                           (gx#stx-e
                                                            _tl2348223707_)))
                                                      (let ((_hd2348423713_
                                                             (##car _e2348323710_))
                                                            (_tl2348523715_
                                                             (##cdr _e2348323710_)))
                                                        (if (gx#stx-pair?
                                                             _hd2348423713_)
                                                            (let ((_e2348623718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2348423713_)))
                      (let ((_hd2348723721_ (##car _e2348623718_))
                            (_tl2348823723_ (##cdr _e2348623718_)))
                        (if (gx#stx-pair? _tl2348523715_)
                            (let ((_e2348923726_ (gx#stx-e _tl2348523715_)))
                              (let ((_hd2349023729_ (##car _e2348923726_))
                                    (_tl2349123731_ (##cdr _e2348923726_)))
                                (if (gx#stx-pair? _hd2349023729_)
                                    (let ((_e2349223734_
                                           (gx#stx-e _hd2349023729_)))
                                      (let ((_hd2349323737_
                                             (##car _e2349223734_))
                                            (_tl2349423739_
                                             (##cdr _e2349223734_)))
                                        (if (gx#identifier? _hd2349323737_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2349323737_)
                                                (if (gx#stx-pair?
                                                     _tl2349423739_)
                                                    (let ((_e2349523742_
                                                           (gx#stx-e
                                                            _tl2349423739_)))
                                                      (let ((_hd2349623745_
                                                             (##car _e2349523742_))
                                                            (_tl2349723747_
                                                             (##cdr _e2349523742_)))
                                                        (if (gx#stx-pair?
                                                             _hd2349623745_)
                                                            (let ((_e2349823750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2349623745_)))
                      (let ((_hd2349923753_ (##car _e2349823750_))
                            (_tl2350023755_ (##cdr _e2349823750_)))
                        (if (gx#identifier? _hd2349923753_)
                            (if (gx#stx-eq? '%#ref _hd2349923753_)
                                (if (gx#stx-pair? _tl2350023755_)
                                    (let ((_e2350123758_
                                           (gx#stx-e _tl2350023755_)))
                                      (let ((_hd2350223761_
                                             (##car _e2350123758_))
                                            (_tl2350323763_
                                             (##cdr _e2350123758_)))
                                        (if (gx#stx-null? _tl2350323763_)
                                            (if (gx#stx-pair? _tl2349723747_)
                                                (let ((_e2350423766_
                                                       (gx#stx-e
                                                        _tl2349723747_)))
                                                  (let ((_hd2350523769_
                                                         (##car _e2350423766_))
                                                        (_tl2350623771_
                                                         (##cdr _e2350423766_)))
                                                    (if (gx#stx-pair?
                                                         _hd2350523769_)
                                                        (let ((_e2350723774_
                                                               (gx#stx-e
                                                                _hd2350523769_)))
                                                          (let ((_hd2350823777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2350723774_))
                        (_tl2350923779_ (##cdr _e2350723774_)))
                    (if (gx#identifier? _hd2350823777_)
                        (if (gx#stx-eq? '%#ref _hd2350823777_)
                            (if (gx#stx-pair? _tl2350923779_)
                                (let ((_e2351023782_
                                       (gx#stx-e _tl2350923779_)))
                                  (let ((_hd2351123785_ (##car _e2351023782_))
                                        (_tl2351223787_ (##cdr _e2351023782_)))
                                    (if (gx#stx-null? _tl2351223787_)
                                        (if (gx#stx-pair? _tl2350623771_)
                                            (let ((_e2351323790_
                                                   (gx#stx-e _tl2350623771_)))
                                              (let ((_hd2351423793_
                                                     (##car _e2351323790_))
                                                    (_tl2351523795_
                                                     (##cdr _e2351323790_)))
                                                (if (gx#stx-pair?
                                                     _hd2351423793_)
                                                    (let ((_e2351623798_
                                                           (gx#stx-e
                                                            _hd2351423793_)))
                                                      (let ((_hd2351723801_
                                                             (##car _e2351623798_))
                                                            (_tl2351823803_
                                                             (##cdr _e2351623798_)))
                                                        (if (gx#identifier?
                                                             _hd2351723801_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2351723801_)
                        (if (gx#stx-pair? _tl2351823803_)
                            (let ((_e2351923806_ (gx#stx-e _tl2351823803_)))
                              (let ((_hd2352023809_ (##car _e2351923806_))
                                    (_tl2352123811_ (##cdr _e2351923806_)))
                                (if (gx#stx-null? _tl2352123811_)
                                    (if (gx#stx-null? _tl2349123731_)
                                        (if (gx#stx-null? _tl2347923699_)
                                            (if (gx#stx-null? _tl2345823643_)
                                                (if (gx#stx-null?
                                                     _tl2344923619_)
                                                    (if (gx#stx-pair?
                                                         _tl2344623611_)
                                                        (let ((_e2352223814_
                                                               (gx#stx-e
                                                                _tl2344623611_)))
                                                          (let ((_hd2352323817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2352223814_))
                        (_tl2352423819_ (##cdr _e2352223814_)))
                    (if (gx#stx-pair? _hd2352323817_)
                        (let ((_e2352523822_ (gx#stx-e _hd2352323817_)))
                          (let ((_hd2352623825_ (##car _e2352523822_))
                                (_tl2352723827_ (##cdr _e2352523822_)))
                            (if (gx#identifier? _hd2352623825_)
                                (if (gx#stx-eq? '%#lambda _hd2352623825_)
                                    (if (gx#stx-pair? _tl2352723827_)
                                        (let ((_e2352823830_
                                               (gx#stx-e _tl2352723827_)))
                                          (let ((_hd2352923833_
                                                 (##car _e2352823830_))
                                                (_tl2353023835_
                                                 (##cdr _e2352823830_)))
                                            (if (gx#stx-pair? _tl2353023835_)
                                                (let ((_e2353123838_
                                                       (gx#stx-e
                                                        _tl2353023835_)))
                                                  (let ((_hd2353223841_
                                                         (##car _e2353123838_))
                                                        (_tl2353323843_
                                                         (##cdr _e2353123838_)))
                                                    (if (gx#stx-pair?
                                                         _hd2353223841_)
                                                        (let ((_e2353423846_
                                                               (gx#stx-e
                                                                _hd2353223841_)))
                                                          (let ((_hd2353523849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2353423846_))
                        (_tl2353623851_ (##cdr _e2353423846_)))
                    (if (gx#identifier? _hd2353523849_)
                        (if (gx#stx-eq? '%#call _hd2353523849_)
                            (if (gx#stx-pair? _tl2353623851_)
                                (let ((_e2353723854_
                                       (gx#stx-e _tl2353623851_)))
                                  (let ((_hd2353823857_ (##car _e2353723854_))
                                        (_tl2353923859_ (##cdr _e2353723854_)))
                                    (if (gx#stx-pair? _hd2353823857_)
                                        (let ((_e2354023862_
                                               (gx#stx-e _hd2353823857_)))
                                          (let ((_hd2354123865_
                                                 (##car _e2354023862_))
                                                (_tl2354223867_
                                                 (##cdr _e2354023862_)))
                                            (if (gx#identifier? _hd2354123865_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2354123865_)
                                                    (if (gx#stx-pair?
                                                         _tl2354223867_)
                                                        (let ((_e2354323870_
                                                               (gx#stx-e
                                                                _tl2354223867_)))
                                                          (let ((_hd2354423873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2354323870_))
                        (_tl2354523875_ (##cdr _e2354323870_)))
                    (if (gx#stx-null? _tl2354523875_)
                        (if (gx#stx-pair? _tl2353923859_)
                            (let ((_e2354623878_ (gx#stx-e _tl2353923859_)))
                              (let ((_hd2354723881_ (##car _e2354623878_))
                                    (_tl2354823883_ (##cdr _e2354623878_)))
                                (if (gx#stx-pair? _hd2354723881_)
                                    (let ((_e2354923886_
                                           (gx#stx-e _hd2354723881_)))
                                      (let ((_hd2355023889_
                                             (##car _e2354923886_))
                                            (_tl2355123891_
                                             (##cdr _e2354923886_)))
                                        (if (gx#identifier? _hd2355023889_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2355023889_)
                                                (if (gx#stx-pair?
                                                     _tl2355123891_)
                                                    (let ((_e2355223894_
                                                           (gx#stx-e
                                                            _tl2355123891_)))
                                                      (let ((_hd2355323897_
                                                             (##car _e2355223894_))
                                                            (_tl2355423899_
                                                             (##cdr _e2355223894_)))
                                                        (if (gx#stx-null?
                                                             _tl2355423899_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2354823883_)
                        (let ((_e2355523902_ (gx#stx-e _tl2354823883_)))
                          (let ((_hd2355623905_ (##car _e2355523902_))
                                (_tl2355723907_ (##cdr _e2355523902_)))
                            (if (gx#stx-pair? _hd2355623905_)
                                (let ((_e2355823910_
                                       (gx#stx-e _hd2355623905_)))
                                  (let ((_hd2355923913_ (##car _e2355823910_))
                                        (_tl2356023915_ (##cdr _e2355823910_)))
                                    (if (gx#identifier? _hd2355923913_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2355923913_)
                                            (if (gx#stx-pair? _tl2356023915_)
                                                (let ((_e2356123918_
                                                       (gx#stx-e
                                                        _tl2356023915_)))
                                                  (let ((_hd2356223921_
                                                         (##car _e2356123918_))
                                                        (_tl2356323923_
                                                         (##cdr _e2356123918_)))
                                                    (if (gx#stx-null?
                                                         _tl2356323923_)
                                                        (if (gx#stx-pair?
                                                             _tl2355723907_)
                                                            (let ((_e2356423926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2355723907_)))
                      (let ((_hd2356523929_ (##car _e2356423926_))
                            (_tl2356623931_ (##cdr _e2356423926_)))
                        (if (gx#stx-pair? _hd2356523929_)
                            (let ((_e2356723934_ (gx#stx-e _hd2356523929_)))
                              (let ((_hd2356823937_ (##car _e2356723934_))
                                    (_tl2356923939_ (##cdr _e2356723934_)))
                                (if (gx#identifier? _hd2356823937_)
                                    (if (gx#stx-eq? '%#ref _hd2356823937_)
                                        (if (gx#stx-pair? _tl2356923939_)
                                            (let ((_e2357023942_
                                                   (gx#stx-e _tl2356923939_)))
                                              (let ((_hd2357123945_
                                                     (##car _e2357023942_))
                                                    (_tl2357223947_
                                                     (##cdr _e2357023942_)))
                                                (if (gx#stx-null?
                                                     _tl2357223947_)
                                                    (if (gx#stx-pair?
                                                         _tl2356623931_)
                                                        (let ((_e2357323950_
                                                               (gx#stx-e
                                                                _tl2356623931_)))
                                                          (let ((_hd2357423953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2357323950_))
                        (_tl2357523955_ (##cdr _e2357323950_)))
                    (if (gx#stx-pair? _hd2357423953_)
                        (let ((_e2357623958_ (gx#stx-e _hd2357423953_)))
                          (let ((_hd2357723961_ (##car _e2357623958_))
                                (_tl2357823963_ (##cdr _e2357623958_)))
                            (if (gx#identifier? _hd2357723961_)
                                (if (gx#stx-eq? '%#ref _hd2357723961_)
                                    (if (gx#stx-pair? _tl2357823963_)
                                        (let ((_e2357923966_
                                               (gx#stx-e _tl2357823963_)))
                                          (let ((_hd2358023969_
                                                 (##car _e2357923966_))
                                                (_tl2358123971_
                                                 (##cdr _e2357923966_)))
                                            (if (gx#stx-null? _tl2358123971_)
                                                (if (gx#stx-null?
                                                     _tl2357523955_)
                                                    (if (gx#stx-null?
                                                         _tl2353323843_)
                                                        (if (gx#stx-null?
                                                             _tl2352423819_)
                                                            ((lambda (_L23974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23975_
                              _L23976_
                              _L23977_
                              _L23978_
                              _L23979_
                              _L23980_
                              _L23981_
                              _L23982_
                              _L23983_
                              _L23984_)
                       (if (eq? (gxc#generate-runtime-binding-id _L23981_)
                                'apply)
                           (if (eq? (gxc#generate-runtime-binding-id _L23977_)
                                    'apply)
                               (if (eq? (gxc#generate-runtime-binding-id
                                         _L23976_)
                                        'keyword-dispatch)
                                   (if (gx#free-identifier=? _L23984_ _L23975_)
                                       (if (gx#free-identifier=?
                                            _L23983_
                                            _L23980_)
                                           (if (gx#free-identifier=?
                                                _L23978_
                                                _L23974_)
                                               (gx#free-identifier=?
                                                _L23982_
                                                _L23979_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2358023969_
                     _hd2357123945_
                     _hd2355323897_
                     _hd2354423873_
                     _hd2352923833_
                     _hd2352023809_
                     _hd2351123785_
                     _hd2350223761_
                     _hd2348723721_
                     _hd2347223681_
                     _hd2345423633_)
                    (_g2342723593_ _g2342923596_))
                (_g2342723593_ _g2342923596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_
                                                 _g2342923596_))))
                                        (_g2342723593_ _g2342923596_))
                                    (_g2342723593_ _g2342923596_))
                                (_g2342723593_ _g2342923596_))))
                        (_g2342723593_ _g2342923596_))))
                (_g2342723593_ _g2342923596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))))
                                            (_g2342723593_ _g2342923596_))
                                        (_g2342723593_ _g2342923596_))
                                    (_g2342723593_ _g2342923596_))))
                            (_g2342723593_ _g2342923596_))))
                    (_g2342723593_ _g2342923596_))
                (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2342723593_ _g2342923596_))
                                            (_g2342723593_ _g2342923596_))
                                        (_g2342723593_ _g2342923596_))))
                                (_g2342723593_ _g2342923596_))))
                        (_g2342723593_ _g2342923596_))
                    (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_ _g2342923596_))
                                            (_g2342723593_ _g2342923596_))))
                                    (_g2342723593_ _g2342923596_))))
                            (_g2342723593_ _g2342923596_))
                        (_g2342723593_ _g2342923596_))))
                (_g2342723593_ _g2342923596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_
                                                 _g2342923596_))))
                                        (_g2342723593_ _g2342923596_))))
                                (_g2342723593_ _g2342923596_))
                            (_g2342723593_ _g2342923596_))
                        (_g2342723593_ _g2342923596_))))
                (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2342723593_
                                                 _g2342923596_))))
                                        (_g2342723593_ _g2342923596_))
                                    (_g2342723593_ _g2342923596_))
                                (_g2342723593_ _g2342923596_))))
                        (_g2342723593_ _g2342923596_))))
                (_g2342723593_ _g2342923596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_ _g2342923596_))
                                            (_g2342723593_ _g2342923596_))
                                        (_g2342723593_ _g2342923596_))
                                    (_g2342723593_ _g2342923596_))))
                            (_g2342723593_ _g2342923596_))
                        (_g2342723593_ _g2342923596_))
                    (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))))
                                            (_g2342723593_ _g2342923596_))
                                        (_g2342723593_ _g2342923596_))))
                                (_g2342723593_ _g2342923596_))
                            (_g2342723593_ _g2342923596_))
                        (_g2342723593_ _g2342923596_))))
                (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2342723593_ _g2342923596_))
                                            (_g2342723593_ _g2342923596_))))
                                    (_g2342723593_ _g2342923596_))
                                (_g2342723593_ _g2342923596_))
                            (_g2342723593_ _g2342923596_))))
                    (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_ _g2342923596_))
                                            (_g2342723593_ _g2342923596_))))
                                    (_g2342723593_ _g2342923596_))))
                            (_g2342723593_ _g2342923596_))))
                    (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_ _g2342923596_))
                                            (_g2342723593_ _g2342923596_))))
                                    (_g2342723593_ _g2342923596_))))
                            (_g2342723593_ _g2342923596_))
                        (_g2342723593_ _g2342923596_))
                    (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_
                                                 _g2342923596_))))
                                        (_g2342723593_ _g2342923596_))))
                                (_g2342723593_ _g2342923596_))))
                        (_g2342723593_ _g2342923596_))))
                (_g2342723593_ _g2342923596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))
                                                (_g2342723593_
                                                 _g2342923596_))))
                                        (_g2342723593_ _g2342923596_))))
                                (_g2342723593_ _g2342923596_))
                            (_g2342723593_ _g2342923596_))))
                    (_g2342723593_ _g2342923596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342723593_
                                                     _g2342923596_))))
                                            (_g2342723593_ _g2342923596_))))
                                    (_g2342723593_ _g2342923596_))
                                (_g2342723593_ _g2342923596_))
                            (_g2342723593_ _g2342923596_))))
                    (_g2342723593_ _g2342923596_)))))
        (_g2342624097_ _expr23425_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23167_ _id23168_ _clauses23169_ _gensym?23170_)
        (let _lp23172_ ((_rest23174_ _clauses23169_)
                        (_ids23175_ '())
                        (_impls23176_ '())
                        (_clauses23177_ '()))
          (let* ((_rest2317823186_ _rest23174_)
                 (_E2318123190_
                  (lambda () (error '"No clause matching" _rest2317823186_)))
                 (_else2318023194_
                  (lambda ()
                    (values (reverse _ids23175_)
                            (reverse _impls23176_)
                            (reverse _clauses23177_))))
                 (_K2318223399_
                  (lambda (_rest23197_ _clause23198_)
                    (if (gxc#dispatch-lambda-form? _clause23198_)
                        (_lp23172_
                         _rest23197_
                         _ids23175_
                         _impls23176_
                         (cons _clause23198_ _clauses23177_))
                        (let* ((_g2320023211_
                                (lambda (_g2320123208_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2320123208_)))
                               (_g2319923396_
                                (lambda (_g2320123214_)
                                  (if (gx#stx-pair? _g2320123214_)
                                      (let ((_e2320423216_
                                             (gx#stx-e _g2320123214_)))
                                        (let ((_hd2320523219_
                                               (##car _e2320423216_))
                                              (_tl2320623221_
                                               (##cdr _e2320423216_)))
                                          ((lambda (_L23224_ _L23225_)
                                             (let* ((_id23242_
                                                     (make-symbol
                                                      (gx#stx-e _id23168_)
                                                      '"__"
                                                      (length _clauses23177_)
                                                      (if _gensym?23170_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23244_
                                                     (gx#core-quote-syntax__1
                                                      _id23242_
                                                      (gx#stx-source
                                                       _stx23167_)))
                                                    (_impl23246_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23224_))
              _stx23167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23393_
                                                     (let* ((_g2325023278_
                                                             (lambda (_g2325123275_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2325123275_)))
                                                            (_g2324923294_
                                                             (lambda (_g2325123281_)
                                                               ((lambda (_L23283_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23225_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23283_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23167_)
                                      '())))
                        _g2325123281_)))
                    (_g2324823343_
                     (lambda (_g2325123297_)
                       (if (gx#stx-pair/null? _g2325123297_)
                           (if (fx>= (gx#stx-length _g2325123297_) '0)
                               (let ((_g27381_
                                      (gx#syntax-split-splice
                                       _g2325123297_
                                       '0)))
                                 (begin
                                   (let ((_g27382_ (values-count _g27381_)))
                                     (if (not (fx= _g27382_ 2))
                                         (error "Context expects 2 values"
                                                _g27382_)))
                                   (let ((_target2326423299_
                                          (values-ref _g27381_ 0))
                                         (_tl2326623301_
                                          (values-ref _g27381_ 1)))
                                     (letrec ((_loop2326723304_
                                               (lambda (_hd2326523307_
                                                        _arg2327123309_)
                                                 (if (gx#stx-pair?
                                                      _hd2326523307_)
                                                     (let ((_e2326823312_
                                                            (gx#stx-e
                                                             _hd2326523307_)))
                                                       (let ((_lp-hd2326923315_
                                                              (##car _e2326823312_))
                                                             (_lp-tl2327023317_
                                                              (##cdr _e2326823312_)))
                                                         (_loop2326723304_
                                                          _lp-tl2327023317_
                                                          (cons _lp-hd2326923315_
                                                                _arg2327123309_))))
                                                     (let ((_arg2327223320_
                                                            (reverse _arg2327123309_)))
                                                       ((lambda (_L23323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23324_)
                  (cons _L23225_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23244_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23323_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2333523338_ _g2333623340_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2333523338_ '()))
                                   _g2333623340_))
                           '()
                           _L23324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23167_)
                              '())))
                _tl2326623301_
                _arg2327223320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2326723304_
                                        _target2326423299_
                                        '())))))
                               (_g2324923294_ _g2325123297_))
                           (_g2324923294_ _g2325123297_))))
                    (_g2324723390_
                     (lambda (_g2325123346_)
                       (if (gx#stx-pair/null? _g2325123346_)
                           (if (fx>= (gx#stx-length _g2325123346_) '0)
                               (let ((_g27383_
                                      (gx#syntax-split-splice
                                       _g2325123346_
                                       '0)))
                                 (begin
                                   (let ((_g27384_ (values-count _g27383_)))
                                     (if (not (fx= _g27384_ 2))
                                         (error "Context expects 2 values"
                                                _g27384_)))
                                   (let ((_target2325323348_
                                          (values-ref _g27383_ 0))
                                         (_tl2325523350_
                                          (values-ref _g27383_ 1)))
                                     (if (gx#stx-null? _tl2325523350_)
                                         (letrec ((_loop2325623353_
                                                   (lambda (_hd2325423356_
                                                            _arg2326023358_)
                                                     (if (gx#stx-pair?
                                                          _hd2325423356_)
                                                         (let ((_e2325723361_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2325423356_)))
                   (let ((_lp-hd2325823364_ (##car _e2325723361_))
                         (_lp-tl2325923366_ (##cdr _e2325723361_)))
                     (_loop2325623353_
                      _lp-tl2325923366_
                      (cons _lp-hd2325823364_ _arg2326023358_))))
                 (let ((_arg2326123369_ (reverse _arg2326023358_)))
                   ((lambda (_L23372_)
                      (cons _L23225_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23244_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2338223385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2338323387_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2338223385_ '()))
                         _g2338323387_))
                 '()
                 _L23372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23167_)
                                  '())))
                    _arg2326123369_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2325623353_
                                            _target2325323348_
                                            '()))
                                         (_g2324823343_ _g2325123346_)))))
                               (_g2324823343_ _g2325123346_))
                           (_g2324823343_ _g2325123346_)))))
               (_g2324723390_ _L23225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23172_
                                                _rest23197_
                                                (cons _id23244_ _ids23175_)
                                                (cons _impl23246_ _impls23176_)
                                                (cons _clause23393_
                                                      _clauses23177_))))
                                           _tl2320623221_
                                           _hd2320523219_)))
                                      (_g2320023211_ _g2320123214_)))))
                          (_g2319923396_ _clause23198_))))))
            (if (##pair? _rest2317823186_)
                (let ((_hd2318323402_ (##car _rest2317823186_))
                      (_tl2318423404_ (##cdr _rest2317823186_)))
                  (let* ((_clause23407_ _hd2318323402_)
                         (_rest23409_ _tl2318423404_))
                    (_K2318223399_ _rest23409_ _clause23407_)))
                (_else2318023194_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23414_ _id23415_ _clauses23416_)
          (let ((_gensym?23418_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23414_
             _id23415_
             _clauses23416_
             _gensym?23418_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27386_
          (let ((_g27385_ (length _g27386_)))
            (cond ((fx= _g27385_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27386_))
                  ((fx= _g27385_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27386_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27386_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22448_)
      (letrec ((_case-lambda-clause-def22450_
                (lambda (_id23163_ _impl23164_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23163_ '())
                               (cons (gxc#compile-e _impl23164_) '())))
                   _stx22448_)))
               (_opt-lambda-dispatch-name22451_
                (lambda (_id23159_)
                  (if (uninterned-symbol? _id23159_)
                      (let ((_str23161_ (symbol->string _id23159_)))
                        (if (string-prefix? _str23161_ '"opt-lambda")
                            '"%"
                            _id23159_))
                      _id23159_)))
               (_kw-lambda-dispatch-name22452_
                (lambda (_id23154_ _name23155_)
                  (if (uninterned-symbol? _id23154_)
                      (let ((_str23157_ (symbol->string _id23154_)))
                        (if (string-prefix? _str23157_ '"kw-lambda")
                            _name23155_
                            _id23154_))
                      _id23154_))))
        (let* ((_g2245722516_
                (lambda (_g2245822513_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2245822513_)))
               (_g2245622562_
                (lambda (_g2245822519_)
                  (if (gx#stx-pair? _g2245822519_)
                      (let ((_e2250322521_ (gx#stx-e _g2245822519_)))
                        (let ((_hd2250422524_ (##car _e2250322521_))
                              (_tl2250522526_ (##cdr _e2250322521_)))
                          (if (gx#stx-pair? _tl2250522526_)
                              (let ((_e2250622529_ (gx#stx-e _tl2250522526_)))
                                (let ((_hd2250722532_ (##car _e2250622529_))
                                      (_tl2250822534_ (##cdr _e2250622529_)))
                                  (if (gx#stx-pair? _tl2250822534_)
                                      (let ((_e2250922537_
                                             (gx#stx-e _tl2250822534_)))
                                        (let ((_hd2251022540_
                                               (##car _e2250922537_))
                                              (_tl2251122542_
                                               (##cdr _e2250922537_)))
                                          (if (gx#stx-null? _tl2251122542_)
                                              ((lambda (_L22545_ _L22546_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22546_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22545_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22448_))
                                               _hd2251022540_
                                               _hd2250722532_)
                                              (_g2245722516_ _g2245822519_))))
                                      (_g2245722516_ _g2245822519_))))
                              (_g2245722516_ _g2245822519_))))
                      (_g2245722516_ _g2245822519_))))
               (_g2245522844_
                (lambda (_g2245822565_)
                  (if (gx#stx-pair? _g2245822565_)
                      (let ((_e2248922567_ (gx#stx-e _g2245822565_)))
                        (let ((_hd2249022570_ (##car _e2248922567_))
                              (_tl2249122572_ (##cdr _e2248922567_)))
                          (if (gx#stx-pair? _tl2249122572_)
                              (let ((_e2249222575_ (gx#stx-e _tl2249122572_)))
                                (let ((_hd2249322578_ (##car _e2249222575_))
                                      (_tl2249422580_ (##cdr _e2249222575_)))
                                  (if (gx#stx-pair? _hd2249322578_)
                                      (let ((_e2249522583_
                                             (gx#stx-e _hd2249322578_)))
                                        (let ((_hd2249622586_
                                               (##car _e2249522583_))
                                              (_tl2249722588_
                                               (##cdr _e2249522583_)))
                                          (if (gx#stx-null? _tl2249722588_)
                                              (if (gx#stx-pair? _tl2249422580_)
                                                  (let ((_e2249822591_
                                                         (gx#stx-e
                                                          _tl2249422580_)))
                                                    (let ((_hd2249922594_
                                                           (##car _e2249822591_))
                                                          (_tl2250022596_
                                                           (##cdr _e2249822591_)))
                                                      (if (gx#stx-null?
                                                           _tl2250022596_)
                                                          ((lambda (_L22599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22600_)
                     (if (if (gx#identifier? _L22600_)
                             (gxc#kw-lambda-expr? _L22599_)
                             '#f)
                         (let* ((_g2261622669_
                                 (lambda (_g2261722666_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2261722666_)))
                                (_g2261522841_
                                 (lambda (_g2261722672_)
                                   (if (gx#stx-pair? _g2261722672_)
                                       (let ((_e2262322674_
                                              (gx#stx-e _g2261722672_)))
                                         (let ((_hd2262422677_
                                                (##car _e2262322674_))
                                               (_tl2262522679_
                                                (##cdr _e2262322674_)))
                                           (if (gx#stx-pair? _tl2262522679_)
                                               (let ((_e2262622682_
                                                      (gx#stx-e
                                                       _tl2262522679_)))
                                                 (let ((_hd2262722685_
                                                        (##car _e2262622682_))
                                                       (_tl2262822687_
                                                        (##cdr _e2262622682_)))
                                                   (if (gx#stx-pair?
                                                        _hd2262722685_)
                                                       (let ((_e2262922690_
                                                              (gx#stx-e
                                                               _hd2262722685_)))
                                                         (let ((_hd2263022693_
                                                                (##car _e2262922690_))
                                                               (_tl2263122695_
                                                                (##cdr _e2262922690_)))
                                                           (if (gx#stx-pair?
                                                                _hd2263022693_)
                                                               (let ((_e2263222698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2263022693_)))
                         (let ((_hd2263322701_ (##car _e2263222698_))
                               (_tl2263422703_ (##cdr _e2263222698_)))
                           (if (gx#stx-pair? _hd2263322701_)
                               (let ((_e2263522706_ (gx#stx-e _hd2263322701_)))
                                 (let ((_hd2263622709_ (##car _e2263522706_))
                                       (_tl2263722711_ (##cdr _e2263522706_)))
                                   (if (gx#stx-null? _tl2263722711_)
                                       (if (gx#stx-pair? _tl2263422703_)
                                           (let ((_e2263822714_
                                                  (gx#stx-e _tl2263422703_)))
                                             (let ((_hd2263922717_
                                                    (##car _e2263822714_))
                                                   (_tl2264022719_
                                                    (##cdr _e2263822714_)))
                                               (if (gx#stx-pair?
                                                    _hd2263922717_)
                                                   (let ((_e2264122722_
                                                          (gx#stx-e
                                                           _hd2263922717_)))
                                                     (let ((_hd2264222725_
                                                            (##car _e2264122722_))
                                                           (_tl2264322727_
                                                            (##cdr _e2264122722_)))
                                                       (if (gx#stx-pair?
                                                            _tl2264322727_)
                                                           (let ((_e2264422730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2264322727_)))
                     (let ((_hd2264522733_ (##car _e2264422730_))
                           (_tl2264622735_ (##cdr _e2264422730_)))
                       (if (gx#stx-pair? _hd2264522733_)
                           (let ((_e2264722738_ (gx#stx-e _hd2264522733_)))
                             (let ((_hd2264822741_ (##car _e2264722738_))
                                   (_tl2264922743_ (##cdr _e2264722738_)))
                               (if (gx#stx-pair? _hd2264822741_)
                                   (let ((_e2265022746_
                                          (gx#stx-e _hd2264822741_)))
                                     (let ((_hd2265122749_
                                            (##car _e2265022746_))
                                           (_tl2265222751_
                                            (##cdr _e2265022746_)))
                                       (if (gx#stx-pair? _hd2265122749_)
                                           (let ((_e2265322754_
                                                  (gx#stx-e _hd2265122749_)))
                                             (let ((_hd2265422757_
                                                    (##car _e2265322754_))
                                                   (_tl2265522759_
                                                    (##cdr _e2265322754_)))
                                               (if (gx#stx-null?
                                                    _tl2265522759_)
                                                   (if (gx#stx-pair?
                                                        _tl2265222751_)
                                                       (let ((_e2265622762_
                                                              (gx#stx-e
                                                               _tl2265222751_)))
                                                         (let ((_hd2265722765_
                                                                (##car _e2265622762_))
                                                               (_tl2265822767_
                                                                (##cdr _e2265622762_)))
                                                           (if (gx#stx-null?
                                                                _tl2265822767_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2264922743_)
                           (if (gx#stx-pair? _tl2264622735_)
                               (let ((_e2265922770_ (gx#stx-e _tl2264622735_)))
                                 (let ((_hd2266022773_ (##car _e2265922770_))
                                       (_tl2266122775_ (##cdr _e2265922770_)))
                                   (if (gx#stx-null? _tl2266122775_)
                                       (if (gx#stx-null? _tl2264022719_)
                                           (if (gx#stx-null? _tl2263122695_)
                                               (if (gx#stx-pair?
                                                    _tl2262822687_)
                                                   (let ((_e2266222778_
                                                          (gx#stx-e
                                                           _tl2262822687_)))
                                                     (let ((_hd2266322781_
                                                            (##car _e2266222778_))
                                                           (_tl2266422783_
                                                            (##cdr _e2266222778_)))
                                                       (if (gx#stx-null?
                                                            _tl2266422783_)
                                                           ((lambda (_L22786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22787_
                             _L22788_
                             _L22789_
                             _L22790_)
                      (let* ((_get-kws-id22830_
                              (make-symbol
                               (gx#stx-e _L22600_)
                               '"__"
                               (_kw-lambda-dispatch-name22452_
                                (gx#stx-e _L22790_)
                                '"@")))
                             (_main-id22832_
                              (make-symbol
                               (gx#stx-e _L22600_)
                               '"__"
                               (_kw-lambda-dispatch-name22452_
                                (gx#stx-e _L22789_)
                                '"%")))
                             (_g27387_
                              (gx#core-bind-runtime!__0 _get-kws-id22830_))
                             (_g27388_
                              (gx#core-bind-runtime!__0 _main-id22832_))
                             (_new-kw-dispatch22836_
                              (gxc#apply-expression-subst
                               _L22786_
                               _L22790_
                               _get-kws-id22830_))
                             (_new-get-kws22838_
                              (gxc#apply-expression-subst
                               _L22787_
                               _L22789_
                               _main-id22832_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#generate-runtime-binding-id _L22600_)
                           '" => "
                           (gxc#generate-runtime-binding-id _get-kws-id22830_)
                           '" => "
                           (gxc#generate-runtime-binding-id _main-id22832_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id22832_ '())
                                                     (cons _L22788_ '())))
                                         _stx22448_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id22830_
                                                                '())
                                                          (cons _new-get-kws22838_
                                                                '())))
                                              _stx22448_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L22600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch22836_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22448_)
                                                   '()))))
                           _stx22448_))))
                    _hd2266322781_
                    _hd2266022773_
                    _hd2265722765_
                    _hd2265422757_
                    _hd2263622709_)
                   (_g2261622669_ _g2261722672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2261622669_
                                                    _g2261722672_))
                                               (_g2261622669_ _g2261722672_))
                                           (_g2261622669_ _g2261722672_))
                                       (_g2261622669_ _g2261722672_))))
                               (_g2261622669_ _g2261722672_))
                           (_g2261622669_ _g2261722672_))
                       (_g2261622669_ _g2261722672_))))
               (_g2261622669_ _g2261722672_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2261622669_
                                                    _g2261722672_))))
                                           (_g2261622669_ _g2261722672_))))
                                   (_g2261622669_ _g2261722672_))))
                           (_g2261622669_ _g2261722672_))))
                   (_g2261622669_ _g2261722672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2261622669_
                                                    _g2261722672_))))
                                           (_g2261622669_ _g2261722672_))
                                       (_g2261622669_ _g2261722672_))))
                               (_g2261622669_ _g2261722672_))))
                       (_g2261622669_ _g2261722672_))))
               (_g2261622669_ _g2261722672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2261622669_ _g2261722672_))))
                                       (_g2261622669_ _g2261722672_)))))
                           (_g2261522841_ _L22599_))
                         (_g2245622562_ _g2245822565_)))
                   _hd2249922594_
                   _hd2249622586_)
                  (_g2245622562_ _g2245822565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245622562_
                                                   _g2245822565_))
                                              (_g2245622562_ _g2245822565_))))
                                      (_g2245622562_ _g2245822565_))))
                              (_g2245622562_ _g2245822565_))))
                      (_g2245622562_ _g2245822565_))))
               (_g2245423026_
                (lambda (_g2245822847_)
                  (if (gx#stx-pair? _g2245822847_)
                      (let ((_e2247522849_ (gx#stx-e _g2245822847_)))
                        (let ((_hd2247622852_ (##car _e2247522849_))
                              (_tl2247722854_ (##cdr _e2247522849_)))
                          (if (gx#stx-pair? _tl2247722854_)
                              (let ((_e2247822857_ (gx#stx-e _tl2247722854_)))
                                (let ((_hd2247922860_ (##car _e2247822857_))
                                      (_tl2248022862_ (##cdr _e2247822857_)))
                                  (if (gx#stx-pair? _hd2247922860_)
                                      (let ((_e2248122865_
                                             (gx#stx-e _hd2247922860_)))
                                        (let ((_hd2248222868_
                                               (##car _e2248122865_))
                                              (_tl2248322870_
                                               (##cdr _e2248122865_)))
                                          (if (gx#stx-null? _tl2248322870_)
                                              (if (gx#stx-pair? _tl2248022862_)
                                                  (let ((_e2248422873_
                                                         (gx#stx-e
                                                          _tl2248022862_)))
                                                    (let ((_hd2248522876_
                                                           (##car _e2248422873_))
                                                          (_tl2248622878_
                                                           (##cdr _e2248422873_)))
                                                      (if (gx#stx-null?
                                                           _tl2248622878_)
                                                          ((lambda (_L22881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22882_)
                     (if (if (gx#identifier? _L22882_)
                             (gxc#opt-lambda-expr? _L22881_)
                             '#f)
                         (let* ((_g2289822928_
                                 (lambda (_g2289922925_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2289922925_)))
                                (_g2289723023_
                                 (lambda (_g2289922931_)
                                   (if (gx#stx-pair? _g2289922931_)
                                       (let ((_e2290322933_
                                              (gx#stx-e _g2289922931_)))
                                         (let ((_hd2290422936_
                                                (##car _e2290322933_))
                                               (_tl2290522938_
                                                (##cdr _e2290322933_)))
                                           (if (gx#stx-pair? _tl2290522938_)
                                               (let ((_e2290622941_
                                                      (gx#stx-e
                                                       _tl2290522938_)))
                                                 (let ((_hd2290722944_
                                                        (##car _e2290622941_))
                                                       (_tl2290822946_
                                                        (##cdr _e2290622941_)))
                                                   (if (gx#stx-pair?
                                                        _hd2290722944_)
                                                       (let ((_e2290922949_
                                                              (gx#stx-e
                                                               _hd2290722944_)))
                                                         (let ((_hd2291022952_
                                                                (##car _e2290922949_))
                                                               (_tl2291122954_
                                                                (##cdr _e2290922949_)))
                                                           (if (gx#stx-pair?
                                                                _hd2291022952_)
                                                               (let ((_e2291222957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2291022952_)))
                         (let ((_hd2291322960_ (##car _e2291222957_))
                               (_tl2291422962_ (##cdr _e2291222957_)))
                           (if (gx#stx-pair? _hd2291322960_)
                               (let ((_e2291522965_ (gx#stx-e _hd2291322960_)))
                                 (let ((_hd2291622968_ (##car _e2291522965_))
                                       (_tl2291722970_ (##cdr _e2291522965_)))
                                   (if (gx#stx-null? _tl2291722970_)
                                       (if (gx#stx-pair? _tl2291422962_)
                                           (let ((_e2291822973_
                                                  (gx#stx-e _tl2291422962_)))
                                             (let ((_hd2291922976_
                                                    (##car _e2291822973_))
                                                   (_tl2292022978_
                                                    (##cdr _e2291822973_)))
                                               (if (gx#stx-null?
                                                    _tl2292022978_)
                                                   (if (gx#stx-null?
                                                        _tl2291122954_)
                                                       (if (gx#stx-pair?
                                                            _tl2290822946_)
                                                           (let ((_e2292122981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2290822946_)))
                     (let ((_hd2292222984_ (##car _e2292122981_))
                           (_tl2292322986_ (##cdr _e2292122981_)))
                       (if (gx#stx-null? _tl2292322986_)
                           ((lambda (_L22989_ _L22990_ _L22991_)
                              (let* ((_lambda-id23015_
                                      (make-symbol
                                       (gx#stx-e _L22882_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22451_
                                        (gx#stx-e _L22991_))))
                                     (_lambda-id23017_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23015_
                                       (gx#stx-source _stx22448_)))
                                     (_g27389_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23017_))
                                     (_new-case-lambda-expr23020_
                                      (gxc#apply-expression-subst
                                       _L22989_
                                       _L22991_
                                       _lambda-id23017_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L22882_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id23017_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L22990_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22448_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L22882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23020_ '())))
               _stx22448_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22448_))))
                            _hd2292222984_
                            _hd2291922976_
                            _hd2291622968_)
                           (_g2289822928_ _g2289922931_))))
                   (_g2289822928_ _g2289922931_))
               (_g2289822928_ _g2289922931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2289822928_
                                                    _g2289922931_))))
                                           (_g2289822928_ _g2289922931_))
                                       (_g2289822928_ _g2289922931_))))
                               (_g2289822928_ _g2289922931_))))
                       (_g2289822928_ _g2289922931_))))
               (_g2289822928_ _g2289922931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2289822928_ _g2289922931_))))
                                       (_g2289822928_ _g2289922931_)))))
                           (_g2289723023_ _L22881_))
                         (_g2245522844_ _g2245822847_)))
                   _hd2248522876_
                   _hd2248222868_)
                  (_g2245522844_ _g2245822847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245522844_
                                                   _g2245822847_))
                                              (_g2245522844_ _g2245822847_))))
                                      (_g2245522844_ _g2245822847_))))
                              (_g2245522844_ _g2245822847_))))
                      (_g2245522844_ _g2245822847_))))
               (_g2245323151_
                (lambda (_g2245823029_)
                  (if (gx#stx-pair? _g2245823029_)
                      (let ((_e2246123031_ (gx#stx-e _g2245823029_)))
                        (let ((_hd2246223034_ (##car _e2246123031_))
                              (_tl2246323036_ (##cdr _e2246123031_)))
                          (if (gx#stx-pair? _tl2246323036_)
                              (let ((_e2246423039_ (gx#stx-e _tl2246323036_)))
                                (let ((_hd2246523042_ (##car _e2246423039_))
                                      (_tl2246623044_ (##cdr _e2246423039_)))
                                  (if (gx#stx-pair? _hd2246523042_)
                                      (let ((_e2246723047_
                                             (gx#stx-e _hd2246523042_)))
                                        (let ((_hd2246823050_
                                               (##car _e2246723047_))
                                              (_tl2246923052_
                                               (##cdr _e2246723047_)))
                                          (if (gx#stx-null? _tl2246923052_)
                                              (if (gx#stx-pair? _tl2246623044_)
                                                  (let ((_e2247023055_
                                                         (gx#stx-e
                                                          _tl2246623044_)))
                                                    (let ((_hd2247123058_
                                                           (##car _e2247023055_))
                                                          (_tl2247223060_
                                                           (##cdr _e2247023055_)))
                                                      (if (gx#stx-null?
                                                           _tl2247223060_)
                                                          ((lambda (_L23063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23064_)
                     (if (if (gx#identifier? _L23064_)
                             (gxc#case-lambda-expr? _L23063_)
                             '#f)
                         (let* ((_g2308123095_
                                 (lambda (_g2308223092_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2308223092_)))
                                (_g2308023126_
                                 (lambda (_g2308223098_)
                                   (if (gx#stx-pair? _g2308223098_)
                                       (let ((_e2308823100_
                                              (gx#stx-e _g2308223098_)))
                                         (let ((_hd2308923103_
                                                (##car _e2308823100_))
                                               (_tl2309023105_
                                                (##cdr _e2308823100_)))
                                           ((lambda (_L23108_)
                                              (let ((_g27390_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22448_
                                                      _L23064_
                                                      _L23108_)))
                                                (begin
                                                  (let ((_g27391_
                                                         (values-count
                                                          _g27390_)))
                                                    (if (not (fx= _g27391_ 3))
                                                        (error "Context expects 3 values"
                                                               _g27391_)))
                                                  (let ((_ids23118_
                                                         (values-ref
                                                          _g27390_
                                                          0))
                                                        (_impls23119_
                                                         (values-ref
                                                          _g27390_
                                                          1))
                                                        (_clauses23120_
                                                         (values-ref
                                                          _g27390_
                                                          2)))
                                                    (let* ((_g27392_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23118_))
                                                           (_defs23123_
                                                            (map _case-lambda-clause-def22450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23118_
                         _impls23119_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L23064_)
                 '" => "
                 (map gxc#identifier-symbol _ids23118_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23064_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23120_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22448_)
                                     '())
                               _defs23123_))
                 _stx22448_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2309023105_)))
                                       (_g2308123095_ _g2308223098_))))
                                (_g2307923148_
                                 (lambda (_g2308223129_)
                                   (if (gx#stx-pair? _g2308223129_)
                                       (let ((_e2308423131_
                                              (gx#stx-e _g2308223129_)))
                                         (let ((_hd2308523134_
                                                (##car _e2308423131_))
                                               (_tl2308623136_
                                                (##cdr _e2308423131_)))
                                           ((lambda (_L23139_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23139_)
                                                  _stx22448_
                                                  (_g2308023126_
                                                   _g2308223129_)))
                                            _tl2308623136_)))
                                       (_g2308023126_ _g2308223129_)))))
                           (_g2307923148_ _L23063_))
                         (_g2245423026_ _g2245823029_)))
                   _hd2247123058_
                   _hd2246823050_)
                  (_g2245423026_ _g2245823029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245423026_
                                                   _g2245823029_))
                                              (_g2245423026_ _g2245823029_))))
                                      (_g2245423026_ _g2245823029_))))
                              (_g2245423026_ _g2245823029_))))
                      (_g2245423026_ _g2245823029_)))))
          (_g2245323151_ _stx22448_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21384_)
      (letrec* ((_bind-e__2733727338_
                 (lambda (_id22432_ _expr22433_ _compile?22434_)
                   (cons (cons _id22432_ '())
                         (cons (if _compile?22434_
                                   (gxc#compile-e _expr22433_)
                                   _expr22433_)
                               '()))))
                (_bind-e__0__2733927340_
                 (lambda (_id22439_ _expr22440_)
                   (let ((_compile?22442_ '#t))
                     (_bind-e__2733727338_
                      _id22439_
                      _expr22440_
                      _compile?22442_))))
                (_bind-e21386_
                 (lambda _g27394_
                   (let ((_g27393_ (length _g27394_)))
                     (cond ((fx= _g27393_ 2)
                            (apply _bind-e__0__2733927340_ _g27394_))
                           ((fx= _g27393_ 3)
                            (apply _bind-e__2733727338_ _g27394_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27394_))))))
                (_compile-bindings21387_
                 (lambda (_bindings22016_)
                   (let _lp22018_ ((_rest22020_ _bindings22016_)
                                   (_lift122021_ '())
                                   (_lift222022_ '())
                                   (_bind22023_ '()))
                     (let* ((_rest2202422032_ _rest22020_)
                            (_E2202722036_
                             (lambda ()
                               (error '"No clause matching" _rest2202422032_)))
                            (_else2202622040_
                             (lambda ()
                               (values (reverse _lift122021_)
                                       (reverse _lift222022_)
                                       (reverse _bind22023_))))
                            (_K2202822419_
                             (lambda (_rest22043_ _hd22044_)
                               (let* ((_g2204822084_
                                       (lambda (_g2204922081_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2204922081_)))
                                      (_g2204722125_
                                       (lambda (_g2204922087_)
                                         (if (gx#stx-pair? _g2204922087_)
                                             (let ((_e2207422089_
                                                    (gx#stx-e _g2204922087_)))
                                               (let ((_hd2207522092_
                                                      (##car _e2207422089_))
                                                     (_tl2207622094_
                                                      (##cdr _e2207422089_)))
                                                 (if (gx#stx-pair?
                                                      _tl2207622094_)
                                                     (let ((_e2207722097_
                                                            (gx#stx-e
                                                             _tl2207622094_)))
                                                       (let ((_hd2207822100_
                                                              (##car _e2207722097_))
                                                             (_tl2207922102_
                                                              (##cdr _e2207722097_)))
                                                         (if (gx#stx-null?
                                                              _tl2207922102_)
                                                             ((lambda (_L22105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22106_)
                        (_lp22018_
                         _rest22043_
                         _lift122021_
                         _lift222022_
                         (cons (cons _L22106_
                                     (cons (gxc#compile-e _L22105_) '()))
                               _bind22023_)))
                      _hd2207822100_
                      _hd2207522092_)
                     (_g2204822084_ _g2204922087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2204822084_
                                                      _g2204922087_))))
                                             (_g2204822084_ _g2204922087_))))
                                      (_g2204622297_
                                       (lambda (_g2204922128_)
                                         (if (gx#stx-pair? _g2204922128_)
                                             (let ((_e2206322130_
                                                    (gx#stx-e _g2204922128_)))
                                               (let ((_hd2206422133_
                                                      (##car _e2206322130_))
                                                     (_tl2206522135_
                                                      (##cdr _e2206322130_)))
                                                 (if (gx#stx-pair?
                                                      _hd2206422133_)
                                                     (let ((_e2206622138_
                                                            (gx#stx-e
                                                             _hd2206422133_)))
                                                       (let ((_hd2206722141_
                                                              (##car _e2206622138_))
                                                             (_tl2206822143_
                                                              (##cdr _e2206622138_)))
                                                         (if (gx#stx-null?
                                                              _tl2206822143_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2206522135_)
                         (let ((_e2206922146_ (gx#stx-e _tl2206522135_)))
                           (let ((_hd2207022149_ (##car _e2206922146_))
                                 (_tl2207122151_ (##cdr _e2206922146_)))
                             (if (gx#stx-null? _tl2207122151_)
                                 ((lambda (_L22154_ _L22155_)
                                    (if (if (gx#identifier? _L22155_)
                                            (gxc#opt-lambda-expr? _L22154_)
                                            '#f)
                                        (let* ((_g2216922199_
                                                (lambda (_g2217022196_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2217022196_)))
                                               (_g2216822294_
                                                (lambda (_g2217022202_)
                                                  (if (gx#stx-pair?
                                                       _g2217022202_)
                                                      (let ((_e2217422204_
                                                             (gx#stx-e
                                                              _g2217022202_)))
                                                        (let ((_hd2217522207_
                                                               (##car _e2217422204_))
                                                              (_tl2217622209_
                                                               (##cdr _e2217422204_)))
                                                          (if (gx#stx-pair?
                                                               _tl2217622209_)
                                                              (let ((_e2217722212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2217622209_)))
                        (let ((_hd2217822215_ (##car _e2217722212_))
                              (_tl2217922217_ (##cdr _e2217722212_)))
                          (if (gx#stx-pair? _hd2217822215_)
                              (let ((_e2218022220_ (gx#stx-e _hd2217822215_)))
                                (let ((_hd2218122223_ (##car _e2218022220_))
                                      (_tl2218222225_ (##cdr _e2218022220_)))
                                  (if (gx#stx-pair? _hd2218122223_)
                                      (let ((_e2218322228_
                                             (gx#stx-e _hd2218122223_)))
                                        (let ((_hd2218422231_
                                               (##car _e2218322228_))
                                              (_tl2218522233_
                                               (##cdr _e2218322228_)))
                                          (if (gx#stx-pair? _hd2218422231_)
                                              (let ((_e2218622236_
                                                     (gx#stx-e
                                                      _hd2218422231_)))
                                                (let ((_hd2218722239_
                                                       (##car _e2218622236_))
                                                      (_tl2218822241_
                                                       (##cdr _e2218622236_)))
                                                  (if (gx#stx-null?
                                                       _tl2218822241_)
                                                      (if (gx#stx-pair?
                                                           _tl2218522233_)
                                                          (let ((_e2218922244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2218522233_)))
                    (let ((_hd2219022247_ (##car _e2218922244_))
                          (_tl2219122249_ (##cdr _e2218922244_)))
                      (if (gx#stx-null? _tl2219122249_)
                          (if (gx#stx-null? _tl2218222225_)
                              (if (gx#stx-pair? _tl2217922217_)
                                  (let ((_e2219222252_
                                         (gx#stx-e _tl2217922217_)))
                                    (let ((_hd2219322255_
                                           (##car _e2219222252_))
                                          (_tl2219422257_
                                           (##cdr _e2219222252_)))
                                      (if (gx#stx-null? _tl2219422257_)
                                          ((lambda (_L22260_ _L22261_ _L22262_)
                                             (let* ((_lambda-id22286_
                                                     (make-symbol
                                                      (gx#stx-e _L22155_)
                                                      (gensym '__)))
                                                    (_lambda-id22288_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22286_
                                                      (gx#stx-source
                                                       _stx21384_)))
                                                    (_g27395_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22288_))
                                                    (_new-case-lambda-expr22291_
                                                     (gxc#apply-expression-subst
                                                      _L22260_
                                                      _L22262_
                                                      _lambda-id22288_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L22155_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id22288_))
                                                 (_lp22018_
                                                  (cons (_bind-e__2733727338_
                                                         _L22155_
                                                         _new-case-lambda-expr22291_
                                                         '#f)
                                                        _rest22043_)
                                                  (cons (_bind-e__0__2733927340_
                                                         _lambda-id22288_
                                                         _L22261_)
                                                        _lift122021_)
                                                  _lift222022_
                                                  _bind22023_))))
                                           _hd2219322255_
                                           _hd2219022247_
                                           _hd2218722239_)
                                          (_g2216922199_ _g2217022202_))))
                                  (_g2216922199_ _g2217022202_))
                              (_g2216922199_ _g2217022202_))
                          (_g2216922199_ _g2217022202_))))
                  (_g2216922199_ _g2217022202_))
              (_g2216922199_ _g2217022202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2216922199_ _g2217022202_))))
                                      (_g2216922199_ _g2217022202_))))
                              (_g2216922199_ _g2217022202_))))
                      (_g2216922199_ _g2217022202_))))
              (_g2216922199_ _g2217022202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2216822294_ _L22154_))
                                        (_g2204722125_ _g2204922128_)))
                                  _hd2207022149_
                                  _hd2206722141_)
                                 (_g2204722125_ _g2204922128_))))
                         (_g2204722125_ _g2204922128_))
                     (_g2204722125_ _g2204922128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2204722125_
                                                      _g2204922128_))))
                                             (_g2204722125_ _g2204922128_))))
                                      (_g2204522416_
                                       (lambda (_g2204922300_)
                                         (if (gx#stx-pair? _g2204922300_)
                                             (let ((_e2205222302_
                                                    (gx#stx-e _g2204922300_)))
                                               (let ((_hd2205322305_
                                                      (##car _e2205222302_))
                                                     (_tl2205422307_
                                                      (##cdr _e2205222302_)))
                                                 (if (gx#stx-pair?
                                                      _hd2205322305_)
                                                     (let ((_e2205522310_
                                                            (gx#stx-e
                                                             _hd2205322305_)))
                                                       (let ((_hd2205622313_
                                                              (##car _e2205522310_))
                                                             (_tl2205722315_
                                                              (##cdr _e2205522310_)))
                                                         (if (gx#stx-null?
                                                              _tl2205722315_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2205422307_)
                         (let ((_e2205822318_ (gx#stx-e _tl2205422307_)))
                           (let ((_hd2205922321_ (##car _e2205822318_))
                                 (_tl2206022323_ (##cdr _e2205822318_)))
                             (if (gx#stx-null? _tl2206022323_)
                                 ((lambda (_L22326_ _L22327_)
                                    (if (if (gx#identifier? _L22327_)
                                            (gxc#case-lambda-expr? _L22326_)
                                            '#f)
                                        (let* ((_g2234222356_
                                                (lambda (_g2234322353_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2234322353_)))
                                               (_g2234122391_
                                                (lambda (_g2234322359_)
                                                  (if (gx#stx-pair?
                                                       _g2234322359_)
                                                      (let ((_e2234922361_
                                                             (gx#stx-e
                                                              _g2234322359_)))
                                                        (let ((_hd2235022364_
                                                               (##car _e2234922361_))
                                                              (_tl2235122366_
                                                               (##cdr _e2234922361_)))
                                                          ((lambda (_L22369_)
                                                             (let ((_g27396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21384_
                             _L22327_
                             _L22369_
                             '#t)))
                       (begin
                         (let ((_g27397_ (values-count _g27396_)))
                           (if (not (fx= _g27397_ 3))
                               (error "Context expects 3 values" _g27397_)))
                         (let ((_ids22379_ (values-ref _g27396_ 0))
                               (_impls22380_ (values-ref _g27396_ 1))
                               (_clauses22381_ (values-ref _g27396_ 2)))
                           (let* ((_g27398_
                                   (for-each gx#core-bind-runtime! _ids22379_))
                                  (_xbind22384_
                                   (map _bind-e21386_ _ids22379_ _impls22380_))
                                  (_expr*22386_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22381_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22388_
                                   (_bind-e__2733727338_
                                    _L22327_
                                    _expr*22386_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L22327_)
                                '" => "
                                (map gxc#identifier-symbol _ids22379_))
                               (_lp22018_
                                _rest22043_
                                _lift122021_
                                (foldl1 cons _lift222022_ _xbind22384_)
                                (cons _bind*22388_ _bind22023_))))))))
                   _tl2235122366_)))
              (_g2234222356_ _g2234322359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2234022413_
                                                (lambda (_g2234322394_)
                                                  (if (gx#stx-pair?
                                                       _g2234322394_)
                                                      (let ((_e2234522396_
                                                             (gx#stx-e
                                                              _g2234322394_)))
                                                        (let ((_hd2234622399_
                                                               (##car _e2234522396_))
                                                              (_tl2234722401_
                                                               (##cdr _e2234522396_)))
                                                          ((lambda (_L22404_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22404_)
                         (_lp22018_
                          _rest22043_
                          _lift122021_
                          _lift222022_
                          (cons (_bind-e__2733727338_ _L22327_ _L22326_ '#f)
                                _bind22023_))
                         (_g2234122391_ _g2234322394_)))
                   _tl2234722401_)))
              (_g2234122391_ _g2234322394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2234022413_ _L22326_))
                                        (_g2204622297_ _g2204922300_)))
                                  _hd2205922321_
                                  _hd2205622313_)
                                 (_g2204622297_ _g2204922300_))))
                         (_g2204622297_ _g2204922300_))
                     (_g2204622297_ _g2204922300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2204622297_
                                                      _g2204922300_))))
                                             (_g2204622297_ _g2204922300_)))))
                                 (_g2204522416_ _hd22044_)))))
                       (if (##pair? _rest2202422032_)
                           (let ((_hd2202922422_ (##car _rest2202422032_))
                                 (_tl2203022424_ (##cdr _rest2202422032_)))
                             (let* ((_hd22427_ _hd2202922422_)
                                    (_rest22429_ _tl2203022424_))
                               (_K2202822419_ _rest22429_ _hd22427_)))
                           (_else2202622040_))))))
                (_lift-kw-lambda?21388_
                 (lambda (_bind21940_)
                   (let* ((_g2194321960_
                           (lambda (_g2194421957_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2194421957_)))
                          (_g2194221967_
                           (lambda (_g2194421963_) ((lambda () '#f))))
                          (_g2194122013_
                           (lambda (_g2194421970_)
                             (if (gx#stx-pair? _g2194421970_)
                                 (let ((_e2194721972_
                                        (gx#stx-e _g2194421970_)))
                                   (let ((_hd2194821975_ (##car _e2194721972_))
                                         (_tl2194921977_
                                          (##cdr _e2194721972_)))
                                     (if (gx#stx-pair? _hd2194821975_)
                                         (let ((_e2195021980_
                                                (gx#stx-e _hd2194821975_)))
                                           (let ((_hd2195121983_
                                                  (##car _e2195021980_))
                                                 (_tl2195221985_
                                                  (##cdr _e2195021980_)))
                                             (if (gx#stx-null? _tl2195221985_)
                                                 (if (gx#stx-pair?
                                                      _tl2194921977_)
                                                     (let ((_e2195321988_
                                                            (gx#stx-e
                                                             _tl2194921977_)))
                                                       (let ((_hd2195421991_
                                                              (##car _e2195321988_))
                                                             (_tl2195521993_
                                                              (##cdr _e2195321988_)))
                                                         (if (gx#stx-null?
                                                              _tl2195521993_)
                                                             ((lambda (_L21996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21997_)
                        (if (gx#identifier? _L21997_)
                            (gxc#kw-lambda-expr? _L21996_)
                            '#f))
                      _hd2195421991_
                      _hd2195121983_)
                     (_g2194221967_ _g2194421970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2194221967_
                                                      _g2194421970_))
                                                 (_g2194221967_
                                                  _g2194421970_))))
                                         (_g2194221967_ _g2194421970_))))
                                 (_g2194221967_ _g2194421970_)))))
                     (_g2194122013_ _bind21940_))))
                (_lift-kw-lambda-bindings21389_
                 (lambda (_bindings21556_)
                   (let _lp21558_ ((_rest21560_ _bindings21556_)
                                   (_lift121561_ '())
                                   (_lift221562_ '())
                                   (_bind21563_ '()))
                     (let* ((_rest2156421572_ _rest21560_)
                            (_E2156721576_
                             (lambda ()
                               (error '"No clause matching" _rest2156421572_)))
                            (_else2156621580_
                             (lambda ()
                               (values (reverse _lift121561_)
                                       (reverse _lift221562_)
                                       (reverse _bind21563_))))
                            (_K2156821928_
                             (lambda (_rest21583_ _hd21584_)
                               (let* ((_g2158721612_
                                       (lambda (_g2158821609_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2158821609_)))
                                      (_g2158621653_
                                       (lambda (_g2158821615_)
                                         (if (gx#stx-pair? _g2158821615_)
                                             (let ((_e2160221617_
                                                    (gx#stx-e _g2158821615_)))
                                               (let ((_hd2160321620_
                                                      (##car _e2160221617_))
                                                     (_tl2160421622_
                                                      (##cdr _e2160221617_)))
                                                 (if (gx#stx-pair?
                                                      _tl2160421622_)
                                                     (let ((_e2160521625_
                                                            (gx#stx-e
                                                             _tl2160421622_)))
                                                       (let ((_hd2160621628_
                                                              (##car _e2160521625_))
                                                             (_tl2160721630_
                                                              (##cdr _e2160521625_)))
                                                         (if (gx#stx-null?
                                                              _tl2160721630_)
                                                             ((lambda (_L21633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21634_)
                        (_lp21558_
                         _rest21583_
                         _lift121561_
                         _lift221562_
                         (cons (cons _L21634_ (cons _L21633_ '()))
                               _bind21563_)))
                      _hd2160621628_
                      _hd2160321620_)
                     (_g2158721612_ _g2158821615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2158721612_
                                                      _g2158821615_))))
                                             (_g2158721612_ _g2158821615_))))
                                      (_g2158521925_
                                       (lambda (_g2158821656_)
                                         (if (gx#stx-pair? _g2158821656_)
                                             (let ((_e2159121658_
                                                    (gx#stx-e _g2158821656_)))
                                               (let ((_hd2159221661_
                                                      (##car _e2159121658_))
                                                     (_tl2159321663_
                                                      (##cdr _e2159121658_)))
                                                 (if (gx#stx-pair?
                                                      _hd2159221661_)
                                                     (let ((_e2159421666_
                                                            (gx#stx-e
                                                             _hd2159221661_)))
                                                       (let ((_hd2159521669_
                                                              (##car _e2159421666_))
                                                             (_tl2159621671_
                                                              (##cdr _e2159421666_)))
                                                         (if (gx#stx-null?
                                                              _tl2159621671_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2159321663_)
                         (let ((_e2159721674_ (gx#stx-e _tl2159321663_)))
                           (let ((_hd2159821677_ (##car _e2159721674_))
                                 (_tl2159921679_ (##cdr _e2159721674_)))
                             (if (gx#stx-null? _tl2159921679_)
                                 ((lambda (_L21682_ _L21683_)
                                    (if (if (gx#identifier? _L21683_)
                                            (gxc#kw-lambda-expr? _L21682_)
                                            '#f)
                                        (let* ((_g2169721750_
                                                (lambda (_g2169821747_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2169821747_)))
                                               (_g2169621922_
                                                (lambda (_g2169821753_)
                                                  (if (gx#stx-pair?
                                                       _g2169821753_)
                                                      (let ((_e2170421755_
                                                             (gx#stx-e
                                                              _g2169821753_)))
                                                        (let ((_hd2170521758_
                                                               (##car _e2170421755_))
                                                              (_tl2170621760_
                                                               (##cdr _e2170421755_)))
                                                          (if (gx#stx-pair?
                                                               _tl2170621760_)
                                                              (let ((_e2170721763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2170621760_)))
                        (let ((_hd2170821766_ (##car _e2170721763_))
                              (_tl2170921768_ (##cdr _e2170721763_)))
                          (if (gx#stx-pair? _hd2170821766_)
                              (let ((_e2171021771_ (gx#stx-e _hd2170821766_)))
                                (let ((_hd2171121774_ (##car _e2171021771_))
                                      (_tl2171221776_ (##cdr _e2171021771_)))
                                  (if (gx#stx-pair? _hd2171121774_)
                                      (let ((_e2171321779_
                                             (gx#stx-e _hd2171121774_)))
                                        (let ((_hd2171421782_
                                               (##car _e2171321779_))
                                              (_tl2171521784_
                                               (##cdr _e2171321779_)))
                                          (if (gx#stx-pair? _hd2171421782_)
                                              (let ((_e2171621787_
                                                     (gx#stx-e
                                                      _hd2171421782_)))
                                                (let ((_hd2171721790_
                                                       (##car _e2171621787_))
                                                      (_tl2171821792_
                                                       (##cdr _e2171621787_)))
                                                  (if (gx#stx-null?
                                                       _tl2171821792_)
                                                      (if (gx#stx-pair?
                                                           _tl2171521784_)
                                                          (let ((_e2171921795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2171521784_)))
                    (let ((_hd2172021798_ (##car _e2171921795_))
                          (_tl2172121800_ (##cdr _e2171921795_)))
                      (if (gx#stx-pair? _hd2172021798_)
                          (let ((_e2172221803_ (gx#stx-e _hd2172021798_)))
                            (let ((_hd2172321806_ (##car _e2172221803_))
                                  (_tl2172421808_ (##cdr _e2172221803_)))
                              (if (gx#stx-pair? _tl2172421808_)
                                  (let ((_e2172521811_
                                         (gx#stx-e _tl2172421808_)))
                                    (let ((_hd2172621814_
                                           (##car _e2172521811_))
                                          (_tl2172721816_
                                           (##cdr _e2172521811_)))
                                      (if (gx#stx-pair? _hd2172621814_)
                                          (let ((_e2172821819_
                                                 (gx#stx-e _hd2172621814_)))
                                            (let ((_hd2172921822_
                                                   (##car _e2172821819_))
                                                  (_tl2173021824_
                                                   (##cdr _e2172821819_)))
                                              (if (gx#stx-pair? _hd2172921822_)
                                                  (let ((_e2173121827_
                                                         (gx#stx-e
                                                          _hd2172921822_)))
                                                    (let ((_hd2173221830_
                                                           (##car _e2173121827_))
                                                          (_tl2173321832_
                                                           (##cdr _e2173121827_)))
                                                      (if (gx#stx-pair?
                                                           _hd2173221830_)
                                                          (let ((_e2173421835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2173221830_)))
                    (let ((_hd2173521838_ (##car _e2173421835_))
                          (_tl2173621840_ (##cdr _e2173421835_)))
                      (if (gx#stx-null? _tl2173621840_)
                          (if (gx#stx-pair? _tl2173321832_)
                              (let ((_e2173721843_ (gx#stx-e _tl2173321832_)))
                                (let ((_hd2173821846_ (##car _e2173721843_))
                                      (_tl2173921848_ (##cdr _e2173721843_)))
                                  (if (gx#stx-null? _tl2173921848_)
                                      (if (gx#stx-null? _tl2173021824_)
                                          (if (gx#stx-pair? _tl2172721816_)
                                              (let ((_e2174021851_
                                                     (gx#stx-e
                                                      _tl2172721816_)))
                                                (let ((_hd2174121854_
                                                       (##car _e2174021851_))
                                                      (_tl2174221856_
                                                       (##cdr _e2174021851_)))
                                                  (if (gx#stx-null?
                                                       _tl2174221856_)
                                                      (if (gx#stx-null?
                                                           _tl2172121800_)
                                                          (if (gx#stx-null?
                                                               _tl2171221776_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2170921768_)
                          (let ((_e2174321859_ (gx#stx-e _tl2170921768_)))
                            (let ((_hd2174421862_ (##car _e2174321859_))
                                  (_tl2174521864_ (##cdr _e2174321859_)))
                              (if (gx#stx-null? _tl2174521864_)
                                  ((lambda (_L21867_
                                            _L21868_
                                            _L21869_
                                            _L21870_
                                            _L21871_)
                                     (let* ((_get-kws-id21911_
                                             (make-symbol
                                              (gx#stx-e _L21683_)
                                              (gensym '__)))
                                            (_main-id21913_
                                             (make-symbol
                                              (gx#stx-e _L21683_)
                                              (gensym '__)))
                                            (_g27399_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21911_))
                                            (_g27400_
                                             (gx#core-bind-runtime!__0
                                              _main-id21913_))
                                            (_new-kw-dispatch21917_
                                             (gxc#apply-expression-subst
                                              _L21867_
                                              _L21871_
                                              _get-kws-id21911_))
                                            (_new-get-kws21919_
                                             (gxc#apply-expression-subst
                                              _L21868_
                                              _L21870_
                                              _main-id21913_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L21683_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21911_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21913_))
                                         (_lp21558_
                                          _rest21583_
                                          (cons (_bind-e__2733727338_
                                                 _main-id21913_
                                                 _L21869_
                                                 '#f)
                                                _lift121561_)
                                          (cons (_bind-e__2733727338_
                                                 _get-kws-id21911_
                                                 _new-get-kws21919_
                                                 '#f)
                                                _lift221562_)
                                          (cons (_bind-e__2733727338_
                                                 _L21683_
                                                 _new-kw-dispatch21917_
                                                 '#f)
                                                _bind21563_)))))
                                   _hd2174421862_
                                   _hd2174121854_
                                   _hd2173821846_
                                   _hd2173521838_
                                   _hd2171721790_)
                                  (_g2169721750_ _g2169821753_))))
                          (_g2169721750_ _g2169821753_))
                      (_g2169721750_ _g2169821753_))
                  (_g2169721750_ _g2169821753_))
              (_g2169721750_ _g2169821753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169721750_ _g2169821753_))
                                          (_g2169721750_ _g2169821753_))
                                      (_g2169721750_ _g2169821753_))))
                              (_g2169721750_ _g2169821753_))
                          (_g2169721750_ _g2169821753_))))
                  (_g2169721750_ _g2169821753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2169721750_
                                                   _g2169821753_))))
                                          (_g2169721750_ _g2169821753_))))
                                  (_g2169721750_ _g2169821753_))))
                          (_g2169721750_ _g2169821753_))))
                  (_g2169721750_ _g2169821753_))
              (_g2169721750_ _g2169821753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169721750_ _g2169821753_))))
                                      (_g2169721750_ _g2169821753_))))
                              (_g2169721750_ _g2169821753_))))
                      (_g2169721750_ _g2169821753_))))
              (_g2169721750_ _g2169821753_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2169621922_ _L21682_))
                                        (_g2158621653_ _g2158821656_)))
                                  _hd2159821677_
                                  _hd2159521669_)
                                 (_g2158621653_ _g2158821656_))))
                         (_g2158621653_ _g2158821656_))
                     (_g2158621653_ _g2158821656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2158621653_
                                                      _g2158821656_))))
                                             (_g2158621653_ _g2158821656_)))))
                                 (_g2158521925_ _hd21584_)))))
                       (if (##pair? _rest2156421572_)
                           (let ((_hd2156921931_ (##car _rest2156421572_))
                                 (_tl2157021933_ (##cdr _rest2156421572_)))
                             (let* ((_hd21936_ _hd2156921931_)
                                    (_rest21938_ _tl2157021933_))
                               (_K2156821928_ _rest21938_ _hd21936_)))
                           (_else2156621580_)))))))
        (let* ((_g2139221418_
                (lambda (_g2139321415_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2139321415_)))
               (_g2139121425_
                (lambda (_g2139321421_)
                  ((lambda () (gxc#xform-let-values% _stx21384_)))))
               (_g2139021553_
                (lambda (_g2139321428_)
                  (if (gx#stx-pair? _g2139321428_)
                      (let ((_e2139621430_ (gx#stx-e _g2139321428_)))
                        (let ((_hd2139721433_ (##car _e2139621430_))
                              (_tl2139821435_ (##cdr _e2139621430_)))
                          (if (gx#stx-pair? _tl2139821435_)
                              (let ((_e2139921438_ (gx#stx-e _tl2139821435_)))
                                (let ((_hd2140021441_ (##car _e2139921438_))
                                      (_tl2140121443_ (##cdr _e2139921438_)))
                                  (if (gx#stx-pair/null? _hd2140021441_)
                                      (if (fx>= (gx#stx-length _hd2140021441_)
                                                '0)
                                          (let ((_g27401_
                                                 (gx#syntax-split-splice
                                                  _hd2140021441_
                                                  '0)))
                                            (begin
                                              (let ((_g27402_
                                                     (values-count _g27401_)))
                                                (if (not (fx= _g27402_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27402_)))
                                              (let ((_target2140221446_
                                                     (values-ref _g27401_ 0))
                                                    (_tl2140421448_
                                                     (values-ref _g27401_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2140421448_)
                                                    (letrec ((_loop2140521451_
                                                              (lambda (_hd2140321454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2140921456_)
                        (if (gx#stx-pair? _hd2140321454_)
                            (let ((_e2140621459_ (gx#stx-e _hd2140321454_)))
                              (let ((_lp-hd2140721462_ (##car _e2140621459_))
                                    (_lp-tl2140821464_ (##cdr _e2140621459_)))
                                (_loop2140521451_
                                 _lp-tl2140821464_
                                 (cons _lp-hd2140721462_ _bind2140921456_))))
                            (let ((_bind2141021467_
                                   (reverse _bind2140921456_)))
                              (if (gx#stx-pair? _tl2140121443_)
                                  (let ((_e2141121470_
                                         (gx#stx-e _tl2140121443_)))
                                    (let ((_hd2141221473_
                                           (##car _e2141121470_))
                                          (_tl2141321475_
                                           (##cdr _e2141121470_)))
                                      (if (gx#stx-null? _tl2141321475_)
                                          ((lambda (_L21478_ _L21479_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2149921502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2150021504_)
                             (cons _g2149921502_ _g2150021504_))
                           '()
                           _L21479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?21388_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2150721510_ _g2150821512_)
                                    (cons _g2150721510_ _g2150821512_))
                                  '()
                                  _L21479_)))
                (let ((_g27403_
                       (_lift-kw-lambda-bindings21389_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2151421517_ _g2151521519_)
                                    (cons _g2151421517_ _g2151521519_))
                                  '()
                                  _L21479_)))))
                  (begin
                    (let ((_g27404_ (values-count _g27403_)))
                      (if (not (fx= _g27404_ 3))
                          (error "Context expects 3 values" _g27404_)))
                    (let ((_lift121522_ (values-ref _g27403_ 0))
                          (_lift221523_ (values-ref _g27403_ 1))
                          (_hd21524_ (values-ref _g27403_ 2)))
                      (let* ((_expr21526_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21524_ (cons _L21478_ '())))
                               _stx21384_))
                             (_expr21528_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift221523_
                                           (cons _expr21526_ '())))
                               _stx21384_))
                             (_expr21530_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift121522_
                                           (cons _expr21528_ '())))
                               _stx21384_)))
                        (gxc#lift-top-lambda-let-values% _expr21530_)))))
                (let ((_g27405_
                       (_compile-bindings21387_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2153221535_ _g2153321537_)
                                    (cons _g2153221535_ _g2153321537_))
                                  '()
                                  _L21479_)))))
                  (begin
                    (let ((_g27406_ (values-count _g27405_)))
                      (if (not (fx= _g27406_ 3))
                          (error "Context expects 3 values" _g27406_)))
                    (let ((_lift121540_ (values-ref _g27405_ 0))
                          (_lift221541_ (values-ref _g27405_ 1))
                          (_hd21542_ (values-ref _g27405_ 2)))
                      (let* ((_body21544_ (gxc#compile-e _L21478_))
                             (_expr21546_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21542_ (cons _body21544_ '())))
                               _stx21384_))
                             (_expr21548_
                              (if (null? _lift221541_)
                                  _expr21546_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift221541_
                                               (cons _expr21546_ '())))
                                   _stx21384_)))
                             (_expr21550_
                              (if (null? _lift121540_)
                                  _expr21548_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift121540_
                                               (cons _expr21548_ '())))
                                   _stx21384_))))
                        _expr21550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27347
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27347)
                                                      __obj27347)))
                                                 (_g2139121425_
                                                  _g2139321428_)))
                                           _hd2141221473_
                                           _bind2141021467_)
                                          (_g2139121425_ _g2139321428_))))
                                  (_g2139121425_ _g2139321428_)))))))
              (_loop2140521451_ _target2140221446_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2139121425_
                                                     _g2139321428_)))))
                                          (_g2139121425_ _g2139321428_))
                                      (_g2139121425_ _g2139321428_))))
                              (_g2139121425_ _g2139321428_))))
                      (_g2139121425_ _g2139321428_)))))
          (_g2139021553_ _stx21384_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx20532_)
      (letrec* ((_bind-e__2734227343_
                 (lambda (_id21368_ _expr21369_ _compile?21370_)
                   (cons (cons _id21368_ '())
                         (cons (if _compile?21370_
                                   (gxc#compile-e _expr21369_)
                                   _expr21369_)
                               '()))))
                (_bind-e__0__2734427345_
                 (lambda (_id21375_ _expr21376_)
                   (let ((_compile?21378_ '#t))
                     (_bind-e__2734227343_
                      _id21375_
                      _expr21376_
                      _compile?21378_))))
                (_bind-e20534_
                 (lambda _g27408_
                   (let ((_g27407_ (length _g27408_)))
                     (cond ((fx= _g27407_ 2)
                            (apply _bind-e__0__2734427345_ _g27408_))
                           ((fx= _g27407_ 3)
                            (apply _bind-e__2734227343_ _g27408_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27408_))))))
                (_compile-bindings20535_
                 (lambda (_rest20670_)
                   (let _lp20672_ ((_rest20674_ _rest20670_) (_bind20675_ '()))
                     (let* ((_rest2067620684_ _rest20674_)
                            (_E2067920688_
                             (lambda ()
                               (error '"No clause matching" _rest2067620684_)))
                            (_else2067820692_
                             (lambda () (reverse _bind20675_)))
                            (_K2068021355_
                             (lambda (_rest20695_ _hd20696_)
                               (let* ((_g2070120748_
                                       (lambda (_g2070220745_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2070220745_)))
                                      (_g2070020789_
                                       (lambda (_g2070220751_)
                                         (if (gx#stx-pair? _g2070220751_)
                                             (let ((_e2073820753_
                                                    (gx#stx-e _g2070220751_)))
                                               (let ((_hd2073920756_
                                                      (##car _e2073820753_))
                                                     (_tl2074020758_
                                                      (##cdr _e2073820753_)))
                                                 (if (gx#stx-pair?
                                                      _tl2074020758_)
                                                     (let ((_e2074120761_
                                                            (gx#stx-e
                                                             _tl2074020758_)))
                                                       (let ((_hd2074220764_
                                                              (##car _e2074120761_))
                                                             (_tl2074320766_
                                                              (##cdr _e2074120761_)))
                                                         (if (gx#stx-null?
                                                              _tl2074320766_)
                                                             ((lambda (_L20769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20770_)
                        (_lp20672_
                         _rest20695_
                         (cons (cons _L20770_
                                     (cons (gxc#compile-e _L20769_) '()))
                               _bind20675_)))
                      _hd2074220764_
                      _hd2073920756_)
                     (_g2070120748_ _g2070220751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2070120748_
                                                      _g2070220751_))))
                                             (_g2070120748_ _g2070220751_))))
                                      (_g2069921061_
                                       (lambda (_g2070220792_)
                                         (if (gx#stx-pair? _g2070220792_)
                                             (let ((_e2072720794_
                                                    (gx#stx-e _g2070220792_)))
                                               (let ((_hd2072820797_
                                                      (##car _e2072720794_))
                                                     (_tl2072920799_
                                                      (##cdr _e2072720794_)))
                                                 (if (gx#stx-pair?
                                                      _hd2072820797_)
                                                     (let ((_e2073020802_
                                                            (gx#stx-e
                                                             _hd2072820797_)))
                                                       (let ((_hd2073120805_
                                                              (##car _e2073020802_))
                                                             (_tl2073220807_
                                                              (##cdr _e2073020802_)))
                                                         (if (gx#stx-null?
                                                              _tl2073220807_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2072920799_)
                         (let ((_e2073320810_ (gx#stx-e _tl2072920799_)))
                           (let ((_hd2073420813_ (##car _e2073320810_))
                                 (_tl2073520815_ (##cdr _e2073320810_)))
                             (if (gx#stx-null? _tl2073520815_)
                                 ((lambda (_L20818_ _L20819_)
                                    (if (if (gx#identifier? _L20819_)
                                            (gxc#kw-lambda-expr? _L20818_)
                                            '#f)
                                        (let* ((_g2083320886_
                                                (lambda (_g2083420883_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2083420883_)))
                                               (_g2083221058_
                                                (lambda (_g2083420889_)
                                                  (if (gx#stx-pair?
                                                       _g2083420889_)
                                                      (let ((_e2084020891_
                                                             (gx#stx-e
                                                              _g2083420889_)))
                                                        (let ((_hd2084120894_
                                                               (##car _e2084020891_))
                                                              (_tl2084220896_
                                                               (##cdr _e2084020891_)))
                                                          (if (gx#stx-pair?
                                                               _tl2084220896_)
                                                              (let ((_e2084320899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2084220896_)))
                        (let ((_hd2084420902_ (##car _e2084320899_))
                              (_tl2084520904_ (##cdr _e2084320899_)))
                          (if (gx#stx-pair? _hd2084420902_)
                              (let ((_e2084620907_ (gx#stx-e _hd2084420902_)))
                                (let ((_hd2084720910_ (##car _e2084620907_))
                                      (_tl2084820912_ (##cdr _e2084620907_)))
                                  (if (gx#stx-pair? _hd2084720910_)
                                      (let ((_e2084920915_
                                             (gx#stx-e _hd2084720910_)))
                                        (let ((_hd2085020918_
                                               (##car _e2084920915_))
                                              (_tl2085120920_
                                               (##cdr _e2084920915_)))
                                          (if (gx#stx-pair? _hd2085020918_)
                                              (let ((_e2085220923_
                                                     (gx#stx-e
                                                      _hd2085020918_)))
                                                (let ((_hd2085320926_
                                                       (##car _e2085220923_))
                                                      (_tl2085420928_
                                                       (##cdr _e2085220923_)))
                                                  (if (gx#stx-null?
                                                       _tl2085420928_)
                                                      (if (gx#stx-pair?
                                                           _tl2085120920_)
                                                          (let ((_e2085520931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2085120920_)))
                    (let ((_hd2085620934_ (##car _e2085520931_))
                          (_tl2085720936_ (##cdr _e2085520931_)))
                      (if (gx#stx-pair? _hd2085620934_)
                          (let ((_e2085820939_ (gx#stx-e _hd2085620934_)))
                            (let ((_hd2085920942_ (##car _e2085820939_))
                                  (_tl2086020944_ (##cdr _e2085820939_)))
                              (if (gx#stx-pair? _tl2086020944_)
                                  (let ((_e2086120947_
                                         (gx#stx-e _tl2086020944_)))
                                    (let ((_hd2086220950_
                                           (##car _e2086120947_))
                                          (_tl2086320952_
                                           (##cdr _e2086120947_)))
                                      (if (gx#stx-pair? _hd2086220950_)
                                          (let ((_e2086420955_
                                                 (gx#stx-e _hd2086220950_)))
                                            (let ((_hd2086520958_
                                                   (##car _e2086420955_))
                                                  (_tl2086620960_
                                                   (##cdr _e2086420955_)))
                                              (if (gx#stx-pair? _hd2086520958_)
                                                  (let ((_e2086720963_
                                                         (gx#stx-e
                                                          _hd2086520958_)))
                                                    (let ((_hd2086820966_
                                                           (##car _e2086720963_))
                                                          (_tl2086920968_
                                                           (##cdr _e2086720963_)))
                                                      (if (gx#stx-pair?
                                                           _hd2086820966_)
                                                          (let ((_e2087020971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2086820966_)))
                    (let ((_hd2087120974_ (##car _e2087020971_))
                          (_tl2087220976_ (##cdr _e2087020971_)))
                      (if (gx#stx-null? _tl2087220976_)
                          (if (gx#stx-pair? _tl2086920968_)
                              (let ((_e2087320979_ (gx#stx-e _tl2086920968_)))
                                (let ((_hd2087420982_ (##car _e2087320979_))
                                      (_tl2087520984_ (##cdr _e2087320979_)))
                                  (if (gx#stx-null? _tl2087520984_)
                                      (if (gx#stx-null? _tl2086620960_)
                                          (if (gx#stx-pair? _tl2086320952_)
                                              (let ((_e2087620987_
                                                     (gx#stx-e
                                                      _tl2086320952_)))
                                                (let ((_hd2087720990_
                                                       (##car _e2087620987_))
                                                      (_tl2087820992_
                                                       (##cdr _e2087620987_)))
                                                  (if (gx#stx-null?
                                                       _tl2087820992_)
                                                      (if (gx#stx-null?
                                                           _tl2085720936_)
                                                          (if (gx#stx-null?
                                                               _tl2084820912_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2084520904_)
                          (let ((_e2087920995_ (gx#stx-e _tl2084520904_)))
                            (let ((_hd2088020998_ (##car _e2087920995_))
                                  (_tl2088121000_ (##cdr _e2087920995_)))
                              (if (gx#stx-null? _tl2088121000_)
                                  ((lambda (_L21003_
                                            _L21004_
                                            _L21005_
                                            _L21006_
                                            _L21007_)
                                     (let* ((_get-kws-id21047_
                                             (make-symbol
                                              (gx#stx-e _L20819_)
                                              (gensym '__)))
                                            (_main-id21049_
                                             (make-symbol
                                              (gx#stx-e _L20819_)
                                              (gensym '__)))
                                            (_g27409_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21047_))
                                            (_g27410_
                                             (gx#core-bind-runtime!__0
                                              _main-id21049_))
                                            (_new-kw-dispatch21053_
                                             (gxc#apply-expression-subst
                                              _L21003_
                                              _L21007_
                                              _get-kws-id21047_))
                                            (_new-get-kws21055_
                                             (gxc#apply-expression-subst
                                              _L21004_
                                              _L21006_
                                              _main-id21049_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L20819_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21047_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21049_))
                                         (_lp20672_
                                          (cons (_bind-e__2734227343_
                                                 _main-id21049_
                                                 _L21005_
                                                 '#f)
                                                (cons (_bind-e__2734227343_
                                                       _get-kws-id21047_
                                                       _new-get-kws21055_
                                                       '#f)
                                                      (cons (_bind-e__2734227343_
                                                             _L20819_
                                                             _new-kw-dispatch21053_
                                                             '#f)
                                                            _rest20695_)))
                                          _bind20675_))))
                                   _hd2088020998_
                                   _hd2087720990_
                                   _hd2087420982_
                                   _hd2087120974_
                                   _hd2085320926_)
                                  (_g2083320886_ _g2083420889_))))
                          (_g2083320886_ _g2083420889_))
                      (_g2083320886_ _g2083420889_))
                  (_g2083320886_ _g2083420889_))
              (_g2083320886_ _g2083420889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2083320886_ _g2083420889_))
                                          (_g2083320886_ _g2083420889_))
                                      (_g2083320886_ _g2083420889_))))
                              (_g2083320886_ _g2083420889_))
                          (_g2083320886_ _g2083420889_))))
                  (_g2083320886_ _g2083420889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2083320886_
                                                   _g2083420889_))))
                                          (_g2083320886_ _g2083420889_))))
                                  (_g2083320886_ _g2083420889_))))
                          (_g2083320886_ _g2083420889_))))
                  (_g2083320886_ _g2083420889_))
              (_g2083320886_ _g2083420889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2083320886_ _g2083420889_))))
                                      (_g2083320886_ _g2083420889_))))
                              (_g2083320886_ _g2083420889_))))
                      (_g2083320886_ _g2083420889_))))
              (_g2083320886_ _g2083420889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2083221058_ _L20818_))
                                        (_g2070020789_ _g2070220792_)))
                                  _hd2073420813_
                                  _hd2073120805_)
                                 (_g2070020789_ _g2070220792_))))
                         (_g2070020789_ _g2070220792_))
                     (_g2070020789_ _g2070220792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2070020789_
                                                      _g2070220792_))))
                                             (_g2070020789_ _g2070220792_))))
                                      (_g2069821233_
                                       (lambda (_g2070221064_)
                                         (if (gx#stx-pair? _g2070221064_)
                                             (let ((_e2071621066_
                                                    (gx#stx-e _g2070221064_)))
                                               (let ((_hd2071721069_
                                                      (##car _e2071621066_))
                                                     (_tl2071821071_
                                                      (##cdr _e2071621066_)))
                                                 (if (gx#stx-pair?
                                                      _hd2071721069_)
                                                     (let ((_e2071921074_
                                                            (gx#stx-e
                                                             _hd2071721069_)))
                                                       (let ((_hd2072021077_
                                                              (##car _e2071921074_))
                                                             (_tl2072121079_
                                                              (##cdr _e2071921074_)))
                                                         (if (gx#stx-null?
                                                              _tl2072121079_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2071821071_)
                         (let ((_e2072221082_ (gx#stx-e _tl2071821071_)))
                           (let ((_hd2072321085_ (##car _e2072221082_))
                                 (_tl2072421087_ (##cdr _e2072221082_)))
                             (if (gx#stx-null? _tl2072421087_)
                                 ((lambda (_L21090_ _L21091_)
                                    (if (if (gx#identifier? _L21091_)
                                            (gxc#opt-lambda-expr? _L21090_)
                                            '#f)
                                        (let* ((_g2110521135_
                                                (lambda (_g2110621132_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2110621132_)))
                                               (_g2110421230_
                                                (lambda (_g2110621138_)
                                                  (if (gx#stx-pair?
                                                       _g2110621138_)
                                                      (let ((_e2111021140_
                                                             (gx#stx-e
                                                              _g2110621138_)))
                                                        (let ((_hd2111121143_
                                                               (##car _e2111021140_))
                                                              (_tl2111221145_
                                                               (##cdr _e2111021140_)))
                                                          (if (gx#stx-pair?
                                                               _tl2111221145_)
                                                              (let ((_e2111321148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2111221145_)))
                        (let ((_hd2111421151_ (##car _e2111321148_))
                              (_tl2111521153_ (##cdr _e2111321148_)))
                          (if (gx#stx-pair? _hd2111421151_)
                              (let ((_e2111621156_ (gx#stx-e _hd2111421151_)))
                                (let ((_hd2111721159_ (##car _e2111621156_))
                                      (_tl2111821161_ (##cdr _e2111621156_)))
                                  (if (gx#stx-pair? _hd2111721159_)
                                      (let ((_e2111921164_
                                             (gx#stx-e _hd2111721159_)))
                                        (let ((_hd2112021167_
                                               (##car _e2111921164_))
                                              (_tl2112121169_
                                               (##cdr _e2111921164_)))
                                          (if (gx#stx-pair? _hd2112021167_)
                                              (let ((_e2112221172_
                                                     (gx#stx-e
                                                      _hd2112021167_)))
                                                (let ((_hd2112321175_
                                                       (##car _e2112221172_))
                                                      (_tl2112421177_
                                                       (##cdr _e2112221172_)))
                                                  (if (gx#stx-null?
                                                       _tl2112421177_)
                                                      (if (gx#stx-pair?
                                                           _tl2112121169_)
                                                          (let ((_e2112521180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2112121169_)))
                    (let ((_hd2112621183_ (##car _e2112521180_))
                          (_tl2112721185_ (##cdr _e2112521180_)))
                      (if (gx#stx-null? _tl2112721185_)
                          (if (gx#stx-null? _tl2111821161_)
                              (if (gx#stx-pair? _tl2111521153_)
                                  (let ((_e2112821188_
                                         (gx#stx-e _tl2111521153_)))
                                    (let ((_hd2112921191_
                                           (##car _e2112821188_))
                                          (_tl2113021193_
                                           (##cdr _e2112821188_)))
                                      (if (gx#stx-null? _tl2113021193_)
                                          ((lambda (_L21196_ _L21197_ _L21198_)
                                             (let* ((_lambda-id21222_
                                                     (make-symbol
                                                      (gx#stx-e _L21091_)
                                                      (gensym '__)))
                                                    (_lambda-id21224_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21222_
                                                      (gx#stx-source
                                                       _stx20532_)))
                                                    (_g27411_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21224_))
                                                    (_new-case-lambda-expr21227_
                                                     (gxc#apply-expression-subst
                                                      _L21196_
                                                      _L21198_
                                                      _lambda-id21224_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L21091_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id21224_))
                                                 (_lp20672_
                                                  (cons (_bind-e__2734227343_
                                                         _L21091_
                                                         _new-case-lambda-expr21227_
                                                         '#f)
                                                        _rest20695_)
                                                  (cons (_bind-e__0__2734427345_
                                                         _lambda-id21224_
                                                         _L21197_)
                                                        _bind20675_)))))
                                           _hd2112921191_
                                           _hd2112621183_
                                           _hd2112321175_)
                                          (_g2110521135_ _g2110621138_))))
                                  (_g2110521135_ _g2110621138_))
                              (_g2110521135_ _g2110621138_))
                          (_g2110521135_ _g2110621138_))))
                  (_g2110521135_ _g2110621138_))
              (_g2110521135_ _g2110621138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2110521135_ _g2110621138_))))
                                      (_g2110521135_ _g2110621138_))))
                              (_g2110521135_ _g2110621138_))))
                      (_g2110521135_ _g2110621138_))))
              (_g2110521135_ _g2110621138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2110421230_ _L21090_))
                                        (_g2069921061_ _g2070221064_)))
                                  _hd2072321085_
                                  _hd2072021077_)
                                 (_g2069921061_ _g2070221064_))))
                         (_g2069921061_ _g2070221064_))
                     (_g2069921061_ _g2070221064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069921061_
                                                      _g2070221064_))))
                                             (_g2069921061_ _g2070221064_))))
                                      (_g2069721352_
                                       (lambda (_g2070221236_)
                                         (if (gx#stx-pair? _g2070221236_)
                                             (let ((_e2070521238_
                                                    (gx#stx-e _g2070221236_)))
                                               (let ((_hd2070621241_
                                                      (##car _e2070521238_))
                                                     (_tl2070721243_
                                                      (##cdr _e2070521238_)))
                                                 (if (gx#stx-pair?
                                                      _hd2070621241_)
                                                     (let ((_e2070821246_
                                                            (gx#stx-e
                                                             _hd2070621241_)))
                                                       (let ((_hd2070921249_
                                                              (##car _e2070821246_))
                                                             (_tl2071021251_
                                                              (##cdr _e2070821246_)))
                                                         (if (gx#stx-null?
                                                              _tl2071021251_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2070721243_)
                         (let ((_e2071121254_ (gx#stx-e _tl2070721243_)))
                           (let ((_hd2071221257_ (##car _e2071121254_))
                                 (_tl2071321259_ (##cdr _e2071121254_)))
                             (if (gx#stx-null? _tl2071321259_)
                                 ((lambda (_L21262_ _L21263_)
                                    (if (if (gx#identifier? _L21263_)
                                            (gxc#case-lambda-expr? _L21262_)
                                            '#f)
                                        (let* ((_g2127821292_
                                                (lambda (_g2127921289_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2127921289_)))
                                               (_g2127721327_
                                                (lambda (_g2127921295_)
                                                  (if (gx#stx-pair?
                                                       _g2127921295_)
                                                      (let ((_e2128521297_
                                                             (gx#stx-e
                                                              _g2127921295_)))
                                                        (let ((_hd2128621300_
                                                               (##car _e2128521297_))
                                                              (_tl2128721302_
                                                               (##cdr _e2128521297_)))
                                                          ((lambda (_L21305_)
                                                             (let ((_g27412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx20532_
                             _L21263_
                             _L21305_
                             '#t)))
                       (begin
                         (let ((_g27413_ (values-count _g27412_)))
                           (if (not (fx= _g27413_ 3))
                               (error "Context expects 3 values" _g27413_)))
                         (let ((_ids21315_ (values-ref _g27412_ 0))
                               (_impls21316_ (values-ref _g27412_ 1))
                               (_clauses21317_ (values-ref _g27412_ 2)))
                           (let* ((_g27414_
                                   (for-each gx#core-bind-runtime! _ids21315_))
                                  (_xbind21320_
                                   (map _bind-e20534_ _ids21315_ _impls21316_))
                                  (_expr*21322_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21317_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21324_
                                   (_bind-e__2734227343_
                                    _L21263_
                                    _expr*21322_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L21263_)
                                '" => "
                                (map gxc#identifier-symbol _ids21315_))
                               (_lp20672_
                                _rest20695_
                                (cons _bind*21324_
                                      (foldl1 cons
                                              _bind20675_
                                              _xbind21320_)))))))))
                   _tl2128721302_)))
              (_g2127821292_ _g2127921295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2127621349_
                                                (lambda (_g2127921330_)
                                                  (if (gx#stx-pair?
                                                       _g2127921330_)
                                                      (let ((_e2128121332_
                                                             (gx#stx-e
                                                              _g2127921330_)))
                                                        (let ((_hd2128221335_
                                                               (##car _e2128121332_))
                                                              (_tl2128321337_
                                                               (##cdr _e2128121332_)))
                                                          ((lambda (_L21340_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21340_)
                         (_lp20672_
                          _rest20695_
                          (cons (_bind-e__2734227343_ _L21263_ _L21262_ '#f)
                                _bind20675_))
                         (_g2127721327_ _g2127921330_)))
                   _tl2128321337_)))
              (_g2127721327_ _g2127921330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2127621349_ _L21262_))
                                        (_g2069821233_ _g2070221236_)))
                                  _hd2071221257_
                                  _hd2070921249_)
                                 (_g2069821233_ _g2070221236_))))
                         (_g2069821233_ _g2070221236_))
                     (_g2069821233_ _g2070221236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069821233_
                                                      _g2070221236_))))
                                             (_g2069821233_ _g2070221236_)))))
                                 (_g2069721352_ _hd20696_)))))
                       (if (##pair? _rest2067620684_)
                           (let ((_hd2068121358_ (##car _rest2067620684_))
                                 (_tl2068221360_ (##cdr _rest2067620684_)))
                             (let* ((_hd21363_ _hd2068121358_)
                                    (_rest21365_ _tl2068221360_))
                               (_K2068021355_ _rest21365_ _hd21363_)))
                           (_else2067820692_)))))))
        (let* ((_g2053820565_
                (lambda (_g2053920562_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2053920562_)))
               (_g2053720572_
                (lambda (_g2053920568_)
                  ((lambda () (gxc#xform-let-values% _stx20532_)))))
               (_g2053620667_
                (lambda (_g2053920575_)
                  (if (gx#stx-pair? _g2053920575_)
                      (let ((_e2054320577_ (gx#stx-e _g2053920575_)))
                        (let ((_hd2054420580_ (##car _e2054320577_))
                              (_tl2054520582_ (##cdr _e2054320577_)))
                          (if (gx#stx-pair? _tl2054520582_)
                              (let ((_e2054620585_ (gx#stx-e _tl2054520582_)))
                                (let ((_hd2054720588_ (##car _e2054620585_))
                                      (_tl2054820590_ (##cdr _e2054620585_)))
                                  (if (gx#stx-pair/null? _hd2054720588_)
                                      (if (fx>= (gx#stx-length _hd2054720588_)
                                                '0)
                                          (let ((_g27415_
                                                 (gx#syntax-split-splice
                                                  _hd2054720588_
                                                  '0)))
                                            (begin
                                              (let ((_g27416_
                                                     (values-count _g27415_)))
                                                (if (not (fx= _g27416_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27416_)))
                                              (let ((_target2054920593_
                                                     (values-ref _g27415_ 0))
                                                    (_tl2055120595_
                                                     (values-ref _g27415_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2055120595_)
                                                    (letrec ((_loop2055220598_
                                                              (lambda (_hd2055020601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2055620603_)
                        (if (gx#stx-pair? _hd2055020601_)
                            (let ((_e2055320606_ (gx#stx-e _hd2055020601_)))
                              (let ((_lp-hd2055420609_ (##car _e2055320606_))
                                    (_lp-tl2055520611_ (##cdr _e2055320606_)))
                                (_loop2055220598_
                                 _lp-tl2055520611_
                                 (cons _lp-hd2055420609_ _bind2055620603_))))
                            (let ((_bind2055720614_
                                   (reverse _bind2055620603_)))
                              (if (gx#stx-pair? _tl2054820590_)
                                  (let ((_e2055820617_
                                         (gx#stx-e _tl2054820590_)))
                                    (let ((_hd2055920620_
                                           (##car _e2055820617_))
                                          (_tl2056020622_
                                           (##cdr _e2055820617_)))
                                      (if (gx#stx-null? _tl2056020622_)
                                          ((lambda (_L20625_ _L20626_ _L20627_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2064820651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2064920653_)
                             (cons _g2064820651_ _g2064920653_))
                           '()
                           _L20626_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd20664_
                                                           (_compile-bindings20535_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2065620659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2065720661_)
                                (cons _g2065620659_ _g2065720661_))
                              '()
                              _L20626_))))
                  (_body20665_ (gxc#compile-e _L20625_)))
              (gxc#xform-wrap-source
               (cons _L20627_ (cons _hd20664_ (cons _body20665_ '())))
               _stx20532_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27348
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27348)
                                                      __obj27348)))
                                                 (_g2053720572_
                                                  _g2053920575_)))
                                           _hd2055920620_
                                           _bind2055720614_
                                           _hd2054420580_)
                                          (_g2053720572_ _g2053920575_))))
                                  (_g2053720572_ _g2053920575_)))))))
              (_loop2055220598_ _target2054920593_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2053720572_
                                                     _g2053920575_)))))
                                          (_g2053720572_ _g2053920575_))
                                      (_g2053720572_ _g2053920575_))))
                              (_g2053720572_ _g2053920575_))))
                      (_g2053720572_ _g2053920575_)))))
          (_g2053620667_ _stx20532_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20450_)
      (let* ((_g2045320470_
              (lambda (_g2045420467_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2045420467_)))
             (_g2045220477_ (lambda (_g2045420473_) ((lambda () '#f))))
             (_g2045120529_
              (lambda (_g2045420480_)
                (if (gx#stx-pair? _g2045420480_)
                    (let ((_e2045720482_ (gx#stx-e _g2045420480_)))
                      (let ((_hd2045820485_ (##car _e2045720482_))
                            (_tl2045920487_ (##cdr _e2045720482_)))
                        (if (gx#stx-pair? _hd2045820485_)
                            (let ((_e2046020490_ (gx#stx-e _hd2045820485_)))
                              (let ((_hd2046120493_ (##car _e2046020490_))
                                    (_tl2046220495_ (##cdr _e2046020490_)))
                                (if (gx#stx-null? _tl2046220495_)
                                    (if (gx#stx-pair? _tl2045920487_)
                                        (let ((_e2046320498_
                                               (gx#stx-e _tl2045920487_)))
                                          (let ((_hd2046420501_
                                                 (##car _e2046320498_))
                                                (_tl2046520503_
                                                 (##cdr _e2046320498_)))
                                            (if (gx#stx-null? _tl2046520503_)
                                                ((lambda (_L20506_ _L20507_)
                                                   (if (gx#identifier?
                                                        _L20507_)
                                                       (let ((_$e20523_
                                                              (gxc#case-lambda-expr?
                                                               _L20506_)))
                                                         (if _$e20523_
                                                             _$e20523_
                                                             (let ((_$e20526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L20506_)))
                       (if _$e20526_
                           _$e20526_
                           (gxc#kw-lambda-expr? _L20506_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2046420501_
                                                 _hd2046120493_)
                                                (_g2045220477_
                                                 _g2045420480_))))
                                        (_g2045220477_ _g2045420480_))
                                    (_g2045220477_ _g2045420480_))))
                            (_g2045220477_ _g2045420480_))))
                    (_g2045220477_ _g2045420480_)))))
        (_g2045120529_ _bind20450_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20388_ _id20389_ _new-id20390_)
      (let* ((_g2039320406_
              (lambda (_g2039420403_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2039420403_)))
             (_g2039220413_ (lambda (_g2039420409_) ((lambda () _stx20388_))))
             (_g2039120447_
              (lambda (_g2039420416_)
                (if (gx#stx-pair? _g2039420416_)
                    (let ((_e2039620418_ (gx#stx-e _g2039420416_)))
                      (let ((_hd2039720421_ (##car _e2039620418_))
                            (_tl2039820423_ (##cdr _e2039620418_)))
                        (if (gx#stx-pair? _tl2039820423_)
                            (let ((_e2039920426_ (gx#stx-e _tl2039820423_)))
                              (let ((_hd2040020429_ (##car _e2039920426_))
                                    (_tl2040120431_ (##cdr _e2039920426_)))
                                (if (gx#stx-null? _tl2040120431_)
                                    ((lambda (_L20434_)
                                       (if (gx#free-identifier=?
                                            _L20434_
                                            _id20389_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20390_ '()))
                                            _stx20388_)
                                           (_g2039220413_ _g2039420416_)))
                                     _hd2040020429_)
                                    (_g2039220413_ _g2039420416_))))
                            (_g2039220413_ _g2039420416_))))
                    (_g2039220413_ _g2039420416_)))))
        (_g2039120447_ _stx20388_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20244_)
      (let* ((_g2024720278_
              (lambda (_g2024820275_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2024820275_)))
             (_g2024620323_
              (lambda (_g2024820281_)
                (if (gx#stx-pair? _g2024820281_)
                    (let ((_e2026520283_ (gx#stx-e _g2024820281_)))
                      (let ((_hd2026620286_ (##car _e2026520283_))
                            (_tl2026720288_ (##cdr _e2026520283_)))
                        (if (gx#stx-pair? _tl2026720288_)
                            (let ((_e2026820291_ (gx#stx-e _tl2026720288_)))
                              (let ((_hd2026920294_ (##car _e2026820291_))
                                    (_tl2027020296_ (##cdr _e2026820291_)))
                                (if (gx#stx-pair? _tl2027020296_)
                                    (let ((_e2027120299_
                                           (gx#stx-e _tl2027020296_)))
                                      (let ((_hd2027220302_
                                             (##car _e2027120299_))
                                            (_tl2027320304_
                                             (##cdr _e2027120299_)))
                                        (if (gx#stx-null? _tl2027320304_)
                                            ((lambda (_L20307_ _L20308_)
                                               (gxc#compile-e _L20307_))
                                             _hd2027220302_
                                             _hd2026920294_)
                                            (_g2024720278_ _g2024820281_))))
                                    (_g2024720278_ _g2024820281_))))
                            (_g2024720278_ _g2024820281_))))
                    (_g2024720278_ _g2024820281_))))
             (_g2024520385_
              (lambda (_g2024820326_)
                (if (gx#stx-pair? _g2024820326_)
                    (let ((_e2025120328_ (gx#stx-e _g2024820326_)))
                      (let ((_hd2025220331_ (##car _e2025120328_))
                            (_tl2025320333_ (##cdr _e2025120328_)))
                        (if (gx#stx-pair? _tl2025320333_)
                            (let ((_e2025420336_ (gx#stx-e _tl2025320333_)))
                              (let ((_hd2025520339_ (##car _e2025420336_))
                                    (_tl2025620341_ (##cdr _e2025420336_)))
                                (if (gx#stx-pair? _hd2025520339_)
                                    (let ((_e2025720344_
                                           (gx#stx-e _hd2025520339_)))
                                      (let ((_hd2025820347_
                                             (##car _e2025720344_))
                                            (_tl2025920349_
                                             (##cdr _e2025720344_)))
                                        (if (gx#stx-null? _tl2025920349_)
                                            (if (gx#stx-pair? _tl2025620341_)
                                                (let ((_e2026020352_
                                                       (gx#stx-e
                                                        _tl2025620341_)))
                                                  (let ((_hd2026120355_
                                                         (##car _e2026020352_))
                                                        (_tl2026220357_
                                                         (##cdr _e2026020352_)))
                                                    (if (gx#stx-null?
                                                         _tl2026220357_)
                                                        ((lambda (_L20360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20361_)
                   (if (gx#identifier? _L20361_)
                       (let ((_sym20377_
                              (gxc#generate-runtime-binding-id _L20361_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20377_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20377_)
                               (let ((_type2037820380_
                                      (gxc#apply-basic-expression-type
                                       _L20360_)))
                                 (if _type2037820380_
                                     (let ((_type20383_ _type2037820380_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20377_
                                        _type20383_))
                                     '#f)))
                           (gxc#compile-e _L20360_)))
                       (_g2024620323_ _g2024820326_)))
                 _hd2026120355_
                 _hd2025820347_)
                (_g2024620323_ _g2024820326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2024620323_ _g2024820326_))
                                            (_g2024620323_ _g2024820326_))))
                                    (_g2024620323_ _g2024820326_))))
                            (_g2024620323_ _g2024820326_))))
                    (_g2024620323_ _g2024820326_)))))
        (_g2024520385_ _stx20244_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20029_)
      (letrec ((_collect-e20031_
                (lambda (_hd20188_ _expr20189_)
                  (let* ((_g2019220202_
                          (lambda (_g2019320199_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2019320199_)))
                         (_g2019120209_
                          (lambda (_g2019320205_) ((lambda () '#!void))))
                         (_g2019020241_
                          (lambda (_g2019320212_)
                            (if (gx#stx-pair? _g2019320212_)
                                (let ((_e2019520214_ (gx#stx-e _g2019320212_)))
                                  (let ((_hd2019620217_ (##car _e2019520214_))
                                        (_tl2019720219_ (##cdr _e2019520214_)))
                                    (if (gx#stx-null? _tl2019720219_)
                                        ((lambda (_L20222_)
                                           (if (gx#identifier? _L20222_)
                                               (let ((_sym20233_
                                                      (gxc#generate-runtime-binding-id
                                                       _L20222_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20233_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20233_)
                                                     (let ((_type2023420236_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20189_)))
                                                       (if _type2023420236_
                                                           (let ((_type20239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2023420236_))
                     (gxc#optimizer-declare-type!__%
                      _sym20233_
                      _type20239_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2019120209_ _g2019320212_)))
                                         _hd2019620217_)
                                        (_g2019120209_ _g2019320212_))))
                                (_g2019120209_ _g2019320212_)))))
                    (_g2019020241_ _hd20188_)))))
        (let* ((_g2003320068_
                (lambda (_g2003420065_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2003420065_)))
               (_g2003220185_
                (lambda (_g2003420071_)
                  (if (gx#stx-pair? _g2003420071_)
                      (let ((_e2003820073_ (gx#stx-e _g2003420071_)))
                        (let ((_hd2003920076_ (##car _e2003820073_))
                              (_tl2004020078_ (##cdr _e2003820073_)))
                          (if (gx#stx-pair? _tl2004020078_)
                              (let ((_e2004120081_ (gx#stx-e _tl2004020078_)))
                                (let ((_hd2004220084_ (##car _e2004120081_))
                                      (_tl2004320086_ (##cdr _e2004120081_)))
                                  (if (gx#stx-pair/null? _hd2004220084_)
                                      (if (fx>= (gx#stx-length _hd2004220084_)
                                                '0)
                                          (let ((_g27417_
                                                 (gx#syntax-split-splice
                                                  _hd2004220084_
                                                  '0)))
                                            (begin
                                              (let ((_g27418_
                                                     (values-count _g27417_)))
                                                (if (not (fx= _g27418_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27418_)))
                                              (let ((_target2004420089_
                                                     (values-ref _g27417_ 0))
                                                    (_tl2004620091_
                                                     (values-ref _g27417_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2004620091_)
                                                    (letrec ((_loop2004720094_
                                                              (lambda (_hd2004520097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2005120099_
                               _hd2005220101_)
                        (if (gx#stx-pair? _hd2004520097_)
                            (let ((_e2004820104_ (gx#stx-e _hd2004520097_)))
                              (let ((_lp-hd2004920107_ (##car _e2004820104_))
                                    (_lp-tl2005020109_ (##cdr _e2004820104_)))
                                (if (gx#stx-pair? _lp-hd2004920107_)
                                    (let ((_e2005520112_
                                           (gx#stx-e _lp-hd2004920107_)))
                                      (let ((_hd2005620115_
                                             (##car _e2005520112_))
                                            (_tl2005720117_
                                             (##cdr _e2005520112_)))
                                        (if (gx#stx-pair? _tl2005720117_)
                                            (let ((_e2005820120_
                                                   (gx#stx-e _tl2005720117_)))
                                              (let ((_hd2005920123_
                                                     (##car _e2005820120_))
                                                    (_tl2006020125_
                                                     (##cdr _e2005820120_)))
                                                (if (gx#stx-null?
                                                     _tl2006020125_)
                                                    (_loop2004720094_
                                                     _lp-tl2005020109_
                                                     (cons _hd2005920123_
                                                           _expr2005120099_)
                                                     (cons _hd2005620115_
                                                           _hd2005220101_))
                                                    (_g2003320068_
                                                     _g2003420071_))))
                                            (_g2003320068_ _g2003420071_))))
                                    (_g2003320068_ _g2003420071_))))
                            (let ((_expr2005320128_ (reverse _expr2005120099_))
                                  (_hd2005420130_ (reverse _hd2005220101_)))
                              (if (gx#stx-pair? _tl2004320086_)
                                  (let ((_e2006120133_
                                         (gx#stx-e _tl2004320086_)))
                                    (let ((_hd2006220136_
                                           (##car _e2006120133_))
                                          (_tl2006320138_
                                           (##cdr _e2006120133_)))
                                      (if (gx#stx-null? _tl2006320138_)
                                          ((lambda (_L20141_ _L20142_ _L20143_)
                                             (begin
                                               (for-each
                                                _collect-e20031_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2016320166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2016420168_)
                    (cons _g2016320166_ _g2016420168_))
                  '()
                  _L20143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2017020173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2017120175_)
                    (cons _g2017020173_ _g2017120175_))
                  '()
                  _L20142_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2017720180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2017820182_)
                    (cons _g2017720180_ _g2017820182_))
                  '()
                  _L20142_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20141_)))
                                           _hd2006220136_
                                           _expr2005320128_
                                           _hd2005420130_)
                                          (_g2003320068_ _g2003420071_))))
                                  (_g2003320068_ _g2003420071_)))))))
              (_loop2004720094_ _target2004420089_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2003320068_
                                                     _g2003420071_)))))
                                          (_g2003320068_ _g2003420071_))
                                      (_g2003320068_ _g2003420071_))))
                              (_g2003320068_ _g2003420071_))))
                      (_g2003320068_ _g2003420071_)))))
          (_g2003220185_ _stx20029_)))))
  (define gxc#collect-type-call%
    (lambda (_stx19583_)
      (let* ((_g1958719689_
              (lambda (_g1958819686_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1958819686_)))
             (_g1958619696_ (lambda (_g1958819692_) ((lambda () '#!void))))
             (_g1958519846_
              (lambda (_g1958819699_)
                (if (gx#stx-pair? _g1958819699_)
                    (let ((_e1964619701_ (gx#stx-e _g1958819699_)))
                      (let ((_hd1964719704_ (##car _e1964619701_))
                            (_tl1964819706_ (##cdr _e1964619701_)))
                        (if (gx#stx-pair? _tl1964819706_)
                            (let ((_e1964919709_ (gx#stx-e _tl1964819706_)))
                              (let ((_hd1965019712_ (##car _e1964919709_))
                                    (_tl1965119714_ (##cdr _e1964919709_)))
                                (if (gx#stx-pair? _hd1965019712_)
                                    (let ((_e1965219717_
                                           (gx#stx-e _hd1965019712_)))
                                      (let ((_hd1965319720_
                                             (##car _e1965219717_))
                                            (_tl1965419722_
                                             (##cdr _e1965219717_)))
                                        (if (gx#identifier? _hd1965319720_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1965319720_)
                                                (if (gx#stx-pair?
                                                     _tl1965419722_)
                                                    (let ((_e1965519725_
                                                           (gx#stx-e
                                                            _tl1965419722_)))
                                                      (let ((_hd1965619728_
                                                             (##car _e1965519725_))
                                                            (_tl1965719730_
                                                             (##cdr _e1965519725_)))
                                                        (if (gx#stx-null?
                                                             _tl1965719730_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1965119714_)
                        (let ((_e1965819733_ (gx#stx-e _tl1965119714_)))
                          (let ((_hd1965919736_ (##car _e1965819733_))
                                (_tl1966019738_ (##cdr _e1965819733_)))
                            (if (gx#stx-pair? _hd1965919736_)
                                (let ((_e1966119741_
                                       (gx#stx-e _hd1965919736_)))
                                  (let ((_hd1966219744_ (##car _e1966119741_))
                                        (_tl1966319746_ (##cdr _e1966119741_)))
                                    (if (gx#identifier? _hd1966219744_)
                                        (if (gx#stx-eq? '%#ref _hd1966219744_)
                                            (if (gx#stx-pair? _tl1966319746_)
                                                (let ((_e1966419749_
                                                       (gx#stx-e
                                                        _tl1966319746_)))
                                                  (let ((_hd1966519752_
                                                         (##car _e1966419749_))
                                                        (_tl1966619754_
                                                         (##cdr _e1966419749_)))
                                                    (if (gx#stx-null?
                                                         _tl1966619754_)
                                                        (if (gx#stx-pair?
                                                             _tl1966019738_)
                                                            (let ((_e1966719757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1966019738_)))
                      (let ((_hd1966819760_ (##car _e1966719757_))
                            (_tl1966919762_ (##cdr _e1966719757_)))
                        (if (gx#stx-pair? _hd1966819760_)
                            (let ((_e1967019765_ (gx#stx-e _hd1966819760_)))
                              (let ((_hd1967119768_ (##car _e1967019765_))
                                    (_tl1967219770_ (##cdr _e1967019765_)))
                                (if (gx#identifier? _hd1967119768_)
                                    (if (gx#stx-eq? '%#quote _hd1967119768_)
                                        (if (gx#stx-pair? _tl1967219770_)
                                            (let ((_e1967319773_
                                                   (gx#stx-e _tl1967219770_)))
                                              (let ((_hd1967419776_
                                                     (##car _e1967319773_))
                                                    (_tl1967519778_
                                                     (##cdr _e1967319773_)))
                                                (if (gx#stx-null?
                                                     _tl1967519778_)
                                                    (if (gx#stx-pair?
                                                         _tl1966919762_)
                                                        (let ((_e1967619781_
                                                               (gx#stx-e
                                                                _tl1966919762_)))
                                                          (let ((_hd1967719784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1967619781_))
                        (_tl1967819786_ (##cdr _e1967619781_)))
                    (if (gx#stx-pair? _hd1967719784_)
                        (let ((_e1967919789_ (gx#stx-e _hd1967719784_)))
                          (let ((_hd1968019792_ (##car _e1967919789_))
                                (_tl1968119794_ (##cdr _e1967919789_)))
                            (if (gx#identifier? _hd1968019792_)
                                (if (gx#stx-eq? '%#ref _hd1968019792_)
                                    (if (gx#stx-pair? _tl1968119794_)
                                        (let ((_e1968219797_
                                               (gx#stx-e _tl1968119794_)))
                                          (let ((_hd1968319800_
                                                 (##car _e1968219797_))
                                                (_tl1968419802_
                                                 (##cdr _e1968219797_)))
                                            (if (gx#stx-null? _tl1968419802_)
                                                (if (gx#stx-null?
                                                     _tl1967819786_)
                                                    ((lambda (_L19805_
                                                              _L19806_
                                                              _L19807_
                                                              _L19808_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#generate-runtime-binding-id _L19807_)
                    (gx#stx-e _L19806_)
                    (gxc#generate-runtime-binding-id _L19805_)
                    '#f)
                   (_g1958619696_ _g1958819699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1968319800_
                                                     _hd1967419776_
                                                     _hd1966519752_
                                                     _hd1965619728_)
                                                    (_g1958619696_
                                                     _g1958819699_))
                                                (_g1958619696_
                                                 _g1958819699_))))
                                        (_g1958619696_ _g1958819699_))
                                    (_g1958619696_ _g1958819699_))
                                (_g1958619696_ _g1958819699_))))
                        (_g1958619696_ _g1958819699_))))
                (_g1958619696_ _g1958819699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958619696_
                                                     _g1958819699_))))
                                            (_g1958619696_ _g1958819699_))
                                        (_g1958619696_ _g1958819699_))
                                    (_g1958619696_ _g1958819699_))))
                            (_g1958619696_ _g1958819699_))))
                    (_g1958619696_ _g1958819699_))
                (_g1958619696_ _g1958819699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1958619696_ _g1958819699_))
                                            (_g1958619696_ _g1958819699_))
                                        (_g1958619696_ _g1958819699_))))
                                (_g1958619696_ _g1958819699_))))
                        (_g1958619696_ _g1958819699_))
                    (_g1958619696_ _g1958819699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958619696_
                                                     _g1958819699_))
                                                (_g1958619696_ _g1958819699_))
                                            (_g1958619696_ _g1958819699_))))
                                    (_g1958619696_ _g1958819699_))))
                            (_g1958619696_ _g1958819699_))))
                    (_g1958619696_ _g1958819699_))))
             (_g1958420026_
              (lambda (_g1958819849_)
                (if (gx#stx-pair? _g1958819849_)
                    (let ((_e1959419851_ (gx#stx-e _g1958819849_)))
                      (let ((_hd1959519854_ (##car _e1959419851_))
                            (_tl1959619856_ (##cdr _e1959419851_)))
                        (if (gx#stx-pair? _tl1959619856_)
                            (let ((_e1959719859_ (gx#stx-e _tl1959619856_)))
                              (let ((_hd1959819862_ (##car _e1959719859_))
                                    (_tl1959919864_ (##cdr _e1959719859_)))
                                (if (gx#stx-pair? _hd1959819862_)
                                    (let ((_e1960019867_
                                           (gx#stx-e _hd1959819862_)))
                                      (let ((_hd1960119870_
                                             (##car _e1960019867_))
                                            (_tl1960219872_
                                             (##cdr _e1960019867_)))
                                        (if (gx#identifier? _hd1960119870_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1960119870_)
                                                (if (gx#stx-pair?
                                                     _tl1960219872_)
                                                    (let ((_e1960319875_
                                                           (gx#stx-e
                                                            _tl1960219872_)))
                                                      (let ((_hd1960419878_
                                                             (##car _e1960319875_))
                                                            (_tl1960519880_
                                                             (##cdr _e1960319875_)))
                                                        (if (gx#stx-null?
                                                             _tl1960519880_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1959919864_)
                        (let ((_e1960619883_ (gx#stx-e _tl1959919864_)))
                          (let ((_hd1960719886_ (##car _e1960619883_))
                                (_tl1960819888_ (##cdr _e1960619883_)))
                            (if (gx#stx-pair? _hd1960719886_)
                                (let ((_e1960919891_
                                       (gx#stx-e _hd1960719886_)))
                                  (let ((_hd1961019894_ (##car _e1960919891_))
                                        (_tl1961119896_ (##cdr _e1960919891_)))
                                    (if (gx#identifier? _hd1961019894_)
                                        (if (gx#stx-eq? '%#ref _hd1961019894_)
                                            (if (gx#stx-pair? _tl1961119896_)
                                                (let ((_e1961219899_
                                                       (gx#stx-e
                                                        _tl1961119896_)))
                                                  (let ((_hd1961319902_
                                                         (##car _e1961219899_))
                                                        (_tl1961419904_
                                                         (##cdr _e1961219899_)))
                                                    (if (gx#stx-null?
                                                         _tl1961419904_)
                                                        (if (gx#stx-pair?
                                                             _tl1960819888_)
                                                            (let ((_e1961519907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1960819888_)))
                      (let ((_hd1961619910_ (##car _e1961519907_))
                            (_tl1961719912_ (##cdr _e1961519907_)))
                        (if (gx#stx-pair? _hd1961619910_)
                            (let ((_e1961819915_ (gx#stx-e _hd1961619910_)))
                              (let ((_hd1961919918_ (##car _e1961819915_))
                                    (_tl1962019920_ (##cdr _e1961819915_)))
                                (if (gx#identifier? _hd1961919918_)
                                    (if (gx#stx-eq? '%#quote _hd1961919918_)
                                        (if (gx#stx-pair? _tl1962019920_)
                                            (let ((_e1962119923_
                                                   (gx#stx-e _tl1962019920_)))
                                              (let ((_hd1962219926_
                                                     (##car _e1962119923_))
                                                    (_tl1962319928_
                                                     (##cdr _e1962119923_)))
                                                (if (gx#stx-null?
                                                     _tl1962319928_)
                                                    (if (gx#stx-pair?
                                                         _tl1961719912_)
                                                        (let ((_e1962419931_
                                                               (gx#stx-e
                                                                _tl1961719912_)))
                                                          (let ((_hd1962519934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1962419931_))
                        (_tl1962619936_ (##cdr _e1962419931_)))
                    (if (gx#stx-pair? _hd1962519934_)
                        (let ((_e1962719939_ (gx#stx-e _hd1962519934_)))
                          (let ((_hd1962819942_ (##car _e1962719939_))
                                (_tl1962919944_ (##cdr _e1962719939_)))
                            (if (gx#identifier? _hd1962819942_)
                                (if (gx#stx-eq? '%#ref _hd1962819942_)
                                    (if (gx#stx-pair? _tl1962919944_)
                                        (let ((_e1963019947_
                                               (gx#stx-e _tl1962919944_)))
                                          (let ((_hd1963119950_
                                                 (##car _e1963019947_))
                                                (_tl1963219952_
                                                 (##cdr _e1963019947_)))
                                            (if (gx#stx-null? _tl1963219952_)
                                                (if (gx#stx-pair?
                                                     _tl1962619936_)
                                                    (let ((_e1963319955_
                                                           (gx#stx-e
                                                            _tl1962619936_)))
                                                      (let ((_hd1963419958_
                                                             (##car _e1963319955_))
                                                            (_tl1963519960_
                                                             (##cdr _e1963319955_)))
                                                        (if (gx#stx-pair?
                                                             _hd1963419958_)
                                                            (let ((_e1963619963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1963419958_)))
                      (let ((_hd1963719966_ (##car _e1963619963_))
                            (_tl1963819968_ (##cdr _e1963619963_)))
                        (if (gx#identifier? _hd1963719966_)
                            (if (gx#stx-eq? '%#quote _hd1963719966_)
                                (if (gx#stx-pair? _tl1963819968_)
                                    (let ((_e1963919971_
                                           (gx#stx-e _tl1963819968_)))
                                      (let ((_hd1964019974_
                                             (##car _e1963919971_))
                                            (_tl1964119976_
                                             (##cdr _e1963919971_)))
                                        (if (gx#stx-null? _tl1964119976_)
                                            (if (gx#stx-null? _tl1963519960_)
                                                ((lambda (_L19979_
                                                          _L19980_
                                                          _L19981_
                                                          _L19982_
                                                          _L19983_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L19983_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#generate-runtime-binding-id
                                                         _L19982_)
                                                        (gx#stx-e _L19981_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L19980_)
                                                        (gx#stx-e _L19979_))
                                                       (_g1958519846_
                                                        _g1958819849_)))
                                                 _hd1964019974_
                                                 _hd1963119950_
                                                 _hd1962219926_
                                                 _hd1961319902_
                                                 _hd1960419878_)
                                                (_g1958519846_ _g1958819849_))
                                            (_g1958519846_ _g1958819849_))))
                                    (_g1958519846_ _g1958819849_))
                                (_g1958519846_ _g1958819849_))
                            (_g1958519846_ _g1958819849_))))
                    (_g1958519846_ _g1958819849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958519846_
                                                     _g1958819849_))
                                                (_g1958519846_
                                                 _g1958819849_))))
                                        (_g1958519846_ _g1958819849_))
                                    (_g1958519846_ _g1958819849_))
                                (_g1958519846_ _g1958819849_))))
                        (_g1958519846_ _g1958819849_))))
                (_g1958519846_ _g1958819849_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958519846_
                                                     _g1958819849_))))
                                            (_g1958519846_ _g1958819849_))
                                        (_g1958519846_ _g1958819849_))
                                    (_g1958519846_ _g1958819849_))))
                            (_g1958519846_ _g1958819849_))))
                    (_g1958519846_ _g1958819849_))
                (_g1958519846_ _g1958819849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1958519846_ _g1958819849_))
                                            (_g1958519846_ _g1958819849_))
                                        (_g1958519846_ _g1958819849_))))
                                (_g1958519846_ _g1958819849_))))
                        (_g1958519846_ _g1958819849_))
                    (_g1958519846_ _g1958819849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958519846_
                                                     _g1958819849_))
                                                (_g1958519846_ _g1958819849_))
                                            (_g1958519846_ _g1958819849_))))
                                    (_g1958519846_ _g1958819849_))))
                            (_g1958519846_ _g1958819849_))))
                    (_g1958519846_ _g1958819849_)))))
        (_g1958420026_ _stx19583_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx19523_)
      (let* ((_g1952619539_
              (lambda (_g1952719536_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1952719536_)))
             (_g1952519546_ (lambda (_g1952719542_) ((lambda () '#f))))
             (_g1952419580_
              (lambda (_g1952719549_)
                (if (gx#stx-pair? _g1952719549_)
                    (let ((_e1952919551_ (gx#stx-e _g1952719549_)))
                      (let ((_hd1953019554_ (##car _e1952919551_))
                            (_tl1953119556_ (##cdr _e1952919551_)))
                        (if (gx#stx-pair? _tl1953119556_)
                            (let ((_e1953219559_ (gx#stx-e _tl1953119556_)))
                              (let ((_hd1953319562_ (##car _e1953219559_))
                                    (_tl1953419564_ (##cdr _e1953219559_)))
                                (if (gx#stx-null? _tl1953419564_)
                                    ((lambda (_L19567_)
                                       (gxc#compile-e _L19567_))
                                     _hd1953319562_)
                                    (_g1952519546_ _g1952719549_))))
                            (_g1952519546_ _g1952719549_))))
                    (_g1952519546_ _g1952719549_)))))
        (_g1952419580_ _stx19523_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19456_)
      (let* ((_g1945819475_
              (lambda (_g1945919472_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1945919472_)))
             (_g1945719520_
              (lambda (_g1945919478_)
                (if (gx#stx-pair? _g1945919478_)
                    (let ((_e1946219480_ (gx#stx-e _g1945919478_)))
                      (let ((_hd1946319483_ (##car _e1946219480_))
                            (_tl1946419485_ (##cdr _e1946219480_)))
                        (if (gx#stx-pair? _tl1946419485_)
                            (let ((_e1946519488_ (gx#stx-e _tl1946419485_)))
                              (let ((_hd1946619491_ (##car _e1946519488_))
                                    (_tl1946719493_ (##cdr _e1946519488_)))
                                (if (gx#stx-pair? _tl1946719493_)
                                    (let ((_e1946819496_
                                           (gx#stx-e _tl1946719493_)))
                                      (let ((_hd1946919499_
                                             (##car _e1946819496_))
                                            (_tl1947019501_
                                             (##cdr _e1946819496_)))
                                        (if (gx#stx-null? _tl1947019501_)
                                            ((lambda (_L19504_ _L19505_)
                                               (gxc#compile-e _L19504_))
                                             _hd1946919499_
                                             _hd1946619491_)
                                            (_g1945819475_ _g1945919478_))))
                                    (_g1945819475_ _g1945919478_))))
                            (_g1945819475_ _g1945919478_))))
                    (_g1945819475_ _g1945919478_)))))
        (_g1945719520_ _stx19456_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18097_)
      (let* ((_g1810418403_
              (lambda (_g1810518400_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1810518400_)))
             (_g1810318410_ (lambda (_g1810518406_) ((lambda () '#f))))
             (_g1810218799_
              (lambda (_g1810518413_)
                (if (gx#stx-pair? _g1810518413_)
                    (let ((_e1829418415_ (gx#stx-e _g1810518413_)))
                      (let ((_hd1829518418_ (##car _e1829418415_))
                            (_tl1829618420_ (##cdr _e1829418415_)))
                        (if (gx#stx-pair? _tl1829618420_)
                            (let ((_e1829718423_ (gx#stx-e _tl1829618420_)))
                              (let ((_hd1829818426_ (##car _e1829718423_))
                                    (_tl1829918428_ (##cdr _e1829718423_)))
                                (if (gx#stx-pair? _hd1829818426_)
                                    (let ((_e1830018431_
                                           (gx#stx-e _hd1829818426_)))
                                      (let ((_hd1830118434_
                                             (##car _e1830018431_))
                                            (_tl1830218436_
                                             (##cdr _e1830018431_)))
                                        (if (gx#stx-pair? _tl1829918428_)
                                            (let ((_e1830318439_
                                                   (gx#stx-e _tl1829918428_)))
                                              (let ((_hd1830418442_
                                                     (##car _e1830318439_))
                                                    (_tl1830518444_
                                                     (##cdr _e1830318439_)))
                                                (if (gx#stx-pair?
                                                     _hd1830418442_)
                                                    (let ((_e1830618447_
                                                           (gx#stx-e
                                                            _hd1830418442_)))
                                                      (let ((_hd1830718450_
                                                             (##car _e1830618447_))
                                                            (_tl1830818452_
                                                             (##cdr _e1830618447_)))
                                                        (if (gx#identifier?
                                                             _hd1830718450_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1830718450_)
                        (if (gx#stx-pair? _tl1830818452_)
                            (let ((_e1830918455_ (gx#stx-e _tl1830818452_)))
                              (let ((_hd1831018458_ (##car _e1830918455_))
                                    (_tl1831118460_ (##cdr _e1830918455_)))
                                (if (gx#stx-pair? _hd1831018458_)
                                    (let ((_e1831218463_
                                           (gx#stx-e _hd1831018458_)))
                                      (let ((_hd1831318466_
                                             (##car _e1831218463_))
                                            (_tl1831418468_
                                             (##cdr _e1831218463_)))
                                        (if (gx#identifier? _hd1831318466_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1831318466_)
                                                (if (gx#stx-pair?
                                                     _tl1831418468_)
                                                    (let ((_e1831518471_
                                                           (gx#stx-e
                                                            _tl1831418468_)))
                                                      (let ((_hd1831618474_
                                                             (##car _e1831518471_))
                                                            (_tl1831718476_
                                                             (##cdr _e1831518471_)))
                                                        (if (gx#stx-null?
                                                             _tl1831718476_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1831118460_)
                        (let ((_e1831818479_ (gx#stx-e _tl1831118460_)))
                          (let ((_hd1831918482_ (##car _e1831818479_))
                                (_tl1832018484_ (##cdr _e1831818479_)))
                            (if (gx#stx-pair? _hd1831918482_)
                                (let ((_e1832118487_
                                       (gx#stx-e _hd1831918482_)))
                                  (let ((_hd1832218490_ (##car _e1832118487_))
                                        (_tl1832318492_ (##cdr _e1832118487_)))
                                    (if (gx#identifier? _hd1832218490_)
                                        (if (gx#stx-eq? '%#ref _hd1832218490_)
                                            (if (gx#stx-pair? _tl1832318492_)
                                                (let ((_e1832418495_
                                                       (gx#stx-e
                                                        _tl1832318492_)))
                                                  (let ((_hd1832518498_
                                                         (##car _e1832418495_))
                                                        (_tl1832618500_
                                                         (##cdr _e1832418495_)))
                                                    (if (gx#stx-null?
                                                         _tl1832618500_)
                                                        (if (gx#stx-pair?
                                                             _tl1832018484_)
                                                            (let ((_e1832718503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1832018484_)))
                      (let ((_hd1832818506_ (##car _e1832718503_))
                            (_tl1832918508_ (##cdr _e1832718503_)))
                        (if (gx#stx-pair? _hd1832818506_)
                            (let ((_e1833018511_ (gx#stx-e _hd1832818506_)))
                              (let ((_hd1833118514_ (##car _e1833018511_))
                                    (_tl1833218516_ (##cdr _e1833018511_)))
                                (if (gx#identifier? _hd1833118514_)
                                    (if (gx#stx-eq? '%#ref _hd1833118514_)
                                        (if (gx#stx-pair? _tl1833218516_)
                                            (let ((_e1833318519_
                                                   (gx#stx-e _tl1833218516_)))
                                              (let ((_hd1833418522_
                                                     (##car _e1833318519_))
                                                    (_tl1833518524_
                                                     (##cdr _e1833318519_)))
                                                (if (gx#stx-null?
                                                     _tl1833518524_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1832918508_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1832918508_)
                          '1)
                    (let ((_g27419_
                           (gx#syntax-split-splice _tl1832918508_ '1)))
                      (begin
                        (let ((_g27420_ (values-count _g27419_)))
                          (if (not (fx= _g27420_ 2))
                              (error "Context expects 2 values" _g27420_)))
                        (let ((_target1833618527_ (values-ref _g27419_ 0))
                              (_tl1833818529_ (values-ref _g27419_ 1)))
                          (if (gx#stx-pair? _tl1833818529_)
                              (let ((_e1835118532_ (gx#stx-e _tl1833818529_)))
                                (let ((_hd1835218535_ (##car _e1835118532_))
                                      (_tl1835318537_ (##cdr _e1835118532_)))
                                  (if (gx#stx-pair? _hd1835218535_)
                                      (let ((_e1835418540_
                                             (gx#stx-e _hd1835218535_)))
                                        (let ((_hd1835518543_
                                               (##car _e1835418540_))
                                              (_tl1835618545_
                                               (##cdr _e1835418540_)))
                                          (if (gx#identifier? _hd1835518543_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1835518543_)
                                                  (if (gx#stx-pair?
                                                       _tl1835618545_)
                                                      (let ((_e1835718548_
                                                             (gx#stx-e
                                                              _tl1835618545_)))
                                                        (let ((_hd1835818551_
                                                               (##car _e1835718548_))
                                                              (_tl1835918553_
                                                               (##cdr _e1835718548_)))
                                                          (if (gx#stx-null?
                                                               _tl1835918553_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1835318537_)
                          (letrec ((_loop1833918556_
                                    (lambda (_hd1833718559_
                                             _-absent-value1834318561_
                                             _key1834418563_
                                             _-xkwvar1834518565_
                                             _-hash-ref1834618567_)
                                      (if (gx#stx-pair? _hd1833718559_)
                                          (let ((_e1834018570_
                                                 (gx#stx-e _hd1833718559_)))
                                            (let ((_lp-hd1834118573_
                                                   (##car _e1834018570_))
                                                  (_lp-tl1834218575_
                                                   (##cdr _e1834018570_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1834118573_)
                                                  (let ((_e1836018578_
                                                         (gx#stx-e
                                                          _lp-hd1834118573_)))
                                                    (let ((_hd1836118581_
                                                           (##car _e1836018578_))
                                                          (_tl1836218583_
                                                           (##cdr _e1836018578_)))
                                                      (if (gx#identifier?
                                                           _hd1836118581_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1836118581_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1836218583_)
                          (let ((_e1836318586_ (gx#stx-e _tl1836218583_)))
                            (let ((_hd1836418589_ (##car _e1836318586_))
                                  (_tl1836518591_ (##cdr _e1836318586_)))
                              (if (gx#stx-pair? _hd1836418589_)
                                  (let ((_e1836618594_
                                         (gx#stx-e _hd1836418589_)))
                                    (let ((_hd1836718597_
                                           (##car _e1836618594_))
                                          (_tl1836818599_
                                           (##cdr _e1836618594_)))
                                      (if (gx#identifier? _hd1836718597_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1836718597_)
                                              (if (gx#stx-pair? _tl1836818599_)
                                                  (let ((_e1836918602_
                                                         (gx#stx-e
                                                          _tl1836818599_)))
                                                    (let ((_hd1837018605_
                                                           (##car _e1836918602_))
                                                          (_tl1837118607_
                                                           (##cdr _e1836918602_)))
                                                      (if (gx#stx-null?
                                                           _tl1837118607_)
                                                          (if (gx#stx-pair?
                                                               _tl1836518591_)
                                                              (let ((_e1837218610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1836518591_)))
                        (let ((_hd1837318613_ (##car _e1837218610_))
                              (_tl1837418615_ (##cdr _e1837218610_)))
                          (if (gx#stx-pair? _hd1837318613_)
                              (let ((_e1837518618_ (gx#stx-e _hd1837318613_)))
                                (let ((_hd1837618621_ (##car _e1837518618_))
                                      (_tl1837718623_ (##cdr _e1837518618_)))
                                  (if (gx#identifier? _hd1837618621_)
                                      (if (gx#stx-eq? '%#ref _hd1837618621_)
                                          (if (gx#stx-pair? _tl1837718623_)
                                              (let ((_e1837818626_
                                                     (gx#stx-e
                                                      _tl1837718623_)))
                                                (let ((_hd1837918629_
                                                       (##car _e1837818626_))
                                                      (_tl1838018631_
                                                       (##cdr _e1837818626_)))
                                                  (if (gx#stx-null?
                                                       _tl1838018631_)
                                                      (if (gx#stx-pair?
                                                           _tl1837418615_)
                                                          (let ((_e1838118634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1837418615_)))
                    (let ((_hd1838218637_ (##car _e1838118634_))
                          (_tl1838318639_ (##cdr _e1838118634_)))
                      (if (gx#stx-pair? _hd1838218637_)
                          (let ((_e1838418642_ (gx#stx-e _hd1838218637_)))
                            (let ((_hd1838518645_ (##car _e1838418642_))
                                  (_tl1838618647_ (##cdr _e1838418642_)))
                              (if (gx#identifier? _hd1838518645_)
                                  (if (gx#stx-eq? '%#quote _hd1838518645_)
                                      (if (gx#stx-pair? _tl1838618647_)
                                          (let ((_e1838718650_
                                                 (gx#stx-e _tl1838618647_)))
                                            (let ((_hd1838818653_
                                                   (##car _e1838718650_))
                                                  (_tl1838918655_
                                                   (##cdr _e1838718650_)))
                                              (if (gx#stx-null? _tl1838918655_)
                                                  (if (gx#stx-pair?
                                                       _tl1838318639_)
                                                      (let ((_e1839018658_
                                                             (gx#stx-e
                                                              _tl1838318639_)))
                                                        (let ((_hd1839118661_
                                                               (##car _e1839018658_))
                                                              (_tl1839218663_
                                                               (##cdr _e1839018658_)))
                                                          (if (gx#stx-pair?
                                                               _hd1839118661_)
                                                              (let ((_e1839318666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1839118661_)))
                        (let ((_hd1839418669_ (##car _e1839318666_))
                              (_tl1839518671_ (##cdr _e1839318666_)))
                          (if (gx#identifier? _hd1839418669_)
                              (if (gx#stx-eq? '%#ref _hd1839418669_)
                                  (if (gx#stx-pair? _tl1839518671_)
                                      (let ((_e1839618674_
                                             (gx#stx-e _tl1839518671_)))
                                        (let ((_hd1839718677_
                                               (##car _e1839618674_))
                                              (_tl1839818679_
                                               (##cdr _e1839618674_)))
                                          (if (gx#stx-null? _tl1839818679_)
                                              (if (gx#stx-null? _tl1839218663_)
                                                  (_loop1833918556_
                                                   _lp-tl1834218575_
                                                   (cons _hd1839718677_
                                                         _-absent-value1834318561_)
                                                   (cons _hd1838818653_
                                                         _key1834418563_)
                                                   (cons _hd1837918629_
                                                         _-xkwvar1834518565_)
                                                   (cons _hd1837018605_
                                                         _-hash-ref1834618567_))
                                                  (_g1810318410_
                                                   _g1810518413_))
                                              (_g1810318410_ _g1810518413_))))
                                      (_g1810318410_ _g1810518413_))
                                  (_g1810318410_ _g1810518413_))
                              (_g1810318410_ _g1810518413_))))
                      (_g1810318410_ _g1810518413_))))
              (_g1810318410_ _g1810518413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810318410_
                                                   _g1810518413_))))
                                          (_g1810318410_ _g1810518413_))
                                      (_g1810318410_ _g1810518413_))
                                  (_g1810318410_ _g1810518413_))))
                          (_g1810318410_ _g1810518413_))))
                  (_g1810318410_ _g1810518413_))
              (_g1810318410_ _g1810518413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1810318410_ _g1810518413_))
                                          (_g1810318410_ _g1810518413_))
                                      (_g1810318410_ _g1810518413_))))
                              (_g1810318410_ _g1810518413_))))
                      (_g1810318410_ _g1810518413_))
                  (_g1810318410_ _g1810518413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810318410_
                                                   _g1810518413_))
                                              (_g1810318410_ _g1810518413_))
                                          (_g1810318410_ _g1810518413_))))
                                  (_g1810318410_ _g1810518413_))))
                          (_g1810318410_ _g1810518413_))
                      (_g1810318410_ _g1810518413_))
                  (_g1810318410_ _g1810518413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810318410_
                                                   _g1810518413_))))
                                          (let ((_-absent-value1834718682_
                                                 (reverse _-absent-value1834318561_))
                                                (_key1834818684_
                                                 (reverse _key1834418563_))
                                                (_-xkwvar1834918686_
                                                 (reverse _-xkwvar1834518565_))
                                                (_-hash-ref1835018688_
                                                 (reverse _-hash-ref1834618567_)))
                                            (if (gx#stx-null? _tl1830518444_)
                                                ((lambda (_L18691_
                                                          _L18692_
                                                          _L18693_
                                                          _L18694_
                                                          _L18695_
                                                          _L18696_
                                                          _L18697_
                                                          _L18698_
                                                          _L18699_
                                                          _L18700_)
                                                   (if (if (gx#identifier?
                                                            _L18700_)
                                                           (if (gx#identifier?
                                                                _L18699_)
                                                               (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L18698_)
                                'apply)
                           (if (gx#free-identifier=? _L18700_ _L18696_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1875518758_
                                                               _g1875618760_)
                                                        (cons _g1875518758_
                                                              _g1875618760_))
                                                      '()
                                                      _L18693_)))
                                   (if (andmap1 (lambda (_id18763_)
                                                  (eq? (gxc#generate-runtime-binding-id
                                                        _id18763_)
                                                       'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1876418767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1876518769_)
                    (cons _g1876418767_ _g1876518769_))
                  '()
                  _L18695_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_id18772_)
                                                      (eq? (gxc#generate-runtime-binding-id
                                                            _id18772_)
                                                           'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1877318776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1877418778_)
                        (cons _g1877318776_ _g1877418778_))
                      '()
                      _L18692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1878018782_)
                                                      (gx#free-identifier=?
                                                       _g1878018782_
                                                       _L18700_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1878418787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1878518789_)
                        (cons _g1878418787_ _g1878518789_))
                      '()
                      _L18694_)))
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
                       (foldr1 (lambda (_g1879118794_ _g1879218796_)
                                 (cons _g1879118794_ _g1879218796_))
                               '()
                               _L18693_)))
                (gxc#generate-runtime-binding-id _L18697_))
               (_g1810318410_ _g1810518413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1835818551_
                                                 _-absent-value1834718682_
                                                 _key1834818684_
                                                 _-xkwvar1834918686_
                                                 _-hash-ref1835018688_
                                                 _hd1833418522_
                                                 _hd1832518498_
                                                 _hd1831618474_
                                                 _tl1830218436_
                                                 _hd1830118434_)
                                                (_g1810318410_
                                                 _g1810518413_)))))))
                            (_loop1833918556_
                             _target1833618527_
                             '()
                             '()
                             '()
                             '()))
                          (_g1810318410_ _g1810518413_))
                      (_g1810318410_ _g1810518413_))))
              (_g1810318410_ _g1810518413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810318410_
                                                   _g1810518413_))
                                              (_g1810318410_ _g1810518413_))))
                                      (_g1810318410_ _g1810518413_))))
                              (_g1810318410_ _g1810518413_)))))
                    (_g1810318410_ _g1810518413_))
                (_g1810318410_ _g1810518413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810318410_
                                                     _g1810518413_))))
                                            (_g1810318410_ _g1810518413_))
                                        (_g1810318410_ _g1810518413_))
                                    (_g1810318410_ _g1810518413_))))
                            (_g1810318410_ _g1810518413_))))
                    (_g1810318410_ _g1810518413_))
                (_g1810318410_ _g1810518413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1810318410_ _g1810518413_))
                                            (_g1810318410_ _g1810518413_))
                                        (_g1810318410_ _g1810518413_))))
                                (_g1810318410_ _g1810518413_))))
                        (_g1810318410_ _g1810518413_))
                    (_g1810318410_ _g1810518413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810318410_
                                                     _g1810518413_))
                                                (_g1810318410_ _g1810518413_))
                                            (_g1810318410_ _g1810518413_))))
                                    (_g1810318410_ _g1810518413_))))
                            (_g1810318410_ _g1810518413_))
                        (_g1810318410_ _g1810518413_))
                    (_g1810318410_ _g1810518413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810318410_
                                                     _g1810518413_))))
                                            (_g1810318410_ _g1810518413_))))
                                    (_g1810318410_ _g1810518413_))))
                            (_g1810318410_ _g1810518413_))))
                    (_g1810318410_ _g1810518413_))))
             (_g1810119016_
              (lambda (_g1810518802_)
                (if (gx#stx-pair? _g1810518802_)
                    (let ((_e1822718804_ (gx#stx-e _g1810518802_)))
                      (let ((_hd1822818807_ (##car _e1822718804_))
                            (_tl1822918809_ (##cdr _e1822718804_)))
                        (if (gx#stx-pair? _tl1822918809_)
                            (let ((_e1823018812_ (gx#stx-e _tl1822918809_)))
                              (let ((_hd1823118815_ (##car _e1823018812_))
                                    (_tl1823218817_ (##cdr _e1823018812_)))
                                (if (gx#stx-pair? _tl1823218817_)
                                    (let ((_e1823318820_
                                           (gx#stx-e _tl1823218817_)))
                                      (let ((_hd1823418823_
                                             (##car _e1823318820_))
                                            (_tl1823518825_
                                             (##cdr _e1823318820_)))
                                        (if (gx#stx-pair? _hd1823418823_)
                                            (let ((_e1823618828_
                                                   (gx#stx-e _hd1823418823_)))
                                              (let ((_hd1823718831_
                                                     (##car _e1823618828_))
                                                    (_tl1823818833_
                                                     (##cdr _e1823618828_)))
                                                (if (gx#identifier?
                                                     _hd1823718831_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1823718831_)
                                                        (if (gx#stx-pair?
                                                             _tl1823818833_)
                                                            (let ((_e1823918836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1823818833_)))
                      (let ((_hd1824018839_ (##car _e1823918836_))
                            (_tl1824118841_ (##cdr _e1823918836_)))
                        (if (gx#stx-pair? _hd1824018839_)
                            (let ((_e1824218844_ (gx#stx-e _hd1824018839_)))
                              (let ((_hd1824318847_ (##car _e1824218844_))
                                    (_tl1824418849_ (##cdr _e1824218844_)))
                                (if (gx#identifier? _hd1824318847_)
                                    (if (gx#stx-eq? '%#ref _hd1824318847_)
                                        (if (gx#stx-pair? _tl1824418849_)
                                            (let ((_e1824518852_
                                                   (gx#stx-e _tl1824418849_)))
                                              (let ((_hd1824618855_
                                                     (##car _e1824518852_))
                                                    (_tl1824718857_
                                                     (##cdr _e1824518852_)))
                                                (if (gx#stx-null?
                                                     _tl1824718857_)
                                                    (if (gx#stx-pair?
                                                         _tl1824118841_)
                                                        (let ((_e1824818860_
                                                               (gx#stx-e
                                                                _tl1824118841_)))
                                                          (let ((_hd1824918863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1824818860_))
                        (_tl1825018865_ (##cdr _e1824818860_)))
                    (if (gx#stx-pair? _hd1824918863_)
                        (let ((_e1825118868_ (gx#stx-e _hd1824918863_)))
                          (let ((_hd1825218871_ (##car _e1825118868_))
                                (_tl1825318873_ (##cdr _e1825118868_)))
                            (if (gx#identifier? _hd1825218871_)
                                (if (gx#stx-eq? '%#ref _hd1825218871_)
                                    (if (gx#stx-pair? _tl1825318873_)
                                        (let ((_e1825418876_
                                               (gx#stx-e _tl1825318873_)))
                                          (let ((_hd1825518879_
                                                 (##car _e1825418876_))
                                                (_tl1825618881_
                                                 (##cdr _e1825418876_)))
                                            (if (gx#stx-null? _tl1825618881_)
                                                (if (gx#stx-pair?
                                                     _tl1825018865_)
                                                    (let ((_e1825718884_
                                                           (gx#stx-e
                                                            _tl1825018865_)))
                                                      (let ((_hd1825818887_
                                                             (##car _e1825718884_))
                                                            (_tl1825918889_
                                                             (##cdr _e1825718884_)))
                                                        (if (gx#stx-pair?
                                                             _hd1825818887_)
                                                            (let ((_e1826018892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1825818887_)))
                      (let ((_hd1826118895_ (##car _e1826018892_))
                            (_tl1826218897_ (##cdr _e1826018892_)))
                        (if (gx#identifier? _hd1826118895_)
                            (if (gx#stx-eq? '%#quote _hd1826118895_)
                                (if (gx#stx-pair? _tl1826218897_)
                                    (let ((_e1826318900_
                                           (gx#stx-e _tl1826218897_)))
                                      (let ((_hd1826418903_
                                             (##car _e1826318900_))
                                            (_tl1826518905_
                                             (##cdr _e1826318900_)))
                                        (if (gx#stx-null? _tl1826518905_)
                                            (if (gx#stx-pair? _tl1825918889_)
                                                (let ((_e1826618908_
                                                       (gx#stx-e
                                                        _tl1825918889_)))
                                                  (let ((_hd1826718911_
                                                         (##car _e1826618908_))
                                                        (_tl1826818913_
                                                         (##cdr _e1826618908_)))
                                                    (if (gx#stx-pair?
                                                         _hd1826718911_)
                                                        (let ((_e1826918916_
                                                               (gx#stx-e
                                                                _hd1826718911_)))
                                                          (let ((_hd1827018919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1826918916_))
                        (_tl1827118921_ (##cdr _e1826918916_)))
                    (if (gx#identifier? _hd1827018919_)
                        (if (gx#stx-eq? '%#ref _hd1827018919_)
                            (if (gx#stx-pair? _tl1827118921_)
                                (let ((_e1827218924_
                                       (gx#stx-e _tl1827118921_)))
                                  (let ((_hd1827318927_ (##car _e1827218924_))
                                        (_tl1827418929_ (##cdr _e1827218924_)))
                                    (if (gx#stx-null? _tl1827418929_)
                                        (if (gx#stx-pair? _tl1826818913_)
                                            (let ((_e1827518932_
                                                   (gx#stx-e _tl1826818913_)))
                                              (let ((_hd1827618935_
                                                     (##car _e1827518932_))
                                                    (_tl1827718937_
                                                     (##cdr _e1827518932_)))
                                                (if (gx#stx-pair?
                                                     _hd1827618935_)
                                                    (let ((_e1827818940_
                                                           (gx#stx-e
                                                            _hd1827618935_)))
                                                      (let ((_hd1827918943_
                                                             (##car _e1827818940_))
                                                            (_tl1828018945_
                                                             (##cdr _e1827818940_)))
                                                        (if (gx#identifier?
                                                             _hd1827918943_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1827918943_)
                        (if (gx#stx-pair? _tl1828018945_)
                            (let ((_e1828118948_ (gx#stx-e _tl1828018945_)))
                              (let ((_hd1828218951_ (##car _e1828118948_))
                                    (_tl1828318953_ (##cdr _e1828118948_)))
                                (if (gx#stx-null? _tl1828318953_)
                                    (if (gx#stx-null? _tl1827718937_)
                                        (if (gx#stx-null? _tl1823518825_)
                                            ((lambda (_L18956_
                                                      _L18957_
                                                      _L18958_
                                                      _L18959_
                                                      _L18960_
                                                      _L18961_)
                                               (if (if (gx#identifier?
                                                        _L18961_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18960_)
                        'apply)
                   (if (eq? (gxc#generate-runtime-binding-id _L18959_)
                            'keyword-dispatch)
                       (gx#free-identifier=? _L18961_ _L18956_)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_tab19011_
                                                           (gx#stx-e _L18958_))
                                                          (_keys19013_
                                                           (if _tab19011_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab19011_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys19013_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18957_)))
                                                   (_g1810218799_
                                                    _g1810518802_)))
                                             _hd1828218951_
                                             _hd1827318927_
                                             _hd1826418903_
                                             _hd1825518879_
                                             _hd1824618855_
                                             _hd1823118815_)
                                            (_g1810218799_ _g1810518802_))
                                        (_g1810218799_ _g1810518802_))
                                    (_g1810218799_ _g1810518802_))))
                            (_g1810218799_ _g1810518802_))
                        (_g1810218799_ _g1810518802_))
                    (_g1810218799_ _g1810518802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810218799_
                                                     _g1810518802_))))
                                            (_g1810218799_ _g1810518802_))
                                        (_g1810218799_ _g1810518802_))))
                                (_g1810218799_ _g1810518802_))
                            (_g1810218799_ _g1810518802_))
                        (_g1810218799_ _g1810518802_))))
                (_g1810218799_ _g1810518802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1810218799_ _g1810518802_))
                                            (_g1810218799_ _g1810518802_))))
                                    (_g1810218799_ _g1810518802_))
                                (_g1810218799_ _g1810518802_))
                            (_g1810218799_ _g1810518802_))))
                    (_g1810218799_ _g1810518802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810218799_
                                                     _g1810518802_))
                                                (_g1810218799_
                                                 _g1810518802_))))
                                        (_g1810218799_ _g1810518802_))
                                    (_g1810218799_ _g1810518802_))
                                (_g1810218799_ _g1810518802_))))
                        (_g1810218799_ _g1810518802_))))
                (_g1810218799_ _g1810518802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810218799_
                                                     _g1810518802_))))
                                            (_g1810218799_ _g1810518802_))
                                        (_g1810218799_ _g1810518802_))
                                    (_g1810218799_ _g1810518802_))))
                            (_g1810218799_ _g1810518802_))))
                    (_g1810218799_ _g1810518802_))
                (_g1810218799_ _g1810518802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810218799_
                                                     _g1810518802_))))
                                            (_g1810218799_ _g1810518802_))))
                                    (_g1810218799_ _g1810518802_))))
                            (_g1810218799_ _g1810518802_))))
                    (_g1810218799_ _g1810518802_))))
             (_g1810019038_
              (lambda (_g1810519019_)
                (if (gx#stx-pair? _g1810519019_)
                    (let ((_e1821819021_ (gx#stx-e _g1810519019_)))
                      (let ((_hd1821919024_ (##car _e1821819021_))
                            (_tl1822019026_ (##cdr _e1821819021_)))
                        ((lambda (_L19029_)
                           (if (gxc#dispatch-lambda-form? _L19029_)
                               (let ((__obj27349
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27349
                                    'lambda
                                    (gxc#lambda-form-arity _L19029_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19029_))
                                   __obj27349))
                               (_g1810119016_ _g1810519019_)))
                         _tl1822019026_)))
                    (_g1810119016_ _g1810519019_))))
             (_g1809919268_
              (lambda (_g1810519041_)
                (if (gx#stx-pair? _g1810519041_)
                    (let ((_e1816319043_ (gx#stx-e _g1810519041_)))
                      (let ((_hd1816419046_ (##car _e1816319043_))
                            (_tl1816519048_ (##cdr _e1816319043_)))
                        (if (gx#stx-pair? _tl1816519048_)
                            (let ((_e1816619051_ (gx#stx-e _tl1816519048_)))
                              (let ((_hd1816719054_ (##car _e1816619051_))
                                    (_tl1816819056_ (##cdr _e1816619051_)))
                                (if (gx#stx-pair/null? _hd1816719054_)
                                    (if (fx>= (gx#stx-length _hd1816719054_)
                                              '0)
                                        (let ((_g27421_
                                               (gx#syntax-split-splice
                                                _hd1816719054_
                                                '0)))
                                          (begin
                                            (let ((_g27422_
                                                   (values-count _g27421_)))
                                              (if (not (fx= _g27422_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27422_)))
                                            (let ((_target1816919059_
                                                   (values-ref _g27421_ 0))
                                                  (_tl1817119061_
                                                   (values-ref _g27421_ 1)))
                                              (if (gx#stx-null? _tl1817119061_)
                                                  (letrec ((_loop1817219064_
                                                            (lambda (_hd1817019067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1817619069_)
                      (if (gx#stx-pair? _hd1817019067_)
                          (let ((_e1817319072_ (gx#stx-e _hd1817019067_)))
                            (let ((_lp-hd1817419075_ (##car _e1817319072_))
                                  (_lp-tl1817519077_ (##cdr _e1817319072_)))
                              (_loop1817219064_
                               _lp-tl1817519077_
                               (cons _lp-hd1817419075_ _arg1817619069_))))
                          (let ((_arg1817719080_ (reverse _arg1817619069_)))
                            (if (gx#stx-pair? _tl1816819056_)
                                (let ((_e1817819083_
                                       (gx#stx-e _tl1816819056_)))
                                  (let ((_hd1817919086_ (##car _e1817819083_))
                                        (_tl1818019088_ (##cdr _e1817819083_)))
                                    (if (gx#stx-pair? _hd1817919086_)
                                        (let ((_e1818119091_
                                               (gx#stx-e _hd1817919086_)))
                                          (let ((_hd1818219094_
                                                 (##car _e1818119091_))
                                                (_tl1818319096_
                                                 (##cdr _e1818119091_)))
                                            (if (gx#identifier? _hd1818219094_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1818219094_)
                                                    (if (gx#stx-pair?
                                                         _tl1818319096_)
                                                        (let ((_e1818419099_
                                                               (gx#stx-e
                                                                _tl1818319096_)))
                                                          (let ((_hd1818519102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1818419099_))
                        (_tl1818619104_ (##cdr _e1818419099_)))
                    (if (gx#stx-pair? _hd1818519102_)
                        (let ((_e1818719107_ (gx#stx-e _hd1818519102_)))
                          (let ((_hd1818819110_ (##car _e1818719107_))
                                (_tl1818919112_ (##cdr _e1818719107_)))
                            (if (gx#identifier? _hd1818819110_)
                                (if (gx#stx-eq? '%#ref _hd1818819110_)
                                    (if (gx#stx-pair? _tl1818919112_)
                                        (let ((_e1819019115_
                                               (gx#stx-e _tl1818919112_)))
                                          (let ((_hd1819119118_
                                                 (##car _e1819019115_))
                                                (_tl1819219120_
                                                 (##cdr _e1819019115_)))
                                            (if (gx#stx-null? _tl1819219120_)
                                                (if (gx#stx-pair?
                                                     _tl1818619104_)
                                                    (let ((_e1819319123_
                                                           (gx#stx-e
                                                            _tl1818619104_)))
                                                      (let ((_hd1819419126_
                                                             (##car _e1819319123_))
                                                            (_tl1819519128_
                                                             (##cdr _e1819319123_)))
                                                        (if (gx#stx-pair?
                                                             _hd1819419126_)
                                                            (let ((_e1819619131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1819419126_)))
                      (let ((_hd1819719134_ (##car _e1819619131_))
                            (_tl1819819136_ (##cdr _e1819619131_)))
                        (if (gx#identifier? _hd1819719134_)
                            (if (gx#stx-eq? '%#ref _hd1819719134_)
                                (if (gx#stx-pair? _tl1819819136_)
                                    (let ((_e1819919139_
                                           (gx#stx-e _tl1819819136_)))
                                      (let ((_hd1820019142_
                                             (##car _e1819919139_))
                                            (_tl1820119144_
                                             (##cdr _e1819919139_)))
                                        (if (gx#stx-null? _tl1820119144_)
                                            (if (gx#stx-pair/null?
                                                 _tl1819519128_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1819519128_)
                                                          '0)
                                                    (let ((_g27423_
                                                           (gx#syntax-split-splice
                                                            _tl1819519128_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27424_
                                                               (values-count
                                                                _g27423_)))
                                                          (if (not (fx= _g27424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g27424_)))
                (let ((_target1820219147_ (values-ref _g27423_ 0))
                      (_tl1820419149_ (values-ref _g27423_ 1)))
                  (if (gx#stx-null? _tl1820419149_)
                      (letrec ((_loop1820519152_
                                (lambda (_hd1820319155_ _xarg1820919157_)
                                  (if (gx#stx-pair? _hd1820319155_)
                                      (let ((_e1820619160_
                                             (gx#stx-e _hd1820319155_)))
                                        (let ((_lp-hd1820719163_
                                               (##car _e1820619160_))
                                              (_lp-tl1820819165_
                                               (##cdr _e1820619160_)))
                                          (if (gx#stx-pair? _lp-hd1820719163_)
                                              (let ((_e1821119168_
                                                     (gx#stx-e
                                                      _lp-hd1820719163_)))
                                                (let ((_hd1821219171_
                                                       (##car _e1821119168_))
                                                      (_tl1821319173_
                                                       (##cdr _e1821119168_)))
                                                  (if (gx#identifier?
                                                       _hd1821219171_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1821219171_)
                                                          (if (gx#stx-pair?
                                                               _tl1821319173_)
                                                              (let ((_e1821419176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1821319173_)))
                        (let ((_hd1821519179_ (##car _e1821419176_))
                              (_tl1821619181_ (##cdr _e1821419176_)))
                          (if (gx#stx-null? _tl1821619181_)
                              (_loop1820519152_
                               _lp-tl1820819165_
                               (cons _hd1821519179_ _xarg1820919157_))
                              (_g1810019038_ _g1810519041_))))
                      (_g1810019038_ _g1810519041_))
                  (_g1810019038_ _g1810519041_))
              (_g1810019038_ _g1810519041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1810019038_ _g1810519041_))))
                                      (let ((_xarg1821019184_
                                             (reverse _xarg1820919157_)))
                                        (if (gx#stx-null? _tl1818019088_)
                                            ((lambda (_L19187_
                                                      _L19188_
                                                      _L19189_
                                                      _L19190_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1922719230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1922819232_)
                            (cons _g1922719230_ _g1922819232_))
                          '()
                          _L19190_)))
               (if (eq? (gxc#generate-runtime-binding-id _L19189_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1923419237_
                                                       _g1923519239_)
                                                (cons _g1923419237_
                                                      _g1923519239_))
                                              '()
                                              _L19190_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1924119244_
                                                       _g1924219246_)
                                                (cons _g1924119244_
                                                      _g1924219246_))
                                              '()
                                              _L19187_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1924819251_ _g1924919253_)
                                            (cons _g1924819251_ _g1924919253_))
                                          '()
                                          _L19190_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1925519258_ _g1925619260_)
                                            (cons _g1925519258_ _g1925619260_))
                                          '()
                                          _L19187_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19263_
                                                           (gxc#generate-runtime-binding-id
                                                            _L19188_))
                                                          (_type19265_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19263_)))
                                                     (if (##structure-instance-of?
                                                          _type19265_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19263_)
                                                         '#f))
                                                   (_g1810019038_
                                                    _g1810519041_)))
                                             _xarg1821019184_
                                             _hd1820019142_
                                             _hd1819119118_
                                             _arg1817719080_)
                                            (_g1810019038_ _g1810519041_)))))))
                        (_loop1820519152_ _target1820219147_ '()))
                      (_g1810019038_ _g1810519041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810019038_
                                                     _g1810519041_))
                                                (_g1810019038_ _g1810519041_))
                                            (_g1810019038_ _g1810519041_))))
                                    (_g1810019038_ _g1810519041_))
                                (_g1810019038_ _g1810519041_))
                            (_g1810019038_ _g1810519041_))))
                    (_g1810019038_ _g1810519041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810019038_
                                                     _g1810519041_))
                                                (_g1810019038_
                                                 _g1810519041_))))
                                        (_g1810019038_ _g1810519041_))
                                    (_g1810019038_ _g1810519041_))
                                (_g1810019038_ _g1810519041_))))
                        (_g1810019038_ _g1810519041_))))
                (_g1810019038_ _g1810519041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810019038_
                                                     _g1810519041_))
                                                (_g1810019038_
                                                 _g1810519041_))))
                                        (_g1810019038_ _g1810519041_))))
                                (_g1810019038_ _g1810519041_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1817219064_
                                                     _target1816919059_
                                                     '()))
                                                  (_g1810019038_
                                                   _g1810519041_)))))
                                        (_g1810019038_ _g1810519041_))
                                    (_g1810019038_ _g1810519041_))))
                            (_g1810019038_ _g1810519041_))))
                    (_g1810019038_ _g1810519041_))))
             (_g1809819453_
              (lambda (_g1810519271_)
                (if (gx#stx-pair? _g1810519271_)
                    (let ((_e1811119273_ (gx#stx-e _g1810519271_)))
                      (let ((_hd1811219276_ (##car _e1811119273_))
                            (_tl1811319278_ (##cdr _e1811119273_)))
                        (if (gx#stx-pair? _tl1811319278_)
                            (let ((_e1811419281_ (gx#stx-e _tl1811319278_)))
                              (let ((_hd1811519284_ (##car _e1811419281_))
                                    (_tl1811619286_ (##cdr _e1811419281_)))
                                (if (gx#stx-pair? _tl1811619286_)
                                    (let ((_e1811719289_
                                           (gx#stx-e _tl1811619286_)))
                                      (let ((_hd1811819292_
                                             (##car _e1811719289_))
                                            (_tl1811919294_
                                             (##cdr _e1811719289_)))
                                        (if (gx#stx-pair? _hd1811819292_)
                                            (let ((_e1812019297_
                                                   (gx#stx-e _hd1811819292_)))
                                              (let ((_hd1812119300_
                                                     (##car _e1812019297_))
                                                    (_tl1812219302_
                                                     (##cdr _e1812019297_)))
                                                (if (gx#identifier?
                                                     _hd1812119300_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1812119300_)
                                                        (if (gx#stx-pair?
                                                             _tl1812219302_)
                                                            (let ((_e1812319305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1812219302_)))
                      (let ((_hd1812419308_ (##car _e1812319305_))
                            (_tl1812519310_ (##cdr _e1812319305_)))
                        (if (gx#stx-pair? _hd1812419308_)
                            (let ((_e1812619313_ (gx#stx-e _hd1812419308_)))
                              (let ((_hd1812719316_ (##car _e1812619313_))
                                    (_tl1812819318_ (##cdr _e1812619313_)))
                                (if (gx#identifier? _hd1812719316_)
                                    (if (gx#stx-eq? '%#ref _hd1812719316_)
                                        (if (gx#stx-pair? _tl1812819318_)
                                            (let ((_e1812919321_
                                                   (gx#stx-e _tl1812819318_)))
                                              (let ((_hd1813019324_
                                                     (##car _e1812919321_))
                                                    (_tl1813119326_
                                                     (##cdr _e1812919321_)))
                                                (if (gx#stx-null?
                                                     _tl1813119326_)
                                                    (if (gx#stx-pair?
                                                         _tl1812519310_)
                                                        (let ((_e1813219329_
                                                               (gx#stx-e
                                                                _tl1812519310_)))
                                                          (let ((_hd1813319332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1813219329_))
                        (_tl1813419334_ (##cdr _e1813219329_)))
                    (if (gx#stx-pair? _hd1813319332_)
                        (let ((_e1813519337_ (gx#stx-e _hd1813319332_)))
                          (let ((_hd1813619340_ (##car _e1813519337_))
                                (_tl1813719342_ (##cdr _e1813519337_)))
                            (if (gx#identifier? _hd1813619340_)
                                (if (gx#stx-eq? '%#ref _hd1813619340_)
                                    (if (gx#stx-pair? _tl1813719342_)
                                        (let ((_e1813819345_
                                               (gx#stx-e _tl1813719342_)))
                                          (let ((_hd1813919348_
                                                 (##car _e1813819345_))
                                                (_tl1814019350_
                                                 (##cdr _e1813819345_)))
                                            (if (gx#stx-null? _tl1814019350_)
                                                (if (gx#stx-pair?
                                                     _tl1813419334_)
                                                    (let ((_e1814119353_
                                                           (gx#stx-e
                                                            _tl1813419334_)))
                                                      (let ((_hd1814219356_
                                                             (##car _e1814119353_))
                                                            (_tl1814319358_
                                                             (##cdr _e1814119353_)))
                                                        (if (gx#stx-pair?
                                                             _hd1814219356_)
                                                            (let ((_e1814419361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1814219356_)))
                      (let ((_hd1814519364_ (##car _e1814419361_))
                            (_tl1814619366_ (##cdr _e1814419361_)))
                        (if (gx#identifier? _hd1814519364_)
                            (if (gx#stx-eq? '%#ref _hd1814519364_)
                                (if (gx#stx-pair? _tl1814619366_)
                                    (let ((_e1814719369_
                                           (gx#stx-e _tl1814619366_)))
                                      (let ((_hd1814819372_
                                             (##car _e1814719369_))
                                            (_tl1814919374_
                                             (##cdr _e1814719369_)))
                                        (if (gx#stx-null? _tl1814919374_)
                                            (if (gx#stx-pair? _tl1814319358_)
                                                (let ((_e1815019377_
                                                       (gx#stx-e
                                                        _tl1814319358_)))
                                                  (let ((_hd1815119380_
                                                         (##car _e1815019377_))
                                                        (_tl1815219382_
                                                         (##cdr _e1815019377_)))
                                                    (if (gx#stx-pair?
                                                         _hd1815119380_)
                                                        (let ((_e1815319385_
                                                               (gx#stx-e
                                                                _hd1815119380_)))
                                                          (let ((_hd1815419388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1815319385_))
                        (_tl1815519390_ (##cdr _e1815319385_)))
                    (if (gx#identifier? _hd1815419388_)
                        (if (gx#stx-eq? '%#ref _hd1815419388_)
                            (if (gx#stx-pair? _tl1815519390_)
                                (let ((_e1815619393_
                                       (gx#stx-e _tl1815519390_)))
                                  (let ((_hd1815719396_ (##car _e1815619393_))
                                        (_tl1815819398_ (##cdr _e1815619393_)))
                                    (if (gx#stx-null? _tl1815819398_)
                                        (if (gx#stx-null? _tl1815219382_)
                                            (if (gx#stx-null? _tl1811919294_)
                                                ((lambda (_L19401_
                                                          _L19402_
                                                          _L19403_
                                                          _L19404_
                                                          _L19405_)
                                                   (if (if (gx#identifier?
                                                            _L19405_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19404_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L19403_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L19405_ _L19401_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19448_
                       (gxc#generate-runtime-binding-id _L19402_))
                      (_type19450_ (gxc#optimizer-resolve-type _type-t19448_)))
                 (if (##structure-instance-of?
                      _type19450_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19448_)
                     '#f))
               (_g1809919268_ _g1810519271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1815719396_
                                                 _hd1814819372_
                                                 _hd1813919348_
                                                 _hd1813019324_
                                                 _hd1811519284_)
                                                (_g1809919268_ _g1810519271_))
                                            (_g1809919268_ _g1810519271_))
                                        (_g1809919268_ _g1810519271_))))
                                (_g1809919268_ _g1810519271_))
                            (_g1809919268_ _g1810519271_))
                        (_g1809919268_ _g1810519271_))))
                (_g1809919268_ _g1810519271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1809919268_ _g1810519271_))
                                            (_g1809919268_ _g1810519271_))))
                                    (_g1809919268_ _g1810519271_))
                                (_g1809919268_ _g1810519271_))
                            (_g1809919268_ _g1810519271_))))
                    (_g1809919268_ _g1810519271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809919268_
                                                     _g1810519271_))
                                                (_g1809919268_
                                                 _g1810519271_))))
                                        (_g1809919268_ _g1810519271_))
                                    (_g1809919268_ _g1810519271_))
                                (_g1809919268_ _g1810519271_))))
                        (_g1809919268_ _g1810519271_))))
                (_g1809919268_ _g1810519271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809919268_
                                                     _g1810519271_))))
                                            (_g1809919268_ _g1810519271_))
                                        (_g1809919268_ _g1810519271_))
                                    (_g1809919268_ _g1810519271_))))
                            (_g1809919268_ _g1810519271_))))
                    (_g1809919268_ _g1810519271_))
                (_g1809919268_ _g1810519271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809919268_
                                                     _g1810519271_))))
                                            (_g1809919268_ _g1810519271_))))
                                    (_g1809919268_ _g1810519271_))))
                            (_g1809919268_ _g1810519271_))))
                    (_g1809919268_ _g1810519271_)))))
        (_g1809819453_ _stx18097_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18043_)
      (letrec ((_clause-e18045_
                (lambda (_form18095_)
                  (let ((__obj27350 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27350
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18095_)
                       (gxc#dispatch-lambda-form-delegate _form18095_))
                      __obj27350)))))
        (let* ((_g1804818058_
                (lambda (_g1804918055_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1804918055_)))
               (_g1804718065_ (lambda (_g1804918061_) ((lambda () '#f))))
               (_g1804618092_
                (lambda (_g1804918068_)
                  (if (gx#stx-pair? _g1804918068_)
                      (let ((_e1805118070_ (gx#stx-e _g1804918068_)))
                        (let ((_hd1805218073_ (##car _e1805118070_))
                              (_tl1805318075_ (##cdr _e1805118070_)))
                          ((lambda (_L18078_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18078_)
                                 (let ((_clauses18090_
                                        (map _clause-e18045_ _L18078_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18090_))
                                 (_g1804718065_ _g1804918068_)))
                           _tl1805318075_)))
                      (_g1804718065_ _g1804918068_)))))
          (_g1804618092_ _stx18043_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx17948_)
      (let* ((_g1795117971_
              (lambda (_g1795217968_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1795217968_)))
             (_g1795017978_ (lambda (_g1795217974_) ((lambda () '#f))))
             (_g1794918040_
              (lambda (_g1795217981_)
                (if (gx#stx-pair? _g1795217981_)
                    (let ((_e1795517983_ (gx#stx-e _g1795217981_)))
                      (let ((_hd1795617986_ (##car _e1795517983_))
                            (_tl1795717988_ (##cdr _e1795517983_)))
                        (if (gx#stx-pair? _tl1795717988_)
                            (let ((_e1795817991_ (gx#stx-e _tl1795717988_)))
                              (let ((_hd1795917994_ (##car _e1795817991_))
                                    (_tl1796017996_ (##cdr _e1795817991_)))
                                (if (gx#stx-pair? _hd1795917994_)
                                    (let ((_e1796117999_
                                           (gx#stx-e _hd1795917994_)))
                                      (let ((_hd1796218002_
                                             (##car _e1796117999_))
                                            (_tl1796318004_
                                             (##cdr _e1796117999_)))
                                        (if (gx#identifier? _hd1796218002_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1796218002_)
                                                (if (gx#stx-pair?
                                                     _tl1796318004_)
                                                    (let ((_e1796418007_
                                                           (gx#stx-e
                                                            _tl1796318004_)))
                                                      (let ((_hd1796518010_
                                                             (##car _e1796418007_))
                                                            (_tl1796618012_
                                                             (##cdr _e1796418007_)))
                                                        (if (gx#stx-null?
                                                             _tl1796618012_)
                                                            ((lambda (_L18015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18016_)
                       (let ((_type-e1803318035_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L18016_)
                               '#f)))
                         (if _type-e1803318035_
                             (let ((_type-e18038_ _type-e1803318035_))
                               (_type-e18038_ _stx17948_ _L18015_))
                             '#f)))
                     _tl1796017996_
                     _hd1796518010_)
                    (_g1795017978_ _g1795217981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1795017978_
                                                     _g1795217981_))
                                                (_g1795017978_ _g1795217981_))
                                            (_g1795017978_ _g1795217981_))))
                                    (_g1795017978_ _g1795217981_))))
                            (_g1795017978_ _g1795217981_))))
                    (_g1795017978_ _g1795217981_)))))
        (_g1794918040_ _stx17948_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17433_ _args17434_)
      (let* ((_g1743817551_
              (lambda (_g1743917548_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1743917548_)))
             (_g1743717558_
              (lambda (_g1743917554_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17433_))
                     '#f)))))
             (_g1743617765_
              (lambda (_g1743917561_)
                (if (gx#stx-pair? _g1743917561_)
                    (let ((_e1749917563_ (gx#stx-e _g1743917561_)))
                      (let ((_hd1750017566_ (##car _e1749917563_))
                            (_tl1750117568_ (##cdr _e1749917563_)))
                        (if (gx#stx-pair? _hd1750017566_)
                            (let ((_e1750217571_ (gx#stx-e _hd1750017566_)))
                              (let ((_hd1750317574_ (##car _e1750217571_))
                                    (_tl1750417576_ (##cdr _e1750217571_)))
                                (if (gx#identifier? _hd1750317574_)
                                    (if (gx#stx-eq? '%#quote _hd1750317574_)
                                        (if (gx#stx-pair? _tl1750417576_)
                                            (let ((_e1750517579_
                                                   (gx#stx-e _tl1750417576_)))
                                              (let ((_hd1750617582_
                                                     (##car _e1750517579_))
                                                    (_tl1750717584_
                                                     (##cdr _e1750517579_)))
                                                (if (gx#stx-null?
                                                     _tl1750717584_)
                                                    (if (gx#stx-pair?
                                                         _tl1750117568_)
                                                        (let ((_e1750817587_
                                                               (gx#stx-e
                                                                _tl1750117568_)))
                                                          (let ((_hd1750917590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1750817587_))
                        (_tl1751017592_ (##cdr _e1750817587_)))
                    (if (gx#stx-pair? _hd1750917590_)
                        (let ((_e1751117595_ (gx#stx-e _hd1750917590_)))
                          (let ((_hd1751217598_ (##car _e1751117595_))
                                (_tl1751317600_ (##cdr _e1751117595_)))
                            (if (gx#identifier? _hd1751217598_)
                                (if (gx#stx-eq? '%#ref _hd1751217598_)
                                    (if (gx#stx-pair? _tl1751317600_)
                                        (let ((_e1751417603_
                                               (gx#stx-e _tl1751317600_)))
                                          (let ((_hd1751517606_
                                                 (##car _e1751417603_))
                                                (_tl1751617608_
                                                 (##cdr _e1751417603_)))
                                            (if (gx#stx-null? _tl1751617608_)
                                                (if (gx#stx-pair?
                                                     _tl1751017592_)
                                                    (let ((_e1751717611_
                                                           (gx#stx-e
                                                            _tl1751017592_)))
                                                      (let ((_hd1751817614_
                                                             (##car _e1751717611_))
                                                            (_tl1751917616_
                                                             (##cdr _e1751717611_)))
                                                        (if (gx#stx-pair?
                                                             _hd1751817614_)
                                                            (let ((_e1752017619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1751817614_)))
                      (let ((_hd1752117622_ (##car _e1752017619_))
                            (_tl1752217624_ (##cdr _e1752017619_)))
                        (if (gx#identifier? _hd1752117622_)
                            (if (gx#stx-eq? '%#quote _hd1752117622_)
                                (if (gx#stx-pair? _tl1752217624_)
                                    (let ((_e1752317627_
                                           (gx#stx-e _tl1752217624_)))
                                      (let ((_hd1752417630_
                                             (##car _e1752317627_))
                                            (_tl1752517632_
                                             (##cdr _e1752317627_)))
                                        (if (gx#stx-null? _tl1752517632_)
                                            (if (gx#stx-pair? _tl1751917616_)
                                                (let ((_e1752617635_
                                                       (gx#stx-e
                                                        _tl1751917616_)))
                                                  (let ((_hd1752717638_
                                                         (##car _e1752617635_))
                                                        (_tl1752817640_
                                                         (##cdr _e1752617635_)))
                                                    (if (gx#stx-pair?
                                                         _tl1752817640_)
                                                        (let ((_e1752917643_
                                                               (gx#stx-e
                                                                _tl1752817640_)))
                                                          (let ((_hd1753017646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1752917643_))
                        (_tl1753117648_ (##cdr _e1752917643_)))
                    (if (gx#stx-pair? _hd1753017646_)
                        (let ((_e1753217651_ (gx#stx-e _hd1753017646_)))
                          (let ((_hd1753317654_ (##car _e1753217651_))
                                (_tl1753417656_ (##cdr _e1753217651_)))
                            (if (gx#identifier? _hd1753317654_)
                                (if (gx#stx-eq? '%#quote _hd1753317654_)
                                    (if (gx#stx-pair? _tl1753417656_)
                                        (let ((_e1753517659_
                                               (gx#stx-e _tl1753417656_)))
                                          (let ((_hd1753617662_
                                                 (##car _e1753517659_))
                                                (_tl1753717664_
                                                 (##cdr _e1753517659_)))
                                            (if (gx#stx-null? _tl1753717664_)
                                                (if (gx#stx-pair?
                                                     _tl1753117648_)
                                                    (let ((_e1753817667_
                                                           (gx#stx-e
                                                            _tl1753117648_)))
                                                      (let ((_hd1753917670_
                                                             (##car _e1753817667_))
                                                            (_tl1754017672_
                                                             (##cdr _e1753817667_)))
                                                        (if (gx#stx-pair?
                                                             _hd1753917670_)
                                                            (let ((_e1754117675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1753917670_)))
                      (let ((_hd1754217678_ (##car _e1754117675_))
                            (_tl1754317680_ (##cdr _e1754117675_)))
                        (if (gx#identifier? _hd1754217678_)
                            (if (gx#stx-eq? '%#quote _hd1754217678_)
                                (if (gx#stx-pair? _tl1754317680_)
                                    (let ((_e1754417683_
                                           (gx#stx-e _tl1754317680_)))
                                      (let ((_hd1754517686_
                                             (##car _e1754417683_))
                                            (_tl1754617688_
                                             (##cdr _e1754417683_)))
                                        (if (gx#stx-null? _tl1754617688_)
                                            ((lambda (_L17691_
                                                      _L17692_
                                                      _L17693_
                                                      _L17694_
                                                      _L17695_
                                                      _L17696_)
                                               (let* ((_super-t17742_
                                                       (if (gx#stx-e _L17695_)
                                                           (gxc#generate-runtime-binding-id
                                                            _L17695_)
                                                           '#f))
                                                      (_super-type17744_
                                                       (if _super-t17742_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t17742_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type17744_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type17744_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17433_
                _L17695_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields17760_
                                                          (gx#stx-e _L17694_))
                                                         (_xfields17761_
                                                          (if _super-type17744_
                                                              (let ((_super-fields1774617749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type17744_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1774717751_
                             (##structure-ref
                              _super-type17744_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1774617749_
                            (if _super-xfields1774717751_
                                (let ((_super-fields17754_
                                       _super-fields1774617749_)
                                      (_super-xfields17755_
                                       _super-xfields1774717751_))
                                  (fx+ _super-fields17754_
                                       _super-xfields17755_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist17762_ (gx#stx-e _L17692_))
                 (_ctor17763_
                  (let ((_$e17757_ (gx#stx-e _L17691_)))
                    (if _$e17757_
                        (values _$e17757_)
                        (if _super-type17744_
                            (##structure-ref
                             _super-type17744_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t17742_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27351
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27351
                                                          (gx#stx-e _L17696_)
                                                          _super-t17742_
                                                          _fields17760_
                                                          _xfields17761_
                                                          _ctor17763_
                                                          _plist17762_)
                                                         __obj27351))))))
                                             _hd1754517686_
                                             _hd1753617662_
                                             _hd1752717638_
                                             _hd1752417630_
                                             _hd1751517606_
                                             _hd1750617582_)
                                            (_g1743717558_ _g1743917561_))))
                                    (_g1743717558_ _g1743917561_))
                                (_g1743717558_ _g1743917561_))
                            (_g1743717558_ _g1743917561_))))
                    (_g1743717558_ _g1743917561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743717558_
                                                     _g1743917561_))
                                                (_g1743717558_
                                                 _g1743917561_))))
                                        (_g1743717558_ _g1743917561_))
                                    (_g1743717558_ _g1743917561_))
                                (_g1743717558_ _g1743917561_))))
                        (_g1743717558_ _g1743917561_))))
                (_g1743717558_ _g1743917561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743717558_ _g1743917561_))
                                            (_g1743717558_ _g1743917561_))))
                                    (_g1743717558_ _g1743917561_))
                                (_g1743717558_ _g1743917561_))
                            (_g1743717558_ _g1743917561_))))
                    (_g1743717558_ _g1743917561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743717558_
                                                     _g1743917561_))
                                                (_g1743717558_
                                                 _g1743917561_))))
                                        (_g1743717558_ _g1743917561_))
                                    (_g1743717558_ _g1743917561_))
                                (_g1743717558_ _g1743917561_))))
                        (_g1743717558_ _g1743917561_))))
                (_g1743717558_ _g1743917561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743717558_
                                                     _g1743917561_))))
                                            (_g1743717558_ _g1743917561_))
                                        (_g1743717558_ _g1743917561_))
                                    (_g1743717558_ _g1743917561_))))
                            (_g1743717558_ _g1743917561_))))
                    (_g1743717558_ _g1743917561_))))
             (_g1743517945_
              (lambda (_g1743917768_)
                (if (gx#stx-pair? _g1743917768_)
                    (let ((_e1744517770_ (gx#stx-e _g1743917768_)))
                      (let ((_hd1744617773_ (##car _e1744517770_))
                            (_tl1744717775_ (##cdr _e1744517770_)))
                        (if (gx#stx-pair? _hd1744617773_)
                            (let ((_e1744817778_ (gx#stx-e _hd1744617773_)))
                              (let ((_hd1744917781_ (##car _e1744817778_))
                                    (_tl1745017783_ (##cdr _e1744817778_)))
                                (if (gx#identifier? _hd1744917781_)
                                    (if (gx#stx-eq? '%#quote _hd1744917781_)
                                        (if (gx#stx-pair? _tl1745017783_)
                                            (let ((_e1745117786_
                                                   (gx#stx-e _tl1745017783_)))
                                              (let ((_hd1745217789_
                                                     (##car _e1745117786_))
                                                    (_tl1745317791_
                                                     (##cdr _e1745117786_)))
                                                (if (gx#stx-null?
                                                     _tl1745317791_)
                                                    (if (gx#stx-pair?
                                                         _tl1744717775_)
                                                        (let ((_e1745417794_
                                                               (gx#stx-e
                                                                _tl1744717775_)))
                                                          (let ((_hd1745517797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1745417794_))
                        (_tl1745617799_ (##cdr _e1745417794_)))
                    (if (gx#stx-pair? _hd1745517797_)
                        (let ((_e1745717802_ (gx#stx-e _hd1745517797_)))
                          (let ((_hd1745817805_ (##car _e1745717802_))
                                (_tl1745917807_ (##cdr _e1745717802_)))
                            (if (gx#identifier? _hd1745817805_)
                                (if (gx#stx-eq? '%#quote _hd1745817805_)
                                    (if (gx#stx-pair? _tl1745917807_)
                                        (let ((_e1746017810_
                                               (gx#stx-e _tl1745917807_)))
                                          (let ((_hd1746117813_
                                                 (##car _e1746017810_))
                                                (_tl1746217815_
                                                 (##cdr _e1746017810_)))
                                            (if (gx#stx-datum? _hd1746117813_)
                                                (if (equal? (gx#stx-e
                                                             _hd1746117813_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1746217815_)
                                                        (if (gx#stx-pair?
                                                             _tl1745617799_)
                                                            (let ((_e1746317818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1745617799_)))
                      (let ((_hd1746417821_ (##car _e1746317818_))
                            (_tl1746517823_ (##cdr _e1746317818_)))
                        (if (gx#stx-pair? _hd1746417821_)
                            (let ((_e1746617826_ (gx#stx-e _hd1746417821_)))
                              (let ((_hd1746717829_ (##car _e1746617826_))
                                    (_tl1746817831_ (##cdr _e1746617826_)))
                                (if (gx#identifier? _hd1746717829_)
                                    (if (gx#stx-eq? '%#quote _hd1746717829_)
                                        (if (gx#stx-pair? _tl1746817831_)
                                            (let ((_e1746917834_
                                                   (gx#stx-e _tl1746817831_)))
                                              (let ((_hd1747017837_
                                                     (##car _e1746917834_))
                                                    (_tl1747117839_
                                                     (##cdr _e1746917834_)))
                                                (if (gx#stx-null?
                                                     _tl1747117839_)
                                                    (if (gx#stx-pair?
                                                         _tl1746517823_)
                                                        (let ((_e1747217842_
                                                               (gx#stx-e
                                                                _tl1746517823_)))
                                                          (let ((_hd1747317845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1747217842_))
                        (_tl1747417847_ (##cdr _e1747217842_)))
                    (if (gx#stx-pair? _tl1747417847_)
                        (let ((_e1747517850_ (gx#stx-e _tl1747417847_)))
                          (let ((_hd1747617853_ (##car _e1747517850_))
                                (_tl1747717855_ (##cdr _e1747517850_)))
                            (if (gx#stx-pair? _hd1747617853_)
                                (let ((_e1747817858_
                                       (gx#stx-e _hd1747617853_)))
                                  (let ((_hd1747917861_ (##car _e1747817858_))
                                        (_tl1748017863_ (##cdr _e1747817858_)))
                                    (if (gx#identifier? _hd1747917861_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1747917861_)
                                            (if (gx#stx-pair? _tl1748017863_)
                                                (let ((_e1748117866_
                                                       (gx#stx-e
                                                        _tl1748017863_)))
                                                  (let ((_hd1748217869_
                                                         (##car _e1748117866_))
                                                        (_tl1748317871_
                                                         (##cdr _e1748117866_)))
                                                    (if (gx#stx-null?
                                                         _tl1748317871_)
                                                        (if (gx#stx-pair?
                                                             _tl1747717855_)
                                                            (let ((_e1748417874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1747717855_)))
                      (let ((_hd1748517877_ (##car _e1748417874_))
                            (_tl1748617879_ (##cdr _e1748417874_)))
                        (if (gx#stx-pair? _hd1748517877_)
                            (let ((_e1748717882_ (gx#stx-e _hd1748517877_)))
                              (let ((_hd1748817885_ (##car _e1748717882_))
                                    (_tl1748917887_ (##cdr _e1748717882_)))
                                (if (gx#identifier? _hd1748817885_)
                                    (if (gx#stx-eq? '%#quote _hd1748817885_)
                                        (if (gx#stx-pair? _tl1748917887_)
                                            (let ((_e1749017890_
                                                   (gx#stx-e _tl1748917887_)))
                                              (let ((_hd1749117893_
                                                     (##car _e1749017890_))
                                                    (_tl1749217895_
                                                     (##cdr _e1749017890_)))
                                                (if (gx#stx-null?
                                                     _tl1749217895_)
                                                    ((lambda (_L17898_
                                                              _L17899_
                                                              _L17900_
                                                              _L17901_
                                                              _L17902_)
                                                       (let ((__obj27352
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27352
                                                            (gx#stx-e _L17902_)
                                                            '#f
                                                            (gx#stx-e _L17901_)
                                                            '0
                                                            (gx#stx-e _L17898_)
                                                            (gx#stx-e
                                                             _L17899_))
                                                           __obj27352)))
                                                     _hd1749117893_
                                                     _hd1748217869_
                                                     _hd1747317845_
                                                     _hd1747017837_
                                                     _hd1745217789_)
                                                    (_g1743617765_
                                                     _g1743917768_))))
                                            (_g1743617765_ _g1743917768_))
                                        (_g1743617765_ _g1743917768_))
                                    (_g1743617765_ _g1743917768_))))
                            (_g1743617765_ _g1743917768_))))
                    (_g1743617765_ _g1743917768_))
                (_g1743617765_ _g1743917768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743617765_ _g1743917768_))
                                            (_g1743617765_ _g1743917768_))
                                        (_g1743617765_ _g1743917768_))))
                                (_g1743617765_ _g1743917768_))))
                        (_g1743617765_ _g1743917768_))))
                (_g1743617765_ _g1743917768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743617765_
                                                     _g1743917768_))))
                                            (_g1743617765_ _g1743917768_))
                                        (_g1743617765_ _g1743917768_))
                                    (_g1743617765_ _g1743917768_))))
                            (_g1743617765_ _g1743917768_))))
                    (_g1743617765_ _g1743917768_))
                (_g1743617765_ _g1743917768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743617765_
                                                     _g1743917768_))
                                                (_g1743617765_
                                                 _g1743917768_))))
                                        (_g1743617765_ _g1743917768_))
                                    (_g1743617765_ _g1743917768_))
                                (_g1743617765_ _g1743917768_))))
                        (_g1743617765_ _g1743917768_))))
                (_g1743617765_ _g1743917768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743617765_
                                                     _g1743917768_))))
                                            (_g1743617765_ _g1743917768_))
                                        (_g1743617765_ _g1743917768_))
                                    (_g1743617765_ _g1743917768_))))
                            (_g1743617765_ _g1743917768_))))
                    (_g1743617765_ _g1743917768_)))))
        (_g1743517945_ _args17434_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17359_ _args17360_)
      (let* ((_g1736317379_
              (lambda (_g1736417376_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1736417376_)))
             (_g1736217386_ (lambda (_g1736417382_) ((lambda () '#f))))
             (_g1736117430_
              (lambda (_g1736417389_)
                (if (gx#stx-pair? _g1736417389_)
                    (let ((_e1736617391_ (gx#stx-e _g1736417389_)))
                      (let ((_hd1736717394_ (##car _e1736617391_))
                            (_tl1736817396_ (##cdr _e1736617391_)))
                        (if (gx#stx-pair? _hd1736717394_)
                            (let ((_e1736917399_ (gx#stx-e _hd1736717394_)))
                              (let ((_hd1737017402_ (##car _e1736917399_))
                                    (_tl1737117404_ (##cdr _e1736917399_)))
                                (if (gx#identifier? _hd1737017402_)
                                    (if (gx#stx-eq? '%#ref _hd1737017402_)
                                        (if (gx#stx-pair? _tl1737117404_)
                                            (let ((_e1737217407_
                                                   (gx#stx-e _tl1737117404_)))
                                              (let ((_hd1737317410_
                                                     (##car _e1737217407_))
                                                    (_tl1737417412_
                                                     (##cdr _e1737217407_)))
                                                (if (gx#stx-null?
                                                     _tl1737417412_)
                                                    (if (gx#stx-null?
                                                         _tl1736817396_)
                                                        ((lambda (_L17415_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L17415_)))
                                                         _hd1737317410_)
                                                        (_g1736217386_
                                                         _g1736417389_))
                                                    (_g1736217386_
                                                     _g1736417389_))))
                                            (_g1736217386_ _g1736417389_))
                                        (_g1736217386_ _g1736417389_))
                                    (_g1736217386_ _g1736417389_))))
                            (_g1736217386_ _g1736417389_))))
                    (_g1736217386_ _g1736417389_)))))
        (_g1736117430_ _args17360_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17230_ _args17231_ _unchecked?17232_)
        (let* ((_g1723517261_
                (lambda (_g1723617258_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1723617258_)))
               (_g1723417268_ (lambda (_g1723617264_) ((lambda () '#f))))
               (_g1723317344_
                (lambda (_g1723617271_)
                  (if (gx#stx-pair? _g1723617271_)
                      (let ((_e1723917273_ (gx#stx-e _g1723617271_)))
                        (let ((_hd1724017276_ (##car _e1723917273_))
                              (_tl1724117278_ (##cdr _e1723917273_)))
                          (if (gx#stx-pair? _hd1724017276_)
                              (let ((_e1724217281_ (gx#stx-e _hd1724017276_)))
                                (let ((_hd1724317284_ (##car _e1724217281_))
                                      (_tl1724417286_ (##cdr _e1724217281_)))
                                  (if (gx#identifier? _hd1724317284_)
                                      (if (gx#stx-eq? '%#ref _hd1724317284_)
                                          (if (gx#stx-pair? _tl1724417286_)
                                              (let ((_e1724517289_
                                                     (gx#stx-e
                                                      _tl1724417286_)))
                                                (let ((_hd1724617292_
                                                       (##car _e1724517289_))
                                                      (_tl1724717294_
                                                       (##cdr _e1724517289_)))
                                                  (if (gx#stx-null?
                                                       _tl1724717294_)
                                                      (if (gx#stx-pair?
                                                           _tl1724117278_)
                                                          (let ((_e1724817297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1724117278_)))
                    (let ((_hd1724917300_ (##car _e1724817297_))
                          (_tl1725017302_ (##cdr _e1724817297_)))
                      (if (gx#stx-pair? _hd1724917300_)
                          (let ((_e1725117305_ (gx#stx-e _hd1724917300_)))
                            (let ((_hd1725217308_ (##car _e1725117305_))
                                  (_tl1725317310_ (##cdr _e1725117305_)))
                              (if (gx#identifier? _hd1725217308_)
                                  (if (gx#stx-eq? '%#quote _hd1725217308_)
                                      (if (gx#stx-pair? _tl1725317310_)
                                          (let ((_e1725417313_
                                                 (gx#stx-e _tl1725317310_)))
                                            (let ((_hd1725517316_
                                                   (##car _e1725417313_))
                                                  (_tl1725617318_
                                                   (##cdr _e1725417313_)))
                                              (if (gx#stx-null? _tl1725617318_)
                                                  (if (gx#stx-null?
                                                       _tl1725017302_)
                                                      ((lambda (_L17321_
                                                                _L17322_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17322_)
                                                          (gx#stx-e _L17321_)
                                                          _unchecked?17232_))
                                                       _hd1725517316_
                                                       _hd1724617292_)
                                                      (_g1723417268_
                                                       _g1723617271_))
                                                  (_g1723417268_
                                                   _g1723617271_))))
                                          (_g1723417268_ _g1723617271_))
                                      (_g1723417268_ _g1723617271_))
                                  (_g1723417268_ _g1723617271_))))
                          (_g1723417268_ _g1723617271_))))
                  (_g1723417268_ _g1723617271_))
              (_g1723417268_ _g1723617271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1723417268_ _g1723617271_))
                                          (_g1723417268_ _g1723617271_))
                                      (_g1723417268_ _g1723617271_))))
                              (_g1723417268_ _g1723617271_))))
                      (_g1723417268_ _g1723617271_)))))
          (_g1723317344_ _args17231_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17350_ _args17351_)
          (let ((_unchecked?17353_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17350_
             _args17351_
             _unchecked?17353_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27426_
          (let ((_g27425_ (length _g27426_)))
            (cond ((fx= _g27425_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27426_))
                  ((fx= _g27425_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27426_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27426_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17100_ _args17101_ _unchecked?17102_)
        (let* ((_g1710517131_
                (lambda (_g1710617128_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1710617128_)))
               (_g1710417138_ (lambda (_g1710617134_) ((lambda () '#f))))
               (_g1710317214_
                (lambda (_g1710617141_)
                  (if (gx#stx-pair? _g1710617141_)
                      (let ((_e1710917143_ (gx#stx-e _g1710617141_)))
                        (let ((_hd1711017146_ (##car _e1710917143_))
                              (_tl1711117148_ (##cdr _e1710917143_)))
                          (if (gx#stx-pair? _hd1711017146_)
                              (let ((_e1711217151_ (gx#stx-e _hd1711017146_)))
                                (let ((_hd1711317154_ (##car _e1711217151_))
                                      (_tl1711417156_ (##cdr _e1711217151_)))
                                  (if (gx#identifier? _hd1711317154_)
                                      (if (gx#stx-eq? '%#ref _hd1711317154_)
                                          (if (gx#stx-pair? _tl1711417156_)
                                              (let ((_e1711517159_
                                                     (gx#stx-e
                                                      _tl1711417156_)))
                                                (let ((_hd1711617162_
                                                       (##car _e1711517159_))
                                                      (_tl1711717164_
                                                       (##cdr _e1711517159_)))
                                                  (if (gx#stx-null?
                                                       _tl1711717164_)
                                                      (if (gx#stx-pair?
                                                           _tl1711117148_)
                                                          (let ((_e1711817167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1711117148_)))
                    (let ((_hd1711917170_ (##car _e1711817167_))
                          (_tl1712017172_ (##cdr _e1711817167_)))
                      (if (gx#stx-pair? _hd1711917170_)
                          (let ((_e1712117175_ (gx#stx-e _hd1711917170_)))
                            (let ((_hd1712217178_ (##car _e1712117175_))
                                  (_tl1712317180_ (##cdr _e1712117175_)))
                              (if (gx#identifier? _hd1712217178_)
                                  (if (gx#stx-eq? '%#quote _hd1712217178_)
                                      (if (gx#stx-pair? _tl1712317180_)
                                          (let ((_e1712417183_
                                                 (gx#stx-e _tl1712317180_)))
                                            (let ((_hd1712517186_
                                                   (##car _e1712417183_))
                                                  (_tl1712617188_
                                                   (##cdr _e1712417183_)))
                                              (if (gx#stx-null? _tl1712617188_)
                                                  (if (gx#stx-null?
                                                       _tl1712017172_)
                                                      ((lambda (_L17191_
                                                                _L17192_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17192_)
                                                          (gx#stx-e _L17191_)
                                                          _unchecked?17102_))
                                                       _hd1712517186_
                                                       _hd1711617162_)
                                                      (_g1710417138_
                                                       _g1710617141_))
                                                  (_g1710417138_
                                                   _g1710617141_))))
                                          (_g1710417138_ _g1710617141_))
                                      (_g1710417138_ _g1710617141_))
                                  (_g1710417138_ _g1710617141_))))
                          (_g1710417138_ _g1710617141_))))
                  (_g1710417138_ _g1710617141_))
              (_g1710417138_ _g1710617141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1710417138_ _g1710617141_))
                                          (_g1710417138_ _g1710617141_))
                                      (_g1710417138_ _g1710617141_))))
                              (_g1710417138_ _g1710617141_))))
                      (_g1710417138_ _g1710617141_)))))
          (_g1710317214_ _args17101_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17220_ _args17221_)
          (let ((_unchecked?17223_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17220_
             _args17221_
             _unchecked?17223_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27428_
          (let ((_g27427_ (length _g27428_)))
            (cond ((fx= _g27427_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27428_))
                  ((fx= _g27427_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27428_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27428_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17096_ _args17097_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17096_
       _args17097_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17093_ _args17094_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17093_
       _args17094_
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
    (lambda (_stx17042_)
      (let* ((_g1704417057_
              (lambda (_g1704517054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1704517054_)))
             (_g1704317090_
              (lambda (_g1704517060_)
                (if (gx#stx-pair? _g1704517060_)
                    (let ((_e1704717062_ (gx#stx-e _g1704517060_)))
                      (let ((_hd1704817065_ (##car _e1704717062_))
                            (_tl1704917067_ (##cdr _e1704717062_)))
                        (if (gx#stx-pair? _tl1704917067_)
                            (let ((_e1705017070_ (gx#stx-e _tl1704917067_)))
                              (let ((_hd1705117073_ (##car _e1705017070_))
                                    (_tl1705217075_ (##cdr _e1705017070_)))
                                (if (gx#stx-null? _tl1705217075_)
                                    ((lambda (_L17078_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L17078_)))
                                     _hd1705117073_)
                                    (_g1704417057_ _g1704517060_))))
                            (_g1704417057_ _g1704517060_))))
                    (_g1704417057_ _g1704517060_)))))
        (_g1704317090_ _stx17042_))))
  (define gxc#optimize-call%
    (lambda (_stx16948_)
      (let* ((_g1695116971_
              (lambda (_g1695216968_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1695216968_)))
             (_g1695016978_
              (lambda (_g1695216974_)
                ((lambda () (gxc#xform-call% _stx16948_)))))
             (_g1694917039_
              (lambda (_g1695216981_)
                (if (gx#stx-pair? _g1695216981_)
                    (let ((_e1695516983_ (gx#stx-e _g1695216981_)))
                      (let ((_hd1695616986_ (##car _e1695516983_))
                            (_tl1695716988_ (##cdr _e1695516983_)))
                        (if (gx#stx-pair? _tl1695716988_)
                            (let ((_e1695816991_ (gx#stx-e _tl1695716988_)))
                              (let ((_hd1695916994_ (##car _e1695816991_))
                                    (_tl1696016996_ (##cdr _e1695816991_)))
                                (if (gx#stx-pair? _hd1695916994_)
                                    (let ((_e1696116999_
                                           (gx#stx-e _hd1695916994_)))
                                      (let ((_hd1696217002_
                                             (##car _e1696116999_))
                                            (_tl1696317004_
                                             (##cdr _e1696116999_)))
                                        (if (gx#identifier? _hd1696217002_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1696217002_)
                                                (if (gx#stx-pair?
                                                     _tl1696317004_)
                                                    (let ((_e1696417007_
                                                           (gx#stx-e
                                                            _tl1696317004_)))
                                                      (let ((_hd1696517010_
                                                             (##car _e1696417007_))
                                                            (_tl1696617012_
                                                             (##cdr _e1696417007_)))
                                                        (if (gx#stx-null?
                                                             _tl1696617012_)
                                                            ((lambda (_L17015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17016_)
                       (let* ((_rator-id17034_
                               (gxc#generate-runtime-binding-id _L17016_))
                              (_rator-type17036_
                               (gxc#optimizer-resolve-type _rator-id17034_)))
                         (if (##structure-instance-of?
                              _rator-type17036_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17034_
                                '" => "
                                _rator-type17036_
                                '" "
                                (##structure-ref
                                 _rator-type17036_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17036_
                                'optimize-call
                                _stx16948_
                                _L17015_))
                             (if (not _rator-type17036_)
                                 (gxc#xform-call% _stx16948_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx16948_
                                  _rator-type17036_)))))
                     _tl1696016996_
                     _hd1696517010_)
                    (_g1695016978_ _g1695216981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695016978_
                                                     _g1695216981_))
                                                (_g1695016978_ _g1695216981_))
                                            (_g1695016978_ _g1695216981_))))
                                    (_g1695016978_ _g1695216981_))))
                            (_g1695016978_ _g1695216981_))))
                    (_g1695016978_ _g1695216981_)))))
        (_g1694917039_ _stx16948_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self16802_ _stx16803_ _args16804_)
      (let* ((_self1680516811_ _self16802_)
             (_E1680716815_
              (lambda () (error '"No clause matching" _self1680516811_)))
             (_K1680816940_
              (lambda (_struct-t16818_)
                (let* ((_struct-type16820_
                        (gxc#optimizer-resolve-type _struct-t16818_))
                       (_struct-type1682116835_ _struct-type16820_)
                       (_E1682516839_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1682116835_)))
                       (_else1682416843_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16803_
                           _struct-t16818_
                           _struct-type16820_)))
                       (_try-match1682316851_
                        (lambda ()
                          (let ((_K1682616848_
                                 (lambda () (gxc#xform-call% _stx16803_))))
                            (if (##eq? _struct-type1682116835_ '#f)
                                (_K1682616848_)
                                (_else1682416843_)))))
                       (_K1682716915_
                        (lambda (_plist16854_ _struct-type-id16855_)
                          (let* ((_g1685816868_
                                  (lambda (_g1685916865_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1685916865_)))
                                 (_g1685716875_
                                  (lambda (_g1685916871_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx16803_)))))
                                 (_g1685616912_
                                  (lambda (_g1685916878_)
                                    (if (gx#stx-pair? _g1685916878_)
                                        (let ((_e1686116880_
                                               (gx#stx-e _g1685916878_)))
                                          (let ((_hd1686216883_
                                                 (##car _e1686116880_))
                                                (_tl1686316885_
                                                 (##cdr _e1686116880_)))
                                            (if (gx#stx-null? _tl1686316885_)
                                                ((lambda (_L16888_)
                                                   (let ((_expr16909_
                                                          (gxc#compile-e
                                                           _L16888_))
                                                         (_op16910_
                                                          (if (if _plist16854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist16854_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op16910_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id16855_ '()))
                          (cons _expr16909_ '())))
              _stx16803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1686216883_)
                                                (_g1685716875_
                                                 _g1685916878_))))
                                        (_g1685716875_ _g1685916878_)))))
                            (_g1685616912_ _args16804_)))))
                  (if (##structure-instance-of?
                       _struct-type1682116835_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1682816918_
                              (##vector-ref _struct-type1682116835_ '1))
                             (_struct-type-id16921_ _e1682816918_)
                             (_e1682916923_
                              (##vector-ref _struct-type1682116835_ '2))
                             (_e1683016926_
                              (##vector-ref _struct-type1682116835_ '3))
                             (_e1683116929_
                              (##vector-ref _struct-type1682116835_ '4))
                             (_e1683216932_
                              (##vector-ref _struct-type1682116835_ '5))
                             (_e1683316935_
                              (##vector-ref _struct-type1682116835_ '6))
                             (_plist16938_ _e1683316935_))
                        (_K1682716915_ _plist16938_ _struct-type-id16921_))
                      (_try-match1682316851_))))))
        (if (##structure-instance-of?
             _self1680516811_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1680916943_ (##vector-ref _self1680516811_ '1))
                   (_struct-t16946_ _e1680916943_))
              (_K1680816940_ _struct-t16946_))
            (_E1680716815_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self16576_ _stx16577_ _args16578_)
      (let* ((_self1657916585_ _self16576_)
             (_E1658116589_
              (lambda () (error '"No clause matching" _self1657916585_)))
             (_K1658216672_
              (lambda (_struct-t16592_)
                (let* ((_struct-type16594_
                        (gxc#optimizer-resolve-type _struct-t16592_))
                       (_struct-type1659516608_ _struct-type16594_)
                       (_E1659916612_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1659516608_)))
                       (_else1659816616_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx16577_
                           _struct-t16592_
                           _struct-type16594_)))
                       (_try-match1659716624_
                        (lambda ()
                          (let ((_K1660016621_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t16592_)
                                     (gxc#xform-call% _stx16577_)))))
                            (if (##eq? _struct-type1659516608_ '#f)
                                (_K1660016621_)
                                (_else1659816616_)))))
                       (_K1660116646_
                        (lambda (_ctor16627_
                                 _xfields16628_
                                 _fields16629_
                                 _type-id16630_)
                          (let* ((_args16632_ (map gxc#compile-e _args16578_))
                                 (_$e16634_
                                  (if _ctor16627_
                                      (if _xfields16628_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type16594_
                                           _ctor16627_)
                                          '#f)
                                      '#f)))
                            (if _$e16634_
                                ((lambda (_kons16637_)
                                   (let ((_$obj16639_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj16639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t16592_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields16629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields16628_)
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
                                    (cons (cons '%#ref (cons _kons16637_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj16639_ '()))
                                                _args16632_)))
                              _stx16577_))
                            (cons (cons '%#ref (cons _$obj16639_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx16577_)))
                                 _$e16634_)
                                (if (let ((_$e16641_ _ctor16627_))
                                      (if _$e16641_
                                          _$e16641_
                                          (not _xfields16628_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t16592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args16632_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx16577_)
                                    (let ((_arity16644_
                                           (fx+ _fields16629_ _xfields16628_)))
                                      (if (fx= _arity16644_
                                               (length _args16632_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t16592_ '())) _args16632_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx16577_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx16577_
                                           _struct-t16592_
                                           _arity16644_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1659516608_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1660216649_
                              (##vector-ref _struct-type1659516608_ '1))
                             (_type-id16652_ _e1660216649_)
                             (_e1660316654_
                              (##vector-ref _struct-type1659516608_ '2))
                             (_e1660416657_
                              (##vector-ref _struct-type1659516608_ '3))
                             (_fields16660_ _e1660416657_)
                             (_e1660516662_
                              (##vector-ref _struct-type1659516608_ '4))
                             (_xfields16665_ _e1660516662_)
                             (_e1660616667_
                              (##vector-ref _struct-type1659516608_ '5))
                             (_ctor16670_ _e1660616667_))
                        (_K1660116646_
                         _ctor16670_
                         _xfields16665_
                         _fields16660_
                         _type-id16652_))
                      (_try-match1659716624_))))))
        (if (##structure-instance-of?
             _self1657916585_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1658316675_ (##vector-ref _self1657916585_ '1))
                   (_struct-t16678_ _e1658316675_))
              (_K1658216672_ _struct-t16678_))
            (_E1658116589_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16287_ _stx16288_ _args16289_)
      (let* ((_self1629016298_ _self16287_)
             (_E1629216302_
              (lambda () (error '"No clause matching" _self1629016298_)))
             (_K1629316436_
              (lambda (_unchecked?16305_ _off16306_ _struct-t16307_)
                (let* ((_struct-type16309_
                        (gxc#optimizer-resolve-type _struct-t16307_))
                       (_struct-type1631016324_ _struct-type16309_)
                       (_E1631416328_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1631016324_)))
                       (_else1631316332_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16288_
                           _struct-t16307_
                           _struct-type16309_)))
                       (_try-match1631216340_
                        (lambda ()
                          (let ((_K1631516337_
                                 (lambda () (gxc#xform-call% _stx16288_))))
                            (if (##eq? _struct-type1631016324_ '#f)
                                (_K1631516337_)
                                (_else1631316332_)))))
                       (_K1631616407_
                        (lambda (_plist16343_
                                 _xfields16344_
                                 _fields16345_
                                 _struct-type-id16346_)
                          (if _xfields16344_
                              (let* ((_g1634916359_
                                      (lambda (_g1635016356_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1635016356_)))
                                     (_g1634816366_
                                      (lambda (_g1635016362_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16288_)))))
                                     (_g1634716404_
                                      (lambda (_g1635016369_)
                                        (if (gx#stx-pair? _g1635016369_)
                                            (let ((_e1635216371_
                                                   (gx#stx-e _g1635016369_)))
                                              (let ((_hd1635316374_
                                                     (##car _e1635216371_))
                                                    (_tl1635416376_
                                                     (##cdr _e1635216371_)))
                                                (if (gx#stx-null?
                                                     _tl1635416376_)
                                                    ((lambda (_L16379_)
                                                       (let ((_expr16400_
                                                              (gxc#compile-e
                                                               _L16379_))
                                                             (_off16401_
                                                              (fx+ _off16306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16344_
                           '1))
                     (_op16402_
                      (if _unchecked?16305_
                          '%#struct-unchecked-ref
                          (if (if _plist16343_
                                  (assgetq 'final: _plist16343_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16402_
                        (cons (cons '%#ref (cons _struct-t16307_ '()))
                              (cons (cons '%#quote (cons _off16401_ '()))
                                    (cons _expr16400_ '()))))
                  _stx16288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1635316374_)
                                                    (_g1634816366_
                                                     _g1635016369_))))
                                            (_g1634816366_ _g1635016369_)))))
                                (_g1634716404_ _args16289_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16346_)
                                (gxc#xform-call% _stx16288_))))))
                  (if (##structure-instance-of?
                       _struct-type1631016324_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1631716410_
                              (##vector-ref _struct-type1631016324_ '1))
                             (_struct-type-id16413_ _e1631716410_)
                             (_e1631816415_
                              (##vector-ref _struct-type1631016324_ '2))
                             (_e1631916418_
                              (##vector-ref _struct-type1631016324_ '3))
                             (_fields16421_ _e1631916418_)
                             (_e1632016423_
                              (##vector-ref _struct-type1631016324_ '4))
                             (_xfields16426_ _e1632016423_)
                             (_e1632116428_
                              (##vector-ref _struct-type1631016324_ '5))
                             (_e1632216431_
                              (##vector-ref _struct-type1631016324_ '6))
                             (_plist16434_ _e1632216431_))
                        (_K1631616407_
                         _plist16434_
                         _xfields16426_
                         _fields16421_
                         _struct-type-id16413_))
                      (_try-match1631216340_))))))
        (if (##structure-instance-of?
             _self1629016298_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1629416439_ (##vector-ref _self1629016298_ '1))
                   (_struct-t16442_ _e1629416439_)
                   (_e1629516444_ (##vector-ref _self1629016298_ '2))
                   (_off16447_ _e1629516444_)
                   (_e1629616449_ (##vector-ref _self1629016298_ '3))
                   (_unchecked?16452_ _e1629616449_))
              (_K1629316436_ _unchecked?16452_ _off16447_ _struct-t16442_))
            (_E1629216302_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self15981_ _stx15982_ _args15983_)
      (let* ((_self1598415992_ _self15981_)
             (_E1598615996_
              (lambda () (error '"No clause matching" _self1598415992_)))
             (_K1598716147_
              (lambda (_unchecked?15999_ _off16000_ _struct-t16001_)
                (let* ((_struct-type16003_
                        (gxc#optimizer-resolve-type _struct-t16001_))
                       (_struct-type1600416018_ _struct-type16003_)
                       (_E1600816022_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1600416018_)))
                       (_else1600716026_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15982_
                           _struct-t16001_
                           _struct-type16003_)))
                       (_try-match1600616034_
                        (lambda ()
                          (let ((_K1600916031_
                                 (lambda () (gxc#xform-call% _stx15982_))))
                            (if (##eq? _struct-type1600416018_ '#f)
                                (_K1600916031_)
                                (_else1600716026_)))))
                       (_K1601016118_
                        (lambda (_plist16037_
                                 _xfields16038_
                                 _fields16039_
                                 _struct-type-id16040_)
                          (if _xfields16038_
                              (let* ((_g1604316057_
                                      (lambda (_g1604416054_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1604416054_)))
                                     (_g1604216064_
                                      (lambda (_g1604416060_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx15982_)))))
                                     (_g1604116115_
                                      (lambda (_g1604416067_)
                                        (if (gx#stx-pair? _g1604416067_)
                                            (let ((_e1604716069_
                                                   (gx#stx-e _g1604416067_)))
                                              (let ((_hd1604816072_
                                                     (##car _e1604716069_))
                                                    (_tl1604916074_
                                                     (##cdr _e1604716069_)))
                                                (if (gx#stx-pair?
                                                     _tl1604916074_)
                                                    (let ((_e1605016077_
                                                           (gx#stx-e
                                                            _tl1604916074_)))
                                                      (let ((_hd1605116080_
                                                             (##car _e1605016077_))
                                                            (_tl1605216082_
                                                             (##cdr _e1605016077_)))
                                                        (if (gx#stx-null?
                                                             _tl1605216082_)
                                                            ((lambda (_L16085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16086_)
                       (let ((_expr16110_ (gxc#compile-e _L16086_))
                             (_val16111_ (gxc#compile-e _L16085_))
                             (_off16112_ (fx+ _off16000_ _xfields16038_ '1))
                             (_op16113_
                              (if _unchecked?15999_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16037_
                                          (assgetq 'final: _plist16037_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16113_
                                (cons (cons '%#ref (cons _struct-t16001_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16112_ '()))
                                            (cons _expr16110_
                                                  (cons _val16111_ '())))))
                          _stx15982_)))
                     _hd1605116080_
                     _hd1604816072_)
                    (_g1604216064_ _g1604416067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1604216064_
                                                     _g1604416067_))))
                                            (_g1604216064_ _g1604416067_)))))
                                (_g1604116115_ _args15983_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16040_)
                                (gxc#xform-call% _stx15982_))))))
                  (if (##structure-instance-of?
                       _struct-type1600416018_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1601116121_
                              (##vector-ref _struct-type1600416018_ '1))
                             (_struct-type-id16124_ _e1601116121_)
                             (_e1601216126_
                              (##vector-ref _struct-type1600416018_ '2))
                             (_e1601316129_
                              (##vector-ref _struct-type1600416018_ '3))
                             (_fields16132_ _e1601316129_)
                             (_e1601416134_
                              (##vector-ref _struct-type1600416018_ '4))
                             (_xfields16137_ _e1601416134_)
                             (_e1601516139_
                              (##vector-ref _struct-type1600416018_ '5))
                             (_e1601616142_
                              (##vector-ref _struct-type1600416018_ '6))
                             (_plist16145_ _e1601616142_))
                        (_K1601016118_
                         _plist16145_
                         _xfields16137_
                         _fields16132_
                         _struct-type-id16124_))
                      (_try-match1600616034_))))))
        (if (##structure-instance-of?
             _self1598415992_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1598816150_ (##vector-ref _self1598415992_ '1))
                   (_struct-t16153_ _e1598816150_)
                   (_e1598916155_ (##vector-ref _self1598415992_ '2))
                   (_off16158_ _e1598916155_)
                   (_e1599016160_ (##vector-ref _self1598415992_ '3))
                   (_unchecked?16163_ _e1599016160_))
              (_K1598716147_ _unchecked?16163_ _off16158_ _struct-t16153_))
            (_E1598615996_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self15815_ _stx15816_ _args15817_)
      (let* ((_self1581815827_ _self15815_)
             (_E1582015831_
              (lambda () (error '"No clause matching" _self1581815827_)))
             (_K1582115838_
              (lambda (_inline15834_ _dispatch15835_ _arity15836_)
                (begin
                  (if (gxc#!lambda-arity-match? _self15815_ _args15817_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx15816_
                       _arity15836_))
                  (if _inline15834_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline15834_ _stx15816_)
                          _stx15816_)))
                      (if _dispatch15835_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch15835_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch15835_ '()))
                                          _args15817_))
                              _stx15816_)))
                          (gxc#xform-call% _stx15816_)))))))
        (if (##structure-instance-of?
             _self1581815827_
             (##type-id gxc#!lambda::t))
            (let* ((_e1582215841_ (##vector-ref _self1581815827_ '1))
                   (_e1582315844_ (##vector-ref _self1581815827_ '2))
                   (_arity15847_ _e1582315844_)
                   (_e1582415849_ (##vector-ref _self1581815827_ '3))
                   (_dispatch15852_ _e1582415849_)
                   (_e1582515854_ (##vector-ref _self1581815827_ '4))
                   (_inline15857_ _e1582515854_))
              (_K1582115838_ _inline15857_ _dispatch15852_ _arity15847_))
            (_E1582015831_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self15654_ _stx15655_ _args15656_)
      (let* ((_self1565715664_ _self15654_)
             (_E1565915668_
              (lambda () (error '"No clause matching" _self1565715664_)))
             (_K1566015682_
              (lambda (_clauses15671_)
                (let ((_$e15677_
                       (find (lambda (_g1567215674_)
                               (gxc#!lambda-arity-match?
                                _g1567215674_
                                _args15656_))
                             _clauses15671_)))
                  (if _$e15677_
                      ((lambda (_clause15680_)
                         (call-method
                          _clause15680_
                          'optimize-call
                          _stx15655_
                          _args15656_))
                       _$e15677_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx15655_
                       (map gxc#!lambda-arity _clauses15671_)))))))
        (if (##structure-instance-of?
             _self1565715664_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1566115685_ (##vector-ref _self1565715664_ '1))
                   (_e1566215688_ (##vector-ref _self1565715664_ '2))
                   (_clauses15691_ _e1566215688_))
              (_K1566015682_ _clauses15691_))
            (_E1565915668_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15468_ _args15469_)
      (let* ((_self1547015477_ _self15468_)
             (_E1547215481_
              (lambda () (error '"No clause matching" _self1547015477_)))
             (_K1547315521_
              (lambda (_arity15484_)
                (let* ((_arity1548515494_ _arity15484_)
                       (_E1548815498_
                        (lambda ()
                          (error '"No clause matching" _arity1548515494_)))
                       (_try-match1548715514_
                        (lambda ()
                          (let ((_K1548915504_
                                 (lambda (_arity15502_)
                                   (fx>= (length _args15469_) _arity15502_))))
                            (if (##pair? _arity1548515494_)
                                (let ((_hd1549015507_
                                       (##car _arity1548515494_))
                                      (_tl1549115509_
                                       (##cdr _arity1548515494_)))
                                  (let ((_arity15512_ _hd1549015507_))
                                    (if (##null? _tl1549115509_)
                                        (_K1548915504_ _arity15512_)
                                        (_E1548815498_))))
                                (_E1548815498_)))))
                       (_K1549215518_
                        (lambda () (fx= (length _args15469_) _arity15484_))))
                  (if (fixnum? _arity1548515494_)
                      (_K1549215518_)
                      (_try-match1548715514_))))))
        (if (##structure-instance-of?
             _self1547015477_
             (##type-id gxc#!lambda::t))
            (let* ((_e1547415524_ (##vector-ref _self1547015477_ '1))
                   (_e1547515527_ (##vector-ref _self1547015477_ '2))
                   (_arity15530_ _e1547515527_))
              (_K1547315521_ _arity15530_))
            (_E1547215481_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15353_ _stx15354_ _args15355_)
      (let* ((_self1535615364_ _self15353_)
             (_E1535815368_
              (lambda () (error '"No clause matching" _self1535615364_)))
             (_K1535915452_
              (lambda (_dispatch15371_ _table15372_)
                (let* ((_g1537315382_
                        (gxc#optimizer-lookup-type _dispatch15371_))
                       (_E1537615386_
                        (lambda ()
                          (error '"No clause matching" _g1537315382_)))
                       (_else1537515390_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15371_)
                            (gxc#xform-call% _stx15354_))))
                       (_K1537715436_
                        (lambda (_main15393_ _keys15394_)
                          (let ((_g27429_
                                 (gxc#!kw-lambda-split-args
                                  _stx15354_
                                  _args15355_)))
                            (begin
                              (let ((_g27430_ (values-count _g27429_)))
                                (if (not (fx= _g27430_ 2))
                                    (error "Context expects 2 values"
                                           _g27430_)))
                              (let ((_pargs15396_ (values-ref _g27429_ 0))
                                    (_kwargs15397_ (values-ref _g27429_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15393_)
                                  (if _table15372_
                                      (let ((_xargs15404_
                                             (map (lambda (_key15399_)
                                                    (let ((_$e15401_
                                                           (assgetq _key15399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15397_)))
              (if _$e15401_ (values _$e15401_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15394_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15406_)
                                             (if (memq (car _kw15406_)
                                                       _keys15394_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx15354_
                                                  _keys15394_
                                                  _kw15406_)))
                                           _kwargs15397_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15396_ _xargs15404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15354_))))
                                      (let* ((_kwt15408_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15411_
                                              (map (lambda (_g27431_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15397_))
                                             (_kwbind15416_
                                              (map (lambda (_kw15413_
                                                            _kwvar15414_)
                                                     (cons (cons _kwvar15414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15413_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15397_
                                                   _kwvars15411_))
                                             (_kwset15421_
                                              (map (lambda (_kw15418_
                                                            _kwvar15419_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15408_ '()))
                               (cons (cons '%#quote (cons (car _kw15418_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15419_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15397_
                                                   _kwvars15411_))
                                             (_xkwargs15426_
                                              (map (lambda (_kw15423_
                                                            _kwvar15424_)
                                                     (cons (car _kw15423_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15424_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15397_
                                                   _kwvars15411_))
                                             (_xargs15433_
                                              (map (lambda (_key15428_)
                                                     (let ((_$e15430_
                                                            (assgetq _key15428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15426_)))
               (if _$e15430_ (values _$e15430_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15394_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15416_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15408_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15397_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15354_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15393_ '()))
                               (cons (cons '%#ref (cons _kwt15408_ '()))
                                     (foldr1 cons _pargs15396_ _xargs15433_))))
                   _stx15354_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15421_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15354_)))))))))))
                  (if (##structure-instance-of?
                       _g1537315382_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1537815439_ (##vector-ref _g1537315382_ '1))
                             (_e1537915442_ (##vector-ref _g1537315382_ '2))
                             (_keys15445_ _e1537915442_)
                             (_e1538015447_ (##vector-ref _g1537315382_ '3))
                             (_main15450_ _e1538015447_))
                        (_K1537715436_ _main15450_ _keys15445_))
                      (_else1537515390_))))))
        (if (##structure-instance-of?
             _self1535615364_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1536015455_ (##vector-ref _self1535615364_ '1))
                   (_e1536115458_ (##vector-ref _self1535615364_ '2))
                   (_table15461_ _e1536115458_)
                   (_e1536215463_ (##vector-ref _self1535615364_ '3))
                   (_dispatch15466_ _e1536215463_))
              (_K1535915452_ _dispatch15466_ _table15461_))
            (_E1535815368_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx14976_ _args14977_)
      (let _lp14979_ ((_rest14981_ _args14977_)
                      (_pargs14982_ '())
                      (_kwargs14983_ '()))
        (let* ((_g1498915039_
                (lambda (_g1499015036_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1499015036_)))
               (_g1498815046_
                (lambda (_g1499015042_)
                  (if (gx#stx-null? _g1499015042_)
                      ((lambda ()
                         (values (reverse _pargs14982_)
                                 (reverse _kwargs14983_))))
                      (_g1498915039_ _g1499015042_))))
               (_g1498715074_
                (lambda (_g1499015049_)
                  (if (gx#stx-pair? _g1499015049_)
                      (let ((_e1503215051_ (gx#stx-e _g1499015049_)))
                        (let ((_hd1503315054_ (##car _e1503215051_))
                              (_tl1503415056_ (##cdr _e1503215051_)))
                          ((lambda (_L15059_ _L15060_)
                             (_lp14979_
                              _L15059_
                              (cons _L15060_ _pargs14982_)
                              _kwargs14983_))
                           _tl1503415056_
                           _hd1503315054_)))
                      (_g1498815046_ _g1499015049_))))
               (_g1498615132_
                (lambda (_g1499015077_)
                  (if (gx#stx-pair? _g1499015077_)
                      (let ((_e1501815079_ (gx#stx-e _g1499015077_)))
                        (let ((_hd1501915082_ (##car _e1501815079_))
                              (_tl1502015084_ (##cdr _e1501815079_)))
                          (if (gx#stx-pair? _hd1501915082_)
                              (let ((_e1502115087_ (gx#stx-e _hd1501915082_)))
                                (let ((_hd1502215090_ (##car _e1502115087_))
                                      (_tl1502315092_ (##cdr _e1502115087_)))
                                  (if (gx#identifier? _hd1502215090_)
                                      (if (gx#stx-eq? '%#quote _hd1502215090_)
                                          (if (gx#stx-pair? _tl1502315092_)
                                              (let ((_e1502415095_
                                                     (gx#stx-e
                                                      _tl1502315092_)))
                                                (let ((_hd1502515098_
                                                       (##car _e1502415095_))
                                                      (_tl1502615100_
                                                       (##cdr _e1502415095_)))
                                                  (if (gx#stx-null?
                                                       _tl1502615100_)
                                                      (if (gx#stx-pair?
                                                           _tl1502015084_)
                                                          (let ((_e1502715103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1502015084_)))
                    (let ((_hd1502815106_ (##car _e1502715103_))
                          (_tl1502915108_ (##cdr _e1502715103_)))
                      ((lambda (_L15111_ _L15112_ _L15113_)
                         (if (gx#stx-keyword? _L15113_)
                             (let ((_kw15130_ (gx#stx-e _L15113_)))
                               (if (assq _kw15130_ _kwargs14983_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx14976_
                                    _kw15130_)
                                   (_lp14979_
                                    _L15111_
                                    _pargs14982_
                                    (cons (cons _kw15130_ _L15112_)
                                          _kwargs14983_))))
                             (_g1498715074_ _g1499015077_)))
                       _tl1502915108_
                       _hd1502815106_
                       _hd1502515098_)))
                  (_g1498715074_ _g1499015077_))
              (_g1498715074_ _g1499015077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498715074_ _g1499015077_))
                                          (_g1498715074_ _g1499015077_))
                                      (_g1498715074_ _g1499015077_))))
                              (_g1498715074_ _g1499015077_))))
                      (_g1498715074_ _g1499015077_))))
               (_g1498515174_
                (lambda (_g1499015135_)
                  (if (gx#stx-pair? _g1499015135_)
                      (let ((_e1500615137_ (gx#stx-e _g1499015135_)))
                        (let ((_hd1500715140_ (##car _e1500615137_))
                              (_tl1500815142_ (##cdr _e1500615137_)))
                          (if (gx#stx-pair? _hd1500715140_)
                              (let ((_e1500915145_ (gx#stx-e _hd1500715140_)))
                                (let ((_hd1501015148_ (##car _e1500915145_))
                                      (_tl1501115150_ (##cdr _e1500915145_)))
                                  (if (gx#identifier? _hd1501015148_)
                                      (if (gx#stx-eq? '%#quote _hd1501015148_)
                                          (if (gx#stx-pair? _tl1501115150_)
                                              (let ((_e1501215153_
                                                     (gx#stx-e
                                                      _tl1501115150_)))
                                                (let ((_hd1501315156_
                                                       (##car _e1501215153_))
                                                      (_tl1501415158_
                                                       (##cdr _e1501215153_)))
                                                  (if (gx#stx-datum?
                                                       _hd1501315156_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1501315156_)
                          '#!rest)
                  (if (gx#stx-null? _tl1501415158_)
                      ((lambda (_L15161_)
                         (values (foldl1 cons _L15161_ _pargs14982_)
                                 (reverse _kwargs14983_)))
                       _tl1500815142_)
                      (_g1498615132_ _g1499015135_))
                  (_g1498615132_ _g1499015135_))
              (_g1498615132_ _g1499015135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498615132_ _g1499015135_))
                                          (_g1498615132_ _g1499015135_))
                                      (_g1498615132_ _g1499015135_))))
                              (_g1498615132_ _g1499015135_))))
                      (_g1498615132_ _g1499015135_))))
               (_g1498415228_
                (lambda (_g1499015177_)
                  (if (gx#stx-pair? _g1499015177_)
                      (let ((_e1499315179_ (gx#stx-e _g1499015177_)))
                        (let ((_hd1499415182_ (##car _e1499315179_))
                              (_tl1499515184_ (##cdr _e1499315179_)))
                          (if (gx#stx-pair? _hd1499415182_)
                              (let ((_e1499615187_ (gx#stx-e _hd1499415182_)))
                                (let ((_hd1499715190_ (##car _e1499615187_))
                                      (_tl1499815192_ (##cdr _e1499615187_)))
                                  (if (gx#identifier? _hd1499715190_)
                                      (if (gx#stx-eq? '%#quote _hd1499715190_)
                                          (if (gx#stx-pair? _tl1499815192_)
                                              (let ((_e1499915195_
                                                     (gx#stx-e
                                                      _tl1499815192_)))
                                                (let ((_hd1500015198_
                                                       (##car _e1499915195_))
                                                      (_tl1500115200_
                                                       (##cdr _e1499915195_)))
                                                  (if (gx#stx-datum?
                                                       _hd1500015198_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1500015198_)
                          '#!key)
                  (if (gx#stx-null? _tl1500115200_)
                      (if (gx#stx-pair? _tl1499515184_)
                          (let ((_e1500215203_ (gx#stx-e _tl1499515184_)))
                            (let ((_hd1500315206_ (##car _e1500215203_))
                                  (_tl1500415208_ (##cdr _e1500215203_)))
                              ((lambda (_L15211_ _L15212_)
                                 (_lp14979_
                                  _L15211_
                                  (cons _L15212_ _pargs14982_)
                                  _kwargs14983_))
                               _tl1500415208_
                               _hd1500315206_)))
                          (_g1498515174_ _g1499015177_))
                      (_g1498515174_ _g1499015177_))
                  (_g1498515174_ _g1499015177_))
              (_g1498515174_ _g1499015177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498515174_ _g1499015177_))
                                          (_g1498515174_ _g1499015177_))
                                      (_g1498515174_ _g1499015177_))))
                              (_g1498515174_ _g1499015177_))))
                      (_g1498515174_ _g1499015177_)))))
          (_g1498415228_ _rest14981_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self14972_ _stx14973_ _args14974_) (gxc#xform-call% _stx14973_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#generate-ssxi-module%
    (lambda (_stx14790_)
      (let* ((_g1479214806_
              (lambda (_g1479314803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1479314803_)))
             (_g1479114847_
              (lambda (_g1479314809_)
                (if (gx#stx-pair? _g1479314809_)
                    (let ((_e1479614811_ (gx#stx-e _g1479314809_)))
                      (let ((_hd1479714814_ (##car _e1479614811_))
                            (_tl1479814816_ (##cdr _e1479614811_)))
                        (if (gx#stx-pair? _tl1479814816_)
                            (let ((_e1479914819_ (gx#stx-e _tl1479814816_)))
                              (let ((_hd1480014822_ (##car _e1479914819_))
                                    (_tl1480114824_ (##cdr _e1479914819_)))
                                ((lambda (_L14827_ _L14828_)
                                   (let* ((_ctx14841_
                                           (gx#syntax-local-e__0 _L14828_))
                                          (_code14843_
                                           (##structure-ref
                                            _ctx14841_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14843_))
                                      gx#current-expander-context
                                      _ctx14841_)))
                                 _tl1480114824_
                                 _hd1480014822_)))
                            (_g1479214806_ _g1479314809_))))
                    (_g1479214806_ _g1479314809_)))))
        (_g1479114847_ _stx14790_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14600_)
      (letrec ((_generate-e14602_
                (lambda (_id14779_)
                  (let* ((_sym14781_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14779_)
                              '#f))
                         (_$e14783_
                          (if _sym14781_
                              (gxc#optimizer-lookup-type _sym14781_)
                              '#f)))
                    (if _$e14783_
                        ((lambda (_type14786_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14781_)
                             (let ((_typedecl14788_
                                    (call-method _type14786_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14781_
                                           (cons _typedecl14788_ '()))))))
                         _$e14783_)
                        '(begin))))))
        (let* ((_g1460514643_
                (lambda (_g1460614640_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1460614640_)))
               (_g1460414724_
                (lambda (_g1460614646_)
                  (if (gx#stx-pair? _g1460614646_)
                      (let ((_e1462114648_ (gx#stx-e _g1460614646_)))
                        (let ((_hd1462214651_ (##car _e1462114648_))
                              (_tl1462314653_ (##cdr _e1462114648_)))
                          (if (gx#stx-pair? _tl1462314653_)
                              (let ((_e1462414656_ (gx#stx-e _tl1462314653_)))
                                (let ((_hd1462514659_ (##car _e1462414656_))
                                      (_tl1462614661_ (##cdr _e1462414656_)))
                                  (if (gx#stx-pair/null? _hd1462514659_)
                                      (if (fx>= (gx#stx-length _hd1462514659_)
                                                '0)
                                          (let ((_g27432_
                                                 (gx#syntax-split-splice
                                                  _hd1462514659_
                                                  '0)))
                                            (begin
                                              (let ((_g27433_
                                                     (values-count _g27432_)))
                                                (if (not (fx= _g27433_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27433_)))
                                              (let ((_target1462714664_
                                                     (values-ref _g27432_ 0))
                                                    (_tl1462914666_
                                                     (values-ref _g27432_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1462914666_)
                                                    (letrec ((_loop1463014669_
                                                              (lambda (_hd1462814672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1463414674_)
                        (if (gx#stx-pair? _hd1462814672_)
                            (let ((_e1463114677_ (gx#stx-e _hd1462814672_)))
                              (let ((_lp-hd1463214680_ (##car _e1463114677_))
                                    (_lp-tl1463314682_ (##cdr _e1463114677_)))
                                (_loop1463014669_
                                 _lp-tl1463314682_
                                 (cons _lp-hd1463214680_ _id1463414674_))))
                            (let ((_id1463514685_ (reverse _id1463414674_)))
                              (if (gx#stx-pair? _tl1462614661_)
                                  (let ((_e1463614688_
                                         (gx#stx-e _tl1462614661_)))
                                    (let ((_hd1463714691_
                                           (##car _e1463614688_))
                                          (_tl1463814693_
                                           (##cdr _e1463614688_)))
                                      (if (gx#stx-null? _tl1463814693_)
                                          ((lambda (_L14696_)
                                             (let ((_types14722_
                                                    (map _generate-e14602_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1471414717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1471514719_)
                             (cons _g1471414717_ _g1471514719_))
                           '()
                           _L14696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14722_)))
                                           _id1463514685_)
                                          (_g1460514643_ _g1460614646_))))
                                  (_g1460514643_ _g1460614646_)))))))
              (_loop1463014669_ _target1462714664_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1460514643_
                                                     _g1460614646_)))))
                                          (_g1460514643_ _g1460614646_))
                                      (_g1460514643_ _g1460614646_))))
                              (_g1460514643_ _g1460614646_))))
                      (_g1460514643_ _g1460614646_))))
               (_g1460314776_
                (lambda (_g1460614727_)
                  (if (gx#stx-pair? _g1460614727_)
                      (let ((_e1460814729_ (gx#stx-e _g1460614727_)))
                        (let ((_hd1460914732_ (##car _e1460814729_))
                              (_tl1461014734_ (##cdr _e1460814729_)))
                          (if (gx#stx-pair? _tl1461014734_)
                              (let ((_e1461114737_ (gx#stx-e _tl1461014734_)))
                                (let ((_hd1461214740_ (##car _e1461114737_))
                                      (_tl1461314742_ (##cdr _e1461114737_)))
                                  (if (gx#stx-pair? _hd1461214740_)
                                      (let ((_e1461414745_
                                             (gx#stx-e _hd1461214740_)))
                                        (let ((_hd1461514748_
                                               (##car _e1461414745_))
                                              (_tl1461614750_
                                               (##cdr _e1461414745_)))
                                          (if (gx#stx-null? _tl1461614750_)
                                              (if (gx#stx-pair? _tl1461314742_)
                                                  (let ((_e1461714753_
                                                         (gx#stx-e
                                                          _tl1461314742_)))
                                                    (let ((_hd1461814756_
                                                           (##car _e1461714753_))
                                                          (_tl1461914758_
                                                           (##cdr _e1461714753_)))
                                                      (if (gx#stx-null?
                                                           _tl1461914758_)
                                                          ((lambda (_L14761_)
                                                             (_generate-e14602_
                                                              _L14761_))
                                                           _hd1461514748_)
                                                          (_g1460414724_
                                                           _g1460614727_))))
                                                  (_g1460414724_
                                                   _g1460614727_))
                                              (_g1460414724_ _g1460614727_))))
                                      (_g1460414724_ _g1460614727_))))
                              (_g1460414724_ _g1460614727_))))
                      (_g1460414724_ _g1460614727_)))))
          (_g1460314776_ _stx14600_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14154_)
      (let* ((_g1415814260_
              (lambda (_g1415914257_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1415914257_)))
             (_g1415714267_ (lambda (_g1415914263_) ((lambda () '(begin)))))
             (_g1415614417_
              (lambda (_g1415914270_)
                (if (gx#stx-pair? _g1415914270_)
                    (let ((_e1421714272_ (gx#stx-e _g1415914270_)))
                      (let ((_hd1421814275_ (##car _e1421714272_))
                            (_tl1421914277_ (##cdr _e1421714272_)))
                        (if (gx#stx-pair? _tl1421914277_)
                            (let ((_e1422014280_ (gx#stx-e _tl1421914277_)))
                              (let ((_hd1422114283_ (##car _e1422014280_))
                                    (_tl1422214285_ (##cdr _e1422014280_)))
                                (if (gx#stx-pair? _hd1422114283_)
                                    (let ((_e1422314288_
                                           (gx#stx-e _hd1422114283_)))
                                      (let ((_hd1422414291_
                                             (##car _e1422314288_))
                                            (_tl1422514293_
                                             (##cdr _e1422314288_)))
                                        (if (gx#identifier? _hd1422414291_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1422414291_)
                                                (if (gx#stx-pair?
                                                     _tl1422514293_)
                                                    (let ((_e1422614296_
                                                           (gx#stx-e
                                                            _tl1422514293_)))
                                                      (let ((_hd1422714299_
                                                             (##car _e1422614296_))
                                                            (_tl1422814301_
                                                             (##cdr _e1422614296_)))
                                                        (if (gx#stx-null?
                                                             _tl1422814301_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1422214285_)
                        (let ((_e1422914304_ (gx#stx-e _tl1422214285_)))
                          (let ((_hd1423014307_ (##car _e1422914304_))
                                (_tl1423114309_ (##cdr _e1422914304_)))
                            (if (gx#stx-pair? _hd1423014307_)
                                (let ((_e1423214312_
                                       (gx#stx-e _hd1423014307_)))
                                  (let ((_hd1423314315_ (##car _e1423214312_))
                                        (_tl1423414317_ (##cdr _e1423214312_)))
                                    (if (gx#identifier? _hd1423314315_)
                                        (if (gx#stx-eq? '%#ref _hd1423314315_)
                                            (if (gx#stx-pair? _tl1423414317_)
                                                (let ((_e1423514320_
                                                       (gx#stx-e
                                                        _tl1423414317_)))
                                                  (let ((_hd1423614323_
                                                         (##car _e1423514320_))
                                                        (_tl1423714325_
                                                         (##cdr _e1423514320_)))
                                                    (if (gx#stx-null?
                                                         _tl1423714325_)
                                                        (if (gx#stx-pair?
                                                             _tl1423114309_)
                                                            (let ((_e1423814328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1423114309_)))
                      (let ((_hd1423914331_ (##car _e1423814328_))
                            (_tl1424014333_ (##cdr _e1423814328_)))
                        (if (gx#stx-pair? _hd1423914331_)
                            (let ((_e1424114336_ (gx#stx-e _hd1423914331_)))
                              (let ((_hd1424214339_ (##car _e1424114336_))
                                    (_tl1424314341_ (##cdr _e1424114336_)))
                                (if (gx#identifier? _hd1424214339_)
                                    (if (gx#stx-eq? '%#quote _hd1424214339_)
                                        (if (gx#stx-pair? _tl1424314341_)
                                            (let ((_e1424414344_
                                                   (gx#stx-e _tl1424314341_)))
                                              (let ((_hd1424514347_
                                                     (##car _e1424414344_))
                                                    (_tl1424614349_
                                                     (##cdr _e1424414344_)))
                                                (if (gx#stx-null?
                                                     _tl1424614349_)
                                                    (if (gx#stx-pair?
                                                         _tl1424014333_)
                                                        (let ((_e1424714352_
                                                               (gx#stx-e
                                                                _tl1424014333_)))
                                                          (let ((_hd1424814355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1424714352_))
                        (_tl1424914357_ (##cdr _e1424714352_)))
                    (if (gx#stx-pair? _hd1424814355_)
                        (let ((_e1425014360_ (gx#stx-e _hd1424814355_)))
                          (let ((_hd1425114363_ (##car _e1425014360_))
                                (_tl1425214365_ (##cdr _e1425014360_)))
                            (if (gx#identifier? _hd1425114363_)
                                (if (gx#stx-eq? '%#ref _hd1425114363_)
                                    (if (gx#stx-pair? _tl1425214365_)
                                        (let ((_e1425314368_
                                               (gx#stx-e _tl1425214365_)))
                                          (let ((_hd1425414371_
                                                 (##car _e1425314368_))
                                                (_tl1425514373_
                                                 (##cdr _e1425314368_)))
                                            (if (gx#stx-null? _tl1425514373_)
                                                (if (gx#stx-null?
                                                     _tl1424914357_)
                                                    ((lambda (_L14376_
                                                              _L14377_
                                                              _L14378_
                                                              _L14379_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L14378_)
                               (cons (gx#stx-e _L14377_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L14376_)
                                           (cons '#f '())))))
                   (_g1415714267_ _g1415914270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1425414371_
                                                     _hd1424514347_
                                                     _hd1423614323_
                                                     _hd1422714299_)
                                                    (_g1415714267_
                                                     _g1415914270_))
                                                (_g1415714267_
                                                 _g1415914270_))))
                                        (_g1415714267_ _g1415914270_))
                                    (_g1415714267_ _g1415914270_))
                                (_g1415714267_ _g1415914270_))))
                        (_g1415714267_ _g1415914270_))))
                (_g1415714267_ _g1415914270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415714267_
                                                     _g1415914270_))))
                                            (_g1415714267_ _g1415914270_))
                                        (_g1415714267_ _g1415914270_))
                                    (_g1415714267_ _g1415914270_))))
                            (_g1415714267_ _g1415914270_))))
                    (_g1415714267_ _g1415914270_))
                (_g1415714267_ _g1415914270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1415714267_ _g1415914270_))
                                            (_g1415714267_ _g1415914270_))
                                        (_g1415714267_ _g1415914270_))))
                                (_g1415714267_ _g1415914270_))))
                        (_g1415714267_ _g1415914270_))
                    (_g1415714267_ _g1415914270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415714267_
                                                     _g1415914270_))
                                                (_g1415714267_ _g1415914270_))
                                            (_g1415714267_ _g1415914270_))))
                                    (_g1415714267_ _g1415914270_))))
                            (_g1415714267_ _g1415914270_))))
                    (_g1415714267_ _g1415914270_))))
             (_g1415514597_
              (lambda (_g1415914420_)
                (if (gx#stx-pair? _g1415914420_)
                    (let ((_e1416514422_ (gx#stx-e _g1415914420_)))
                      (let ((_hd1416614425_ (##car _e1416514422_))
                            (_tl1416714427_ (##cdr _e1416514422_)))
                        (if (gx#stx-pair? _tl1416714427_)
                            (let ((_e1416814430_ (gx#stx-e _tl1416714427_)))
                              (let ((_hd1416914433_ (##car _e1416814430_))
                                    (_tl1417014435_ (##cdr _e1416814430_)))
                                (if (gx#stx-pair? _hd1416914433_)
                                    (let ((_e1417114438_
                                           (gx#stx-e _hd1416914433_)))
                                      (let ((_hd1417214441_
                                             (##car _e1417114438_))
                                            (_tl1417314443_
                                             (##cdr _e1417114438_)))
                                        (if (gx#identifier? _hd1417214441_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1417214441_)
                                                (if (gx#stx-pair?
                                                     _tl1417314443_)
                                                    (let ((_e1417414446_
                                                           (gx#stx-e
                                                            _tl1417314443_)))
                                                      (let ((_hd1417514449_
                                                             (##car _e1417414446_))
                                                            (_tl1417614451_
                                                             (##cdr _e1417414446_)))
                                                        (if (gx#stx-null?
                                                             _tl1417614451_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1417014435_)
                        (let ((_e1417714454_ (gx#stx-e _tl1417014435_)))
                          (let ((_hd1417814457_ (##car _e1417714454_))
                                (_tl1417914459_ (##cdr _e1417714454_)))
                            (if (gx#stx-pair? _hd1417814457_)
                                (let ((_e1418014462_
                                       (gx#stx-e _hd1417814457_)))
                                  (let ((_hd1418114465_ (##car _e1418014462_))
                                        (_tl1418214467_ (##cdr _e1418014462_)))
                                    (if (gx#identifier? _hd1418114465_)
                                        (if (gx#stx-eq? '%#ref _hd1418114465_)
                                            (if (gx#stx-pair? _tl1418214467_)
                                                (let ((_e1418314470_
                                                       (gx#stx-e
                                                        _tl1418214467_)))
                                                  (let ((_hd1418414473_
                                                         (##car _e1418314470_))
                                                        (_tl1418514475_
                                                         (##cdr _e1418314470_)))
                                                    (if (gx#stx-null?
                                                         _tl1418514475_)
                                                        (if (gx#stx-pair?
                                                             _tl1417914459_)
                                                            (let ((_e1418614478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1417914459_)))
                      (let ((_hd1418714481_ (##car _e1418614478_))
                            (_tl1418814483_ (##cdr _e1418614478_)))
                        (if (gx#stx-pair? _hd1418714481_)
                            (let ((_e1418914486_ (gx#stx-e _hd1418714481_)))
                              (let ((_hd1419014489_ (##car _e1418914486_))
                                    (_tl1419114491_ (##cdr _e1418914486_)))
                                (if (gx#identifier? _hd1419014489_)
                                    (if (gx#stx-eq? '%#quote _hd1419014489_)
                                        (if (gx#stx-pair? _tl1419114491_)
                                            (let ((_e1419214494_
                                                   (gx#stx-e _tl1419114491_)))
                                              (let ((_hd1419314497_
                                                     (##car _e1419214494_))
                                                    (_tl1419414499_
                                                     (##cdr _e1419214494_)))
                                                (if (gx#stx-null?
                                                     _tl1419414499_)
                                                    (if (gx#stx-pair?
                                                         _tl1418814483_)
                                                        (let ((_e1419514502_
                                                               (gx#stx-e
                                                                _tl1418814483_)))
                                                          (let ((_hd1419614505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1419514502_))
                        (_tl1419714507_ (##cdr _e1419514502_)))
                    (if (gx#stx-pair? _hd1419614505_)
                        (let ((_e1419814510_ (gx#stx-e _hd1419614505_)))
                          (let ((_hd1419914513_ (##car _e1419814510_))
                                (_tl1420014515_ (##cdr _e1419814510_)))
                            (if (gx#identifier? _hd1419914513_)
                                (if (gx#stx-eq? '%#ref _hd1419914513_)
                                    (if (gx#stx-pair? _tl1420014515_)
                                        (let ((_e1420114518_
                                               (gx#stx-e _tl1420014515_)))
                                          (let ((_hd1420214521_
                                                 (##car _e1420114518_))
                                                (_tl1420314523_
                                                 (##cdr _e1420114518_)))
                                            (if (gx#stx-null? _tl1420314523_)
                                                (if (gx#stx-pair?
                                                     _tl1419714507_)
                                                    (let ((_e1420414526_
                                                           (gx#stx-e
                                                            _tl1419714507_)))
                                                      (let ((_hd1420514529_
                                                             (##car _e1420414526_))
                                                            (_tl1420614531_
                                                             (##cdr _e1420414526_)))
                                                        (if (gx#stx-pair?
                                                             _hd1420514529_)
                                                            (let ((_e1420714534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1420514529_)))
                      (let ((_hd1420814537_ (##car _e1420714534_))
                            (_tl1420914539_ (##cdr _e1420714534_)))
                        (if (gx#identifier? _hd1420814537_)
                            (if (gx#stx-eq? '%#quote _hd1420814537_)
                                (if (gx#stx-pair? _tl1420914539_)
                                    (let ((_e1421014542_
                                           (gx#stx-e _tl1420914539_)))
                                      (let ((_hd1421114545_
                                             (##car _e1421014542_))
                                            (_tl1421214547_
                                             (##cdr _e1421014542_)))
                                        (if (gx#stx-null? _tl1421214547_)
                                            (if (gx#stx-null? _tl1420614531_)
                                                ((lambda (_L14550_
                                                          _L14551_
                                                          _L14552_
                                                          _L14553_
                                                          _L14554_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L14554_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14553_)
                           (cons (gx#stx-e _L14552_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L14551_)
                                       (cons (gx#stx-e _L14550_) '())))))
               (_g1415614417_ _g1415914420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1421114545_
                                                 _hd1420214521_
                                                 _hd1419314497_
                                                 _hd1418414473_
                                                 _hd1417514449_)
                                                (_g1415614417_ _g1415914420_))
                                            (_g1415614417_ _g1415914420_))))
                                    (_g1415614417_ _g1415914420_))
                                (_g1415614417_ _g1415914420_))
                            (_g1415614417_ _g1415914420_))))
                    (_g1415614417_ _g1415914420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415614417_
                                                     _g1415914420_))
                                                (_g1415614417_
                                                 _g1415914420_))))
                                        (_g1415614417_ _g1415914420_))
                                    (_g1415614417_ _g1415914420_))
                                (_g1415614417_ _g1415914420_))))
                        (_g1415614417_ _g1415914420_))))
                (_g1415614417_ _g1415914420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415614417_
                                                     _g1415914420_))))
                                            (_g1415614417_ _g1415914420_))
                                        (_g1415614417_ _g1415914420_))
                                    (_g1415614417_ _g1415914420_))))
                            (_g1415614417_ _g1415914420_))))
                    (_g1415614417_ _g1415914420_))
                (_g1415614417_ _g1415914420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1415614417_ _g1415914420_))
                                            (_g1415614417_ _g1415914420_))
                                        (_g1415614417_ _g1415914420_))))
                                (_g1415614417_ _g1415914420_))))
                        (_g1415614417_ _g1415914420_))
                    (_g1415614417_ _g1415914420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415614417_
                                                     _g1415914420_))
                                                (_g1415614417_ _g1415914420_))
                                            (_g1415614417_ _g1415914420_))))
                                    (_g1415614417_ _g1415914420_))))
                            (_g1415614417_ _g1415914420_))))
                    (_g1415614417_ _g1415914420_)))))
        (_g1415514597_ _stx14154_))))
  (define gxc#!alias::typedecl
    (lambda (_self14130_)
      (let* ((_self1413114137_ _self14130_)
             (_E1413314141_
              (lambda () (error '"No clause matching" _self1413114137_)))
             (_K1413414146_
              (lambda (_alias-id14144_)
                (cons '@alias (cons _alias-id14144_ '())))))
        (if (##structure-instance-of?
             _self1413114137_
             (##type-id gxc#!alias::t))
            (let* ((_e1413514149_ (##vector-ref _self1413114137_ '1))
                   (_alias-id14152_ _e1413514149_))
              (_K1413414146_ _alias-id14152_))
            (_E1413314141_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13952_)
      (let* ((_self1395313964_ _self13952_)
             (_E1395513968_
              (lambda () (error '"No clause matching" _self1395313964_)))
             (_K1395613977_
              (lambda (_plist13971_
                       _ctor13972_
                       _fields13973_
                       _super13974_
                       _type-id13975_)
                (cons '@struct-type
                      (cons _type-id13975_
                            (cons _super13974_
                                  (cons _fields13973_
                                        (cons _ctor13972_
                                              (cons _plist13971_ '())))))))))
        (if (##structure-instance-of?
             _self1395313964_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1395713980_ (##vector-ref _self1395313964_ '1))
                   (_type-id13983_ _e1395713980_)
                   (_e1395813985_ (##vector-ref _self1395313964_ '2))
                   (_super13988_ _e1395813985_)
                   (_e1395913990_ (##vector-ref _self1395313964_ '3))
                   (_fields13993_ _e1395913990_)
                   (_e1396013995_ (##vector-ref _self1395313964_ '4))
                   (_e1396113998_ (##vector-ref _self1395313964_ '5))
                   (_ctor14001_ _e1396113998_)
                   (_e1396214003_ (##vector-ref _self1395313964_ '6))
                   (_plist14006_ _e1396214003_))
              (_K1395613977_
               _plist14006_
               _ctor14001_
               _fields13993_
               _super13988_
               _type-id13983_))
            (_E1395513968_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13806_)
      (let* ((_self1380713813_ _self13806_)
             (_E1380913817_
              (lambda () (error '"No clause matching" _self1380713813_)))
             (_K1381013822_
              (lambda (_struct-t13820_)
                (cons '@struct-pred (cons _struct-t13820_ '())))))
        (if (##structure-instance-of?
             _self1380713813_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1381113825_ (##vector-ref _self1380713813_ '1))
                   (_struct-t13828_ _e1381113825_))
              (_K1381013822_ _struct-t13828_))
            (_E1380913817_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13660_)
      (let* ((_self1366113667_ _self13660_)
             (_E1366313671_
              (lambda () (error '"No clause matching" _self1366113667_)))
             (_K1366413676_
              (lambda (_struct-t13674_)
                (cons '@struct-cons (cons _struct-t13674_ '())))))
        (if (##structure-instance-of?
             _self1366113667_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1366513679_ (##vector-ref _self1366113667_ '1))
                   (_struct-t13682_ _e1366513679_))
              (_K1366413676_ _struct-t13682_))
            (_E1366313671_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self13500_)
      (let* ((_self1350113509_ _self13500_)
             (_E1350313513_
              (lambda () (error '"No clause matching" _self1350113509_)))
             (_K1350413520_
              (lambda (_unchecked?13516_ _off13517_ _struct-t13518_)
                (cons '@struct-getf
                      (cons _struct-t13518_
                            (cons _off13517_ (cons _unchecked?13516_ '())))))))
        (if (##structure-instance-of?
             _self1350113509_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1350513523_ (##vector-ref _self1350113509_ '1))
                   (_struct-t13526_ _e1350513523_)
                   (_e1350613528_ (##vector-ref _self1350113509_ '2))
                   (_off13531_ _e1350613528_)
                   (_e1350713533_ (##vector-ref _self1350113509_ '3))
                   (_unchecked?13536_ _e1350713533_))
              (_K1350413520_ _unchecked?13536_ _off13531_ _struct-t13526_))
            (_E1350313513_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13340_)
      (let* ((_self1334113349_ _self13340_)
             (_E1334313353_
              (lambda () (error '"No clause matching" _self1334113349_)))
             (_K1334413360_
              (lambda (_unchecked?13356_ _off13357_ _struct-t13358_)
                (cons '@struct-setf
                      (cons _struct-t13358_
                            (cons _off13357_ (cons _unchecked?13356_ '())))))))
        (if (##structure-instance-of?
             _self1334113349_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1334513363_ (##vector-ref _self1334113349_ '1))
                   (_struct-t13366_ _e1334513363_)
                   (_e1334613368_ (##vector-ref _self1334113349_ '2))
                   (_off13371_ _e1334613368_)
                   (_e1334713373_ (##vector-ref _self1334113349_ '3))
                   (_unchecked?13376_ _e1334713373_))
              (_K1334413360_ _unchecked?13376_ _off13371_ _struct-t13366_))
            (_E1334313353_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13166_)
      (let* ((_self1316713177_ _self13166_)
             (_E1316913181_
              (lambda () (error '"No clause matching" _self1316713177_)))
             (_K1317013192_
              (lambda (_typedecl13184_
                       _inline13185_
                       _dispatch13186_
                       _arity13187_)
                (if _inline13185_
                    (let ((_$e13189_ _typedecl13184_))
                      (if _$e13189_
                          _$e13189_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13187_ (cons _dispatch13186_ '())))))))
        (if (##structure-instance-of?
             _self1316713177_
             (##type-id gxc#!lambda::t))
            (let* ((_e1317113195_ (##vector-ref _self1316713177_ '1))
                   (_e1317213198_ (##vector-ref _self1316713177_ '2))
                   (_arity13201_ _e1317213198_)
                   (_e1317313203_ (##vector-ref _self1316713177_ '3))
                   (_dispatch13206_ _e1317313203_)
                   (_e1317413208_ (##vector-ref _self1316713177_ '4))
                   (_inline13211_ _e1317413208_)
                   (_e1317513213_ (##vector-ref _self1316713177_ '5))
                   (_typedecl13216_ _e1317513213_))
              (_K1317013192_
               _typedecl13216_
               _inline13211_
               _dispatch13206_
               _arity13201_))
            (_E1316913181_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12977_)
      (letrec ((_clause-e12979_
                (lambda (_clause13009_)
                  (let* ((_clause1301013018_ _clause13009_)
                         (_E1301213022_
                          (lambda ()
                            (error '"No clause matching" _clause1301013018_)))
                         (_K1301313028_
                          (lambda (_dispatch13025_ _arity13026_)
                            (cons _arity13026_ (cons _dispatch13025_ '())))))
                    (if (##structure-instance-of?
                         _clause1301013018_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1301413031_
                                (##vector-ref _clause1301013018_ '1))
                               (_e1301513034_
                                (##vector-ref _clause1301013018_ '2))
                               (_arity13037_ _e1301513034_)
                               (_e1301613039_
                                (##vector-ref _clause1301013018_ '3))
                               (_dispatch13042_ _e1301613039_))
                          (_K1301313028_ _dispatch13042_ _arity13037_))
                        (_E1301213022_))))))
        (let* ((_self1298012987_ _self12977_)
               (_E1298212991_
                (lambda () (error '"No clause matching" _self1298012987_)))
               (_K1298312998_
                (lambda (_clauses12994_)
                  (let ((_clauses12996_ (map _clause-e12979_ _clauses12994_)))
                    (cons '@case-lambda _clauses12996_)))))
          (if (##structure-instance-of?
               _self1298012987_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1298413001_ (##vector-ref _self1298012987_ '1))
                     (_e1298513004_ (##vector-ref _self1298012987_ '2))
                     (_clauses13007_ _e1298513004_))
                (_K1298312998_ _clauses13007_))
              (_E1298212991_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self12820_)
      (let* ((_self1282112829_ _self12820_)
             (_E1282312833_
              (lambda () (error '"No clause matching" _self1282112829_)))
             (_K1282412839_
              (lambda (_dispatch12836_ _table12837_)
                (cons '@kw-lambda
                      (cons _table12837_ (cons _dispatch12836_ '()))))))
        (if (##structure-instance-of?
             _self1282112829_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1282512842_ (##vector-ref _self1282112829_ '1))
                   (_e1282612845_ (##vector-ref _self1282112829_ '2))
                   (_table12848_ _e1282612845_)
                   (_e1282712850_ (##vector-ref _self1282112829_ '3))
                   (_dispatch12853_ _e1282712850_))
              (_K1282412839_ _dispatch12853_ _table12848_))
            (_E1282312833_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self12663_)
      (let* ((_self1266412672_ _self12663_)
             (_E1266612676_
              (lambda () (error '"No clause matching" _self1266412672_)))
             (_K1266712682_
              (lambda (_main12679_ _keys12680_)
                (cons '@kw-lambda-dispatch
                      (cons _keys12680_ (cons _main12679_ '()))))))
        (if (##structure-instance-of?
             _self1266412672_
             (##type-id gxc#!kw-lambda-primary::t))
            (let* ((_e1266812685_ (##vector-ref _self1266412672_ '1))
                   (_e1266912688_ (##vector-ref _self1266412672_ '2))
                   (_keys12691_ _e1266912688_)
                   (_e1267012693_ (##vector-ref _self1266412672_ '3))
                   (_main12696_ _e1267012693_))
              (_K1266712682_ _main12696_ _keys12691_))
            (_E1266612676_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12539_) (gxc#generate-runtime-binding-id _stx12539_))))
