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
    (lambda _$args27331_
      (apply make-struct-instance gxc#optimizer-info::t _$args27331_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27329_)
      (if (##fx< '2 (##vector-length _self27329_))
          (begin
            (##vector-set! _self27329_ '1 (make-hash-table-eq))
            (##vector-set! _self27329_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27329_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27343 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27343) __obj27343))))))
  (define gxc#optimize!
    (lambda (_ctx27201_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27201_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27201_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27204_
                  (gxc#optimize-source
                   (##structure-ref _ctx27201_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27201_
              _code27204_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27146_)
      (letrec* ((_deps27148_
                 (let* ((_imports27192_
                         (##structure-ref
                          _ctx27146_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27194_ (gx#core-context-prelude__% _ctx27146_)))
                   (if _$e27194_
                       ((lambda (_g2719627198_)
                          (cons _g2719627198_ _imports27192_))
                        _$e27194_)
                       _imports27192_))))
        (let _lp27150_ ((_rest27152_ _deps27148_))
          (let* ((_rest2715327161_ _rest27152_)
                 (_E2715627165_
                  (lambda () (error '"No clause matching" _rest2715327161_)))
                 (_else2715527169_ (lambda () '#!void))
                 (_K2715727180_
                  (lambda (_rest27172_ _hd27173_)
                    (if (##structure-instance-of?
                         _hd27173_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27173_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27175_
                                       (gx#core-context-prelude__% _hd27173_)))
                                  (if _$e27175_
                                      ((lambda (_pre27178_)
                                         (_lp27150_
                                          (cons _pre27178_
                                                (##structure-ref
                                                 _hd27173_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27175_)
                                      (_lp27150_
                                       (##structure-ref
                                        _hd27173_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27173_)))
                          (_lp27150_ _rest27172_))
                        (if (##structure-instance-of?
                             _hd27173_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27173_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27150_
                                     (##structure-ref
                                      _hd27173_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27173_)))
                              (_lp27150_ _rest27172_))
                            (if (##structure-direct-instance-of?
                                 _hd27173_
                                 'gx#module-import::t)
                                (_lp27150_
                                 (cons (##direct-structure-ref
                                        _hd27173_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27172_))
                                (if (##structure-direct-instance-of?
                                     _hd27173_
                                     'gx#module-export::t)
                                    (_lp27150_
                                     (cons (##direct-structure-ref
                                            _hd27173_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27172_))
                                    (if (##structure-direct-instance-of?
                                         _hd27173_
                                         'gx#import-set::t)
                                        (_lp27150_
                                         (cons (##direct-structure-ref
                                                _hd27173_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27172_))
                                        (error '"Unexpected module import"
                                               _hd27173_)))))))))
            (if (##pair? _rest2715327161_)
                (let ((_hd2715827183_ (##car _rest2715327161_))
                      (_tl2715927185_ (##cdr _rest2715327161_)))
                  (let* ((_hd27188_ _hd2715827183_)
                         (_rest27190_ _tl2715927185_))
                    (_K2715727180_ _rest27190_ _hd27188_)))
                (_else2715527169_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27126_)
      (if (if (##structure-instance-of? _ctx27126_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27126_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27128_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27130_
                  (##structure-ref _ctx27126_ '1 gx#expander-context::t '#f))
                 (_mod27132_ (table-ref _ht27128_ _id27130_ '#f)))
            (let ((_$e27135_ _mod27132_))
              (if _$e27135_
                  _$e27135_
                  (let* ((_mod27138_ (gxc#optimizer-import-ssxi _ctx27126_))
                         (_val27143_
                          (let ((_$e27140_ _mod27138_))
                            (if _$e27140_ _$e27140_ '#!void))))
                    (begin
                      (table-set! _ht27128_ _id27130_ _val27143_)
                      _val27143_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27103_)
      (letrec ((_catch-e27105_
                (lambda (_exn27124_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27103_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27124_))
                        '#!void)
                    '#f)))
               (_import-e27106_
                (lambda ()
                  (let* ((_str-id27109_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx27103_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27117_
                          (let ((_odir2711027112_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2711027112_
                                (let ((_odir27115_ _odir2711027112_))
                                  (path-expand
                                   (string-append _str-id27109_ '".ss")
                                   _odir27115_))
                                '#f)))
                         (_library-path27119_
                          (string->symbol
                           (string-append '":" _str-id27109_ '".ss")))
                         (_ssxi-path27121_
                          (if (if _artefact-path27117_
                                  (file-exists? _artefact-path27117_)
                                  '#f)
                              _artefact-path27117_
                              _library-path27119_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27121_)
                      (gx#import-module__% _ssxi-path27121_ '#t '#t))))))
        (if (##structure-ref _ctx27103_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27105_ _import-e27106_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27100_
      (apply make-struct-instance gxc#!type::t _$args27100_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27097_
      (apply make-struct-instance gxc#!alias::t _$args27097_)))
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
    (lambda _$args27094_
      (apply make-struct-instance gxc#!struct-type::t _$args27094_)))
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
    (lambda _$args27091_
      (apply make-struct-instance gxc#!procedure::t _$args27091_)))
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
    (lambda _$args27088_
      (apply make-struct-instance gxc#!struct-pred::t _$args27088_)))
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
    (lambda _$args27085_
      (apply make-struct-instance gxc#!struct-cons::t _$args27085_)))
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
    (lambda _$args27082_
      (apply make-struct-instance gxc#!struct-getf::t _$args27082_)))
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
    (lambda _$args27079_
      (apply make-struct-instance gxc#!struct-setf::t _$args27079_)))
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
    (lambda _$args27076_
      (apply make-struct-instance gxc#!lambda::t _$args27076_)))
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
    (lambda _$args27073_
      (apply make-struct-instance gxc#!case-lambda::t _$args27073_)))
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
    (lambda _$args27070_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27070_)))
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
    (lambda _$args27067_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27067_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27059_
             _id27060_
             _super27061_
             _fields27062_
             _xfields27063_
             _ctor27064_
             _plist27065_)
      (if (##fx< '7 (##vector-length _self27059_))
          (begin
            (##vector-set! _self27059_ '1 _id27060_)
            (##vector-set! _self27059_ '2 _super27061_)
            (##vector-set! _self27059_ '3 _fields27062_)
            (##vector-set! _self27059_ '4 _xfields27063_)
            (##vector-set! _self27059_ '5 _ctor27064_)
            (##vector-set! _self27059_ '6 _plist27065_)
            (##vector-set! _self27059_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27059_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self26903_
               _id26904_
               _arity26905_
               _dispatch26906_
               _inline26907_
               _typedecl26908_)
        (if (##fx< '5 (##vector-length _self26903_))
            (begin
              (##vector-set! _self26903_ '1 _id26904_)
              (##vector-set! _self26903_ '2 _arity26905_)
              (##vector-set! _self26903_ '3 _dispatch26906_)
              (##vector-set! _self26903_ '4 _inline26907_)
              (##vector-set! _self26903_ '5 _typedecl26908_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self26903_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self26913_ _id26914_ _arity26915_ _dispatch26916_)
          (let* ((_inline26918_ '#f) (_typedecl26920_ '#f))
            (if (##fx< '5 (##vector-length _self26913_))
                (begin
                  (##vector-set! _self26913_ '1 _id26914_)
                  (##vector-set! _self26913_ '2 _arity26915_)
                  (##vector-set! _self26913_ '3 _dispatch26916_)
                  (##vector-set! _self26913_ '4 _inline26918_)
                  (##vector-set! _self26913_ '5 _typedecl26920_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26913_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self26922_
                 _id26923_
                 _arity26924_
                 _dispatch26925_
                 _inline26926_)
          (let ((_typedecl26928_ '#f))
            (if (##fx< '5 (##vector-length _self26922_))
                (begin
                  (##vector-set! _self26922_ '1 _id26923_)
                  (##vector-set! _self26922_ '2 _arity26924_)
                  (##vector-set! _self26922_ '3 _dispatch26925_)
                  (##vector-set! _self26922_ '4 _inline26926_)
                  (##vector-set! _self26922_ '5 _typedecl26928_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26922_)))))
      (define gxc#!lambda:::init!
        (lambda _g27351_
          (let ((_g27350_ (length _g27351_)))
            (cond ((fx= _g27350_ 4) (apply gxc#!lambda:::init!__0 _g27351_))
                  ((fx= _g27350_ 5) (apply gxc#!lambda:::init!__1 _g27351_))
                  ((fx= _g27350_ 6)
                   (apply (lambda (_self26930_
                                   _id26931_
                                   _arity26932_
                                   _dispatch26933_
                                   _inline26934_
                                   _typedecl26935_)
                            (if (##fx< '5 (##vector-length _self26930_))
                                (begin
                                  (##vector-set! _self26930_ '1 _id26931_)
                                  (##vector-set! _self26930_ '2 _arity26932_)
                                  (##vector-set!
                                   _self26930_
                                   '3
                                   _dispatch26933_)
                                  (##vector-set! _self26930_ '4 _inline26934_)
                                  (##vector-set!
                                   _self26930_
                                   '5
                                   _typedecl26935_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self26930_)))
                          _g27351_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27351_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type26773_)
      (let ((_$e26775_
             (##structure-ref _type26773_ '7 gxc#!struct-type::t '#f)))
        (if _$e26775_
            (values _$e26775_)
            (let ((_vtab26778_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type26773_
                 _vtab26778_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab26778_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type26764_ _method26765_)
      (let ((_vtab2676626768_
             (##structure-ref _type26764_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2676626768_
            (let ((_vtab26771_ _vtab2676626768_))
              (table-ref _vtab26771_ _method26765_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym26748_ _type26749_ _local?26750_)
        (begin
          (if (##structure-instance-of? _type26749_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym26748_
                     _type26749_))
          (gxc#verbose
           '"declare-type "
           _sym26748_
           '" "
           (struct->list _type26749_))
          (table-set!
           (if _local?26750_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym26748_
           _type26749_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym26755_ _type26756_)
          (let ((_local?26758_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym26755_
             _type26756_
             _local?26758_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27353_
          (let ((_g27352_ (length _g27353_)))
            (cond ((fx= _g27352_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27353_))
                  ((fx= _g27352_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27353_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27353_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t26724_ _method26725_ _sym26726_ _rebind?26727_)
        (let ((_type26729_ (gxc#optimizer-resolve-type _type-t26724_)))
          (if (##structure-instance-of? _type26729_ 'gxc#!struct-type::t)
              (let ((_vtab26731_ (gxc#!struct-type-vtab _type26729_)))
                (if _rebind?26727_
                    (if (hash-key? _vtab26731_ _method26725_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t26724_
                         '" "
                         _method26725_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t26724_
                         '" "
                         _method26725_))
                    (if (hash-key? _vtab26731_ _method26725_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t26724_
                           '" "
                           _method26725_
                           '" => "
                           _sym26726_)
                          (table-set! _vtab26731_ _method26725_ _sym26726_)))))
              (if (not _type26729_)
                  (gxc#verbose '"declare-method: unknown type " _type-t26724_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t26724_
                         _type26729_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t26736_ _method26737_ _sym26738_)
          (let ((_rebind?26740_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t26736_
             _method26737_
             _sym26738_
             _rebind?26740_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27355_
          (let ((_g27354_ (length _g27355_)))
            (cond ((fx= _g27354_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27355_))
                  ((fx= _g27354_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27355_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27355_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym26712_)
      (let ((_$e26720_
             (let ((_ht2671326715_ (gxc#current-compile-local-type)))
               (if _ht2671326715_
                   (let ((_ht26718_ _ht2671326715_))
                     (table-ref _ht26718_ _sym26712_ '#f))
                   '#f))))
        (if _$e26720_
            _$e26720_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym26712_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym26704_)
      (let ((_type2670526707_ (gxc#optimizer-lookup-type _sym26704_)))
        (if _type2670526707_
            (let ((_type26710_ _type2670526707_))
              (if (##structure-instance-of? _type26710_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type26710_ '1 gxc#!type::t '#f))
                  _type26710_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t26699_ _method26700_)
      (let ((_type26702_ (gxc#optimizer-resolve-type _type-t26699_)))
        (if (##structure-instance-of? _type26702_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type26702_ _method26700_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx26695_)
      (begin
        (gxc#apply-collect-mutators _stx26695_)
        (let ((_stx26697_ (gxc#apply-lift-top-lambdas _stx26695_)))
          (begin
            (gxc#apply-collect-type-info _stx26697_)
            (gxc#apply-optimize-call _stx26697_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl26692_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26692_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl26692_ '%#lambda gxc#xform-identity)
           (table-set! _tbl26692_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl26692_ '%#let-values gxc#xform-identity)
           (table-set! _tbl26692_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl26692_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl26692_ '%#quote gxc#xform-identity)
           (table-set! _tbl26692_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26692_ '%#call gxc#xform-identity)
           (table-set! _tbl26692_ '%#if gxc#xform-identity)
           (table-set! _tbl26692_ '%#ref gxc#xform-identity)
           (table-set! _tbl26692_ '%#set! gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl26692_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl26692_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl26692_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl26688_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26688_ '%#begin gxc#xform-identity)
           (table-set! _tbl26688_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl26688_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl26688_ '%#module gxc#xform-identity)
           (table-set! _tbl26688_ '%#import gxc#xform-identity)
           (table-set! _tbl26688_ '%#export gxc#xform-identity)
           (table-set! _tbl26688_ '%#provide gxc#xform-identity)
           (table-set! _tbl26688_ '%#extern gxc#xform-identity)
           (table-set! _tbl26688_ '%#define-values gxc#xform-identity)
           (table-set! _tbl26688_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl26688_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl26688_ '%#declare gxc#xform-identity)
           _tbl26688_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl26684_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26684_ (force gxc#&identity-special-form))
           (hash-copy! _tbl26684_ (force gxc#&identity-expression))
           _tbl26684_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl26680_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl26680_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl26680_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl26680_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl26680_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl26680_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl26680_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl26680_ '%#quote gxc#xform-identity)
           (table-set! _tbl26680_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26680_ '%#call gxc#xform-operands)
           (table-set! _tbl26680_ '%#if gxc#xform-operands)
           (table-set! _tbl26680_ '%#ref gxc#xform-identity)
           (table-set! _tbl26680_ '%#set! gxc#xform-setq%)
           (table-set! _tbl26680_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl26680_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl26680_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl26680_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl26680_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl26680_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl26680_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl26680_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl26680_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl26676_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26676_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl26676_ (force gxc#&identity))
           (table-set! _tbl26676_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26676_ '%#module gxc#xform-module%)
           (table-set! _tbl26676_ '%#define-values gxc#xform-define-values%)
           _tbl26676_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl26672_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26672_ (force gxc#&void))
           (table-set! _tbl26672_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26672_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26672_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26672_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26672_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26672_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl26672_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl26672_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl26672_ '%#call gxc#collect-operands)
           (table-set! _tbl26672_ '%#if gxc#collect-operands)
           (table-set! _tbl26672_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl26672_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl26672_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl26672_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl26672_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl26672_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl26672_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl26672_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl26672_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl26672_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx26665_ . _args26667_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26665_ _args26667_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl26662_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26662_ (force gxc#&basic-xform))
           (table-set!
            _tbl26662_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26662_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26662_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26662_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26662_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26655_ . _args26657_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26655_ _args26657_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl26652_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26652_ (force gxc#&basic-xform-expression))
           (table-set! _tbl26652_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26652_ '%#ref gxc#expression-subst-ref%)
           _tbl26652_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx26645_ . _args26647_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26645_ _args26647_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl26642_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26642_ (force gxc#&void))
           (table-set! _tbl26642_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26642_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26642_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26642_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26642_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26642_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26642_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26642_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26642_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26642_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26642_ '%#if gxc#collect-operands)
           (table-set! _tbl26642_ '%#set! gxc#collect-body-setq%)
           _tbl26642_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26635_ . _args26637_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26635_ _args26637_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl26632_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26632_ (force gxc#&false))
           (table-set! _tbl26632_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26632_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26632_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26632_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl26632_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26632_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26632_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26625_ . _args26627_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26625_ _args26627_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl26622_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26622_ (force gxc#&basic-xform))
           (table-set! _tbl26622_ '%#call gxc#optimize-call%)
           _tbl26622_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx26615_ . _args26617_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26615_ _args26617_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl26612_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26612_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl26612_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl26612_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl26612_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl26612_ '%#call gxc#generate-ssxi-call%)
           _tbl26612_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx26605_ . _args26607_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26605_ _args26607_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx26602_ . _args26603_) _stx26602_))
  (define gxc#xform-wrap-source
    (lambda (_stx26599_ _src-stx26600_)
      (gx#stx-wrap-source _stx26599_ (gx#stx-source _src-stx26600_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args26593_)
      (lambda (_g2659426596_)
        (apply gxc#compile-e _g2659426596_ _args26593_))))
  (define gxc#xform-begin%
    (lambda (_stx26552_ . _args26553_)
      (let* ((_g2655526565_
              (lambda (_g2655626562_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2655626562_)))
             (_g2655426590_
              (lambda (_g2655626568_)
                (if (gx#stx-pair? _g2655626568_)
                    (let ((_e2655826570_ (gx#stx-e _g2655626568_)))
                      (let ((_hd2655926573_ (##car _e2655826570_))
                            (_tl2656026575_ (##cdr _e2655826570_)))
                        ((lambda (_L26578_)
                           (let ((_forms26588_
                                  (map (gxc#xform-apply-compile-e _args26553_)
                                       _L26578_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms26588_)
                              _stx26552_)))
                         _tl2656026575_)))
                    (_g2655526565_ _g2655626568_)))))
        (_g2655426590_ _stx26552_))))
  (define gxc#xform-module%
    (lambda (_stx26489_ . _args26490_)
      (let* ((_g2649226506_
              (lambda (_g2649326503_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2649326503_)))
             (_g2649126549_
              (lambda (_g2649326509_)
                (if (gx#stx-pair? _g2649326509_)
                    (let ((_e2649626511_ (gx#stx-e _g2649326509_)))
                      (let ((_hd2649726514_ (##car _e2649626511_))
                            (_tl2649826516_ (##cdr _e2649626511_)))
                        (if (gx#stx-pair? _tl2649826516_)
                            (let ((_e2649926519_ (gx#stx-e _tl2649826516_)))
                              (let ((_hd2650026522_ (##car _e2649926519_))
                                    (_tl2650126524_ (##cdr _e2649926519_)))
                                ((lambda (_L26527_ _L26528_)
                                   (let* ((_ctx26541_
                                           (gx#syntax-local-e__0 _L26528_))
                                          (_code26543_
                                           (##structure-ref
                                            _ctx26541_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code26546_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code26543_
                                                     _args26490_))
                                            gx#current-expander-context
                                            _ctx26541_)))
                                     (begin
                                       (##structure-set!
                                        _ctx26541_
                                        _code26546_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L26528_
                                                    (cons _code26546_ '())))
                                        _stx26489_))))
                                 _tl2650126524_
                                 _hd2650026522_)))
                            (_g2649226506_ _g2649326509_))))
                    (_g2649226506_ _g2649326509_)))))
        (_g2649126549_ _stx26489_))))
  (define gxc#xform-define-values%
    (lambda (_stx26419_ . _args26420_)
      (let* ((_g2642226439_
              (lambda (_g2642326436_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2642326436_)))
             (_g2642126486_
              (lambda (_g2642326442_)
                (if (gx#stx-pair? _g2642326442_)
                    (let ((_e2642626444_ (gx#stx-e _g2642326442_)))
                      (let ((_hd2642726447_ (##car _e2642626444_))
                            (_tl2642826449_ (##cdr _e2642626444_)))
                        (if (gx#stx-pair? _tl2642826449_)
                            (let ((_e2642926452_ (gx#stx-e _tl2642826449_)))
                              (let ((_hd2643026455_ (##car _e2642926452_))
                                    (_tl2643126457_ (##cdr _e2642926452_)))
                                (if (gx#stx-pair? _tl2643126457_)
                                    (let ((_e2643226460_
                                           (gx#stx-e _tl2643126457_)))
                                      (let ((_hd2643326463_
                                             (##car _e2643226460_))
                                            (_tl2643426465_
                                             (##cdr _e2643226460_)))
                                        (if (gx#stx-null? _tl2643426465_)
                                            ((lambda (_L26468_ _L26469_)
                                               (let ((_expr26484_
                                                      (apply gxc#compile-e
                                                             _L26468_
                                                             _args26420_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26469_
                                                              (cons _expr26484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26419_)))
                                             _hd2643326463_
                                             _hd2643026455_)
                                            (_g2642226439_ _g2642326442_))))
                                    (_g2642226439_ _g2642326442_))))
                            (_g2642226439_ _g2642326442_))))
                    (_g2642226439_ _g2642326442_)))))
        (_g2642126486_ _stx26419_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26349_ . _args26350_)
      (let* ((_g2635226369_
              (lambda (_g2635326366_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2635326366_)))
             (_g2635126416_
              (lambda (_g2635326372_)
                (if (gx#stx-pair? _g2635326372_)
                    (let ((_e2635626374_ (gx#stx-e _g2635326372_)))
                      (let ((_hd2635726377_ (##car _e2635626374_))
                            (_tl2635826379_ (##cdr _e2635626374_)))
                        (if (gx#stx-pair? _tl2635826379_)
                            (let ((_e2635926382_ (gx#stx-e _tl2635826379_)))
                              (let ((_hd2636026385_ (##car _e2635926382_))
                                    (_tl2636126387_ (##cdr _e2635926382_)))
                                (if (gx#stx-pair? _tl2636126387_)
                                    (let ((_e2636226390_
                                           (gx#stx-e _tl2636126387_)))
                                      (let ((_hd2636326393_
                                             (##car _e2636226390_))
                                            (_tl2636426395_
                                             (##cdr _e2636226390_)))
                                        (if (gx#stx-null? _tl2636426395_)
                                            ((lambda (_L26398_ _L26399_)
                                               (let ((_expr26414_
                                                      (apply gxc#compile-e
                                                             _L26398_
                                                             _args26350_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26399_
                                                              (cons _expr26414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26349_)))
                                             _hd2636326393_
                                             _hd2636026385_)
                                            (_g2635226369_ _g2635326372_))))
                                    (_g2635226369_ _g2635326372_))))
                            (_g2635226369_ _g2635326372_))))
                    (_g2635226369_ _g2635326372_)))))
        (_g2635126416_ _stx26349_))))
  (define gxc#xform-lambda%
    (lambda (_stx26292_ . _args26293_)
      (let* ((_g2629526309_
              (lambda (_g2629626306_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2629626306_)))
             (_g2629426346_
              (lambda (_g2629626312_)
                (if (gx#stx-pair? _g2629626312_)
                    (let ((_e2629926314_ (gx#stx-e _g2629626312_)))
                      (let ((_hd2630026317_ (##car _e2629926314_))
                            (_tl2630126319_ (##cdr _e2629926314_)))
                        (if (gx#stx-pair? _tl2630126319_)
                            (let ((_e2630226322_ (gx#stx-e _tl2630126319_)))
                              (let ((_hd2630326325_ (##car _e2630226322_))
                                    (_tl2630426327_ (##cdr _e2630226322_)))
                                ((lambda (_L26330_ _L26331_)
                                   (let ((_body26344_
                                          (map (gxc#xform-apply-compile-e
                                                _args26293_)
                                               _L26330_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26331_ _body26344_))
                                      _stx26292_)))
                                 _tl2630426327_
                                 _hd2630326325_)))
                            (_g2629526309_ _g2629626312_))))
                    (_g2629526309_ _g2629626312_)))))
        (_g2629426346_ _stx26292_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26205_ . _args26206_)
      (letrec ((_clause-e26208_
                (lambda (_clause26249_)
                  (let* ((_g2625126262_
                          (lambda (_g2625226259_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2625226259_)))
                         (_g2625026289_
                          (lambda (_g2625226265_)
                            (if (gx#stx-pair? _g2625226265_)
                                (let ((_e2625526267_ (gx#stx-e _g2625226265_)))
                                  (let ((_hd2625626270_ (##car _e2625526267_))
                                        (_tl2625726272_ (##cdr _e2625526267_)))
                                    ((lambda (_L26275_ _L26276_)
                                       (let ((_body26287_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26206_)
                                                   _L26275_)))
                                         (cons _L26276_ _body26287_)))
                                     _tl2625726272_
                                     _hd2625626270_)))
                                (_g2625126262_ _g2625226265_)))))
                    (_g2625026289_ _clause26249_)))))
        (let* ((_g2621026220_
                (lambda (_g2621126217_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2621126217_)))
               (_g2620926246_
                (lambda (_g2621126223_)
                  (if (gx#stx-pair? _g2621126223_)
                      (let ((_e2621326225_ (gx#stx-e _g2621126223_)))
                        (let ((_hd2621426228_ (##car _e2621326225_))
                              (_tl2621526230_ (##cdr _e2621326225_)))
                          ((lambda (_L26233_)
                             (let ((_clauses26244_
                                    (map _clause-e26208_ _L26233_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26244_)
                                _stx26205_)))
                           _tl2621526230_)))
                      (_g2621026220_ _g2621126223_)))))
          (_g2620926246_ _stx26205_)))))
  (define gxc#xform-let-values%
    (lambda (_stx25999_ . _args26000_)
      (let* ((_g2600226035_
              (lambda (_g2600326032_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2600326032_)))
             (_g2600126202_
              (lambda (_g2600326038_)
                (if (gx#stx-pair? _g2600326038_)
                    (let ((_e2600826040_ (gx#stx-e _g2600326038_)))
                      (let ((_hd2600926043_ (##car _e2600826040_))
                            (_tl2601026045_ (##cdr _e2600826040_)))
                        (if (gx#stx-pair? _tl2601026045_)
                            (let ((_e2601126048_ (gx#stx-e _tl2601026045_)))
                              (let ((_hd2601226051_ (##car _e2601126048_))
                                    (_tl2601326053_ (##cdr _e2601126048_)))
                                (if (gx#stx-pair/null? _hd2601226051_)
                                    (if (fx>= (gx#stx-length _hd2601226051_)
                                              '0)
                                        (let ((_g27356_
                                               (gx#syntax-split-splice
                                                _hd2601226051_
                                                '0)))
                                          (begin
                                            (let ((_g27357_
                                                   (values-count _g27356_)))
                                              (if (not (fx= _g27357_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27357_)))
                                            (let ((_target2601426056_
                                                   (values-ref _g27356_ 0))
                                                  (_tl2601626058_
                                                   (values-ref _g27356_ 1)))
                                              (if (gx#stx-null? _tl2601626058_)
                                                  (letrec ((_loop2601726061_
                                                            (lambda (_hd2601526064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2602126066_
                             _hd2602226068_)
                      (if (gx#stx-pair? _hd2601526064_)
                          (let ((_e2601826071_ (gx#stx-e _hd2601526064_)))
                            (let ((_lp-hd2601926074_ (##car _e2601826071_))
                                  (_lp-tl2602026076_ (##cdr _e2601826071_)))
                              (if (gx#stx-pair? _lp-hd2601926074_)
                                  (let ((_e2602526079_
                                         (gx#stx-e _lp-hd2601926074_)))
                                    (let ((_hd2602626082_
                                           (##car _e2602526079_))
                                          (_tl2602726084_
                                           (##cdr _e2602526079_)))
                                      (if (gx#stx-pair? _tl2602726084_)
                                          (let ((_e2602826087_
                                                 (gx#stx-e _tl2602726084_)))
                                            (let ((_hd2602926090_
                                                   (##car _e2602826087_))
                                                  (_tl2603026092_
                                                   (##cdr _e2602826087_)))
                                              (if (gx#stx-null? _tl2603026092_)
                                                  (_loop2601726061_
                                                   _lp-tl2602026076_
                                                   (cons _hd2602926090_
                                                         _expr2602126066_)
                                                   (cons _hd2602626082_
                                                         _hd2602226068_))
                                                  (_g2600226035_
                                                   _g2600326038_))))
                                          (_g2600226035_ _g2600326038_))))
                                  (_g2600226035_ _g2600326038_))))
                          (let ((_expr2602326095_ (reverse _expr2602126066_))
                                (_hd2602426097_ (reverse _hd2602226068_)))
                            ((lambda (_L26100_ _L26101_ _L26102_ _L26103_)
                               (let* ((_g2612226138_
                                       (lambda (_g2612326135_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2612326135_)))
                                      (_g2612126192_
                                       (lambda (_g2612326141_)
                                         (if (gx#stx-pair/null? _g2612326141_)
                                             (if (fx>= (gx#stx-length
                                                        _g2612326141_)
                                                       '0)
                                                 (let ((_g27358_
                                                        (gx#syntax-split-splice
                                                         _g2612326141_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27359_
                                                            (values-count
                                                             _g27358_)))
                                                       (if (not (fx= _g27359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g27359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2612526143_
                                                            (values-ref
                                                             _g27358_
                                                             0))
                                                           (_tl2612726145_
                                                            (values-ref
                                                             _g27358_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2612726145_)
                                                           (letrec ((_loop2612826148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2612626151_ _expr2613226153_)
                               (if (gx#stx-pair? _hd2612626151_)
                                   (let ((_e2612926156_
                                          (gx#syntax-e _hd2612626151_)))
                                     (let ((_lp-hd2613026159_
                                            (##car _e2612926156_))
                                           (_lp-tl2613126161_
                                            (##cdr _e2612926156_)))
                                       (_loop2612826148_
                                        _lp-tl2613126161_
                                        (cons _lp-hd2613026159_
                                              _expr2613226153_))))
                                   (let ((_expr2613326164_
                                          (reverse _expr2613226153_)))
                                     ((lambda (_L26167_)
                                        (let ()
                                          (let ((_body26180_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26000_)
                                                      _L26100_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26103_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26167_
                                                            _L26102_)
                                                           (foldr2 (lambda (_g2618126185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2618226187_
                                    _g2618326189_)
                             (cons (cons _g2618226187_
                                         (cons _g2618126185_ '()))
                                   _g2618326189_))
                           '()
                           _L26167_
                           _L26102_))
                 _body26180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx25999_))))
                                      _expr2613326164_))))))
                     (_loop2612826148_ _target2612526143_ '()))
                   (_g2612226138_ _g2612326141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2612226138_ _g2612326141_))
                                             (_g2612226138_ _g2612326141_)))))
                                 (_g2612126192_
                                  (map (gxc#xform-apply-compile-e _args26000_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2619426197_
                                                          _g2619526199_)
                                                   (cons _g2619426197_
                                                         _g2619526199_))
                                                 '()
                                                 _L26101_))))))
                             _tl2601326053_
                             _expr2602326095_
                             _hd2602426097_
                             _hd2600926043_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2601726061_
                                                     _target2601426056_
                                                     '()
                                                     '()))
                                                  (_g2600226035_
                                                   _g2600326038_)))))
                                        (_g2600226035_ _g2600326038_))
                                    (_g2600226035_ _g2600326038_))))
                            (_g2600226035_ _g2600326038_))))
                    (_g2600226035_ _g2600326038_)))))
        (_g2600126202_ _stx25999_))))
  (define gxc#xform-operands
    (lambda (_stx25955_ . _args25956_)
      (let* ((_g2595825969_
              (lambda (_g2595925966_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2595925966_)))
             (_g2595725996_
              (lambda (_g2595925972_)
                (if (gx#stx-pair? _g2595925972_)
                    (let ((_e2596225974_ (gx#stx-e _g2595925972_)))
                      (let ((_hd2596325977_ (##car _e2596225974_))
                            (_tl2596425979_ (##cdr _e2596225974_)))
                        ((lambda (_L25982_ _L25983_)
                           (let ((_rands25994_
                                  (map (gxc#xform-apply-compile-e _args25956_)
                                       _L25982_)))
                             (gxc#xform-wrap-source
                              (cons _L25983_ _rands25994_)
                              _stx25955_)))
                         _tl2596425979_
                         _hd2596325977_)))
                    (_g2595825969_ _g2595925972_)))))
        (_g2595725996_ _stx25955_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx25885_ . _args25886_)
      (let* ((_g2588825905_
              (lambda (_g2588925902_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2588925902_)))
             (_g2588725952_
              (lambda (_g2588925908_)
                (if (gx#stx-pair? _g2588925908_)
                    (let ((_e2589225910_ (gx#stx-e _g2588925908_)))
                      (let ((_hd2589325913_ (##car _e2589225910_))
                            (_tl2589425915_ (##cdr _e2589225910_)))
                        (if (gx#stx-pair? _tl2589425915_)
                            (let ((_e2589525918_ (gx#stx-e _tl2589425915_)))
                              (let ((_hd2589625921_ (##car _e2589525918_))
                                    (_tl2589725923_ (##cdr _e2589525918_)))
                                (if (gx#stx-pair? _tl2589725923_)
                                    (let ((_e2589825926_
                                           (gx#stx-e _tl2589725923_)))
                                      (let ((_hd2589925929_
                                             (##car _e2589825926_))
                                            (_tl2590025931_
                                             (##cdr _e2589825926_)))
                                        (if (gx#stx-null? _tl2590025931_)
                                            ((lambda (_L25934_ _L25935_)
                                               (let ((_expr25950_
                                                      (apply gxc#compile-e
                                                             _L25934_
                                                             _args25886_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L25935_
                                                              (cons _expr25950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx25885_)))
                                             _hd2589925929_
                                             _hd2589625921_)
                                            (_g2588825905_ _g2588925908_))))
                                    (_g2588825905_ _g2588925908_))))
                            (_g2588825905_ _g2588925908_))))
                    (_g2588825905_ _g2588925908_)))))
        (_g2588725952_ _stx25885_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx25816_)
      (let* ((_g2581825835_
              (lambda (_g2581925832_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2581925832_)))
             (_g2581725882_
              (lambda (_g2581925838_)
                (if (gx#stx-pair? _g2581925838_)
                    (let ((_e2582225840_ (gx#stx-e _g2581925838_)))
                      (let ((_hd2582325843_ (##car _e2582225840_))
                            (_tl2582425845_ (##cdr _e2582225840_)))
                        (if (gx#stx-pair? _tl2582425845_)
                            (let ((_e2582525848_ (gx#stx-e _tl2582425845_)))
                              (let ((_hd2582625851_ (##car _e2582525848_))
                                    (_tl2582725853_ (##cdr _e2582525848_)))
                                (if (gx#stx-pair? _tl2582725853_)
                                    (let ((_e2582825856_
                                           (gx#stx-e _tl2582725853_)))
                                      (let ((_hd2582925859_
                                             (##car _e2582825856_))
                                            (_tl2583025861_
                                             (##cdr _e2582825856_)))
                                        (if (gx#stx-null? _tl2583025861_)
                                            ((lambda (_L25864_ _L25865_)
                                               (let ((_sym25880_
                                                      (gxc#generate-runtime-binding-id
                                                       _L25865_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym25880_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym25880_
                                                    '#t)
                                                   (gxc#compile-e _L25864_))))
                                             _hd2582925859_
                                             _hd2582625851_)
                                            (_g2581825835_ _g2581925838_))))
                                    (_g2581825835_ _g2581925838_))))
                            (_g2581825835_ _g2581925838_))))
                    (_g2581825835_ _g2581925838_)))))
        (_g2581725882_ _stx25816_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25050_)
      (let* ((_g2505525212_
              (lambda (_g2505625209_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2505625209_)))
             (_g2505425219_ (lambda (_g2505625215_) ((lambda () '#f))))
             (_g2505325359_
              (lambda (_g2505625222_)
                (if (gx#stx-pair? _g2505625222_)
                    (let ((_e2517225224_ (gx#stx-e _g2505625222_)))
                      (let ((_hd2517325227_ (##car _e2517225224_))
                            (_tl2517425229_ (##cdr _e2517225224_)))
                        (if (gx#stx-pair? _tl2517425229_)
                            (let ((_e2517525232_ (gx#stx-e _tl2517425229_)))
                              (let ((_hd2517625235_ (##car _e2517525232_))
                                    (_tl2517725237_ (##cdr _e2517525232_)))
                                (if (gx#stx-pair? _hd2517625235_)
                                    (let ((_e2517825240_
                                           (gx#stx-e _hd2517625235_)))
                                      (let ((_hd2517925243_
                                             (##car _e2517825240_))
                                            (_tl2518025245_
                                             (##cdr _e2517825240_)))
                                        (if (gx#identifier? _hd2517925243_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2517925243_)
                                                (if (gx#stx-pair?
                                                     _tl2518025245_)
                                                    (let ((_e2518125248_
                                                           (gx#stx-e
                                                            _tl2518025245_)))
                                                      (let ((_hd2518225251_
                                                             (##car _e2518125248_))
                                                            (_tl2518325253_
                                                             (##cdr _e2518125248_)))
                                                        (if (gx#stx-pair?
                                                             _hd2518225251_)
                                                            (let ((_e2518425256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2518225251_)))
                      (let ((_hd2518525259_ (##car _e2518425256_))
                            (_tl2518625261_ (##cdr _e2518425256_)))
                        (if (gx#identifier? _hd2518525259_)
                            (if (gx#stx-eq? '%#ref _hd2518525259_)
                                (if (gx#stx-pair? _tl2518625261_)
                                    (let ((_e2518725264_
                                           (gx#stx-e _tl2518625261_)))
                                      (let ((_hd2518825267_
                                             (##car _e2518725264_))
                                            (_tl2518925269_
                                             (##cdr _e2518725264_)))
                                        (if (gx#stx-null? _tl2518925269_)
                                            (if (gx#stx-pair? _tl2518325253_)
                                                (let ((_e2519025272_
                                                       (gx#stx-e
                                                        _tl2518325253_)))
                                                  (let ((_hd2519125275_
                                                         (##car _e2519025272_))
                                                        (_tl2519225277_
                                                         (##cdr _e2519025272_)))
                                                    (if (gx#stx-pair?
                                                         _hd2519125275_)
                                                        (let ((_e2519325280_
                                                               (gx#stx-e
                                                                _hd2519125275_)))
                                                          (let ((_hd2519425283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2519325280_))
                        (_tl2519525285_ (##cdr _e2519325280_)))
                    (if (gx#identifier? _hd2519425283_)
                        (if (gx#stx-eq? '%#ref _hd2519425283_)
                            (if (gx#stx-pair? _tl2519525285_)
                                (let ((_e2519625288_
                                       (gx#stx-e _tl2519525285_)))
                                  (let ((_hd2519725291_ (##car _e2519625288_))
                                        (_tl2519825293_ (##cdr _e2519625288_)))
                                    (if (gx#stx-null? _tl2519825293_)
                                        (if (gx#stx-pair? _tl2519225277_)
                                            (let ((_e2519925296_
                                                   (gx#stx-e _tl2519225277_)))
                                              (let ((_hd2520025299_
                                                     (##car _e2519925296_))
                                                    (_tl2520125301_
                                                     (##cdr _e2519925296_)))
                                                (if (gx#stx-pair?
                                                     _hd2520025299_)
                                                    (let ((_e2520225304_
                                                           (gx#stx-e
                                                            _hd2520025299_)))
                                                      (let ((_hd2520325307_
                                                             (##car _e2520225304_))
                                                            (_tl2520425309_
                                                             (##cdr _e2520225304_)))
                                                        (if (gx#identifier?
                                                             _hd2520325307_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2520325307_)
                        (if (gx#stx-pair? _tl2520425309_)
                            (let ((_e2520525312_ (gx#stx-e _tl2520425309_)))
                              (let ((_hd2520625315_ (##car _e2520525312_))
                                    (_tl2520725317_ (##cdr _e2520525312_)))
                                (if (gx#stx-null? _tl2520725317_)
                                    (if (gx#stx-null? _tl2520125301_)
                                        (if (gx#stx-null? _tl2517725237_)
                                            ((lambda (_L25320_
                                                      _L25321_
                                                      _L25322_
                                                      _L25323_)
                                               (if (if (gx#identifier?
                                                        _L25323_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25322_)
                        'apply)
                   (if (gx#free-identifier=? _L25323_ _L25320_)
                       (not (gx#free-identifier=? _L25321_ _L25323_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2505425219_
                                                    _g2505625222_)))
                                             _hd2520625315_
                                             _hd2519725291_
                                             _hd2518825267_
                                             _hd2517325227_)
                                            (_g2505425219_ _g2505625222_))
                                        (_g2505425219_ _g2505625222_))
                                    (_g2505425219_ _g2505625222_))))
                            (_g2505425219_ _g2505625222_))
                        (_g2505425219_ _g2505625222_))
                    (_g2505425219_ _g2505625222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2505425219_
                                                     _g2505625222_))))
                                            (_g2505425219_ _g2505625222_))
                                        (_g2505425219_ _g2505625222_))))
                                (_g2505425219_ _g2505625222_))
                            (_g2505425219_ _g2505625222_))
                        (_g2505425219_ _g2505625222_))))
                (_g2505425219_ _g2505625222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505425219_ _g2505625222_))
                                            (_g2505425219_ _g2505625222_))))
                                    (_g2505425219_ _g2505625222_))
                                (_g2505425219_ _g2505625222_))
                            (_g2505425219_ _g2505625222_))))
                    (_g2505425219_ _g2505625222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2505425219_
                                                     _g2505625222_))
                                                (_g2505425219_ _g2505625222_))
                                            (_g2505425219_ _g2505625222_))))
                                    (_g2505425219_ _g2505625222_))))
                            (_g2505425219_ _g2505625222_))))
                    (_g2505425219_ _g2505625222_))))
             (_g2505225619_
              (lambda (_g2505625362_)
                (if (gx#stx-pair? _g2505625362_)
                    (let ((_e2510825364_ (gx#stx-e _g2505625362_)))
                      (let ((_hd2510925367_ (##car _e2510825364_))
                            (_tl2511025369_ (##cdr _e2510825364_)))
                        (if (gx#stx-pair/null? _hd2510925367_)
                            (if (fx>= (gx#stx-length _hd2510925367_) '0)
                                (let ((_g27360_
                                       (gx#syntax-split-splice
                                        _hd2510925367_
                                        '0)))
                                  (begin
                                    (let ((_g27361_ (values-count _g27360_)))
                                      (if (not (fx= _g27361_ 2))
                                          (error "Context expects 2 values"
                                                 _g27361_)))
                                    (let ((_target2511125372_
                                           (values-ref _g27360_ 0))
                                          (_tl2511325374_
                                           (values-ref _g27360_ 1)))
                                      (letrec ((_loop2511425377_
                                                (lambda (_hd2511225380_
                                                         _arg2511825382_)
                                                  (if (gx#stx-pair?
                                                       _hd2511225380_)
                                                      (let ((_e2511525385_
                                                             (gx#stx-e
                                                              _hd2511225380_)))
                                                        (let ((_lp-hd2511625388_
                                                               (##car _e2511525385_))
                                                              (_lp-tl2511725390_
                                                               (##cdr _e2511525385_)))
                                                          (_loop2511425377_
                                                           _lp-tl2511725390_
                                                           (cons _lp-hd2511625388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2511825382_))))
              (let ((_arg2511925393_ (reverse _arg2511825382_)))
                (if (gx#stx-pair? _tl2511025369_)
                    (let ((_e2512025396_ (gx#stx-e _tl2511025369_)))
                      (let ((_hd2512125399_ (##car _e2512025396_))
                            (_tl2512225401_ (##cdr _e2512025396_)))
                        (if (gx#stx-pair? _hd2512125399_)
                            (let ((_e2512325404_ (gx#stx-e _hd2512125399_)))
                              (let ((_hd2512425407_ (##car _e2512325404_))
                                    (_tl2512525409_ (##cdr _e2512325404_)))
                                (if (gx#identifier? _hd2512425407_)
                                    (if (gx#stx-eq? '%#call _hd2512425407_)
                                        (if (gx#stx-pair? _tl2512525409_)
                                            (let ((_e2512625412_
                                                   (gx#stx-e _tl2512525409_)))
                                              (let ((_hd2512725415_
                                                     (##car _e2512625412_))
                                                    (_tl2512825417_
                                                     (##cdr _e2512625412_)))
                                                (if (gx#stx-pair?
                                                     _hd2512725415_)
                                                    (let ((_e2512925420_
                                                           (gx#stx-e
                                                            _hd2512725415_)))
                                                      (let ((_hd2513025423_
                                                             (##car _e2512925420_))
                                                            (_tl2513125425_
                                                             (##cdr _e2512925420_)))
                                                        (if (gx#identifier?
                                                             _hd2513025423_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2513025423_)
                        (if (gx#stx-pair? _tl2513125425_)
                            (let ((_e2513225428_ (gx#stx-e _tl2513125425_)))
                              (let ((_hd2513325431_ (##car _e2513225428_))
                                    (_tl2513425433_ (##cdr _e2513225428_)))
                                (if (gx#stx-null? _tl2513425433_)
                                    (if (gx#stx-pair? _tl2512825417_)
                                        (let ((_e2513525436_
                                               (gx#stx-e _tl2512825417_)))
                                          (let ((_hd2513625439_
                                                 (##car _e2513525436_))
                                                (_tl2513725441_
                                                 (##cdr _e2513525436_)))
                                            (if (gx#stx-pair? _hd2513625439_)
                                                (let ((_e2513825444_
                                                       (gx#stx-e
                                                        _hd2513625439_)))
                                                  (let ((_hd2513925447_
                                                         (##car _e2513825444_))
                                                        (_tl2514025449_
                                                         (##cdr _e2513825444_)))
                                                    (if (gx#identifier?
                                                         _hd2513925447_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2513925447_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2514025449_)
                        (let ((_e2514125452_ (gx#stx-e _tl2514025449_)))
                          (let ((_hd2514225455_ (##car _e2514125452_))
                                (_tl2514325457_ (##cdr _e2514125452_)))
                            (if (gx#stx-null? _tl2514325457_)
                                (if (gx#stx-pair/null? _tl2513725441_)
                                    (if (fx>= (gx#stx-length _tl2513725441_)
                                              '1)
                                        (let ((_g27362_
                                               (gx#syntax-split-splice
                                                _tl2513725441_
                                                '1)))
                                          (begin
                                            (let ((_g27363_
                                                   (values-count _g27362_)))
                                              (if (not (fx= _g27363_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27363_)))
                                            (let ((_target2514425460_
                                                   (values-ref _g27362_ 0))
                                                  (_tl2514625462_
                                                   (values-ref _g27362_ 1)))
                                              (if (gx#stx-pair? _tl2514625462_)
                                                  (let ((_e2515325465_
                                                         (gx#stx-e
                                                          _tl2514625462_)))
                                                    (let ((_hd2515425468_
                                                           (##car _e2515325465_))
                                                          (_tl2515525470_
                                                           (##cdr _e2515325465_)))
                                                      (if (gx#stx-pair?
                                                           _hd2515425468_)
                                                          (let ((_e2515625473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2515425468_)))
                    (let ((_hd2515725476_ (##car _e2515625473_))
                          (_tl2515825478_ (##cdr _e2515625473_)))
                      (if (gx#identifier? _hd2515725476_)
                          (if (gx#stx-eq? '%#ref _hd2515725476_)
                              (if (gx#stx-pair? _tl2515825478_)
                                  (let ((_e2515925481_
                                         (gx#stx-e _tl2515825478_)))
                                    (let ((_hd2516025484_
                                           (##car _e2515925481_))
                                          (_tl2516125486_
                                           (##cdr _e2515925481_)))
                                      (if (gx#stx-null? _tl2516125486_)
                                          (if (gx#stx-null? _tl2515525470_)
                                              (letrec ((_loop2514725489_
                                                        (lambda (_hd2514525492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2515125494_)
                  (if (gx#stx-pair? _hd2514525492_)
                      (let ((_e2514825497_ (gx#stx-e _hd2514525492_)))
                        (let ((_lp-hd2514925500_ (##car _e2514825497_))
                              (_lp-tl2515025502_ (##cdr _e2514825497_)))
                          (if (gx#stx-pair? _lp-hd2514925500_)
                              (let ((_e2516225505_
                                     (gx#stx-e _lp-hd2514925500_)))
                                (let ((_hd2516325508_ (##car _e2516225505_))
                                      (_tl2516425510_ (##cdr _e2516225505_)))
                                  (if (gx#identifier? _hd2516325508_)
                                      (if (gx#stx-eq? '%#ref _hd2516325508_)
                                          (if (gx#stx-pair? _tl2516425510_)
                                              (let ((_e2516525513_
                                                     (gx#stx-e
                                                      _tl2516425510_)))
                                                (let ((_hd2516625516_
                                                       (##car _e2516525513_))
                                                      (_tl2516725518_
                                                       (##cdr _e2516525513_)))
                                                  (if (gx#stx-null?
                                                       _tl2516725518_)
                                                      (_loop2514725489_
                                                       _lp-tl2515025502_
                                                       (cons _hd2516625516_
                                                             _xarg2515125494_))
                                                      (_g2505325359_
                                                       _g2505625362_))))
                                              (_g2505325359_ _g2505625362_))
                                          (_g2505325359_ _g2505625362_))
                                      (_g2505325359_ _g2505625362_))))
                              (_g2505325359_ _g2505625362_))))
                      (let ((_xarg2515225521_ (reverse _xarg2515125494_)))
                        (if (gx#stx-null? _tl2512225401_)
                            ((lambda (_L25524_
                                      _L25525_
                                      _L25526_
                                      _L25527_
                                      _L25528_
                                      _L25529_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2557225575_
                                                           _g2557325577_)
                                                    (cons _g2557225575_
                                                          _g2557325577_))
                                                  '()
                                                  _L25529_)))
                                       (if (gx#identifier? _L25528_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L25527_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2557925582_ _g2558025584_)
                                    (cons _g2557925582_ _g2558025584_))
                                  '()
                                  _L25529_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2558625589_ _g2558725591_)
                                    (cons _g2558625589_ _g2558725591_))
                                  '()
                                  _L25525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2559325596_ _g2559425598_)
                                    (cons _g2559325596_ _g2559425598_))
                                  '()
                                  _L25529_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2560025603_ _g2560125605_)
                                    (cons _g2560025603_ _g2560125605_))
                                  '()
                                  _L25525_)))
               (if (gx#free-identifier=? _L25528_ _L25524_)
                   (not (find (lambda (_g2560725609_)
                                (gx#free-identifier=? _g2560725609_ _L25526_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2561125614_ _g2561225616_)
                                          (cons _g2561125614_ _g2561225616_))
                                        (cons _L25528_ '())
                                        _L25529_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2505325359_ _g2505625362_)))
                             _hd2516025484_
                             _xarg2515225521_
                             _hd2514225455_
                             _hd2513325431_
                             _tl2511325374_
                             _arg2511925393_)
                            (_g2505325359_ _g2505625362_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2514725489_
                                                 _target2514425460_
                                                 '()))
                                              (_g2505325359_ _g2505625362_))
                                          (_g2505325359_ _g2505625362_))))
                                  (_g2505325359_ _g2505625362_))
                              (_g2505325359_ _g2505625362_))
                          (_g2505325359_ _g2505625362_))))
                  (_g2505325359_ _g2505625362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2505325359_
                                                   _g2505625362_)))))
                                        (_g2505325359_ _g2505625362_))
                                    (_g2505325359_ _g2505625362_))
                                (_g2505325359_ _g2505625362_))))
                        (_g2505325359_ _g2505625362_))
                    (_g2505325359_ _g2505625362_))
                (_g2505325359_ _g2505625362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505325359_
                                                 _g2505625362_))))
                                        (_g2505325359_ _g2505625362_))
                                    (_g2505325359_ _g2505625362_))))
                            (_g2505325359_ _g2505625362_))
                        (_g2505325359_ _g2505625362_))
                    (_g2505325359_ _g2505625362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2505325359_
                                                     _g2505625362_))))
                                            (_g2505325359_ _g2505625362_))
                                        (_g2505325359_ _g2505625362_))
                                    (_g2505325359_ _g2505625362_))))
                            (_g2505325359_ _g2505625362_))))
                    (_g2505325359_ _g2505625362_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2511425377_
                                         _target2511125372_
                                         '())))))
                                (_g2505325359_ _g2505625362_))
                            (_g2505325359_ _g2505625362_))))
                    (_g2505325359_ _g2505625362_))))
             (_g2505125813_
              (lambda (_g2505625622_)
                (if (gx#stx-pair? _g2505625622_)
                    (let ((_e2506025624_ (gx#stx-e _g2505625622_)))
                      (let ((_hd2506125627_ (##car _e2506025624_))
                            (_tl2506225629_ (##cdr _e2506025624_)))
                        (if (gx#stx-pair/null? _hd2506125627_)
                            (if (fx>= (gx#stx-length _hd2506125627_) '0)
                                (let ((_g27364_
                                       (gx#syntax-split-splice
                                        _hd2506125627_
                                        '0)))
                                  (begin
                                    (let ((_g27365_ (values-count _g27364_)))
                                      (if (not (fx= _g27365_ 2))
                                          (error "Context expects 2 values"
                                                 _g27365_)))
                                    (let ((_target2506325632_
                                           (values-ref _g27364_ 0))
                                          (_tl2506525634_
                                           (values-ref _g27364_ 1)))
                                      (if (gx#stx-null? _tl2506525634_)
                                          (letrec ((_loop2506625637_
                                                    (lambda (_hd2506425640_
                                                             _arg2507025642_)
                                                      (if (gx#stx-pair?
                                                           _hd2506425640_)
                                                          (let ((_e2506725645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2506425640_)))
                    (let ((_lp-hd2506825648_ (##car _e2506725645_))
                          (_lp-tl2506925650_ (##cdr _e2506725645_)))
                      (_loop2506625637_
                       _lp-tl2506925650_
                       (cons _lp-hd2506825648_ _arg2507025642_))))
                  (let ((_arg2507125653_ (reverse _arg2507025642_)))
                    (if (gx#stx-pair? _tl2506225629_)
                        (let ((_e2507225656_ (gx#stx-e _tl2506225629_)))
                          (let ((_hd2507325659_ (##car _e2507225656_))
                                (_tl2507425661_ (##cdr _e2507225656_)))
                            (if (gx#stx-pair? _hd2507325659_)
                                (let ((_e2507525664_
                                       (gx#stx-e _hd2507325659_)))
                                  (let ((_hd2507625667_ (##car _e2507525664_))
                                        (_tl2507725669_ (##cdr _e2507525664_)))
                                    (if (gx#identifier? _hd2507625667_)
                                        (if (gx#stx-eq? '%#call _hd2507625667_)
                                            (if (gx#stx-pair? _tl2507725669_)
                                                (let ((_e2507825672_
                                                       (gx#stx-e
                                                        _tl2507725669_)))
                                                  (let ((_hd2507925675_
                                                         (##car _e2507825672_))
                                                        (_tl2508025677_
                                                         (##cdr _e2507825672_)))
                                                    (if (gx#stx-pair?
                                                         _hd2507925675_)
                                                        (let ((_e2508125680_
                                                               (gx#stx-e
                                                                _hd2507925675_)))
                                                          (let ((_hd2508225683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2508125680_))
                        (_tl2508325685_ (##cdr _e2508125680_)))
                    (if (gx#identifier? _hd2508225683_)
                        (if (gx#stx-eq? '%#ref _hd2508225683_)
                            (if (gx#stx-pair? _tl2508325685_)
                                (let ((_e2508425688_
                                       (gx#stx-e _tl2508325685_)))
                                  (let ((_hd2508525691_ (##car _e2508425688_))
                                        (_tl2508625693_ (##cdr _e2508425688_)))
                                    (if (gx#stx-null? _tl2508625693_)
                                        (if (gx#stx-pair/null? _tl2508025677_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2508025677_)
                                                      '0)
                                                (let ((_g27366_
                                                       (gx#syntax-split-splice
                                                        _tl2508025677_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27367_
                                                           (values-count
                                                            _g27366_)))
                                                      (if (not (fx= _g27367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27367_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2508725696_
                                                           (values-ref
                                                            _g27366_
                                                            0))
                                                          (_tl2508925698_
                                                           (values-ref
                                                            _g27366_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2508925698_)
                                                          (letrec ((_loop2509025701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2508825704_ _xarg2509425706_)
                              (if (gx#stx-pair? _hd2508825704_)
                                  (let ((_e2509125709_
                                         (gx#stx-e _hd2508825704_)))
                                    (let ((_lp-hd2509225712_
                                           (##car _e2509125709_))
                                          (_lp-tl2509325714_
                                           (##cdr _e2509125709_)))
                                      (if (gx#stx-pair? _lp-hd2509225712_)
                                          (let ((_e2509625717_
                                                 (gx#stx-e _lp-hd2509225712_)))
                                            (let ((_hd2509725720_
                                                   (##car _e2509625717_))
                                                  (_tl2509825722_
                                                   (##cdr _e2509625717_)))
                                              (if (gx#identifier?
                                                   _hd2509725720_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2509725720_)
                                                      (if (gx#stx-pair?
                                                           _tl2509825722_)
                                                          (let ((_e2509925725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2509825722_)))
                    (let ((_hd2510025728_ (##car _e2509925725_))
                          (_tl2510125730_ (##cdr _e2509925725_)))
                      (if (gx#stx-null? _tl2510125730_)
                          (_loop2509025701_
                           _lp-tl2509325714_
                           (cons _hd2510025728_ _xarg2509425706_))
                          (_g2505225619_ _g2505625622_))))
                  (_g2505225619_ _g2505625622_))
              (_g2505225619_ _g2505625622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2505225619_
                                                   _g2505625622_))))
                                          (_g2505225619_ _g2505625622_))))
                                  (let ((_xarg2509525733_
                                         (reverse _xarg2509425706_)))
                                    (if (gx#stx-null? _tl2507425661_)
                                        ((lambda (_L25736_ _L25737_ _L25738_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2576625769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2576725771_)
                        (cons _g2576625769_ _g2576725771_))
                      '()
                      _L25738_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2577325776_ _g2577425778_)
                                        (cons _g2577325776_ _g2577425778_))
                                      '()
                                      _L25738_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2578025783_ _g2578125785_)
                                        (cons _g2578025783_ _g2578125785_))
                                      '()
                                      _L25736_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2578725790_ _g2578825792_)
                                        (cons _g2578725790_ _g2578825792_))
                                      '()
                                      _L25738_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2579425797_ _g2579525799_)
                                        (cons _g2579425797_ _g2579525799_))
                                      '()
                                      _L25736_)))
                   (not (find (lambda (_g2580125803_)
                                (gx#free-identifier=? _g2580125803_ _L25737_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2580525808_ _g2580625810_)
                                          (cons _g2580525808_ _g2580625810_))
                                        '()
                                        _L25738_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2505225619_ _g2505625622_)))
                                         _xarg2509525733_
                                         _hd2508525691_
                                         _arg2507125653_)
                                        (_g2505225619_ _g2505625622_)))))))
                    (_loop2509025701_ _target2508725696_ '()))
                  (_g2505225619_ _g2505625622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505225619_ _g2505625622_))
                                            (_g2505225619_ _g2505625622_))
                                        (_g2505225619_ _g2505625622_))))
                                (_g2505225619_ _g2505625622_))
                            (_g2505225619_ _g2505625622_))
                        (_g2505225619_ _g2505625622_))))
                (_g2505225619_ _g2505625622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2505225619_ _g2505625622_))
                                            (_g2505225619_ _g2505625622_))
                                        (_g2505225619_ _g2505625622_))))
                                (_g2505225619_ _g2505625622_))))
                        (_g2505225619_ _g2505625622_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2506625637_
                                             _target2506325632_
                                             '()))
                                          (_g2505225619_ _g2505625622_)))))
                                (_g2505225619_ _g2505625622_))
                            (_g2505225619_ _g2505625622_))))
                    (_g2505225619_ _g2505625622_)))))
        (_g2505125813_ _form25050_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form24518_)
      (let* ((_g2452224646_
              (lambda (_g2452324643_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2452324643_)))
             (_g2452124763_
              (lambda (_g2452324649_)
                (if (gx#stx-pair? _g2452324649_)
                    (let ((_e2461224651_ (gx#stx-e _g2452324649_)))
                      (let ((_hd2461324654_ (##car _e2461224651_))
                            (_tl2461424656_ (##cdr _e2461224651_)))
                        (if (gx#stx-pair? _tl2461424656_)
                            (let ((_e2461524659_ (gx#stx-e _tl2461424656_)))
                              (let ((_hd2461624662_ (##car _e2461524659_))
                                    (_tl2461724664_ (##cdr _e2461524659_)))
                                (if (gx#stx-pair? _hd2461624662_)
                                    (let ((_e2461824667_
                                           (gx#stx-e _hd2461624662_)))
                                      (let ((_hd2461924670_
                                             (##car _e2461824667_))
                                            (_tl2462024672_
                                             (##cdr _e2461824667_)))
                                        (if (gx#identifier? _hd2461924670_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2461924670_)
                                                (if (gx#stx-pair?
                                                     _tl2462024672_)
                                                    (let ((_e2462124675_
                                                           (gx#stx-e
                                                            _tl2462024672_)))
                                                      (let ((_hd2462224678_
                                                             (##car _e2462124675_))
                                                            (_tl2462324680_
                                                             (##cdr _e2462124675_)))
                                                        (if (gx#stx-pair?
                                                             _hd2462224678_)
                                                            (let ((_e2462424683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2462224678_)))
                      (let ((_hd2462524686_ (##car _e2462424683_))
                            (_tl2462624688_ (##cdr _e2462424683_)))
                        (if (gx#identifier? _hd2462524686_)
                            (if (gx#stx-eq? '%#ref _hd2462524686_)
                                (if (gx#stx-pair? _tl2462624688_)
                                    (let ((_e2462724691_
                                           (gx#stx-e _tl2462624688_)))
                                      (let ((_hd2462824694_
                                             (##car _e2462724691_))
                                            (_tl2462924696_
                                             (##cdr _e2462724691_)))
                                        (if (gx#stx-null? _tl2462924696_)
                                            (if (gx#stx-pair? _tl2462324680_)
                                                (let ((_e2463024699_
                                                       (gx#stx-e
                                                        _tl2462324680_)))
                                                  (let ((_hd2463124702_
                                                         (##car _e2463024699_))
                                                        (_tl2463224704_
                                                         (##cdr _e2463024699_)))
                                                    (if (gx#stx-pair?
                                                         _hd2463124702_)
                                                        (let ((_e2463324707_
                                                               (gx#stx-e
                                                                _hd2463124702_)))
                                                          (let ((_hd2463424710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2463324707_))
                        (_tl2463524712_ (##cdr _e2463324707_)))
                    (if (gx#identifier? _hd2463424710_)
                        (if (gx#stx-eq? '%#ref _hd2463424710_)
                            (if (gx#stx-pair? _tl2463524712_)
                                (let ((_e2463624715_
                                       (gx#stx-e _tl2463524712_)))
                                  (let ((_hd2463724718_ (##car _e2463624715_))
                                        (_tl2463824720_ (##cdr _e2463624715_)))
                                    (if (gx#stx-null? _tl2463824720_)
                                        (if (gx#stx-pair? _tl2463224704_)
                                            (let ((_e2463924723_
                                                   (gx#stx-e _tl2463224704_)))
                                              (let ((_hd2464024726_
                                                     (##car _e2463924723_))
                                                    (_tl2464124728_
                                                     (##cdr _e2463924723_)))
                                                (if (gx#stx-null?
                                                     _tl2464124728_)
                                                    (if (gx#stx-null?
                                                         _tl2461724664_)
                                                        ((lambda (_L24731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24732_
                          _L24733_)
                   (gxc#generate-runtime-binding-id _L24731_))
                 _hd2463724718_
                 _hd2462824694_
                 _hd2461324654_)
                (_g2452224646_ _g2452324649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2452224646_
                                                     _g2452324649_))))
                                            (_g2452224646_ _g2452324649_))
                                        (_g2452224646_ _g2452324649_))))
                                (_g2452224646_ _g2452324649_))
                            (_g2452224646_ _g2452324649_))
                        (_g2452224646_ _g2452324649_))))
                (_g2452224646_ _g2452324649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452224646_ _g2452324649_))
                                            (_g2452224646_ _g2452324649_))))
                                    (_g2452224646_ _g2452324649_))
                                (_g2452224646_ _g2452324649_))
                            (_g2452224646_ _g2452324649_))))
                    (_g2452224646_ _g2452324649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2452224646_
                                                     _g2452324649_))
                                                (_g2452224646_ _g2452324649_))
                                            (_g2452224646_ _g2452324649_))))
                                    (_g2452224646_ _g2452324649_))))
                            (_g2452224646_ _g2452324649_))))
                    (_g2452224646_ _g2452324649_))))
             (_g2452024899_
              (lambda (_g2452324766_)
                (if (gx#stx-pair? _g2452324766_)
                    (let ((_e2457324768_ (gx#stx-e _g2452324766_)))
                      (let ((_hd2457424771_ (##car _e2457324768_))
                            (_tl2457524773_ (##cdr _e2457324768_)))
                        (if (gx#stx-pair/null? _hd2457424771_)
                            (if (fx>= (gx#stx-length _hd2457424771_) '0)
                                (let ((_g27368_
                                       (gx#syntax-split-splice
                                        _hd2457424771_
                                        '0)))
                                  (begin
                                    (let ((_g27369_ (values-count _g27368_)))
                                      (if (not (fx= _g27369_ 2))
                                          (error "Context expects 2 values"
                                                 _g27369_)))
                                    (let ((_target2457624776_
                                           (values-ref _g27368_ 0))
                                          (_tl2457824778_
                                           (values-ref _g27368_ 1)))
                                      (letrec ((_loop2457924781_
                                                (lambda (_hd2457724784_
                                                         _arg2458324786_)
                                                  (if (gx#stx-pair?
                                                       _hd2457724784_)
                                                      (let ((_e2458024789_
                                                             (gx#stx-e
                                                              _hd2457724784_)))
                                                        (let ((_lp-hd2458124792_
                                                               (##car _e2458024789_))
                                                              (_lp-tl2458224794_
                                                               (##cdr _e2458024789_)))
                                                          (_loop2457924781_
                                                           _lp-tl2458224794_
                                                           (cons _lp-hd2458124792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2458324786_))))
              (let ((_arg2458424797_ (reverse _arg2458324786_)))
                (if (gx#stx-pair? _tl2457524773_)
                    (let ((_e2458524800_ (gx#stx-e _tl2457524773_)))
                      (let ((_hd2458624803_ (##car _e2458524800_))
                            (_tl2458724805_ (##cdr _e2458524800_)))
                        (if (gx#stx-pair? _hd2458624803_)
                            (let ((_e2458824808_ (gx#stx-e _hd2458624803_)))
                              (let ((_hd2458924811_ (##car _e2458824808_))
                                    (_tl2459024813_ (##cdr _e2458824808_)))
                                (if (gx#identifier? _hd2458924811_)
                                    (if (gx#stx-eq? '%#call _hd2458924811_)
                                        (if (gx#stx-pair? _tl2459024813_)
                                            (let ((_e2459124816_
                                                   (gx#stx-e _tl2459024813_)))
                                              (let ((_hd2459224819_
                                                     (##car _e2459124816_))
                                                    (_tl2459324821_
                                                     (##cdr _e2459124816_)))
                                                (if (gx#stx-pair?
                                                     _hd2459224819_)
                                                    (let ((_e2459424824_
                                                           (gx#stx-e
                                                            _hd2459224819_)))
                                                      (let ((_hd2459524827_
                                                             (##car _e2459424824_))
                                                            (_tl2459624829_
                                                             (##cdr _e2459424824_)))
                                                        (if (gx#identifier?
                                                             _hd2459524827_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2459524827_)
                        (if (gx#stx-pair? _tl2459624829_)
                            (let ((_e2459724832_ (gx#stx-e _tl2459624829_)))
                              (let ((_hd2459824835_ (##car _e2459724832_))
                                    (_tl2459924837_ (##cdr _e2459724832_)))
                                (if (gx#stx-null? _tl2459924837_)
                                    (if (gx#stx-pair? _tl2459324821_)
                                        (let ((_e2460024840_
                                               (gx#stx-e _tl2459324821_)))
                                          (let ((_hd2460124843_
                                                 (##car _e2460024840_))
                                                (_tl2460224845_
                                                 (##cdr _e2460024840_)))
                                            (if (gx#stx-pair? _hd2460124843_)
                                                (let ((_e2460324848_
                                                       (gx#stx-e
                                                        _hd2460124843_)))
                                                  (let ((_hd2460424851_
                                                         (##car _e2460324848_))
                                                        (_tl2460524853_
                                                         (##cdr _e2460324848_)))
                                                    (if (gx#identifier?
                                                         _hd2460424851_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2460424851_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2460524853_)
                        (let ((_e2460624856_ (gx#stx-e _tl2460524853_)))
                          (let ((_hd2460724859_ (##car _e2460624856_))
                                (_tl2460824861_ (##cdr _e2460624856_)))
                            (if (gx#stx-null? _tl2460824861_)
                                (if (gx#stx-null? _tl2458724805_)
                                    ((lambda (_L24864_
                                              _L24865_
                                              _L24866_
                                              _L24867_)
                                       (gxc#generate-runtime-binding-id
                                        _L24864_))
                                     _hd2460724859_
                                     _hd2459824835_
                                     _tl2457824778_
                                     _arg2458424797_)
                                    (_g2452124763_ _g2452324766_))
                                (_g2452124763_ _g2452324766_))))
                        (_g2452124763_ _g2452324766_))
                    (_g2452124763_ _g2452324766_))
                (_g2452124763_ _g2452324766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452124763_
                                                 _g2452324766_))))
                                        (_g2452124763_ _g2452324766_))
                                    (_g2452124763_ _g2452324766_))))
                            (_g2452124763_ _g2452324766_))
                        (_g2452124763_ _g2452324766_))
                    (_g2452124763_ _g2452324766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2452124763_
                                                     _g2452324766_))))
                                            (_g2452124763_ _g2452324766_))
                                        (_g2452124763_ _g2452324766_))
                                    (_g2452124763_ _g2452324766_))))
                            (_g2452124763_ _g2452324766_))))
                    (_g2452124763_ _g2452324766_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2457924781_
                                         _target2457624776_
                                         '())))))
                                (_g2452124763_ _g2452324766_))
                            (_g2452124763_ _g2452324766_))))
                    (_g2452124763_ _g2452324766_))))
             (_g2451925047_
              (lambda (_g2452324902_)
                (if (gx#stx-pair? _g2452324902_)
                    (let ((_e2452724904_ (gx#stx-e _g2452324902_)))
                      (let ((_hd2452824907_ (##car _e2452724904_))
                            (_tl2452924909_ (##cdr _e2452724904_)))
                        (if (gx#stx-pair/null? _hd2452824907_)
                            (if (fx>= (gx#stx-length _hd2452824907_) '0)
                                (let ((_g27370_
                                       (gx#syntax-split-splice
                                        _hd2452824907_
                                        '0)))
                                  (begin
                                    (let ((_g27371_ (values-count _g27370_)))
                                      (if (not (fx= _g27371_ 2))
                                          (error "Context expects 2 values"
                                                 _g27371_)))
                                    (let ((_target2453024912_
                                           (values-ref _g27370_ 0))
                                          (_tl2453224914_
                                           (values-ref _g27370_ 1)))
                                      (if (gx#stx-null? _tl2453224914_)
                                          (letrec ((_loop2453324917_
                                                    (lambda (_hd2453124920_
                                                             _arg2453724922_)
                                                      (if (gx#stx-pair?
                                                           _hd2453124920_)
                                                          (let ((_e2453424925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2453124920_)))
                    (let ((_lp-hd2453524928_ (##car _e2453424925_))
                          (_lp-tl2453624930_ (##cdr _e2453424925_)))
                      (_loop2453324917_
                       _lp-tl2453624930_
                       (cons _lp-hd2453524928_ _arg2453724922_))))
                  (let ((_arg2453824933_ (reverse _arg2453724922_)))
                    (if (gx#stx-pair? _tl2452924909_)
                        (let ((_e2453924936_ (gx#stx-e _tl2452924909_)))
                          (let ((_hd2454024939_ (##car _e2453924936_))
                                (_tl2454124941_ (##cdr _e2453924936_)))
                            (if (gx#stx-pair? _hd2454024939_)
                                (let ((_e2454224944_
                                       (gx#stx-e _hd2454024939_)))
                                  (let ((_hd2454324947_ (##car _e2454224944_))
                                        (_tl2454424949_ (##cdr _e2454224944_)))
                                    (if (gx#identifier? _hd2454324947_)
                                        (if (gx#stx-eq? '%#call _hd2454324947_)
                                            (if (gx#stx-pair? _tl2454424949_)
                                                (let ((_e2454524952_
                                                       (gx#stx-e
                                                        _tl2454424949_)))
                                                  (let ((_hd2454624955_
                                                         (##car _e2454524952_))
                                                        (_tl2454724957_
                                                         (##cdr _e2454524952_)))
                                                    (if (gx#stx-pair?
                                                         _hd2454624955_)
                                                        (let ((_e2454824960_
                                                               (gx#stx-e
                                                                _hd2454624955_)))
                                                          (let ((_hd2454924963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2454824960_))
                        (_tl2455024965_ (##cdr _e2454824960_)))
                    (if (gx#identifier? _hd2454924963_)
                        (if (gx#stx-eq? '%#ref _hd2454924963_)
                            (if (gx#stx-pair? _tl2455024965_)
                                (let ((_e2455124968_
                                       (gx#stx-e _tl2455024965_)))
                                  (let ((_hd2455224971_ (##car _e2455124968_))
                                        (_tl2455324973_ (##cdr _e2455124968_)))
                                    (if (gx#stx-null? _tl2455324973_)
                                        (if (gx#stx-pair/null? _tl2454724957_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2454724957_)
                                                      '0)
                                                (let ((_g27372_
                                                       (gx#syntax-split-splice
                                                        _tl2454724957_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27373_
                                                           (values-count
                                                            _g27372_)))
                                                      (if (not (fx= _g27373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27373_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2455424976_
                                                           (values-ref
                                                            _g27372_
                                                            0))
                                                          (_tl2455624978_
                                                           (values-ref
                                                            _g27372_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2455624978_)
                                                          (letrec ((_loop2455724981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2455524984_ _xarg2456124986_)
                              (if (gx#stx-pair? _hd2455524984_)
                                  (let ((_e2455824989_
                                         (gx#stx-e _hd2455524984_)))
                                    (let ((_lp-hd2455924992_
                                           (##car _e2455824989_))
                                          (_lp-tl2456024994_
                                           (##cdr _e2455824989_)))
                                      (if (gx#stx-pair? _lp-hd2455924992_)
                                          (let ((_e2456324997_
                                                 (gx#stx-e _lp-hd2455924992_)))
                                            (let ((_hd2456425000_
                                                   (##car _e2456324997_))
                                                  (_tl2456525002_
                                                   (##cdr _e2456324997_)))
                                              (if (gx#identifier?
                                                   _hd2456425000_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2456425000_)
                                                      (if (gx#stx-pair?
                                                           _tl2456525002_)
                                                          (let ((_e2456625005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2456525002_)))
                    (let ((_hd2456725008_ (##car _e2456625005_))
                          (_tl2456825010_ (##cdr _e2456625005_)))
                      (if (gx#stx-null? _tl2456825010_)
                          (_loop2455724981_
                           _lp-tl2456024994_
                           (cons _hd2456725008_ _xarg2456124986_))
                          (_g2452024899_ _g2452324902_))))
                  (_g2452024899_ _g2452324902_))
              (_g2452024899_ _g2452324902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2452024899_
                                                   _g2452324902_))))
                                          (_g2452024899_ _g2452324902_))))
                                  (let ((_xarg2456225013_
                                         (reverse _xarg2456124986_)))
                                    (if (gx#stx-null? _tl2454124941_)
                                        ((lambda (_L25016_ _L25017_ _L25018_)
                                           (gxc#generate-runtime-binding-id
                                            _L25017_))
                                         _xarg2456225013_
                                         _hd2455224971_
                                         _arg2453824933_)
                                        (_g2452024899_ _g2452324902_)))))))
                    (_loop2455724981_ _target2455424976_ '()))
                  (_g2452024899_ _g2452324902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452024899_ _g2452324902_))
                                            (_g2452024899_ _g2452324902_))
                                        (_g2452024899_ _g2452324902_))))
                                (_g2452024899_ _g2452324902_))
                            (_g2452024899_ _g2452324902_))
                        (_g2452024899_ _g2452324902_))))
                (_g2452024899_ _g2452324902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2452024899_ _g2452324902_))
                                            (_g2452024899_ _g2452324902_))
                                        (_g2452024899_ _g2452324902_))))
                                (_g2452024899_ _g2452324902_))))
                        (_g2452024899_ _g2452324902_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2453324917_
                                             _target2453024912_
                                             '()))
                                          (_g2452024899_ _g2452324902_)))))
                                (_g2452024899_ _g2452324902_))
                            (_g2452024899_ _g2452324902_))))
                    (_g2452024899_ _g2452324902_)))))
        (_g2451925047_ _form24518_))))
  (define gxc#lambda-form-arity
    (lambda (_form24322_)
      (let* ((_g2432424338_
              (lambda (_g2432524335_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2432524335_)))
             (_g2432324515_
              (lambda (_g2432524341_)
                (if (gx#stx-pair? _g2432524341_)
                    (let ((_e2432824343_ (gx#stx-e _g2432524341_)))
                      (let ((_hd2432924346_ (##car _e2432824343_))
                            (_tl2433024348_ (##cdr _e2432824343_)))
                        (if (gx#stx-pair? _tl2433024348_)
                            (let ((_e2433124351_ (gx#stx-e _tl2433024348_)))
                              (let ((_hd2433224354_ (##car _e2433124351_))
                                    (_tl2433324356_ (##cdr _e2433124351_)))
                                (if (gx#stx-null? _tl2433324356_)
                                    ((lambda (_L24359_ _L24360_)
                                       (let* ((_g2437524403_
                                               (lambda (_g2437624400_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2437624400_)))
                                              (_g2437424416_
                                               (lambda (_g2437624406_)
                                                 ((lambda (_L24408_)
                                                    (cons '0 '()))
                                                  _g2437624406_)))
                                              (_g2437324465_
                                               (lambda (_g2437624419_)
                                                 (if (gx#stx-pair/null?
                                                      _g2437624419_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2437624419_)
                                                               '0)
                                                         (let ((_g27374_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2437624419_
                         '0)))
                   (begin
                     (let ((_g27375_ (values-count _g27374_)))
                       (if (not (fx= _g27375_ 2))
                           (error "Context expects 2 values" _g27375_)))
                     (let ((_target2438924421_ (values-ref _g27374_ 0))
                           (_tl2439124423_ (values-ref _g27374_ 1)))
                       (letrec ((_loop2439224426_
                                 (lambda (_hd2439024429_ _arg2439624431_)
                                   (if (gx#stx-pair? _hd2439024429_)
                                       (let ((_e2439324434_
                                              (gx#stx-e _hd2439024429_)))
                                         (let ((_lp-hd2439424437_
                                                (##car _e2439324434_))
                                               (_lp-tl2439524439_
                                                (##cdr _e2439324434_)))
                                           (_loop2439224426_
                                            _lp-tl2439524439_
                                            (cons _lp-hd2439424437_
                                                  _arg2439624431_))))
                                       (let ((_arg2439724442_
                                              (reverse _arg2439624431_)))
                                         ((lambda (_L24445_ _L24446_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2445724460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2445824462_)
                              (cons _g2445724460_ _g2445824462_))
                            '()
                            _L24446_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2439124423_
                                          _arg2439724442_))))))
                         (_loop2439224426_ _target2438924421_ '())))))
                 (_g2437424416_ _g2437624419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2437424416_
                                                      _g2437624419_))))
                                              (_g2437224512_
                                               (lambda (_g2437624468_)
                                                 (if (gx#stx-pair/null?
                                                      _g2437624468_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2437624468_)
                                                               '0)
                                                         (let ((_g27376_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2437624468_
                         '0)))
                   (begin
                     (let ((_g27377_ (values-count _g27376_)))
                       (if (not (fx= _g27377_ 2))
                           (error "Context expects 2 values" _g27377_)))
                     (let ((_target2437824470_ (values-ref _g27376_ 0))
                           (_tl2438024472_ (values-ref _g27376_ 1)))
                       (if (gx#stx-null? _tl2438024472_)
                           (letrec ((_loop2438124475_
                                     (lambda (_hd2437924478_ _arg2438524480_)
                                       (if (gx#stx-pair? _hd2437924478_)
                                           (let ((_e2438224483_
                                                  (gx#stx-e _hd2437924478_)))
                                             (let ((_lp-hd2438324486_
                                                    (##car _e2438224483_))
                                                   (_lp-tl2438424488_
                                                    (##cdr _e2438224483_)))
                                               (_loop2438124475_
                                                _lp-tl2438424488_
                                                (cons _lp-hd2438324486_
                                                      _arg2438524480_))))
                                           (let ((_arg2438624491_
                                                  (reverse _arg2438524480_)))
                                             ((lambda (_L24494_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2450424507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2450524509_)
                            (cons _g2450424507_ _g2450524509_))
                          '()
                          _L24494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2438624491_))))))
                             (_loop2438124475_ _target2437824470_ '()))
                           (_g2437324465_ _g2437624468_)))))
                 (_g2437324465_ _g2437624468_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2437324465_
                                                      _g2437624468_)))))
                                         (_g2437224512_ _L24360_)))
                                     _hd2433224354_
                                     _hd2432924346_)
                                    (_g2432424338_ _g2432524341_))))
                            (_g2432424338_ _g2432524341_))))
                    (_g2432424338_ _g2432524341_)))))
        (_g2432324515_ _form24322_))))
  (define gxc#lambda-expr?
    (lambda (_expr24275_)
      (let* ((_g2427824288_
              (lambda (_g2427924285_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2427924285_)))
             (_g2427724295_ (lambda (_g2427924291_) ((lambda () '#f))))
             (_g2427624319_
              (lambda (_g2427924298_)
                (if (gx#stx-pair? _g2427924298_)
                    (let ((_e2428124300_ (gx#stx-e _g2427924298_)))
                      (let ((_hd2428224303_ (##car _e2428124300_))
                            (_tl2428324305_ (##cdr _e2428124300_)))
                        (if (gx#identifier? _hd2428224303_)
                            (if (gx#stx-eq? '%#lambda _hd2428224303_)
                                ((lambda (_L24308_) '#t) _tl2428324305_)
                                (_g2427724295_ _g2427924298_))
                            (_g2427724295_ _g2427924298_))))
                    (_g2427724295_ _g2427924298_)))))
        (_g2427624319_ _expr24275_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24228_)
      (let* ((_g2423124241_
              (lambda (_g2423224238_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2423224238_)))
             (_g2423024248_ (lambda (_g2423224244_) ((lambda () '#f))))
             (_g2422924272_
              (lambda (_g2423224251_)
                (if (gx#stx-pair? _g2423224251_)
                    (let ((_e2423424253_ (gx#stx-e _g2423224251_)))
                      (let ((_hd2423524256_ (##car _e2423424253_))
                            (_tl2423624258_ (##cdr _e2423424253_)))
                        (if (gx#identifier? _hd2423524256_)
                            (if (gx#stx-eq? '%#case-lambda _hd2423524256_)
                                ((lambda (_L24261_) '#t) _tl2423624258_)
                                (_g2423024248_ _g2423224251_))
                            (_g2423024248_ _g2423224251_))))
                    (_g2423024248_ _g2423224251_)))))
        (_g2422924272_ _expr24228_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24097_)
      (let* ((_g2410024130_
              (lambda (_g2410124127_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2410124127_)))
             (_g2409924137_ (lambda (_g2410124133_) ((lambda () '#f))))
             (_g2409824225_
              (lambda (_g2410124140_)
                (if (gx#stx-pair? _g2410124140_)
                    (let ((_e2410524142_ (gx#stx-e _g2410124140_)))
                      (let ((_hd2410624145_ (##car _e2410524142_))
                            (_tl2410724147_ (##cdr _e2410524142_)))
                        (if (gx#identifier? _hd2410624145_)
                            (if (gx#stx-eq? '%#let-values _hd2410624145_)
                                (if (gx#stx-pair? _tl2410724147_)
                                    (let ((_e2410824150_
                                           (gx#stx-e _tl2410724147_)))
                                      (let ((_hd2410924153_
                                             (##car _e2410824150_))
                                            (_tl2411024155_
                                             (##cdr _e2410824150_)))
                                        (if (gx#stx-pair? _hd2410924153_)
                                            (let ((_e2411124158_
                                                   (gx#stx-e _hd2410924153_)))
                                              (let ((_hd2411224161_
                                                     (##car _e2411124158_))
                                                    (_tl2411324163_
                                                     (##cdr _e2411124158_)))
                                                (if (gx#stx-pair?
                                                     _hd2411224161_)
                                                    (let ((_e2411424166_
                                                           (gx#stx-e
                                                            _hd2411224161_)))
                                                      (let ((_hd2411524169_
                                                             (##car _e2411424166_))
                                                            (_tl2411624171_
                                                             (##cdr _e2411424166_)))
                                                        (if (gx#stx-pair?
                                                             _hd2411524169_)
                                                            (let ((_e2411724174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2411524169_)))
                      (let ((_hd2411824177_ (##car _e2411724174_))
                            (_tl2411924179_ (##cdr _e2411724174_)))
                        (if (gx#stx-null? _tl2411924179_)
                            (if (gx#stx-pair? _tl2411624171_)
                                (let ((_e2412024182_
                                       (gx#stx-e _tl2411624171_)))
                                  (let ((_hd2412124185_ (##car _e2412024182_))
                                        (_tl2412224187_ (##cdr _e2412024182_)))
                                    (if (gx#stx-null? _tl2412224187_)
                                        (if (gx#stx-null? _tl2411324163_)
                                            (if (gx#stx-pair? _tl2411024155_)
                                                (let ((_e2412324190_
                                                       (gx#stx-e
                                                        _tl2411024155_)))
                                                  (let ((_hd2412424193_
                                                         (##car _e2412324190_))
                                                        (_tl2412524195_
                                                         (##cdr _e2412324190_)))
                                                    (if (gx#stx-null?
                                                         _tl2412524195_)
                                                        ((lambda (_L24198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24199_
                          _L24200_)
                   (if (gx#identifier? _L24200_)
                       (if (gxc#lambda-expr? _L24199_)
                           (gxc#case-lambda-expr? _L24198_)
                           '#f)
                       '#f))
                 _hd2412424193_
                 _hd2412124185_
                 _hd2411824177_)
                (_g2409924137_ _g2410124140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2409924137_ _g2410124140_))
                                            (_g2409924137_ _g2410124140_))
                                        (_g2409924137_ _g2410124140_))))
                                (_g2409924137_ _g2410124140_))
                            (_g2409924137_ _g2410124140_))))
                    (_g2409924137_ _g2410124140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2409924137_
                                                     _g2410124140_))))
                                            (_g2409924137_ _g2410124140_))))
                                    (_g2409924137_ _g2410124140_))
                                (_g2409924137_ _g2410124140_))
                            (_g2409924137_ _g2410124140_))))
                    (_g2409924137_ _g2410124140_)))))
        (_g2409824225_ _expr24097_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23422_)
      (let* ((_g2342523583_
              (lambda (_g2342623580_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2342623580_)))
             (_g2342423590_ (lambda (_g2342623586_) ((lambda () '#f))))
             (_g2342324094_
              (lambda (_g2342623593_)
                (if (gx#stx-pair? _g2342623593_)
                    (let ((_e2343823595_ (gx#stx-e _g2342623593_)))
                      (let ((_hd2343923598_ (##car _e2343823595_))
                            (_tl2344023600_ (##cdr _e2343823595_)))
                        (if (gx#identifier? _hd2343923598_)
                            (if (gx#stx-eq? '%#let-values _hd2343923598_)
                                (if (gx#stx-pair? _tl2344023600_)
                                    (let ((_e2344123603_
                                           (gx#stx-e _tl2344023600_)))
                                      (let ((_hd2344223606_
                                             (##car _e2344123603_))
                                            (_tl2344323608_
                                             (##cdr _e2344123603_)))
                                        (if (gx#stx-pair? _hd2344223606_)
                                            (let ((_e2344423611_
                                                   (gx#stx-e _hd2344223606_)))
                                              (let ((_hd2344523614_
                                                     (##car _e2344423611_))
                                                    (_tl2344623616_
                                                     (##cdr _e2344423611_)))
                                                (if (gx#stx-pair?
                                                     _hd2344523614_)
                                                    (let ((_e2344723619_
                                                           (gx#stx-e
                                                            _hd2344523614_)))
                                                      (let ((_hd2344823622_
                                                             (##car _e2344723619_))
                                                            (_tl2344923624_
                                                             (##cdr _e2344723619_)))
                                                        (if (gx#stx-pair?
                                                             _hd2344823622_)
                                                            (let ((_e2345023627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2344823622_)))
                      (let ((_hd2345123630_ (##car _e2345023627_))
                            (_tl2345223632_ (##cdr _e2345023627_)))
                        (if (gx#stx-null? _tl2345223632_)
                            (if (gx#stx-pair? _tl2344923624_)
                                (let ((_e2345323635_
                                       (gx#stx-e _tl2344923624_)))
                                  (let ((_hd2345423638_ (##car _e2345323635_))
                                        (_tl2345523640_ (##cdr _e2345323635_)))
                                    (if (gx#stx-pair? _hd2345423638_)
                                        (let ((_e2345623643_
                                               (gx#stx-e _hd2345423638_)))
                                          (let ((_hd2345723646_
                                                 (##car _e2345623643_))
                                                (_tl2345823648_
                                                 (##cdr _e2345623643_)))
                                            (if (gx#identifier? _hd2345723646_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2345723646_)
                                                    (if (gx#stx-pair?
                                                         _tl2345823648_)
                                                        (let ((_e2345923651_
                                                               (gx#stx-e
                                                                _tl2345823648_)))
                                                          (let ((_hd2346023654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2345923651_))
                        (_tl2346123656_ (##cdr _e2345923651_)))
                    (if (gx#stx-pair? _hd2346023654_)
                        (let ((_e2346223659_ (gx#stx-e _hd2346023654_)))
                          (let ((_hd2346323662_ (##car _e2346223659_))
                                (_tl2346423664_ (##cdr _e2346223659_)))
                            (if (gx#stx-pair? _hd2346323662_)
                                (let ((_e2346523667_
                                       (gx#stx-e _hd2346323662_)))
                                  (let ((_hd2346623670_ (##car _e2346523667_))
                                        (_tl2346723672_ (##cdr _e2346523667_)))
                                    (if (gx#stx-pair? _hd2346623670_)
                                        (let ((_e2346823675_
                                               (gx#stx-e _hd2346623670_)))
                                          (let ((_hd2346923678_
                                                 (##car _e2346823675_))
                                                (_tl2347023680_
                                                 (##cdr _e2346823675_)))
                                            (if (gx#stx-null? _tl2347023680_)
                                                (if (gx#stx-pair?
                                                     _tl2346723672_)
                                                    (let ((_e2347123683_
                                                           (gx#stx-e
                                                            _tl2346723672_)))
                                                      (let ((_hd2347223686_
                                                             (##car _e2347123683_))
                                                            (_tl2347323688_
                                                             (##cdr _e2347123683_)))
                                                        (if (gx#stx-null?
                                                             _tl2347323688_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2346423664_)
                        (if (gx#stx-pair? _tl2346123656_)
                            (let ((_e2347423691_ (gx#stx-e _tl2346123656_)))
                              (let ((_hd2347523694_ (##car _e2347423691_))
                                    (_tl2347623696_ (##cdr _e2347423691_)))
                                (if (gx#stx-pair? _hd2347523694_)
                                    (let ((_e2347723699_
                                           (gx#stx-e _hd2347523694_)))
                                      (let ((_hd2347823702_
                                             (##car _e2347723699_))
                                            (_tl2347923704_
                                             (##cdr _e2347723699_)))
                                        (if (gx#identifier? _hd2347823702_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2347823702_)
                                                (if (gx#stx-pair?
                                                     _tl2347923704_)
                                                    (let ((_e2348023707_
                                                           (gx#stx-e
                                                            _tl2347923704_)))
                                                      (let ((_hd2348123710_
                                                             (##car _e2348023707_))
                                                            (_tl2348223712_
                                                             (##cdr _e2348023707_)))
                                                        (if (gx#stx-pair?
                                                             _hd2348123710_)
                                                            (let ((_e2348323715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2348123710_)))
                      (let ((_hd2348423718_ (##car _e2348323715_))
                            (_tl2348523720_ (##cdr _e2348323715_)))
                        (if (gx#stx-pair? _tl2348223712_)
                            (let ((_e2348623723_ (gx#stx-e _tl2348223712_)))
                              (let ((_hd2348723726_ (##car _e2348623723_))
                                    (_tl2348823728_ (##cdr _e2348623723_)))
                                (if (gx#stx-pair? _hd2348723726_)
                                    (let ((_e2348923731_
                                           (gx#stx-e _hd2348723726_)))
                                      (let ((_hd2349023734_
                                             (##car _e2348923731_))
                                            (_tl2349123736_
                                             (##cdr _e2348923731_)))
                                        (if (gx#identifier? _hd2349023734_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2349023734_)
                                                (if (gx#stx-pair?
                                                     _tl2349123736_)
                                                    (let ((_e2349223739_
                                                           (gx#stx-e
                                                            _tl2349123736_)))
                                                      (let ((_hd2349323742_
                                                             (##car _e2349223739_))
                                                            (_tl2349423744_
                                                             (##cdr _e2349223739_)))
                                                        (if (gx#stx-pair?
                                                             _hd2349323742_)
                                                            (let ((_e2349523747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2349323742_)))
                      (let ((_hd2349623750_ (##car _e2349523747_))
                            (_tl2349723752_ (##cdr _e2349523747_)))
                        (if (gx#identifier? _hd2349623750_)
                            (if (gx#stx-eq? '%#ref _hd2349623750_)
                                (if (gx#stx-pair? _tl2349723752_)
                                    (let ((_e2349823755_
                                           (gx#stx-e _tl2349723752_)))
                                      (let ((_hd2349923758_
                                             (##car _e2349823755_))
                                            (_tl2350023760_
                                             (##cdr _e2349823755_)))
                                        (if (gx#stx-null? _tl2350023760_)
                                            (if (gx#stx-pair? _tl2349423744_)
                                                (let ((_e2350123763_
                                                       (gx#stx-e
                                                        _tl2349423744_)))
                                                  (let ((_hd2350223766_
                                                         (##car _e2350123763_))
                                                        (_tl2350323768_
                                                         (##cdr _e2350123763_)))
                                                    (if (gx#stx-pair?
                                                         _hd2350223766_)
                                                        (let ((_e2350423771_
                                                               (gx#stx-e
                                                                _hd2350223766_)))
                                                          (let ((_hd2350523774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2350423771_))
                        (_tl2350623776_ (##cdr _e2350423771_)))
                    (if (gx#identifier? _hd2350523774_)
                        (if (gx#stx-eq? '%#ref _hd2350523774_)
                            (if (gx#stx-pair? _tl2350623776_)
                                (let ((_e2350723779_
                                       (gx#stx-e _tl2350623776_)))
                                  (let ((_hd2350823782_ (##car _e2350723779_))
                                        (_tl2350923784_ (##cdr _e2350723779_)))
                                    (if (gx#stx-null? _tl2350923784_)
                                        (if (gx#stx-pair? _tl2350323768_)
                                            (let ((_e2351023787_
                                                   (gx#stx-e _tl2350323768_)))
                                              (let ((_hd2351123790_
                                                     (##car _e2351023787_))
                                                    (_tl2351223792_
                                                     (##cdr _e2351023787_)))
                                                (if (gx#stx-pair?
                                                     _hd2351123790_)
                                                    (let ((_e2351323795_
                                                           (gx#stx-e
                                                            _hd2351123790_)))
                                                      (let ((_hd2351423798_
                                                             (##car _e2351323795_))
                                                            (_tl2351523800_
                                                             (##cdr _e2351323795_)))
                                                        (if (gx#identifier?
                                                             _hd2351423798_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2351423798_)
                        (if (gx#stx-pair? _tl2351523800_)
                            (let ((_e2351623803_ (gx#stx-e _tl2351523800_)))
                              (let ((_hd2351723806_ (##car _e2351623803_))
                                    (_tl2351823808_ (##cdr _e2351623803_)))
                                (if (gx#stx-null? _tl2351823808_)
                                    (if (gx#stx-null? _tl2348823728_)
                                        (if (gx#stx-null? _tl2347623696_)
                                            (if (gx#stx-null? _tl2345523640_)
                                                (if (gx#stx-null?
                                                     _tl2344623616_)
                                                    (if (gx#stx-pair?
                                                         _tl2344323608_)
                                                        (let ((_e2351923811_
                                                               (gx#stx-e
                                                                _tl2344323608_)))
                                                          (let ((_hd2352023814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2351923811_))
                        (_tl2352123816_ (##cdr _e2351923811_)))
                    (if (gx#stx-pair? _hd2352023814_)
                        (let ((_e2352223819_ (gx#stx-e _hd2352023814_)))
                          (let ((_hd2352323822_ (##car _e2352223819_))
                                (_tl2352423824_ (##cdr _e2352223819_)))
                            (if (gx#identifier? _hd2352323822_)
                                (if (gx#stx-eq? '%#lambda _hd2352323822_)
                                    (if (gx#stx-pair? _tl2352423824_)
                                        (let ((_e2352523827_
                                               (gx#stx-e _tl2352423824_)))
                                          (let ((_hd2352623830_
                                                 (##car _e2352523827_))
                                                (_tl2352723832_
                                                 (##cdr _e2352523827_)))
                                            (if (gx#stx-pair? _tl2352723832_)
                                                (let ((_e2352823835_
                                                       (gx#stx-e
                                                        _tl2352723832_)))
                                                  (let ((_hd2352923838_
                                                         (##car _e2352823835_))
                                                        (_tl2353023840_
                                                         (##cdr _e2352823835_)))
                                                    (if (gx#stx-pair?
                                                         _hd2352923838_)
                                                        (let ((_e2353123843_
                                                               (gx#stx-e
                                                                _hd2352923838_)))
                                                          (let ((_hd2353223846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2353123843_))
                        (_tl2353323848_ (##cdr _e2353123843_)))
                    (if (gx#identifier? _hd2353223846_)
                        (if (gx#stx-eq? '%#call _hd2353223846_)
                            (if (gx#stx-pair? _tl2353323848_)
                                (let ((_e2353423851_
                                       (gx#stx-e _tl2353323848_)))
                                  (let ((_hd2353523854_ (##car _e2353423851_))
                                        (_tl2353623856_ (##cdr _e2353423851_)))
                                    (if (gx#stx-pair? _hd2353523854_)
                                        (let ((_e2353723859_
                                               (gx#stx-e _hd2353523854_)))
                                          (let ((_hd2353823862_
                                                 (##car _e2353723859_))
                                                (_tl2353923864_
                                                 (##cdr _e2353723859_)))
                                            (if (gx#identifier? _hd2353823862_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2353823862_)
                                                    (if (gx#stx-pair?
                                                         _tl2353923864_)
                                                        (let ((_e2354023867_
                                                               (gx#stx-e
                                                                _tl2353923864_)))
                                                          (let ((_hd2354123870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2354023867_))
                        (_tl2354223872_ (##cdr _e2354023867_)))
                    (if (gx#stx-null? _tl2354223872_)
                        (if (gx#stx-pair? _tl2353623856_)
                            (let ((_e2354323875_ (gx#stx-e _tl2353623856_)))
                              (let ((_hd2354423878_ (##car _e2354323875_))
                                    (_tl2354523880_ (##cdr _e2354323875_)))
                                (if (gx#stx-pair? _hd2354423878_)
                                    (let ((_e2354623883_
                                           (gx#stx-e _hd2354423878_)))
                                      (let ((_hd2354723886_
                                             (##car _e2354623883_))
                                            (_tl2354823888_
                                             (##cdr _e2354623883_)))
                                        (if (gx#identifier? _hd2354723886_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2354723886_)
                                                (if (gx#stx-pair?
                                                     _tl2354823888_)
                                                    (let ((_e2354923891_
                                                           (gx#stx-e
                                                            _tl2354823888_)))
                                                      (let ((_hd2355023894_
                                                             (##car _e2354923891_))
                                                            (_tl2355123896_
                                                             (##cdr _e2354923891_)))
                                                        (if (gx#stx-null?
                                                             _tl2355123896_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2354523880_)
                        (let ((_e2355223899_ (gx#stx-e _tl2354523880_)))
                          (let ((_hd2355323902_ (##car _e2355223899_))
                                (_tl2355423904_ (##cdr _e2355223899_)))
                            (if (gx#stx-pair? _hd2355323902_)
                                (let ((_e2355523907_
                                       (gx#stx-e _hd2355323902_)))
                                  (let ((_hd2355623910_ (##car _e2355523907_))
                                        (_tl2355723912_ (##cdr _e2355523907_)))
                                    (if (gx#identifier? _hd2355623910_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2355623910_)
                                            (if (gx#stx-pair? _tl2355723912_)
                                                (let ((_e2355823915_
                                                       (gx#stx-e
                                                        _tl2355723912_)))
                                                  (let ((_hd2355923918_
                                                         (##car _e2355823915_))
                                                        (_tl2356023920_
                                                         (##cdr _e2355823915_)))
                                                    (if (gx#stx-null?
                                                         _tl2356023920_)
                                                        (if (gx#stx-pair?
                                                             _tl2355423904_)
                                                            (let ((_e2356123923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2355423904_)))
                      (let ((_hd2356223926_ (##car _e2356123923_))
                            (_tl2356323928_ (##cdr _e2356123923_)))
                        (if (gx#stx-pair? _hd2356223926_)
                            (let ((_e2356423931_ (gx#stx-e _hd2356223926_)))
                              (let ((_hd2356523934_ (##car _e2356423931_))
                                    (_tl2356623936_ (##cdr _e2356423931_)))
                                (if (gx#identifier? _hd2356523934_)
                                    (if (gx#stx-eq? '%#ref _hd2356523934_)
                                        (if (gx#stx-pair? _tl2356623936_)
                                            (let ((_e2356723939_
                                                   (gx#stx-e _tl2356623936_)))
                                              (let ((_hd2356823942_
                                                     (##car _e2356723939_))
                                                    (_tl2356923944_
                                                     (##cdr _e2356723939_)))
                                                (if (gx#stx-null?
                                                     _tl2356923944_)
                                                    (if (gx#stx-pair?
                                                         _tl2356323928_)
                                                        (let ((_e2357023947_
                                                               (gx#stx-e
                                                                _tl2356323928_)))
                                                          (let ((_hd2357123950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2357023947_))
                        (_tl2357223952_ (##cdr _e2357023947_)))
                    (if (gx#stx-pair? _hd2357123950_)
                        (let ((_e2357323955_ (gx#stx-e _hd2357123950_)))
                          (let ((_hd2357423958_ (##car _e2357323955_))
                                (_tl2357523960_ (##cdr _e2357323955_)))
                            (if (gx#identifier? _hd2357423958_)
                                (if (gx#stx-eq? '%#ref _hd2357423958_)
                                    (if (gx#stx-pair? _tl2357523960_)
                                        (let ((_e2357623963_
                                               (gx#stx-e _tl2357523960_)))
                                          (let ((_hd2357723966_
                                                 (##car _e2357623963_))
                                                (_tl2357823968_
                                                 (##cdr _e2357623963_)))
                                            (if (gx#stx-null? _tl2357823968_)
                                                (if (gx#stx-null?
                                                     _tl2357223952_)
                                                    (if (gx#stx-null?
                                                         _tl2353023840_)
                                                        (if (gx#stx-null?
                                                             _tl2352123816_)
                                                            ((lambda (_L23971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23972_
                              _L23973_
                              _L23974_
                              _L23975_
                              _L23976_
                              _L23977_
                              _L23978_
                              _L23979_
                              _L23980_
                              _L23981_)
                       (if (eq? (gxc#generate-runtime-binding-id _L23978_)
                                'apply)
                           (if (eq? (gxc#generate-runtime-binding-id _L23974_)
                                    'apply)
                               (if (eq? (gxc#generate-runtime-binding-id
                                         _L23973_)
                                        'keyword-dispatch)
                                   (if (gx#free-identifier=? _L23981_ _L23972_)
                                       (if (gx#free-identifier=?
                                            _L23980_
                                            _L23977_)
                                           (if (gx#free-identifier=?
                                                _L23975_
                                                _L23971_)
                                               (gx#free-identifier=?
                                                _L23979_
                                                _L23976_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2357723966_
                     _hd2356823942_
                     _hd2355023894_
                     _hd2354123870_
                     _hd2352623830_
                     _hd2351723806_
                     _hd2350823782_
                     _hd2349923758_
                     _hd2348423718_
                     _hd2346923678_
                     _hd2345123630_)
                    (_g2342423590_ _g2342623593_))
                (_g2342423590_ _g2342623593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_
                                                 _g2342623593_))))
                                        (_g2342423590_ _g2342623593_))
                                    (_g2342423590_ _g2342623593_))
                                (_g2342423590_ _g2342623593_))))
                        (_g2342423590_ _g2342623593_))))
                (_g2342423590_ _g2342623593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))))
                                            (_g2342423590_ _g2342623593_))
                                        (_g2342423590_ _g2342623593_))
                                    (_g2342423590_ _g2342623593_))))
                            (_g2342423590_ _g2342623593_))))
                    (_g2342423590_ _g2342623593_))
                (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2342423590_ _g2342623593_))
                                            (_g2342423590_ _g2342623593_))
                                        (_g2342423590_ _g2342623593_))))
                                (_g2342423590_ _g2342623593_))))
                        (_g2342423590_ _g2342623593_))
                    (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_ _g2342623593_))
                                            (_g2342423590_ _g2342623593_))))
                                    (_g2342423590_ _g2342623593_))))
                            (_g2342423590_ _g2342623593_))
                        (_g2342423590_ _g2342623593_))))
                (_g2342423590_ _g2342623593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_
                                                 _g2342623593_))))
                                        (_g2342423590_ _g2342623593_))))
                                (_g2342423590_ _g2342623593_))
                            (_g2342423590_ _g2342623593_))
                        (_g2342423590_ _g2342623593_))))
                (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2342423590_
                                                 _g2342623593_))))
                                        (_g2342423590_ _g2342623593_))
                                    (_g2342423590_ _g2342623593_))
                                (_g2342423590_ _g2342623593_))))
                        (_g2342423590_ _g2342623593_))))
                (_g2342423590_ _g2342623593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_ _g2342623593_))
                                            (_g2342423590_ _g2342623593_))
                                        (_g2342423590_ _g2342623593_))
                                    (_g2342423590_ _g2342623593_))))
                            (_g2342423590_ _g2342623593_))
                        (_g2342423590_ _g2342623593_))
                    (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))))
                                            (_g2342423590_ _g2342623593_))
                                        (_g2342423590_ _g2342623593_))))
                                (_g2342423590_ _g2342623593_))
                            (_g2342423590_ _g2342623593_))
                        (_g2342423590_ _g2342623593_))))
                (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2342423590_ _g2342623593_))
                                            (_g2342423590_ _g2342623593_))))
                                    (_g2342423590_ _g2342623593_))
                                (_g2342423590_ _g2342623593_))
                            (_g2342423590_ _g2342623593_))))
                    (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_ _g2342623593_))
                                            (_g2342423590_ _g2342623593_))))
                                    (_g2342423590_ _g2342623593_))))
                            (_g2342423590_ _g2342623593_))))
                    (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_ _g2342623593_))
                                            (_g2342423590_ _g2342623593_))))
                                    (_g2342423590_ _g2342623593_))))
                            (_g2342423590_ _g2342623593_))
                        (_g2342423590_ _g2342623593_))
                    (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_
                                                 _g2342623593_))))
                                        (_g2342423590_ _g2342623593_))))
                                (_g2342423590_ _g2342623593_))))
                        (_g2342423590_ _g2342623593_))))
                (_g2342423590_ _g2342623593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))
                                                (_g2342423590_
                                                 _g2342623593_))))
                                        (_g2342423590_ _g2342623593_))))
                                (_g2342423590_ _g2342623593_))
                            (_g2342423590_ _g2342623593_))))
                    (_g2342423590_ _g2342623593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342423590_
                                                     _g2342623593_))))
                                            (_g2342423590_ _g2342623593_))))
                                    (_g2342423590_ _g2342623593_))
                                (_g2342423590_ _g2342623593_))
                            (_g2342423590_ _g2342623593_))))
                    (_g2342423590_ _g2342623593_)))))
        (_g2342324094_ _expr23422_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23164_ _id23165_ _clauses23166_ _gensym?23167_)
        (let _lp23169_ ((_rest23171_ _clauses23166_)
                        (_ids23172_ '())
                        (_impls23173_ '())
                        (_clauses23174_ '()))
          (let* ((_rest2317523183_ _rest23171_)
                 (_E2317823187_
                  (lambda () (error '"No clause matching" _rest2317523183_)))
                 (_else2317723191_
                  (lambda ()
                    (values (reverse _ids23172_)
                            (reverse _impls23173_)
                            (reverse _clauses23174_))))
                 (_K2317923396_
                  (lambda (_rest23194_ _clause23195_)
                    (if (gxc#dispatch-lambda-form? _clause23195_)
                        (_lp23169_
                         _rest23194_
                         _ids23172_
                         _impls23173_
                         (cons _clause23195_ _clauses23174_))
                        (let* ((_g2319723208_
                                (lambda (_g2319823205_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2319823205_)))
                               (_g2319623393_
                                (lambda (_g2319823211_)
                                  (if (gx#stx-pair? _g2319823211_)
                                      (let ((_e2320123213_
                                             (gx#stx-e _g2319823211_)))
                                        (let ((_hd2320223216_
                                               (##car _e2320123213_))
                                              (_tl2320323218_
                                               (##cdr _e2320123213_)))
                                          ((lambda (_L23221_ _L23222_)
                                             (let* ((_id23239_
                                                     (make-symbol
                                                      (gx#stx-e _id23165_)
                                                      '"__"
                                                      (length _clauses23174_)
                                                      (if _gensym?23167_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23241_
                                                     (gx#core-quote-syntax__1
                                                      _id23239_
                                                      (gx#stx-source
                                                       _stx23164_)))
                                                    (_impl23243_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23221_))
              _stx23164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23390_
                                                     (let* ((_g2324723275_
                                                             (lambda (_g2324823272_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2324823272_)))
                                                            (_g2324623291_
                                                             (lambda (_g2324823278_)
                                                               ((lambda (_L23280_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23222_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23280_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23164_)
                                      '())))
                        _g2324823278_)))
                    (_g2324523340_
                     (lambda (_g2324823294_)
                       (if (gx#stx-pair/null? _g2324823294_)
                           (if (fx>= (gx#stx-length _g2324823294_) '0)
                               (let ((_g27378_
                                      (gx#syntax-split-splice
                                       _g2324823294_
                                       '0)))
                                 (begin
                                   (let ((_g27379_ (values-count _g27378_)))
                                     (if (not (fx= _g27379_ 2))
                                         (error "Context expects 2 values"
                                                _g27379_)))
                                   (let ((_target2326123296_
                                          (values-ref _g27378_ 0))
                                         (_tl2326323298_
                                          (values-ref _g27378_ 1)))
                                     (letrec ((_loop2326423301_
                                               (lambda (_hd2326223304_
                                                        _arg2326823306_)
                                                 (if (gx#stx-pair?
                                                      _hd2326223304_)
                                                     (let ((_e2326523309_
                                                            (gx#stx-e
                                                             _hd2326223304_)))
                                                       (let ((_lp-hd2326623312_
                                                              (##car _e2326523309_))
                                                             (_lp-tl2326723314_
                                                              (##cdr _e2326523309_)))
                                                         (_loop2326423301_
                                                          _lp-tl2326723314_
                                                          (cons _lp-hd2326623312_
                                                                _arg2326823306_))))
                                                     (let ((_arg2326923317_
                                                            (reverse _arg2326823306_)))
                                                       ((lambda (_L23320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23321_)
                  (cons _L23222_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23241_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23320_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2333223335_ _g2333323337_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2333223335_ '()))
                                   _g2333323337_))
                           '()
                           _L23321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23164_)
                              '())))
                _tl2326323298_
                _arg2326923317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2326423301_
                                        _target2326123296_
                                        '())))))
                               (_g2324623291_ _g2324823294_))
                           (_g2324623291_ _g2324823294_))))
                    (_g2324423387_
                     (lambda (_g2324823343_)
                       (if (gx#stx-pair/null? _g2324823343_)
                           (if (fx>= (gx#stx-length _g2324823343_) '0)
                               (let ((_g27380_
                                      (gx#syntax-split-splice
                                       _g2324823343_
                                       '0)))
                                 (begin
                                   (let ((_g27381_ (values-count _g27380_)))
                                     (if (not (fx= _g27381_ 2))
                                         (error "Context expects 2 values"
                                                _g27381_)))
                                   (let ((_target2325023345_
                                          (values-ref _g27380_ 0))
                                         (_tl2325223347_
                                          (values-ref _g27380_ 1)))
                                     (if (gx#stx-null? _tl2325223347_)
                                         (letrec ((_loop2325323350_
                                                   (lambda (_hd2325123353_
                                                            _arg2325723355_)
                                                     (if (gx#stx-pair?
                                                          _hd2325123353_)
                                                         (let ((_e2325423358_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2325123353_)))
                   (let ((_lp-hd2325523361_ (##car _e2325423358_))
                         (_lp-tl2325623363_ (##cdr _e2325423358_)))
                     (_loop2325323350_
                      _lp-tl2325623363_
                      (cons _lp-hd2325523361_ _arg2325723355_))))
                 (let ((_arg2325823366_ (reverse _arg2325723355_)))
                   ((lambda (_L23369_)
                      (cons _L23222_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23241_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2337923382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2338023384_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2337923382_ '()))
                         _g2338023384_))
                 '()
                 _L23369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23164_)
                                  '())))
                    _arg2325823366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2325323350_
                                            _target2325023345_
                                            '()))
                                         (_g2324523340_ _g2324823343_)))))
                               (_g2324523340_ _g2324823343_))
                           (_g2324523340_ _g2324823343_)))))
               (_g2324423387_ _L23222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23169_
                                                _rest23194_
                                                (cons _id23241_ _ids23172_)
                                                (cons _impl23243_ _impls23173_)
                                                (cons _clause23390_
                                                      _clauses23174_))))
                                           _tl2320323218_
                                           _hd2320223216_)))
                                      (_g2319723208_ _g2319823211_)))))
                          (_g2319623393_ _clause23195_))))))
            (if (##pair? _rest2317523183_)
                (let ((_hd2318023399_ (##car _rest2317523183_))
                      (_tl2318123401_ (##cdr _rest2317523183_)))
                  (let* ((_clause23404_ _hd2318023399_)
                         (_rest23406_ _tl2318123401_))
                    (_K2317923396_ _rest23406_ _clause23404_)))
                (_else2317723191_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23411_ _id23412_ _clauses23413_)
          (let ((_gensym?23415_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23411_
             _id23412_
             _clauses23413_
             _gensym?23415_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27383_
          (let ((_g27382_ (length _g27383_)))
            (cond ((fx= _g27382_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27383_))
                  ((fx= _g27382_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27383_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27383_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22445_)
      (letrec ((_case-lambda-clause-def22447_
                (lambda (_id23160_ _impl23161_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23160_ '())
                               (cons (gxc#compile-e _impl23161_) '())))
                   _stx22445_)))
               (_opt-lambda-dispatch-name22448_
                (lambda (_id23156_)
                  (if (uninterned-symbol? _id23156_)
                      (let ((_str23158_ (symbol->string _id23156_)))
                        (if (string-prefix? _str23158_ '"opt-lambda")
                            '"%"
                            _id23156_))
                      _id23156_)))
               (_kw-lambda-dispatch-name22449_
                (lambda (_id23151_ _name23152_)
                  (if (uninterned-symbol? _id23151_)
                      (let ((_str23154_ (symbol->string _id23151_)))
                        (if (string-prefix? _str23154_ '"kw-lambda")
                            _name23152_
                            _id23151_))
                      _id23151_))))
        (let* ((_g2245422513_
                (lambda (_g2245522510_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2245522510_)))
               (_g2245322559_
                (lambda (_g2245522516_)
                  (if (gx#stx-pair? _g2245522516_)
                      (let ((_e2250022518_ (gx#stx-e _g2245522516_)))
                        (let ((_hd2250122521_ (##car _e2250022518_))
                              (_tl2250222523_ (##cdr _e2250022518_)))
                          (if (gx#stx-pair? _tl2250222523_)
                              (let ((_e2250322526_ (gx#stx-e _tl2250222523_)))
                                (let ((_hd2250422529_ (##car _e2250322526_))
                                      (_tl2250522531_ (##cdr _e2250322526_)))
                                  (if (gx#stx-pair? _tl2250522531_)
                                      (let ((_e2250622534_
                                             (gx#stx-e _tl2250522531_)))
                                        (let ((_hd2250722537_
                                               (##car _e2250622534_))
                                              (_tl2250822539_
                                               (##cdr _e2250622534_)))
                                          (if (gx#stx-null? _tl2250822539_)
                                              ((lambda (_L22542_ _L22543_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22543_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22542_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22445_))
                                               _hd2250722537_
                                               _hd2250422529_)
                                              (_g2245422513_ _g2245522516_))))
                                      (_g2245422513_ _g2245522516_))))
                              (_g2245422513_ _g2245522516_))))
                      (_g2245422513_ _g2245522516_))))
               (_g2245222841_
                (lambda (_g2245522562_)
                  (if (gx#stx-pair? _g2245522562_)
                      (let ((_e2248622564_ (gx#stx-e _g2245522562_)))
                        (let ((_hd2248722567_ (##car _e2248622564_))
                              (_tl2248822569_ (##cdr _e2248622564_)))
                          (if (gx#stx-pair? _tl2248822569_)
                              (let ((_e2248922572_ (gx#stx-e _tl2248822569_)))
                                (let ((_hd2249022575_ (##car _e2248922572_))
                                      (_tl2249122577_ (##cdr _e2248922572_)))
                                  (if (gx#stx-pair? _hd2249022575_)
                                      (let ((_e2249222580_
                                             (gx#stx-e _hd2249022575_)))
                                        (let ((_hd2249322583_
                                               (##car _e2249222580_))
                                              (_tl2249422585_
                                               (##cdr _e2249222580_)))
                                          (if (gx#stx-null? _tl2249422585_)
                                              (if (gx#stx-pair? _tl2249122577_)
                                                  (let ((_e2249522588_
                                                         (gx#stx-e
                                                          _tl2249122577_)))
                                                    (let ((_hd2249622591_
                                                           (##car _e2249522588_))
                                                          (_tl2249722593_
                                                           (##cdr _e2249522588_)))
                                                      (if (gx#stx-null?
                                                           _tl2249722593_)
                                                          ((lambda (_L22596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22597_)
                     (if (if (gx#identifier? _L22597_)
                             (gxc#kw-lambda-expr? _L22596_)
                             '#f)
                         (let* ((_g2261322666_
                                 (lambda (_g2261422663_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2261422663_)))
                                (_g2261222838_
                                 (lambda (_g2261422669_)
                                   (if (gx#stx-pair? _g2261422669_)
                                       (let ((_e2262022671_
                                              (gx#stx-e _g2261422669_)))
                                         (let ((_hd2262122674_
                                                (##car _e2262022671_))
                                               (_tl2262222676_
                                                (##cdr _e2262022671_)))
                                           (if (gx#stx-pair? _tl2262222676_)
                                               (let ((_e2262322679_
                                                      (gx#stx-e
                                                       _tl2262222676_)))
                                                 (let ((_hd2262422682_
                                                        (##car _e2262322679_))
                                                       (_tl2262522684_
                                                        (##cdr _e2262322679_)))
                                                   (if (gx#stx-pair?
                                                        _hd2262422682_)
                                                       (let ((_e2262622687_
                                                              (gx#stx-e
                                                               _hd2262422682_)))
                                                         (let ((_hd2262722690_
                                                                (##car _e2262622687_))
                                                               (_tl2262822692_
                                                                (##cdr _e2262622687_)))
                                                           (if (gx#stx-pair?
                                                                _hd2262722690_)
                                                               (let ((_e2262922695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2262722690_)))
                         (let ((_hd2263022698_ (##car _e2262922695_))
                               (_tl2263122700_ (##cdr _e2262922695_)))
                           (if (gx#stx-pair? _hd2263022698_)
                               (let ((_e2263222703_ (gx#stx-e _hd2263022698_)))
                                 (let ((_hd2263322706_ (##car _e2263222703_))
                                       (_tl2263422708_ (##cdr _e2263222703_)))
                                   (if (gx#stx-null? _tl2263422708_)
                                       (if (gx#stx-pair? _tl2263122700_)
                                           (let ((_e2263522711_
                                                  (gx#stx-e _tl2263122700_)))
                                             (let ((_hd2263622714_
                                                    (##car _e2263522711_))
                                                   (_tl2263722716_
                                                    (##cdr _e2263522711_)))
                                               (if (gx#stx-pair?
                                                    _hd2263622714_)
                                                   (let ((_e2263822719_
                                                          (gx#stx-e
                                                           _hd2263622714_)))
                                                     (let ((_hd2263922722_
                                                            (##car _e2263822719_))
                                                           (_tl2264022724_
                                                            (##cdr _e2263822719_)))
                                                       (if (gx#stx-pair?
                                                            _tl2264022724_)
                                                           (let ((_e2264122727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2264022724_)))
                     (let ((_hd2264222730_ (##car _e2264122727_))
                           (_tl2264322732_ (##cdr _e2264122727_)))
                       (if (gx#stx-pair? _hd2264222730_)
                           (let ((_e2264422735_ (gx#stx-e _hd2264222730_)))
                             (let ((_hd2264522738_ (##car _e2264422735_))
                                   (_tl2264622740_ (##cdr _e2264422735_)))
                               (if (gx#stx-pair? _hd2264522738_)
                                   (let ((_e2264722743_
                                          (gx#stx-e _hd2264522738_)))
                                     (let ((_hd2264822746_
                                            (##car _e2264722743_))
                                           (_tl2264922748_
                                            (##cdr _e2264722743_)))
                                       (if (gx#stx-pair? _hd2264822746_)
                                           (let ((_e2265022751_
                                                  (gx#stx-e _hd2264822746_)))
                                             (let ((_hd2265122754_
                                                    (##car _e2265022751_))
                                                   (_tl2265222756_
                                                    (##cdr _e2265022751_)))
                                               (if (gx#stx-null?
                                                    _tl2265222756_)
                                                   (if (gx#stx-pair?
                                                        _tl2264922748_)
                                                       (let ((_e2265322759_
                                                              (gx#stx-e
                                                               _tl2264922748_)))
                                                         (let ((_hd2265422762_
                                                                (##car _e2265322759_))
                                                               (_tl2265522764_
                                                                (##cdr _e2265322759_)))
                                                           (if (gx#stx-null?
                                                                _tl2265522764_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2264622740_)
                           (if (gx#stx-pair? _tl2264322732_)
                               (let ((_e2265622767_ (gx#stx-e _tl2264322732_)))
                                 (let ((_hd2265722770_ (##car _e2265622767_))
                                       (_tl2265822772_ (##cdr _e2265622767_)))
                                   (if (gx#stx-null? _tl2265822772_)
                                       (if (gx#stx-null? _tl2263722716_)
                                           (if (gx#stx-null? _tl2262822692_)
                                               (if (gx#stx-pair?
                                                    _tl2262522684_)
                                                   (let ((_e2265922775_
                                                          (gx#stx-e
                                                           _tl2262522684_)))
                                                     (let ((_hd2266022778_
                                                            (##car _e2265922775_))
                                                           (_tl2266122780_
                                                            (##cdr _e2265922775_)))
                                                       (if (gx#stx-null?
                                                            _tl2266122780_)
                                                           ((lambda (_L22783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22784_
                             _L22785_
                             _L22786_
                             _L22787_)
                      (let* ((_get-kws-id22827_
                              (make-symbol
                               (gx#stx-e _L22597_)
                               '"__"
                               (_kw-lambda-dispatch-name22449_
                                (gx#stx-e _L22787_)
                                '"@")))
                             (_main-id22829_
                              (make-symbol
                               (gx#stx-e _L22597_)
                               '"__"
                               (_kw-lambda-dispatch-name22449_
                                (gx#stx-e _L22786_)
                                '"%")))
                             (_g27384_
                              (gx#core-bind-runtime!__0 _get-kws-id22827_))
                             (_g27385_
                              (gx#core-bind-runtime!__0 _main-id22829_))
                             (_new-kw-dispatch22833_
                              (gxc#apply-expression-subst
                               _L22783_
                               _L22787_
                               _get-kws-id22827_))
                             (_new-get-kws22835_
                              (gxc#apply-expression-subst
                               _L22784_
                               _L22786_
                               _main-id22829_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#generate-runtime-binding-id _L22597_)
                           '" => "
                           (gxc#generate-runtime-binding-id _get-kws-id22827_)
                           '" => "
                           (gxc#generate-runtime-binding-id _main-id22829_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id22829_ '())
                                                     (cons _L22785_ '())))
                                         _stx22445_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id22827_
                                                                '())
                                                          (cons _new-get-kws22835_
                                                                '())))
                                              _stx22445_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L22597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch22833_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22445_)
                                                   '()))))
                           _stx22445_))))
                    _hd2266022778_
                    _hd2265722770_
                    _hd2265422762_
                    _hd2265122754_
                    _hd2263322706_)
                   (_g2261322666_ _g2261422669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2261322666_
                                                    _g2261422669_))
                                               (_g2261322666_ _g2261422669_))
                                           (_g2261322666_ _g2261422669_))
                                       (_g2261322666_ _g2261422669_))))
                               (_g2261322666_ _g2261422669_))
                           (_g2261322666_ _g2261422669_))
                       (_g2261322666_ _g2261422669_))))
               (_g2261322666_ _g2261422669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2261322666_
                                                    _g2261422669_))))
                                           (_g2261322666_ _g2261422669_))))
                                   (_g2261322666_ _g2261422669_))))
                           (_g2261322666_ _g2261422669_))))
                   (_g2261322666_ _g2261422669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2261322666_
                                                    _g2261422669_))))
                                           (_g2261322666_ _g2261422669_))
                                       (_g2261322666_ _g2261422669_))))
                               (_g2261322666_ _g2261422669_))))
                       (_g2261322666_ _g2261422669_))))
               (_g2261322666_ _g2261422669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2261322666_ _g2261422669_))))
                                       (_g2261322666_ _g2261422669_)))))
                           (_g2261222838_ _L22596_))
                         (_g2245322559_ _g2245522562_)))
                   _hd2249622591_
                   _hd2249322583_)
                  (_g2245322559_ _g2245522562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245322559_
                                                   _g2245522562_))
                                              (_g2245322559_ _g2245522562_))))
                                      (_g2245322559_ _g2245522562_))))
                              (_g2245322559_ _g2245522562_))))
                      (_g2245322559_ _g2245522562_))))
               (_g2245123023_
                (lambda (_g2245522844_)
                  (if (gx#stx-pair? _g2245522844_)
                      (let ((_e2247222846_ (gx#stx-e _g2245522844_)))
                        (let ((_hd2247322849_ (##car _e2247222846_))
                              (_tl2247422851_ (##cdr _e2247222846_)))
                          (if (gx#stx-pair? _tl2247422851_)
                              (let ((_e2247522854_ (gx#stx-e _tl2247422851_)))
                                (let ((_hd2247622857_ (##car _e2247522854_))
                                      (_tl2247722859_ (##cdr _e2247522854_)))
                                  (if (gx#stx-pair? _hd2247622857_)
                                      (let ((_e2247822862_
                                             (gx#stx-e _hd2247622857_)))
                                        (let ((_hd2247922865_
                                               (##car _e2247822862_))
                                              (_tl2248022867_
                                               (##cdr _e2247822862_)))
                                          (if (gx#stx-null? _tl2248022867_)
                                              (if (gx#stx-pair? _tl2247722859_)
                                                  (let ((_e2248122870_
                                                         (gx#stx-e
                                                          _tl2247722859_)))
                                                    (let ((_hd2248222873_
                                                           (##car _e2248122870_))
                                                          (_tl2248322875_
                                                           (##cdr _e2248122870_)))
                                                      (if (gx#stx-null?
                                                           _tl2248322875_)
                                                          ((lambda (_L22878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22879_)
                     (if (if (gx#identifier? _L22879_)
                             (gxc#opt-lambda-expr? _L22878_)
                             '#f)
                         (let* ((_g2289522925_
                                 (lambda (_g2289622922_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2289622922_)))
                                (_g2289423020_
                                 (lambda (_g2289622928_)
                                   (if (gx#stx-pair? _g2289622928_)
                                       (let ((_e2290022930_
                                              (gx#stx-e _g2289622928_)))
                                         (let ((_hd2290122933_
                                                (##car _e2290022930_))
                                               (_tl2290222935_
                                                (##cdr _e2290022930_)))
                                           (if (gx#stx-pair? _tl2290222935_)
                                               (let ((_e2290322938_
                                                      (gx#stx-e
                                                       _tl2290222935_)))
                                                 (let ((_hd2290422941_
                                                        (##car _e2290322938_))
                                                       (_tl2290522943_
                                                        (##cdr _e2290322938_)))
                                                   (if (gx#stx-pair?
                                                        _hd2290422941_)
                                                       (let ((_e2290622946_
                                                              (gx#stx-e
                                                               _hd2290422941_)))
                                                         (let ((_hd2290722949_
                                                                (##car _e2290622946_))
                                                               (_tl2290822951_
                                                                (##cdr _e2290622946_)))
                                                           (if (gx#stx-pair?
                                                                _hd2290722949_)
                                                               (let ((_e2290922954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2290722949_)))
                         (let ((_hd2291022957_ (##car _e2290922954_))
                               (_tl2291122959_ (##cdr _e2290922954_)))
                           (if (gx#stx-pair? _hd2291022957_)
                               (let ((_e2291222962_ (gx#stx-e _hd2291022957_)))
                                 (let ((_hd2291322965_ (##car _e2291222962_))
                                       (_tl2291422967_ (##cdr _e2291222962_)))
                                   (if (gx#stx-null? _tl2291422967_)
                                       (if (gx#stx-pair? _tl2291122959_)
                                           (let ((_e2291522970_
                                                  (gx#stx-e _tl2291122959_)))
                                             (let ((_hd2291622973_
                                                    (##car _e2291522970_))
                                                   (_tl2291722975_
                                                    (##cdr _e2291522970_)))
                                               (if (gx#stx-null?
                                                    _tl2291722975_)
                                                   (if (gx#stx-null?
                                                        _tl2290822951_)
                                                       (if (gx#stx-pair?
                                                            _tl2290522943_)
                                                           (let ((_e2291822978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2290522943_)))
                     (let ((_hd2291922981_ (##car _e2291822978_))
                           (_tl2292022983_ (##cdr _e2291822978_)))
                       (if (gx#stx-null? _tl2292022983_)
                           ((lambda (_L22986_ _L22987_ _L22988_)
                              (let* ((_lambda-id23012_
                                      (make-symbol
                                       (gx#stx-e _L22879_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22448_
                                        (gx#stx-e _L22988_))))
                                     (_lambda-id23014_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23012_
                                       (gx#stx-source _stx22445_)))
                                     (_g27386_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23014_))
                                     (_new-case-lambda-expr23017_
                                      (gxc#apply-expression-subst
                                       _L22986_
                                       _L22988_
                                       _lambda-id23014_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L22879_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id23014_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L22987_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22445_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L22879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23017_ '())))
               _stx22445_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22445_))))
                            _hd2291922981_
                            _hd2291622973_
                            _hd2291322965_)
                           (_g2289522925_ _g2289622928_))))
                   (_g2289522925_ _g2289622928_))
               (_g2289522925_ _g2289622928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2289522925_
                                                    _g2289622928_))))
                                           (_g2289522925_ _g2289622928_))
                                       (_g2289522925_ _g2289622928_))))
                               (_g2289522925_ _g2289622928_))))
                       (_g2289522925_ _g2289622928_))))
               (_g2289522925_ _g2289622928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2289522925_ _g2289622928_))))
                                       (_g2289522925_ _g2289622928_)))))
                           (_g2289423020_ _L22878_))
                         (_g2245222841_ _g2245522844_)))
                   _hd2248222873_
                   _hd2247922865_)
                  (_g2245222841_ _g2245522844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245222841_
                                                   _g2245522844_))
                                              (_g2245222841_ _g2245522844_))))
                                      (_g2245222841_ _g2245522844_))))
                              (_g2245222841_ _g2245522844_))))
                      (_g2245222841_ _g2245522844_))))
               (_g2245023148_
                (lambda (_g2245523026_)
                  (if (gx#stx-pair? _g2245523026_)
                      (let ((_e2245823028_ (gx#stx-e _g2245523026_)))
                        (let ((_hd2245923031_ (##car _e2245823028_))
                              (_tl2246023033_ (##cdr _e2245823028_)))
                          (if (gx#stx-pair? _tl2246023033_)
                              (let ((_e2246123036_ (gx#stx-e _tl2246023033_)))
                                (let ((_hd2246223039_ (##car _e2246123036_))
                                      (_tl2246323041_ (##cdr _e2246123036_)))
                                  (if (gx#stx-pair? _hd2246223039_)
                                      (let ((_e2246423044_
                                             (gx#stx-e _hd2246223039_)))
                                        (let ((_hd2246523047_
                                               (##car _e2246423044_))
                                              (_tl2246623049_
                                               (##cdr _e2246423044_)))
                                          (if (gx#stx-null? _tl2246623049_)
                                              (if (gx#stx-pair? _tl2246323041_)
                                                  (let ((_e2246723052_
                                                         (gx#stx-e
                                                          _tl2246323041_)))
                                                    (let ((_hd2246823055_
                                                           (##car _e2246723052_))
                                                          (_tl2246923057_
                                                           (##cdr _e2246723052_)))
                                                      (if (gx#stx-null?
                                                           _tl2246923057_)
                                                          ((lambda (_L23060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23061_)
                     (if (if (gx#identifier? _L23061_)
                             (gxc#case-lambda-expr? _L23060_)
                             '#f)
                         (let* ((_g2307823092_
                                 (lambda (_g2307923089_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2307923089_)))
                                (_g2307723123_
                                 (lambda (_g2307923095_)
                                   (if (gx#stx-pair? _g2307923095_)
                                       (let ((_e2308523097_
                                              (gx#stx-e _g2307923095_)))
                                         (let ((_hd2308623100_
                                                (##car _e2308523097_))
                                               (_tl2308723102_
                                                (##cdr _e2308523097_)))
                                           ((lambda (_L23105_)
                                              (let ((_g27387_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22445_
                                                      _L23061_
                                                      _L23105_)))
                                                (begin
                                                  (let ((_g27388_
                                                         (values-count
                                                          _g27387_)))
                                                    (if (not (fx= _g27388_ 3))
                                                        (error "Context expects 3 values"
                                                               _g27388_)))
                                                  (let ((_ids23115_
                                                         (values-ref
                                                          _g27387_
                                                          0))
                                                        (_impls23116_
                                                         (values-ref
                                                          _g27387_
                                                          1))
                                                        (_clauses23117_
                                                         (values-ref
                                                          _g27387_
                                                          2)))
                                                    (let* ((_g27389_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23115_))
                                                           (_defs23120_
                                                            (map _case-lambda-clause-def22447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23115_
                         _impls23116_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L23061_)
                 '" => "
                 (map gxc#identifier-symbol _ids23115_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23061_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23117_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22445_)
                                     '())
                               _defs23120_))
                 _stx22445_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2308723102_)))
                                       (_g2307823092_ _g2307923095_))))
                                (_g2307623145_
                                 (lambda (_g2307923126_)
                                   (if (gx#stx-pair? _g2307923126_)
                                       (let ((_e2308123128_
                                              (gx#stx-e _g2307923126_)))
                                         (let ((_hd2308223131_
                                                (##car _e2308123128_))
                                               (_tl2308323133_
                                                (##cdr _e2308123128_)))
                                           ((lambda (_L23136_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23136_)
                                                  _stx22445_
                                                  (_g2307723123_
                                                   _g2307923126_)))
                                            _tl2308323133_)))
                                       (_g2307723123_ _g2307923126_)))))
                           (_g2307623145_ _L23060_))
                         (_g2245123023_ _g2245523026_)))
                   _hd2246823055_
                   _hd2246523047_)
                  (_g2245123023_ _g2245523026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245123023_
                                                   _g2245523026_))
                                              (_g2245123023_ _g2245523026_))))
                                      (_g2245123023_ _g2245523026_))))
                              (_g2245123023_ _g2245523026_))))
                      (_g2245123023_ _g2245523026_)))))
          (_g2245023148_ _stx22445_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21381_)
      (letrec* ((_bind-e__2733427335_
                 (lambda (_id22429_ _expr22430_ _compile?22431_)
                   (cons (cons _id22429_ '())
                         (cons (if _compile?22431_
                                   (gxc#compile-e _expr22430_)
                                   _expr22430_)
                               '()))))
                (_bind-e__0__2733627337_
                 (lambda (_id22436_ _expr22437_)
                   (let ((_compile?22439_ '#t))
                     (_bind-e__2733427335_
                      _id22436_
                      _expr22437_
                      _compile?22439_))))
                (_bind-e21383_
                 (lambda _g27391_
                   (let ((_g27390_ (length _g27391_)))
                     (cond ((fx= _g27390_ 2)
                            (apply _bind-e__0__2733627337_ _g27391_))
                           ((fx= _g27390_ 3)
                            (apply _bind-e__2733427335_ _g27391_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27391_))))))
                (_compile-bindings21384_
                 (lambda (_bindings22013_)
                   (let _lp22015_ ((_rest22017_ _bindings22013_)
                                   (_lift122018_ '())
                                   (_lift222019_ '())
                                   (_bind22020_ '()))
                     (let* ((_rest2202122029_ _rest22017_)
                            (_E2202422033_
                             (lambda ()
                               (error '"No clause matching" _rest2202122029_)))
                            (_else2202322037_
                             (lambda ()
                               (values (reverse _lift122018_)
                                       (reverse _lift222019_)
                                       (reverse _bind22020_))))
                            (_K2202522416_
                             (lambda (_rest22040_ _hd22041_)
                               (let* ((_g2204522081_
                                       (lambda (_g2204622078_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2204622078_)))
                                      (_g2204422122_
                                       (lambda (_g2204622084_)
                                         (if (gx#stx-pair? _g2204622084_)
                                             (let ((_e2207122086_
                                                    (gx#stx-e _g2204622084_)))
                                               (let ((_hd2207222089_
                                                      (##car _e2207122086_))
                                                     (_tl2207322091_
                                                      (##cdr _e2207122086_)))
                                                 (if (gx#stx-pair?
                                                      _tl2207322091_)
                                                     (let ((_e2207422094_
                                                            (gx#stx-e
                                                             _tl2207322091_)))
                                                       (let ((_hd2207522097_
                                                              (##car _e2207422094_))
                                                             (_tl2207622099_
                                                              (##cdr _e2207422094_)))
                                                         (if (gx#stx-null?
                                                              _tl2207622099_)
                                                             ((lambda (_L22102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22103_)
                        (_lp22015_
                         _rest22040_
                         _lift122018_
                         _lift222019_
                         (cons (cons _L22103_
                                     (cons (gxc#compile-e _L22102_) '()))
                               _bind22020_)))
                      _hd2207522097_
                      _hd2207222089_)
                     (_g2204522081_ _g2204622084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2204522081_
                                                      _g2204622084_))))
                                             (_g2204522081_ _g2204622084_))))
                                      (_g2204322294_
                                       (lambda (_g2204622125_)
                                         (if (gx#stx-pair? _g2204622125_)
                                             (let ((_e2206022127_
                                                    (gx#stx-e _g2204622125_)))
                                               (let ((_hd2206122130_
                                                      (##car _e2206022127_))
                                                     (_tl2206222132_
                                                      (##cdr _e2206022127_)))
                                                 (if (gx#stx-pair?
                                                      _hd2206122130_)
                                                     (let ((_e2206322135_
                                                            (gx#stx-e
                                                             _hd2206122130_)))
                                                       (let ((_hd2206422138_
                                                              (##car _e2206322135_))
                                                             (_tl2206522140_
                                                              (##cdr _e2206322135_)))
                                                         (if (gx#stx-null?
                                                              _tl2206522140_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2206222132_)
                         (let ((_e2206622143_ (gx#stx-e _tl2206222132_)))
                           (let ((_hd2206722146_ (##car _e2206622143_))
                                 (_tl2206822148_ (##cdr _e2206622143_)))
                             (if (gx#stx-null? _tl2206822148_)
                                 ((lambda (_L22151_ _L22152_)
                                    (if (if (gx#identifier? _L22152_)
                                            (gxc#opt-lambda-expr? _L22151_)
                                            '#f)
                                        (let* ((_g2216622196_
                                                (lambda (_g2216722193_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2216722193_)))
                                               (_g2216522291_
                                                (lambda (_g2216722199_)
                                                  (if (gx#stx-pair?
                                                       _g2216722199_)
                                                      (let ((_e2217122201_
                                                             (gx#stx-e
                                                              _g2216722199_)))
                                                        (let ((_hd2217222204_
                                                               (##car _e2217122201_))
                                                              (_tl2217322206_
                                                               (##cdr _e2217122201_)))
                                                          (if (gx#stx-pair?
                                                               _tl2217322206_)
                                                              (let ((_e2217422209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2217322206_)))
                        (let ((_hd2217522212_ (##car _e2217422209_))
                              (_tl2217622214_ (##cdr _e2217422209_)))
                          (if (gx#stx-pair? _hd2217522212_)
                              (let ((_e2217722217_ (gx#stx-e _hd2217522212_)))
                                (let ((_hd2217822220_ (##car _e2217722217_))
                                      (_tl2217922222_ (##cdr _e2217722217_)))
                                  (if (gx#stx-pair? _hd2217822220_)
                                      (let ((_e2218022225_
                                             (gx#stx-e _hd2217822220_)))
                                        (let ((_hd2218122228_
                                               (##car _e2218022225_))
                                              (_tl2218222230_
                                               (##cdr _e2218022225_)))
                                          (if (gx#stx-pair? _hd2218122228_)
                                              (let ((_e2218322233_
                                                     (gx#stx-e
                                                      _hd2218122228_)))
                                                (let ((_hd2218422236_
                                                       (##car _e2218322233_))
                                                      (_tl2218522238_
                                                       (##cdr _e2218322233_)))
                                                  (if (gx#stx-null?
                                                       _tl2218522238_)
                                                      (if (gx#stx-pair?
                                                           _tl2218222230_)
                                                          (let ((_e2218622241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2218222230_)))
                    (let ((_hd2218722244_ (##car _e2218622241_))
                          (_tl2218822246_ (##cdr _e2218622241_)))
                      (if (gx#stx-null? _tl2218822246_)
                          (if (gx#stx-null? _tl2217922222_)
                              (if (gx#stx-pair? _tl2217622214_)
                                  (let ((_e2218922249_
                                         (gx#stx-e _tl2217622214_)))
                                    (let ((_hd2219022252_
                                           (##car _e2218922249_))
                                          (_tl2219122254_
                                           (##cdr _e2218922249_)))
                                      (if (gx#stx-null? _tl2219122254_)
                                          ((lambda (_L22257_ _L22258_ _L22259_)
                                             (let* ((_lambda-id22283_
                                                     (make-symbol
                                                      (gx#stx-e _L22152_)
                                                      (gensym '__)))
                                                    (_lambda-id22285_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22283_
                                                      (gx#stx-source
                                                       _stx21381_)))
                                                    (_g27392_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22285_))
                                                    (_new-case-lambda-expr22288_
                                                     (gxc#apply-expression-subst
                                                      _L22257_
                                                      _L22259_
                                                      _lambda-id22285_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L22152_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id22285_))
                                                 (_lp22015_
                                                  (cons (_bind-e__2733427335_
                                                         _L22152_
                                                         _new-case-lambda-expr22288_
                                                         '#f)
                                                        _rest22040_)
                                                  (cons (_bind-e__0__2733627337_
                                                         _lambda-id22285_
                                                         _L22258_)
                                                        _lift122018_)
                                                  _lift222019_
                                                  _bind22020_))))
                                           _hd2219022252_
                                           _hd2218722244_
                                           _hd2218422236_)
                                          (_g2216622196_ _g2216722199_))))
                                  (_g2216622196_ _g2216722199_))
                              (_g2216622196_ _g2216722199_))
                          (_g2216622196_ _g2216722199_))))
                  (_g2216622196_ _g2216722199_))
              (_g2216622196_ _g2216722199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2216622196_ _g2216722199_))))
                                      (_g2216622196_ _g2216722199_))))
                              (_g2216622196_ _g2216722199_))))
                      (_g2216622196_ _g2216722199_))))
              (_g2216622196_ _g2216722199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2216522291_ _L22151_))
                                        (_g2204422122_ _g2204622125_)))
                                  _hd2206722146_
                                  _hd2206422138_)
                                 (_g2204422122_ _g2204622125_))))
                         (_g2204422122_ _g2204622125_))
                     (_g2204422122_ _g2204622125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2204422122_
                                                      _g2204622125_))))
                                             (_g2204422122_ _g2204622125_))))
                                      (_g2204222413_
                                       (lambda (_g2204622297_)
                                         (if (gx#stx-pair? _g2204622297_)
                                             (let ((_e2204922299_
                                                    (gx#stx-e _g2204622297_)))
                                               (let ((_hd2205022302_
                                                      (##car _e2204922299_))
                                                     (_tl2205122304_
                                                      (##cdr _e2204922299_)))
                                                 (if (gx#stx-pair?
                                                      _hd2205022302_)
                                                     (let ((_e2205222307_
                                                            (gx#stx-e
                                                             _hd2205022302_)))
                                                       (let ((_hd2205322310_
                                                              (##car _e2205222307_))
                                                             (_tl2205422312_
                                                              (##cdr _e2205222307_)))
                                                         (if (gx#stx-null?
                                                              _tl2205422312_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2205122304_)
                         (let ((_e2205522315_ (gx#stx-e _tl2205122304_)))
                           (let ((_hd2205622318_ (##car _e2205522315_))
                                 (_tl2205722320_ (##cdr _e2205522315_)))
                             (if (gx#stx-null? _tl2205722320_)
                                 ((lambda (_L22323_ _L22324_)
                                    (if (if (gx#identifier? _L22324_)
                                            (gxc#case-lambda-expr? _L22323_)
                                            '#f)
                                        (let* ((_g2233922353_
                                                (lambda (_g2234022350_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2234022350_)))
                                               (_g2233822388_
                                                (lambda (_g2234022356_)
                                                  (if (gx#stx-pair?
                                                       _g2234022356_)
                                                      (let ((_e2234622358_
                                                             (gx#stx-e
                                                              _g2234022356_)))
                                                        (let ((_hd2234722361_
                                                               (##car _e2234622358_))
                                                              (_tl2234822363_
                                                               (##cdr _e2234622358_)))
                                                          ((lambda (_L22366_)
                                                             (let ((_g27393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21381_
                             _L22324_
                             _L22366_
                             '#t)))
                       (begin
                         (let ((_g27394_ (values-count _g27393_)))
                           (if (not (fx= _g27394_ 3))
                               (error "Context expects 3 values" _g27394_)))
                         (let ((_ids22376_ (values-ref _g27393_ 0))
                               (_impls22377_ (values-ref _g27393_ 1))
                               (_clauses22378_ (values-ref _g27393_ 2)))
                           (let* ((_g27395_
                                   (for-each gx#core-bind-runtime! _ids22376_))
                                  (_xbind22381_
                                   (map _bind-e21383_ _ids22376_ _impls22377_))
                                  (_expr*22383_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22378_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22385_
                                   (_bind-e__2733427335_
                                    _L22324_
                                    _expr*22383_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L22324_)
                                '" => "
                                (map gxc#identifier-symbol _ids22376_))
                               (_lp22015_
                                _rest22040_
                                _lift122018_
                                (foldl1 cons _lift222019_ _xbind22381_)
                                (cons _bind*22385_ _bind22020_))))))))
                   _tl2234822363_)))
              (_g2233922353_ _g2234022356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2233722410_
                                                (lambda (_g2234022391_)
                                                  (if (gx#stx-pair?
                                                       _g2234022391_)
                                                      (let ((_e2234222393_
                                                             (gx#stx-e
                                                              _g2234022391_)))
                                                        (let ((_hd2234322396_
                                                               (##car _e2234222393_))
                                                              (_tl2234422398_
                                                               (##cdr _e2234222393_)))
                                                          ((lambda (_L22401_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22401_)
                         (_lp22015_
                          _rest22040_
                          _lift122018_
                          _lift222019_
                          (cons (_bind-e__2733427335_ _L22324_ _L22323_ '#f)
                                _bind22020_))
                         (_g2233822388_ _g2234022391_)))
                   _tl2234422398_)))
              (_g2233822388_ _g2234022391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2233722410_ _L22323_))
                                        (_g2204322294_ _g2204622297_)))
                                  _hd2205622318_
                                  _hd2205322310_)
                                 (_g2204322294_ _g2204622297_))))
                         (_g2204322294_ _g2204622297_))
                     (_g2204322294_ _g2204622297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2204322294_
                                                      _g2204622297_))))
                                             (_g2204322294_ _g2204622297_)))))
                                 (_g2204222413_ _hd22041_)))))
                       (if (##pair? _rest2202122029_)
                           (let ((_hd2202622419_ (##car _rest2202122029_))
                                 (_tl2202722421_ (##cdr _rest2202122029_)))
                             (let* ((_hd22424_ _hd2202622419_)
                                    (_rest22426_ _tl2202722421_))
                               (_K2202522416_ _rest22426_ _hd22424_)))
                           (_else2202322037_))))))
                (_lift-kw-lambda?21385_
                 (lambda (_bind21937_)
                   (let* ((_g2194021957_
                           (lambda (_g2194121954_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2194121954_)))
                          (_g2193921964_
                           (lambda (_g2194121960_) ((lambda () '#f))))
                          (_g2193822010_
                           (lambda (_g2194121967_)
                             (if (gx#stx-pair? _g2194121967_)
                                 (let ((_e2194421969_
                                        (gx#stx-e _g2194121967_)))
                                   (let ((_hd2194521972_ (##car _e2194421969_))
                                         (_tl2194621974_
                                          (##cdr _e2194421969_)))
                                     (if (gx#stx-pair? _hd2194521972_)
                                         (let ((_e2194721977_
                                                (gx#stx-e _hd2194521972_)))
                                           (let ((_hd2194821980_
                                                  (##car _e2194721977_))
                                                 (_tl2194921982_
                                                  (##cdr _e2194721977_)))
                                             (if (gx#stx-null? _tl2194921982_)
                                                 (if (gx#stx-pair?
                                                      _tl2194621974_)
                                                     (let ((_e2195021985_
                                                            (gx#stx-e
                                                             _tl2194621974_)))
                                                       (let ((_hd2195121988_
                                                              (##car _e2195021985_))
                                                             (_tl2195221990_
                                                              (##cdr _e2195021985_)))
                                                         (if (gx#stx-null?
                                                              _tl2195221990_)
                                                             ((lambda (_L21993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21994_)
                        (if (gx#identifier? _L21994_)
                            (gxc#kw-lambda-expr? _L21993_)
                            '#f))
                      _hd2195121988_
                      _hd2194821980_)
                     (_g2193921964_ _g2194121967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2193921964_
                                                      _g2194121967_))
                                                 (_g2193921964_
                                                  _g2194121967_))))
                                         (_g2193921964_ _g2194121967_))))
                                 (_g2193921964_ _g2194121967_)))))
                     (_g2193822010_ _bind21937_))))
                (_lift-kw-lambda-bindings21386_
                 (lambda (_bindings21553_)
                   (let _lp21555_ ((_rest21557_ _bindings21553_)
                                   (_lift121558_ '())
                                   (_lift221559_ '())
                                   (_bind21560_ '()))
                     (let* ((_rest2156121569_ _rest21557_)
                            (_E2156421573_
                             (lambda ()
                               (error '"No clause matching" _rest2156121569_)))
                            (_else2156321577_
                             (lambda ()
                               (values (reverse _lift121558_)
                                       (reverse _lift221559_)
                                       (reverse _bind21560_))))
                            (_K2156521925_
                             (lambda (_rest21580_ _hd21581_)
                               (let* ((_g2158421609_
                                       (lambda (_g2158521606_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2158521606_)))
                                      (_g2158321650_
                                       (lambda (_g2158521612_)
                                         (if (gx#stx-pair? _g2158521612_)
                                             (let ((_e2159921614_
                                                    (gx#stx-e _g2158521612_)))
                                               (let ((_hd2160021617_
                                                      (##car _e2159921614_))
                                                     (_tl2160121619_
                                                      (##cdr _e2159921614_)))
                                                 (if (gx#stx-pair?
                                                      _tl2160121619_)
                                                     (let ((_e2160221622_
                                                            (gx#stx-e
                                                             _tl2160121619_)))
                                                       (let ((_hd2160321625_
                                                              (##car _e2160221622_))
                                                             (_tl2160421627_
                                                              (##cdr _e2160221622_)))
                                                         (if (gx#stx-null?
                                                              _tl2160421627_)
                                                             ((lambda (_L21630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21631_)
                        (_lp21555_
                         _rest21580_
                         _lift121558_
                         _lift221559_
                         (cons (cons _L21631_ (cons _L21630_ '()))
                               _bind21560_)))
                      _hd2160321625_
                      _hd2160021617_)
                     (_g2158421609_ _g2158521612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2158421609_
                                                      _g2158521612_))))
                                             (_g2158421609_ _g2158521612_))))
                                      (_g2158221922_
                                       (lambda (_g2158521653_)
                                         (if (gx#stx-pair? _g2158521653_)
                                             (let ((_e2158821655_
                                                    (gx#stx-e _g2158521653_)))
                                               (let ((_hd2158921658_
                                                      (##car _e2158821655_))
                                                     (_tl2159021660_
                                                      (##cdr _e2158821655_)))
                                                 (if (gx#stx-pair?
                                                      _hd2158921658_)
                                                     (let ((_e2159121663_
                                                            (gx#stx-e
                                                             _hd2158921658_)))
                                                       (let ((_hd2159221666_
                                                              (##car _e2159121663_))
                                                             (_tl2159321668_
                                                              (##cdr _e2159121663_)))
                                                         (if (gx#stx-null?
                                                              _tl2159321668_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2159021660_)
                         (let ((_e2159421671_ (gx#stx-e _tl2159021660_)))
                           (let ((_hd2159521674_ (##car _e2159421671_))
                                 (_tl2159621676_ (##cdr _e2159421671_)))
                             (if (gx#stx-null? _tl2159621676_)
                                 ((lambda (_L21679_ _L21680_)
                                    (if (if (gx#identifier? _L21680_)
                                            (gxc#kw-lambda-expr? _L21679_)
                                            '#f)
                                        (let* ((_g2169421747_
                                                (lambda (_g2169521744_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2169521744_)))
                                               (_g2169321919_
                                                (lambda (_g2169521750_)
                                                  (if (gx#stx-pair?
                                                       _g2169521750_)
                                                      (let ((_e2170121752_
                                                             (gx#stx-e
                                                              _g2169521750_)))
                                                        (let ((_hd2170221755_
                                                               (##car _e2170121752_))
                                                              (_tl2170321757_
                                                               (##cdr _e2170121752_)))
                                                          (if (gx#stx-pair?
                                                               _tl2170321757_)
                                                              (let ((_e2170421760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2170321757_)))
                        (let ((_hd2170521763_ (##car _e2170421760_))
                              (_tl2170621765_ (##cdr _e2170421760_)))
                          (if (gx#stx-pair? _hd2170521763_)
                              (let ((_e2170721768_ (gx#stx-e _hd2170521763_)))
                                (let ((_hd2170821771_ (##car _e2170721768_))
                                      (_tl2170921773_ (##cdr _e2170721768_)))
                                  (if (gx#stx-pair? _hd2170821771_)
                                      (let ((_e2171021776_
                                             (gx#stx-e _hd2170821771_)))
                                        (let ((_hd2171121779_
                                               (##car _e2171021776_))
                                              (_tl2171221781_
                                               (##cdr _e2171021776_)))
                                          (if (gx#stx-pair? _hd2171121779_)
                                              (let ((_e2171321784_
                                                     (gx#stx-e
                                                      _hd2171121779_)))
                                                (let ((_hd2171421787_
                                                       (##car _e2171321784_))
                                                      (_tl2171521789_
                                                       (##cdr _e2171321784_)))
                                                  (if (gx#stx-null?
                                                       _tl2171521789_)
                                                      (if (gx#stx-pair?
                                                           _tl2171221781_)
                                                          (let ((_e2171621792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2171221781_)))
                    (let ((_hd2171721795_ (##car _e2171621792_))
                          (_tl2171821797_ (##cdr _e2171621792_)))
                      (if (gx#stx-pair? _hd2171721795_)
                          (let ((_e2171921800_ (gx#stx-e _hd2171721795_)))
                            (let ((_hd2172021803_ (##car _e2171921800_))
                                  (_tl2172121805_ (##cdr _e2171921800_)))
                              (if (gx#stx-pair? _tl2172121805_)
                                  (let ((_e2172221808_
                                         (gx#stx-e _tl2172121805_)))
                                    (let ((_hd2172321811_
                                           (##car _e2172221808_))
                                          (_tl2172421813_
                                           (##cdr _e2172221808_)))
                                      (if (gx#stx-pair? _hd2172321811_)
                                          (let ((_e2172521816_
                                                 (gx#stx-e _hd2172321811_)))
                                            (let ((_hd2172621819_
                                                   (##car _e2172521816_))
                                                  (_tl2172721821_
                                                   (##cdr _e2172521816_)))
                                              (if (gx#stx-pair? _hd2172621819_)
                                                  (let ((_e2172821824_
                                                         (gx#stx-e
                                                          _hd2172621819_)))
                                                    (let ((_hd2172921827_
                                                           (##car _e2172821824_))
                                                          (_tl2173021829_
                                                           (##cdr _e2172821824_)))
                                                      (if (gx#stx-pair?
                                                           _hd2172921827_)
                                                          (let ((_e2173121832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2172921827_)))
                    (let ((_hd2173221835_ (##car _e2173121832_))
                          (_tl2173321837_ (##cdr _e2173121832_)))
                      (if (gx#stx-null? _tl2173321837_)
                          (if (gx#stx-pair? _tl2173021829_)
                              (let ((_e2173421840_ (gx#stx-e _tl2173021829_)))
                                (let ((_hd2173521843_ (##car _e2173421840_))
                                      (_tl2173621845_ (##cdr _e2173421840_)))
                                  (if (gx#stx-null? _tl2173621845_)
                                      (if (gx#stx-null? _tl2172721821_)
                                          (if (gx#stx-pair? _tl2172421813_)
                                              (let ((_e2173721848_
                                                     (gx#stx-e
                                                      _tl2172421813_)))
                                                (let ((_hd2173821851_
                                                       (##car _e2173721848_))
                                                      (_tl2173921853_
                                                       (##cdr _e2173721848_)))
                                                  (if (gx#stx-null?
                                                       _tl2173921853_)
                                                      (if (gx#stx-null?
                                                           _tl2171821797_)
                                                          (if (gx#stx-null?
                                                               _tl2170921773_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2170621765_)
                          (let ((_e2174021856_ (gx#stx-e _tl2170621765_)))
                            (let ((_hd2174121859_ (##car _e2174021856_))
                                  (_tl2174221861_ (##cdr _e2174021856_)))
                              (if (gx#stx-null? _tl2174221861_)
                                  ((lambda (_L21864_
                                            _L21865_
                                            _L21866_
                                            _L21867_
                                            _L21868_)
                                     (let* ((_get-kws-id21908_
                                             (make-symbol
                                              (gx#stx-e _L21680_)
                                              (gensym '__)))
                                            (_main-id21910_
                                             (make-symbol
                                              (gx#stx-e _L21680_)
                                              (gensym '__)))
                                            (_g27396_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21908_))
                                            (_g27397_
                                             (gx#core-bind-runtime!__0
                                              _main-id21910_))
                                            (_new-kw-dispatch21914_
                                             (gxc#apply-expression-subst
                                              _L21864_
                                              _L21868_
                                              _get-kws-id21908_))
                                            (_new-get-kws21916_
                                             (gxc#apply-expression-subst
                                              _L21865_
                                              _L21867_
                                              _main-id21910_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L21680_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21908_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21910_))
                                         (_lp21555_
                                          _rest21580_
                                          (cons (_bind-e__2733427335_
                                                 _main-id21910_
                                                 _L21866_
                                                 '#f)
                                                _lift121558_)
                                          (cons (_bind-e__2733427335_
                                                 _get-kws-id21908_
                                                 _new-get-kws21916_
                                                 '#f)
                                                _lift221559_)
                                          (cons (_bind-e__2733427335_
                                                 _L21680_
                                                 _new-kw-dispatch21914_
                                                 '#f)
                                                _bind21560_)))))
                                   _hd2174121859_
                                   _hd2173821851_
                                   _hd2173521843_
                                   _hd2173221835_
                                   _hd2171421787_)
                                  (_g2169421747_ _g2169521750_))))
                          (_g2169421747_ _g2169521750_))
                      (_g2169421747_ _g2169521750_))
                  (_g2169421747_ _g2169521750_))
              (_g2169421747_ _g2169521750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169421747_ _g2169521750_))
                                          (_g2169421747_ _g2169521750_))
                                      (_g2169421747_ _g2169521750_))))
                              (_g2169421747_ _g2169521750_))
                          (_g2169421747_ _g2169521750_))))
                  (_g2169421747_ _g2169521750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2169421747_
                                                   _g2169521750_))))
                                          (_g2169421747_ _g2169521750_))))
                                  (_g2169421747_ _g2169521750_))))
                          (_g2169421747_ _g2169521750_))))
                  (_g2169421747_ _g2169521750_))
              (_g2169421747_ _g2169521750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2169421747_ _g2169521750_))))
                                      (_g2169421747_ _g2169521750_))))
                              (_g2169421747_ _g2169521750_))))
                      (_g2169421747_ _g2169521750_))))
              (_g2169421747_ _g2169521750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2169321919_ _L21679_))
                                        (_g2158321650_ _g2158521653_)))
                                  _hd2159521674_
                                  _hd2159221666_)
                                 (_g2158321650_ _g2158521653_))))
                         (_g2158321650_ _g2158521653_))
                     (_g2158321650_ _g2158521653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2158321650_
                                                      _g2158521653_))))
                                             (_g2158321650_ _g2158521653_)))))
                                 (_g2158221922_ _hd21581_)))))
                       (if (##pair? _rest2156121569_)
                           (let ((_hd2156621928_ (##car _rest2156121569_))
                                 (_tl2156721930_ (##cdr _rest2156121569_)))
                             (let* ((_hd21933_ _hd2156621928_)
                                    (_rest21935_ _tl2156721930_))
                               (_K2156521925_ _rest21935_ _hd21933_)))
                           (_else2156321577_)))))))
        (let* ((_g2138921415_
                (lambda (_g2139021412_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2139021412_)))
               (_g2138821422_
                (lambda (_g2139021418_)
                  ((lambda () (gxc#xform-let-values% _stx21381_)))))
               (_g2138721550_
                (lambda (_g2139021425_)
                  (if (gx#stx-pair? _g2139021425_)
                      (let ((_e2139321427_ (gx#stx-e _g2139021425_)))
                        (let ((_hd2139421430_ (##car _e2139321427_))
                              (_tl2139521432_ (##cdr _e2139321427_)))
                          (if (gx#stx-pair? _tl2139521432_)
                              (let ((_e2139621435_ (gx#stx-e _tl2139521432_)))
                                (let ((_hd2139721438_ (##car _e2139621435_))
                                      (_tl2139821440_ (##cdr _e2139621435_)))
                                  (if (gx#stx-pair/null? _hd2139721438_)
                                      (if (fx>= (gx#stx-length _hd2139721438_)
                                                '0)
                                          (let ((_g27398_
                                                 (gx#syntax-split-splice
                                                  _hd2139721438_
                                                  '0)))
                                            (begin
                                              (let ((_g27399_
                                                     (values-count _g27398_)))
                                                (if (not (fx= _g27399_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27399_)))
                                              (let ((_target2139921443_
                                                     (values-ref _g27398_ 0))
                                                    (_tl2140121445_
                                                     (values-ref _g27398_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2140121445_)
                                                    (letrec ((_loop2140221448_
                                                              (lambda (_hd2140021451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2140621453_)
                        (if (gx#stx-pair? _hd2140021451_)
                            (let ((_e2140321456_ (gx#stx-e _hd2140021451_)))
                              (let ((_lp-hd2140421459_ (##car _e2140321456_))
                                    (_lp-tl2140521461_ (##cdr _e2140321456_)))
                                (_loop2140221448_
                                 _lp-tl2140521461_
                                 (cons _lp-hd2140421459_ _bind2140621453_))))
                            (let ((_bind2140721464_
                                   (reverse _bind2140621453_)))
                              (if (gx#stx-pair? _tl2139821440_)
                                  (let ((_e2140821467_
                                         (gx#stx-e _tl2139821440_)))
                                    (let ((_hd2140921470_
                                           (##car _e2140821467_))
                                          (_tl2141021472_
                                           (##cdr _e2140821467_)))
                                      (if (gx#stx-null? _tl2141021472_)
                                          ((lambda (_L21475_ _L21476_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2149621499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2149721501_)
                             (cons _g2149621499_ _g2149721501_))
                           '()
                           _L21476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?21385_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2150421507_ _g2150521509_)
                                    (cons _g2150421507_ _g2150521509_))
                                  '()
                                  _L21476_)))
                (let ((_g27400_
                       (_lift-kw-lambda-bindings21386_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2151121514_ _g2151221516_)
                                    (cons _g2151121514_ _g2151221516_))
                                  '()
                                  _L21476_)))))
                  (begin
                    (let ((_g27401_ (values-count _g27400_)))
                      (if (not (fx= _g27401_ 3))
                          (error "Context expects 3 values" _g27401_)))
                    (let ((_lift121519_ (values-ref _g27400_ 0))
                          (_lift221520_ (values-ref _g27400_ 1))
                          (_hd21521_ (values-ref _g27400_ 2)))
                      (let* ((_expr21523_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21521_ (cons _L21475_ '())))
                               _stx21381_))
                             (_expr21525_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift221520_
                                           (cons _expr21523_ '())))
                               _stx21381_))
                             (_expr21527_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift121519_
                                           (cons _expr21525_ '())))
                               _stx21381_)))
                        (gxc#lift-top-lambda-let-values% _expr21527_)))))
                (let ((_g27402_
                       (_compile-bindings21384_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2152921532_ _g2153021534_)
                                    (cons _g2152921532_ _g2153021534_))
                                  '()
                                  _L21476_)))))
                  (begin
                    (let ((_g27403_ (values-count _g27402_)))
                      (if (not (fx= _g27403_ 3))
                          (error "Context expects 3 values" _g27403_)))
                    (let ((_lift121537_ (values-ref _g27402_ 0))
                          (_lift221538_ (values-ref _g27402_ 1))
                          (_hd21539_ (values-ref _g27402_ 2)))
                      (let* ((_body21541_ (gxc#compile-e _L21475_))
                             (_expr21543_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21539_ (cons _body21541_ '())))
                               _stx21381_))
                             (_expr21545_
                              (if (null? _lift221538_)
                                  _expr21543_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift221538_
                                               (cons _expr21543_ '())))
                                   _stx21381_)))
                             (_expr21547_
                              (if (null? _lift121537_)
                                  _expr21545_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift121537_
                                               (cons _expr21545_ '())))
                                   _stx21381_))))
                        _expr21547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27344
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27344)
                                                      __obj27344)))
                                                 (_g2138821422_
                                                  _g2139021425_)))
                                           _hd2140921470_
                                           _bind2140721464_)
                                          (_g2138821422_ _g2139021425_))))
                                  (_g2138821422_ _g2139021425_)))))))
              (_loop2140221448_ _target2139921443_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2138821422_
                                                     _g2139021425_)))))
                                          (_g2138821422_ _g2139021425_))
                                      (_g2138821422_ _g2139021425_))))
                              (_g2138821422_ _g2139021425_))))
                      (_g2138821422_ _g2139021425_)))))
          (_g2138721550_ _stx21381_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx20529_)
      (letrec* ((_bind-e__2733927340_
                 (lambda (_id21365_ _expr21366_ _compile?21367_)
                   (cons (cons _id21365_ '())
                         (cons (if _compile?21367_
                                   (gxc#compile-e _expr21366_)
                                   _expr21366_)
                               '()))))
                (_bind-e__0__2734127342_
                 (lambda (_id21372_ _expr21373_)
                   (let ((_compile?21375_ '#t))
                     (_bind-e__2733927340_
                      _id21372_
                      _expr21373_
                      _compile?21375_))))
                (_bind-e20531_
                 (lambda _g27405_
                   (let ((_g27404_ (length _g27405_)))
                     (cond ((fx= _g27404_ 2)
                            (apply _bind-e__0__2734127342_ _g27405_))
                           ((fx= _g27404_ 3)
                            (apply _bind-e__2733927340_ _g27405_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27405_))))))
                (_compile-bindings20532_
                 (lambda (_rest20667_)
                   (let _lp20669_ ((_rest20671_ _rest20667_) (_bind20672_ '()))
                     (let* ((_rest2067320681_ _rest20671_)
                            (_E2067620685_
                             (lambda ()
                               (error '"No clause matching" _rest2067320681_)))
                            (_else2067520689_
                             (lambda () (reverse _bind20672_)))
                            (_K2067721352_
                             (lambda (_rest20692_ _hd20693_)
                               (let* ((_g2069820745_
                                       (lambda (_g2069920742_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2069920742_)))
                                      (_g2069720786_
                                       (lambda (_g2069920748_)
                                         (if (gx#stx-pair? _g2069920748_)
                                             (let ((_e2073520750_
                                                    (gx#stx-e _g2069920748_)))
                                               (let ((_hd2073620753_
                                                      (##car _e2073520750_))
                                                     (_tl2073720755_
                                                      (##cdr _e2073520750_)))
                                                 (if (gx#stx-pair?
                                                      _tl2073720755_)
                                                     (let ((_e2073820758_
                                                            (gx#stx-e
                                                             _tl2073720755_)))
                                                       (let ((_hd2073920761_
                                                              (##car _e2073820758_))
                                                             (_tl2074020763_
                                                              (##cdr _e2073820758_)))
                                                         (if (gx#stx-null?
                                                              _tl2074020763_)
                                                             ((lambda (_L20766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20767_)
                        (_lp20669_
                         _rest20692_
                         (cons (cons _L20767_
                                     (cons (gxc#compile-e _L20766_) '()))
                               _bind20672_)))
                      _hd2073920761_
                      _hd2073620753_)
                     (_g2069820745_ _g2069920748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069820745_
                                                      _g2069920748_))))
                                             (_g2069820745_ _g2069920748_))))
                                      (_g2069621058_
                                       (lambda (_g2069920789_)
                                         (if (gx#stx-pair? _g2069920789_)
                                             (let ((_e2072420791_
                                                    (gx#stx-e _g2069920789_)))
                                               (let ((_hd2072520794_
                                                      (##car _e2072420791_))
                                                     (_tl2072620796_
                                                      (##cdr _e2072420791_)))
                                                 (if (gx#stx-pair?
                                                      _hd2072520794_)
                                                     (let ((_e2072720799_
                                                            (gx#stx-e
                                                             _hd2072520794_)))
                                                       (let ((_hd2072820802_
                                                              (##car _e2072720799_))
                                                             (_tl2072920804_
                                                              (##cdr _e2072720799_)))
                                                         (if (gx#stx-null?
                                                              _tl2072920804_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2072620796_)
                         (let ((_e2073020807_ (gx#stx-e _tl2072620796_)))
                           (let ((_hd2073120810_ (##car _e2073020807_))
                                 (_tl2073220812_ (##cdr _e2073020807_)))
                             (if (gx#stx-null? _tl2073220812_)
                                 ((lambda (_L20815_ _L20816_)
                                    (if (if (gx#identifier? _L20816_)
                                            (gxc#kw-lambda-expr? _L20815_)
                                            '#f)
                                        (let* ((_g2083020883_
                                                (lambda (_g2083120880_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2083120880_)))
                                               (_g2082921055_
                                                (lambda (_g2083120886_)
                                                  (if (gx#stx-pair?
                                                       _g2083120886_)
                                                      (let ((_e2083720888_
                                                             (gx#stx-e
                                                              _g2083120886_)))
                                                        (let ((_hd2083820891_
                                                               (##car _e2083720888_))
                                                              (_tl2083920893_
                                                               (##cdr _e2083720888_)))
                                                          (if (gx#stx-pair?
                                                               _tl2083920893_)
                                                              (let ((_e2084020896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2083920893_)))
                        (let ((_hd2084120899_ (##car _e2084020896_))
                              (_tl2084220901_ (##cdr _e2084020896_)))
                          (if (gx#stx-pair? _hd2084120899_)
                              (let ((_e2084320904_ (gx#stx-e _hd2084120899_)))
                                (let ((_hd2084420907_ (##car _e2084320904_))
                                      (_tl2084520909_ (##cdr _e2084320904_)))
                                  (if (gx#stx-pair? _hd2084420907_)
                                      (let ((_e2084620912_
                                             (gx#stx-e _hd2084420907_)))
                                        (let ((_hd2084720915_
                                               (##car _e2084620912_))
                                              (_tl2084820917_
                                               (##cdr _e2084620912_)))
                                          (if (gx#stx-pair? _hd2084720915_)
                                              (let ((_e2084920920_
                                                     (gx#stx-e
                                                      _hd2084720915_)))
                                                (let ((_hd2085020923_
                                                       (##car _e2084920920_))
                                                      (_tl2085120925_
                                                       (##cdr _e2084920920_)))
                                                  (if (gx#stx-null?
                                                       _tl2085120925_)
                                                      (if (gx#stx-pair?
                                                           _tl2084820917_)
                                                          (let ((_e2085220928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2084820917_)))
                    (let ((_hd2085320931_ (##car _e2085220928_))
                          (_tl2085420933_ (##cdr _e2085220928_)))
                      (if (gx#stx-pair? _hd2085320931_)
                          (let ((_e2085520936_ (gx#stx-e _hd2085320931_)))
                            (let ((_hd2085620939_ (##car _e2085520936_))
                                  (_tl2085720941_ (##cdr _e2085520936_)))
                              (if (gx#stx-pair? _tl2085720941_)
                                  (let ((_e2085820944_
                                         (gx#stx-e _tl2085720941_)))
                                    (let ((_hd2085920947_
                                           (##car _e2085820944_))
                                          (_tl2086020949_
                                           (##cdr _e2085820944_)))
                                      (if (gx#stx-pair? _hd2085920947_)
                                          (let ((_e2086120952_
                                                 (gx#stx-e _hd2085920947_)))
                                            (let ((_hd2086220955_
                                                   (##car _e2086120952_))
                                                  (_tl2086320957_
                                                   (##cdr _e2086120952_)))
                                              (if (gx#stx-pair? _hd2086220955_)
                                                  (let ((_e2086420960_
                                                         (gx#stx-e
                                                          _hd2086220955_)))
                                                    (let ((_hd2086520963_
                                                           (##car _e2086420960_))
                                                          (_tl2086620965_
                                                           (##cdr _e2086420960_)))
                                                      (if (gx#stx-pair?
                                                           _hd2086520963_)
                                                          (let ((_e2086720968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2086520963_)))
                    (let ((_hd2086820971_ (##car _e2086720968_))
                          (_tl2086920973_ (##cdr _e2086720968_)))
                      (if (gx#stx-null? _tl2086920973_)
                          (if (gx#stx-pair? _tl2086620965_)
                              (let ((_e2087020976_ (gx#stx-e _tl2086620965_)))
                                (let ((_hd2087120979_ (##car _e2087020976_))
                                      (_tl2087220981_ (##cdr _e2087020976_)))
                                  (if (gx#stx-null? _tl2087220981_)
                                      (if (gx#stx-null? _tl2086320957_)
                                          (if (gx#stx-pair? _tl2086020949_)
                                              (let ((_e2087320984_
                                                     (gx#stx-e
                                                      _tl2086020949_)))
                                                (let ((_hd2087420987_
                                                       (##car _e2087320984_))
                                                      (_tl2087520989_
                                                       (##cdr _e2087320984_)))
                                                  (if (gx#stx-null?
                                                       _tl2087520989_)
                                                      (if (gx#stx-null?
                                                           _tl2085420933_)
                                                          (if (gx#stx-null?
                                                               _tl2084520909_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2084220901_)
                          (let ((_e2087620992_ (gx#stx-e _tl2084220901_)))
                            (let ((_hd2087720995_ (##car _e2087620992_))
                                  (_tl2087820997_ (##cdr _e2087620992_)))
                              (if (gx#stx-null? _tl2087820997_)
                                  ((lambda (_L21000_
                                            _L21001_
                                            _L21002_
                                            _L21003_
                                            _L21004_)
                                     (let* ((_get-kws-id21044_
                                             (make-symbol
                                              (gx#stx-e _L20816_)
                                              (gensym '__)))
                                            (_main-id21046_
                                             (make-symbol
                                              (gx#stx-e _L20816_)
                                              (gensym '__)))
                                            (_g27406_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21044_))
                                            (_g27407_
                                             (gx#core-bind-runtime!__0
                                              _main-id21046_))
                                            (_new-kw-dispatch21050_
                                             (gxc#apply-expression-subst
                                              _L21000_
                                              _L21004_
                                              _get-kws-id21044_))
                                            (_new-get-kws21052_
                                             (gxc#apply-expression-subst
                                              _L21001_
                                              _L21003_
                                              _main-id21046_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L20816_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21044_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21046_))
                                         (_lp20669_
                                          (cons (_bind-e__2733927340_
                                                 _main-id21046_
                                                 _L21002_
                                                 '#f)
                                                (cons (_bind-e__2733927340_
                                                       _get-kws-id21044_
                                                       _new-get-kws21052_
                                                       '#f)
                                                      (cons (_bind-e__2733927340_
                                                             _L20816_
                                                             _new-kw-dispatch21050_
                                                             '#f)
                                                            _rest20692_)))
                                          _bind20672_))))
                                   _hd2087720995_
                                   _hd2087420987_
                                   _hd2087120979_
                                   _hd2086820971_
                                   _hd2085020923_)
                                  (_g2083020883_ _g2083120886_))))
                          (_g2083020883_ _g2083120886_))
                      (_g2083020883_ _g2083120886_))
                  (_g2083020883_ _g2083120886_))
              (_g2083020883_ _g2083120886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2083020883_ _g2083120886_))
                                          (_g2083020883_ _g2083120886_))
                                      (_g2083020883_ _g2083120886_))))
                              (_g2083020883_ _g2083120886_))
                          (_g2083020883_ _g2083120886_))))
                  (_g2083020883_ _g2083120886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2083020883_
                                                   _g2083120886_))))
                                          (_g2083020883_ _g2083120886_))))
                                  (_g2083020883_ _g2083120886_))))
                          (_g2083020883_ _g2083120886_))))
                  (_g2083020883_ _g2083120886_))
              (_g2083020883_ _g2083120886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2083020883_ _g2083120886_))))
                                      (_g2083020883_ _g2083120886_))))
                              (_g2083020883_ _g2083120886_))))
                      (_g2083020883_ _g2083120886_))))
              (_g2083020883_ _g2083120886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2082921055_ _L20815_))
                                        (_g2069720786_ _g2069920789_)))
                                  _hd2073120810_
                                  _hd2072820802_)
                                 (_g2069720786_ _g2069920789_))))
                         (_g2069720786_ _g2069920789_))
                     (_g2069720786_ _g2069920789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069720786_
                                                      _g2069920789_))))
                                             (_g2069720786_ _g2069920789_))))
                                      (_g2069521230_
                                       (lambda (_g2069921061_)
                                         (if (gx#stx-pair? _g2069921061_)
                                             (let ((_e2071321063_
                                                    (gx#stx-e _g2069921061_)))
                                               (let ((_hd2071421066_
                                                      (##car _e2071321063_))
                                                     (_tl2071521068_
                                                      (##cdr _e2071321063_)))
                                                 (if (gx#stx-pair?
                                                      _hd2071421066_)
                                                     (let ((_e2071621071_
                                                            (gx#stx-e
                                                             _hd2071421066_)))
                                                       (let ((_hd2071721074_
                                                              (##car _e2071621071_))
                                                             (_tl2071821076_
                                                              (##cdr _e2071621071_)))
                                                         (if (gx#stx-null?
                                                              _tl2071821076_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2071521068_)
                         (let ((_e2071921079_ (gx#stx-e _tl2071521068_)))
                           (let ((_hd2072021082_ (##car _e2071921079_))
                                 (_tl2072121084_ (##cdr _e2071921079_)))
                             (if (gx#stx-null? _tl2072121084_)
                                 ((lambda (_L21087_ _L21088_)
                                    (if (if (gx#identifier? _L21088_)
                                            (gxc#opt-lambda-expr? _L21087_)
                                            '#f)
                                        (let* ((_g2110221132_
                                                (lambda (_g2110321129_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2110321129_)))
                                               (_g2110121227_
                                                (lambda (_g2110321135_)
                                                  (if (gx#stx-pair?
                                                       _g2110321135_)
                                                      (let ((_e2110721137_
                                                             (gx#stx-e
                                                              _g2110321135_)))
                                                        (let ((_hd2110821140_
                                                               (##car _e2110721137_))
                                                              (_tl2110921142_
                                                               (##cdr _e2110721137_)))
                                                          (if (gx#stx-pair?
                                                               _tl2110921142_)
                                                              (let ((_e2111021145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2110921142_)))
                        (let ((_hd2111121148_ (##car _e2111021145_))
                              (_tl2111221150_ (##cdr _e2111021145_)))
                          (if (gx#stx-pair? _hd2111121148_)
                              (let ((_e2111321153_ (gx#stx-e _hd2111121148_)))
                                (let ((_hd2111421156_ (##car _e2111321153_))
                                      (_tl2111521158_ (##cdr _e2111321153_)))
                                  (if (gx#stx-pair? _hd2111421156_)
                                      (let ((_e2111621161_
                                             (gx#stx-e _hd2111421156_)))
                                        (let ((_hd2111721164_
                                               (##car _e2111621161_))
                                              (_tl2111821166_
                                               (##cdr _e2111621161_)))
                                          (if (gx#stx-pair? _hd2111721164_)
                                              (let ((_e2111921169_
                                                     (gx#stx-e
                                                      _hd2111721164_)))
                                                (let ((_hd2112021172_
                                                       (##car _e2111921169_))
                                                      (_tl2112121174_
                                                       (##cdr _e2111921169_)))
                                                  (if (gx#stx-null?
                                                       _tl2112121174_)
                                                      (if (gx#stx-pair?
                                                           _tl2111821166_)
                                                          (let ((_e2112221177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2111821166_)))
                    (let ((_hd2112321180_ (##car _e2112221177_))
                          (_tl2112421182_ (##cdr _e2112221177_)))
                      (if (gx#stx-null? _tl2112421182_)
                          (if (gx#stx-null? _tl2111521158_)
                              (if (gx#stx-pair? _tl2111221150_)
                                  (let ((_e2112521185_
                                         (gx#stx-e _tl2111221150_)))
                                    (let ((_hd2112621188_
                                           (##car _e2112521185_))
                                          (_tl2112721190_
                                           (##cdr _e2112521185_)))
                                      (if (gx#stx-null? _tl2112721190_)
                                          ((lambda (_L21193_ _L21194_ _L21195_)
                                             (let* ((_lambda-id21219_
                                                     (make-symbol
                                                      (gx#stx-e _L21088_)
                                                      (gensym '__)))
                                                    (_lambda-id21221_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21219_
                                                      (gx#stx-source
                                                       _stx20529_)))
                                                    (_g27408_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21221_))
                                                    (_new-case-lambda-expr21224_
                                                     (gxc#apply-expression-subst
                                                      _L21193_
                                                      _L21195_
                                                      _lambda-id21221_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L21088_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id21221_))
                                                 (_lp20669_
                                                  (cons (_bind-e__2733927340_
                                                         _L21088_
                                                         _new-case-lambda-expr21224_
                                                         '#f)
                                                        _rest20692_)
                                                  (cons (_bind-e__0__2734127342_
                                                         _lambda-id21221_
                                                         _L21194_)
                                                        _bind20672_)))))
                                           _hd2112621188_
                                           _hd2112321180_
                                           _hd2112021172_)
                                          (_g2110221132_ _g2110321135_))))
                                  (_g2110221132_ _g2110321135_))
                              (_g2110221132_ _g2110321135_))
                          (_g2110221132_ _g2110321135_))))
                  (_g2110221132_ _g2110321135_))
              (_g2110221132_ _g2110321135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2110221132_ _g2110321135_))))
                                      (_g2110221132_ _g2110321135_))))
                              (_g2110221132_ _g2110321135_))))
                      (_g2110221132_ _g2110321135_))))
              (_g2110221132_ _g2110321135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2110121227_ _L21087_))
                                        (_g2069621058_ _g2069921061_)))
                                  _hd2072021082_
                                  _hd2071721074_)
                                 (_g2069621058_ _g2069921061_))))
                         (_g2069621058_ _g2069921061_))
                     (_g2069621058_ _g2069921061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069621058_
                                                      _g2069921061_))))
                                             (_g2069621058_ _g2069921061_))))
                                      (_g2069421349_
                                       (lambda (_g2069921233_)
                                         (if (gx#stx-pair? _g2069921233_)
                                             (let ((_e2070221235_
                                                    (gx#stx-e _g2069921233_)))
                                               (let ((_hd2070321238_
                                                      (##car _e2070221235_))
                                                     (_tl2070421240_
                                                      (##cdr _e2070221235_)))
                                                 (if (gx#stx-pair?
                                                      _hd2070321238_)
                                                     (let ((_e2070521243_
                                                            (gx#stx-e
                                                             _hd2070321238_)))
                                                       (let ((_hd2070621246_
                                                              (##car _e2070521243_))
                                                             (_tl2070721248_
                                                              (##cdr _e2070521243_)))
                                                         (if (gx#stx-null?
                                                              _tl2070721248_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2070421240_)
                         (let ((_e2070821251_ (gx#stx-e _tl2070421240_)))
                           (let ((_hd2070921254_ (##car _e2070821251_))
                                 (_tl2071021256_ (##cdr _e2070821251_)))
                             (if (gx#stx-null? _tl2071021256_)
                                 ((lambda (_L21259_ _L21260_)
                                    (if (if (gx#identifier? _L21260_)
                                            (gxc#case-lambda-expr? _L21259_)
                                            '#f)
                                        (let* ((_g2127521289_
                                                (lambda (_g2127621286_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2127621286_)))
                                               (_g2127421324_
                                                (lambda (_g2127621292_)
                                                  (if (gx#stx-pair?
                                                       _g2127621292_)
                                                      (let ((_e2128221294_
                                                             (gx#stx-e
                                                              _g2127621292_)))
                                                        (let ((_hd2128321297_
                                                               (##car _e2128221294_))
                                                              (_tl2128421299_
                                                               (##cdr _e2128221294_)))
                                                          ((lambda (_L21302_)
                                                             (let ((_g27409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx20529_
                             _L21260_
                             _L21302_
                             '#t)))
                       (begin
                         (let ((_g27410_ (values-count _g27409_)))
                           (if (not (fx= _g27410_ 3))
                               (error "Context expects 3 values" _g27410_)))
                         (let ((_ids21312_ (values-ref _g27409_ 0))
                               (_impls21313_ (values-ref _g27409_ 1))
                               (_clauses21314_ (values-ref _g27409_ 2)))
                           (let* ((_g27411_
                                   (for-each gx#core-bind-runtime! _ids21312_))
                                  (_xbind21317_
                                   (map _bind-e20531_ _ids21312_ _impls21313_))
                                  (_expr*21319_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21314_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21321_
                                   (_bind-e__2733927340_
                                    _L21260_
                                    _expr*21319_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L21260_)
                                '" => "
                                (map gxc#identifier-symbol _ids21312_))
                               (_lp20669_
                                _rest20692_
                                (cons _bind*21321_
                                      (foldl1 cons
                                              _bind20672_
                                              _xbind21317_)))))))))
                   _tl2128421299_)))
              (_g2127521289_ _g2127621292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2127321346_
                                                (lambda (_g2127621327_)
                                                  (if (gx#stx-pair?
                                                       _g2127621327_)
                                                      (let ((_e2127821329_
                                                             (gx#stx-e
                                                              _g2127621327_)))
                                                        (let ((_hd2127921332_
                                                               (##car _e2127821329_))
                                                              (_tl2128021334_
                                                               (##cdr _e2127821329_)))
                                                          ((lambda (_L21337_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21337_)
                         (_lp20669_
                          _rest20692_
                          (cons (_bind-e__2733927340_ _L21260_ _L21259_ '#f)
                                _bind20672_))
                         (_g2127421324_ _g2127621327_)))
                   _tl2128021334_)))
              (_g2127421324_ _g2127621327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2127321346_ _L21259_))
                                        (_g2069521230_ _g2069921233_)))
                                  _hd2070921254_
                                  _hd2070621246_)
                                 (_g2069521230_ _g2069921233_))))
                         (_g2069521230_ _g2069921233_))
                     (_g2069521230_ _g2069921233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069521230_
                                                      _g2069921233_))))
                                             (_g2069521230_ _g2069921233_)))))
                                 (_g2069421349_ _hd20693_)))))
                       (if (##pair? _rest2067320681_)
                           (let ((_hd2067821355_ (##car _rest2067320681_))
                                 (_tl2067921357_ (##cdr _rest2067320681_)))
                             (let* ((_hd21360_ _hd2067821355_)
                                    (_rest21362_ _tl2067921357_))
                               (_K2067721352_ _rest21362_ _hd21360_)))
                           (_else2067520689_)))))))
        (let* ((_g2053520562_
                (lambda (_g2053620559_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2053620559_)))
               (_g2053420569_
                (lambda (_g2053620565_)
                  ((lambda () (gxc#xform-let-values% _stx20529_)))))
               (_g2053320664_
                (lambda (_g2053620572_)
                  (if (gx#stx-pair? _g2053620572_)
                      (let ((_e2054020574_ (gx#stx-e _g2053620572_)))
                        (let ((_hd2054120577_ (##car _e2054020574_))
                              (_tl2054220579_ (##cdr _e2054020574_)))
                          (if (gx#stx-pair? _tl2054220579_)
                              (let ((_e2054320582_ (gx#stx-e _tl2054220579_)))
                                (let ((_hd2054420585_ (##car _e2054320582_))
                                      (_tl2054520587_ (##cdr _e2054320582_)))
                                  (if (gx#stx-pair/null? _hd2054420585_)
                                      (if (fx>= (gx#stx-length _hd2054420585_)
                                                '0)
                                          (let ((_g27412_
                                                 (gx#syntax-split-splice
                                                  _hd2054420585_
                                                  '0)))
                                            (begin
                                              (let ((_g27413_
                                                     (values-count _g27412_)))
                                                (if (not (fx= _g27413_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27413_)))
                                              (let ((_target2054620590_
                                                     (values-ref _g27412_ 0))
                                                    (_tl2054820592_
                                                     (values-ref _g27412_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2054820592_)
                                                    (letrec ((_loop2054920595_
                                                              (lambda (_hd2054720598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2055320600_)
                        (if (gx#stx-pair? _hd2054720598_)
                            (let ((_e2055020603_ (gx#stx-e _hd2054720598_)))
                              (let ((_lp-hd2055120606_ (##car _e2055020603_))
                                    (_lp-tl2055220608_ (##cdr _e2055020603_)))
                                (_loop2054920595_
                                 _lp-tl2055220608_
                                 (cons _lp-hd2055120606_ _bind2055320600_))))
                            (let ((_bind2055420611_
                                   (reverse _bind2055320600_)))
                              (if (gx#stx-pair? _tl2054520587_)
                                  (let ((_e2055520614_
                                         (gx#stx-e _tl2054520587_)))
                                    (let ((_hd2055620617_
                                           (##car _e2055520614_))
                                          (_tl2055720619_
                                           (##cdr _e2055520614_)))
                                      (if (gx#stx-null? _tl2055720619_)
                                          ((lambda (_L20622_ _L20623_ _L20624_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2064520648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2064620650_)
                             (cons _g2064520648_ _g2064620650_))
                           '()
                           _L20623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd20661_
                                                           (_compile-bindings20532_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2065320656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2065420658_)
                                (cons _g2065320656_ _g2065420658_))
                              '()
                              _L20623_))))
                  (_body20662_ (gxc#compile-e _L20622_)))
              (gxc#xform-wrap-source
               (cons _L20624_ (cons _hd20661_ (cons _body20662_ '())))
               _stx20529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27345
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27345)
                                                      __obj27345)))
                                                 (_g2053420569_
                                                  _g2053620572_)))
                                           _hd2055620617_
                                           _bind2055420611_
                                           _hd2054120577_)
                                          (_g2053420569_ _g2053620572_))))
                                  (_g2053420569_ _g2053620572_)))))))
              (_loop2054920595_ _target2054620590_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2053420569_
                                                     _g2053620572_)))))
                                          (_g2053420569_ _g2053620572_))
                                      (_g2053420569_ _g2053620572_))))
                              (_g2053420569_ _g2053620572_))))
                      (_g2053420569_ _g2053620572_)))))
          (_g2053320664_ _stx20529_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20447_)
      (let* ((_g2045020467_
              (lambda (_g2045120464_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2045120464_)))
             (_g2044920474_ (lambda (_g2045120470_) ((lambda () '#f))))
             (_g2044820526_
              (lambda (_g2045120477_)
                (if (gx#stx-pair? _g2045120477_)
                    (let ((_e2045420479_ (gx#stx-e _g2045120477_)))
                      (let ((_hd2045520482_ (##car _e2045420479_))
                            (_tl2045620484_ (##cdr _e2045420479_)))
                        (if (gx#stx-pair? _hd2045520482_)
                            (let ((_e2045720487_ (gx#stx-e _hd2045520482_)))
                              (let ((_hd2045820490_ (##car _e2045720487_))
                                    (_tl2045920492_ (##cdr _e2045720487_)))
                                (if (gx#stx-null? _tl2045920492_)
                                    (if (gx#stx-pair? _tl2045620484_)
                                        (let ((_e2046020495_
                                               (gx#stx-e _tl2045620484_)))
                                          (let ((_hd2046120498_
                                                 (##car _e2046020495_))
                                                (_tl2046220500_
                                                 (##cdr _e2046020495_)))
                                            (if (gx#stx-null? _tl2046220500_)
                                                ((lambda (_L20503_ _L20504_)
                                                   (if (gx#identifier?
                                                        _L20504_)
                                                       (let ((_$e20520_
                                                              (gxc#case-lambda-expr?
                                                               _L20503_)))
                                                         (if _$e20520_
                                                             _$e20520_
                                                             (let ((_$e20523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L20503_)))
                       (if _$e20523_
                           _$e20523_
                           (gxc#kw-lambda-expr? _L20503_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2046120498_
                                                 _hd2045820490_)
                                                (_g2044920474_
                                                 _g2045120477_))))
                                        (_g2044920474_ _g2045120477_))
                                    (_g2044920474_ _g2045120477_))))
                            (_g2044920474_ _g2045120477_))))
                    (_g2044920474_ _g2045120477_)))))
        (_g2044820526_ _bind20447_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20385_ _id20386_ _new-id20387_)
      (let* ((_g2039020403_
              (lambda (_g2039120400_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2039120400_)))
             (_g2038920410_ (lambda (_g2039120406_) ((lambda () _stx20385_))))
             (_g2038820444_
              (lambda (_g2039120413_)
                (if (gx#stx-pair? _g2039120413_)
                    (let ((_e2039320415_ (gx#stx-e _g2039120413_)))
                      (let ((_hd2039420418_ (##car _e2039320415_))
                            (_tl2039520420_ (##cdr _e2039320415_)))
                        (if (gx#stx-pair? _tl2039520420_)
                            (let ((_e2039620423_ (gx#stx-e _tl2039520420_)))
                              (let ((_hd2039720426_ (##car _e2039620423_))
                                    (_tl2039820428_ (##cdr _e2039620423_)))
                                (if (gx#stx-null? _tl2039820428_)
                                    ((lambda (_L20431_)
                                       (if (gx#free-identifier=?
                                            _L20431_
                                            _id20386_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20387_ '()))
                                            _stx20385_)
                                           (_g2038920410_ _g2039120413_)))
                                     _hd2039720426_)
                                    (_g2038920410_ _g2039120413_))))
                            (_g2038920410_ _g2039120413_))))
                    (_g2038920410_ _g2039120413_)))))
        (_g2038820444_ _stx20385_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20241_)
      (let* ((_g2024420275_
              (lambda (_g2024520272_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2024520272_)))
             (_g2024320320_
              (lambda (_g2024520278_)
                (if (gx#stx-pair? _g2024520278_)
                    (let ((_e2026220280_ (gx#stx-e _g2024520278_)))
                      (let ((_hd2026320283_ (##car _e2026220280_))
                            (_tl2026420285_ (##cdr _e2026220280_)))
                        (if (gx#stx-pair? _tl2026420285_)
                            (let ((_e2026520288_ (gx#stx-e _tl2026420285_)))
                              (let ((_hd2026620291_ (##car _e2026520288_))
                                    (_tl2026720293_ (##cdr _e2026520288_)))
                                (if (gx#stx-pair? _tl2026720293_)
                                    (let ((_e2026820296_
                                           (gx#stx-e _tl2026720293_)))
                                      (let ((_hd2026920299_
                                             (##car _e2026820296_))
                                            (_tl2027020301_
                                             (##cdr _e2026820296_)))
                                        (if (gx#stx-null? _tl2027020301_)
                                            ((lambda (_L20304_ _L20305_)
                                               (gxc#compile-e _L20304_))
                                             _hd2026920299_
                                             _hd2026620291_)
                                            (_g2024420275_ _g2024520278_))))
                                    (_g2024420275_ _g2024520278_))))
                            (_g2024420275_ _g2024520278_))))
                    (_g2024420275_ _g2024520278_))))
             (_g2024220382_
              (lambda (_g2024520323_)
                (if (gx#stx-pair? _g2024520323_)
                    (let ((_e2024820325_ (gx#stx-e _g2024520323_)))
                      (let ((_hd2024920328_ (##car _e2024820325_))
                            (_tl2025020330_ (##cdr _e2024820325_)))
                        (if (gx#stx-pair? _tl2025020330_)
                            (let ((_e2025120333_ (gx#stx-e _tl2025020330_)))
                              (let ((_hd2025220336_ (##car _e2025120333_))
                                    (_tl2025320338_ (##cdr _e2025120333_)))
                                (if (gx#stx-pair? _hd2025220336_)
                                    (let ((_e2025420341_
                                           (gx#stx-e _hd2025220336_)))
                                      (let ((_hd2025520344_
                                             (##car _e2025420341_))
                                            (_tl2025620346_
                                             (##cdr _e2025420341_)))
                                        (if (gx#stx-null? _tl2025620346_)
                                            (if (gx#stx-pair? _tl2025320338_)
                                                (let ((_e2025720349_
                                                       (gx#stx-e
                                                        _tl2025320338_)))
                                                  (let ((_hd2025820352_
                                                         (##car _e2025720349_))
                                                        (_tl2025920354_
                                                         (##cdr _e2025720349_)))
                                                    (if (gx#stx-null?
                                                         _tl2025920354_)
                                                        ((lambda (_L20357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20358_)
                   (if (gx#identifier? _L20358_)
                       (let ((_sym20374_
                              (gxc#generate-runtime-binding-id _L20358_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20374_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20374_)
                               (let ((_type2037520377_
                                      (gxc#apply-basic-expression-type
                                       _L20357_)))
                                 (if _type2037520377_
                                     (let ((_type20380_ _type2037520377_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20374_
                                        _type20380_))
                                     '#f)))
                           (gxc#compile-e _L20357_)))
                       (_g2024320320_ _g2024520323_)))
                 _hd2025820352_
                 _hd2025520344_)
                (_g2024320320_ _g2024520323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2024320320_ _g2024520323_))
                                            (_g2024320320_ _g2024520323_))))
                                    (_g2024320320_ _g2024520323_))))
                            (_g2024320320_ _g2024520323_))))
                    (_g2024320320_ _g2024520323_)))))
        (_g2024220382_ _stx20241_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20026_)
      (letrec ((_collect-e20028_
                (lambda (_hd20185_ _expr20186_)
                  (let* ((_g2018920199_
                          (lambda (_g2019020196_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2019020196_)))
                         (_g2018820206_
                          (lambda (_g2019020202_) ((lambda () '#!void))))
                         (_g2018720238_
                          (lambda (_g2019020209_)
                            (if (gx#stx-pair? _g2019020209_)
                                (let ((_e2019220211_ (gx#stx-e _g2019020209_)))
                                  (let ((_hd2019320214_ (##car _e2019220211_))
                                        (_tl2019420216_ (##cdr _e2019220211_)))
                                    (if (gx#stx-null? _tl2019420216_)
                                        ((lambda (_L20219_)
                                           (if (gx#identifier? _L20219_)
                                               (let ((_sym20230_
                                                      (gxc#generate-runtime-binding-id
                                                       _L20219_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20230_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20230_)
                                                     (let ((_type2023120233_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20186_)))
                                                       (if _type2023120233_
                                                           (let ((_type20236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2023120233_))
                     (gxc#optimizer-declare-type!__%
                      _sym20230_
                      _type20236_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2018820206_ _g2019020209_)))
                                         _hd2019320214_)
                                        (_g2018820206_ _g2019020209_))))
                                (_g2018820206_ _g2019020209_)))))
                    (_g2018720238_ _hd20185_)))))
        (let* ((_g2003020065_
                (lambda (_g2003120062_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2003120062_)))
               (_g2002920182_
                (lambda (_g2003120068_)
                  (if (gx#stx-pair? _g2003120068_)
                      (let ((_e2003520070_ (gx#stx-e _g2003120068_)))
                        (let ((_hd2003620073_ (##car _e2003520070_))
                              (_tl2003720075_ (##cdr _e2003520070_)))
                          (if (gx#stx-pair? _tl2003720075_)
                              (let ((_e2003820078_ (gx#stx-e _tl2003720075_)))
                                (let ((_hd2003920081_ (##car _e2003820078_))
                                      (_tl2004020083_ (##cdr _e2003820078_)))
                                  (if (gx#stx-pair/null? _hd2003920081_)
                                      (if (fx>= (gx#stx-length _hd2003920081_)
                                                '0)
                                          (let ((_g27414_
                                                 (gx#syntax-split-splice
                                                  _hd2003920081_
                                                  '0)))
                                            (begin
                                              (let ((_g27415_
                                                     (values-count _g27414_)))
                                                (if (not (fx= _g27415_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27415_)))
                                              (let ((_target2004120086_
                                                     (values-ref _g27414_ 0))
                                                    (_tl2004320088_
                                                     (values-ref _g27414_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2004320088_)
                                                    (letrec ((_loop2004420091_
                                                              (lambda (_hd2004220094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2004820096_
                               _hd2004920098_)
                        (if (gx#stx-pair? _hd2004220094_)
                            (let ((_e2004520101_ (gx#stx-e _hd2004220094_)))
                              (let ((_lp-hd2004620104_ (##car _e2004520101_))
                                    (_lp-tl2004720106_ (##cdr _e2004520101_)))
                                (if (gx#stx-pair? _lp-hd2004620104_)
                                    (let ((_e2005220109_
                                           (gx#stx-e _lp-hd2004620104_)))
                                      (let ((_hd2005320112_
                                             (##car _e2005220109_))
                                            (_tl2005420114_
                                             (##cdr _e2005220109_)))
                                        (if (gx#stx-pair? _tl2005420114_)
                                            (let ((_e2005520117_
                                                   (gx#stx-e _tl2005420114_)))
                                              (let ((_hd2005620120_
                                                     (##car _e2005520117_))
                                                    (_tl2005720122_
                                                     (##cdr _e2005520117_)))
                                                (if (gx#stx-null?
                                                     _tl2005720122_)
                                                    (_loop2004420091_
                                                     _lp-tl2004720106_
                                                     (cons _hd2005620120_
                                                           _expr2004820096_)
                                                     (cons _hd2005320112_
                                                           _hd2004920098_))
                                                    (_g2003020065_
                                                     _g2003120068_))))
                                            (_g2003020065_ _g2003120068_))))
                                    (_g2003020065_ _g2003120068_))))
                            (let ((_expr2005020125_ (reverse _expr2004820096_))
                                  (_hd2005120127_ (reverse _hd2004920098_)))
                              (if (gx#stx-pair? _tl2004020083_)
                                  (let ((_e2005820130_
                                         (gx#stx-e _tl2004020083_)))
                                    (let ((_hd2005920133_
                                           (##car _e2005820130_))
                                          (_tl2006020135_
                                           (##cdr _e2005820130_)))
                                      (if (gx#stx-null? _tl2006020135_)
                                          ((lambda (_L20138_ _L20139_ _L20140_)
                                             (begin
                                               (for-each
                                                _collect-e20028_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2016020163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2016120165_)
                    (cons _g2016020163_ _g2016120165_))
                  '()
                  _L20140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2016720170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2016820172_)
                    (cons _g2016720170_ _g2016820172_))
                  '()
                  _L20139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2017420177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2017520179_)
                    (cons _g2017420177_ _g2017520179_))
                  '()
                  _L20139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20138_)))
                                           _hd2005920133_
                                           _expr2005020125_
                                           _hd2005120127_)
                                          (_g2003020065_ _g2003120068_))))
                                  (_g2003020065_ _g2003120068_)))))))
              (_loop2004420091_ _target2004120086_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2003020065_
                                                     _g2003120068_)))))
                                          (_g2003020065_ _g2003120068_))
                                      (_g2003020065_ _g2003120068_))))
                              (_g2003020065_ _g2003120068_))))
                      (_g2003020065_ _g2003120068_)))))
          (_g2002920182_ _stx20026_)))))
  (define gxc#collect-type-call%
    (lambda (_stx19580_)
      (let* ((_g1958419686_
              (lambda (_g1958519683_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1958519683_)))
             (_g1958319693_ (lambda (_g1958519689_) ((lambda () '#!void))))
             (_g1958219843_
              (lambda (_g1958519696_)
                (if (gx#stx-pair? _g1958519696_)
                    (let ((_e1964319698_ (gx#stx-e _g1958519696_)))
                      (let ((_hd1964419701_ (##car _e1964319698_))
                            (_tl1964519703_ (##cdr _e1964319698_)))
                        (if (gx#stx-pair? _tl1964519703_)
                            (let ((_e1964619706_ (gx#stx-e _tl1964519703_)))
                              (let ((_hd1964719709_ (##car _e1964619706_))
                                    (_tl1964819711_ (##cdr _e1964619706_)))
                                (if (gx#stx-pair? _hd1964719709_)
                                    (let ((_e1964919714_
                                           (gx#stx-e _hd1964719709_)))
                                      (let ((_hd1965019717_
                                             (##car _e1964919714_))
                                            (_tl1965119719_
                                             (##cdr _e1964919714_)))
                                        (if (gx#identifier? _hd1965019717_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1965019717_)
                                                (if (gx#stx-pair?
                                                     _tl1965119719_)
                                                    (let ((_e1965219722_
                                                           (gx#stx-e
                                                            _tl1965119719_)))
                                                      (let ((_hd1965319725_
                                                             (##car _e1965219722_))
                                                            (_tl1965419727_
                                                             (##cdr _e1965219722_)))
                                                        (if (gx#stx-null?
                                                             _tl1965419727_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1964819711_)
                        (let ((_e1965519730_ (gx#stx-e _tl1964819711_)))
                          (let ((_hd1965619733_ (##car _e1965519730_))
                                (_tl1965719735_ (##cdr _e1965519730_)))
                            (if (gx#stx-pair? _hd1965619733_)
                                (let ((_e1965819738_
                                       (gx#stx-e _hd1965619733_)))
                                  (let ((_hd1965919741_ (##car _e1965819738_))
                                        (_tl1966019743_ (##cdr _e1965819738_)))
                                    (if (gx#identifier? _hd1965919741_)
                                        (if (gx#stx-eq? '%#ref _hd1965919741_)
                                            (if (gx#stx-pair? _tl1966019743_)
                                                (let ((_e1966119746_
                                                       (gx#stx-e
                                                        _tl1966019743_)))
                                                  (let ((_hd1966219749_
                                                         (##car _e1966119746_))
                                                        (_tl1966319751_
                                                         (##cdr _e1966119746_)))
                                                    (if (gx#stx-null?
                                                         _tl1966319751_)
                                                        (if (gx#stx-pair?
                                                             _tl1965719735_)
                                                            (let ((_e1966419754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1965719735_)))
                      (let ((_hd1966519757_ (##car _e1966419754_))
                            (_tl1966619759_ (##cdr _e1966419754_)))
                        (if (gx#stx-pair? _hd1966519757_)
                            (let ((_e1966719762_ (gx#stx-e _hd1966519757_)))
                              (let ((_hd1966819765_ (##car _e1966719762_))
                                    (_tl1966919767_ (##cdr _e1966719762_)))
                                (if (gx#identifier? _hd1966819765_)
                                    (if (gx#stx-eq? '%#quote _hd1966819765_)
                                        (if (gx#stx-pair? _tl1966919767_)
                                            (let ((_e1967019770_
                                                   (gx#stx-e _tl1966919767_)))
                                              (let ((_hd1967119773_
                                                     (##car _e1967019770_))
                                                    (_tl1967219775_
                                                     (##cdr _e1967019770_)))
                                                (if (gx#stx-null?
                                                     _tl1967219775_)
                                                    (if (gx#stx-pair?
                                                         _tl1966619759_)
                                                        (let ((_e1967319778_
                                                               (gx#stx-e
                                                                _tl1966619759_)))
                                                          (let ((_hd1967419781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1967319778_))
                        (_tl1967519783_ (##cdr _e1967319778_)))
                    (if (gx#stx-pair? _hd1967419781_)
                        (let ((_e1967619786_ (gx#stx-e _hd1967419781_)))
                          (let ((_hd1967719789_ (##car _e1967619786_))
                                (_tl1967819791_ (##cdr _e1967619786_)))
                            (if (gx#identifier? _hd1967719789_)
                                (if (gx#stx-eq? '%#ref _hd1967719789_)
                                    (if (gx#stx-pair? _tl1967819791_)
                                        (let ((_e1967919794_
                                               (gx#stx-e _tl1967819791_)))
                                          (let ((_hd1968019797_
                                                 (##car _e1967919794_))
                                                (_tl1968119799_
                                                 (##cdr _e1967919794_)))
                                            (if (gx#stx-null? _tl1968119799_)
                                                (if (gx#stx-null?
                                                     _tl1967519783_)
                                                    ((lambda (_L19802_
                                                              _L19803_
                                                              _L19804_
                                                              _L19805_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#generate-runtime-binding-id _L19804_)
                    (gx#stx-e _L19803_)
                    (gxc#generate-runtime-binding-id _L19802_)
                    '#f)
                   (_g1958319693_ _g1958519696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1968019797_
                                                     _hd1967119773_
                                                     _hd1966219749_
                                                     _hd1965319725_)
                                                    (_g1958319693_
                                                     _g1958519696_))
                                                (_g1958319693_
                                                 _g1958519696_))))
                                        (_g1958319693_ _g1958519696_))
                                    (_g1958319693_ _g1958519696_))
                                (_g1958319693_ _g1958519696_))))
                        (_g1958319693_ _g1958519696_))))
                (_g1958319693_ _g1958519696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958319693_
                                                     _g1958519696_))))
                                            (_g1958319693_ _g1958519696_))
                                        (_g1958319693_ _g1958519696_))
                                    (_g1958319693_ _g1958519696_))))
                            (_g1958319693_ _g1958519696_))))
                    (_g1958319693_ _g1958519696_))
                (_g1958319693_ _g1958519696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1958319693_ _g1958519696_))
                                            (_g1958319693_ _g1958519696_))
                                        (_g1958319693_ _g1958519696_))))
                                (_g1958319693_ _g1958519696_))))
                        (_g1958319693_ _g1958519696_))
                    (_g1958319693_ _g1958519696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958319693_
                                                     _g1958519696_))
                                                (_g1958319693_ _g1958519696_))
                                            (_g1958319693_ _g1958519696_))))
                                    (_g1958319693_ _g1958519696_))))
                            (_g1958319693_ _g1958519696_))))
                    (_g1958319693_ _g1958519696_))))
             (_g1958120023_
              (lambda (_g1958519846_)
                (if (gx#stx-pair? _g1958519846_)
                    (let ((_e1959119848_ (gx#stx-e _g1958519846_)))
                      (let ((_hd1959219851_ (##car _e1959119848_))
                            (_tl1959319853_ (##cdr _e1959119848_)))
                        (if (gx#stx-pair? _tl1959319853_)
                            (let ((_e1959419856_ (gx#stx-e _tl1959319853_)))
                              (let ((_hd1959519859_ (##car _e1959419856_))
                                    (_tl1959619861_ (##cdr _e1959419856_)))
                                (if (gx#stx-pair? _hd1959519859_)
                                    (let ((_e1959719864_
                                           (gx#stx-e _hd1959519859_)))
                                      (let ((_hd1959819867_
                                             (##car _e1959719864_))
                                            (_tl1959919869_
                                             (##cdr _e1959719864_)))
                                        (if (gx#identifier? _hd1959819867_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1959819867_)
                                                (if (gx#stx-pair?
                                                     _tl1959919869_)
                                                    (let ((_e1960019872_
                                                           (gx#stx-e
                                                            _tl1959919869_)))
                                                      (let ((_hd1960119875_
                                                             (##car _e1960019872_))
                                                            (_tl1960219877_
                                                             (##cdr _e1960019872_)))
                                                        (if (gx#stx-null?
                                                             _tl1960219877_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1959619861_)
                        (let ((_e1960319880_ (gx#stx-e _tl1959619861_)))
                          (let ((_hd1960419883_ (##car _e1960319880_))
                                (_tl1960519885_ (##cdr _e1960319880_)))
                            (if (gx#stx-pair? _hd1960419883_)
                                (let ((_e1960619888_
                                       (gx#stx-e _hd1960419883_)))
                                  (let ((_hd1960719891_ (##car _e1960619888_))
                                        (_tl1960819893_ (##cdr _e1960619888_)))
                                    (if (gx#identifier? _hd1960719891_)
                                        (if (gx#stx-eq? '%#ref _hd1960719891_)
                                            (if (gx#stx-pair? _tl1960819893_)
                                                (let ((_e1960919896_
                                                       (gx#stx-e
                                                        _tl1960819893_)))
                                                  (let ((_hd1961019899_
                                                         (##car _e1960919896_))
                                                        (_tl1961119901_
                                                         (##cdr _e1960919896_)))
                                                    (if (gx#stx-null?
                                                         _tl1961119901_)
                                                        (if (gx#stx-pair?
                                                             _tl1960519885_)
                                                            (let ((_e1961219904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1960519885_)))
                      (let ((_hd1961319907_ (##car _e1961219904_))
                            (_tl1961419909_ (##cdr _e1961219904_)))
                        (if (gx#stx-pair? _hd1961319907_)
                            (let ((_e1961519912_ (gx#stx-e _hd1961319907_)))
                              (let ((_hd1961619915_ (##car _e1961519912_))
                                    (_tl1961719917_ (##cdr _e1961519912_)))
                                (if (gx#identifier? _hd1961619915_)
                                    (if (gx#stx-eq? '%#quote _hd1961619915_)
                                        (if (gx#stx-pair? _tl1961719917_)
                                            (let ((_e1961819920_
                                                   (gx#stx-e _tl1961719917_)))
                                              (let ((_hd1961919923_
                                                     (##car _e1961819920_))
                                                    (_tl1962019925_
                                                     (##cdr _e1961819920_)))
                                                (if (gx#stx-null?
                                                     _tl1962019925_)
                                                    (if (gx#stx-pair?
                                                         _tl1961419909_)
                                                        (let ((_e1962119928_
                                                               (gx#stx-e
                                                                _tl1961419909_)))
                                                          (let ((_hd1962219931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1962119928_))
                        (_tl1962319933_ (##cdr _e1962119928_)))
                    (if (gx#stx-pair? _hd1962219931_)
                        (let ((_e1962419936_ (gx#stx-e _hd1962219931_)))
                          (let ((_hd1962519939_ (##car _e1962419936_))
                                (_tl1962619941_ (##cdr _e1962419936_)))
                            (if (gx#identifier? _hd1962519939_)
                                (if (gx#stx-eq? '%#ref _hd1962519939_)
                                    (if (gx#stx-pair? _tl1962619941_)
                                        (let ((_e1962719944_
                                               (gx#stx-e _tl1962619941_)))
                                          (let ((_hd1962819947_
                                                 (##car _e1962719944_))
                                                (_tl1962919949_
                                                 (##cdr _e1962719944_)))
                                            (if (gx#stx-null? _tl1962919949_)
                                                (if (gx#stx-pair?
                                                     _tl1962319933_)
                                                    (let ((_e1963019952_
                                                           (gx#stx-e
                                                            _tl1962319933_)))
                                                      (let ((_hd1963119955_
                                                             (##car _e1963019952_))
                                                            (_tl1963219957_
                                                             (##cdr _e1963019952_)))
                                                        (if (gx#stx-pair?
                                                             _hd1963119955_)
                                                            (let ((_e1963319960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1963119955_)))
                      (let ((_hd1963419963_ (##car _e1963319960_))
                            (_tl1963519965_ (##cdr _e1963319960_)))
                        (if (gx#identifier? _hd1963419963_)
                            (if (gx#stx-eq? '%#quote _hd1963419963_)
                                (if (gx#stx-pair? _tl1963519965_)
                                    (let ((_e1963619968_
                                           (gx#stx-e _tl1963519965_)))
                                      (let ((_hd1963719971_
                                             (##car _e1963619968_))
                                            (_tl1963819973_
                                             (##cdr _e1963619968_)))
                                        (if (gx#stx-null? _tl1963819973_)
                                            (if (gx#stx-null? _tl1963219957_)
                                                ((lambda (_L19976_
                                                          _L19977_
                                                          _L19978_
                                                          _L19979_
                                                          _L19980_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L19980_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#generate-runtime-binding-id
                                                         _L19979_)
                                                        (gx#stx-e _L19978_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L19977_)
                                                        (gx#stx-e _L19976_))
                                                       (_g1958219843_
                                                        _g1958519846_)))
                                                 _hd1963719971_
                                                 _hd1962819947_
                                                 _hd1961919923_
                                                 _hd1961019899_
                                                 _hd1960119875_)
                                                (_g1958219843_ _g1958519846_))
                                            (_g1958219843_ _g1958519846_))))
                                    (_g1958219843_ _g1958519846_))
                                (_g1958219843_ _g1958519846_))
                            (_g1958219843_ _g1958519846_))))
                    (_g1958219843_ _g1958519846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958219843_
                                                     _g1958519846_))
                                                (_g1958219843_
                                                 _g1958519846_))))
                                        (_g1958219843_ _g1958519846_))
                                    (_g1958219843_ _g1958519846_))
                                (_g1958219843_ _g1958519846_))))
                        (_g1958219843_ _g1958519846_))))
                (_g1958219843_ _g1958519846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958219843_
                                                     _g1958519846_))))
                                            (_g1958219843_ _g1958519846_))
                                        (_g1958219843_ _g1958519846_))
                                    (_g1958219843_ _g1958519846_))))
                            (_g1958219843_ _g1958519846_))))
                    (_g1958219843_ _g1958519846_))
                (_g1958219843_ _g1958519846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1958219843_ _g1958519846_))
                                            (_g1958219843_ _g1958519846_))
                                        (_g1958219843_ _g1958519846_))))
                                (_g1958219843_ _g1958519846_))))
                        (_g1958219843_ _g1958519846_))
                    (_g1958219843_ _g1958519846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958219843_
                                                     _g1958519846_))
                                                (_g1958219843_ _g1958519846_))
                                            (_g1958219843_ _g1958519846_))))
                                    (_g1958219843_ _g1958519846_))))
                            (_g1958219843_ _g1958519846_))))
                    (_g1958219843_ _g1958519846_)))))
        (_g1958120023_ _stx19580_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx19520_)
      (let* ((_g1952319536_
              (lambda (_g1952419533_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1952419533_)))
             (_g1952219543_ (lambda (_g1952419539_) ((lambda () '#f))))
             (_g1952119577_
              (lambda (_g1952419546_)
                (if (gx#stx-pair? _g1952419546_)
                    (let ((_e1952619548_ (gx#stx-e _g1952419546_)))
                      (let ((_hd1952719551_ (##car _e1952619548_))
                            (_tl1952819553_ (##cdr _e1952619548_)))
                        (if (gx#stx-pair? _tl1952819553_)
                            (let ((_e1952919556_ (gx#stx-e _tl1952819553_)))
                              (let ((_hd1953019559_ (##car _e1952919556_))
                                    (_tl1953119561_ (##cdr _e1952919556_)))
                                (if (gx#stx-null? _tl1953119561_)
                                    ((lambda (_L19564_)
                                       (gxc#compile-e _L19564_))
                                     _hd1953019559_)
                                    (_g1952219543_ _g1952419546_))))
                            (_g1952219543_ _g1952419546_))))
                    (_g1952219543_ _g1952419546_)))))
        (_g1952119577_ _stx19520_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19453_)
      (let* ((_g1945519472_
              (lambda (_g1945619469_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1945619469_)))
             (_g1945419517_
              (lambda (_g1945619475_)
                (if (gx#stx-pair? _g1945619475_)
                    (let ((_e1945919477_ (gx#stx-e _g1945619475_)))
                      (let ((_hd1946019480_ (##car _e1945919477_))
                            (_tl1946119482_ (##cdr _e1945919477_)))
                        (if (gx#stx-pair? _tl1946119482_)
                            (let ((_e1946219485_ (gx#stx-e _tl1946119482_)))
                              (let ((_hd1946319488_ (##car _e1946219485_))
                                    (_tl1946419490_ (##cdr _e1946219485_)))
                                (if (gx#stx-pair? _tl1946419490_)
                                    (let ((_e1946519493_
                                           (gx#stx-e _tl1946419490_)))
                                      (let ((_hd1946619496_
                                             (##car _e1946519493_))
                                            (_tl1946719498_
                                             (##cdr _e1946519493_)))
                                        (if (gx#stx-null? _tl1946719498_)
                                            ((lambda (_L19501_ _L19502_)
                                               (gxc#compile-e _L19501_))
                                             _hd1946619496_
                                             _hd1946319488_)
                                            (_g1945519472_ _g1945619475_))))
                                    (_g1945519472_ _g1945619475_))))
                            (_g1945519472_ _g1945619475_))))
                    (_g1945519472_ _g1945619475_)))))
        (_g1945419517_ _stx19453_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18094_)
      (let* ((_g1810118400_
              (lambda (_g1810218397_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1810218397_)))
             (_g1810018407_ (lambda (_g1810218403_) ((lambda () '#f))))
             (_g1809918796_
              (lambda (_g1810218410_)
                (if (gx#stx-pair? _g1810218410_)
                    (let ((_e1829118412_ (gx#stx-e _g1810218410_)))
                      (let ((_hd1829218415_ (##car _e1829118412_))
                            (_tl1829318417_ (##cdr _e1829118412_)))
                        (if (gx#stx-pair? _tl1829318417_)
                            (let ((_e1829418420_ (gx#stx-e _tl1829318417_)))
                              (let ((_hd1829518423_ (##car _e1829418420_))
                                    (_tl1829618425_ (##cdr _e1829418420_)))
                                (if (gx#stx-pair? _hd1829518423_)
                                    (let ((_e1829718428_
                                           (gx#stx-e _hd1829518423_)))
                                      (let ((_hd1829818431_
                                             (##car _e1829718428_))
                                            (_tl1829918433_
                                             (##cdr _e1829718428_)))
                                        (if (gx#stx-pair? _tl1829618425_)
                                            (let ((_e1830018436_
                                                   (gx#stx-e _tl1829618425_)))
                                              (let ((_hd1830118439_
                                                     (##car _e1830018436_))
                                                    (_tl1830218441_
                                                     (##cdr _e1830018436_)))
                                                (if (gx#stx-pair?
                                                     _hd1830118439_)
                                                    (let ((_e1830318444_
                                                           (gx#stx-e
                                                            _hd1830118439_)))
                                                      (let ((_hd1830418447_
                                                             (##car _e1830318444_))
                                                            (_tl1830518449_
                                                             (##cdr _e1830318444_)))
                                                        (if (gx#identifier?
                                                             _hd1830418447_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1830418447_)
                        (if (gx#stx-pair? _tl1830518449_)
                            (let ((_e1830618452_ (gx#stx-e _tl1830518449_)))
                              (let ((_hd1830718455_ (##car _e1830618452_))
                                    (_tl1830818457_ (##cdr _e1830618452_)))
                                (if (gx#stx-pair? _hd1830718455_)
                                    (let ((_e1830918460_
                                           (gx#stx-e _hd1830718455_)))
                                      (let ((_hd1831018463_
                                             (##car _e1830918460_))
                                            (_tl1831118465_
                                             (##cdr _e1830918460_)))
                                        (if (gx#identifier? _hd1831018463_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1831018463_)
                                                (if (gx#stx-pair?
                                                     _tl1831118465_)
                                                    (let ((_e1831218468_
                                                           (gx#stx-e
                                                            _tl1831118465_)))
                                                      (let ((_hd1831318471_
                                                             (##car _e1831218468_))
                                                            (_tl1831418473_
                                                             (##cdr _e1831218468_)))
                                                        (if (gx#stx-null?
                                                             _tl1831418473_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1830818457_)
                        (let ((_e1831518476_ (gx#stx-e _tl1830818457_)))
                          (let ((_hd1831618479_ (##car _e1831518476_))
                                (_tl1831718481_ (##cdr _e1831518476_)))
                            (if (gx#stx-pair? _hd1831618479_)
                                (let ((_e1831818484_
                                       (gx#stx-e _hd1831618479_)))
                                  (let ((_hd1831918487_ (##car _e1831818484_))
                                        (_tl1832018489_ (##cdr _e1831818484_)))
                                    (if (gx#identifier? _hd1831918487_)
                                        (if (gx#stx-eq? '%#ref _hd1831918487_)
                                            (if (gx#stx-pair? _tl1832018489_)
                                                (let ((_e1832118492_
                                                       (gx#stx-e
                                                        _tl1832018489_)))
                                                  (let ((_hd1832218495_
                                                         (##car _e1832118492_))
                                                        (_tl1832318497_
                                                         (##cdr _e1832118492_)))
                                                    (if (gx#stx-null?
                                                         _tl1832318497_)
                                                        (if (gx#stx-pair?
                                                             _tl1831718481_)
                                                            (let ((_e1832418500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1831718481_)))
                      (let ((_hd1832518503_ (##car _e1832418500_))
                            (_tl1832618505_ (##cdr _e1832418500_)))
                        (if (gx#stx-pair? _hd1832518503_)
                            (let ((_e1832718508_ (gx#stx-e _hd1832518503_)))
                              (let ((_hd1832818511_ (##car _e1832718508_))
                                    (_tl1832918513_ (##cdr _e1832718508_)))
                                (if (gx#identifier? _hd1832818511_)
                                    (if (gx#stx-eq? '%#ref _hd1832818511_)
                                        (if (gx#stx-pair? _tl1832918513_)
                                            (let ((_e1833018516_
                                                   (gx#stx-e _tl1832918513_)))
                                              (let ((_hd1833118519_
                                                     (##car _e1833018516_))
                                                    (_tl1833218521_
                                                     (##cdr _e1833018516_)))
                                                (if (gx#stx-null?
                                                     _tl1833218521_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1832618505_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1832618505_)
                          '1)
                    (let ((_g27416_
                           (gx#syntax-split-splice _tl1832618505_ '1)))
                      (begin
                        (let ((_g27417_ (values-count _g27416_)))
                          (if (not (fx= _g27417_ 2))
                              (error "Context expects 2 values" _g27417_)))
                        (let ((_target1833318524_ (values-ref _g27416_ 0))
                              (_tl1833518526_ (values-ref _g27416_ 1)))
                          (if (gx#stx-pair? _tl1833518526_)
                              (let ((_e1834818529_ (gx#stx-e _tl1833518526_)))
                                (let ((_hd1834918532_ (##car _e1834818529_))
                                      (_tl1835018534_ (##cdr _e1834818529_)))
                                  (if (gx#stx-pair? _hd1834918532_)
                                      (let ((_e1835118537_
                                             (gx#stx-e _hd1834918532_)))
                                        (let ((_hd1835218540_
                                               (##car _e1835118537_))
                                              (_tl1835318542_
                                               (##cdr _e1835118537_)))
                                          (if (gx#identifier? _hd1835218540_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1835218540_)
                                                  (if (gx#stx-pair?
                                                       _tl1835318542_)
                                                      (let ((_e1835418545_
                                                             (gx#stx-e
                                                              _tl1835318542_)))
                                                        (let ((_hd1835518548_
                                                               (##car _e1835418545_))
                                                              (_tl1835618550_
                                                               (##cdr _e1835418545_)))
                                                          (if (gx#stx-null?
                                                               _tl1835618550_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1835018534_)
                          (letrec ((_loop1833618553_
                                    (lambda (_hd1833418556_
                                             _-absent-value1834018558_
                                             _key1834118560_
                                             _-xkwvar1834218562_
                                             _-hash-ref1834318564_)
                                      (if (gx#stx-pair? _hd1833418556_)
                                          (let ((_e1833718567_
                                                 (gx#stx-e _hd1833418556_)))
                                            (let ((_lp-hd1833818570_
                                                   (##car _e1833718567_))
                                                  (_lp-tl1833918572_
                                                   (##cdr _e1833718567_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1833818570_)
                                                  (let ((_e1835718575_
                                                         (gx#stx-e
                                                          _lp-hd1833818570_)))
                                                    (let ((_hd1835818578_
                                                           (##car _e1835718575_))
                                                          (_tl1835918580_
                                                           (##cdr _e1835718575_)))
                                                      (if (gx#identifier?
                                                           _hd1835818578_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1835818578_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1835918580_)
                          (let ((_e1836018583_ (gx#stx-e _tl1835918580_)))
                            (let ((_hd1836118586_ (##car _e1836018583_))
                                  (_tl1836218588_ (##cdr _e1836018583_)))
                              (if (gx#stx-pair? _hd1836118586_)
                                  (let ((_e1836318591_
                                         (gx#stx-e _hd1836118586_)))
                                    (let ((_hd1836418594_
                                           (##car _e1836318591_))
                                          (_tl1836518596_
                                           (##cdr _e1836318591_)))
                                      (if (gx#identifier? _hd1836418594_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1836418594_)
                                              (if (gx#stx-pair? _tl1836518596_)
                                                  (let ((_e1836618599_
                                                         (gx#stx-e
                                                          _tl1836518596_)))
                                                    (let ((_hd1836718602_
                                                           (##car _e1836618599_))
                                                          (_tl1836818604_
                                                           (##cdr _e1836618599_)))
                                                      (if (gx#stx-null?
                                                           _tl1836818604_)
                                                          (if (gx#stx-pair?
                                                               _tl1836218588_)
                                                              (let ((_e1836918607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1836218588_)))
                        (let ((_hd1837018610_ (##car _e1836918607_))
                              (_tl1837118612_ (##cdr _e1836918607_)))
                          (if (gx#stx-pair? _hd1837018610_)
                              (let ((_e1837218615_ (gx#stx-e _hd1837018610_)))
                                (let ((_hd1837318618_ (##car _e1837218615_))
                                      (_tl1837418620_ (##cdr _e1837218615_)))
                                  (if (gx#identifier? _hd1837318618_)
                                      (if (gx#stx-eq? '%#ref _hd1837318618_)
                                          (if (gx#stx-pair? _tl1837418620_)
                                              (let ((_e1837518623_
                                                     (gx#stx-e
                                                      _tl1837418620_)))
                                                (let ((_hd1837618626_
                                                       (##car _e1837518623_))
                                                      (_tl1837718628_
                                                       (##cdr _e1837518623_)))
                                                  (if (gx#stx-null?
                                                       _tl1837718628_)
                                                      (if (gx#stx-pair?
                                                           _tl1837118612_)
                                                          (let ((_e1837818631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1837118612_)))
                    (let ((_hd1837918634_ (##car _e1837818631_))
                          (_tl1838018636_ (##cdr _e1837818631_)))
                      (if (gx#stx-pair? _hd1837918634_)
                          (let ((_e1838118639_ (gx#stx-e _hd1837918634_)))
                            (let ((_hd1838218642_ (##car _e1838118639_))
                                  (_tl1838318644_ (##cdr _e1838118639_)))
                              (if (gx#identifier? _hd1838218642_)
                                  (if (gx#stx-eq? '%#quote _hd1838218642_)
                                      (if (gx#stx-pair? _tl1838318644_)
                                          (let ((_e1838418647_
                                                 (gx#stx-e _tl1838318644_)))
                                            (let ((_hd1838518650_
                                                   (##car _e1838418647_))
                                                  (_tl1838618652_
                                                   (##cdr _e1838418647_)))
                                              (if (gx#stx-null? _tl1838618652_)
                                                  (if (gx#stx-pair?
                                                       _tl1838018636_)
                                                      (let ((_e1838718655_
                                                             (gx#stx-e
                                                              _tl1838018636_)))
                                                        (let ((_hd1838818658_
                                                               (##car _e1838718655_))
                                                              (_tl1838918660_
                                                               (##cdr _e1838718655_)))
                                                          (if (gx#stx-pair?
                                                               _hd1838818658_)
                                                              (let ((_e1839018663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1838818658_)))
                        (let ((_hd1839118666_ (##car _e1839018663_))
                              (_tl1839218668_ (##cdr _e1839018663_)))
                          (if (gx#identifier? _hd1839118666_)
                              (if (gx#stx-eq? '%#ref _hd1839118666_)
                                  (if (gx#stx-pair? _tl1839218668_)
                                      (let ((_e1839318671_
                                             (gx#stx-e _tl1839218668_)))
                                        (let ((_hd1839418674_
                                               (##car _e1839318671_))
                                              (_tl1839518676_
                                               (##cdr _e1839318671_)))
                                          (if (gx#stx-null? _tl1839518676_)
                                              (if (gx#stx-null? _tl1838918660_)
                                                  (_loop1833618553_
                                                   _lp-tl1833918572_
                                                   (cons _hd1839418674_
                                                         _-absent-value1834018558_)
                                                   (cons _hd1838518650_
                                                         _key1834118560_)
                                                   (cons _hd1837618626_
                                                         _-xkwvar1834218562_)
                                                   (cons _hd1836718602_
                                                         _-hash-ref1834318564_))
                                                  (_g1810018407_
                                                   _g1810218410_))
                                              (_g1810018407_ _g1810218410_))))
                                      (_g1810018407_ _g1810218410_))
                                  (_g1810018407_ _g1810218410_))
                              (_g1810018407_ _g1810218410_))))
                      (_g1810018407_ _g1810218410_))))
              (_g1810018407_ _g1810218410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))))
                                          (_g1810018407_ _g1810218410_))
                                      (_g1810018407_ _g1810218410_))
                                  (_g1810018407_ _g1810218410_))))
                          (_g1810018407_ _g1810218410_))))
                  (_g1810018407_ _g1810218410_))
              (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1810018407_ _g1810218410_))
                                          (_g1810018407_ _g1810218410_))
                                      (_g1810018407_ _g1810218410_))))
                              (_g1810018407_ _g1810218410_))))
                      (_g1810018407_ _g1810218410_))
                  (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))
                                              (_g1810018407_ _g1810218410_))
                                          (_g1810018407_ _g1810218410_))))
                                  (_g1810018407_ _g1810218410_))))
                          (_g1810018407_ _g1810218410_))
                      (_g1810018407_ _g1810218410_))
                  (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))))
                                          (let ((_-absent-value1834418679_
                                                 (reverse _-absent-value1834018558_))
                                                (_key1834518681_
                                                 (reverse _key1834118560_))
                                                (_-xkwvar1834618683_
                                                 (reverse _-xkwvar1834218562_))
                                                (_-hash-ref1834718685_
                                                 (reverse _-hash-ref1834318564_)))
                                            (if (gx#stx-null? _tl1830218441_)
                                                ((lambda (_L18688_
                                                          _L18689_
                                                          _L18690_
                                                          _L18691_
                                                          _L18692_
                                                          _L18693_
                                                          _L18694_
                                                          _L18695_
                                                          _L18696_
                                                          _L18697_)
                                                   (if (if (gx#identifier?
                                                            _L18697_)
                                                           (if (gx#identifier?
                                                                _L18696_)
                                                               (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L18695_)
                                'apply)
                           (if (gx#free-identifier=? _L18697_ _L18693_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1875218755_
                                                               _g1875318757_)
                                                        (cons _g1875218755_
                                                              _g1875318757_))
                                                      '()
                                                      _L18690_)))
                                   (if (andmap1 (lambda (_id18760_)
                                                  (eq? (gxc#generate-runtime-binding-id
                                                        _id18760_)
                                                       'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1876118764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1876218766_)
                    (cons _g1876118764_ _g1876218766_))
                  '()
                  _L18692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_id18769_)
                                                      (eq? (gxc#generate-runtime-binding-id
                                                            _id18769_)
                                                           'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1877018773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1877118775_)
                        (cons _g1877018773_ _g1877118775_))
                      '()
                      _L18689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1877718779_)
                                                      (gx#free-identifier=?
                                                       _g1877718779_
                                                       _L18697_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1878118784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1878218786_)
                        (cons _g1878118784_ _g1878218786_))
                      '()
                      _L18691_)))
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
                       (foldr1 (lambda (_g1878818791_ _g1878918793_)
                                 (cons _g1878818791_ _g1878918793_))
                               '()
                               _L18690_)))
                (gxc#generate-runtime-binding-id _L18694_))
               (_g1810018407_ _g1810218410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1835518548_
                                                 _-absent-value1834418679_
                                                 _key1834518681_
                                                 _-xkwvar1834618683_
                                                 _-hash-ref1834718685_
                                                 _hd1833118519_
                                                 _hd1832218495_
                                                 _hd1831318471_
                                                 _tl1829918433_
                                                 _hd1829818431_)
                                                (_g1810018407_
                                                 _g1810218410_)))))))
                            (_loop1833618553_
                             _target1833318524_
                             '()
                             '()
                             '()
                             '()))
                          (_g1810018407_ _g1810218410_))
                      (_g1810018407_ _g1810218410_))))
              (_g1810018407_ _g1810218410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))
                                              (_g1810018407_ _g1810218410_))))
                                      (_g1810018407_ _g1810218410_))))
                              (_g1810018407_ _g1810218410_)))))
                    (_g1810018407_ _g1810218410_))
                (_g1810018407_ _g1810218410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018407_
                                                     _g1810218410_))))
                                            (_g1810018407_ _g1810218410_))
                                        (_g1810018407_ _g1810218410_))
                                    (_g1810018407_ _g1810218410_))))
                            (_g1810018407_ _g1810218410_))))
                    (_g1810018407_ _g1810218410_))
                (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1810018407_ _g1810218410_))
                                            (_g1810018407_ _g1810218410_))
                                        (_g1810018407_ _g1810218410_))))
                                (_g1810018407_ _g1810218410_))))
                        (_g1810018407_ _g1810218410_))
                    (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018407_
                                                     _g1810218410_))
                                                (_g1810018407_ _g1810218410_))
                                            (_g1810018407_ _g1810218410_))))
                                    (_g1810018407_ _g1810218410_))))
                            (_g1810018407_ _g1810218410_))
                        (_g1810018407_ _g1810218410_))
                    (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018407_
                                                     _g1810218410_))))
                                            (_g1810018407_ _g1810218410_))))
                                    (_g1810018407_ _g1810218410_))))
                            (_g1810018407_ _g1810218410_))))
                    (_g1810018407_ _g1810218410_))))
             (_g1809819013_
              (lambda (_g1810218799_)
                (if (gx#stx-pair? _g1810218799_)
                    (let ((_e1822418801_ (gx#stx-e _g1810218799_)))
                      (let ((_hd1822518804_ (##car _e1822418801_))
                            (_tl1822618806_ (##cdr _e1822418801_)))
                        (if (gx#stx-pair? _tl1822618806_)
                            (let ((_e1822718809_ (gx#stx-e _tl1822618806_)))
                              (let ((_hd1822818812_ (##car _e1822718809_))
                                    (_tl1822918814_ (##cdr _e1822718809_)))
                                (if (gx#stx-pair? _tl1822918814_)
                                    (let ((_e1823018817_
                                           (gx#stx-e _tl1822918814_)))
                                      (let ((_hd1823118820_
                                             (##car _e1823018817_))
                                            (_tl1823218822_
                                             (##cdr _e1823018817_)))
                                        (if (gx#stx-pair? _hd1823118820_)
                                            (let ((_e1823318825_
                                                   (gx#stx-e _hd1823118820_)))
                                              (let ((_hd1823418828_
                                                     (##car _e1823318825_))
                                                    (_tl1823518830_
                                                     (##cdr _e1823318825_)))
                                                (if (gx#identifier?
                                                     _hd1823418828_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1823418828_)
                                                        (if (gx#stx-pair?
                                                             _tl1823518830_)
                                                            (let ((_e1823618833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1823518830_)))
                      (let ((_hd1823718836_ (##car _e1823618833_))
                            (_tl1823818838_ (##cdr _e1823618833_)))
                        (if (gx#stx-pair? _hd1823718836_)
                            (let ((_e1823918841_ (gx#stx-e _hd1823718836_)))
                              (let ((_hd1824018844_ (##car _e1823918841_))
                                    (_tl1824118846_ (##cdr _e1823918841_)))
                                (if (gx#identifier? _hd1824018844_)
                                    (if (gx#stx-eq? '%#ref _hd1824018844_)
                                        (if (gx#stx-pair? _tl1824118846_)
                                            (let ((_e1824218849_
                                                   (gx#stx-e _tl1824118846_)))
                                              (let ((_hd1824318852_
                                                     (##car _e1824218849_))
                                                    (_tl1824418854_
                                                     (##cdr _e1824218849_)))
                                                (if (gx#stx-null?
                                                     _tl1824418854_)
                                                    (if (gx#stx-pair?
                                                         _tl1823818838_)
                                                        (let ((_e1824518857_
                                                               (gx#stx-e
                                                                _tl1823818838_)))
                                                          (let ((_hd1824618860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1824518857_))
                        (_tl1824718862_ (##cdr _e1824518857_)))
                    (if (gx#stx-pair? _hd1824618860_)
                        (let ((_e1824818865_ (gx#stx-e _hd1824618860_)))
                          (let ((_hd1824918868_ (##car _e1824818865_))
                                (_tl1825018870_ (##cdr _e1824818865_)))
                            (if (gx#identifier? _hd1824918868_)
                                (if (gx#stx-eq? '%#ref _hd1824918868_)
                                    (if (gx#stx-pair? _tl1825018870_)
                                        (let ((_e1825118873_
                                               (gx#stx-e _tl1825018870_)))
                                          (let ((_hd1825218876_
                                                 (##car _e1825118873_))
                                                (_tl1825318878_
                                                 (##cdr _e1825118873_)))
                                            (if (gx#stx-null? _tl1825318878_)
                                                (if (gx#stx-pair?
                                                     _tl1824718862_)
                                                    (let ((_e1825418881_
                                                           (gx#stx-e
                                                            _tl1824718862_)))
                                                      (let ((_hd1825518884_
                                                             (##car _e1825418881_))
                                                            (_tl1825618886_
                                                             (##cdr _e1825418881_)))
                                                        (if (gx#stx-pair?
                                                             _hd1825518884_)
                                                            (let ((_e1825718889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1825518884_)))
                      (let ((_hd1825818892_ (##car _e1825718889_))
                            (_tl1825918894_ (##cdr _e1825718889_)))
                        (if (gx#identifier? _hd1825818892_)
                            (if (gx#stx-eq? '%#quote _hd1825818892_)
                                (if (gx#stx-pair? _tl1825918894_)
                                    (let ((_e1826018897_
                                           (gx#stx-e _tl1825918894_)))
                                      (let ((_hd1826118900_
                                             (##car _e1826018897_))
                                            (_tl1826218902_
                                             (##cdr _e1826018897_)))
                                        (if (gx#stx-null? _tl1826218902_)
                                            (if (gx#stx-pair? _tl1825618886_)
                                                (let ((_e1826318905_
                                                       (gx#stx-e
                                                        _tl1825618886_)))
                                                  (let ((_hd1826418908_
                                                         (##car _e1826318905_))
                                                        (_tl1826518910_
                                                         (##cdr _e1826318905_)))
                                                    (if (gx#stx-pair?
                                                         _hd1826418908_)
                                                        (let ((_e1826618913_
                                                               (gx#stx-e
                                                                _hd1826418908_)))
                                                          (let ((_hd1826718916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1826618913_))
                        (_tl1826818918_ (##cdr _e1826618913_)))
                    (if (gx#identifier? _hd1826718916_)
                        (if (gx#stx-eq? '%#ref _hd1826718916_)
                            (if (gx#stx-pair? _tl1826818918_)
                                (let ((_e1826918921_
                                       (gx#stx-e _tl1826818918_)))
                                  (let ((_hd1827018924_ (##car _e1826918921_))
                                        (_tl1827118926_ (##cdr _e1826918921_)))
                                    (if (gx#stx-null? _tl1827118926_)
                                        (if (gx#stx-pair? _tl1826518910_)
                                            (let ((_e1827218929_
                                                   (gx#stx-e _tl1826518910_)))
                                              (let ((_hd1827318932_
                                                     (##car _e1827218929_))
                                                    (_tl1827418934_
                                                     (##cdr _e1827218929_)))
                                                (if (gx#stx-pair?
                                                     _hd1827318932_)
                                                    (let ((_e1827518937_
                                                           (gx#stx-e
                                                            _hd1827318932_)))
                                                      (let ((_hd1827618940_
                                                             (##car _e1827518937_))
                                                            (_tl1827718942_
                                                             (##cdr _e1827518937_)))
                                                        (if (gx#identifier?
                                                             _hd1827618940_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1827618940_)
                        (if (gx#stx-pair? _tl1827718942_)
                            (let ((_e1827818945_ (gx#stx-e _tl1827718942_)))
                              (let ((_hd1827918948_ (##car _e1827818945_))
                                    (_tl1828018950_ (##cdr _e1827818945_)))
                                (if (gx#stx-null? _tl1828018950_)
                                    (if (gx#stx-null? _tl1827418934_)
                                        (if (gx#stx-null? _tl1823218822_)
                                            ((lambda (_L18953_
                                                      _L18954_
                                                      _L18955_
                                                      _L18956_
                                                      _L18957_
                                                      _L18958_)
                                               (if (if (gx#identifier?
                                                        _L18958_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18957_)
                        'apply)
                   (if (eq? (gxc#generate-runtime-binding-id _L18956_)
                            'keyword-dispatch)
                       (gx#free-identifier=? _L18958_ _L18953_)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_tab19008_
                                                           (gx#stx-e _L18955_))
                                                          (_keys19010_
                                                           (if _tab19008_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab19008_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys19010_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18954_)))
                                                   (_g1809918796_
                                                    _g1810218799_)))
                                             _hd1827918948_
                                             _hd1827018924_
                                             _hd1826118900_
                                             _hd1825218876_
                                             _hd1824318852_
                                             _hd1822818812_)
                                            (_g1809918796_ _g1810218799_))
                                        (_g1809918796_ _g1810218799_))
                                    (_g1809918796_ _g1810218799_))))
                            (_g1809918796_ _g1810218799_))
                        (_g1809918796_ _g1810218799_))
                    (_g1809918796_ _g1810218799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))))
                                            (_g1809918796_ _g1810218799_))
                                        (_g1809918796_ _g1810218799_))))
                                (_g1809918796_ _g1810218799_))
                            (_g1809918796_ _g1810218799_))
                        (_g1809918796_ _g1810218799_))))
                (_g1809918796_ _g1810218799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1809918796_ _g1810218799_))
                                            (_g1809918796_ _g1810218799_))))
                                    (_g1809918796_ _g1810218799_))
                                (_g1809918796_ _g1810218799_))
                            (_g1809918796_ _g1810218799_))))
                    (_g1809918796_ _g1810218799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))
                                                (_g1809918796_
                                                 _g1810218799_))))
                                        (_g1809918796_ _g1810218799_))
                                    (_g1809918796_ _g1810218799_))
                                (_g1809918796_ _g1810218799_))))
                        (_g1809918796_ _g1810218799_))))
                (_g1809918796_ _g1810218799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))))
                                            (_g1809918796_ _g1810218799_))
                                        (_g1809918796_ _g1810218799_))
                                    (_g1809918796_ _g1810218799_))))
                            (_g1809918796_ _g1810218799_))))
                    (_g1809918796_ _g1810218799_))
                (_g1809918796_ _g1810218799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))))
                                            (_g1809918796_ _g1810218799_))))
                                    (_g1809918796_ _g1810218799_))))
                            (_g1809918796_ _g1810218799_))))
                    (_g1809918796_ _g1810218799_))))
             (_g1809719035_
              (lambda (_g1810219016_)
                (if (gx#stx-pair? _g1810219016_)
                    (let ((_e1821519018_ (gx#stx-e _g1810219016_)))
                      (let ((_hd1821619021_ (##car _e1821519018_))
                            (_tl1821719023_ (##cdr _e1821519018_)))
                        ((lambda (_L19026_)
                           (if (gxc#dispatch-lambda-form? _L19026_)
                               (let ((__obj27346
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27346
                                    'lambda
                                    (gxc#lambda-form-arity _L19026_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19026_))
                                   __obj27346))
                               (_g1809819013_ _g1810219016_)))
                         _tl1821719023_)))
                    (_g1809819013_ _g1810219016_))))
             (_g1809619265_
              (lambda (_g1810219038_)
                (if (gx#stx-pair? _g1810219038_)
                    (let ((_e1816019040_ (gx#stx-e _g1810219038_)))
                      (let ((_hd1816119043_ (##car _e1816019040_))
                            (_tl1816219045_ (##cdr _e1816019040_)))
                        (if (gx#stx-pair? _tl1816219045_)
                            (let ((_e1816319048_ (gx#stx-e _tl1816219045_)))
                              (let ((_hd1816419051_ (##car _e1816319048_))
                                    (_tl1816519053_ (##cdr _e1816319048_)))
                                (if (gx#stx-pair/null? _hd1816419051_)
                                    (if (fx>= (gx#stx-length _hd1816419051_)
                                              '0)
                                        (let ((_g27418_
                                               (gx#syntax-split-splice
                                                _hd1816419051_
                                                '0)))
                                          (begin
                                            (let ((_g27419_
                                                   (values-count _g27418_)))
                                              (if (not (fx= _g27419_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27419_)))
                                            (let ((_target1816619056_
                                                   (values-ref _g27418_ 0))
                                                  (_tl1816819058_
                                                   (values-ref _g27418_ 1)))
                                              (if (gx#stx-null? _tl1816819058_)
                                                  (letrec ((_loop1816919061_
                                                            (lambda (_hd1816719064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1817319066_)
                      (if (gx#stx-pair? _hd1816719064_)
                          (let ((_e1817019069_ (gx#stx-e _hd1816719064_)))
                            (let ((_lp-hd1817119072_ (##car _e1817019069_))
                                  (_lp-tl1817219074_ (##cdr _e1817019069_)))
                              (_loop1816919061_
                               _lp-tl1817219074_
                               (cons _lp-hd1817119072_ _arg1817319066_))))
                          (let ((_arg1817419077_ (reverse _arg1817319066_)))
                            (if (gx#stx-pair? _tl1816519053_)
                                (let ((_e1817519080_
                                       (gx#stx-e _tl1816519053_)))
                                  (let ((_hd1817619083_ (##car _e1817519080_))
                                        (_tl1817719085_ (##cdr _e1817519080_)))
                                    (if (gx#stx-pair? _hd1817619083_)
                                        (let ((_e1817819088_
                                               (gx#stx-e _hd1817619083_)))
                                          (let ((_hd1817919091_
                                                 (##car _e1817819088_))
                                                (_tl1818019093_
                                                 (##cdr _e1817819088_)))
                                            (if (gx#identifier? _hd1817919091_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1817919091_)
                                                    (if (gx#stx-pair?
                                                         _tl1818019093_)
                                                        (let ((_e1818119096_
                                                               (gx#stx-e
                                                                _tl1818019093_)))
                                                          (let ((_hd1818219099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1818119096_))
                        (_tl1818319101_ (##cdr _e1818119096_)))
                    (if (gx#stx-pair? _hd1818219099_)
                        (let ((_e1818419104_ (gx#stx-e _hd1818219099_)))
                          (let ((_hd1818519107_ (##car _e1818419104_))
                                (_tl1818619109_ (##cdr _e1818419104_)))
                            (if (gx#identifier? _hd1818519107_)
                                (if (gx#stx-eq? '%#ref _hd1818519107_)
                                    (if (gx#stx-pair? _tl1818619109_)
                                        (let ((_e1818719112_
                                               (gx#stx-e _tl1818619109_)))
                                          (let ((_hd1818819115_
                                                 (##car _e1818719112_))
                                                (_tl1818919117_
                                                 (##cdr _e1818719112_)))
                                            (if (gx#stx-null? _tl1818919117_)
                                                (if (gx#stx-pair?
                                                     _tl1818319101_)
                                                    (let ((_e1819019120_
                                                           (gx#stx-e
                                                            _tl1818319101_)))
                                                      (let ((_hd1819119123_
                                                             (##car _e1819019120_))
                                                            (_tl1819219125_
                                                             (##cdr _e1819019120_)))
                                                        (if (gx#stx-pair?
                                                             _hd1819119123_)
                                                            (let ((_e1819319128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1819119123_)))
                      (let ((_hd1819419131_ (##car _e1819319128_))
                            (_tl1819519133_ (##cdr _e1819319128_)))
                        (if (gx#identifier? _hd1819419131_)
                            (if (gx#stx-eq? '%#ref _hd1819419131_)
                                (if (gx#stx-pair? _tl1819519133_)
                                    (let ((_e1819619136_
                                           (gx#stx-e _tl1819519133_)))
                                      (let ((_hd1819719139_
                                             (##car _e1819619136_))
                                            (_tl1819819141_
                                             (##cdr _e1819619136_)))
                                        (if (gx#stx-null? _tl1819819141_)
                                            (if (gx#stx-pair/null?
                                                 _tl1819219125_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1819219125_)
                                                          '0)
                                                    (let ((_g27420_
                                                           (gx#syntax-split-splice
                                                            _tl1819219125_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27421_
                                                               (values-count
                                                                _g27420_)))
                                                          (if (not (fx= _g27421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g27421_)))
                (let ((_target1819919144_ (values-ref _g27420_ 0))
                      (_tl1820119146_ (values-ref _g27420_ 1)))
                  (if (gx#stx-null? _tl1820119146_)
                      (letrec ((_loop1820219149_
                                (lambda (_hd1820019152_ _xarg1820619154_)
                                  (if (gx#stx-pair? _hd1820019152_)
                                      (let ((_e1820319157_
                                             (gx#stx-e _hd1820019152_)))
                                        (let ((_lp-hd1820419160_
                                               (##car _e1820319157_))
                                              (_lp-tl1820519162_
                                               (##cdr _e1820319157_)))
                                          (if (gx#stx-pair? _lp-hd1820419160_)
                                              (let ((_e1820819165_
                                                     (gx#stx-e
                                                      _lp-hd1820419160_)))
                                                (let ((_hd1820919168_
                                                       (##car _e1820819165_))
                                                      (_tl1821019170_
                                                       (##cdr _e1820819165_)))
                                                  (if (gx#identifier?
                                                       _hd1820919168_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1820919168_)
                                                          (if (gx#stx-pair?
                                                               _tl1821019170_)
                                                              (let ((_e1821119173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1821019170_)))
                        (let ((_hd1821219176_ (##car _e1821119173_))
                              (_tl1821319178_ (##cdr _e1821119173_)))
                          (if (gx#stx-null? _tl1821319178_)
                              (_loop1820219149_
                               _lp-tl1820519162_
                               (cons _hd1821219176_ _xarg1820619154_))
                              (_g1809719035_ _g1810219038_))))
                      (_g1809719035_ _g1810219038_))
                  (_g1809719035_ _g1810219038_))
              (_g1809719035_ _g1810219038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1809719035_ _g1810219038_))))
                                      (let ((_xarg1820719181_
                                             (reverse _xarg1820619154_)))
                                        (if (gx#stx-null? _tl1817719085_)
                                            ((lambda (_L19184_
                                                      _L19185_
                                                      _L19186_
                                                      _L19187_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1922419227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1922519229_)
                            (cons _g1922419227_ _g1922519229_))
                          '()
                          _L19187_)))
               (if (eq? (gxc#generate-runtime-binding-id _L19186_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1923119234_
                                                       _g1923219236_)
                                                (cons _g1923119234_
                                                      _g1923219236_))
                                              '()
                                              _L19187_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1923819241_
                                                       _g1923919243_)
                                                (cons _g1923819241_
                                                      _g1923919243_))
                                              '()
                                              _L19184_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1924519248_ _g1924619250_)
                                            (cons _g1924519248_ _g1924619250_))
                                          '()
                                          _L19187_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1925219255_ _g1925319257_)
                                            (cons _g1925219255_ _g1925319257_))
                                          '()
                                          _L19184_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19260_
                                                           (gxc#generate-runtime-binding-id
                                                            _L19185_))
                                                          (_type19262_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19260_)))
                                                     (if (##structure-instance-of?
                                                          _type19262_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19260_)
                                                         '#f))
                                                   (_g1809719035_
                                                    _g1810219038_)))
                                             _xarg1820719181_
                                             _hd1819719139_
                                             _hd1818819115_
                                             _arg1817419077_)
                                            (_g1809719035_ _g1810219038_)))))))
                        (_loop1820219149_ _target1819919144_ '()))
                      (_g1809719035_ _g1810219038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809719035_
                                                     _g1810219038_))
                                                (_g1809719035_ _g1810219038_))
                                            (_g1809719035_ _g1810219038_))))
                                    (_g1809719035_ _g1810219038_))
                                (_g1809719035_ _g1810219038_))
                            (_g1809719035_ _g1810219038_))))
                    (_g1809719035_ _g1810219038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809719035_
                                                     _g1810219038_))
                                                (_g1809719035_
                                                 _g1810219038_))))
                                        (_g1809719035_ _g1810219038_))
                                    (_g1809719035_ _g1810219038_))
                                (_g1809719035_ _g1810219038_))))
                        (_g1809719035_ _g1810219038_))))
                (_g1809719035_ _g1810219038_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809719035_
                                                     _g1810219038_))
                                                (_g1809719035_
                                                 _g1810219038_))))
                                        (_g1809719035_ _g1810219038_))))
                                (_g1809719035_ _g1810219038_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1816919061_
                                                     _target1816619056_
                                                     '()))
                                                  (_g1809719035_
                                                   _g1810219038_)))))
                                        (_g1809719035_ _g1810219038_))
                                    (_g1809719035_ _g1810219038_))))
                            (_g1809719035_ _g1810219038_))))
                    (_g1809719035_ _g1810219038_))))
             (_g1809519450_
              (lambda (_g1810219268_)
                (if (gx#stx-pair? _g1810219268_)
                    (let ((_e1810819270_ (gx#stx-e _g1810219268_)))
                      (let ((_hd1810919273_ (##car _e1810819270_))
                            (_tl1811019275_ (##cdr _e1810819270_)))
                        (if (gx#stx-pair? _tl1811019275_)
                            (let ((_e1811119278_ (gx#stx-e _tl1811019275_)))
                              (let ((_hd1811219281_ (##car _e1811119278_))
                                    (_tl1811319283_ (##cdr _e1811119278_)))
                                (if (gx#stx-pair? _tl1811319283_)
                                    (let ((_e1811419286_
                                           (gx#stx-e _tl1811319283_)))
                                      (let ((_hd1811519289_
                                             (##car _e1811419286_))
                                            (_tl1811619291_
                                             (##cdr _e1811419286_)))
                                        (if (gx#stx-pair? _hd1811519289_)
                                            (let ((_e1811719294_
                                                   (gx#stx-e _hd1811519289_)))
                                              (let ((_hd1811819297_
                                                     (##car _e1811719294_))
                                                    (_tl1811919299_
                                                     (##cdr _e1811719294_)))
                                                (if (gx#identifier?
                                                     _hd1811819297_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1811819297_)
                                                        (if (gx#stx-pair?
                                                             _tl1811919299_)
                                                            (let ((_e1812019302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1811919299_)))
                      (let ((_hd1812119305_ (##car _e1812019302_))
                            (_tl1812219307_ (##cdr _e1812019302_)))
                        (if (gx#stx-pair? _hd1812119305_)
                            (let ((_e1812319310_ (gx#stx-e _hd1812119305_)))
                              (let ((_hd1812419313_ (##car _e1812319310_))
                                    (_tl1812519315_ (##cdr _e1812319310_)))
                                (if (gx#identifier? _hd1812419313_)
                                    (if (gx#stx-eq? '%#ref _hd1812419313_)
                                        (if (gx#stx-pair? _tl1812519315_)
                                            (let ((_e1812619318_
                                                   (gx#stx-e _tl1812519315_)))
                                              (let ((_hd1812719321_
                                                     (##car _e1812619318_))
                                                    (_tl1812819323_
                                                     (##cdr _e1812619318_)))
                                                (if (gx#stx-null?
                                                     _tl1812819323_)
                                                    (if (gx#stx-pair?
                                                         _tl1812219307_)
                                                        (let ((_e1812919326_
                                                               (gx#stx-e
                                                                _tl1812219307_)))
                                                          (let ((_hd1813019329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1812919326_))
                        (_tl1813119331_ (##cdr _e1812919326_)))
                    (if (gx#stx-pair? _hd1813019329_)
                        (let ((_e1813219334_ (gx#stx-e _hd1813019329_)))
                          (let ((_hd1813319337_ (##car _e1813219334_))
                                (_tl1813419339_ (##cdr _e1813219334_)))
                            (if (gx#identifier? _hd1813319337_)
                                (if (gx#stx-eq? '%#ref _hd1813319337_)
                                    (if (gx#stx-pair? _tl1813419339_)
                                        (let ((_e1813519342_
                                               (gx#stx-e _tl1813419339_)))
                                          (let ((_hd1813619345_
                                                 (##car _e1813519342_))
                                                (_tl1813719347_
                                                 (##cdr _e1813519342_)))
                                            (if (gx#stx-null? _tl1813719347_)
                                                (if (gx#stx-pair?
                                                     _tl1813119331_)
                                                    (let ((_e1813819350_
                                                           (gx#stx-e
                                                            _tl1813119331_)))
                                                      (let ((_hd1813919353_
                                                             (##car _e1813819350_))
                                                            (_tl1814019355_
                                                             (##cdr _e1813819350_)))
                                                        (if (gx#stx-pair?
                                                             _hd1813919353_)
                                                            (let ((_e1814119358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1813919353_)))
                      (let ((_hd1814219361_ (##car _e1814119358_))
                            (_tl1814319363_ (##cdr _e1814119358_)))
                        (if (gx#identifier? _hd1814219361_)
                            (if (gx#stx-eq? '%#ref _hd1814219361_)
                                (if (gx#stx-pair? _tl1814319363_)
                                    (let ((_e1814419366_
                                           (gx#stx-e _tl1814319363_)))
                                      (let ((_hd1814519369_
                                             (##car _e1814419366_))
                                            (_tl1814619371_
                                             (##cdr _e1814419366_)))
                                        (if (gx#stx-null? _tl1814619371_)
                                            (if (gx#stx-pair? _tl1814019355_)
                                                (let ((_e1814719374_
                                                       (gx#stx-e
                                                        _tl1814019355_)))
                                                  (let ((_hd1814819377_
                                                         (##car _e1814719374_))
                                                        (_tl1814919379_
                                                         (##cdr _e1814719374_)))
                                                    (if (gx#stx-pair?
                                                         _hd1814819377_)
                                                        (let ((_e1815019382_
                                                               (gx#stx-e
                                                                _hd1814819377_)))
                                                          (let ((_hd1815119385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1815019382_))
                        (_tl1815219387_ (##cdr _e1815019382_)))
                    (if (gx#identifier? _hd1815119385_)
                        (if (gx#stx-eq? '%#ref _hd1815119385_)
                            (if (gx#stx-pair? _tl1815219387_)
                                (let ((_e1815319390_
                                       (gx#stx-e _tl1815219387_)))
                                  (let ((_hd1815419393_ (##car _e1815319390_))
                                        (_tl1815519395_ (##cdr _e1815319390_)))
                                    (if (gx#stx-null? _tl1815519395_)
                                        (if (gx#stx-null? _tl1814919379_)
                                            (if (gx#stx-null? _tl1811619291_)
                                                ((lambda (_L19398_
                                                          _L19399_
                                                          _L19400_
                                                          _L19401_
                                                          _L19402_)
                                                   (if (if (gx#identifier?
                                                            _L19402_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19401_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L19400_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L19402_ _L19398_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19445_
                       (gxc#generate-runtime-binding-id _L19399_))
                      (_type19447_ (gxc#optimizer-resolve-type _type-t19445_)))
                 (if (##structure-instance-of?
                      _type19447_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19445_)
                     '#f))
               (_g1809619265_ _g1810219268_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1815419393_
                                                 _hd1814519369_
                                                 _hd1813619345_
                                                 _hd1812719321_
                                                 _hd1811219281_)
                                                (_g1809619265_ _g1810219268_))
                                            (_g1809619265_ _g1810219268_))
                                        (_g1809619265_ _g1810219268_))))
                                (_g1809619265_ _g1810219268_))
                            (_g1809619265_ _g1810219268_))
                        (_g1809619265_ _g1810219268_))))
                (_g1809619265_ _g1810219268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1809619265_ _g1810219268_))
                                            (_g1809619265_ _g1810219268_))))
                                    (_g1809619265_ _g1810219268_))
                                (_g1809619265_ _g1810219268_))
                            (_g1809619265_ _g1810219268_))))
                    (_g1809619265_ _g1810219268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809619265_
                                                     _g1810219268_))
                                                (_g1809619265_
                                                 _g1810219268_))))
                                        (_g1809619265_ _g1810219268_))
                                    (_g1809619265_ _g1810219268_))
                                (_g1809619265_ _g1810219268_))))
                        (_g1809619265_ _g1810219268_))))
                (_g1809619265_ _g1810219268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809619265_
                                                     _g1810219268_))))
                                            (_g1809619265_ _g1810219268_))
                                        (_g1809619265_ _g1810219268_))
                                    (_g1809619265_ _g1810219268_))))
                            (_g1809619265_ _g1810219268_))))
                    (_g1809619265_ _g1810219268_))
                (_g1809619265_ _g1810219268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809619265_
                                                     _g1810219268_))))
                                            (_g1809619265_ _g1810219268_))))
                                    (_g1809619265_ _g1810219268_))))
                            (_g1809619265_ _g1810219268_))))
                    (_g1809619265_ _g1810219268_)))))
        (_g1809519450_ _stx18094_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18040_)
      (letrec ((_clause-e18042_
                (lambda (_form18092_)
                  (let ((__obj27347 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27347
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18092_)
                       (gxc#dispatch-lambda-form-delegate _form18092_))
                      __obj27347)))))
        (let* ((_g1804518055_
                (lambda (_g1804618052_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1804618052_)))
               (_g1804418062_ (lambda (_g1804618058_) ((lambda () '#f))))
               (_g1804318089_
                (lambda (_g1804618065_)
                  (if (gx#stx-pair? _g1804618065_)
                      (let ((_e1804818067_ (gx#stx-e _g1804618065_)))
                        (let ((_hd1804918070_ (##car _e1804818067_))
                              (_tl1805018072_ (##cdr _e1804818067_)))
                          ((lambda (_L18075_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18075_)
                                 (let ((_clauses18087_
                                        (map _clause-e18042_ _L18075_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18087_))
                                 (_g1804418062_ _g1804618065_)))
                           _tl1805018072_)))
                      (_g1804418062_ _g1804618065_)))))
          (_g1804318089_ _stx18040_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx17945_)
      (let* ((_g1794817968_
              (lambda (_g1794917965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1794917965_)))
             (_g1794717975_ (lambda (_g1794917971_) ((lambda () '#f))))
             (_g1794618037_
              (lambda (_g1794917978_)
                (if (gx#stx-pair? _g1794917978_)
                    (let ((_e1795217980_ (gx#stx-e _g1794917978_)))
                      (let ((_hd1795317983_ (##car _e1795217980_))
                            (_tl1795417985_ (##cdr _e1795217980_)))
                        (if (gx#stx-pair? _tl1795417985_)
                            (let ((_e1795517988_ (gx#stx-e _tl1795417985_)))
                              (let ((_hd1795617991_ (##car _e1795517988_))
                                    (_tl1795717993_ (##cdr _e1795517988_)))
                                (if (gx#stx-pair? _hd1795617991_)
                                    (let ((_e1795817996_
                                           (gx#stx-e _hd1795617991_)))
                                      (let ((_hd1795917999_
                                             (##car _e1795817996_))
                                            (_tl1796018001_
                                             (##cdr _e1795817996_)))
                                        (if (gx#identifier? _hd1795917999_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1795917999_)
                                                (if (gx#stx-pair?
                                                     _tl1796018001_)
                                                    (let ((_e1796118004_
                                                           (gx#stx-e
                                                            _tl1796018001_)))
                                                      (let ((_hd1796218007_
                                                             (##car _e1796118004_))
                                                            (_tl1796318009_
                                                             (##cdr _e1796118004_)))
                                                        (if (gx#stx-null?
                                                             _tl1796318009_)
                                                            ((lambda (_L18012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18013_)
                       (let ((_type-e1803018032_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L18013_)
                               '#f)))
                         (if _type-e1803018032_
                             (let ((_type-e18035_ _type-e1803018032_))
                               (_type-e18035_ _stx17945_ _L18012_))
                             '#f)))
                     _tl1795717993_
                     _hd1796218007_)
                    (_g1794717975_ _g1794917978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1794717975_
                                                     _g1794917978_))
                                                (_g1794717975_ _g1794917978_))
                                            (_g1794717975_ _g1794917978_))))
                                    (_g1794717975_ _g1794917978_))))
                            (_g1794717975_ _g1794917978_))))
                    (_g1794717975_ _g1794917978_)))))
        (_g1794618037_ _stx17945_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17430_ _args17431_)
      (let* ((_g1743517548_
              (lambda (_g1743617545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1743617545_)))
             (_g1743417555_
              (lambda (_g1743617551_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17430_))
                     '#f)))))
             (_g1743317762_
              (lambda (_g1743617558_)
                (if (gx#stx-pair? _g1743617558_)
                    (let ((_e1749617560_ (gx#stx-e _g1743617558_)))
                      (let ((_hd1749717563_ (##car _e1749617560_))
                            (_tl1749817565_ (##cdr _e1749617560_)))
                        (if (gx#stx-pair? _hd1749717563_)
                            (let ((_e1749917568_ (gx#stx-e _hd1749717563_)))
                              (let ((_hd1750017571_ (##car _e1749917568_))
                                    (_tl1750117573_ (##cdr _e1749917568_)))
                                (if (gx#identifier? _hd1750017571_)
                                    (if (gx#stx-eq? '%#quote _hd1750017571_)
                                        (if (gx#stx-pair? _tl1750117573_)
                                            (let ((_e1750217576_
                                                   (gx#stx-e _tl1750117573_)))
                                              (let ((_hd1750317579_
                                                     (##car _e1750217576_))
                                                    (_tl1750417581_
                                                     (##cdr _e1750217576_)))
                                                (if (gx#stx-null?
                                                     _tl1750417581_)
                                                    (if (gx#stx-pair?
                                                         _tl1749817565_)
                                                        (let ((_e1750517584_
                                                               (gx#stx-e
                                                                _tl1749817565_)))
                                                          (let ((_hd1750617587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1750517584_))
                        (_tl1750717589_ (##cdr _e1750517584_)))
                    (if (gx#stx-pair? _hd1750617587_)
                        (let ((_e1750817592_ (gx#stx-e _hd1750617587_)))
                          (let ((_hd1750917595_ (##car _e1750817592_))
                                (_tl1751017597_ (##cdr _e1750817592_)))
                            (if (gx#identifier? _hd1750917595_)
                                (if (gx#stx-eq? '%#ref _hd1750917595_)
                                    (if (gx#stx-pair? _tl1751017597_)
                                        (let ((_e1751117600_
                                               (gx#stx-e _tl1751017597_)))
                                          (let ((_hd1751217603_
                                                 (##car _e1751117600_))
                                                (_tl1751317605_
                                                 (##cdr _e1751117600_)))
                                            (if (gx#stx-null? _tl1751317605_)
                                                (if (gx#stx-pair?
                                                     _tl1750717589_)
                                                    (let ((_e1751417608_
                                                           (gx#stx-e
                                                            _tl1750717589_)))
                                                      (let ((_hd1751517611_
                                                             (##car _e1751417608_))
                                                            (_tl1751617613_
                                                             (##cdr _e1751417608_)))
                                                        (if (gx#stx-pair?
                                                             _hd1751517611_)
                                                            (let ((_e1751717616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1751517611_)))
                      (let ((_hd1751817619_ (##car _e1751717616_))
                            (_tl1751917621_ (##cdr _e1751717616_)))
                        (if (gx#identifier? _hd1751817619_)
                            (if (gx#stx-eq? '%#quote _hd1751817619_)
                                (if (gx#stx-pair? _tl1751917621_)
                                    (let ((_e1752017624_
                                           (gx#stx-e _tl1751917621_)))
                                      (let ((_hd1752117627_
                                             (##car _e1752017624_))
                                            (_tl1752217629_
                                             (##cdr _e1752017624_)))
                                        (if (gx#stx-null? _tl1752217629_)
                                            (if (gx#stx-pair? _tl1751617613_)
                                                (let ((_e1752317632_
                                                       (gx#stx-e
                                                        _tl1751617613_)))
                                                  (let ((_hd1752417635_
                                                         (##car _e1752317632_))
                                                        (_tl1752517637_
                                                         (##cdr _e1752317632_)))
                                                    (if (gx#stx-pair?
                                                         _tl1752517637_)
                                                        (let ((_e1752617640_
                                                               (gx#stx-e
                                                                _tl1752517637_)))
                                                          (let ((_hd1752717643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1752617640_))
                        (_tl1752817645_ (##cdr _e1752617640_)))
                    (if (gx#stx-pair? _hd1752717643_)
                        (let ((_e1752917648_ (gx#stx-e _hd1752717643_)))
                          (let ((_hd1753017651_ (##car _e1752917648_))
                                (_tl1753117653_ (##cdr _e1752917648_)))
                            (if (gx#identifier? _hd1753017651_)
                                (if (gx#stx-eq? '%#quote _hd1753017651_)
                                    (if (gx#stx-pair? _tl1753117653_)
                                        (let ((_e1753217656_
                                               (gx#stx-e _tl1753117653_)))
                                          (let ((_hd1753317659_
                                                 (##car _e1753217656_))
                                                (_tl1753417661_
                                                 (##cdr _e1753217656_)))
                                            (if (gx#stx-null? _tl1753417661_)
                                                (if (gx#stx-pair?
                                                     _tl1752817645_)
                                                    (let ((_e1753517664_
                                                           (gx#stx-e
                                                            _tl1752817645_)))
                                                      (let ((_hd1753617667_
                                                             (##car _e1753517664_))
                                                            (_tl1753717669_
                                                             (##cdr _e1753517664_)))
                                                        (if (gx#stx-pair?
                                                             _hd1753617667_)
                                                            (let ((_e1753817672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1753617667_)))
                      (let ((_hd1753917675_ (##car _e1753817672_))
                            (_tl1754017677_ (##cdr _e1753817672_)))
                        (if (gx#identifier? _hd1753917675_)
                            (if (gx#stx-eq? '%#quote _hd1753917675_)
                                (if (gx#stx-pair? _tl1754017677_)
                                    (let ((_e1754117680_
                                           (gx#stx-e _tl1754017677_)))
                                      (let ((_hd1754217683_
                                             (##car _e1754117680_))
                                            (_tl1754317685_
                                             (##cdr _e1754117680_)))
                                        (if (gx#stx-null? _tl1754317685_)
                                            ((lambda (_L17688_
                                                      _L17689_
                                                      _L17690_
                                                      _L17691_
                                                      _L17692_
                                                      _L17693_)
                                               (let* ((_super-t17739_
                                                       (if (gx#stx-e _L17692_)
                                                           (gxc#generate-runtime-binding-id
                                                            _L17692_)
                                                           '#f))
                                                      (_super-type17741_
                                                       (if _super-t17739_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t17739_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type17741_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type17741_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17430_
                _L17692_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields17757_
                                                          (gx#stx-e _L17691_))
                                                         (_xfields17758_
                                                          (if _super-type17741_
                                                              (let ((_super-fields1774317746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type17741_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1774417748_
                             (##structure-ref
                              _super-type17741_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1774317746_
                            (if _super-xfields1774417748_
                                (let ((_super-fields17751_
                                       _super-fields1774317746_)
                                      (_super-xfields17752_
                                       _super-xfields1774417748_))
                                  (fx+ _super-fields17751_
                                       _super-xfields17752_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist17759_ (gx#stx-e _L17689_))
                 (_ctor17760_
                  (let ((_$e17754_ (gx#stx-e _L17688_)))
                    (if _$e17754_
                        (values _$e17754_)
                        (if _super-type17741_
                            (##structure-ref
                             _super-type17741_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t17739_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27348
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27348
                                                          (gx#stx-e _L17693_)
                                                          _super-t17739_
                                                          _fields17757_
                                                          _xfields17758_
                                                          _ctor17760_
                                                          _plist17759_)
                                                         __obj27348))))))
                                             _hd1754217683_
                                             _hd1753317659_
                                             _hd1752417635_
                                             _hd1752117627_
                                             _hd1751217603_
                                             _hd1750317579_)
                                            (_g1743417555_ _g1743617558_))))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))
                            (_g1743417555_ _g1743617558_))))
                    (_g1743417555_ _g1743617558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743417555_
                                                     _g1743617558_))
                                                (_g1743417555_
                                                 _g1743617558_))))
                                        (_g1743417555_ _g1743617558_))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))))
                        (_g1743417555_ _g1743617558_))))
                (_g1743417555_ _g1743617558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743417555_ _g1743617558_))
                                            (_g1743417555_ _g1743617558_))))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))
                            (_g1743417555_ _g1743617558_))))
                    (_g1743417555_ _g1743617558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743417555_
                                                     _g1743617558_))
                                                (_g1743417555_
                                                 _g1743617558_))))
                                        (_g1743417555_ _g1743617558_))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))))
                        (_g1743417555_ _g1743617558_))))
                (_g1743417555_ _g1743617558_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743417555_
                                                     _g1743617558_))))
                                            (_g1743417555_ _g1743617558_))
                                        (_g1743417555_ _g1743617558_))
                                    (_g1743417555_ _g1743617558_))))
                            (_g1743417555_ _g1743617558_))))
                    (_g1743417555_ _g1743617558_))))
             (_g1743217942_
              (lambda (_g1743617765_)
                (if (gx#stx-pair? _g1743617765_)
                    (let ((_e1744217767_ (gx#stx-e _g1743617765_)))
                      (let ((_hd1744317770_ (##car _e1744217767_))
                            (_tl1744417772_ (##cdr _e1744217767_)))
                        (if (gx#stx-pair? _hd1744317770_)
                            (let ((_e1744517775_ (gx#stx-e _hd1744317770_)))
                              (let ((_hd1744617778_ (##car _e1744517775_))
                                    (_tl1744717780_ (##cdr _e1744517775_)))
                                (if (gx#identifier? _hd1744617778_)
                                    (if (gx#stx-eq? '%#quote _hd1744617778_)
                                        (if (gx#stx-pair? _tl1744717780_)
                                            (let ((_e1744817783_
                                                   (gx#stx-e _tl1744717780_)))
                                              (let ((_hd1744917786_
                                                     (##car _e1744817783_))
                                                    (_tl1745017788_
                                                     (##cdr _e1744817783_)))
                                                (if (gx#stx-null?
                                                     _tl1745017788_)
                                                    (if (gx#stx-pair?
                                                         _tl1744417772_)
                                                        (let ((_e1745117791_
                                                               (gx#stx-e
                                                                _tl1744417772_)))
                                                          (let ((_hd1745217794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1745117791_))
                        (_tl1745317796_ (##cdr _e1745117791_)))
                    (if (gx#stx-pair? _hd1745217794_)
                        (let ((_e1745417799_ (gx#stx-e _hd1745217794_)))
                          (let ((_hd1745517802_ (##car _e1745417799_))
                                (_tl1745617804_ (##cdr _e1745417799_)))
                            (if (gx#identifier? _hd1745517802_)
                                (if (gx#stx-eq? '%#quote _hd1745517802_)
                                    (if (gx#stx-pair? _tl1745617804_)
                                        (let ((_e1745717807_
                                               (gx#stx-e _tl1745617804_)))
                                          (let ((_hd1745817810_
                                                 (##car _e1745717807_))
                                                (_tl1745917812_
                                                 (##cdr _e1745717807_)))
                                            (if (gx#stx-datum? _hd1745817810_)
                                                (if (equal? (gx#stx-e
                                                             _hd1745817810_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1745917812_)
                                                        (if (gx#stx-pair?
                                                             _tl1745317796_)
                                                            (let ((_e1746017815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1745317796_)))
                      (let ((_hd1746117818_ (##car _e1746017815_))
                            (_tl1746217820_ (##cdr _e1746017815_)))
                        (if (gx#stx-pair? _hd1746117818_)
                            (let ((_e1746317823_ (gx#stx-e _hd1746117818_)))
                              (let ((_hd1746417826_ (##car _e1746317823_))
                                    (_tl1746517828_ (##cdr _e1746317823_)))
                                (if (gx#identifier? _hd1746417826_)
                                    (if (gx#stx-eq? '%#quote _hd1746417826_)
                                        (if (gx#stx-pair? _tl1746517828_)
                                            (let ((_e1746617831_
                                                   (gx#stx-e _tl1746517828_)))
                                              (let ((_hd1746717834_
                                                     (##car _e1746617831_))
                                                    (_tl1746817836_
                                                     (##cdr _e1746617831_)))
                                                (if (gx#stx-null?
                                                     _tl1746817836_)
                                                    (if (gx#stx-pair?
                                                         _tl1746217820_)
                                                        (let ((_e1746917839_
                                                               (gx#stx-e
                                                                _tl1746217820_)))
                                                          (let ((_hd1747017842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1746917839_))
                        (_tl1747117844_ (##cdr _e1746917839_)))
                    (if (gx#stx-pair? _tl1747117844_)
                        (let ((_e1747217847_ (gx#stx-e _tl1747117844_)))
                          (let ((_hd1747317850_ (##car _e1747217847_))
                                (_tl1747417852_ (##cdr _e1747217847_)))
                            (if (gx#stx-pair? _hd1747317850_)
                                (let ((_e1747517855_
                                       (gx#stx-e _hd1747317850_)))
                                  (let ((_hd1747617858_ (##car _e1747517855_))
                                        (_tl1747717860_ (##cdr _e1747517855_)))
                                    (if (gx#identifier? _hd1747617858_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1747617858_)
                                            (if (gx#stx-pair? _tl1747717860_)
                                                (let ((_e1747817863_
                                                       (gx#stx-e
                                                        _tl1747717860_)))
                                                  (let ((_hd1747917866_
                                                         (##car _e1747817863_))
                                                        (_tl1748017868_
                                                         (##cdr _e1747817863_)))
                                                    (if (gx#stx-null?
                                                         _tl1748017868_)
                                                        (if (gx#stx-pair?
                                                             _tl1747417852_)
                                                            (let ((_e1748117871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1747417852_)))
                      (let ((_hd1748217874_ (##car _e1748117871_))
                            (_tl1748317876_ (##cdr _e1748117871_)))
                        (if (gx#stx-pair? _hd1748217874_)
                            (let ((_e1748417879_ (gx#stx-e _hd1748217874_)))
                              (let ((_hd1748517882_ (##car _e1748417879_))
                                    (_tl1748617884_ (##cdr _e1748417879_)))
                                (if (gx#identifier? _hd1748517882_)
                                    (if (gx#stx-eq? '%#quote _hd1748517882_)
                                        (if (gx#stx-pair? _tl1748617884_)
                                            (let ((_e1748717887_
                                                   (gx#stx-e _tl1748617884_)))
                                              (let ((_hd1748817890_
                                                     (##car _e1748717887_))
                                                    (_tl1748917892_
                                                     (##cdr _e1748717887_)))
                                                (if (gx#stx-null?
                                                     _tl1748917892_)
                                                    ((lambda (_L17895_
                                                              _L17896_
                                                              _L17897_
                                                              _L17898_
                                                              _L17899_)
                                                       (let ((__obj27349
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27349
                                                            (gx#stx-e _L17899_)
                                                            '#f
                                                            (gx#stx-e _L17898_)
                                                            '0
                                                            (gx#stx-e _L17895_)
                                                            (gx#stx-e
                                                             _L17896_))
                                                           __obj27349)))
                                                     _hd1748817890_
                                                     _hd1747917866_
                                                     _hd1747017842_
                                                     _hd1746717834_
                                                     _hd1744917786_)
                                                    (_g1743317762_
                                                     _g1743617765_))))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))))
                            (_g1743317762_ _g1743617765_))))
                    (_g1743317762_ _g1743617765_))
                (_g1743317762_ _g1743617765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743317762_ _g1743617765_))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))))
                                (_g1743317762_ _g1743617765_))))
                        (_g1743317762_ _g1743617765_))))
                (_g1743317762_ _g1743617765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743317762_
                                                     _g1743617765_))))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))))
                            (_g1743317762_ _g1743617765_))))
                    (_g1743317762_ _g1743617765_))
                (_g1743317762_ _g1743617765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743317762_
                                                     _g1743617765_))
                                                (_g1743317762_
                                                 _g1743617765_))))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))
                                (_g1743317762_ _g1743617765_))))
                        (_g1743317762_ _g1743617765_))))
                (_g1743317762_ _g1743617765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743317762_
                                                     _g1743617765_))))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))))
                            (_g1743317762_ _g1743617765_))))
                    (_g1743317762_ _g1743617765_)))))
        (_g1743217942_ _args17431_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17356_ _args17357_)
      (let* ((_g1736017376_
              (lambda (_g1736117373_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1736117373_)))
             (_g1735917383_ (lambda (_g1736117379_) ((lambda () '#f))))
             (_g1735817427_
              (lambda (_g1736117386_)
                (if (gx#stx-pair? _g1736117386_)
                    (let ((_e1736317388_ (gx#stx-e _g1736117386_)))
                      (let ((_hd1736417391_ (##car _e1736317388_))
                            (_tl1736517393_ (##cdr _e1736317388_)))
                        (if (gx#stx-pair? _hd1736417391_)
                            (let ((_e1736617396_ (gx#stx-e _hd1736417391_)))
                              (let ((_hd1736717399_ (##car _e1736617396_))
                                    (_tl1736817401_ (##cdr _e1736617396_)))
                                (if (gx#identifier? _hd1736717399_)
                                    (if (gx#stx-eq? '%#ref _hd1736717399_)
                                        (if (gx#stx-pair? _tl1736817401_)
                                            (let ((_e1736917404_
                                                   (gx#stx-e _tl1736817401_)))
                                              (let ((_hd1737017407_
                                                     (##car _e1736917404_))
                                                    (_tl1737117409_
                                                     (##cdr _e1736917404_)))
                                                (if (gx#stx-null?
                                                     _tl1737117409_)
                                                    (if (gx#stx-null?
                                                         _tl1736517393_)
                                                        ((lambda (_L17412_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L17412_)))
                                                         _hd1737017407_)
                                                        (_g1735917383_
                                                         _g1736117386_))
                                                    (_g1735917383_
                                                     _g1736117386_))))
                                            (_g1735917383_ _g1736117386_))
                                        (_g1735917383_ _g1736117386_))
                                    (_g1735917383_ _g1736117386_))))
                            (_g1735917383_ _g1736117386_))))
                    (_g1735917383_ _g1736117386_)))))
        (_g1735817427_ _args17357_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17227_ _args17228_ _unchecked?17229_)
        (let* ((_g1723217258_
                (lambda (_g1723317255_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1723317255_)))
               (_g1723117265_ (lambda (_g1723317261_) ((lambda () '#f))))
               (_g1723017341_
                (lambda (_g1723317268_)
                  (if (gx#stx-pair? _g1723317268_)
                      (let ((_e1723617270_ (gx#stx-e _g1723317268_)))
                        (let ((_hd1723717273_ (##car _e1723617270_))
                              (_tl1723817275_ (##cdr _e1723617270_)))
                          (if (gx#stx-pair? _hd1723717273_)
                              (let ((_e1723917278_ (gx#stx-e _hd1723717273_)))
                                (let ((_hd1724017281_ (##car _e1723917278_))
                                      (_tl1724117283_ (##cdr _e1723917278_)))
                                  (if (gx#identifier? _hd1724017281_)
                                      (if (gx#stx-eq? '%#ref _hd1724017281_)
                                          (if (gx#stx-pair? _tl1724117283_)
                                              (let ((_e1724217286_
                                                     (gx#stx-e
                                                      _tl1724117283_)))
                                                (let ((_hd1724317289_
                                                       (##car _e1724217286_))
                                                      (_tl1724417291_
                                                       (##cdr _e1724217286_)))
                                                  (if (gx#stx-null?
                                                       _tl1724417291_)
                                                      (if (gx#stx-pair?
                                                           _tl1723817275_)
                                                          (let ((_e1724517294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1723817275_)))
                    (let ((_hd1724617297_ (##car _e1724517294_))
                          (_tl1724717299_ (##cdr _e1724517294_)))
                      (if (gx#stx-pair? _hd1724617297_)
                          (let ((_e1724817302_ (gx#stx-e _hd1724617297_)))
                            (let ((_hd1724917305_ (##car _e1724817302_))
                                  (_tl1725017307_ (##cdr _e1724817302_)))
                              (if (gx#identifier? _hd1724917305_)
                                  (if (gx#stx-eq? '%#quote _hd1724917305_)
                                      (if (gx#stx-pair? _tl1725017307_)
                                          (let ((_e1725117310_
                                                 (gx#stx-e _tl1725017307_)))
                                            (let ((_hd1725217313_
                                                   (##car _e1725117310_))
                                                  (_tl1725317315_
                                                   (##cdr _e1725117310_)))
                                              (if (gx#stx-null? _tl1725317315_)
                                                  (if (gx#stx-null?
                                                       _tl1724717299_)
                                                      ((lambda (_L17318_
                                                                _L17319_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17319_)
                                                          (gx#stx-e _L17318_)
                                                          _unchecked?17229_))
                                                       _hd1725217313_
                                                       _hd1724317289_)
                                                      (_g1723117265_
                                                       _g1723317268_))
                                                  (_g1723117265_
                                                   _g1723317268_))))
                                          (_g1723117265_ _g1723317268_))
                                      (_g1723117265_ _g1723317268_))
                                  (_g1723117265_ _g1723317268_))))
                          (_g1723117265_ _g1723317268_))))
                  (_g1723117265_ _g1723317268_))
              (_g1723117265_ _g1723317268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1723117265_ _g1723317268_))
                                          (_g1723117265_ _g1723317268_))
                                      (_g1723117265_ _g1723317268_))))
                              (_g1723117265_ _g1723317268_))))
                      (_g1723117265_ _g1723317268_)))))
          (_g1723017341_ _args17228_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17347_ _args17348_)
          (let ((_unchecked?17350_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17347_
             _args17348_
             _unchecked?17350_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27423_
          (let ((_g27422_ (length _g27423_)))
            (cond ((fx= _g27422_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27423_))
                  ((fx= _g27422_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27423_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27423_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17097_ _args17098_ _unchecked?17099_)
        (let* ((_g1710217128_
                (lambda (_g1710317125_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1710317125_)))
               (_g1710117135_ (lambda (_g1710317131_) ((lambda () '#f))))
               (_g1710017211_
                (lambda (_g1710317138_)
                  (if (gx#stx-pair? _g1710317138_)
                      (let ((_e1710617140_ (gx#stx-e _g1710317138_)))
                        (let ((_hd1710717143_ (##car _e1710617140_))
                              (_tl1710817145_ (##cdr _e1710617140_)))
                          (if (gx#stx-pair? _hd1710717143_)
                              (let ((_e1710917148_ (gx#stx-e _hd1710717143_)))
                                (let ((_hd1711017151_ (##car _e1710917148_))
                                      (_tl1711117153_ (##cdr _e1710917148_)))
                                  (if (gx#identifier? _hd1711017151_)
                                      (if (gx#stx-eq? '%#ref _hd1711017151_)
                                          (if (gx#stx-pair? _tl1711117153_)
                                              (let ((_e1711217156_
                                                     (gx#stx-e
                                                      _tl1711117153_)))
                                                (let ((_hd1711317159_
                                                       (##car _e1711217156_))
                                                      (_tl1711417161_
                                                       (##cdr _e1711217156_)))
                                                  (if (gx#stx-null?
                                                       _tl1711417161_)
                                                      (if (gx#stx-pair?
                                                           _tl1710817145_)
                                                          (let ((_e1711517164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1710817145_)))
                    (let ((_hd1711617167_ (##car _e1711517164_))
                          (_tl1711717169_ (##cdr _e1711517164_)))
                      (if (gx#stx-pair? _hd1711617167_)
                          (let ((_e1711817172_ (gx#stx-e _hd1711617167_)))
                            (let ((_hd1711917175_ (##car _e1711817172_))
                                  (_tl1712017177_ (##cdr _e1711817172_)))
                              (if (gx#identifier? _hd1711917175_)
                                  (if (gx#stx-eq? '%#quote _hd1711917175_)
                                      (if (gx#stx-pair? _tl1712017177_)
                                          (let ((_e1712117180_
                                                 (gx#stx-e _tl1712017177_)))
                                            (let ((_hd1712217183_
                                                   (##car _e1712117180_))
                                                  (_tl1712317185_
                                                   (##cdr _e1712117180_)))
                                              (if (gx#stx-null? _tl1712317185_)
                                                  (if (gx#stx-null?
                                                       _tl1711717169_)
                                                      ((lambda (_L17188_
                                                                _L17189_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17189_)
                                                          (gx#stx-e _L17188_)
                                                          _unchecked?17099_))
                                                       _hd1712217183_
                                                       _hd1711317159_)
                                                      (_g1710117135_
                                                       _g1710317138_))
                                                  (_g1710117135_
                                                   _g1710317138_))))
                                          (_g1710117135_ _g1710317138_))
                                      (_g1710117135_ _g1710317138_))
                                  (_g1710117135_ _g1710317138_))))
                          (_g1710117135_ _g1710317138_))))
                  (_g1710117135_ _g1710317138_))
              (_g1710117135_ _g1710317138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1710117135_ _g1710317138_))
                                          (_g1710117135_ _g1710317138_))
                                      (_g1710117135_ _g1710317138_))))
                              (_g1710117135_ _g1710317138_))))
                      (_g1710117135_ _g1710317138_)))))
          (_g1710017211_ _args17098_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17217_ _args17218_)
          (let ((_unchecked?17220_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17217_
             _args17218_
             _unchecked?17220_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27425_
          (let ((_g27424_ (length _g27425_)))
            (cond ((fx= _g27424_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27425_))
                  ((fx= _g27424_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27425_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27425_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17093_ _args17094_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17093_
       _args17094_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17090_ _args17091_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17090_
       _args17091_
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
    (lambda (_stx17039_)
      (let* ((_g1704117054_
              (lambda (_g1704217051_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1704217051_)))
             (_g1704017087_
              (lambda (_g1704217057_)
                (if (gx#stx-pair? _g1704217057_)
                    (let ((_e1704417059_ (gx#stx-e _g1704217057_)))
                      (let ((_hd1704517062_ (##car _e1704417059_))
                            (_tl1704617064_ (##cdr _e1704417059_)))
                        (if (gx#stx-pair? _tl1704617064_)
                            (let ((_e1704717067_ (gx#stx-e _tl1704617064_)))
                              (let ((_hd1704817070_ (##car _e1704717067_))
                                    (_tl1704917072_ (##cdr _e1704717067_)))
                                (if (gx#stx-null? _tl1704917072_)
                                    ((lambda (_L17075_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L17075_)))
                                     _hd1704817070_)
                                    (_g1704117054_ _g1704217057_))))
                            (_g1704117054_ _g1704217057_))))
                    (_g1704117054_ _g1704217057_)))))
        (_g1704017087_ _stx17039_))))
  (define gxc#optimize-call%
    (lambda (_stx16945_)
      (let* ((_g1694816968_
              (lambda (_g1694916965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1694916965_)))
             (_g1694716975_
              (lambda (_g1694916971_)
                ((lambda () (gxc#xform-call% _stx16945_)))))
             (_g1694617036_
              (lambda (_g1694916978_)
                (if (gx#stx-pair? _g1694916978_)
                    (let ((_e1695216980_ (gx#stx-e _g1694916978_)))
                      (let ((_hd1695316983_ (##car _e1695216980_))
                            (_tl1695416985_ (##cdr _e1695216980_)))
                        (if (gx#stx-pair? _tl1695416985_)
                            (let ((_e1695516988_ (gx#stx-e _tl1695416985_)))
                              (let ((_hd1695616991_ (##car _e1695516988_))
                                    (_tl1695716993_ (##cdr _e1695516988_)))
                                (if (gx#stx-pair? _hd1695616991_)
                                    (let ((_e1695816996_
                                           (gx#stx-e _hd1695616991_)))
                                      (let ((_hd1695916999_
                                             (##car _e1695816996_))
                                            (_tl1696017001_
                                             (##cdr _e1695816996_)))
                                        (if (gx#identifier? _hd1695916999_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1695916999_)
                                                (if (gx#stx-pair?
                                                     _tl1696017001_)
                                                    (let ((_e1696117004_
                                                           (gx#stx-e
                                                            _tl1696017001_)))
                                                      (let ((_hd1696217007_
                                                             (##car _e1696117004_))
                                                            (_tl1696317009_
                                                             (##cdr _e1696117004_)))
                                                        (if (gx#stx-null?
                                                             _tl1696317009_)
                                                            ((lambda (_L17012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17013_)
                       (let* ((_rator-id17031_
                               (gxc#generate-runtime-binding-id _L17013_))
                              (_rator-type17033_
                               (gxc#optimizer-resolve-type _rator-id17031_)))
                         (if (##structure-instance-of?
                              _rator-type17033_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17031_
                                '" => "
                                _rator-type17033_
                                '" "
                                (##structure-ref
                                 _rator-type17033_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17033_
                                'optimize-call
                                _stx16945_
                                _L17012_))
                             (if (not _rator-type17033_)
                                 (gxc#xform-call% _stx16945_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx16945_
                                  _rator-type17033_)))))
                     _tl1695716993_
                     _hd1696217007_)
                    (_g1694716975_ _g1694916978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1694716975_
                                                     _g1694916978_))
                                                (_g1694716975_ _g1694916978_))
                                            (_g1694716975_ _g1694916978_))))
                                    (_g1694716975_ _g1694916978_))))
                            (_g1694716975_ _g1694916978_))))
                    (_g1694716975_ _g1694916978_)))))
        (_g1694617036_ _stx16945_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self16799_ _stx16800_ _args16801_)
      (let* ((_self1680216808_ _self16799_)
             (_E1680416812_
              (lambda () (error '"No clause matching" _self1680216808_)))
             (_K1680516937_
              (lambda (_struct-t16815_)
                (let* ((_struct-type16817_
                        (gxc#optimizer-resolve-type _struct-t16815_))
                       (_struct-type1681816832_ _struct-type16817_)
                       (_E1682216836_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1681816832_)))
                       (_else1682116840_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16800_
                           _struct-t16815_
                           _struct-type16817_)))
                       (_try-match1682016848_
                        (lambda ()
                          (let ((_K1682316845_
                                 (lambda () (gxc#xform-call% _stx16800_))))
                            (if (##eq? _struct-type1681816832_ '#f)
                                (_K1682316845_)
                                (_else1682116840_)))))
                       (_K1682416912_
                        (lambda (_plist16851_ _struct-type-id16852_)
                          (let* ((_g1685516865_
                                  (lambda (_g1685616862_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1685616862_)))
                                 (_g1685416872_
                                  (lambda (_g1685616868_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx16800_)))))
                                 (_g1685316909_
                                  (lambda (_g1685616875_)
                                    (if (gx#stx-pair? _g1685616875_)
                                        (let ((_e1685816877_
                                               (gx#stx-e _g1685616875_)))
                                          (let ((_hd1685916880_
                                                 (##car _e1685816877_))
                                                (_tl1686016882_
                                                 (##cdr _e1685816877_)))
                                            (if (gx#stx-null? _tl1686016882_)
                                                ((lambda (_L16885_)
                                                   (let ((_expr16906_
                                                          (gxc#compile-e
                                                           _L16885_))
                                                         (_op16907_
                                                          (if (if _plist16851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist16851_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op16907_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id16852_ '()))
                          (cons _expr16906_ '())))
              _stx16800_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1685916880_)
                                                (_g1685416872_
                                                 _g1685616875_))))
                                        (_g1685416872_ _g1685616875_)))))
                            (_g1685316909_ _args16801_)))))
                  (if (##structure-instance-of?
                       _struct-type1681816832_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1682516915_
                              (##vector-ref _struct-type1681816832_ '1))
                             (_struct-type-id16918_ _e1682516915_)
                             (_e1682616920_
                              (##vector-ref _struct-type1681816832_ '2))
                             (_e1682716923_
                              (##vector-ref _struct-type1681816832_ '3))
                             (_e1682816926_
                              (##vector-ref _struct-type1681816832_ '4))
                             (_e1682916929_
                              (##vector-ref _struct-type1681816832_ '5))
                             (_e1683016932_
                              (##vector-ref _struct-type1681816832_ '6))
                             (_plist16935_ _e1683016932_))
                        (_K1682416912_ _plist16935_ _struct-type-id16918_))
                      (_try-match1682016848_))))))
        (if (##structure-instance-of?
             _self1680216808_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1680616940_ (##vector-ref _self1680216808_ '1))
                   (_struct-t16943_ _e1680616940_))
              (_K1680516937_ _struct-t16943_))
            (_E1680416812_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self16573_ _stx16574_ _args16575_)
      (let* ((_self1657616582_ _self16573_)
             (_E1657816586_
              (lambda () (error '"No clause matching" _self1657616582_)))
             (_K1657916669_
              (lambda (_struct-t16589_)
                (let* ((_struct-type16591_
                        (gxc#optimizer-resolve-type _struct-t16589_))
                       (_struct-type1659216605_ _struct-type16591_)
                       (_E1659616609_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1659216605_)))
                       (_else1659516613_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx16574_
                           _struct-t16589_
                           _struct-type16591_)))
                       (_try-match1659416621_
                        (lambda ()
                          (let ((_K1659716618_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t16589_)
                                     (gxc#xform-call% _stx16574_)))))
                            (if (##eq? _struct-type1659216605_ '#f)
                                (_K1659716618_)
                                (_else1659516613_)))))
                       (_K1659816643_
                        (lambda (_ctor16624_
                                 _xfields16625_
                                 _fields16626_
                                 _type-id16627_)
                          (let* ((_args16629_ (map gxc#compile-e _args16575_))
                                 (_$e16631_
                                  (if _ctor16624_
                                      (if _xfields16625_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type16591_
                                           _ctor16624_)
                                          '#f)
                                      '#f)))
                            (if _$e16631_
                                ((lambda (_kons16634_)
                                   (let ((_$obj16636_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj16636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t16589_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields16626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields16625_)
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
                                    (cons (cons '%#ref (cons _kons16634_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj16636_ '()))
                                                _args16629_)))
                              _stx16574_))
                            (cons (cons '%#ref (cons _$obj16636_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx16574_)))
                                 _$e16631_)
                                (if (let ((_$e16638_ _ctor16624_))
                                      (if _$e16638_
                                          _$e16638_
                                          (not _xfields16625_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t16589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args16629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx16574_)
                                    (let ((_arity16641_
                                           (fx+ _fields16626_ _xfields16625_)))
                                      (if (fx= _arity16641_
                                               (length _args16629_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t16589_ '())) _args16629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx16574_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx16574_
                                           _struct-t16589_
                                           _arity16641_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1659216605_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1659916646_
                              (##vector-ref _struct-type1659216605_ '1))
                             (_type-id16649_ _e1659916646_)
                             (_e1660016651_
                              (##vector-ref _struct-type1659216605_ '2))
                             (_e1660116654_
                              (##vector-ref _struct-type1659216605_ '3))
                             (_fields16657_ _e1660116654_)
                             (_e1660216659_
                              (##vector-ref _struct-type1659216605_ '4))
                             (_xfields16662_ _e1660216659_)
                             (_e1660316664_
                              (##vector-ref _struct-type1659216605_ '5))
                             (_ctor16667_ _e1660316664_))
                        (_K1659816643_
                         _ctor16667_
                         _xfields16662_
                         _fields16657_
                         _type-id16649_))
                      (_try-match1659416621_))))))
        (if (##structure-instance-of?
             _self1657616582_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1658016672_ (##vector-ref _self1657616582_ '1))
                   (_struct-t16675_ _e1658016672_))
              (_K1657916669_ _struct-t16675_))
            (_E1657816586_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16284_ _stx16285_ _args16286_)
      (let* ((_self1628716295_ _self16284_)
             (_E1628916299_
              (lambda () (error '"No clause matching" _self1628716295_)))
             (_K1629016433_
              (lambda (_unchecked?16302_ _off16303_ _struct-t16304_)
                (let* ((_struct-type16306_
                        (gxc#optimizer-resolve-type _struct-t16304_))
                       (_struct-type1630716321_ _struct-type16306_)
                       (_E1631116325_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1630716321_)))
                       (_else1631016329_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16285_
                           _struct-t16304_
                           _struct-type16306_)))
                       (_try-match1630916337_
                        (lambda ()
                          (let ((_K1631216334_
                                 (lambda () (gxc#xform-call% _stx16285_))))
                            (if (##eq? _struct-type1630716321_ '#f)
                                (_K1631216334_)
                                (_else1631016329_)))))
                       (_K1631316404_
                        (lambda (_plist16340_
                                 _xfields16341_
                                 _fields16342_
                                 _struct-type-id16343_)
                          (if _xfields16341_
                              (let* ((_g1634616356_
                                      (lambda (_g1634716353_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1634716353_)))
                                     (_g1634516363_
                                      (lambda (_g1634716359_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16285_)))))
                                     (_g1634416401_
                                      (lambda (_g1634716366_)
                                        (if (gx#stx-pair? _g1634716366_)
                                            (let ((_e1634916368_
                                                   (gx#stx-e _g1634716366_)))
                                              (let ((_hd1635016371_
                                                     (##car _e1634916368_))
                                                    (_tl1635116373_
                                                     (##cdr _e1634916368_)))
                                                (if (gx#stx-null?
                                                     _tl1635116373_)
                                                    ((lambda (_L16376_)
                                                       (let ((_expr16397_
                                                              (gxc#compile-e
                                                               _L16376_))
                                                             (_off16398_
                                                              (fx+ _off16303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16341_
                           '1))
                     (_op16399_
                      (if _unchecked?16302_
                          '%#struct-unchecked-ref
                          (if (if _plist16340_
                                  (assgetq 'final: _plist16340_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16399_
                        (cons (cons '%#ref (cons _struct-t16304_ '()))
                              (cons (cons '%#quote (cons _off16398_ '()))
                                    (cons _expr16397_ '()))))
                  _stx16285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1635016371_)
                                                    (_g1634516363_
                                                     _g1634716366_))))
                                            (_g1634516363_ _g1634716366_)))))
                                (_g1634416401_ _args16286_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16343_)
                                (gxc#xform-call% _stx16285_))))))
                  (if (##structure-instance-of?
                       _struct-type1630716321_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1631416407_
                              (##vector-ref _struct-type1630716321_ '1))
                             (_struct-type-id16410_ _e1631416407_)
                             (_e1631516412_
                              (##vector-ref _struct-type1630716321_ '2))
                             (_e1631616415_
                              (##vector-ref _struct-type1630716321_ '3))
                             (_fields16418_ _e1631616415_)
                             (_e1631716420_
                              (##vector-ref _struct-type1630716321_ '4))
                             (_xfields16423_ _e1631716420_)
                             (_e1631816425_
                              (##vector-ref _struct-type1630716321_ '5))
                             (_e1631916428_
                              (##vector-ref _struct-type1630716321_ '6))
                             (_plist16431_ _e1631916428_))
                        (_K1631316404_
                         _plist16431_
                         _xfields16423_
                         _fields16418_
                         _struct-type-id16410_))
                      (_try-match1630916337_))))))
        (if (##structure-instance-of?
             _self1628716295_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1629116436_ (##vector-ref _self1628716295_ '1))
                   (_struct-t16439_ _e1629116436_)
                   (_e1629216441_ (##vector-ref _self1628716295_ '2))
                   (_off16444_ _e1629216441_)
                   (_e1629316446_ (##vector-ref _self1628716295_ '3))
                   (_unchecked?16449_ _e1629316446_))
              (_K1629016433_ _unchecked?16449_ _off16444_ _struct-t16439_))
            (_E1628916299_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self15978_ _stx15979_ _args15980_)
      (let* ((_self1598115989_ _self15978_)
             (_E1598315993_
              (lambda () (error '"No clause matching" _self1598115989_)))
             (_K1598416144_
              (lambda (_unchecked?15996_ _off15997_ _struct-t15998_)
                (let* ((_struct-type16000_
                        (gxc#optimizer-resolve-type _struct-t15998_))
                       (_struct-type1600116015_ _struct-type16000_)
                       (_E1600516019_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1600116015_)))
                       (_else1600416023_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15979_
                           _struct-t15998_
                           _struct-type16000_)))
                       (_try-match1600316031_
                        (lambda ()
                          (let ((_K1600616028_
                                 (lambda () (gxc#xform-call% _stx15979_))))
                            (if (##eq? _struct-type1600116015_ '#f)
                                (_K1600616028_)
                                (_else1600416023_)))))
                       (_K1600716115_
                        (lambda (_plist16034_
                                 _xfields16035_
                                 _fields16036_
                                 _struct-type-id16037_)
                          (if _xfields16035_
                              (let* ((_g1604016054_
                                      (lambda (_g1604116051_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1604116051_)))
                                     (_g1603916061_
                                      (lambda (_g1604116057_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx15979_)))))
                                     (_g1603816112_
                                      (lambda (_g1604116064_)
                                        (if (gx#stx-pair? _g1604116064_)
                                            (let ((_e1604416066_
                                                   (gx#stx-e _g1604116064_)))
                                              (let ((_hd1604516069_
                                                     (##car _e1604416066_))
                                                    (_tl1604616071_
                                                     (##cdr _e1604416066_)))
                                                (if (gx#stx-pair?
                                                     _tl1604616071_)
                                                    (let ((_e1604716074_
                                                           (gx#stx-e
                                                            _tl1604616071_)))
                                                      (let ((_hd1604816077_
                                                             (##car _e1604716074_))
                                                            (_tl1604916079_
                                                             (##cdr _e1604716074_)))
                                                        (if (gx#stx-null?
                                                             _tl1604916079_)
                                                            ((lambda (_L16082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16083_)
                       (let ((_expr16107_ (gxc#compile-e _L16083_))
                             (_val16108_ (gxc#compile-e _L16082_))
                             (_off16109_ (fx+ _off15997_ _xfields16035_ '1))
                             (_op16110_
                              (if _unchecked?15996_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16034_
                                          (assgetq 'final: _plist16034_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16110_
                                (cons (cons '%#ref (cons _struct-t15998_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16109_ '()))
                                            (cons _expr16107_
                                                  (cons _val16108_ '())))))
                          _stx15979_)))
                     _hd1604816077_
                     _hd1604516069_)
                    (_g1603916061_ _g1604116064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1603916061_
                                                     _g1604116064_))))
                                            (_g1603916061_ _g1604116064_)))))
                                (_g1603816112_ _args15980_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16037_)
                                (gxc#xform-call% _stx15979_))))))
                  (if (##structure-instance-of?
                       _struct-type1600116015_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1600816118_
                              (##vector-ref _struct-type1600116015_ '1))
                             (_struct-type-id16121_ _e1600816118_)
                             (_e1600916123_
                              (##vector-ref _struct-type1600116015_ '2))
                             (_e1601016126_
                              (##vector-ref _struct-type1600116015_ '3))
                             (_fields16129_ _e1601016126_)
                             (_e1601116131_
                              (##vector-ref _struct-type1600116015_ '4))
                             (_xfields16134_ _e1601116131_)
                             (_e1601216136_
                              (##vector-ref _struct-type1600116015_ '5))
                             (_e1601316139_
                              (##vector-ref _struct-type1600116015_ '6))
                             (_plist16142_ _e1601316139_))
                        (_K1600716115_
                         _plist16142_
                         _xfields16134_
                         _fields16129_
                         _struct-type-id16121_))
                      (_try-match1600316031_))))))
        (if (##structure-instance-of?
             _self1598115989_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1598516147_ (##vector-ref _self1598115989_ '1))
                   (_struct-t16150_ _e1598516147_)
                   (_e1598616152_ (##vector-ref _self1598115989_ '2))
                   (_off16155_ _e1598616152_)
                   (_e1598716157_ (##vector-ref _self1598115989_ '3))
                   (_unchecked?16160_ _e1598716157_))
              (_K1598416144_ _unchecked?16160_ _off16155_ _struct-t16150_))
            (_E1598315993_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self15812_ _stx15813_ _args15814_)
      (let* ((_self1581515824_ _self15812_)
             (_E1581715828_
              (lambda () (error '"No clause matching" _self1581515824_)))
             (_K1581815835_
              (lambda (_inline15831_ _dispatch15832_ _arity15833_)
                (begin
                  (if (gxc#!lambda-arity-match? _self15812_ _args15814_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx15813_
                       _arity15833_))
                  (if _inline15831_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline15831_ _stx15813_)
                          _stx15813_)))
                      (if _dispatch15832_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch15832_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch15832_ '()))
                                          _args15814_))
                              _stx15813_)))
                          (gxc#xform-call% _stx15813_)))))))
        (if (##structure-instance-of?
             _self1581515824_
             (##type-id gxc#!lambda::t))
            (let* ((_e1581915838_ (##vector-ref _self1581515824_ '1))
                   (_e1582015841_ (##vector-ref _self1581515824_ '2))
                   (_arity15844_ _e1582015841_)
                   (_e1582115846_ (##vector-ref _self1581515824_ '3))
                   (_dispatch15849_ _e1582115846_)
                   (_e1582215851_ (##vector-ref _self1581515824_ '4))
                   (_inline15854_ _e1582215851_))
              (_K1581815835_ _inline15854_ _dispatch15849_ _arity15844_))
            (_E1581715828_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self15651_ _stx15652_ _args15653_)
      (let* ((_self1565415661_ _self15651_)
             (_E1565615665_
              (lambda () (error '"No clause matching" _self1565415661_)))
             (_K1565715679_
              (lambda (_clauses15668_)
                (let ((_$e15674_
                       (find (lambda (_g1566915671_)
                               (gxc#!lambda-arity-match?
                                _g1566915671_
                                _args15653_))
                             _clauses15668_)))
                  (if _$e15674_
                      ((lambda (_clause15677_)
                         (call-method
                          _clause15677_
                          'optimize-call
                          _stx15652_
                          _args15653_))
                       _$e15674_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx15652_
                       (map gxc#!lambda-arity _clauses15668_)))))))
        (if (##structure-instance-of?
             _self1565415661_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1565815682_ (##vector-ref _self1565415661_ '1))
                   (_e1565915685_ (##vector-ref _self1565415661_ '2))
                   (_clauses15688_ _e1565915685_))
              (_K1565715679_ _clauses15688_))
            (_E1565615665_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15465_ _args15466_)
      (let* ((_self1546715474_ _self15465_)
             (_E1546915478_
              (lambda () (error '"No clause matching" _self1546715474_)))
             (_K1547015518_
              (lambda (_arity15481_)
                (let* ((_arity1548215491_ _arity15481_)
                       (_E1548515495_
                        (lambda ()
                          (error '"No clause matching" _arity1548215491_)))
                       (_try-match1548415511_
                        (lambda ()
                          (let ((_K1548615501_
                                 (lambda (_arity15499_)
                                   (fx>= (length _args15466_) _arity15499_))))
                            (if (##pair? _arity1548215491_)
                                (let ((_hd1548715504_
                                       (##car _arity1548215491_))
                                      (_tl1548815506_
                                       (##cdr _arity1548215491_)))
                                  (let ((_arity15509_ _hd1548715504_))
                                    (if (##null? _tl1548815506_)
                                        (_K1548615501_ _arity15509_)
                                        (_E1548515495_))))
                                (_E1548515495_)))))
                       (_K1548915515_
                        (lambda () (fx= (length _args15466_) _arity15481_))))
                  (if (fixnum? _arity1548215491_)
                      (_K1548915515_)
                      (_try-match1548415511_))))))
        (if (##structure-instance-of?
             _self1546715474_
             (##type-id gxc#!lambda::t))
            (let* ((_e1547115521_ (##vector-ref _self1546715474_ '1))
                   (_e1547215524_ (##vector-ref _self1546715474_ '2))
                   (_arity15527_ _e1547215524_))
              (_K1547015518_ _arity15527_))
            (_E1546915478_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15350_ _stx15351_ _args15352_)
      (let* ((_self1535315361_ _self15350_)
             (_E1535515365_
              (lambda () (error '"No clause matching" _self1535315361_)))
             (_K1535615449_
              (lambda (_dispatch15368_ _table15369_)
                (let* ((_g1537015379_
                        (gxc#optimizer-lookup-type _dispatch15368_))
                       (_E1537315383_
                        (lambda ()
                          (error '"No clause matching" _g1537015379_)))
                       (_else1537215387_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15368_)
                            (gxc#xform-call% _stx15351_))))
                       (_K1537415433_
                        (lambda (_main15390_ _keys15391_)
                          (let ((_g27426_
                                 (gxc#!kw-lambda-split-args _args15352_)))
                            (begin
                              (let ((_g27427_ (values-count _g27426_)))
                                (if (not (fx= _g27427_ 2))
                                    (error "Context expects 2 values"
                                           _g27427_)))
                              (let ((_pargs15393_ (values-ref _g27426_ 0))
                                    (_kwargs15394_ (values-ref _g27426_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15390_)
                                  (if _table15369_
                                      (let ((_xargs15401_
                                             (map (lambda (_key15396_)
                                                    (let ((_$e15398_
                                                           (assgetq _key15396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15394_)))
              (if _$e15398_ (values _$e15398_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15391_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15403_)
                                             (if (memq (car _kw15403_)
                                                       _keys15391_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal kw-lambda application; unexpected keyword"
                                                  _stx15351_
                                                  _keys15391_
                                                  _kw15403_)))
                                           _kwargs15394_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15393_ _xargs15401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15351_))))
                                      (let* ((_kwt15405_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15408_
                                              (map (lambda (_g27428_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15394_))
                                             (_kwbind15413_
                                              (map (lambda (_kw15410_
                                                            _kwvar15411_)
                                                     (cons (cons _kwvar15411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15410_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15394_
                                                   _kwvars15408_))
                                             (_kwset15418_
                                              (map (lambda (_kw15415_
                                                            _kwvar15416_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15405_ '()))
                               (cons (cons '%#quote (cons (car _kw15415_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15416_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15394_
                                                   _kwvars15408_))
                                             (_xkwargs15423_
                                              (map (lambda (_kw15420_
                                                            _kwvar15421_)
                                                     (cons (car _kw15420_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15421_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15394_
                                                   _kwvars15408_))
                                             (_xargs15430_
                                              (map (lambda (_key15425_)
                                                     (let ((_$e15427_
                                                            (assgetq _key15425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15423_)))
               (if _$e15427_ (values _$e15427_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15391_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15413_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15405_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15394_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15351_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15390_ '()))
                               (cons (cons '%#ref (cons _kwt15405_ '()))
                                     (foldr1 cons _pargs15393_ _xargs15430_))))
                   _stx15351_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15418_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15351_)))))))))))
                  (if (##structure-instance-of?
                       _g1537015379_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1537515436_ (##vector-ref _g1537015379_ '1))
                             (_e1537615439_ (##vector-ref _g1537015379_ '2))
                             (_keys15442_ _e1537615439_)
                             (_e1537715444_ (##vector-ref _g1537015379_ '3))
                             (_main15447_ _e1537715444_))
                        (_K1537415433_ _main15447_ _keys15442_))
                      (_else1537215387_))))))
        (if (##structure-instance-of?
             _self1535315361_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1535715452_ (##vector-ref _self1535315361_ '1))
                   (_e1535815455_ (##vector-ref _self1535315361_ '2))
                   (_table15458_ _e1535815455_)
                   (_e1535915460_ (##vector-ref _self1535315361_ '3))
                   (_dispatch15463_ _e1535915460_))
              (_K1535615449_ _dispatch15463_ _table15458_))
            (_E1535515365_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_args14976_)
      (let _lp14978_ ((_rest14980_ _args14976_)
                      (_pargs14981_ '())
                      (_kwargs14982_ '()))
        (let* ((_g1498815038_
                (lambda (_g1498915035_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1498915035_)))
               (_g1498715045_
                (lambda (_g1498915041_)
                  (if (gx#stx-null? _g1498915041_)
                      ((lambda ()
                         (values (reverse _pargs14981_)
                                 (reverse _kwargs14982_))))
                      (_g1498815038_ _g1498915041_))))
               (_g1498615073_
                (lambda (_g1498915048_)
                  (if (gx#stx-pair? _g1498915048_)
                      (let ((_e1503115050_ (gx#stx-e _g1498915048_)))
                        (let ((_hd1503215053_ (##car _e1503115050_))
                              (_tl1503315055_ (##cdr _e1503115050_)))
                          ((lambda (_L15058_ _L15059_)
                             (_lp14978_
                              _L15058_
                              (cons _L15059_ _pargs14981_)
                              _kwargs14982_))
                           _tl1503315055_
                           _hd1503215053_)))
                      (_g1498715045_ _g1498915048_))))
               (_g1498515129_
                (lambda (_g1498915076_)
                  (if (gx#stx-pair? _g1498915076_)
                      (let ((_e1501715078_ (gx#stx-e _g1498915076_)))
                        (let ((_hd1501815081_ (##car _e1501715078_))
                              (_tl1501915083_ (##cdr _e1501715078_)))
                          (if (gx#stx-pair? _hd1501815081_)
                              (let ((_e1502015086_ (gx#stx-e _hd1501815081_)))
                                (let ((_hd1502115089_ (##car _e1502015086_))
                                      (_tl1502215091_ (##cdr _e1502015086_)))
                                  (if (gx#identifier? _hd1502115089_)
                                      (if (gx#stx-eq? '%#quote _hd1502115089_)
                                          (if (gx#stx-pair? _tl1502215091_)
                                              (let ((_e1502315094_
                                                     (gx#stx-e
                                                      _tl1502215091_)))
                                                (let ((_hd1502415097_
                                                       (##car _e1502315094_))
                                                      (_tl1502515099_
                                                       (##cdr _e1502315094_)))
                                                  (if (gx#stx-null?
                                                       _tl1502515099_)
                                                      (if (gx#stx-pair?
                                                           _tl1501915083_)
                                                          (let ((_e1502615102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1501915083_)))
                    (let ((_hd1502715105_ (##car _e1502615102_))
                          (_tl1502815107_ (##cdr _e1502615102_)))
                      ((lambda (_L15110_ _L15111_ _L15112_)
                         (if (gx#stx-keyword? _L15112_)
                             (_lp14978_
                              _L15110_
                              _pargs14981_
                              (cons (cons (gx#stx-e _L15112_) _L15111_)
                                    _kwargs14982_))
                             (_g1498615073_ _g1498915076_)))
                       _tl1502815107_
                       _hd1502715105_
                       _hd1502415097_)))
                  (_g1498615073_ _g1498915076_))
              (_g1498615073_ _g1498915076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498615073_ _g1498915076_))
                                          (_g1498615073_ _g1498915076_))
                                      (_g1498615073_ _g1498915076_))))
                              (_g1498615073_ _g1498915076_))))
                      (_g1498615073_ _g1498915076_))))
               (_g1498415171_
                (lambda (_g1498915132_)
                  (if (gx#stx-pair? _g1498915132_)
                      (let ((_e1500515134_ (gx#stx-e _g1498915132_)))
                        (let ((_hd1500615137_ (##car _e1500515134_))
                              (_tl1500715139_ (##cdr _e1500515134_)))
                          (if (gx#stx-pair? _hd1500615137_)
                              (let ((_e1500815142_ (gx#stx-e _hd1500615137_)))
                                (let ((_hd1500915145_ (##car _e1500815142_))
                                      (_tl1501015147_ (##cdr _e1500815142_)))
                                  (if (gx#identifier? _hd1500915145_)
                                      (if (gx#stx-eq? '%#quote _hd1500915145_)
                                          (if (gx#stx-pair? _tl1501015147_)
                                              (let ((_e1501115150_
                                                     (gx#stx-e
                                                      _tl1501015147_)))
                                                (let ((_hd1501215153_
                                                       (##car _e1501115150_))
                                                      (_tl1501315155_
                                                       (##cdr _e1501115150_)))
                                                  (if (gx#stx-datum?
                                                       _hd1501215153_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1501215153_)
                          '#!rest)
                  (if (gx#stx-null? _tl1501315155_)
                      ((lambda (_L15158_)
                         (values (foldl1 cons _L15158_ _pargs14981_)
                                 (reverse _kwargs14982_)))
                       _tl1500715139_)
                      (_g1498515129_ _g1498915132_))
                  (_g1498515129_ _g1498915132_))
              (_g1498515129_ _g1498915132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498515129_ _g1498915132_))
                                          (_g1498515129_ _g1498915132_))
                                      (_g1498515129_ _g1498915132_))))
                              (_g1498515129_ _g1498915132_))))
                      (_g1498515129_ _g1498915132_))))
               (_g1498315225_
                (lambda (_g1498915174_)
                  (if (gx#stx-pair? _g1498915174_)
                      (let ((_e1499215176_ (gx#stx-e _g1498915174_)))
                        (let ((_hd1499315179_ (##car _e1499215176_))
                              (_tl1499415181_ (##cdr _e1499215176_)))
                          (if (gx#stx-pair? _hd1499315179_)
                              (let ((_e1499515184_ (gx#stx-e _hd1499315179_)))
                                (let ((_hd1499615187_ (##car _e1499515184_))
                                      (_tl1499715189_ (##cdr _e1499515184_)))
                                  (if (gx#identifier? _hd1499615187_)
                                      (if (gx#stx-eq? '%#quote _hd1499615187_)
                                          (if (gx#stx-pair? _tl1499715189_)
                                              (let ((_e1499815192_
                                                     (gx#stx-e
                                                      _tl1499715189_)))
                                                (let ((_hd1499915195_
                                                       (##car _e1499815192_))
                                                      (_tl1500015197_
                                                       (##cdr _e1499815192_)))
                                                  (if (gx#stx-datum?
                                                       _hd1499915195_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1499915195_)
                          '#!key)
                  (if (gx#stx-null? _tl1500015197_)
                      (if (gx#stx-pair? _tl1499415181_)
                          (let ((_e1500115200_ (gx#stx-e _tl1499415181_)))
                            (let ((_hd1500215203_ (##car _e1500115200_))
                                  (_tl1500315205_ (##cdr _e1500115200_)))
                              ((lambda (_L15208_ _L15209_)
                                 (_lp14978_
                                  _L15208_
                                  (cons _L15209_ _pargs14981_)
                                  _kwargs14982_))
                               _tl1500315205_
                               _hd1500215203_)))
                          (_g1498415171_ _g1498915174_))
                      (_g1498415171_ _g1498915174_))
                  (_g1498415171_ _g1498915174_))
              (_g1498415171_ _g1498915174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498415171_ _g1498915174_))
                                          (_g1498415171_ _g1498915174_))
                                      (_g1498415171_ _g1498915174_))))
                              (_g1498415171_ _g1498915174_))))
                      (_g1498415171_ _g1498915174_)))))
          (_g1498315225_ _rest14980_)))))
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
                                          (let ((_g27429_
                                                 (gx#syntax-split-splice
                                                  _hd1462514659_
                                                  '0)))
                                            (begin
                                              (let ((_g27430_
                                                     (values-count _g27429_)))
                                                (if (not (fx= _g27430_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27430_)))
                                              (let ((_target1462714664_
                                                     (values-ref _g27429_ 0))
                                                    (_tl1462914666_
                                                     (values-ref _g27429_ 1)))
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
