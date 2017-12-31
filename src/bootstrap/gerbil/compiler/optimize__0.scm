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
     ':init!))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args21258_
      (apply make-struct-instance gxc#optimizer-info::t _$args21258_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self21256_)
      (if (##fx< '2 (##vector-length _self21256_))
          (begin
            (##vector-set! _self21256_ '1 (make-hash-table-eq))
            (##vector-set! _self21256_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self21256_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj21270 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj21270) __obj21270))))))
  (define gxc#optimize!
    (lambda (_ctx21250_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx21250_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx21250_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code21253_
                  (gxc#optimize-source
                   (##structure-ref _ctx21250_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx21250_
              _code21253_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx21195_)
      (letrec* ((_deps21197_
                 (let* ((_imports21241_
                         (##structure-ref
                          _ctx21195_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e21243_
                         (gx#core-context-prelude__opt-lambda11975
                          _ctx21195_)))
                   (if _$e21243_
                       ((lambda (_g2124521247_)
                          (cons _g2124521247_ _imports21241_))
                        _$e21243_)
                       _imports21241_))))
        (let _lp21199_ ((_rest21201_ _deps21197_))
          (let* ((_rest2120221210_ _rest21201_)
                 (_E2120521214_
                  (lambda () (error '"No clause matching" _rest2120221210_)))
                 (_else2120421218_ (lambda () '#!void))
                 (_K2120621229_
                  (lambda (_rest21221_ _hd21222_)
                    (if (##structure-instance-of?
                         _hd21222_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd21222_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e21224_
                                       (gx#core-context-prelude__opt-lambda11975
                                        _hd21222_)))
                                  (if _$e21224_
                                      ((lambda (_pre21227_)
                                         (_lp21199_
                                          (cons _pre21227_
                                                (##structure-ref
                                                 _hd21222_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e21224_)
                                      (_lp21199_
                                       (##structure-ref
                                        _hd21222_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd21222_)))
                          (_lp21199_ _rest21221_))
                        (if (##structure-instance-of?
                             _hd21222_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd21222_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp21199_
                                     (##structure-ref
                                      _hd21222_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd21222_)))
                              (_lp21199_ _rest21221_))
                            (if (##structure-direct-instance-of?
                                 _hd21222_
                                 'gx#module-import::t)
                                (_lp21199_
                                 (cons (##direct-structure-ref
                                        _hd21222_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest21221_))
                                (if (##structure-direct-instance-of?
                                     _hd21222_
                                     'gx#module-export::t)
                                    (_lp21199_
                                     (cons (##direct-structure-ref
                                            _hd21222_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest21221_))
                                    (if (##structure-direct-instance-of?
                                         _hd21222_
                                         'gx#import-set::t)
                                        (_lp21199_
                                         (cons (##direct-structure-ref
                                                _hd21222_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest21221_))
                                        (error '"Unexpected module import"
                                               _hd21222_)))))))))
            (if (##pair? _rest2120221210_)
                (let ((_hd2120721232_ (##car _rest2120221210_))
                      (_tl2120821234_ (##cdr _rest2120221210_)))
                  (let* ((_hd21237_ _hd2120721232_)
                         (_rest21239_ _tl2120821234_))
                    (_K2120621229_ _rest21239_ _hd21237_)))
                (_else2120421218_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx21175_)
      (if (if (##structure-instance-of? _ctx21175_ 'gx#module-context::t)
              (list? (##structure-ref _ctx21175_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht21177_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id21179_
                  (##structure-ref _ctx21175_ '1 gx#expander-context::t '#f))
                 (_mod21181_ (table-ref _ht21177_ _id21179_ '#f)))
            (let ((_$e21184_ _mod21181_))
              (if _$e21184_
                  _$e21184_
                  (let* ((_mod21187_ (gxc#optimizer-import-ssxi _ctx21175_))
                         (_val21192_
                          (let ((_$e21189_ _mod21187_))
                            (if _$e21189_ _$e21189_ '#!void))))
                    (begin
                      (table-set! _ht21177_ _id21179_ _val21192_)
                      _val21192_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx21152_)
      (letrec ((_catch-e21154_
                (lambda (_exn21173_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx21152_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn21173_))
                        '#!void)
                    '#f)))
               (_import-e21155_
                (lambda ()
                  (let* ((_str-id21158_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx21152_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path21166_
                          (let ((_odir2115921161_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2115921161_
                                (let ((_odir21164_ _odir2115921161_))
                                  (path-expand
                                   (string-append _str-id21158_ '".ss")
                                   _odir21164_))
                                '#f)))
                         (_library-path21168_
                          (string->symbol
                           (string-append '":" _str-id21158_ '".ss")))
                         (_ssxi-path21170_
                          (if (if _artefact-path21166_
                                  (file-exists? _artefact-path21166_)
                                  '#f)
                              _artefact-path21166_
                              _library-path21168_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path21170_)
                      (gx#import-module__opt-lambda12010
                       _ssxi-path21170_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx21152_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e21154_ _import-e21155_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args21149_
      (apply make-struct-instance gxc#!type::t _$args21149_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args21146_
      (apply make-struct-instance gxc#!alias::t _$args21146_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args21143_
      (apply make-struct-instance gxc#!struct-type::t _$args21143_)))
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
    (make-struct-type 'gxc#!procedure::t gxc#!type::t '0 '!procedure '() '#f))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args21140_
      (apply make-struct-instance gxc#!procedure::t _$args21140_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args21137_
      (apply make-struct-instance gxc#!struct-pred::t _$args21137_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args21134_
      (apply make-struct-instance gxc#!struct-cons::t _$args21134_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args21131_
      (apply make-struct-instance gxc#!struct-getf::t _$args21131_)))
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
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args21128_
      (apply make-struct-instance gxc#!struct-setf::t _$args21128_)))
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
     ':init!))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args21125_
      (apply make-struct-instance gxc#!lambda::t _$args21125_)))
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
     '#f))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args21122_
      (apply make-struct-instance gxc#!case-lambda::t _$args21122_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self21114_
             _id21115_
             _super21116_
             _fields21117_
             _xfields21118_
             _ctor21119_
             _plist21120_)
      (if (##fx< '7 (##vector-length _self21114_))
          (begin
            (##vector-set! _self21114_ '1 _id21115_)
            (##vector-set! _self21114_ '2 _super21116_)
            (##vector-set! _self21114_ '3 _fields21117_)
            (##vector-set! _self21114_ '4 _xfields21118_)
            (##vector-set! _self21114_ '5 _ctor21119_)
            (##vector-set! _self21114_ '6 _plist21120_)
            (##vector-set! _self21114_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self21114_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda21078
      (lambda (_self21080_
               _id21081_
               _arity21082_
               _dispatch21083_
               _inline21084_
               _typedecl21085_)
        (if (##fx< '5 (##vector-length _self21080_))
            (begin
              (##vector-set! _self21080_ '1 _id21081_)
              (##vector-set! _self21080_ '2 _arity21082_)
              (##vector-set! _self21080_ '3 _dispatch21083_)
              (##vector-set! _self21080_ '4 _inline21084_)
              (##vector-set! _self21080_ '5 _typedecl21085_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self21080_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self21090_ _id21091_ _arity21092_ _dispatch21093_)
          (let* ((_inline21095_ '#f) (_typedecl21097_ '#f))
            (if (##fx< '5 (##vector-length _self21090_))
                (begin
                  (##vector-set! _self21090_ '1 _id21091_)
                  (##vector-set! _self21090_ '2 _arity21092_)
                  (##vector-set! _self21090_ '3 _dispatch21093_)
                  (##vector-set! _self21090_ '4 _inline21095_)
                  (##vector-set! _self21090_ '5 _typedecl21097_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self21090_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self21099_
                 _id21100_
                 _arity21101_
                 _dispatch21102_
                 _inline21103_)
          (let ((_typedecl21105_ '#f))
            (if (##fx< '5 (##vector-length _self21099_))
                (begin
                  (##vector-set! _self21099_ '1 _id21100_)
                  (##vector-set! _self21099_ '2 _arity21101_)
                  (##vector-set! _self21099_ '3 _dispatch21102_)
                  (##vector-set! _self21099_ '4 _inline21103_)
                  (##vector-set! _self21099_ '5 _typedecl21105_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self21099_)))))
      (define gxc#!lambda:::init!
        (lambda _g21278_
          (let ((_g21277_ (length _g21278_)))
            (cond ((fx= _g21277_ 4) (apply gxc#!lambda:::init!__0 _g21278_))
                  ((fx= _g21277_ 5) (apply gxc#!lambda:::init!__1 _g21278_))
                  ((fx= _g21277_ 6)
                   (apply (lambda (_self21107_
                                   _id21108_
                                   _arity21109_
                                   _dispatch21110_
                                   _inline21111_
                                   _typedecl21112_)
                            (if (##fx< '5 (##vector-length _self21107_))
                                (begin
                                  (##vector-set! _self21107_ '1 _id21108_)
                                  (##vector-set! _self21107_ '2 _arity21109_)
                                  (##vector-set!
                                   _self21107_
                                   '3
                                   _dispatch21110_)
                                  (##vector-set! _self21107_ '4 _inline21111_)
                                  (##vector-set!
                                   _self21107_
                                   '5
                                   _typedecl21112_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self21107_)))
                          _g21278_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g21278_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type21072_)
      (let ((_$e21074_
             (##structure-ref _type21072_ '7 gxc#!struct-type::t '#f)))
        (if _$e21074_
            (values _$e21074_)
            (let ((_vtab21077_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type21072_
                 _vtab21077_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab21077_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type21063_ _method21064_)
      (let ((_vtab2106521067_
             (##structure-ref _type21063_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2106521067_
            (let ((_vtab21070_ _vtab2106521067_))
              (table-ref _vtab21070_ _method21064_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda21045
      (lambda (_sym21047_ _type21048_ _local?21049_)
        (begin
          (if (##structure-instance-of? _type21048_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym21047_
                     _type21048_))
          (gxc#verbose
           '"declare-type "
           _sym21047_
           '" "
           (struct->list _type21048_))
          (table-set!
           (if _local?21049_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym21047_
           _type21048_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym21054_ _type21055_)
          (let ((_local?21057_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda21045
             _sym21054_
             _type21055_
             _local?21057_))))
      (define gxc#optimizer-declare-type!
        (lambda _g21280_
          (let ((_g21279_ (length _g21280_)))
            (cond ((fx= _g21279_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g21280_))
                  ((fx= _g21279_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda21045
                          _g21280_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g21280_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda21021
      (lambda (_type-t21023_ _method21024_ _sym21025_ _rebind?21026_)
        (let ((_type21028_ (gxc#optimizer-resolve-type _type-t21023_)))
          (if (##structure-instance-of? _type21028_ 'gxc#!struct-type::t)
              (let ((_vtab21030_ (gxc#!struct-type-vtab _type21028_)))
                (if _rebind?21026_
                    (if (hash-key? _vtab21030_ _method21024_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t21023_
                         '" "
                         _method21024_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t21023_
                         '" "
                         _method21024_))
                    (if (hash-key? _vtab21030_ _method21024_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t21023_
                           '" "
                           _method21024_
                           '" => "
                           _sym21025_)
                          (table-set! _vtab21030_ _method21024_ _sym21025_)))))
              (if (not _type21028_)
                  (gxc#verbose '"declare-method: unknown type " _type-t21023_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t21023_
                         _type21028_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t21035_ _method21036_ _sym21037_)
          (let ((_rebind?21039_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda21021
             _type-t21035_
             _method21036_
             _sym21037_
             _rebind?21039_))))
      (define gxc#optimizer-declare-method!
        (lambda _g21282_
          (let ((_g21281_ (length _g21282_)))
            (cond ((fx= _g21281_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g21282_))
                  ((fx= _g21281_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda21021
                          _g21282_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g21282_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym21011_)
      (let ((_$e21019_
             (let ((_ht2101221014_ (gxc#current-compile-local-type)))
               (if _ht2101221014_
                   (let ((_ht21017_ _ht2101221014_))
                     (table-ref _ht21017_ _sym21011_ '#f))
                   '#f))))
        (if _$e21019_
            _$e21019_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym21011_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym21003_)
      (let ((_type2100421006_ (gxc#optimizer-lookup-type _sym21003_)))
        (if _type2100421006_
            (let ((_type21009_ _type2100421006_))
              (if (##structure-instance-of? _type21009_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type21009_ '1 gxc#!type::t '#f))
                  _type21009_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t20998_ _method20999_)
      (let ((_type21001_ (gxc#optimizer-resolve-type _type-t20998_)))
        (if (##structure-instance-of? _type21001_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type21001_ _method20999_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx20994_)
      (begin
        (gxc#apply-collect-mutators _stx20994_)
        (let ((_stx20996_ (gxc#apply-lift-top-lambdas _stx20994_)))
          (begin
            (gxc#apply-collect-type-info _stx20996_)
            (gxc#apply-optimize-call _stx20996_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl20991_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20991_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl20991_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20991_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20991_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20991_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20991_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20991_ '%#quote gxc#xform-identity)
           (table-set! _tbl20991_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20991_ '%#call gxc#xform-identity)
           (table-set! _tbl20991_ '%#if gxc#xform-identity)
           (table-set! _tbl20991_ '%#ref gxc#xform-identity)
           (table-set! _tbl20991_ '%#set! gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20991_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20991_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20991_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl20987_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20987_ '%#begin gxc#xform-identity)
           (table-set! _tbl20987_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20987_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20987_ '%#module gxc#xform-identity)
           (table-set! _tbl20987_ '%#import gxc#xform-identity)
           (table-set! _tbl20987_ '%#export gxc#xform-identity)
           (table-set! _tbl20987_ '%#provide gxc#xform-identity)
           (table-set! _tbl20987_ '%#extern gxc#xform-identity)
           (table-set! _tbl20987_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20987_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20987_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20987_ '%#declare gxc#xform-identity)
           _tbl20987_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl20983_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20983_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20983_ (force gxc#&identity-expression))
           _tbl20983_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl20979_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl20979_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl20979_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20979_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20979_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20979_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20979_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20979_ '%#quote gxc#xform-identity)
           (table-set! _tbl20979_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20979_ '%#call gxc#xform-operands)
           (table-set! _tbl20979_ '%#if gxc#xform-operands)
           (table-set! _tbl20979_ '%#ref gxc#xform-identity)
           (table-set! _tbl20979_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20979_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20979_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20979_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20979_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20979_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20979_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20979_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20979_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20979_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl20975_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20975_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20975_ (force gxc#&identity))
           (table-set! _tbl20975_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20975_ '%#module gxc#xform-module%)
           (table-set! _tbl20975_ '%#define-values gxc#xform-define-values%)
           _tbl20975_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl20971_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20971_ (force gxc#&void))
           (table-set! _tbl20971_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20971_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20971_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20971_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20971_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20971_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20971_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20971_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20971_ '%#call gxc#collect-operands)
           (table-set! _tbl20971_ '%#if gxc#collect-operands)
           (table-set! _tbl20971_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20971_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20971_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20971_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20971_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20971_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20971_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20971_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20971_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20971_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx20964_ . _args20966_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20964_ _args20966_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl20961_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20961_ (force gxc#&basic-xform))
           (table-set!
            _tbl20961_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl20961_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl20961_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl20961_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl20961_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx20954_ . _args20956_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20954_ _args20956_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl20951_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20951_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20951_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20951_ '%#ref gxc#expression-subst-ref%)
           _tbl20951_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx20944_ . _args20946_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20944_ _args20946_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl20941_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20941_ (force gxc#&void))
           (table-set! _tbl20941_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20941_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20941_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl20941_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20941_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20941_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20941_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl20941_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl20941_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl20941_ '%#call gxc#collect-type-call%)
           (table-set! _tbl20941_ '%#if gxc#collect-operands)
           (table-set! _tbl20941_ '%#set! gxc#collect-body-setq%)
           _tbl20941_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx20934_ . _args20936_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20934_ _args20936_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl20931_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20931_ (force gxc#&false))
           (table-set! _tbl20931_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl20931_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl20931_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl20931_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl20931_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl20931_ '%#ref gxc#basic-expression-type-ref%)
           _tbl20931_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx20924_ . _args20926_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20924_ _args20926_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl20921_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20921_ (force gxc#&basic-xform))
           (table-set! _tbl20921_ '%#call gxc#optimize-call%)
           _tbl20921_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx20914_ . _args20916_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20914_ _args20916_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl20911_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20911_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl20911_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl20911_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl20911_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl20911_ '%#call gxc#generate-ssxi-call%)
           _tbl20911_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx20904_ . _args20906_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20904_ _args20906_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx20901_ . _args20902_) _stx20901_))
  (define gxc#xform-wrap-source
    (lambda (_stx20898_ _src-stx20899_)
      (gx#stx-wrap-source _stx20898_ (gx#stx-source _src-stx20899_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args20892_)
      (lambda (_g2089320895_)
        (apply gxc#compile-e _g2089320895_ _args20892_))))
  (define gxc#xform-begin%
    (lambda (_stx20851_ . _args20852_)
      (let* ((_g2085420864_
              (lambda (_g2085520861_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2085520861_)))
             (_g2085320889_
              (lambda (_g2085520867_)
                (if (gx#stx-pair? _g2085520867_)
                    (let ((_e2085720869_ (gx#stx-e _g2085520867_)))
                      (let ((_hd2085820872_ (##car _e2085720869_))
                            (_tl2085920874_ (##cdr _e2085720869_)))
                        ((lambda (_L20877_)
                           (let ((_forms20887_
                                  (map (gxc#xform-apply-compile-e _args20852_)
                                       _L20877_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms20887_)
                              _stx20851_)))
                         _tl2085920874_)))
                    (_g2085420864_ _g2085520867_)))))
        (_g2085320889_ _stx20851_))))
  (define gxc#xform-module%
    (lambda (_stx20788_ . _args20789_)
      (let* ((_g2079120805_
              (lambda (_g2079220802_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2079220802_)))
             (_g2079020848_
              (lambda (_g2079220808_)
                (if (gx#stx-pair? _g2079220808_)
                    (let ((_e2079520810_ (gx#stx-e _g2079220808_)))
                      (let ((_hd2079620813_ (##car _e2079520810_))
                            (_tl2079720815_ (##cdr _e2079520810_)))
                        (if (gx#stx-pair? _tl2079720815_)
                            (let ((_e2079820818_ (gx#stx-e _tl2079720815_)))
                              (let ((_hd2079920821_ (##car _e2079820818_))
                                    (_tl2080020823_ (##cdr _e2079820818_)))
                                ((lambda (_L20826_ _L20827_)
                                   (let* ((_ctx20840_
                                           (gx#syntax-local-e__0 _L20827_))
                                          (_code20842_
                                           (##structure-ref
                                            _ctx20840_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code20845_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code20842_
                                                     _args20789_))
                                            gx#current-expander-context
                                            _ctx20840_)))
                                     (begin
                                       (##structure-set!
                                        _ctx20840_
                                        _code20845_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L20827_
                                                    (cons _code20845_ '())))
                                        _stx20788_))))
                                 _tl2080020823_
                                 _hd2079920821_)))
                            (_g2079120805_ _g2079220808_))))
                    (_g2079120805_ _g2079220808_)))))
        (_g2079020848_ _stx20788_))))
  (define gxc#xform-define-values%
    (lambda (_stx20718_ . _args20719_)
      (let* ((_g2072120738_
              (lambda (_g2072220735_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2072220735_)))
             (_g2072020785_
              (lambda (_g2072220741_)
                (if (gx#stx-pair? _g2072220741_)
                    (let ((_e2072520743_ (gx#stx-e _g2072220741_)))
                      (let ((_hd2072620746_ (##car _e2072520743_))
                            (_tl2072720748_ (##cdr _e2072520743_)))
                        (if (gx#stx-pair? _tl2072720748_)
                            (let ((_e2072820751_ (gx#stx-e _tl2072720748_)))
                              (let ((_hd2072920754_ (##car _e2072820751_))
                                    (_tl2073020756_ (##cdr _e2072820751_)))
                                (if (gx#stx-pair? _tl2073020756_)
                                    (let ((_e2073120759_
                                           (gx#stx-e _tl2073020756_)))
                                      (let ((_hd2073220762_
                                             (##car _e2073120759_))
                                            (_tl2073320764_
                                             (##cdr _e2073120759_)))
                                        (if (gx#stx-null? _tl2073320764_)
                                            ((lambda (_L20767_ _L20768_)
                                               (let ((_expr20783_
                                                      (apply gxc#compile-e
                                                             _L20767_
                                                             _args20719_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L20768_
                                                              (cons _expr20783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20718_)))
                                             _hd2073220762_
                                             _hd2072920754_)
                                            (_g2072120738_ _g2072220741_))))
                                    (_g2072120738_ _g2072220741_))))
                            (_g2072120738_ _g2072220741_))))
                    (_g2072120738_ _g2072220741_)))))
        (_g2072020785_ _stx20718_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx20648_ . _args20649_)
      (let* ((_g2065120668_
              (lambda (_g2065220665_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2065220665_)))
             (_g2065020715_
              (lambda (_g2065220671_)
                (if (gx#stx-pair? _g2065220671_)
                    (let ((_e2065520673_ (gx#stx-e _g2065220671_)))
                      (let ((_hd2065620676_ (##car _e2065520673_))
                            (_tl2065720678_ (##cdr _e2065520673_)))
                        (if (gx#stx-pair? _tl2065720678_)
                            (let ((_e2065820681_ (gx#stx-e _tl2065720678_)))
                              (let ((_hd2065920684_ (##car _e2065820681_))
                                    (_tl2066020686_ (##cdr _e2065820681_)))
                                (if (gx#stx-pair? _tl2066020686_)
                                    (let ((_e2066120689_
                                           (gx#stx-e _tl2066020686_)))
                                      (let ((_hd2066220692_
                                             (##car _e2066120689_))
                                            (_tl2066320694_
                                             (##cdr _e2066120689_)))
                                        (if (gx#stx-null? _tl2066320694_)
                                            ((lambda (_L20697_ _L20698_)
                                               (let ((_expr20713_
                                                      (apply gxc#compile-e
                                                             _L20697_
                                                             _args20649_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L20698_
                                                              (cons _expr20713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20648_)))
                                             _hd2066220692_
                                             _hd2065920684_)
                                            (_g2065120668_ _g2065220671_))))
                                    (_g2065120668_ _g2065220671_))))
                            (_g2065120668_ _g2065220671_))))
                    (_g2065120668_ _g2065220671_)))))
        (_g2065020715_ _stx20648_))))
  (define gxc#xform-lambda%
    (lambda (_stx20591_ . _args20592_)
      (let* ((_g2059420608_
              (lambda (_g2059520605_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2059520605_)))
             (_g2059320645_
              (lambda (_g2059520611_)
                (if (gx#stx-pair? _g2059520611_)
                    (let ((_e2059820613_ (gx#stx-e _g2059520611_)))
                      (let ((_hd2059920616_ (##car _e2059820613_))
                            (_tl2060020618_ (##cdr _e2059820613_)))
                        (if (gx#stx-pair? _tl2060020618_)
                            (let ((_e2060120621_ (gx#stx-e _tl2060020618_)))
                              (let ((_hd2060220624_ (##car _e2060120621_))
                                    (_tl2060320626_ (##cdr _e2060120621_)))
                                ((lambda (_L20629_ _L20630_)
                                   (let ((_body20643_
                                          (map (gxc#xform-apply-compile-e
                                                _args20592_)
                                               _L20629_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L20630_ _body20643_))
                                      _stx20591_)))
                                 _tl2060320626_
                                 _hd2060220624_)))
                            (_g2059420608_ _g2059520611_))))
                    (_g2059420608_ _g2059520611_)))))
        (_g2059320645_ _stx20591_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx20504_ . _args20505_)
      (letrec ((_clause-e20507_
                (lambda (_clause20548_)
                  (let* ((_g2055020561_
                          (lambda (_g2055120558_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2055120558_)))
                         (_g2054920588_
                          (lambda (_g2055120564_)
                            (if (gx#stx-pair? _g2055120564_)
                                (let ((_e2055420566_ (gx#stx-e _g2055120564_)))
                                  (let ((_hd2055520569_ (##car _e2055420566_))
                                        (_tl2055620571_ (##cdr _e2055420566_)))
                                    ((lambda (_L20574_ _L20575_)
                                       (let ((_body20586_
                                              (map (gxc#xform-apply-compile-e
                                                    _args20505_)
                                                   _L20574_)))
                                         (cons _L20575_ _body20586_)))
                                     _tl2055620571_
                                     _hd2055520569_)))
                                (_g2055020561_ _g2055120564_)))))
                    (_g2054920588_ _clause20548_)))))
        (let* ((_g2050920519_
                (lambda (_g2051020516_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2051020516_)))
               (_g2050820545_
                (lambda (_g2051020522_)
                  (if (gx#stx-pair? _g2051020522_)
                      (let ((_e2051220524_ (gx#stx-e _g2051020522_)))
                        (let ((_hd2051320527_ (##car _e2051220524_))
                              (_tl2051420529_ (##cdr _e2051220524_)))
                          ((lambda (_L20532_)
                             (let ((_clauses20543_
                                    (map _clause-e20507_ _L20532_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses20543_)
                                _stx20504_)))
                           _tl2051420529_)))
                      (_g2050920519_ _g2051020522_)))))
          (_g2050820545_ _stx20504_)))))
  (define gxc#xform-let-values%
    (lambda (_stx20298_ . _args20299_)
      (let* ((_g2030120334_
              (lambda (_g2030220331_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2030220331_)))
             (_g2030020501_
              (lambda (_g2030220337_)
                (if (gx#stx-pair? _g2030220337_)
                    (let ((_e2030720339_ (gx#stx-e _g2030220337_)))
                      (let ((_hd2030820342_ (##car _e2030720339_))
                            (_tl2030920344_ (##cdr _e2030720339_)))
                        (if (gx#stx-pair? _tl2030920344_)
                            (let ((_e2031020347_ (gx#stx-e _tl2030920344_)))
                              (let ((_hd2031120350_ (##car _e2031020347_))
                                    (_tl2031220352_ (##cdr _e2031020347_)))
                                (if (gx#stx-pair/null? _hd2031120350_)
                                    (if (fx>= (gx#stx-length _hd2031120350_)
                                              '0)
                                        (let ((_g21283_
                                               (gx#syntax-split-splice
                                                _hd2031120350_
                                                '0)))
                                          (begin
                                            (let ((_g21284_
                                                   (values-count _g21283_)))
                                              (if (not (fx= _g21284_ 2))
                                                  (error "Context expects 2 values"
                                                         _g21284_)))
                                            (let ((_target2031320355_
                                                   (values-ref _g21283_ 0))
                                                  (_tl2031520357_
                                                   (values-ref _g21283_ 1)))
                                              (if (gx#stx-null? _tl2031520357_)
                                                  (letrec ((_loop2031620360_
                                                            (lambda (_hd2031420363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2032020365_
                             _hd2032120367_)
                      (if (gx#stx-pair? _hd2031420363_)
                          (let ((_e2031720370_ (gx#stx-e _hd2031420363_)))
                            (let ((_lp-hd2031820373_ (##car _e2031720370_))
                                  (_lp-tl2031920375_ (##cdr _e2031720370_)))
                              (if (gx#stx-pair? _lp-hd2031820373_)
                                  (let ((_e2032420378_
                                         (gx#stx-e _lp-hd2031820373_)))
                                    (let ((_hd2032520381_
                                           (##car _e2032420378_))
                                          (_tl2032620383_
                                           (##cdr _e2032420378_)))
                                      (if (gx#stx-pair? _tl2032620383_)
                                          (let ((_e2032720386_
                                                 (gx#stx-e _tl2032620383_)))
                                            (let ((_hd2032820389_
                                                   (##car _e2032720386_))
                                                  (_tl2032920391_
                                                   (##cdr _e2032720386_)))
                                              (if (gx#stx-null? _tl2032920391_)
                                                  (_loop2031620360_
                                                   _lp-tl2031920375_
                                                   (cons _hd2032820389_
                                                         _expr2032020365_)
                                                   (cons _hd2032520381_
                                                         _hd2032120367_))
                                                  (_g2030120334_
                                                   _g2030220337_))))
                                          (_g2030120334_ _g2030220337_))))
                                  (_g2030120334_ _g2030220337_))))
                          (let ((_expr2032220394_ (reverse _expr2032020365_))
                                (_hd2032320396_ (reverse _hd2032120367_)))
                            ((lambda (_L20399_ _L20400_ _L20401_ _L20402_)
                               (let* ((_g2042120437_
                                       (lambda (_g2042220434_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2042220434_)))
                                      (_g2042020491_
                                       (lambda (_g2042220440_)
                                         (if (gx#stx-pair/null? _g2042220440_)
                                             (if (fx>= (gx#stx-length
                                                        _g2042220440_)
                                                       '0)
                                                 (let ((_g21285_
                                                        (gx#syntax-split-splice
                                                         _g2042220440_
                                                         '0)))
                                                   (begin
                                                     (let ((_g21286_
                                                            (values-count
                                                             _g21285_)))
                                                       (if (not (fx= _g21286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g21286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2042420442_
                                                            (values-ref
                                                             _g21285_
                                                             0))
                                                           (_tl2042620444_
                                                            (values-ref
                                                             _g21285_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2042620444_)
                                                           (letrec ((_loop2042720447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2042520450_ _expr2043120452_)
                               (if (gx#stx-pair? _hd2042520450_)
                                   (let ((_e2042820455_
                                          (gx#syntax-e _hd2042520450_)))
                                     (let ((_lp-hd2042920458_
                                            (##car _e2042820455_))
                                           (_lp-tl2043020460_
                                            (##cdr _e2042820455_)))
                                       (_loop2042720447_
                                        _lp-tl2043020460_
                                        (cons _lp-hd2042920458_
                                              _expr2043120452_))))
                                   (let ((_expr2043220463_
                                          (reverse _expr2043120452_)))
                                     ((lambda (_L20466_)
                                        (let ()
                                          (let ((_body20479_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args20299_)
                                                      _L20399_)))
                                            (gxc#xform-wrap-source
                                             (cons _L20402_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L20466_
                                                            _L20401_)
                                                           (foldr (lambda (_g2048020484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2048120486_
                                   _g2048220488_)
                            (cons (cons _g2048120486_ (cons _g2048020484_ '()))
                                  _g2048220488_))
                          '()
                          _L20466_
                          _L20401_))
                 _body20479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx20298_))))
                                      _expr2043220463_))))))
                     (_loop2042720447_ _target2042420442_ '()))
                   (_g2042120437_ _g2042220440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2042120437_ _g2042220440_))
                                             (_g2042120437_ _g2042220440_)))))
                                 (_g2042020491_
                                  (map (gxc#xform-apply-compile-e _args20299_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2049320496_
                                                          _g2049420498_)
                                                   (cons _g2049320496_
                                                         _g2049420498_))
                                                 '()
                                                 _L20400_))))))
                             _tl2031220352_
                             _expr2032220394_
                             _hd2032320396_
                             _hd2030820342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2031620360_
                                                     _target2031320355_
                                                     '()
                                                     '()))
                                                  (_g2030120334_
                                                   _g2030220337_)))))
                                        (_g2030120334_ _g2030220337_))
                                    (_g2030120334_ _g2030220337_))))
                            (_g2030120334_ _g2030220337_))))
                    (_g2030120334_ _g2030220337_)))))
        (_g2030020501_ _stx20298_))))
  (define gxc#xform-operands
    (lambda (_stx20254_ . _args20255_)
      (let* ((_g2025720268_
              (lambda (_g2025820265_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2025820265_)))
             (_g2025620295_
              (lambda (_g2025820271_)
                (if (gx#stx-pair? _g2025820271_)
                    (let ((_e2026120273_ (gx#stx-e _g2025820271_)))
                      (let ((_hd2026220276_ (##car _e2026120273_))
                            (_tl2026320278_ (##cdr _e2026120273_)))
                        ((lambda (_L20281_ _L20282_)
                           (let ((_rands20293_
                                  (map (gxc#xform-apply-compile-e _args20255_)
                                       _L20281_)))
                             (gxc#xform-wrap-source
                              (cons _L20282_ _rands20293_)
                              _stx20254_)))
                         _tl2026320278_
                         _hd2026220276_)))
                    (_g2025720268_ _g2025820271_)))))
        (_g2025620295_ _stx20254_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx20184_ . _args20185_)
      (let* ((_g2018720204_
              (lambda (_g2018820201_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2018820201_)))
             (_g2018620251_
              (lambda (_g2018820207_)
                (if (gx#stx-pair? _g2018820207_)
                    (let ((_e2019120209_ (gx#stx-e _g2018820207_)))
                      (let ((_hd2019220212_ (##car _e2019120209_))
                            (_tl2019320214_ (##cdr _e2019120209_)))
                        (if (gx#stx-pair? _tl2019320214_)
                            (let ((_e2019420217_ (gx#stx-e _tl2019320214_)))
                              (let ((_hd2019520220_ (##car _e2019420217_))
                                    (_tl2019620222_ (##cdr _e2019420217_)))
                                (if (gx#stx-pair? _tl2019620222_)
                                    (let ((_e2019720225_
                                           (gx#stx-e _tl2019620222_)))
                                      (let ((_hd2019820228_
                                             (##car _e2019720225_))
                                            (_tl2019920230_
                                             (##cdr _e2019720225_)))
                                        (if (gx#stx-null? _tl2019920230_)
                                            ((lambda (_L20233_ _L20234_)
                                               (let ((_expr20249_
                                                      (apply gxc#compile-e
                                                             _L20233_
                                                             _args20185_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L20234_
                                                              (cons _expr20249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20184_)))
                                             _hd2019820228_
                                             _hd2019520220_)
                                            (_g2018720204_ _g2018820207_))))
                                    (_g2018720204_ _g2018820207_))))
                            (_g2018720204_ _g2018820207_))))
                    (_g2018720204_ _g2018820207_)))))
        (_g2018620251_ _stx20184_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx20115_)
      (let* ((_g2011720134_
              (lambda (_g2011820131_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2011820131_)))
             (_g2011620181_
              (lambda (_g2011820137_)
                (if (gx#stx-pair? _g2011820137_)
                    (let ((_e2012120139_ (gx#stx-e _g2011820137_)))
                      (let ((_hd2012220142_ (##car _e2012120139_))
                            (_tl2012320144_ (##cdr _e2012120139_)))
                        (if (gx#stx-pair? _tl2012320144_)
                            (let ((_e2012420147_ (gx#stx-e _tl2012320144_)))
                              (let ((_hd2012520150_ (##car _e2012420147_))
                                    (_tl2012620152_ (##cdr _e2012420147_)))
                                (if (gx#stx-pair? _tl2012620152_)
                                    (let ((_e2012720155_
                                           (gx#stx-e _tl2012620152_)))
                                      (let ((_hd2012820158_
                                             (##car _e2012720155_))
                                            (_tl2012920160_
                                             (##cdr _e2012720155_)))
                                        (if (gx#stx-null? _tl2012920160_)
                                            ((lambda (_L20163_ _L20164_)
                                               (let ((_sym20179_
                                                      (gxc#generate-runtime-binding-id
                                                       _L20164_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym20179_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym20179_
                                                    '#t)
                                                   (gxc#compile-e _L20163_))))
                                             _hd2012820158_
                                             _hd2012520150_)
                                            (_g2011720134_ _g2011820137_))))
                                    (_g2011720134_ _g2011820137_))))
                            (_g2011720134_ _g2011820137_))))
                    (_g2011720134_ _g2011820137_)))))
        (_g2011620181_ _stx20115_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form19349_)
      (let* ((_g1935419511_
              (lambda (_g1935519508_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1935519508_)))
             (_g1935319518_ (lambda (_g1935519514_) ((lambda () '#f))))
             (_g1935219658_
              (lambda (_g1935519521_)
                (if (gx#stx-pair? _g1935519521_)
                    (let ((_e1947119523_ (gx#stx-e _g1935519521_)))
                      (let ((_hd1947219526_ (##car _e1947119523_))
                            (_tl1947319528_ (##cdr _e1947119523_)))
                        (if (gx#stx-pair? _tl1947319528_)
                            (let ((_e1947419531_ (gx#stx-e _tl1947319528_)))
                              (let ((_hd1947519534_ (##car _e1947419531_))
                                    (_tl1947619536_ (##cdr _e1947419531_)))
                                (if (gx#stx-pair? _hd1947519534_)
                                    (let ((_e1947719539_
                                           (gx#stx-e _hd1947519534_)))
                                      (let ((_hd1947819542_
                                             (##car _e1947719539_))
                                            (_tl1947919544_
                                             (##cdr _e1947719539_)))
                                        (if (gx#identifier? _hd1947819542_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1947819542_)
                                                (if (gx#stx-pair?
                                                     _tl1947919544_)
                                                    (let ((_e1948019547_
                                                           (gx#stx-e
                                                            _tl1947919544_)))
                                                      (let ((_hd1948119550_
                                                             (##car _e1948019547_))
                                                            (_tl1948219552_
                                                             (##cdr _e1948019547_)))
                                                        (if (gx#stx-pair?
                                                             _hd1948119550_)
                                                            (let ((_e1948319555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1948119550_)))
                      (let ((_hd1948419558_ (##car _e1948319555_))
                            (_tl1948519560_ (##cdr _e1948319555_)))
                        (if (gx#identifier? _hd1948419558_)
                            (if (gx#stx-eq? '%#ref _hd1948419558_)
                                (if (gx#stx-pair? _tl1948519560_)
                                    (let ((_e1948619563_
                                           (gx#stx-e _tl1948519560_)))
                                      (let ((_hd1948719566_
                                             (##car _e1948619563_))
                                            (_tl1948819568_
                                             (##cdr _e1948619563_)))
                                        (if (gx#stx-null? _tl1948819568_)
                                            (if (gx#stx-pair? _tl1948219552_)
                                                (let ((_e1948919571_
                                                       (gx#stx-e
                                                        _tl1948219552_)))
                                                  (let ((_hd1949019574_
                                                         (##car _e1948919571_))
                                                        (_tl1949119576_
                                                         (##cdr _e1948919571_)))
                                                    (if (gx#stx-pair?
                                                         _hd1949019574_)
                                                        (let ((_e1949219579_
                                                               (gx#stx-e
                                                                _hd1949019574_)))
                                                          (let ((_hd1949319582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1949219579_))
                        (_tl1949419584_ (##cdr _e1949219579_)))
                    (if (gx#identifier? _hd1949319582_)
                        (if (gx#stx-eq? '%#ref _hd1949319582_)
                            (if (gx#stx-pair? _tl1949419584_)
                                (let ((_e1949519587_
                                       (gx#stx-e _tl1949419584_)))
                                  (let ((_hd1949619590_ (##car _e1949519587_))
                                        (_tl1949719592_ (##cdr _e1949519587_)))
                                    (if (gx#stx-null? _tl1949719592_)
                                        (if (gx#stx-pair? _tl1949119576_)
                                            (let ((_e1949819595_
                                                   (gx#stx-e _tl1949119576_)))
                                              (let ((_hd1949919598_
                                                     (##car _e1949819595_))
                                                    (_tl1950019600_
                                                     (##cdr _e1949819595_)))
                                                (if (gx#stx-pair?
                                                     _hd1949919598_)
                                                    (let ((_e1950119603_
                                                           (gx#stx-e
                                                            _hd1949919598_)))
                                                      (let ((_hd1950219606_
                                                             (##car _e1950119603_))
                                                            (_tl1950319608_
                                                             (##cdr _e1950119603_)))
                                                        (if (gx#identifier?
                                                             _hd1950219606_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1950219606_)
                        (if (gx#stx-pair? _tl1950319608_)
                            (let ((_e1950419611_ (gx#stx-e _tl1950319608_)))
                              (let ((_hd1950519614_ (##car _e1950419611_))
                                    (_tl1950619616_ (##cdr _e1950419611_)))
                                (if (gx#stx-null? _tl1950619616_)
                                    (if (gx#stx-null? _tl1950019600_)
                                        (if (gx#stx-null? _tl1947619536_)
                                            ((lambda (_L19619_
                                                      _L19620_
                                                      _L19621_
                                                      _L19622_)
                                               (if (if (gx#identifier?
                                                        _L19622_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L19621_)
                        'apply)
                   (if (gx#free-identifier=? _L19622_ _L19619_)
                       (not (gx#free-identifier=? _L19620_ _L19622_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g1935319518_
                                                    _g1935519521_)))
                                             _hd1950519614_
                                             _hd1949619590_
                                             _hd1948719566_
                                             _hd1947219526_)
                                            (_g1935319518_ _g1935519521_))
                                        (_g1935319518_ _g1935519521_))
                                    (_g1935319518_ _g1935519521_))))
                            (_g1935319518_ _g1935519521_))
                        (_g1935319518_ _g1935519521_))
                    (_g1935319518_ _g1935519521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1935319518_
                                                     _g1935519521_))))
                                            (_g1935319518_ _g1935519521_))
                                        (_g1935319518_ _g1935519521_))))
                                (_g1935319518_ _g1935519521_))
                            (_g1935319518_ _g1935519521_))
                        (_g1935319518_ _g1935519521_))))
                (_g1935319518_ _g1935519521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1935319518_ _g1935519521_))
                                            (_g1935319518_ _g1935519521_))))
                                    (_g1935319518_ _g1935519521_))
                                (_g1935319518_ _g1935519521_))
                            (_g1935319518_ _g1935519521_))))
                    (_g1935319518_ _g1935519521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1935319518_
                                                     _g1935519521_))
                                                (_g1935319518_ _g1935519521_))
                                            (_g1935319518_ _g1935519521_))))
                                    (_g1935319518_ _g1935519521_))))
                            (_g1935319518_ _g1935519521_))))
                    (_g1935319518_ _g1935519521_))))
             (_g1935119918_
              (lambda (_g1935519661_)
                (if (gx#stx-pair? _g1935519661_)
                    (let ((_e1940719663_ (gx#stx-e _g1935519661_)))
                      (let ((_hd1940819666_ (##car _e1940719663_))
                            (_tl1940919668_ (##cdr _e1940719663_)))
                        (if (gx#stx-pair/null? _hd1940819666_)
                            (if (fx>= (gx#stx-length _hd1940819666_) '0)
                                (let ((_g21287_
                                       (gx#syntax-split-splice
                                        _hd1940819666_
                                        '0)))
                                  (begin
                                    (let ((_g21288_ (values-count _g21287_)))
                                      (if (not (fx= _g21288_ 2))
                                          (error "Context expects 2 values"
                                                 _g21288_)))
                                    (let ((_target1941019671_
                                           (values-ref _g21287_ 0))
                                          (_tl1941219673_
                                           (values-ref _g21287_ 1)))
                                      (letrec ((_loop1941319676_
                                                (lambda (_hd1941119679_
                                                         _arg1941719681_)
                                                  (if (gx#stx-pair?
                                                       _hd1941119679_)
                                                      (let ((_e1941419684_
                                                             (gx#stx-e
                                                              _hd1941119679_)))
                                                        (let ((_lp-hd1941519687_
                                                               (##car _e1941419684_))
                                                              (_lp-tl1941619689_
                                                               (##cdr _e1941419684_)))
                                                          (_loop1941319676_
                                                           _lp-tl1941619689_
                                                           (cons _lp-hd1941519687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1941719681_))))
              (let ((_arg1941819692_ (reverse _arg1941719681_)))
                (if (gx#stx-pair? _tl1940919668_)
                    (let ((_e1941919695_ (gx#stx-e _tl1940919668_)))
                      (let ((_hd1942019698_ (##car _e1941919695_))
                            (_tl1942119700_ (##cdr _e1941919695_)))
                        (if (gx#stx-pair? _hd1942019698_)
                            (let ((_e1942219703_ (gx#stx-e _hd1942019698_)))
                              (let ((_hd1942319706_ (##car _e1942219703_))
                                    (_tl1942419708_ (##cdr _e1942219703_)))
                                (if (gx#identifier? _hd1942319706_)
                                    (if (gx#stx-eq? '%#call _hd1942319706_)
                                        (if (gx#stx-pair? _tl1942419708_)
                                            (let ((_e1942519711_
                                                   (gx#stx-e _tl1942419708_)))
                                              (let ((_hd1942619714_
                                                     (##car _e1942519711_))
                                                    (_tl1942719716_
                                                     (##cdr _e1942519711_)))
                                                (if (gx#stx-pair?
                                                     _hd1942619714_)
                                                    (let ((_e1942819719_
                                                           (gx#stx-e
                                                            _hd1942619714_)))
                                                      (let ((_hd1942919722_
                                                             (##car _e1942819719_))
                                                            (_tl1943019724_
                                                             (##cdr _e1942819719_)))
                                                        (if (gx#identifier?
                                                             _hd1942919722_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1942919722_)
                        (if (gx#stx-pair? _tl1943019724_)
                            (let ((_e1943119727_ (gx#stx-e _tl1943019724_)))
                              (let ((_hd1943219730_ (##car _e1943119727_))
                                    (_tl1943319732_ (##cdr _e1943119727_)))
                                (if (gx#stx-null? _tl1943319732_)
                                    (if (gx#stx-pair? _tl1942719716_)
                                        (let ((_e1943419735_
                                               (gx#stx-e _tl1942719716_)))
                                          (let ((_hd1943519738_
                                                 (##car _e1943419735_))
                                                (_tl1943619740_
                                                 (##cdr _e1943419735_)))
                                            (if (gx#stx-pair? _hd1943519738_)
                                                (let ((_e1943719743_
                                                       (gx#stx-e
                                                        _hd1943519738_)))
                                                  (let ((_hd1943819746_
                                                         (##car _e1943719743_))
                                                        (_tl1943919748_
                                                         (##cdr _e1943719743_)))
                                                    (if (gx#identifier?
                                                         _hd1943819746_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1943819746_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1943919748_)
                        (let ((_e1944019751_ (gx#stx-e _tl1943919748_)))
                          (let ((_hd1944119754_ (##car _e1944019751_))
                                (_tl1944219756_ (##cdr _e1944019751_)))
                            (if (gx#stx-null? _tl1944219756_)
                                (if (gx#stx-pair/null? _tl1943619740_)
                                    (if (fx>= (gx#stx-length _tl1943619740_)
                                              '1)
                                        (let ((_g21289_
                                               (gx#syntax-split-splice
                                                _tl1943619740_
                                                '1)))
                                          (begin
                                            (let ((_g21290_
                                                   (values-count _g21289_)))
                                              (if (not (fx= _g21290_ 2))
                                                  (error "Context expects 2 values"
                                                         _g21290_)))
                                            (let ((_target1944319759_
                                                   (values-ref _g21289_ 0))
                                                  (_tl1944519761_
                                                   (values-ref _g21289_ 1)))
                                              (if (gx#stx-pair? _tl1944519761_)
                                                  (let ((_e1945219764_
                                                         (gx#stx-e
                                                          _tl1944519761_)))
                                                    (let ((_hd1945319767_
                                                           (##car _e1945219764_))
                                                          (_tl1945419769_
                                                           (##cdr _e1945219764_)))
                                                      (if (gx#stx-pair?
                                                           _hd1945319767_)
                                                          (let ((_e1945519772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1945319767_)))
                    (let ((_hd1945619775_ (##car _e1945519772_))
                          (_tl1945719777_ (##cdr _e1945519772_)))
                      (if (gx#identifier? _hd1945619775_)
                          (if (gx#stx-eq? '%#ref _hd1945619775_)
                              (if (gx#stx-pair? _tl1945719777_)
                                  (let ((_e1945819780_
                                         (gx#stx-e _tl1945719777_)))
                                    (let ((_hd1945919783_
                                           (##car _e1945819780_))
                                          (_tl1946019785_
                                           (##cdr _e1945819780_)))
                                      (if (gx#stx-null? _tl1946019785_)
                                          (if (gx#stx-null? _tl1945419769_)
                                              (letrec ((_loop1944619788_
                                                        (lambda (_hd1944419791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg1945019793_)
                  (if (gx#stx-pair? _hd1944419791_)
                      (let ((_e1944719796_ (gx#stx-e _hd1944419791_)))
                        (let ((_lp-hd1944819799_ (##car _e1944719796_))
                              (_lp-tl1944919801_ (##cdr _e1944719796_)))
                          (if (gx#stx-pair? _lp-hd1944819799_)
                              (let ((_e1946119804_
                                     (gx#stx-e _lp-hd1944819799_)))
                                (let ((_hd1946219807_ (##car _e1946119804_))
                                      (_tl1946319809_ (##cdr _e1946119804_)))
                                  (if (gx#identifier? _hd1946219807_)
                                      (if (gx#stx-eq? '%#ref _hd1946219807_)
                                          (if (gx#stx-pair? _tl1946319809_)
                                              (let ((_e1946419812_
                                                     (gx#stx-e
                                                      _tl1946319809_)))
                                                (let ((_hd1946519815_
                                                       (##car _e1946419812_))
                                                      (_tl1946619817_
                                                       (##cdr _e1946419812_)))
                                                  (if (gx#stx-null?
                                                       _tl1946619817_)
                                                      (_loop1944619788_
                                                       _lp-tl1944919801_
                                                       (cons _hd1946519815_
                                                             _xarg1945019793_))
                                                      (_g1935219658_
                                                       _g1935519661_))))
                                              (_g1935219658_ _g1935519661_))
                                          (_g1935219658_ _g1935519661_))
                                      (_g1935219658_ _g1935519661_))))
                              (_g1935219658_ _g1935519661_))))
                      (let ((_xarg1945119820_ (reverse _xarg1945019793_)))
                        (if (gx#stx-null? _tl1942119700_)
                            ((lambda (_L19823_
                                      _L19824_
                                      _L19825_
                                      _L19826_
                                      _L19827_
                                      _L19828_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1987119874_
                                                           _g1987219876_)
                                                    (cons _g1987119874_
                                                          _g1987219876_))
                                                  '()
                                                  _L19828_)))
                                       (if (gx#identifier? _L19827_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L19826_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1987819881_ _g1987919883_)
                                    (cons _g1987819881_ _g1987919883_))
                                  '()
                                  _L19828_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g1988519888_ _g1988619890_)
                                    (cons _g1988519888_ _g1988619890_))
                                  '()
                                  _L19824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g1989219895_ _g1989319897_)
                                   (cons _g1989219895_ _g1989319897_))
                                 '()
                                 _L19828_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g1989919902_ _g1990019904_)
                                   (cons _g1989919902_ _g1990019904_))
                                 '()
                                 _L19824_)))
               (if (gx#free-identifier=? _L19827_ _L19823_)
                   (not (find (lambda (_g1990619908_)
                                (gx#free-identifier=? _g1990619908_ _L19825_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1991019913_ _g1991119915_)
                                          (cons _g1991019913_ _g1991119915_))
                                        (cons _L19827_ '())
                                        _L19828_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g1935219658_ _g1935519661_)))
                             _hd1945919783_
                             _xarg1945119820_
                             _hd1944119754_
                             _hd1943219730_
                             _tl1941219673_
                             _arg1941819692_)
                            (_g1935219658_ _g1935519661_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1944619788_
                                                 _target1944319759_
                                                 '()))
                                              (_g1935219658_ _g1935519661_))
                                          (_g1935219658_ _g1935519661_))))
                                  (_g1935219658_ _g1935519661_))
                              (_g1935219658_ _g1935519661_))
                          (_g1935219658_ _g1935519661_))))
                  (_g1935219658_ _g1935519661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1935219658_
                                                   _g1935519661_)))))
                                        (_g1935219658_ _g1935519661_))
                                    (_g1935219658_ _g1935519661_))
                                (_g1935219658_ _g1935519661_))))
                        (_g1935219658_ _g1935519661_))
                    (_g1935219658_ _g1935519661_))
                (_g1935219658_ _g1935519661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1935219658_
                                                 _g1935519661_))))
                                        (_g1935219658_ _g1935519661_))
                                    (_g1935219658_ _g1935519661_))))
                            (_g1935219658_ _g1935519661_))
                        (_g1935219658_ _g1935519661_))
                    (_g1935219658_ _g1935519661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1935219658_
                                                     _g1935519661_))))
                                            (_g1935219658_ _g1935519661_))
                                        (_g1935219658_ _g1935519661_))
                                    (_g1935219658_ _g1935519661_))))
                            (_g1935219658_ _g1935519661_))))
                    (_g1935219658_ _g1935519661_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1941319676_
                                         _target1941019671_
                                         '())))))
                                (_g1935219658_ _g1935519661_))
                            (_g1935219658_ _g1935519661_))))
                    (_g1935219658_ _g1935519661_))))
             (_g1935020112_
              (lambda (_g1935519921_)
                (if (gx#stx-pair? _g1935519921_)
                    (let ((_e1935919923_ (gx#stx-e _g1935519921_)))
                      (let ((_hd1936019926_ (##car _e1935919923_))
                            (_tl1936119928_ (##cdr _e1935919923_)))
                        (if (gx#stx-pair/null? _hd1936019926_)
                            (if (fx>= (gx#stx-length _hd1936019926_) '0)
                                (let ((_g21291_
                                       (gx#syntax-split-splice
                                        _hd1936019926_
                                        '0)))
                                  (begin
                                    (let ((_g21292_ (values-count _g21291_)))
                                      (if (not (fx= _g21292_ 2))
                                          (error "Context expects 2 values"
                                                 _g21292_)))
                                    (let ((_target1936219931_
                                           (values-ref _g21291_ 0))
                                          (_tl1936419933_
                                           (values-ref _g21291_ 1)))
                                      (if (gx#stx-null? _tl1936419933_)
                                          (letrec ((_loop1936519936_
                                                    (lambda (_hd1936319939_
                                                             _arg1936919941_)
                                                      (if (gx#stx-pair?
                                                           _hd1936319939_)
                                                          (let ((_e1936619944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1936319939_)))
                    (let ((_lp-hd1936719947_ (##car _e1936619944_))
                          (_lp-tl1936819949_ (##cdr _e1936619944_)))
                      (_loop1936519936_
                       _lp-tl1936819949_
                       (cons _lp-hd1936719947_ _arg1936919941_))))
                  (let ((_arg1937019952_ (reverse _arg1936919941_)))
                    (if (gx#stx-pair? _tl1936119928_)
                        (let ((_e1937119955_ (gx#stx-e _tl1936119928_)))
                          (let ((_hd1937219958_ (##car _e1937119955_))
                                (_tl1937319960_ (##cdr _e1937119955_)))
                            (if (gx#stx-pair? _hd1937219958_)
                                (let ((_e1937419963_
                                       (gx#stx-e _hd1937219958_)))
                                  (let ((_hd1937519966_ (##car _e1937419963_))
                                        (_tl1937619968_ (##cdr _e1937419963_)))
                                    (if (gx#identifier? _hd1937519966_)
                                        (if (gx#stx-eq? '%#call _hd1937519966_)
                                            (if (gx#stx-pair? _tl1937619968_)
                                                (let ((_e1937719971_
                                                       (gx#stx-e
                                                        _tl1937619968_)))
                                                  (let ((_hd1937819974_
                                                         (##car _e1937719971_))
                                                        (_tl1937919976_
                                                         (##cdr _e1937719971_)))
                                                    (if (gx#stx-pair?
                                                         _hd1937819974_)
                                                        (let ((_e1938019979_
                                                               (gx#stx-e
                                                                _hd1937819974_)))
                                                          (let ((_hd1938119982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1938019979_))
                        (_tl1938219984_ (##cdr _e1938019979_)))
                    (if (gx#identifier? _hd1938119982_)
                        (if (gx#stx-eq? '%#ref _hd1938119982_)
                            (if (gx#stx-pair? _tl1938219984_)
                                (let ((_e1938319987_
                                       (gx#stx-e _tl1938219984_)))
                                  (let ((_hd1938419990_ (##car _e1938319987_))
                                        (_tl1938519992_ (##cdr _e1938319987_)))
                                    (if (gx#stx-null? _tl1938519992_)
                                        (if (gx#stx-pair/null? _tl1937919976_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1937919976_)
                                                      '0)
                                                (let ((_g21293_
                                                       (gx#syntax-split-splice
                                                        _tl1937919976_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21294_
                                                           (values-count
                                                            _g21293_)))
                                                      (if (not (fx= _g21294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g21294_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1938619995_
                                                           (values-ref
                                                            _g21293_
                                                            0))
                                                          (_tl1938819997_
                                                           (values-ref
                                                            _g21293_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1938819997_)
                                                          (letrec ((_loop1938920000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1938720003_ _xarg1939320005_)
                              (if (gx#stx-pair? _hd1938720003_)
                                  (let ((_e1939020008_
                                         (gx#stx-e _hd1938720003_)))
                                    (let ((_lp-hd1939120011_
                                           (##car _e1939020008_))
                                          (_lp-tl1939220013_
                                           (##cdr _e1939020008_)))
                                      (if (gx#stx-pair? _lp-hd1939120011_)
                                          (let ((_e1939520016_
                                                 (gx#stx-e _lp-hd1939120011_)))
                                            (let ((_hd1939620019_
                                                   (##car _e1939520016_))
                                                  (_tl1939720021_
                                                   (##cdr _e1939520016_)))
                                              (if (gx#identifier?
                                                   _hd1939620019_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1939620019_)
                                                      (if (gx#stx-pair?
                                                           _tl1939720021_)
                                                          (let ((_e1939820024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1939720021_)))
                    (let ((_hd1939920027_ (##car _e1939820024_))
                          (_tl1940020029_ (##cdr _e1939820024_)))
                      (if (gx#stx-null? _tl1940020029_)
                          (_loop1938920000_
                           _lp-tl1939220013_
                           (cons _hd1939920027_ _xarg1939320005_))
                          (_g1935119918_ _g1935519921_))))
                  (_g1935119918_ _g1935519921_))
              (_g1935119918_ _g1935519921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1935119918_
                                                   _g1935519921_))))
                                          (_g1935119918_ _g1935519921_))))
                                  (let ((_xarg1939420032_
                                         (reverse _xarg1939320005_)))
                                    (if (gx#stx-null? _tl1937319960_)
                                        ((lambda (_L20035_ _L20036_ _L20037_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2006520068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2006620070_)
                        (cons _g2006520068_ _g2006620070_))
                      '()
                      _L20037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2007220075_ _g2007320077_)
                                        (cons _g2007220075_ _g2007320077_))
                                      '()
                                      _L20037_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2007920082_ _g2008020084_)
                                        (cons _g2007920082_ _g2008020084_))
                                      '()
                                      _L20035_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2008620089_ _g2008720091_)
                                       (cons _g2008620089_ _g2008720091_))
                                     '()
                                     _L20037_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2009320096_ _g2009420098_)
                                       (cons _g2009320096_ _g2009420098_))
                                     '()
                                     _L20035_)))
                   (not (find (lambda (_g2010020102_)
                                (gx#free-identifier=? _g2010020102_ _L20036_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2010420107_ _g2010520109_)
                                          (cons _g2010420107_ _g2010520109_))
                                        '()
                                        _L20037_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1935119918_ _g1935519921_)))
                                         _xarg1939420032_
                                         _hd1938419990_
                                         _arg1937019952_)
                                        (_g1935119918_ _g1935519921_)))))))
                    (_loop1938920000_ _target1938619995_ '()))
                  (_g1935119918_ _g1935519921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1935119918_ _g1935519921_))
                                            (_g1935119918_ _g1935519921_))
                                        (_g1935119918_ _g1935519921_))))
                                (_g1935119918_ _g1935519921_))
                            (_g1935119918_ _g1935519921_))
                        (_g1935119918_ _g1935519921_))))
                (_g1935119918_ _g1935519921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1935119918_ _g1935519921_))
                                            (_g1935119918_ _g1935519921_))
                                        (_g1935119918_ _g1935519921_))))
                                (_g1935119918_ _g1935519921_))))
                        (_g1935119918_ _g1935519921_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1936519936_
                                             _target1936219931_
                                             '()))
                                          (_g1935119918_ _g1935519921_)))))
                                (_g1935119918_ _g1935519921_))
                            (_g1935119918_ _g1935519921_))))
                    (_g1935119918_ _g1935519921_)))))
        (_g1935020112_ _form19349_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form18817_)
      (let* ((_g1882118945_
              (lambda (_g1882218942_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1882218942_)))
             (_g1882019062_
              (lambda (_g1882218948_)
                (if (gx#stx-pair? _g1882218948_)
                    (let ((_e1891118950_ (gx#stx-e _g1882218948_)))
                      (let ((_hd1891218953_ (##car _e1891118950_))
                            (_tl1891318955_ (##cdr _e1891118950_)))
                        (if (gx#stx-pair? _tl1891318955_)
                            (let ((_e1891418958_ (gx#stx-e _tl1891318955_)))
                              (let ((_hd1891518961_ (##car _e1891418958_))
                                    (_tl1891618963_ (##cdr _e1891418958_)))
                                (if (gx#stx-pair? _hd1891518961_)
                                    (let ((_e1891718966_
                                           (gx#stx-e _hd1891518961_)))
                                      (let ((_hd1891818969_
                                             (##car _e1891718966_))
                                            (_tl1891918971_
                                             (##cdr _e1891718966_)))
                                        (if (gx#identifier? _hd1891818969_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1891818969_)
                                                (if (gx#stx-pair?
                                                     _tl1891918971_)
                                                    (let ((_e1892018974_
                                                           (gx#stx-e
                                                            _tl1891918971_)))
                                                      (let ((_hd1892118977_
                                                             (##car _e1892018974_))
                                                            (_tl1892218979_
                                                             (##cdr _e1892018974_)))
                                                        (if (gx#stx-pair?
                                                             _hd1892118977_)
                                                            (let ((_e1892318982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1892118977_)))
                      (let ((_hd1892418985_ (##car _e1892318982_))
                            (_tl1892518987_ (##cdr _e1892318982_)))
                        (if (gx#identifier? _hd1892418985_)
                            (if (gx#stx-eq? '%#ref _hd1892418985_)
                                (if (gx#stx-pair? _tl1892518987_)
                                    (let ((_e1892618990_
                                           (gx#stx-e _tl1892518987_)))
                                      (let ((_hd1892718993_
                                             (##car _e1892618990_))
                                            (_tl1892818995_
                                             (##cdr _e1892618990_)))
                                        (if (gx#stx-null? _tl1892818995_)
                                            (if (gx#stx-pair? _tl1892218979_)
                                                (let ((_e1892918998_
                                                       (gx#stx-e
                                                        _tl1892218979_)))
                                                  (let ((_hd1893019001_
                                                         (##car _e1892918998_))
                                                        (_tl1893119003_
                                                         (##cdr _e1892918998_)))
                                                    (if (gx#stx-pair?
                                                         _hd1893019001_)
                                                        (let ((_e1893219006_
                                                               (gx#stx-e
                                                                _hd1893019001_)))
                                                          (let ((_hd1893319009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1893219006_))
                        (_tl1893419011_ (##cdr _e1893219006_)))
                    (if (gx#identifier? _hd1893319009_)
                        (if (gx#stx-eq? '%#ref _hd1893319009_)
                            (if (gx#stx-pair? _tl1893419011_)
                                (let ((_e1893519014_
                                       (gx#stx-e _tl1893419011_)))
                                  (let ((_hd1893619017_ (##car _e1893519014_))
                                        (_tl1893719019_ (##cdr _e1893519014_)))
                                    (if (gx#stx-null? _tl1893719019_)
                                        (if (gx#stx-pair? _tl1893119003_)
                                            (let ((_e1893819022_
                                                   (gx#stx-e _tl1893119003_)))
                                              (let ((_hd1893919025_
                                                     (##car _e1893819022_))
                                                    (_tl1894019027_
                                                     (##cdr _e1893819022_)))
                                                (if (gx#stx-null?
                                                     _tl1894019027_)
                                                    (if (gx#stx-null?
                                                         _tl1891618963_)
                                                        ((lambda (_L19030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19031_
                          _L19032_)
                   (gxc#generate-runtime-binding-id _L19030_))
                 _hd1893619017_
                 _hd1892718993_
                 _hd1891218953_)
                (_g1882118945_ _g1882218948_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1882118945_
                                                     _g1882218948_))))
                                            (_g1882118945_ _g1882218948_))
                                        (_g1882118945_ _g1882218948_))))
                                (_g1882118945_ _g1882218948_))
                            (_g1882118945_ _g1882218948_))
                        (_g1882118945_ _g1882218948_))))
                (_g1882118945_ _g1882218948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1882118945_ _g1882218948_))
                                            (_g1882118945_ _g1882218948_))))
                                    (_g1882118945_ _g1882218948_))
                                (_g1882118945_ _g1882218948_))
                            (_g1882118945_ _g1882218948_))))
                    (_g1882118945_ _g1882218948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1882118945_
                                                     _g1882218948_))
                                                (_g1882118945_ _g1882218948_))
                                            (_g1882118945_ _g1882218948_))))
                                    (_g1882118945_ _g1882218948_))))
                            (_g1882118945_ _g1882218948_))))
                    (_g1882118945_ _g1882218948_))))
             (_g1881919198_
              (lambda (_g1882219065_)
                (if (gx#stx-pair? _g1882219065_)
                    (let ((_e1887219067_ (gx#stx-e _g1882219065_)))
                      (let ((_hd1887319070_ (##car _e1887219067_))
                            (_tl1887419072_ (##cdr _e1887219067_)))
                        (if (gx#stx-pair/null? _hd1887319070_)
                            (if (fx>= (gx#stx-length _hd1887319070_) '0)
                                (let ((_g21295_
                                       (gx#syntax-split-splice
                                        _hd1887319070_
                                        '0)))
                                  (begin
                                    (let ((_g21296_ (values-count _g21295_)))
                                      (if (not (fx= _g21296_ 2))
                                          (error "Context expects 2 values"
                                                 _g21296_)))
                                    (let ((_target1887519075_
                                           (values-ref _g21295_ 0))
                                          (_tl1887719077_
                                           (values-ref _g21295_ 1)))
                                      (letrec ((_loop1887819080_
                                                (lambda (_hd1887619083_
                                                         _arg1888219085_)
                                                  (if (gx#stx-pair?
                                                       _hd1887619083_)
                                                      (let ((_e1887919088_
                                                             (gx#stx-e
                                                              _hd1887619083_)))
                                                        (let ((_lp-hd1888019091_
                                                               (##car _e1887919088_))
                                                              (_lp-tl1888119093_
                                                               (##cdr _e1887919088_)))
                                                          (_loop1887819080_
                                                           _lp-tl1888119093_
                                                           (cons _lp-hd1888019091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1888219085_))))
              (let ((_arg1888319096_ (reverse _arg1888219085_)))
                (if (gx#stx-pair? _tl1887419072_)
                    (let ((_e1888419099_ (gx#stx-e _tl1887419072_)))
                      (let ((_hd1888519102_ (##car _e1888419099_))
                            (_tl1888619104_ (##cdr _e1888419099_)))
                        (if (gx#stx-pair? _hd1888519102_)
                            (let ((_e1888719107_ (gx#stx-e _hd1888519102_)))
                              (let ((_hd1888819110_ (##car _e1888719107_))
                                    (_tl1888919112_ (##cdr _e1888719107_)))
                                (if (gx#identifier? _hd1888819110_)
                                    (if (gx#stx-eq? '%#call _hd1888819110_)
                                        (if (gx#stx-pair? _tl1888919112_)
                                            (let ((_e1889019115_
                                                   (gx#stx-e _tl1888919112_)))
                                              (let ((_hd1889119118_
                                                     (##car _e1889019115_))
                                                    (_tl1889219120_
                                                     (##cdr _e1889019115_)))
                                                (if (gx#stx-pair?
                                                     _hd1889119118_)
                                                    (let ((_e1889319123_
                                                           (gx#stx-e
                                                            _hd1889119118_)))
                                                      (let ((_hd1889419126_
                                                             (##car _e1889319123_))
                                                            (_tl1889519128_
                                                             (##cdr _e1889319123_)))
                                                        (if (gx#identifier?
                                                             _hd1889419126_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1889419126_)
                        (if (gx#stx-pair? _tl1889519128_)
                            (let ((_e1889619131_ (gx#stx-e _tl1889519128_)))
                              (let ((_hd1889719134_ (##car _e1889619131_))
                                    (_tl1889819136_ (##cdr _e1889619131_)))
                                (if (gx#stx-null? _tl1889819136_)
                                    (if (gx#stx-pair? _tl1889219120_)
                                        (let ((_e1889919139_
                                               (gx#stx-e _tl1889219120_)))
                                          (let ((_hd1890019142_
                                                 (##car _e1889919139_))
                                                (_tl1890119144_
                                                 (##cdr _e1889919139_)))
                                            (if (gx#stx-pair? _hd1890019142_)
                                                (let ((_e1890219147_
                                                       (gx#stx-e
                                                        _hd1890019142_)))
                                                  (let ((_hd1890319150_
                                                         (##car _e1890219147_))
                                                        (_tl1890419152_
                                                         (##cdr _e1890219147_)))
                                                    (if (gx#identifier?
                                                         _hd1890319150_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1890319150_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1890419152_)
                        (let ((_e1890519155_ (gx#stx-e _tl1890419152_)))
                          (let ((_hd1890619158_ (##car _e1890519155_))
                                (_tl1890719160_ (##cdr _e1890519155_)))
                            (if (gx#stx-null? _tl1890719160_)
                                (if (gx#stx-null? _tl1888619104_)
                                    ((lambda (_L19163_
                                              _L19164_
                                              _L19165_
                                              _L19166_)
                                       (gxc#generate-runtime-binding-id
                                        _L19163_))
                                     _hd1890619158_
                                     _hd1889719134_
                                     _tl1887719077_
                                     _arg1888319096_)
                                    (_g1882019062_ _g1882219065_))
                                (_g1882019062_ _g1882219065_))))
                        (_g1882019062_ _g1882219065_))
                    (_g1882019062_ _g1882219065_))
                (_g1882019062_ _g1882219065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1882019062_
                                                 _g1882219065_))))
                                        (_g1882019062_ _g1882219065_))
                                    (_g1882019062_ _g1882219065_))))
                            (_g1882019062_ _g1882219065_))
                        (_g1882019062_ _g1882219065_))
                    (_g1882019062_ _g1882219065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1882019062_
                                                     _g1882219065_))))
                                            (_g1882019062_ _g1882219065_))
                                        (_g1882019062_ _g1882219065_))
                                    (_g1882019062_ _g1882219065_))))
                            (_g1882019062_ _g1882219065_))))
                    (_g1882019062_ _g1882219065_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1887819080_
                                         _target1887519075_
                                         '())))))
                                (_g1882019062_ _g1882219065_))
                            (_g1882019062_ _g1882219065_))))
                    (_g1882019062_ _g1882219065_))))
             (_g1881819346_
              (lambda (_g1882219201_)
                (if (gx#stx-pair? _g1882219201_)
                    (let ((_e1882619203_ (gx#stx-e _g1882219201_)))
                      (let ((_hd1882719206_ (##car _e1882619203_))
                            (_tl1882819208_ (##cdr _e1882619203_)))
                        (if (gx#stx-pair/null? _hd1882719206_)
                            (if (fx>= (gx#stx-length _hd1882719206_) '0)
                                (let ((_g21297_
                                       (gx#syntax-split-splice
                                        _hd1882719206_
                                        '0)))
                                  (begin
                                    (let ((_g21298_ (values-count _g21297_)))
                                      (if (not (fx= _g21298_ 2))
                                          (error "Context expects 2 values"
                                                 _g21298_)))
                                    (let ((_target1882919211_
                                           (values-ref _g21297_ 0))
                                          (_tl1883119213_
                                           (values-ref _g21297_ 1)))
                                      (if (gx#stx-null? _tl1883119213_)
                                          (letrec ((_loop1883219216_
                                                    (lambda (_hd1883019219_
                                                             _arg1883619221_)
                                                      (if (gx#stx-pair?
                                                           _hd1883019219_)
                                                          (let ((_e1883319224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1883019219_)))
                    (let ((_lp-hd1883419227_ (##car _e1883319224_))
                          (_lp-tl1883519229_ (##cdr _e1883319224_)))
                      (_loop1883219216_
                       _lp-tl1883519229_
                       (cons _lp-hd1883419227_ _arg1883619221_))))
                  (let ((_arg1883719232_ (reverse _arg1883619221_)))
                    (if (gx#stx-pair? _tl1882819208_)
                        (let ((_e1883819235_ (gx#stx-e _tl1882819208_)))
                          (let ((_hd1883919238_ (##car _e1883819235_))
                                (_tl1884019240_ (##cdr _e1883819235_)))
                            (if (gx#stx-pair? _hd1883919238_)
                                (let ((_e1884119243_
                                       (gx#stx-e _hd1883919238_)))
                                  (let ((_hd1884219246_ (##car _e1884119243_))
                                        (_tl1884319248_ (##cdr _e1884119243_)))
                                    (if (gx#identifier? _hd1884219246_)
                                        (if (gx#stx-eq? '%#call _hd1884219246_)
                                            (if (gx#stx-pair? _tl1884319248_)
                                                (let ((_e1884419251_
                                                       (gx#stx-e
                                                        _tl1884319248_)))
                                                  (let ((_hd1884519254_
                                                         (##car _e1884419251_))
                                                        (_tl1884619256_
                                                         (##cdr _e1884419251_)))
                                                    (if (gx#stx-pair?
                                                         _hd1884519254_)
                                                        (let ((_e1884719259_
                                                               (gx#stx-e
                                                                _hd1884519254_)))
                                                          (let ((_hd1884819262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1884719259_))
                        (_tl1884919264_ (##cdr _e1884719259_)))
                    (if (gx#identifier? _hd1884819262_)
                        (if (gx#stx-eq? '%#ref _hd1884819262_)
                            (if (gx#stx-pair? _tl1884919264_)
                                (let ((_e1885019267_
                                       (gx#stx-e _tl1884919264_)))
                                  (let ((_hd1885119270_ (##car _e1885019267_))
                                        (_tl1885219272_ (##cdr _e1885019267_)))
                                    (if (gx#stx-null? _tl1885219272_)
                                        (if (gx#stx-pair/null? _tl1884619256_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1884619256_)
                                                      '0)
                                                (let ((_g21299_
                                                       (gx#syntax-split-splice
                                                        _tl1884619256_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21300_
                                                           (values-count
                                                            _g21299_)))
                                                      (if (not (fx= _g21300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g21300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1885319275_
                                                           (values-ref
                                                            _g21299_
                                                            0))
                                                          (_tl1885519277_
                                                           (values-ref
                                                            _g21299_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1885519277_)
                                                          (letrec ((_loop1885619280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1885419283_ _xarg1886019285_)
                              (if (gx#stx-pair? _hd1885419283_)
                                  (let ((_e1885719288_
                                         (gx#stx-e _hd1885419283_)))
                                    (let ((_lp-hd1885819291_
                                           (##car _e1885719288_))
                                          (_lp-tl1885919293_
                                           (##cdr _e1885719288_)))
                                      (if (gx#stx-pair? _lp-hd1885819291_)
                                          (let ((_e1886219296_
                                                 (gx#stx-e _lp-hd1885819291_)))
                                            (let ((_hd1886319299_
                                                   (##car _e1886219296_))
                                                  (_tl1886419301_
                                                   (##cdr _e1886219296_)))
                                              (if (gx#identifier?
                                                   _hd1886319299_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1886319299_)
                                                      (if (gx#stx-pair?
                                                           _tl1886419301_)
                                                          (let ((_e1886519304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1886419301_)))
                    (let ((_hd1886619307_ (##car _e1886519304_))
                          (_tl1886719309_ (##cdr _e1886519304_)))
                      (if (gx#stx-null? _tl1886719309_)
                          (_loop1885619280_
                           _lp-tl1885919293_
                           (cons _hd1886619307_ _xarg1886019285_))
                          (_g1881919198_ _g1882219201_))))
                  (_g1881919198_ _g1882219201_))
              (_g1881919198_ _g1882219201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1881919198_
                                                   _g1882219201_))))
                                          (_g1881919198_ _g1882219201_))))
                                  (let ((_xarg1886119312_
                                         (reverse _xarg1886019285_)))
                                    (if (gx#stx-null? _tl1884019240_)
                                        ((lambda (_L19315_ _L19316_ _L19317_)
                                           (gxc#generate-runtime-binding-id
                                            _L19316_))
                                         _xarg1886119312_
                                         _hd1885119270_
                                         _arg1883719232_)
                                        (_g1881919198_ _g1882219201_)))))))
                    (_loop1885619280_ _target1885319275_ '()))
                  (_g1881919198_ _g1882219201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1881919198_ _g1882219201_))
                                            (_g1881919198_ _g1882219201_))
                                        (_g1881919198_ _g1882219201_))))
                                (_g1881919198_ _g1882219201_))
                            (_g1881919198_ _g1882219201_))
                        (_g1881919198_ _g1882219201_))))
                (_g1881919198_ _g1882219201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1881919198_ _g1882219201_))
                                            (_g1881919198_ _g1882219201_))
                                        (_g1881919198_ _g1882219201_))))
                                (_g1881919198_ _g1882219201_))))
                        (_g1881919198_ _g1882219201_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1883219216_
                                             _target1882919211_
                                             '()))
                                          (_g1881919198_ _g1882219201_)))))
                                (_g1881919198_ _g1882219201_))
                            (_g1881919198_ _g1882219201_))))
                    (_g1881919198_ _g1882219201_)))))
        (_g1881819346_ _form18817_))))
  (define gxc#lambda-form-arity
    (lambda (_form18621_)
      (let* ((_g1862318637_
              (lambda (_g1862418634_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1862418634_)))
             (_g1862218814_
              (lambda (_g1862418640_)
                (if (gx#stx-pair? _g1862418640_)
                    (let ((_e1862718642_ (gx#stx-e _g1862418640_)))
                      (let ((_hd1862818645_ (##car _e1862718642_))
                            (_tl1862918647_ (##cdr _e1862718642_)))
                        (if (gx#stx-pair? _tl1862918647_)
                            (let ((_e1863018650_ (gx#stx-e _tl1862918647_)))
                              (let ((_hd1863118653_ (##car _e1863018650_))
                                    (_tl1863218655_ (##cdr _e1863018650_)))
                                (if (gx#stx-null? _tl1863218655_)
                                    ((lambda (_L18658_ _L18659_)
                                       (let* ((_g1867418702_
                                               (lambda (_g1867518699_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1867518699_)))
                                              (_g1867318715_
                                               (lambda (_g1867518705_)
                                                 ((lambda (_L18707_)
                                                    (cons '0 '()))
                                                  _g1867518705_)))
                                              (_g1867218764_
                                               (lambda (_g1867518718_)
                                                 (if (gx#stx-pair/null?
                                                      _g1867518718_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1867518718_)
                                                               '0)
                                                         (let ((_g21301_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1867518718_
                         '0)))
                   (begin
                     (let ((_g21302_ (values-count _g21301_)))
                       (if (not (fx= _g21302_ 2))
                           (error "Context expects 2 values" _g21302_)))
                     (let ((_target1868818720_ (values-ref _g21301_ 0))
                           (_tl1869018722_ (values-ref _g21301_ 1)))
                       (letrec ((_loop1869118725_
                                 (lambda (_hd1868918728_ _arg1869518730_)
                                   (if (gx#stx-pair? _hd1868918728_)
                                       (let ((_e1869218733_
                                              (gx#stx-e _hd1868918728_)))
                                         (let ((_lp-hd1869318736_
                                                (##car _e1869218733_))
                                               (_lp-tl1869418738_
                                                (##cdr _e1869218733_)))
                                           (_loop1869118725_
                                            _lp-tl1869418738_
                                            (cons _lp-hd1869318736_
                                                  _arg1869518730_))))
                                       (let ((_arg1869618741_
                                              (reverse _arg1869518730_)))
                                         ((lambda (_L18744_ _L18745_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1875618759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1875718761_)
                              (cons _g1875618759_ _g1875718761_))
                            '()
                            _L18745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl1869018722_
                                          _arg1869618741_))))))
                         (_loop1869118725_ _target1868818720_ '())))))
                 (_g1867318715_ _g1867518718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1867318715_
                                                      _g1867518718_))))
                                              (_g1867118811_
                                               (lambda (_g1867518767_)
                                                 (if (gx#stx-pair/null?
                                                      _g1867518767_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1867518767_)
                                                               '0)
                                                         (let ((_g21303_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1867518767_
                         '0)))
                   (begin
                     (let ((_g21304_ (values-count _g21303_)))
                       (if (not (fx= _g21304_ 2))
                           (error "Context expects 2 values" _g21304_)))
                     (let ((_target1867718769_ (values-ref _g21303_ 0))
                           (_tl1867918771_ (values-ref _g21303_ 1)))
                       (if (gx#stx-null? _tl1867918771_)
                           (letrec ((_loop1868018774_
                                     (lambda (_hd1867818777_ _arg1868418779_)
                                       (if (gx#stx-pair? _hd1867818777_)
                                           (let ((_e1868118782_
                                                  (gx#stx-e _hd1867818777_)))
                                             (let ((_lp-hd1868218785_
                                                    (##car _e1868118782_))
                                                   (_lp-tl1868318787_
                                                    (##cdr _e1868118782_)))
                                               (_loop1868018774_
                                                _lp-tl1868318787_
                                                (cons _lp-hd1868218785_
                                                      _arg1868418779_))))
                                           (let ((_arg1868518790_
                                                  (reverse _arg1868418779_)))
                                             ((lambda (_L18793_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1880318806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1880418808_)
                            (cons _g1880318806_ _g1880418808_))
                          '()
                          _L18793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg1868518790_))))))
                             (_loop1868018774_ _target1867718769_ '()))
                           (_g1867218764_ _g1867518767_)))))
                 (_g1867218764_ _g1867518767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1867218764_
                                                      _g1867518767_)))))
                                         (_g1867118811_ _L18659_)))
                                     _hd1863118653_
                                     _hd1862818645_)
                                    (_g1862318637_ _g1862418640_))))
                            (_g1862318637_ _g1862418640_))))
                    (_g1862318637_ _g1862418640_)))))
        (_g1862218814_ _form18621_))))
  (define gxc#lambda-expr?
    (lambda (_expr18574_)
      (let* ((_g1857718587_
              (lambda (_g1857818584_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1857818584_)))
             (_g1857618594_ (lambda (_g1857818590_) ((lambda () '#f))))
             (_g1857518618_
              (lambda (_g1857818597_)
                (if (gx#stx-pair? _g1857818597_)
                    (let ((_e1858018599_ (gx#stx-e _g1857818597_)))
                      (let ((_hd1858118602_ (##car _e1858018599_))
                            (_tl1858218604_ (##cdr _e1858018599_)))
                        (if (gx#identifier? _hd1858118602_)
                            (if (gx#stx-eq? '%#lambda _hd1858118602_)
                                ((lambda (_L18607_) '#t) _tl1858218604_)
                                (_g1857618594_ _g1857818597_))
                            (_g1857618594_ _g1857818597_))))
                    (_g1857618594_ _g1857818597_)))))
        (_g1857518618_ _expr18574_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr18527_)
      (let* ((_g1853018540_
              (lambda (_g1853118537_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1853118537_)))
             (_g1852918547_ (lambda (_g1853118543_) ((lambda () '#f))))
             (_g1852818571_
              (lambda (_g1853118550_)
                (if (gx#stx-pair? _g1853118550_)
                    (let ((_e1853318552_ (gx#stx-e _g1853118550_)))
                      (let ((_hd1853418555_ (##car _e1853318552_))
                            (_tl1853518557_ (##cdr _e1853318552_)))
                        (if (gx#identifier? _hd1853418555_)
                            (if (gx#stx-eq? '%#case-lambda _hd1853418555_)
                                ((lambda (_L18560_) '#t) _tl1853518557_)
                                (_g1852918547_ _g1853118550_))
                            (_g1852918547_ _g1853118550_))))
                    (_g1852918547_ _g1853118550_)))))
        (_g1852818571_ _expr18527_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr18396_)
      (let* ((_g1839918429_
              (lambda (_g1840018426_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1840018426_)))
             (_g1839818436_ (lambda (_g1840018432_) ((lambda () '#f))))
             (_g1839718524_
              (lambda (_g1840018439_)
                (if (gx#stx-pair? _g1840018439_)
                    (let ((_e1840418441_ (gx#stx-e _g1840018439_)))
                      (let ((_hd1840518444_ (##car _e1840418441_))
                            (_tl1840618446_ (##cdr _e1840418441_)))
                        (if (gx#identifier? _hd1840518444_)
                            (if (gx#stx-eq? '%#let-values _hd1840518444_)
                                (if (gx#stx-pair? _tl1840618446_)
                                    (let ((_e1840718449_
                                           (gx#stx-e _tl1840618446_)))
                                      (let ((_hd1840818452_
                                             (##car _e1840718449_))
                                            (_tl1840918454_
                                             (##cdr _e1840718449_)))
                                        (if (gx#stx-pair? _hd1840818452_)
                                            (let ((_e1841018457_
                                                   (gx#stx-e _hd1840818452_)))
                                              (let ((_hd1841118460_
                                                     (##car _e1841018457_))
                                                    (_tl1841218462_
                                                     (##cdr _e1841018457_)))
                                                (if (gx#stx-pair?
                                                     _hd1841118460_)
                                                    (let ((_e1841318465_
                                                           (gx#stx-e
                                                            _hd1841118460_)))
                                                      (let ((_hd1841418468_
                                                             (##car _e1841318465_))
                                                            (_tl1841518470_
                                                             (##cdr _e1841318465_)))
                                                        (if (gx#stx-pair?
                                                             _hd1841418468_)
                                                            (let ((_e1841618473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1841418468_)))
                      (let ((_hd1841718476_ (##car _e1841618473_))
                            (_tl1841818478_ (##cdr _e1841618473_)))
                        (if (gx#stx-null? _tl1841818478_)
                            (if (gx#stx-pair? _tl1841518470_)
                                (let ((_e1841918481_
                                       (gx#stx-e _tl1841518470_)))
                                  (let ((_hd1842018484_ (##car _e1841918481_))
                                        (_tl1842118486_ (##cdr _e1841918481_)))
                                    (if (gx#stx-null? _tl1842118486_)
                                        (if (gx#stx-null? _tl1841218462_)
                                            (if (gx#stx-pair? _tl1840918454_)
                                                (let ((_e1842218489_
                                                       (gx#stx-e
                                                        _tl1840918454_)))
                                                  (let ((_hd1842318492_
                                                         (##car _e1842218489_))
                                                        (_tl1842418494_
                                                         (##cdr _e1842218489_)))
                                                    (if (gx#stx-null?
                                                         _tl1842418494_)
                                                        ((lambda (_L18497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18498_
                          _L18499_)
                   (if (gx#identifier? _L18499_)
                       (if (gxc#lambda-expr? _L18498_)
                           (gxc#case-lambda-expr? _L18497_)
                           '#f)
                       '#f))
                 _hd1842318492_
                 _hd1842018484_
                 _hd1841718476_)
                (_g1839818436_ _g1840018439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1839818436_ _g1840018439_))
                                            (_g1839818436_ _g1840018439_))
                                        (_g1839818436_ _g1840018439_))))
                                (_g1839818436_ _g1840018439_))
                            (_g1839818436_ _g1840018439_))))
                    (_g1839818436_ _g1840018439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1839818436_
                                                     _g1840018439_))))
                                            (_g1839818436_ _g1840018439_))))
                                    (_g1839818436_ _g1840018439_))
                                (_g1839818436_ _g1840018439_))
                            (_g1839818436_ _g1840018439_))))
                    (_g1839818436_ _g1840018439_)))))
        (_g1839718524_ _expr18396_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda18136
      (lambda (_stx18138_ _id18139_ _clauses18140_ _gensym?18141_)
        (let _lp18143_ ((_rest18145_ _clauses18140_)
                        (_ids18146_ '())
                        (_impls18147_ '())
                        (_clauses18148_ '()))
          (let* ((_rest1814918157_ _rest18145_)
                 (_E1815218161_
                  (lambda () (error '"No clause matching" _rest1814918157_)))
                 (_else1815118165_
                  (lambda ()
                    (values (reverse _ids18146_)
                            (reverse _impls18147_)
                            (reverse _clauses18148_))))
                 (_K1815318370_
                  (lambda (_rest18168_ _clause18169_)
                    (if (gxc#dispatch-lambda-form? _clause18169_)
                        (_lp18143_
                         _rest18168_
                         _ids18146_
                         _impls18147_
                         (cons _clause18169_ _clauses18148_))
                        (let* ((_g1817118182_
                                (lambda (_g1817218179_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1817218179_)))
                               (_g1817018367_
                                (lambda (_g1817218185_)
                                  (if (gx#stx-pair? _g1817218185_)
                                      (let ((_e1817518187_
                                             (gx#stx-e _g1817218185_)))
                                        (let ((_hd1817618190_
                                               (##car _e1817518187_))
                                              (_tl1817718192_
                                               (##cdr _e1817518187_)))
                                          ((lambda (_L18195_ _L18196_)
                                             (let* ((_id18213_
                                                     (make-symbol
                                                      (gx#stx-e _id18139_)
                                                      '"__"
                                                      (length _clauses18148_)
                                                      (if _gensym?18141_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id18215_
                                                     (gx#core-quote-syntax__1
                                                      _id18213_
                                                      (gx#stx-source
                                                       _stx18138_)))
                                                    (_impl18217_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L18196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18195_))
              _stx18138_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause18364_
                                                     (let* ((_g1822118249_
                                                             (lambda (_g1822218246_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1822218246_)))
                                                            (_g1822018265_
                                                             (lambda (_g1822218252_)
                                                               ((lambda (_L18254_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L18196_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id18215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L18254_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx18138_)
                                      '())))
                        _g1822218252_)))
                    (_g1821918314_
                     (lambda (_g1822218268_)
                       (if (gx#stx-pair/null? _g1822218268_)
                           (if (fx>= (gx#stx-length _g1822218268_) '0)
                               (let ((_g21305_
                                      (gx#syntax-split-splice
                                       _g1822218268_
                                       '0)))
                                 (begin
                                   (let ((_g21306_ (values-count _g21305_)))
                                     (if (not (fx= _g21306_ 2))
                                         (error "Context expects 2 values"
                                                _g21306_)))
                                   (let ((_target1823518270_
                                          (values-ref _g21305_ 0))
                                         (_tl1823718272_
                                          (values-ref _g21305_ 1)))
                                     (letrec ((_loop1823818275_
                                               (lambda (_hd1823618278_
                                                        _arg1824218280_)
                                                 (if (gx#stx-pair?
                                                      _hd1823618278_)
                                                     (let ((_e1823918283_
                                                            (gx#stx-e
                                                             _hd1823618278_)))
                                                       (let ((_lp-hd1824018286_
                                                              (##car _e1823918283_))
                                                             (_lp-tl1824118288_
                                                              (##cdr _e1823918283_)))
                                                         (_loop1823818275_
                                                          _lp-tl1824118288_
                                                          (cons _lp-hd1824018286_
                                                                _arg1824218280_))))
                                                     (let ((_arg1824318291_
                                                            (reverse _arg1824218280_)))
                                                       ((lambda (_L18294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18295_)
                  (cons _L18196_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id18215_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L18294_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g1830618309_ _g1830718311_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g1830618309_ '()))
                                   _g1830718311_))
                           '()
                           _L18295_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx18138_)
                              '())))
                _tl1823718272_
                _arg1824318291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1823818275_
                                        _target1823518270_
                                        '())))))
                               (_g1822018265_ _g1822218268_))
                           (_g1822018265_ _g1822218268_))))
                    (_g1821818361_
                     (lambda (_g1822218317_)
                       (if (gx#stx-pair/null? _g1822218317_)
                           (if (fx>= (gx#stx-length _g1822218317_) '0)
                               (let ((_g21307_
                                      (gx#syntax-split-splice
                                       _g1822218317_
                                       '0)))
                                 (begin
                                   (let ((_g21308_ (values-count _g21307_)))
                                     (if (not (fx= _g21308_ 2))
                                         (error "Context expects 2 values"
                                                _g21308_)))
                                   (let ((_target1822418319_
                                          (values-ref _g21307_ 0))
                                         (_tl1822618321_
                                          (values-ref _g21307_ 1)))
                                     (if (gx#stx-null? _tl1822618321_)
                                         (letrec ((_loop1822718324_
                                                   (lambda (_hd1822518327_
                                                            _arg1823118329_)
                                                     (if (gx#stx-pair?
                                                          _hd1822518327_)
                                                         (let ((_e1822818332_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1822518327_)))
                   (let ((_lp-hd1822918335_ (##car _e1822818332_))
                         (_lp-tl1823018337_ (##cdr _e1822818332_)))
                     (_loop1822718324_
                      _lp-tl1823018337_
                      (cons _lp-hd1822918335_ _arg1823118329_))))
                 (let ((_arg1823218340_ (reverse _arg1823118329_)))
                   ((lambda (_L18343_)
                      (cons _L18196_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id18215_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g1835318356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1835418358_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g1835318356_ '()))
                         _g1835418358_))
                 '()
                 _L18343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx18138_)
                                  '())))
                    _arg1823218340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1822718324_
                                            _target1822418319_
                                            '()))
                                         (_g1821918314_ _g1822218317_)))))
                               (_g1821918314_ _g1822218317_))
                           (_g1821918314_ _g1822218317_)))))
               (_g1821818361_ _L18196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp18143_
                                                _rest18168_
                                                (cons _id18215_ _ids18146_)
                                                (cons _impl18217_ _impls18147_)
                                                (cons _clause18364_
                                                      _clauses18148_))))
                                           _tl1817718192_
                                           _hd1817618190_)))
                                      (_g1817118182_ _g1817218185_)))))
                          (_g1817018367_ _clause18169_))))))
            (if (##pair? _rest1814918157_)
                (let ((_hd1815418373_ (##car _rest1814918157_))
                      (_tl1815518375_ (##cdr _rest1814918157_)))
                  (let* ((_clause18378_ _hd1815418373_)
                         (_rest18380_ _tl1815518375_))
                    (_K1815318370_ _rest18380_ _clause18378_)))
                (_else1815118165_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx18385_ _id18386_ _clauses18387_)
          (let ((_gensym?18389_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda18136
             _stx18385_
             _id18386_
             _clauses18387_
             _gensym?18389_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g21310_
          (let ((_g21309_ (length _g21310_)))
            (cond ((fx= _g21309_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g21310_))
                  ((fx= _g21309_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda18136
                          _g21310_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g21310_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx17727_)
      (letrec ((_case-lambda-clause-def17729_
                (lambda (_id18134_ _impl18135_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id18134_ '())
                               (cons (gxc#compile-e _impl18135_) '())))
                   _stx17727_))))
        (let* ((_g1773317778_
                (lambda (_g1773417775_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1773417775_)))
               (_g1773217824_
                (lambda (_g1773417781_)
                  (if (gx#stx-pair? _g1773417781_)
                      (let ((_e1776517783_ (gx#stx-e _g1773417781_)))
                        (let ((_hd1776617786_ (##car _e1776517783_))
                              (_tl1776717788_ (##cdr _e1776517783_)))
                          (if (gx#stx-pair? _tl1776717788_)
                              (let ((_e1776817791_ (gx#stx-e _tl1776717788_)))
                                (let ((_hd1776917794_ (##car _e1776817791_))
                                      (_tl1777017796_ (##cdr _e1776817791_)))
                                  (if (gx#stx-pair? _tl1777017796_)
                                      (let ((_e1777117799_
                                             (gx#stx-e _tl1777017796_)))
                                        (let ((_hd1777217802_
                                               (##car _e1777117799_))
                                              (_tl1777317804_
                                               (##cdr _e1777117799_)))
                                          (if (gx#stx-null? _tl1777317804_)
                                              ((lambda (_L17807_ _L17808_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17808_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17807_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17727_))
                                               _hd1777217802_
                                               _hd1776917794_)
                                              (_g1773317778_ _g1773417781_))))
                                      (_g1773317778_ _g1773417781_))))
                              (_g1773317778_ _g1773417781_))))
                      (_g1773317778_ _g1773417781_))))
               (_g1773118006_
                (lambda (_g1773417827_)
                  (if (gx#stx-pair? _g1773417827_)
                      (let ((_e1775117829_ (gx#stx-e _g1773417827_)))
                        (let ((_hd1775217832_ (##car _e1775117829_))
                              (_tl1775317834_ (##cdr _e1775117829_)))
                          (if (gx#stx-pair? _tl1775317834_)
                              (let ((_e1775417837_ (gx#stx-e _tl1775317834_)))
                                (let ((_hd1775517840_ (##car _e1775417837_))
                                      (_tl1775617842_ (##cdr _e1775417837_)))
                                  (if (gx#stx-pair? _hd1775517840_)
                                      (let ((_e1775717845_
                                             (gx#stx-e _hd1775517840_)))
                                        (let ((_hd1775817848_
                                               (##car _e1775717845_))
                                              (_tl1775917850_
                                               (##cdr _e1775717845_)))
                                          (if (gx#stx-null? _tl1775917850_)
                                              (if (gx#stx-pair? _tl1775617842_)
                                                  (let ((_e1776017853_
                                                         (gx#stx-e
                                                          _tl1775617842_)))
                                                    (let ((_hd1776117856_
                                                           (##car _e1776017853_))
                                                          (_tl1776217858_
                                                           (##cdr _e1776017853_)))
                                                      (if (gx#stx-null?
                                                           _tl1776217858_)
                                                          ((lambda (_L17861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17862_)
                     (if (if (gx#identifier? _L17862_)
                             (gxc#opt-lambda-expr? _L17861_)
                             '#f)
                         (let* ((_g1787817908_
                                 (lambda (_g1787917905_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1787917905_)))
                                (_g1787718003_
                                 (lambda (_g1787917911_)
                                   (if (gx#stx-pair? _g1787917911_)
                                       (let ((_e1788317913_
                                              (gx#stx-e _g1787917911_)))
                                         (let ((_hd1788417916_
                                                (##car _e1788317913_))
                                               (_tl1788517918_
                                                (##cdr _e1788317913_)))
                                           (if (gx#stx-pair? _tl1788517918_)
                                               (let ((_e1788617921_
                                                      (gx#stx-e
                                                       _tl1788517918_)))
                                                 (let ((_hd1788717924_
                                                        (##car _e1788617921_))
                                                       (_tl1788817926_
                                                        (##cdr _e1788617921_)))
                                                   (if (gx#stx-pair?
                                                        _hd1788717924_)
                                                       (let ((_e1788917929_
                                                              (gx#stx-e
                                                               _hd1788717924_)))
                                                         (let ((_hd1789017932_
                                                                (##car _e1788917929_))
                                                               (_tl1789117934_
                                                                (##cdr _e1788917929_)))
                                                           (if (gx#stx-pair?
                                                                _hd1789017932_)
                                                               (let ((_e1789217937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1789017932_)))
                         (let ((_hd1789317940_ (##car _e1789217937_))
                               (_tl1789417942_ (##cdr _e1789217937_)))
                           (if (gx#stx-pair? _hd1789317940_)
                               (let ((_e1789517945_ (gx#stx-e _hd1789317940_)))
                                 (let ((_hd1789617948_ (##car _e1789517945_))
                                       (_tl1789717950_ (##cdr _e1789517945_)))
                                   (if (gx#stx-null? _tl1789717950_)
                                       (if (gx#stx-pair? _tl1789417942_)
                                           (let ((_e1789817953_
                                                  (gx#stx-e _tl1789417942_)))
                                             (let ((_hd1789917956_
                                                    (##car _e1789817953_))
                                                   (_tl1790017958_
                                                    (##cdr _e1789817953_)))
                                               (if (gx#stx-null?
                                                    _tl1790017958_)
                                                   (if (gx#stx-null?
                                                        _tl1789117934_)
                                                       (if (gx#stx-pair?
                                                            _tl1788817926_)
                                                           (let ((_e1790117961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1788817926_)))
                     (let ((_hd1790217964_ (##car _e1790117961_))
                           (_tl1790317966_ (##cdr _e1790117961_)))
                       (if (gx#stx-null? _tl1790317966_)
                           ((lambda (_L17969_ _L17970_ _L17971_)
                              (let* ((_lambda-id17995_
                                      (make-symbol
                                       (gx#stx-e _L17862_)
                                       '"__"
                                       (gx#stx-e _L17971_)))
                                     (_lambda-id17997_
                                      (gx#core-quote-syntax__1
                                       _lambda-id17995_
                                       (gx#stx-source _stx17727_)))
                                     (_g21311_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id17997_))
                                     (_new-case-lambda-expr18000_
                                      (gxc#apply-expression-subst
                                       _L17969_
                                       _L17971_
                                       _lambda-id17997_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L17862_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id17997_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id17997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L17970_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx17727_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L17862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr18000_ '())))
               _stx17727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx17727_))))
                            _hd1790217964_
                            _hd1789917956_
                            _hd1789617948_)
                           (_g1787817908_ _g1787917911_))))
                   (_g1787817908_ _g1787917911_))
               (_g1787817908_ _g1787917911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1787817908_
                                                    _g1787917911_))))
                                           (_g1787817908_ _g1787917911_))
                                       (_g1787817908_ _g1787917911_))))
                               (_g1787817908_ _g1787917911_))))
                       (_g1787817908_ _g1787917911_))))
               (_g1787817908_ _g1787917911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1787817908_ _g1787917911_))))
                                       (_g1787817908_ _g1787917911_)))))
                           (_g1787718003_ _L17861_))
                         (_g1773217824_ _g1773417827_)))
                   _hd1776117856_
                   _hd1775817848_)
                  (_g1773217824_ _g1773417827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1773217824_
                                                   _g1773417827_))
                                              (_g1773217824_ _g1773417827_))))
                                      (_g1773217824_ _g1773417827_))))
                              (_g1773217824_ _g1773417827_))))
                      (_g1773217824_ _g1773417827_))))
               (_g1773018131_
                (lambda (_g1773418009_)
                  (if (gx#stx-pair? _g1773418009_)
                      (let ((_e1773718011_ (gx#stx-e _g1773418009_)))
                        (let ((_hd1773818014_ (##car _e1773718011_))
                              (_tl1773918016_ (##cdr _e1773718011_)))
                          (if (gx#stx-pair? _tl1773918016_)
                              (let ((_e1774018019_ (gx#stx-e _tl1773918016_)))
                                (let ((_hd1774118022_ (##car _e1774018019_))
                                      (_tl1774218024_ (##cdr _e1774018019_)))
                                  (if (gx#stx-pair? _hd1774118022_)
                                      (let ((_e1774318027_
                                             (gx#stx-e _hd1774118022_)))
                                        (let ((_hd1774418030_
                                               (##car _e1774318027_))
                                              (_tl1774518032_
                                               (##cdr _e1774318027_)))
                                          (if (gx#stx-null? _tl1774518032_)
                                              (if (gx#stx-pair? _tl1774218024_)
                                                  (let ((_e1774618035_
                                                         (gx#stx-e
                                                          _tl1774218024_)))
                                                    (let ((_hd1774718038_
                                                           (##car _e1774618035_))
                                                          (_tl1774818040_
                                                           (##cdr _e1774618035_)))
                                                      (if (gx#stx-null?
                                                           _tl1774818040_)
                                                          ((lambda (_L18043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18044_)
                     (if (if (gx#identifier? _L18044_)
                             (gxc#case-lambda-expr? _L18043_)
                             '#f)
                         (let* ((_g1806118075_
                                 (lambda (_g1806218072_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1806218072_)))
                                (_g1806018106_
                                 (lambda (_g1806218078_)
                                   (if (gx#stx-pair? _g1806218078_)
                                       (let ((_e1806818080_
                                              (gx#stx-e _g1806218078_)))
                                         (let ((_hd1806918083_
                                                (##car _e1806818080_))
                                               (_tl1807018085_
                                                (##cdr _e1806818080_)))
                                           ((lambda (_L18088_)
                                              (let ((_g21312_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx17727_
                                                      _L18044_
                                                      _L18088_)))
                                                (begin
                                                  (let ((_g21313_
                                                         (values-count
                                                          _g21312_)))
                                                    (if (not (fx= _g21313_ 3))
                                                        (error "Context expects 3 values"
                                                               _g21313_)))
                                                  (let ((_ids18098_
                                                         (values-ref
                                                          _g21312_
                                                          0))
                                                        (_impls18099_
                                                         (values-ref
                                                          _g21312_
                                                          1))
                                                        (_clauses18100_
                                                         (values-ref
                                                          _g21312_
                                                          2)))
                                                    (let* ((_g21314_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids18098_))
                                                           (_defs18103_
                                                            (map _case-lambda-clause-def17729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids18098_
                         _impls18099_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L18044_)
                 '" => "
                 (map gxc#identifier-symbol _ids18098_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L18044_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses18100_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx17727_)
                                     '())
                               _defs18103_))
                 _stx17727_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl1807018085_)))
                                       (_g1806118075_ _g1806218078_))))
                                (_g1805918128_
                                 (lambda (_g1806218109_)
                                   (if (gx#stx-pair? _g1806218109_)
                                       (let ((_e1806418111_
                                              (gx#stx-e _g1806218109_)))
                                         (let ((_hd1806518114_
                                                (##car _e1806418111_))
                                               (_tl1806618116_
                                                (##cdr _e1806418111_)))
                                           ((lambda (_L18119_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L18119_)
                                                  _stx17727_
                                                  (_g1806018106_
                                                   _g1806218109_)))
                                            _tl1806618116_)))
                                       (_g1806018106_ _g1806218109_)))))
                           (_g1805918128_ _L18043_))
                         (_g1773118006_ _g1773418009_)))
                   _hd1774718038_
                   _hd1774418030_)
                  (_g1773118006_ _g1773418009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1773118006_
                                                   _g1773418009_))
                                              (_g1773118006_ _g1773418009_))))
                                      (_g1773118006_ _g1773418009_))))
                              (_g1773118006_ _g1773418009_))))
                      (_g1773118006_ _g1773418009_)))))
          (_g1773018131_ _stx17727_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx17150_)
      (letrec* ((_bind-e__opt-lambda17709__2126121262_
                 (lambda (_id17711_ _expr17712_ _compile?17713_)
                   (cons (cons _id17711_ '())
                         (cons (if _compile?17713_
                                   (gxc#compile-e _expr17712_)
                                   _expr17712_)
                               '()))))
                (_bind-e__0__2126321264_
                 (lambda (_id17718_ _expr17719_)
                   (let ((_compile?17721_ '#t))
                     (_bind-e__opt-lambda17709__2126121262_
                      _id17718_
                      _expr17719_
                      _compile?17721_))))
                (_bind-e17152_
                 (lambda _g21316_
                   (let ((_g21315_ (length _g21316_)))
                     (cond ((fx= _g21315_ 2)
                            (apply _bind-e__0__2126321264_ _g21316_))
                           ((fx= _g21315_ 3)
                            (apply _bind-e__opt-lambda17709__2126121262_
                                   _g21316_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g21316_))))))
                (_compile-bindings17153_
                 (lambda (_rest17295_)
                   (let _lp17297_ ((_rest17299_ _rest17295_)
                                   (_lift117300_ '())
                                   (_lift217301_ '())
                                   (_bind17302_ '()))
                     (let* ((_rest1730317311_ _rest17299_)
                            (_E1730617315_
                             (lambda ()
                               (error '"No clause matching" _rest1730317311_)))
                            (_else1730517319_
                             (lambda ()
                               (values (reverse _lift117300_)
                                       (reverse _lift217301_)
                                       (reverse _bind17302_))))
                            (_K1730717698_
                             (lambda (_rest17322_ _hd17323_)
                               (let* ((_g1732717363_
                                       (lambda (_g1732817360_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1732817360_)))
                                      (_g1732617404_
                                       (lambda (_g1732817366_)
                                         (if (gx#stx-pair? _g1732817366_)
                                             (let ((_e1735317368_
                                                    (gx#stx-e _g1732817366_)))
                                               (let ((_hd1735417371_
                                                      (##car _e1735317368_))
                                                     (_tl1735517373_
                                                      (##cdr _e1735317368_)))
                                                 (if (gx#stx-pair?
                                                      _tl1735517373_)
                                                     (let ((_e1735617376_
                                                            (gx#stx-e
                                                             _tl1735517373_)))
                                                       (let ((_hd1735717379_
                                                              (##car _e1735617376_))
                                                             (_tl1735817381_
                                                              (##cdr _e1735617376_)))
                                                         (if (gx#stx-null?
                                                              _tl1735817381_)
                                                             ((lambda (_L17384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L17385_)
                        (_lp17297_
                         _rest17322_
                         _lift117300_
                         _lift217301_
                         (cons (cons _L17385_
                                     (cons (gxc#compile-e _L17384_) '()))
                               _bind17302_)))
                      _hd1735717379_
                      _hd1735417371_)
                     (_g1732717363_ _g1732817366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1732717363_
                                                      _g1732817366_))))
                                             (_g1732717363_ _g1732817366_))))
                                      (_g1732517576_
                                       (lambda (_g1732817407_)
                                         (if (gx#stx-pair? _g1732817407_)
                                             (let ((_e1734217409_
                                                    (gx#stx-e _g1732817407_)))
                                               (let ((_hd1734317412_
                                                      (##car _e1734217409_))
                                                     (_tl1734417414_
                                                      (##cdr _e1734217409_)))
                                                 (if (gx#stx-pair?
                                                      _hd1734317412_)
                                                     (let ((_e1734517417_
                                                            (gx#stx-e
                                                             _hd1734317412_)))
                                                       (let ((_hd1734617420_
                                                              (##car _e1734517417_))
                                                             (_tl1734717422_
                                                              (##cdr _e1734517417_)))
                                                         (if (gx#stx-null?
                                                              _tl1734717422_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1734417414_)
                         (let ((_e1734817425_ (gx#stx-e _tl1734417414_)))
                           (let ((_hd1734917428_ (##car _e1734817425_))
                                 (_tl1735017430_ (##cdr _e1734817425_)))
                             (if (gx#stx-null? _tl1735017430_)
                                 ((lambda (_L17433_ _L17434_)
                                    (if (if (gx#identifier? _L17434_)
                                            (gxc#opt-lambda-expr? _L17433_)
                                            '#f)
                                        (let* ((_g1744817478_
                                                (lambda (_g1744917475_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1744917475_)))
                                               (_g1744717573_
                                                (lambda (_g1744917481_)
                                                  (if (gx#stx-pair?
                                                       _g1744917481_)
                                                      (let ((_e1745317483_
                                                             (gx#stx-e
                                                              _g1744917481_)))
                                                        (let ((_hd1745417486_
                                                               (##car _e1745317483_))
                                                              (_tl1745517488_
                                                               (##cdr _e1745317483_)))
                                                          (if (gx#stx-pair?
                                                               _tl1745517488_)
                                                              (let ((_e1745617491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1745517488_)))
                        (let ((_hd1745717494_ (##car _e1745617491_))
                              (_tl1745817496_ (##cdr _e1745617491_)))
                          (if (gx#stx-pair? _hd1745717494_)
                              (let ((_e1745917499_ (gx#stx-e _hd1745717494_)))
                                (let ((_hd1746017502_ (##car _e1745917499_))
                                      (_tl1746117504_ (##cdr _e1745917499_)))
                                  (if (gx#stx-pair? _hd1746017502_)
                                      (let ((_e1746217507_
                                             (gx#stx-e _hd1746017502_)))
                                        (let ((_hd1746317510_
                                               (##car _e1746217507_))
                                              (_tl1746417512_
                                               (##cdr _e1746217507_)))
                                          (if (gx#stx-pair? _hd1746317510_)
                                              (let ((_e1746517515_
                                                     (gx#stx-e
                                                      _hd1746317510_)))
                                                (let ((_hd1746617518_
                                                       (##car _e1746517515_))
                                                      (_tl1746717520_
                                                       (##cdr _e1746517515_)))
                                                  (if (gx#stx-null?
                                                       _tl1746717520_)
                                                      (if (gx#stx-pair?
                                                           _tl1746417512_)
                                                          (let ((_e1746817523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1746417512_)))
                    (let ((_hd1746917526_ (##car _e1746817523_))
                          (_tl1747017528_ (##cdr _e1746817523_)))
                      (if (gx#stx-null? _tl1747017528_)
                          (if (gx#stx-null? _tl1746117504_)
                              (if (gx#stx-pair? _tl1745817496_)
                                  (let ((_e1747117531_
                                         (gx#stx-e _tl1745817496_)))
                                    (let ((_hd1747217534_
                                           (##car _e1747117531_))
                                          (_tl1747317536_
                                           (##cdr _e1747117531_)))
                                      (if (gx#stx-null? _tl1747317536_)
                                          ((lambda (_L17539_ _L17540_ _L17541_)
                                             (let* ((_lambda-id17565_
                                                     (make-symbol
                                                      (gx#stx-e _L17434_)
                                                      '"__"
                                                      (gx#stx-e _L17541_)
                                                      (gensym '__)))
                                                    (_lambda-id17567_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id17565_
                                                      (gx#stx-source
                                                       _stx17150_)))
                                                    (_g21317_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id17567_))
                                                    (_new-case-lambda-expr17570_
                                                     (gxc#apply-expression-subst
                                                      _L17539_
                                                      _L17541_
                                                      _lambda-id17567_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L17434_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id17567_))
                                                 (_lp17297_
                                                  (cons (_bind-e__opt-lambda17709__2126121262_
                                                         _L17434_
                                                         _new-case-lambda-expr17570_
                                                         '#f)
                                                        _rest17322_)
                                                  (cons (_bind-e__0__2126321264_
                                                         _lambda-id17567_
                                                         _L17540_)
                                                        _lift117300_)
                                                  _lift217301_
                                                  _bind17302_))))
                                           _hd1747217534_
                                           _hd1746917526_
                                           _hd1746617518_)
                                          (_g1744817478_ _g1744917481_))))
                                  (_g1744817478_ _g1744917481_))
                              (_g1744817478_ _g1744917481_))
                          (_g1744817478_ _g1744917481_))))
                  (_g1744817478_ _g1744917481_))
              (_g1744817478_ _g1744917481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1744817478_ _g1744917481_))))
                                      (_g1744817478_ _g1744917481_))))
                              (_g1744817478_ _g1744917481_))))
                      (_g1744817478_ _g1744917481_))))
              (_g1744817478_ _g1744917481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1744717573_ _L17433_))
                                        (_g1732617404_ _g1732817407_)))
                                  _hd1734917428_
                                  _hd1734617420_)
                                 (_g1732617404_ _g1732817407_))))
                         (_g1732617404_ _g1732817407_))
                     (_g1732617404_ _g1732817407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1732617404_
                                                      _g1732817407_))))
                                             (_g1732617404_ _g1732817407_))))
                                      (_g1732417695_
                                       (lambda (_g1732817579_)
                                         (if (gx#stx-pair? _g1732817579_)
                                             (let ((_e1733117581_
                                                    (gx#stx-e _g1732817579_)))
                                               (let ((_hd1733217584_
                                                      (##car _e1733117581_))
                                                     (_tl1733317586_
                                                      (##cdr _e1733117581_)))
                                                 (if (gx#stx-pair?
                                                      _hd1733217584_)
                                                     (let ((_e1733417589_
                                                            (gx#stx-e
                                                             _hd1733217584_)))
                                                       (let ((_hd1733517592_
                                                              (##car _e1733417589_))
                                                             (_tl1733617594_
                                                              (##cdr _e1733417589_)))
                                                         (if (gx#stx-null?
                                                              _tl1733617594_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1733317586_)
                         (let ((_e1733717597_ (gx#stx-e _tl1733317586_)))
                           (let ((_hd1733817600_ (##car _e1733717597_))
                                 (_tl1733917602_ (##cdr _e1733717597_)))
                             (if (gx#stx-null? _tl1733917602_)
                                 ((lambda (_L17605_ _L17606_)
                                    (if (if (gx#identifier? _L17606_)
                                            (gxc#case-lambda-expr? _L17605_)
                                            '#f)
                                        (let* ((_g1762117635_
                                                (lambda (_g1762217632_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1762217632_)))
                                               (_g1762017670_
                                                (lambda (_g1762217638_)
                                                  (if (gx#stx-pair?
                                                       _g1762217638_)
                                                      (let ((_e1762817640_
                                                             (gx#stx-e
                                                              _g1762217638_)))
                                                        (let ((_hd1762917643_
                                                               (##car _e1762817640_))
                                                              (_tl1763017645_
                                                               (##cdr _e1762817640_)))
                                                          ((lambda (_L17648_)
                                                             (let ((_g21318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda18136
                             _stx17150_
                             _L17606_
                             _L17648_
                             '#t)))
                       (begin
                         (let ((_g21319_ (values-count _g21318_)))
                           (if (not (fx= _g21319_ 3))
                               (error "Context expects 3 values" _g21319_)))
                         (let ((_ids17658_ (values-ref _g21318_ 0))
                               (_impls17659_ (values-ref _g21318_ 1))
                               (_clauses17660_ (values-ref _g21318_ 2)))
                           (let* ((_g21320_
                                   (for-each gx#core-bind-runtime! _ids17658_))
                                  (_xbind17663_
                                   (map _bind-e17152_ _ids17658_ _impls17659_))
                                  (_expr*17665_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses17660_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*17667_
                                   (_bind-e__opt-lambda17709__2126121262_
                                    _L17606_
                                    _expr*17665_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L17606_)
                                '" => "
                                (map gxc#identifier-symbol _ids17658_))
                               (_lp17297_
                                _rest17322_
                                _lift117300_
                                (foldl1 cons _lift217301_ _xbind17663_)
                                (cons _bind*17667_ _bind17302_))))))))
                   _tl1763017645_)))
              (_g1762117635_ _g1762217638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1761917692_
                                                (lambda (_g1762217673_)
                                                  (if (gx#stx-pair?
                                                       _g1762217673_)
                                                      (let ((_e1762417675_
                                                             (gx#stx-e
                                                              _g1762217673_)))
                                                        (let ((_hd1762517678_
                                                               (##car _e1762417675_))
                                                              (_tl1762617680_
                                                               (##cdr _e1762417675_)))
                                                          ((lambda (_L17683_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L17683_)
                         (_lp17297_
                          _rest17322_
                          _lift117300_
                          _lift217301_
                          (cons (_bind-e__opt-lambda17709__2126121262_
                                 _L17606_
                                 _L17605_
                                 '#f)
                                _bind17302_))
                         (_g1762017670_ _g1762217673_)))
                   _tl1762617680_)))
              (_g1762017670_ _g1762217673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1761917692_ _L17605_))
                                        (_g1732517576_ _g1732817579_)))
                                  _hd1733817600_
                                  _hd1733517592_)
                                 (_g1732517576_ _g1732817579_))))
                         (_g1732517576_ _g1732817579_))
                     (_g1732517576_ _g1732817579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1732517576_
                                                      _g1732817579_))))
                                             (_g1732517576_ _g1732817579_)))))
                                 (_g1732417695_ _hd17323_)))))
                       (if (##pair? _rest1730317311_)
                           (let ((_hd1730817701_ (##car _rest1730317311_))
                                 (_tl1730917703_ (##cdr _rest1730317311_)))
                             (let* ((_hd17706_ _hd1730817701_)
                                    (_rest17708_ _tl1730917703_))
                               (_K1730717698_ _rest17708_ _hd17706_)))
                           (_else1730517319_)))))))
        (let* ((_g1715617182_
                (lambda (_g1715717179_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1715717179_)))
               (_g1715517189_
                (lambda (_g1715717185_)
                  ((lambda () (gxc#xform-let-values% _stx17150_)))))
               (_g1715417292_
                (lambda (_g1715717192_)
                  (if (gx#stx-pair? _g1715717192_)
                      (let ((_e1716017194_ (gx#stx-e _g1715717192_)))
                        (let ((_hd1716117197_ (##car _e1716017194_))
                              (_tl1716217199_ (##cdr _e1716017194_)))
                          (if (gx#stx-pair? _tl1716217199_)
                              (let ((_e1716317202_ (gx#stx-e _tl1716217199_)))
                                (let ((_hd1716417205_ (##car _e1716317202_))
                                      (_tl1716517207_ (##cdr _e1716317202_)))
                                  (if (gx#stx-pair/null? _hd1716417205_)
                                      (if (fx>= (gx#stx-length _hd1716417205_)
                                                '0)
                                          (let ((_g21321_
                                                 (gx#syntax-split-splice
                                                  _hd1716417205_
                                                  '0)))
                                            (begin
                                              (let ((_g21322_
                                                     (values-count _g21321_)))
                                                (if (not (fx= _g21322_ 2))
                                                    (error "Context expects 2 values"
                                                           _g21322_)))
                                              (let ((_target1716617210_
                                                     (values-ref _g21321_ 0))
                                                    (_tl1716817212_
                                                     (values-ref _g21321_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1716817212_)
                                                    (letrec ((_loop1716917215_
                                                              (lambda (_hd1716717218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1717317220_)
                        (if (gx#stx-pair? _hd1716717218_)
                            (let ((_e1717017223_ (gx#stx-e _hd1716717218_)))
                              (let ((_lp-hd1717117226_ (##car _e1717017223_))
                                    (_lp-tl1717217228_ (##cdr _e1717017223_)))
                                (_loop1716917215_
                                 _lp-tl1717217228_
                                 (cons _lp-hd1717117226_ _bind1717317220_))))
                            (let ((_bind1717417231_
                                   (reverse _bind1717317220_)))
                              (if (gx#stx-pair? _tl1716517207_)
                                  (let ((_e1717517234_
                                         (gx#stx-e _tl1716517207_)))
                                    (let ((_hd1717617237_
                                           (##car _e1717517234_))
                                          (_tl1717717239_
                                           (##cdr _e1717517234_)))
                                      (if (gx#stx-null? _tl1717717239_)
                                          ((lambda (_L17242_ _L17243_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1726317266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1726417268_)
                             (cons _g1726317266_ _g1726417268_))
                           '()
                           _L17243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g21323_
                                                           (_compile-bindings17153_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1727117274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1727217276_)
                                (cons _g1727117274_ _g1727217276_))
                              '()
                              _L17243_)))))
              (begin
                (let ((_g21324_ (values-count _g21323_)))
                  (if (not (fx= _g21324_ 3))
                      (error "Context expects 3 values" _g21324_)))
                (let ((_lift117279_ (values-ref _g21323_ 0))
                      (_lift217280_ (values-ref _g21323_ 1))
                      (_hd17281_ (values-ref _g21323_ 2)))
                  (let* ((_body17283_ (gxc#compile-e _L17242_))
                         (_expr17285_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd17281_ (cons _body17283_ '())))
                           _stx17150_))
                         (_expr17287_
                          (if (null? _lift217280_)
                              _expr17285_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift217280_
                                           (cons _expr17285_ '())))
                               _stx17150_)))
                         (_expr17289_
                          (if (null? _lift117279_)
                              _expr17287_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift117279_
                                           (cons _expr17287_ '())))
                               _stx17150_))))
                    _expr17289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj21271
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj21271)
                                                      __obj21271)))
                                                 (_g1715517189_
                                                  _g1715717192_)))
                                           _hd1717617237_
                                           _bind1717417231_)
                                          (_g1715517189_ _g1715717192_))))
                                  (_g1715517189_ _g1715717192_)))))))
              (_loop1716917215_ _target1716617210_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1715517189_
                                                     _g1715717192_)))))
                                          (_g1715517189_ _g1715717192_))
                                      (_g1715517189_ _g1715717192_))))
                              (_g1715517189_ _g1715717192_))))
                      (_g1715517189_ _g1715717192_)))))
          (_g1715417292_ _stx17150_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx16582_)
      (letrec* ((_bind-e__opt-lambda17132__2126621267_
                 (lambda (_id17134_ _expr17135_ _compile?17136_)
                   (cons (cons _id17134_ '())
                         (cons (if _compile?17136_
                                   (gxc#compile-e _expr17135_)
                                   _expr17135_)
                               '()))))
                (_bind-e__0__2126821269_
                 (lambda (_id17141_ _expr17142_)
                   (let ((_compile?17144_ '#t))
                     (_bind-e__opt-lambda17132__2126621267_
                      _id17141_
                      _expr17142_
                      _compile?17144_))))
                (_bind-e16584_
                 (lambda _g21326_
                   (let ((_g21325_ (length _g21326_)))
                     (cond ((fx= _g21325_ 2)
                            (apply _bind-e__0__2126821269_ _g21326_))
                           ((fx= _g21325_ 3)
                            (apply _bind-e__opt-lambda17132__2126621267_
                                   _g21326_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g21326_))))))
                (_compile-bindings16585_
                 (lambda (_rest16720_)
                   (let _lp16722_ ((_rest16724_ _rest16720_) (_bind16725_ '()))
                     (let* ((_rest1672616734_ _rest16724_)
                            (_E1672916738_
                             (lambda ()
                               (error '"No clause matching" _rest1672616734_)))
                            (_else1672816742_
                             (lambda () (reverse _bind16725_)))
                            (_K1673017121_
                             (lambda (_rest16745_ _hd16746_)
                               (let* ((_g1675016786_
                                       (lambda (_g1675116783_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1675116783_)))
                                      (_g1674916827_
                                       (lambda (_g1675116789_)
                                         (if (gx#stx-pair? _g1675116789_)
                                             (let ((_e1677616791_
                                                    (gx#stx-e _g1675116789_)))
                                               (let ((_hd1677716794_
                                                      (##car _e1677616791_))
                                                     (_tl1677816796_
                                                      (##cdr _e1677616791_)))
                                                 (if (gx#stx-pair?
                                                      _tl1677816796_)
                                                     (let ((_e1677916799_
                                                            (gx#stx-e
                                                             _tl1677816796_)))
                                                       (let ((_hd1678016802_
                                                              (##car _e1677916799_))
                                                             (_tl1678116804_
                                                              (##cdr _e1677916799_)))
                                                         (if (gx#stx-null?
                                                              _tl1678116804_)
                                                             ((lambda (_L16807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16808_)
                        (_lp16722_
                         _rest16745_
                         (cons (cons _L16808_
                                     (cons (gxc#compile-e _L16807_) '()))
                               _bind16725_)))
                      _hd1678016802_
                      _hd1677716794_)
                     (_g1675016786_ _g1675116789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1675016786_
                                                      _g1675116789_))))
                                             (_g1675016786_ _g1675116789_))))
                                      (_g1674816999_
                                       (lambda (_g1675116830_)
                                         (if (gx#stx-pair? _g1675116830_)
                                             (let ((_e1676516832_
                                                    (gx#stx-e _g1675116830_)))
                                               (let ((_hd1676616835_
                                                      (##car _e1676516832_))
                                                     (_tl1676716837_
                                                      (##cdr _e1676516832_)))
                                                 (if (gx#stx-pair?
                                                      _hd1676616835_)
                                                     (let ((_e1676816840_
                                                            (gx#stx-e
                                                             _hd1676616835_)))
                                                       (let ((_hd1676916843_
                                                              (##car _e1676816840_))
                                                             (_tl1677016845_
                                                              (##cdr _e1676816840_)))
                                                         (if (gx#stx-null?
                                                              _tl1677016845_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1676716837_)
                         (let ((_e1677116848_ (gx#stx-e _tl1676716837_)))
                           (let ((_hd1677216851_ (##car _e1677116848_))
                                 (_tl1677316853_ (##cdr _e1677116848_)))
                             (if (gx#stx-null? _tl1677316853_)
                                 ((lambda (_L16856_ _L16857_)
                                    (if (if (gx#identifier? _L16857_)
                                            (gxc#opt-lambda-expr? _L16856_)
                                            '#f)
                                        (let* ((_g1687116901_
                                                (lambda (_g1687216898_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1687216898_)))
                                               (_g1687016996_
                                                (lambda (_g1687216904_)
                                                  (if (gx#stx-pair?
                                                       _g1687216904_)
                                                      (let ((_e1687616906_
                                                             (gx#stx-e
                                                              _g1687216904_)))
                                                        (let ((_hd1687716909_
                                                               (##car _e1687616906_))
                                                              (_tl1687816911_
                                                               (##cdr _e1687616906_)))
                                                          (if (gx#stx-pair?
                                                               _tl1687816911_)
                                                              (let ((_e1687916914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1687816911_)))
                        (let ((_hd1688016917_ (##car _e1687916914_))
                              (_tl1688116919_ (##cdr _e1687916914_)))
                          (if (gx#stx-pair? _hd1688016917_)
                              (let ((_e1688216922_ (gx#stx-e _hd1688016917_)))
                                (let ((_hd1688316925_ (##car _e1688216922_))
                                      (_tl1688416927_ (##cdr _e1688216922_)))
                                  (if (gx#stx-pair? _hd1688316925_)
                                      (let ((_e1688516930_
                                             (gx#stx-e _hd1688316925_)))
                                        (let ((_hd1688616933_
                                               (##car _e1688516930_))
                                              (_tl1688716935_
                                               (##cdr _e1688516930_)))
                                          (if (gx#stx-pair? _hd1688616933_)
                                              (let ((_e1688816938_
                                                     (gx#stx-e
                                                      _hd1688616933_)))
                                                (let ((_hd1688916941_
                                                       (##car _e1688816938_))
                                                      (_tl1689016943_
                                                       (##cdr _e1688816938_)))
                                                  (if (gx#stx-null?
                                                       _tl1689016943_)
                                                      (if (gx#stx-pair?
                                                           _tl1688716935_)
                                                          (let ((_e1689116946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1688716935_)))
                    (let ((_hd1689216949_ (##car _e1689116946_))
                          (_tl1689316951_ (##cdr _e1689116946_)))
                      (if (gx#stx-null? _tl1689316951_)
                          (if (gx#stx-null? _tl1688416927_)
                              (if (gx#stx-pair? _tl1688116919_)
                                  (let ((_e1689416954_
                                         (gx#stx-e _tl1688116919_)))
                                    (let ((_hd1689516957_
                                           (##car _e1689416954_))
                                          (_tl1689616959_
                                           (##cdr _e1689416954_)))
                                      (if (gx#stx-null? _tl1689616959_)
                                          ((lambda (_L16962_ _L16963_ _L16964_)
                                             (let* ((_lambda-id16988_
                                                     (make-symbol
                                                      (gx#stx-e _L16857_)
                                                      '"__"
                                                      (gx#stx-e _L16964_)
                                                      (gensym '__)))
                                                    (_lambda-id16990_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16988_
                                                      (gx#stx-source
                                                       _stx16582_)))
                                                    (_g21327_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16990_))
                                                    (_new-case-lambda-expr16993_
                                                     (gxc#apply-expression-subst
                                                      _L16962_
                                                      _L16964_
                                                      _lambda-id16990_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16857_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16990_))
                                                 (_lp16722_
                                                  (cons (_bind-e__opt-lambda17132__2126621267_
                                                         _L16857_
                                                         _new-case-lambda-expr16993_
                                                         '#f)
                                                        _rest16745_)
                                                  (cons (_bind-e__0__2126821269_
                                                         _lambda-id16990_
                                                         _L16963_)
                                                        _bind16725_)))))
                                           _hd1689516957_
                                           _hd1689216949_
                                           _hd1688916941_)
                                          (_g1687116901_ _g1687216904_))))
                                  (_g1687116901_ _g1687216904_))
                              (_g1687116901_ _g1687216904_))
                          (_g1687116901_ _g1687216904_))))
                  (_g1687116901_ _g1687216904_))
              (_g1687116901_ _g1687216904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1687116901_ _g1687216904_))))
                                      (_g1687116901_ _g1687216904_))))
                              (_g1687116901_ _g1687216904_))))
                      (_g1687116901_ _g1687216904_))))
              (_g1687116901_ _g1687216904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1687016996_ _L16856_))
                                        (_g1674916827_ _g1675116830_)))
                                  _hd1677216851_
                                  _hd1676916843_)
                                 (_g1674916827_ _g1675116830_))))
                         (_g1674916827_ _g1675116830_))
                     (_g1674916827_ _g1675116830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1674916827_
                                                      _g1675116830_))))
                                             (_g1674916827_ _g1675116830_))))
                                      (_g1674717118_
                                       (lambda (_g1675117002_)
                                         (if (gx#stx-pair? _g1675117002_)
                                             (let ((_e1675417004_
                                                    (gx#stx-e _g1675117002_)))
                                               (let ((_hd1675517007_
                                                      (##car _e1675417004_))
                                                     (_tl1675617009_
                                                      (##cdr _e1675417004_)))
                                                 (if (gx#stx-pair?
                                                      _hd1675517007_)
                                                     (let ((_e1675717012_
                                                            (gx#stx-e
                                                             _hd1675517007_)))
                                                       (let ((_hd1675817015_
                                                              (##car _e1675717012_))
                                                             (_tl1675917017_
                                                              (##cdr _e1675717012_)))
                                                         (if (gx#stx-null?
                                                              _tl1675917017_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1675617009_)
                         (let ((_e1676017020_ (gx#stx-e _tl1675617009_)))
                           (let ((_hd1676117023_ (##car _e1676017020_))
                                 (_tl1676217025_ (##cdr _e1676017020_)))
                             (if (gx#stx-null? _tl1676217025_)
                                 ((lambda (_L17028_ _L17029_)
                                    (if (if (gx#identifier? _L17029_)
                                            (gxc#case-lambda-expr? _L17028_)
                                            '#f)
                                        (let* ((_g1704417058_
                                                (lambda (_g1704517055_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1704517055_)))
                                               (_g1704317093_
                                                (lambda (_g1704517061_)
                                                  (if (gx#stx-pair?
                                                       _g1704517061_)
                                                      (let ((_e1705117063_
                                                             (gx#stx-e
                                                              _g1704517061_)))
                                                        (let ((_hd1705217066_
                                                               (##car _e1705117063_))
                                                              (_tl1705317068_
                                                               (##cdr _e1705117063_)))
                                                          ((lambda (_L17071_)
                                                             (let ((_g21328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda18136
                             _stx16582_
                             _L17029_
                             _L17071_
                             '#t)))
                       (begin
                         (let ((_g21329_ (values-count _g21328_)))
                           (if (not (fx= _g21329_ 3))
                               (error "Context expects 3 values" _g21329_)))
                         (let ((_ids17081_ (values-ref _g21328_ 0))
                               (_impls17082_ (values-ref _g21328_ 1))
                               (_clauses17083_ (values-ref _g21328_ 2)))
                           (let* ((_g21330_
                                   (for-each gx#core-bind-runtime! _ids17081_))
                                  (_xbind17086_
                                   (map _bind-e16584_ _ids17081_ _impls17082_))
                                  (_expr*17088_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses17083_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*17090_
                                   (_bind-e__opt-lambda17132__2126621267_
                                    _L17029_
                                    _expr*17088_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L17029_)
                                '" => "
                                (map gxc#identifier-symbol _ids17081_))
                               (_lp16722_
                                _rest16745_
                                (cons _bind*17090_
                                      (foldl1 cons
                                              _bind16725_
                                              _xbind17086_)))))))))
                   _tl1705317068_)))
              (_g1704417058_ _g1704517061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1704217115_
                                                (lambda (_g1704517096_)
                                                  (if (gx#stx-pair?
                                                       _g1704517096_)
                                                      (let ((_e1704717098_
                                                             (gx#stx-e
                                                              _g1704517096_)))
                                                        (let ((_hd1704817101_
                                                               (##car _e1704717098_))
                                                              (_tl1704917103_
                                                               (##cdr _e1704717098_)))
                                                          ((lambda (_L17106_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L17106_)
                         (_lp16722_
                          _rest16745_
                          (cons (_bind-e__opt-lambda17132__2126621267_
                                 _L17029_
                                 _L17028_
                                 '#f)
                                _bind16725_))
                         (_g1704317093_ _g1704517096_)))
                   _tl1704917103_)))
              (_g1704317093_ _g1704517096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1704217115_ _L17028_))
                                        (_g1674816999_ _g1675117002_)))
                                  _hd1676117023_
                                  _hd1675817015_)
                                 (_g1674816999_ _g1675117002_))))
                         (_g1674816999_ _g1675117002_))
                     (_g1674816999_ _g1675117002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1674816999_
                                                      _g1675117002_))))
                                             (_g1674816999_ _g1675117002_)))))
                                 (_g1674717118_ _hd16746_)))))
                       (if (##pair? _rest1672616734_)
                           (let ((_hd1673117124_ (##car _rest1672616734_))
                                 (_tl1673217126_ (##cdr _rest1672616734_)))
                             (let* ((_hd17129_ _hd1673117124_)
                                    (_rest17131_ _tl1673217126_))
                               (_K1673017121_ _rest17131_ _hd17129_)))
                           (_else1672816742_)))))))
        (let* ((_g1658816615_
                (lambda (_g1658916612_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1658916612_)))
               (_g1658716622_
                (lambda (_g1658916618_)
                  ((lambda () (gxc#xform-let-values% _stx16582_)))))
               (_g1658616717_
                (lambda (_g1658916625_)
                  (if (gx#stx-pair? _g1658916625_)
                      (let ((_e1659316627_ (gx#stx-e _g1658916625_)))
                        (let ((_hd1659416630_ (##car _e1659316627_))
                              (_tl1659516632_ (##cdr _e1659316627_)))
                          (if (gx#stx-pair? _tl1659516632_)
                              (let ((_e1659616635_ (gx#stx-e _tl1659516632_)))
                                (let ((_hd1659716638_ (##car _e1659616635_))
                                      (_tl1659816640_ (##cdr _e1659616635_)))
                                  (if (gx#stx-pair/null? _hd1659716638_)
                                      (if (fx>= (gx#stx-length _hd1659716638_)
                                                '0)
                                          (let ((_g21331_
                                                 (gx#syntax-split-splice
                                                  _hd1659716638_
                                                  '0)))
                                            (begin
                                              (let ((_g21332_
                                                     (values-count _g21331_)))
                                                (if (not (fx= _g21332_ 2))
                                                    (error "Context expects 2 values"
                                                           _g21332_)))
                                              (let ((_target1659916643_
                                                     (values-ref _g21331_ 0))
                                                    (_tl1660116645_
                                                     (values-ref _g21331_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1660116645_)
                                                    (letrec ((_loop1660216648_
                                                              (lambda (_hd1660016651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1660616653_)
                        (if (gx#stx-pair? _hd1660016651_)
                            (let ((_e1660316656_ (gx#stx-e _hd1660016651_)))
                              (let ((_lp-hd1660416659_ (##car _e1660316656_))
                                    (_lp-tl1660516661_ (##cdr _e1660316656_)))
                                (_loop1660216648_
                                 _lp-tl1660516661_
                                 (cons _lp-hd1660416659_ _bind1660616653_))))
                            (let ((_bind1660716664_
                                   (reverse _bind1660616653_)))
                              (if (gx#stx-pair? _tl1659816640_)
                                  (let ((_e1660816667_
                                         (gx#stx-e _tl1659816640_)))
                                    (let ((_hd1660916670_
                                           (##car _e1660816667_))
                                          (_tl1661016672_
                                           (##cdr _e1660816667_)))
                                      (if (gx#stx-null? _tl1661016672_)
                                          ((lambda (_L16675_ _L16676_ _L16677_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1669816701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1669916703_)
                             (cons _g1669816701_ _g1669916703_))
                           '()
                           _L16676_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd16714_
                                                           (_compile-bindings16585_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1670616709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1670716711_)
                                (cons _g1670616709_ _g1670716711_))
                              '()
                              _L16676_))))
                  (_body16715_ (gxc#compile-e _L16675_)))
              (gxc#xform-wrap-source
               (cons _L16677_ (cons _hd16714_ (cons _body16715_ '())))
               _stx16582_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj21272
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj21272)
                                                      __obj21272)))
                                                 (_g1658716622_
                                                  _g1658916625_)))
                                           _hd1660916670_
                                           _bind1660716664_
                                           _hd1659416630_)
                                          (_g1658716622_ _g1658916625_))))
                                  (_g1658716622_ _g1658916625_)))))))
              (_loop1660216648_ _target1659916643_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1658716622_
                                                     _g1658916625_)))))
                                          (_g1658716622_ _g1658916625_))
                                      (_g1658716622_ _g1658916625_))))
                              (_g1658716622_ _g1658916625_))))
                      (_g1658716622_ _g1658916625_)))))
          (_g1658616717_ _stx16582_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind16503_)
      (let* ((_g1650616523_
              (lambda (_g1650716520_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1650716520_)))
             (_g1650516530_ (lambda (_g1650716526_) ((lambda () '#f))))
             (_g1650416579_
              (lambda (_g1650716533_)
                (if (gx#stx-pair? _g1650716533_)
                    (let ((_e1651016535_ (gx#stx-e _g1650716533_)))
                      (let ((_hd1651116538_ (##car _e1651016535_))
                            (_tl1651216540_ (##cdr _e1651016535_)))
                        (if (gx#stx-pair? _hd1651116538_)
                            (let ((_e1651316543_ (gx#stx-e _hd1651116538_)))
                              (let ((_hd1651416546_ (##car _e1651316543_))
                                    (_tl1651516548_ (##cdr _e1651316543_)))
                                (if (gx#stx-null? _tl1651516548_)
                                    (if (gx#stx-pair? _tl1651216540_)
                                        (let ((_e1651616551_
                                               (gx#stx-e _tl1651216540_)))
                                          (let ((_hd1651716554_
                                                 (##car _e1651616551_))
                                                (_tl1651816556_
                                                 (##cdr _e1651616551_)))
                                            (if (gx#stx-null? _tl1651816556_)
                                                ((lambda (_L16559_ _L16560_)
                                                   (if (gx#identifier?
                                                        _L16560_)
                                                       (let ((_$e16576_
                                                              (gxc#case-lambda-expr?
                                                               _L16559_)))
                                                         (if _$e16576_
                                                             _$e16576_
                                                             (gxc#opt-lambda-expr?
                                                              _L16559_)))
                                                       '#f))
                                                 _hd1651716554_
                                                 _hd1651416546_)
                                                (_g1650516530_
                                                 _g1650716533_))))
                                        (_g1650516530_ _g1650716533_))
                                    (_g1650516530_ _g1650716533_))))
                            (_g1650516530_ _g1650716533_))))
                    (_g1650516530_ _g1650716533_)))))
        (_g1650416579_ _bind16503_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx16441_ _id16442_ _new-id16443_)
      (let* ((_g1644616459_
              (lambda (_g1644716456_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1644716456_)))
             (_g1644516466_ (lambda (_g1644716462_) ((lambda () _stx16441_))))
             (_g1644416500_
              (lambda (_g1644716469_)
                (if (gx#stx-pair? _g1644716469_)
                    (let ((_e1644916471_ (gx#stx-e _g1644716469_)))
                      (let ((_hd1645016474_ (##car _e1644916471_))
                            (_tl1645116476_ (##cdr _e1644916471_)))
                        (if (gx#stx-pair? _tl1645116476_)
                            (let ((_e1645216479_ (gx#stx-e _tl1645116476_)))
                              (let ((_hd1645316482_ (##car _e1645216479_))
                                    (_tl1645416484_ (##cdr _e1645216479_)))
                                (if (gx#stx-null? _tl1645416484_)
                                    ((lambda (_L16487_)
                                       (if (gx#free-identifier=?
                                            _L16487_
                                            _id16442_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id16443_ '()))
                                            _stx16441_)
                                           (_g1644516466_ _g1644716469_)))
                                     _hd1645316482_)
                                    (_g1644516466_ _g1644716469_))))
                            (_g1644516466_ _g1644716469_))))
                    (_g1644516466_ _g1644716469_)))))
        (_g1644416500_ _stx16441_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx16297_)
      (let* ((_g1630016331_
              (lambda (_g1630116328_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1630116328_)))
             (_g1629916376_
              (lambda (_g1630116334_)
                (if (gx#stx-pair? _g1630116334_)
                    (let ((_e1631816336_ (gx#stx-e _g1630116334_)))
                      (let ((_hd1631916339_ (##car _e1631816336_))
                            (_tl1632016341_ (##cdr _e1631816336_)))
                        (if (gx#stx-pair? _tl1632016341_)
                            (let ((_e1632116344_ (gx#stx-e _tl1632016341_)))
                              (let ((_hd1632216347_ (##car _e1632116344_))
                                    (_tl1632316349_ (##cdr _e1632116344_)))
                                (if (gx#stx-pair? _tl1632316349_)
                                    (let ((_e1632416352_
                                           (gx#stx-e _tl1632316349_)))
                                      (let ((_hd1632516355_
                                             (##car _e1632416352_))
                                            (_tl1632616357_
                                             (##cdr _e1632416352_)))
                                        (if (gx#stx-null? _tl1632616357_)
                                            ((lambda (_L16360_ _L16361_)
                                               (gxc#compile-e _L16360_))
                                             _hd1632516355_
                                             _hd1632216347_)
                                            (_g1630016331_ _g1630116334_))))
                                    (_g1630016331_ _g1630116334_))))
                            (_g1630016331_ _g1630116334_))))
                    (_g1630016331_ _g1630116334_))))
             (_g1629816438_
              (lambda (_g1630116379_)
                (if (gx#stx-pair? _g1630116379_)
                    (let ((_e1630416381_ (gx#stx-e _g1630116379_)))
                      (let ((_hd1630516384_ (##car _e1630416381_))
                            (_tl1630616386_ (##cdr _e1630416381_)))
                        (if (gx#stx-pair? _tl1630616386_)
                            (let ((_e1630716389_ (gx#stx-e _tl1630616386_)))
                              (let ((_hd1630816392_ (##car _e1630716389_))
                                    (_tl1630916394_ (##cdr _e1630716389_)))
                                (if (gx#stx-pair? _hd1630816392_)
                                    (let ((_e1631016397_
                                           (gx#stx-e _hd1630816392_)))
                                      (let ((_hd1631116400_
                                             (##car _e1631016397_))
                                            (_tl1631216402_
                                             (##cdr _e1631016397_)))
                                        (if (gx#stx-null? _tl1631216402_)
                                            (if (gx#stx-pair? _tl1630916394_)
                                                (let ((_e1631316405_
                                                       (gx#stx-e
                                                        _tl1630916394_)))
                                                  (let ((_hd1631416408_
                                                         (##car _e1631316405_))
                                                        (_tl1631516410_
                                                         (##cdr _e1631316405_)))
                                                    (if (gx#stx-null?
                                                         _tl1631516410_)
                                                        ((lambda (_L16413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16414_)
                   (if (gx#identifier? _L16414_)
                       (let ((_sym16430_
                              (gxc#generate-runtime-binding-id _L16414_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym16430_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym16430_)
                               (let ((_type1643116433_
                                      (gxc#apply-basic-expression-type
                                       _L16413_)))
                                 (if _type1643116433_
                                     (let ((_type16436_ _type1643116433_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym16430_
                                        _type16436_))
                                     '#f)))
                           (gxc#compile-e _L16413_)))
                       (_g1629916376_ _g1630116379_)))
                 _hd1631416408_
                 _hd1631116400_)
                (_g1629916376_ _g1630116379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1629916376_ _g1630116379_))
                                            (_g1629916376_ _g1630116379_))))
                                    (_g1629916376_ _g1630116379_))))
                            (_g1629916376_ _g1630116379_))))
                    (_g1629916376_ _g1630116379_)))))
        (_g1629816438_ _stx16297_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx16082_)
      (letrec ((_collect-e16084_
                (lambda (_hd16241_ _expr16242_)
                  (let* ((_g1624516255_
                          (lambda (_g1624616252_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1624616252_)))
                         (_g1624416262_
                          (lambda (_g1624616258_) ((lambda () '#!void))))
                         (_g1624316294_
                          (lambda (_g1624616265_)
                            (if (gx#stx-pair? _g1624616265_)
                                (let ((_e1624816267_ (gx#stx-e _g1624616265_)))
                                  (let ((_hd1624916270_ (##car _e1624816267_))
                                        (_tl1625016272_ (##cdr _e1624816267_)))
                                    (if (gx#stx-null? _tl1625016272_)
                                        ((lambda (_L16275_)
                                           (if (gx#identifier? _L16275_)
                                               (let ((_sym16286_
                                                      (gxc#generate-runtime-binding-id
                                                       _L16275_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym16286_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym16286_)
                                                     (let ((_type1628716289_
                                                            (gxc#apply-basic-expression-type
                                                             _expr16242_)))
                                                       (if _type1628716289_
                                                           (let ((_type16292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1628716289_))
                     (gxc#optimizer-declare-type!__opt-lambda21045
                      _sym16286_
                      _type16292_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1624416262_ _g1624616265_)))
                                         _hd1624916270_)
                                        (_g1624416262_ _g1624616265_))))
                                (_g1624416262_ _g1624616265_)))))
                    (_g1624316294_ _hd16241_)))))
        (let* ((_g1608616121_
                (lambda (_g1608716118_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1608716118_)))
               (_g1608516238_
                (lambda (_g1608716124_)
                  (if (gx#stx-pair? _g1608716124_)
                      (let ((_e1609116126_ (gx#stx-e _g1608716124_)))
                        (let ((_hd1609216129_ (##car _e1609116126_))
                              (_tl1609316131_ (##cdr _e1609116126_)))
                          (if (gx#stx-pair? _tl1609316131_)
                              (let ((_e1609416134_ (gx#stx-e _tl1609316131_)))
                                (let ((_hd1609516137_ (##car _e1609416134_))
                                      (_tl1609616139_ (##cdr _e1609416134_)))
                                  (if (gx#stx-pair/null? _hd1609516137_)
                                      (if (fx>= (gx#stx-length _hd1609516137_)
                                                '0)
                                          (let ((_g21333_
                                                 (gx#syntax-split-splice
                                                  _hd1609516137_
                                                  '0)))
                                            (begin
                                              (let ((_g21334_
                                                     (values-count _g21333_)))
                                                (if (not (fx= _g21334_ 2))
                                                    (error "Context expects 2 values"
                                                           _g21334_)))
                                              (let ((_target1609716142_
                                                     (values-ref _g21333_ 0))
                                                    (_tl1609916144_
                                                     (values-ref _g21333_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1609916144_)
                                                    (letrec ((_loop1610016147_
                                                              (lambda (_hd1609816150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1610416152_
                               _hd1610516154_)
                        (if (gx#stx-pair? _hd1609816150_)
                            (let ((_e1610116157_ (gx#stx-e _hd1609816150_)))
                              (let ((_lp-hd1610216160_ (##car _e1610116157_))
                                    (_lp-tl1610316162_ (##cdr _e1610116157_)))
                                (if (gx#stx-pair? _lp-hd1610216160_)
                                    (let ((_e1610816165_
                                           (gx#stx-e _lp-hd1610216160_)))
                                      (let ((_hd1610916168_
                                             (##car _e1610816165_))
                                            (_tl1611016170_
                                             (##cdr _e1610816165_)))
                                        (if (gx#stx-pair? _tl1611016170_)
                                            (let ((_e1611116173_
                                                   (gx#stx-e _tl1611016170_)))
                                              (let ((_hd1611216176_
                                                     (##car _e1611116173_))
                                                    (_tl1611316178_
                                                     (##cdr _e1611116173_)))
                                                (if (gx#stx-null?
                                                     _tl1611316178_)
                                                    (_loop1610016147_
                                                     _lp-tl1610316162_
                                                     (cons _hd1611216176_
                                                           _expr1610416152_)
                                                     (cons _hd1610916168_
                                                           _hd1610516154_))
                                                    (_g1608616121_
                                                     _g1608716124_))))
                                            (_g1608616121_ _g1608716124_))))
                                    (_g1608616121_ _g1608716124_))))
                            (let ((_expr1610616181_ (reverse _expr1610416152_))
                                  (_hd1610716183_ (reverse _hd1610516154_)))
                              (if (gx#stx-pair? _tl1609616139_)
                                  (let ((_e1611416186_
                                         (gx#stx-e _tl1609616139_)))
                                    (let ((_hd1611516189_
                                           (##car _e1611416186_))
                                          (_tl1611616191_
                                           (##cdr _e1611416186_)))
                                      (if (gx#stx-null? _tl1611616191_)
                                          ((lambda (_L16194_ _L16195_ _L16196_)
                                             (begin
                                               (for-each
                                                _collect-e16084_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1621616219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1621716221_)
                    (cons _g1621616219_ _g1621716221_))
                  '()
                  _L16196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1622316226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1622416228_)
                    (cons _g1622316226_ _g1622416228_))
                  '()
                  _L16195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1623016233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1623116235_)
                    (cons _g1623016233_ _g1623116235_))
                  '()
                  _L16195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L16194_)))
                                           _hd1611516189_
                                           _expr1610616181_
                                           _hd1610716183_)
                                          (_g1608616121_ _g1608716124_))))
                                  (_g1608616121_ _g1608716124_)))))))
              (_loop1610016147_ _target1609716142_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1608616121_
                                                     _g1608716124_)))))
                                          (_g1608616121_ _g1608716124_))
                                      (_g1608616121_ _g1608716124_))))
                              (_g1608616121_ _g1608716124_))))
                      (_g1608616121_ _g1608716124_)))))
          (_g1608516238_ _stx16082_)))))
  (define gxc#collect-type-call%
    (lambda (_stx15636_)
      (let* ((_g1564015742_
              (lambda (_g1564115739_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1564115739_)))
             (_g1563915749_ (lambda (_g1564115745_) ((lambda () '#!void))))
             (_g1563815899_
              (lambda (_g1564115752_)
                (if (gx#stx-pair? _g1564115752_)
                    (let ((_e1569915754_ (gx#stx-e _g1564115752_)))
                      (let ((_hd1570015757_ (##car _e1569915754_))
                            (_tl1570115759_ (##cdr _e1569915754_)))
                        (if (gx#stx-pair? _tl1570115759_)
                            (let ((_e1570215762_ (gx#stx-e _tl1570115759_)))
                              (let ((_hd1570315765_ (##car _e1570215762_))
                                    (_tl1570415767_ (##cdr _e1570215762_)))
                                (if (gx#stx-pair? _hd1570315765_)
                                    (let ((_e1570515770_
                                           (gx#stx-e _hd1570315765_)))
                                      (let ((_hd1570615773_
                                             (##car _e1570515770_))
                                            (_tl1570715775_
                                             (##cdr _e1570515770_)))
                                        (if (gx#identifier? _hd1570615773_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1570615773_)
                                                (if (gx#stx-pair?
                                                     _tl1570715775_)
                                                    (let ((_e1570815778_
                                                           (gx#stx-e
                                                            _tl1570715775_)))
                                                      (let ((_hd1570915781_
                                                             (##car _e1570815778_))
                                                            (_tl1571015783_
                                                             (##cdr _e1570815778_)))
                                                        (if (gx#stx-null?
                                                             _tl1571015783_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1570415767_)
                        (let ((_e1571115786_ (gx#stx-e _tl1570415767_)))
                          (let ((_hd1571215789_ (##car _e1571115786_))
                                (_tl1571315791_ (##cdr _e1571115786_)))
                            (if (gx#stx-pair? _hd1571215789_)
                                (let ((_e1571415794_
                                       (gx#stx-e _hd1571215789_)))
                                  (let ((_hd1571515797_ (##car _e1571415794_))
                                        (_tl1571615799_ (##cdr _e1571415794_)))
                                    (if (gx#identifier? _hd1571515797_)
                                        (if (gx#stx-eq? '%#ref _hd1571515797_)
                                            (if (gx#stx-pair? _tl1571615799_)
                                                (let ((_e1571715802_
                                                       (gx#stx-e
                                                        _tl1571615799_)))
                                                  (let ((_hd1571815805_
                                                         (##car _e1571715802_))
                                                        (_tl1571915807_
                                                         (##cdr _e1571715802_)))
                                                    (if (gx#stx-null?
                                                         _tl1571915807_)
                                                        (if (gx#stx-pair?
                                                             _tl1571315791_)
                                                            (let ((_e1572015810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1571315791_)))
                      (let ((_hd1572115813_ (##car _e1572015810_))
                            (_tl1572215815_ (##cdr _e1572015810_)))
                        (if (gx#stx-pair? _hd1572115813_)
                            (let ((_e1572315818_ (gx#stx-e _hd1572115813_)))
                              (let ((_hd1572415821_ (##car _e1572315818_))
                                    (_tl1572515823_ (##cdr _e1572315818_)))
                                (if (gx#identifier? _hd1572415821_)
                                    (if (gx#stx-eq? '%#quote _hd1572415821_)
                                        (if (gx#stx-pair? _tl1572515823_)
                                            (let ((_e1572615826_
                                                   (gx#stx-e _tl1572515823_)))
                                              (let ((_hd1572715829_
                                                     (##car _e1572615826_))
                                                    (_tl1572815831_
                                                     (##cdr _e1572615826_)))
                                                (if (gx#stx-null?
                                                     _tl1572815831_)
                                                    (if (gx#stx-pair?
                                                         _tl1572215815_)
                                                        (let ((_e1572915834_
                                                               (gx#stx-e
                                                                _tl1572215815_)))
                                                          (let ((_hd1573015837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1572915834_))
                        (_tl1573115839_ (##cdr _e1572915834_)))
                    (if (gx#stx-pair? _hd1573015837_)
                        (let ((_e1573215842_ (gx#stx-e _hd1573015837_)))
                          (let ((_hd1573315845_ (##car _e1573215842_))
                                (_tl1573415847_ (##cdr _e1573215842_)))
                            (if (gx#identifier? _hd1573315845_)
                                (if (gx#stx-eq? '%#ref _hd1573315845_)
                                    (if (gx#stx-pair? _tl1573415847_)
                                        (let ((_e1573515850_
                                               (gx#stx-e _tl1573415847_)))
                                          (let ((_hd1573615853_
                                                 (##car _e1573515850_))
                                                (_tl1573715855_
                                                 (##cdr _e1573515850_)))
                                            (if (gx#stx-null? _tl1573715855_)
                                                (if (gx#stx-null?
                                                     _tl1573115839_)
                                                    ((lambda (_L15858_
                                                              _L15859_
                                                              _L15860_
                                                              _L15861_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda21021
                    (gxc#generate-runtime-binding-id _L15860_)
                    (gx#stx-e _L15859_)
                    (gxc#generate-runtime-binding-id _L15858_)
                    '#f)
                   (_g1563915749_ _g1564115752_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1573615853_
                                                     _hd1572715829_
                                                     _hd1571815805_
                                                     _hd1570915781_)
                                                    (_g1563915749_
                                                     _g1564115752_))
                                                (_g1563915749_
                                                 _g1564115752_))))
                                        (_g1563915749_ _g1564115752_))
                                    (_g1563915749_ _g1564115752_))
                                (_g1563915749_ _g1564115752_))))
                        (_g1563915749_ _g1564115752_))))
                (_g1563915749_ _g1564115752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563915749_
                                                     _g1564115752_))))
                                            (_g1563915749_ _g1564115752_))
                                        (_g1563915749_ _g1564115752_))
                                    (_g1563915749_ _g1564115752_))))
                            (_g1563915749_ _g1564115752_))))
                    (_g1563915749_ _g1564115752_))
                (_g1563915749_ _g1564115752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1563915749_ _g1564115752_))
                                            (_g1563915749_ _g1564115752_))
                                        (_g1563915749_ _g1564115752_))))
                                (_g1563915749_ _g1564115752_))))
                        (_g1563915749_ _g1564115752_))
                    (_g1563915749_ _g1564115752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563915749_
                                                     _g1564115752_))
                                                (_g1563915749_ _g1564115752_))
                                            (_g1563915749_ _g1564115752_))))
                                    (_g1563915749_ _g1564115752_))))
                            (_g1563915749_ _g1564115752_))))
                    (_g1563915749_ _g1564115752_))))
             (_g1563716079_
              (lambda (_g1564115902_)
                (if (gx#stx-pair? _g1564115902_)
                    (let ((_e1564715904_ (gx#stx-e _g1564115902_)))
                      (let ((_hd1564815907_ (##car _e1564715904_))
                            (_tl1564915909_ (##cdr _e1564715904_)))
                        (if (gx#stx-pair? _tl1564915909_)
                            (let ((_e1565015912_ (gx#stx-e _tl1564915909_)))
                              (let ((_hd1565115915_ (##car _e1565015912_))
                                    (_tl1565215917_ (##cdr _e1565015912_)))
                                (if (gx#stx-pair? _hd1565115915_)
                                    (let ((_e1565315920_
                                           (gx#stx-e _hd1565115915_)))
                                      (let ((_hd1565415923_
                                             (##car _e1565315920_))
                                            (_tl1565515925_
                                             (##cdr _e1565315920_)))
                                        (if (gx#identifier? _hd1565415923_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1565415923_)
                                                (if (gx#stx-pair?
                                                     _tl1565515925_)
                                                    (let ((_e1565615928_
                                                           (gx#stx-e
                                                            _tl1565515925_)))
                                                      (let ((_hd1565715931_
                                                             (##car _e1565615928_))
                                                            (_tl1565815933_
                                                             (##cdr _e1565615928_)))
                                                        (if (gx#stx-null?
                                                             _tl1565815933_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1565215917_)
                        (let ((_e1565915936_ (gx#stx-e _tl1565215917_)))
                          (let ((_hd1566015939_ (##car _e1565915936_))
                                (_tl1566115941_ (##cdr _e1565915936_)))
                            (if (gx#stx-pair? _hd1566015939_)
                                (let ((_e1566215944_
                                       (gx#stx-e _hd1566015939_)))
                                  (let ((_hd1566315947_ (##car _e1566215944_))
                                        (_tl1566415949_ (##cdr _e1566215944_)))
                                    (if (gx#identifier? _hd1566315947_)
                                        (if (gx#stx-eq? '%#ref _hd1566315947_)
                                            (if (gx#stx-pair? _tl1566415949_)
                                                (let ((_e1566515952_
                                                       (gx#stx-e
                                                        _tl1566415949_)))
                                                  (let ((_hd1566615955_
                                                         (##car _e1566515952_))
                                                        (_tl1566715957_
                                                         (##cdr _e1566515952_)))
                                                    (if (gx#stx-null?
                                                         _tl1566715957_)
                                                        (if (gx#stx-pair?
                                                             _tl1566115941_)
                                                            (let ((_e1566815960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1566115941_)))
                      (let ((_hd1566915963_ (##car _e1566815960_))
                            (_tl1567015965_ (##cdr _e1566815960_)))
                        (if (gx#stx-pair? _hd1566915963_)
                            (let ((_e1567115968_ (gx#stx-e _hd1566915963_)))
                              (let ((_hd1567215971_ (##car _e1567115968_))
                                    (_tl1567315973_ (##cdr _e1567115968_)))
                                (if (gx#identifier? _hd1567215971_)
                                    (if (gx#stx-eq? '%#quote _hd1567215971_)
                                        (if (gx#stx-pair? _tl1567315973_)
                                            (let ((_e1567415976_
                                                   (gx#stx-e _tl1567315973_)))
                                              (let ((_hd1567515979_
                                                     (##car _e1567415976_))
                                                    (_tl1567615981_
                                                     (##cdr _e1567415976_)))
                                                (if (gx#stx-null?
                                                     _tl1567615981_)
                                                    (if (gx#stx-pair?
                                                         _tl1567015965_)
                                                        (let ((_e1567715984_
                                                               (gx#stx-e
                                                                _tl1567015965_)))
                                                          (let ((_hd1567815987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1567715984_))
                        (_tl1567915989_ (##cdr _e1567715984_)))
                    (if (gx#stx-pair? _hd1567815987_)
                        (let ((_e1568015992_ (gx#stx-e _hd1567815987_)))
                          (let ((_hd1568115995_ (##car _e1568015992_))
                                (_tl1568215997_ (##cdr _e1568015992_)))
                            (if (gx#identifier? _hd1568115995_)
                                (if (gx#stx-eq? '%#ref _hd1568115995_)
                                    (if (gx#stx-pair? _tl1568215997_)
                                        (let ((_e1568316000_
                                               (gx#stx-e _tl1568215997_)))
                                          (let ((_hd1568416003_
                                                 (##car _e1568316000_))
                                                (_tl1568516005_
                                                 (##cdr _e1568316000_)))
                                            (if (gx#stx-null? _tl1568516005_)
                                                (if (gx#stx-pair?
                                                     _tl1567915989_)
                                                    (let ((_e1568616008_
                                                           (gx#stx-e
                                                            _tl1567915989_)))
                                                      (let ((_hd1568716011_
                                                             (##car _e1568616008_))
                                                            (_tl1568816013_
                                                             (##cdr _e1568616008_)))
                                                        (if (gx#stx-pair?
                                                             _hd1568716011_)
                                                            (let ((_e1568916016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1568716011_)))
                      (let ((_hd1569016019_ (##car _e1568916016_))
                            (_tl1569116021_ (##cdr _e1568916016_)))
                        (if (gx#identifier? _hd1569016019_)
                            (if (gx#stx-eq? '%#quote _hd1569016019_)
                                (if (gx#stx-pair? _tl1569116021_)
                                    (let ((_e1569216024_
                                           (gx#stx-e _tl1569116021_)))
                                      (let ((_hd1569316027_
                                             (##car _e1569216024_))
                                            (_tl1569416029_
                                             (##cdr _e1569216024_)))
                                        (if (gx#stx-null? _tl1569416029_)
                                            (if (gx#stx-null? _tl1568816013_)
                                                ((lambda (_L16032_
                                                          _L16033_
                                                          _L16034_
                                                          _L16035_
                                                          _L16036_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L16036_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda21021
                                                        (gxc#generate-runtime-binding-id
                                                         _L16035_)
                                                        (gx#stx-e _L16034_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L16033_)
                                                        (gx#stx-e _L16032_))
                                                       (_g1563815899_
                                                        _g1564115902_)))
                                                 _hd1569316027_
                                                 _hd1568416003_
                                                 _hd1567515979_
                                                 _hd1566615955_
                                                 _hd1565715931_)
                                                (_g1563815899_ _g1564115902_))
                                            (_g1563815899_ _g1564115902_))))
                                    (_g1563815899_ _g1564115902_))
                                (_g1563815899_ _g1564115902_))
                            (_g1563815899_ _g1564115902_))))
                    (_g1563815899_ _g1564115902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563815899_
                                                     _g1564115902_))
                                                (_g1563815899_
                                                 _g1564115902_))))
                                        (_g1563815899_ _g1564115902_))
                                    (_g1563815899_ _g1564115902_))
                                (_g1563815899_ _g1564115902_))))
                        (_g1563815899_ _g1564115902_))))
                (_g1563815899_ _g1564115902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563815899_
                                                     _g1564115902_))))
                                            (_g1563815899_ _g1564115902_))
                                        (_g1563815899_ _g1564115902_))
                                    (_g1563815899_ _g1564115902_))))
                            (_g1563815899_ _g1564115902_))))
                    (_g1563815899_ _g1564115902_))
                (_g1563815899_ _g1564115902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1563815899_ _g1564115902_))
                                            (_g1563815899_ _g1564115902_))
                                        (_g1563815899_ _g1564115902_))))
                                (_g1563815899_ _g1564115902_))))
                        (_g1563815899_ _g1564115902_))
                    (_g1563815899_ _g1564115902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563815899_
                                                     _g1564115902_))
                                                (_g1563815899_ _g1564115902_))
                                            (_g1563815899_ _g1564115902_))))
                                    (_g1563815899_ _g1564115902_))))
                            (_g1563815899_ _g1564115902_))))
                    (_g1563815899_ _g1564115902_)))))
        (_g1563716079_ _stx15636_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx15576_)
      (let* ((_g1557915592_
              (lambda (_g1558015589_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1558015589_)))
             (_g1557815599_ (lambda (_g1558015595_) ((lambda () '#f))))
             (_g1557715633_
              (lambda (_g1558015602_)
                (if (gx#stx-pair? _g1558015602_)
                    (let ((_e1558215604_ (gx#stx-e _g1558015602_)))
                      (let ((_hd1558315607_ (##car _e1558215604_))
                            (_tl1558415609_ (##cdr _e1558215604_)))
                        (if (gx#stx-pair? _tl1558415609_)
                            (let ((_e1558515612_ (gx#stx-e _tl1558415609_)))
                              (let ((_hd1558615615_ (##car _e1558515612_))
                                    (_tl1558715617_ (##cdr _e1558515612_)))
                                (if (gx#stx-null? _tl1558715617_)
                                    ((lambda (_L15620_)
                                       (gxc#compile-e _L15620_))
                                     _hd1558615615_)
                                    (_g1557815599_ _g1558015602_))))
                            (_g1557815599_ _g1558015602_))))
                    (_g1557815599_ _g1558015602_)))))
        (_g1557715633_ _stx15576_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx15509_)
      (let* ((_g1551115528_
              (lambda (_g1551215525_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1551215525_)))
             (_g1551015573_
              (lambda (_g1551215531_)
                (if (gx#stx-pair? _g1551215531_)
                    (let ((_e1551515533_ (gx#stx-e _g1551215531_)))
                      (let ((_hd1551615536_ (##car _e1551515533_))
                            (_tl1551715538_ (##cdr _e1551515533_)))
                        (if (gx#stx-pair? _tl1551715538_)
                            (let ((_e1551815541_ (gx#stx-e _tl1551715538_)))
                              (let ((_hd1551915544_ (##car _e1551815541_))
                                    (_tl1552015546_ (##cdr _e1551815541_)))
                                (if (gx#stx-pair? _tl1552015546_)
                                    (let ((_e1552115549_
                                           (gx#stx-e _tl1552015546_)))
                                      (let ((_hd1552215552_
                                             (##car _e1552115549_))
                                            (_tl1552315554_
                                             (##cdr _e1552115549_)))
                                        (if (gx#stx-null? _tl1552315554_)
                                            ((lambda (_L15557_ _L15558_)
                                               (gxc#compile-e _L15557_))
                                             _hd1552215552_
                                             _hd1551915544_)
                                            (_g1551115528_ _g1551215531_))))
                                    (_g1551115528_ _g1551215531_))))
                            (_g1551115528_ _g1551215531_))))
                    (_g1551115528_ _g1551215531_)))))
        (_g1551015573_ _stx15509_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx14934_)
      (let* ((_g1493915060_
              (lambda (_g1494015057_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1494015057_)))
             (_g1493815067_ (lambda (_g1494015063_) ((lambda () '#f))))
             (_g1493715091_
              (lambda (_g1494015070_)
                (if (gx#stx-pair? _g1494015070_)
                    (let ((_e1505315072_ (gx#stx-e _g1494015070_)))
                      (let ((_hd1505415075_ (##car _e1505315072_))
                            (_tl1505515077_ (##cdr _e1505315072_)))
                        ((lambda (_L15080_)
                           (if (gxc#dispatch-lambda-form? _L15080_)
                               (let ((__obj21273
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj21273
                                    'lambda
                                    (gxc#lambda-form-arity _L15080_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L15080_))
                                   __obj21273))
                               (_g1493815067_ _g1494015070_)))
                         _tl1505515077_)))
                    (_g1493815067_ _g1494015070_))))
             (_g1493615321_
              (lambda (_g1494015094_)
                (if (gx#stx-pair? _g1494015094_)
                    (let ((_e1499815096_ (gx#stx-e _g1494015094_)))
                      (let ((_hd1499915099_ (##car _e1499815096_))
                            (_tl1500015101_ (##cdr _e1499815096_)))
                        (if (gx#stx-pair? _tl1500015101_)
                            (let ((_e1500115104_ (gx#stx-e _tl1500015101_)))
                              (let ((_hd1500215107_ (##car _e1500115104_))
                                    (_tl1500315109_ (##cdr _e1500115104_)))
                                (if (gx#stx-pair/null? _hd1500215107_)
                                    (if (fx>= (gx#stx-length _hd1500215107_)
                                              '0)
                                        (let ((_g21335_
                                               (gx#syntax-split-splice
                                                _hd1500215107_
                                                '0)))
                                          (begin
                                            (let ((_g21336_
                                                   (values-count _g21335_)))
                                              (if (not (fx= _g21336_ 2))
                                                  (error "Context expects 2 values"
                                                         _g21336_)))
                                            (let ((_target1500415112_
                                                   (values-ref _g21335_ 0))
                                                  (_tl1500615114_
                                                   (values-ref _g21335_ 1)))
                                              (if (gx#stx-null? _tl1500615114_)
                                                  (letrec ((_loop1500715117_
                                                            (lambda (_hd1500515120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1501115122_)
                      (if (gx#stx-pair? _hd1500515120_)
                          (let ((_e1500815125_ (gx#stx-e _hd1500515120_)))
                            (let ((_lp-hd1500915128_ (##car _e1500815125_))
                                  (_lp-tl1501015130_ (##cdr _e1500815125_)))
                              (_loop1500715117_
                               _lp-tl1501015130_
                               (cons _lp-hd1500915128_ _arg1501115122_))))
                          (let ((_arg1501215133_ (reverse _arg1501115122_)))
                            (if (gx#stx-pair? _tl1500315109_)
                                (let ((_e1501315136_
                                       (gx#stx-e _tl1500315109_)))
                                  (let ((_hd1501415139_ (##car _e1501315136_))
                                        (_tl1501515141_ (##cdr _e1501315136_)))
                                    (if (gx#stx-pair? _hd1501415139_)
                                        (let ((_e1501615144_
                                               (gx#stx-e _hd1501415139_)))
                                          (let ((_hd1501715147_
                                                 (##car _e1501615144_))
                                                (_tl1501815149_
                                                 (##cdr _e1501615144_)))
                                            (if (gx#identifier? _hd1501715147_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1501715147_)
                                                    (if (gx#stx-pair?
                                                         _tl1501815149_)
                                                        (let ((_e1501915152_
                                                               (gx#stx-e
                                                                _tl1501815149_)))
                                                          (let ((_hd1502015155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1501915152_))
                        (_tl1502115157_ (##cdr _e1501915152_)))
                    (if (gx#stx-pair? _hd1502015155_)
                        (let ((_e1502215160_ (gx#stx-e _hd1502015155_)))
                          (let ((_hd1502315163_ (##car _e1502215160_))
                                (_tl1502415165_ (##cdr _e1502215160_)))
                            (if (gx#identifier? _hd1502315163_)
                                (if (gx#stx-eq? '%#ref _hd1502315163_)
                                    (if (gx#stx-pair? _tl1502415165_)
                                        (let ((_e1502515168_
                                               (gx#stx-e _tl1502415165_)))
                                          (let ((_hd1502615171_
                                                 (##car _e1502515168_))
                                                (_tl1502715173_
                                                 (##cdr _e1502515168_)))
                                            (if (gx#stx-null? _tl1502715173_)
                                                (if (gx#stx-pair?
                                                     _tl1502115157_)
                                                    (let ((_e1502815176_
                                                           (gx#stx-e
                                                            _tl1502115157_)))
                                                      (let ((_hd1502915179_
                                                             (##car _e1502815176_))
                                                            (_tl1503015181_
                                                             (##cdr _e1502815176_)))
                                                        (if (gx#stx-pair?
                                                             _hd1502915179_)
                                                            (let ((_e1503115184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1502915179_)))
                      (let ((_hd1503215187_ (##car _e1503115184_))
                            (_tl1503315189_ (##cdr _e1503115184_)))
                        (if (gx#identifier? _hd1503215187_)
                            (if (gx#stx-eq? '%#ref _hd1503215187_)
                                (if (gx#stx-pair? _tl1503315189_)
                                    (let ((_e1503415192_
                                           (gx#stx-e _tl1503315189_)))
                                      (let ((_hd1503515195_
                                             (##car _e1503415192_))
                                            (_tl1503615197_
                                             (##cdr _e1503415192_)))
                                        (if (gx#stx-null? _tl1503615197_)
                                            (if (gx#stx-pair/null?
                                                 _tl1503015181_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1503015181_)
                                                          '0)
                                                    (let ((_g21337_
                                                           (gx#syntax-split-splice
                                                            _tl1503015181_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21338_
                                                               (values-count
                                                                _g21337_)))
                                                          (if (not (fx= _g21338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g21338_)))
                (let ((_target1503715200_ (values-ref _g21337_ 0))
                      (_tl1503915202_ (values-ref _g21337_ 1)))
                  (if (gx#stx-null? _tl1503915202_)
                      (letrec ((_loop1504015205_
                                (lambda (_hd1503815208_ _xarg1504415210_)
                                  (if (gx#stx-pair? _hd1503815208_)
                                      (let ((_e1504115213_
                                             (gx#stx-e _hd1503815208_)))
                                        (let ((_lp-hd1504215216_
                                               (##car _e1504115213_))
                                              (_lp-tl1504315218_
                                               (##cdr _e1504115213_)))
                                          (if (gx#stx-pair? _lp-hd1504215216_)
                                              (let ((_e1504615221_
                                                     (gx#stx-e
                                                      _lp-hd1504215216_)))
                                                (let ((_hd1504715224_
                                                       (##car _e1504615221_))
                                                      (_tl1504815226_
                                                       (##cdr _e1504615221_)))
                                                  (if (gx#identifier?
                                                       _hd1504715224_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1504715224_)
                                                          (if (gx#stx-pair?
                                                               _tl1504815226_)
                                                              (let ((_e1504915229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1504815226_)))
                        (let ((_hd1505015232_ (##car _e1504915229_))
                              (_tl1505115234_ (##cdr _e1504915229_)))
                          (if (gx#stx-null? _tl1505115234_)
                              (_loop1504015205_
                               _lp-tl1504315218_
                               (cons _hd1505015232_ _xarg1504415210_))
                              (_g1493715091_ _g1494015094_))))
                      (_g1493715091_ _g1494015094_))
                  (_g1493715091_ _g1494015094_))
              (_g1493715091_ _g1494015094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1493715091_ _g1494015094_))))
                                      (let ((_xarg1504515237_
                                             (reverse _xarg1504415210_)))
                                        (if (gx#stx-null? _tl1501515141_)
                                            ((lambda (_L15240_
                                                      _L15241_
                                                      _L15242_
                                                      _L15243_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1528015283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1528115285_)
                            (cons _g1528015283_ _g1528115285_))
                          '()
                          _L15243_)))
               (if (eq? (gxc#generate-runtime-binding-id _L15242_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1528715290_
                                                       _g1528815292_)
                                                (cons _g1528715290_
                                                      _g1528815292_))
                                              '()
                                              _L15243_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1529415297_
                                                       _g1529515299_)
                                                (cons _g1529415297_
                                                      _g1529515299_))
                                              '()
                                              _L15240_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1530115304_ _g1530215306_)
                                           (cons _g1530115304_ _g1530215306_))
                                         '()
                                         _L15243_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1530815311_ _g1530915313_)
                                           (cons _g1530815311_ _g1530915313_))
                                         '()
                                         _L15240_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t15316_
                                                           (gxc#generate-runtime-binding-id
                                                            _L15241_))
                                                          (_type15318_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t15316_)))
                                                     (if (##structure-instance-of?
                                                          _type15318_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t15316_)
                                                         '#f))
                                                   (_g1493715091_
                                                    _g1494015094_)))
                                             _xarg1504515237_
                                             _hd1503515195_
                                             _hd1502615171_
                                             _arg1501215133_)
                                            (_g1493715091_ _g1494015094_)))))))
                        (_loop1504015205_ _target1503715200_ '()))
                      (_g1493715091_ _g1494015094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493715091_
                                                     _g1494015094_))
                                                (_g1493715091_ _g1494015094_))
                                            (_g1493715091_ _g1494015094_))))
                                    (_g1493715091_ _g1494015094_))
                                (_g1493715091_ _g1494015094_))
                            (_g1493715091_ _g1494015094_))))
                    (_g1493715091_ _g1494015094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493715091_
                                                     _g1494015094_))
                                                (_g1493715091_
                                                 _g1494015094_))))
                                        (_g1493715091_ _g1494015094_))
                                    (_g1493715091_ _g1494015094_))
                                (_g1493715091_ _g1494015094_))))
                        (_g1493715091_ _g1494015094_))))
                (_g1493715091_ _g1494015094_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493715091_
                                                     _g1494015094_))
                                                (_g1493715091_
                                                 _g1494015094_))))
                                        (_g1493715091_ _g1494015094_))))
                                (_g1493715091_ _g1494015094_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1500715117_
                                                     _target1500415112_
                                                     '()))
                                                  (_g1493715091_
                                                   _g1494015094_)))))
                                        (_g1493715091_ _g1494015094_))
                                    (_g1493715091_ _g1494015094_))))
                            (_g1493715091_ _g1494015094_))))
                    (_g1493715091_ _g1494015094_))))
             (_g1493515506_
              (lambda (_g1494015324_)
                (if (gx#stx-pair? _g1494015324_)
                    (let ((_e1494615326_ (gx#stx-e _g1494015324_)))
                      (let ((_hd1494715329_ (##car _e1494615326_))
                            (_tl1494815331_ (##cdr _e1494615326_)))
                        (if (gx#stx-pair? _tl1494815331_)
                            (let ((_e1494915334_ (gx#stx-e _tl1494815331_)))
                              (let ((_hd1495015337_ (##car _e1494915334_))
                                    (_tl1495115339_ (##cdr _e1494915334_)))
                                (if (gx#stx-pair? _tl1495115339_)
                                    (let ((_e1495215342_
                                           (gx#stx-e _tl1495115339_)))
                                      (let ((_hd1495315345_
                                             (##car _e1495215342_))
                                            (_tl1495415347_
                                             (##cdr _e1495215342_)))
                                        (if (gx#stx-pair? _hd1495315345_)
                                            (let ((_e1495515350_
                                                   (gx#stx-e _hd1495315345_)))
                                              (let ((_hd1495615353_
                                                     (##car _e1495515350_))
                                                    (_tl1495715355_
                                                     (##cdr _e1495515350_)))
                                                (if (gx#identifier?
                                                     _hd1495615353_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1495615353_)
                                                        (if (gx#stx-pair?
                                                             _tl1495715355_)
                                                            (let ((_e1495815358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1495715355_)))
                      (let ((_hd1495915361_ (##car _e1495815358_))
                            (_tl1496015363_ (##cdr _e1495815358_)))
                        (if (gx#stx-pair? _hd1495915361_)
                            (let ((_e1496115366_ (gx#stx-e _hd1495915361_)))
                              (let ((_hd1496215369_ (##car _e1496115366_))
                                    (_tl1496315371_ (##cdr _e1496115366_)))
                                (if (gx#identifier? _hd1496215369_)
                                    (if (gx#stx-eq? '%#ref _hd1496215369_)
                                        (if (gx#stx-pair? _tl1496315371_)
                                            (let ((_e1496415374_
                                                   (gx#stx-e _tl1496315371_)))
                                              (let ((_hd1496515377_
                                                     (##car _e1496415374_))
                                                    (_tl1496615379_
                                                     (##cdr _e1496415374_)))
                                                (if (gx#stx-null?
                                                     _tl1496615379_)
                                                    (if (gx#stx-pair?
                                                         _tl1496015363_)
                                                        (let ((_e1496715382_
                                                               (gx#stx-e
                                                                _tl1496015363_)))
                                                          (let ((_hd1496815385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1496715382_))
                        (_tl1496915387_ (##cdr _e1496715382_)))
                    (if (gx#stx-pair? _hd1496815385_)
                        (let ((_e1497015390_ (gx#stx-e _hd1496815385_)))
                          (let ((_hd1497115393_ (##car _e1497015390_))
                                (_tl1497215395_ (##cdr _e1497015390_)))
                            (if (gx#identifier? _hd1497115393_)
                                (if (gx#stx-eq? '%#ref _hd1497115393_)
                                    (if (gx#stx-pair? _tl1497215395_)
                                        (let ((_e1497315398_
                                               (gx#stx-e _tl1497215395_)))
                                          (let ((_hd1497415401_
                                                 (##car _e1497315398_))
                                                (_tl1497515403_
                                                 (##cdr _e1497315398_)))
                                            (if (gx#stx-null? _tl1497515403_)
                                                (if (gx#stx-pair?
                                                     _tl1496915387_)
                                                    (let ((_e1497615406_
                                                           (gx#stx-e
                                                            _tl1496915387_)))
                                                      (let ((_hd1497715409_
                                                             (##car _e1497615406_))
                                                            (_tl1497815411_
                                                             (##cdr _e1497615406_)))
                                                        (if (gx#stx-pair?
                                                             _hd1497715409_)
                                                            (let ((_e1497915414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1497715409_)))
                      (let ((_hd1498015417_ (##car _e1497915414_))
                            (_tl1498115419_ (##cdr _e1497915414_)))
                        (if (gx#identifier? _hd1498015417_)
                            (if (gx#stx-eq? '%#ref _hd1498015417_)
                                (if (gx#stx-pair? _tl1498115419_)
                                    (let ((_e1498215422_
                                           (gx#stx-e _tl1498115419_)))
                                      (let ((_hd1498315425_
                                             (##car _e1498215422_))
                                            (_tl1498415427_
                                             (##cdr _e1498215422_)))
                                        (if (gx#stx-null? _tl1498415427_)
                                            (if (gx#stx-pair? _tl1497815411_)
                                                (let ((_e1498515430_
                                                       (gx#stx-e
                                                        _tl1497815411_)))
                                                  (let ((_hd1498615433_
                                                         (##car _e1498515430_))
                                                        (_tl1498715435_
                                                         (##cdr _e1498515430_)))
                                                    (if (gx#stx-pair?
                                                         _hd1498615433_)
                                                        (let ((_e1498815438_
                                                               (gx#stx-e
                                                                _hd1498615433_)))
                                                          (let ((_hd1498915441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1498815438_))
                        (_tl1499015443_ (##cdr _e1498815438_)))
                    (if (gx#identifier? _hd1498915441_)
                        (if (gx#stx-eq? '%#ref _hd1498915441_)
                            (if (gx#stx-pair? _tl1499015443_)
                                (let ((_e1499115446_
                                       (gx#stx-e _tl1499015443_)))
                                  (let ((_hd1499215449_ (##car _e1499115446_))
                                        (_tl1499315451_ (##cdr _e1499115446_)))
                                    (if (gx#stx-null? _tl1499315451_)
                                        (if (gx#stx-null? _tl1498715435_)
                                            (if (gx#stx-null? _tl1495415347_)
                                                ((lambda (_L15454_
                                                          _L15455_
                                                          _L15456_
                                                          _L15457_
                                                          _L15458_)
                                                   (if (if (gx#identifier?
                                                            _L15458_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15457_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L15456_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L15458_ _L15454_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t15501_
                       (gxc#generate-runtime-binding-id _L15455_))
                      (_type15503_ (gxc#optimizer-resolve-type _type-t15501_)))
                 (if (##structure-instance-of?
                      _type15503_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t15501_)
                     '#f))
               (_g1493615321_ _g1494015324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1499215449_
                                                 _hd1498315425_
                                                 _hd1497415401_
                                                 _hd1496515377_
                                                 _hd1495015337_)
                                                (_g1493615321_ _g1494015324_))
                                            (_g1493615321_ _g1494015324_))
                                        (_g1493615321_ _g1494015324_))))
                                (_g1493615321_ _g1494015324_))
                            (_g1493615321_ _g1494015324_))
                        (_g1493615321_ _g1494015324_))))
                (_g1493615321_ _g1494015324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1493615321_ _g1494015324_))
                                            (_g1493615321_ _g1494015324_))))
                                    (_g1493615321_ _g1494015324_))
                                (_g1493615321_ _g1494015324_))
                            (_g1493615321_ _g1494015324_))))
                    (_g1493615321_ _g1494015324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493615321_
                                                     _g1494015324_))
                                                (_g1493615321_
                                                 _g1494015324_))))
                                        (_g1493615321_ _g1494015324_))
                                    (_g1493615321_ _g1494015324_))
                                (_g1493615321_ _g1494015324_))))
                        (_g1493615321_ _g1494015324_))))
                (_g1493615321_ _g1494015324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493615321_
                                                     _g1494015324_))))
                                            (_g1493615321_ _g1494015324_))
                                        (_g1493615321_ _g1494015324_))
                                    (_g1493615321_ _g1494015324_))))
                            (_g1493615321_ _g1494015324_))))
                    (_g1493615321_ _g1494015324_))
                (_g1493615321_ _g1494015324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493615321_
                                                     _g1494015324_))))
                                            (_g1493615321_ _g1494015324_))))
                                    (_g1493615321_ _g1494015324_))))
                            (_g1493615321_ _g1494015324_))))
                    (_g1493615321_ _g1494015324_)))))
        (_g1493515506_ _stx14934_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx14880_)
      (letrec ((_clause-e14882_
                (lambda (_form14932_)
                  (let ((__obj21274 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj21274
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form14932_)
                       (gxc#dispatch-lambda-form-delegate _form14932_))
                      __obj21274)))))
        (let* ((_g1488514895_
                (lambda (_g1488614892_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1488614892_)))
               (_g1488414902_ (lambda (_g1488614898_) ((lambda () '#f))))
               (_g1488314929_
                (lambda (_g1488614905_)
                  (if (gx#stx-pair? _g1488614905_)
                      (let ((_e1488814907_ (gx#stx-e _g1488614905_)))
                        (let ((_hd1488914910_ (##car _e1488814907_))
                              (_tl1489014912_ (##cdr _e1488814907_)))
                          ((lambda (_L14915_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L14915_)
                                 (let ((_clauses14927_
                                        (map _clause-e14882_ _L14915_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses14927_))
                                 (_g1488414902_ _g1488614905_)))
                           _tl1489014912_)))
                      (_g1488414902_ _g1488614905_)))))
          (_g1488314929_ _stx14880_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx14785_)
      (let* ((_g1478814808_
              (lambda (_g1478914805_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1478914805_)))
             (_g1478714815_ (lambda (_g1478914811_) ((lambda () '#f))))
             (_g1478614877_
              (lambda (_g1478914818_)
                (if (gx#stx-pair? _g1478914818_)
                    (let ((_e1479214820_ (gx#stx-e _g1478914818_)))
                      (let ((_hd1479314823_ (##car _e1479214820_))
                            (_tl1479414825_ (##cdr _e1479214820_)))
                        (if (gx#stx-pair? _tl1479414825_)
                            (let ((_e1479514828_ (gx#stx-e _tl1479414825_)))
                              (let ((_hd1479614831_ (##car _e1479514828_))
                                    (_tl1479714833_ (##cdr _e1479514828_)))
                                (if (gx#stx-pair? _hd1479614831_)
                                    (let ((_e1479814836_
                                           (gx#stx-e _hd1479614831_)))
                                      (let ((_hd1479914839_
                                             (##car _e1479814836_))
                                            (_tl1480014841_
                                             (##cdr _e1479814836_)))
                                        (if (gx#identifier? _hd1479914839_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1479914839_)
                                                (if (gx#stx-pair?
                                                     _tl1480014841_)
                                                    (let ((_e1480114844_
                                                           (gx#stx-e
                                                            _tl1480014841_)))
                                                      (let ((_hd1480214847_
                                                             (##car _e1480114844_))
                                                            (_tl1480314849_
                                                             (##cdr _e1480114844_)))
                                                        (if (gx#stx-null?
                                                             _tl1480314849_)
                                                            ((lambda (_L14852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14853_)
                       (let ((_type-e1487014872_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L14853_)
                               '#f)))
                         (if _type-e1487014872_
                             (let ((_type-e14875_ _type-e1487014872_))
                               (_type-e14875_ _stx14785_ _L14852_))
                             '#f)))
                     _tl1479714833_
                     _hd1480214847_)
                    (_g1478714815_ _g1478914818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1478714815_
                                                     _g1478914818_))
                                                (_g1478714815_ _g1478914818_))
                                            (_g1478714815_ _g1478914818_))))
                                    (_g1478714815_ _g1478914818_))))
                            (_g1478714815_ _g1478914818_))))
                    (_g1478714815_ _g1478914818_)))))
        (_g1478614877_ _stx14785_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx14270_ _args14271_)
      (let* ((_g1427514388_
              (lambda (_g1427614385_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1427614385_)))
             (_g1427414395_
              (lambda (_g1427614391_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx14270_))
                     '#f)))))
             (_g1427314602_
              (lambda (_g1427614398_)
                (if (gx#stx-pair? _g1427614398_)
                    (let ((_e1433614400_ (gx#stx-e _g1427614398_)))
                      (let ((_hd1433714403_ (##car _e1433614400_))
                            (_tl1433814405_ (##cdr _e1433614400_)))
                        (if (gx#stx-pair? _hd1433714403_)
                            (let ((_e1433914408_ (gx#stx-e _hd1433714403_)))
                              (let ((_hd1434014411_ (##car _e1433914408_))
                                    (_tl1434114413_ (##cdr _e1433914408_)))
                                (if (gx#identifier? _hd1434014411_)
                                    (if (gx#stx-eq? '%#quote _hd1434014411_)
                                        (if (gx#stx-pair? _tl1434114413_)
                                            (let ((_e1434214416_
                                                   (gx#stx-e _tl1434114413_)))
                                              (let ((_hd1434314419_
                                                     (##car _e1434214416_))
                                                    (_tl1434414421_
                                                     (##cdr _e1434214416_)))
                                                (if (gx#stx-null?
                                                     _tl1434414421_)
                                                    (if (gx#stx-pair?
                                                         _tl1433814405_)
                                                        (let ((_e1434514424_
                                                               (gx#stx-e
                                                                _tl1433814405_)))
                                                          (let ((_hd1434614427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1434514424_))
                        (_tl1434714429_ (##cdr _e1434514424_)))
                    (if (gx#stx-pair? _hd1434614427_)
                        (let ((_e1434814432_ (gx#stx-e _hd1434614427_)))
                          (let ((_hd1434914435_ (##car _e1434814432_))
                                (_tl1435014437_ (##cdr _e1434814432_)))
                            (if (gx#identifier? _hd1434914435_)
                                (if (gx#stx-eq? '%#ref _hd1434914435_)
                                    (if (gx#stx-pair? _tl1435014437_)
                                        (let ((_e1435114440_
                                               (gx#stx-e _tl1435014437_)))
                                          (let ((_hd1435214443_
                                                 (##car _e1435114440_))
                                                (_tl1435314445_
                                                 (##cdr _e1435114440_)))
                                            (if (gx#stx-null? _tl1435314445_)
                                                (if (gx#stx-pair?
                                                     _tl1434714429_)
                                                    (let ((_e1435414448_
                                                           (gx#stx-e
                                                            _tl1434714429_)))
                                                      (let ((_hd1435514451_
                                                             (##car _e1435414448_))
                                                            (_tl1435614453_
                                                             (##cdr _e1435414448_)))
                                                        (if (gx#stx-pair?
                                                             _hd1435514451_)
                                                            (let ((_e1435714456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1435514451_)))
                      (let ((_hd1435814459_ (##car _e1435714456_))
                            (_tl1435914461_ (##cdr _e1435714456_)))
                        (if (gx#identifier? _hd1435814459_)
                            (if (gx#stx-eq? '%#quote _hd1435814459_)
                                (if (gx#stx-pair? _tl1435914461_)
                                    (let ((_e1436014464_
                                           (gx#stx-e _tl1435914461_)))
                                      (let ((_hd1436114467_
                                             (##car _e1436014464_))
                                            (_tl1436214469_
                                             (##cdr _e1436014464_)))
                                        (if (gx#stx-null? _tl1436214469_)
                                            (if (gx#stx-pair? _tl1435614453_)
                                                (let ((_e1436314472_
                                                       (gx#stx-e
                                                        _tl1435614453_)))
                                                  (let ((_hd1436414475_
                                                         (##car _e1436314472_))
                                                        (_tl1436514477_
                                                         (##cdr _e1436314472_)))
                                                    (if (gx#stx-pair?
                                                         _tl1436514477_)
                                                        (let ((_e1436614480_
                                                               (gx#stx-e
                                                                _tl1436514477_)))
                                                          (let ((_hd1436714483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1436614480_))
                        (_tl1436814485_ (##cdr _e1436614480_)))
                    (if (gx#stx-pair? _hd1436714483_)
                        (let ((_e1436914488_ (gx#stx-e _hd1436714483_)))
                          (let ((_hd1437014491_ (##car _e1436914488_))
                                (_tl1437114493_ (##cdr _e1436914488_)))
                            (if (gx#identifier? _hd1437014491_)
                                (if (gx#stx-eq? '%#quote _hd1437014491_)
                                    (if (gx#stx-pair? _tl1437114493_)
                                        (let ((_e1437214496_
                                               (gx#stx-e _tl1437114493_)))
                                          (let ((_hd1437314499_
                                                 (##car _e1437214496_))
                                                (_tl1437414501_
                                                 (##cdr _e1437214496_)))
                                            (if (gx#stx-null? _tl1437414501_)
                                                (if (gx#stx-pair?
                                                     _tl1436814485_)
                                                    (let ((_e1437514504_
                                                           (gx#stx-e
                                                            _tl1436814485_)))
                                                      (let ((_hd1437614507_
                                                             (##car _e1437514504_))
                                                            (_tl1437714509_
                                                             (##cdr _e1437514504_)))
                                                        (if (gx#stx-pair?
                                                             _hd1437614507_)
                                                            (let ((_e1437814512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1437614507_)))
                      (let ((_hd1437914515_ (##car _e1437814512_))
                            (_tl1438014517_ (##cdr _e1437814512_)))
                        (if (gx#identifier? _hd1437914515_)
                            (if (gx#stx-eq? '%#quote _hd1437914515_)
                                (if (gx#stx-pair? _tl1438014517_)
                                    (let ((_e1438114520_
                                           (gx#stx-e _tl1438014517_)))
                                      (let ((_hd1438214523_
                                             (##car _e1438114520_))
                                            (_tl1438314525_
                                             (##cdr _e1438114520_)))
                                        (if (gx#stx-null? _tl1438314525_)
                                            (if (gx#stx-null? _tl1437714509_)
                                                ((lambda (_L14528_
                                                          _L14529_
                                                          _L14530_
                                                          _L14531_
                                                          _L14532_
                                                          _L14533_)
                                                   (let* ((_super-t14579_
                                                           (if (gx#stx-e
                                                                _L14532_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L14532_)
                                                               '#f))
                                                          (_super-type14581_
                                                           (if _super-t14579_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t14579_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type14581_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type14581_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx14270_
                    _L14532_)
                   '#!void)
               (let ((_fields14597_ (gx#stx-e _L14531_))
                     (_xfields14598_
                      (if _super-type14581_
                          (let ((_super-fields1458314586_
                                 (##structure-ref
                                  _super-type14581_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1458414588_
                                 (##structure-ref
                                  _super-type14581_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1458314586_
                                (if _super-xfields1458414588_
                                    (let ((_super-fields14591_
                                           _super-fields1458314586_)
                                          (_super-xfields14592_
                                           _super-xfields1458414588_))
                                      (fx+ _super-fields14591_
                                           _super-xfields14592_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist14599_ (gx#stx-e _L14529_))
                     (_ctor14600_
                      (let ((_$e14594_ (gx#stx-e _L14528_)))
                        (if _$e14594_
                            (values _$e14594_)
                            (if _super-type14581_
                                (##structure-ref
                                 _super-type14581_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t14579_ '#!void '#f))))))
                 (let ((__obj21275 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj21275
                      (gx#stx-e _L14533_)
                      _super-t14579_
                      _fields14597_
                      _xfields14598_
                      _ctor14600_
                      _plist14599_)
                     __obj21275))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1438214523_
                                                 _hd1437314499_
                                                 _hd1436414475_
                                                 _hd1436114467_
                                                 _hd1435214443_
                                                 _hd1434314419_)
                                                (_g1427414395_ _g1427614398_))
                                            (_g1427414395_ _g1427614398_))))
                                    (_g1427414395_ _g1427614398_))
                                (_g1427414395_ _g1427614398_))
                            (_g1427414395_ _g1427614398_))))
                    (_g1427414395_ _g1427614398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427414395_
                                                     _g1427614398_))
                                                (_g1427414395_
                                                 _g1427614398_))))
                                        (_g1427414395_ _g1427614398_))
                                    (_g1427414395_ _g1427614398_))
                                (_g1427414395_ _g1427614398_))))
                        (_g1427414395_ _g1427614398_))))
                (_g1427414395_ _g1427614398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1427414395_ _g1427614398_))
                                            (_g1427414395_ _g1427614398_))))
                                    (_g1427414395_ _g1427614398_))
                                (_g1427414395_ _g1427614398_))
                            (_g1427414395_ _g1427614398_))))
                    (_g1427414395_ _g1427614398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427414395_
                                                     _g1427614398_))
                                                (_g1427414395_
                                                 _g1427614398_))))
                                        (_g1427414395_ _g1427614398_))
                                    (_g1427414395_ _g1427614398_))
                                (_g1427414395_ _g1427614398_))))
                        (_g1427414395_ _g1427614398_))))
                (_g1427414395_ _g1427614398_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427414395_
                                                     _g1427614398_))))
                                            (_g1427414395_ _g1427614398_))
                                        (_g1427414395_ _g1427614398_))
                                    (_g1427414395_ _g1427614398_))))
                            (_g1427414395_ _g1427614398_))))
                    (_g1427414395_ _g1427614398_))))
             (_g1427214782_
              (lambda (_g1427614605_)
                (if (gx#stx-pair? _g1427614605_)
                    (let ((_e1428214607_ (gx#stx-e _g1427614605_)))
                      (let ((_hd1428314610_ (##car _e1428214607_))
                            (_tl1428414612_ (##cdr _e1428214607_)))
                        (if (gx#stx-pair? _hd1428314610_)
                            (let ((_e1428514615_ (gx#stx-e _hd1428314610_)))
                              (let ((_hd1428614618_ (##car _e1428514615_))
                                    (_tl1428714620_ (##cdr _e1428514615_)))
                                (if (gx#identifier? _hd1428614618_)
                                    (if (gx#stx-eq? '%#quote _hd1428614618_)
                                        (if (gx#stx-pair? _tl1428714620_)
                                            (let ((_e1428814623_
                                                   (gx#stx-e _tl1428714620_)))
                                              (let ((_hd1428914626_
                                                     (##car _e1428814623_))
                                                    (_tl1429014628_
                                                     (##cdr _e1428814623_)))
                                                (if (gx#stx-null?
                                                     _tl1429014628_)
                                                    (if (gx#stx-pair?
                                                         _tl1428414612_)
                                                        (let ((_e1429114631_
                                                               (gx#stx-e
                                                                _tl1428414612_)))
                                                          (let ((_hd1429214634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1429114631_))
                        (_tl1429314636_ (##cdr _e1429114631_)))
                    (if (gx#stx-pair? _hd1429214634_)
                        (let ((_e1429414639_ (gx#stx-e _hd1429214634_)))
                          (let ((_hd1429514642_ (##car _e1429414639_))
                                (_tl1429614644_ (##cdr _e1429414639_)))
                            (if (gx#identifier? _hd1429514642_)
                                (if (gx#stx-eq? '%#quote _hd1429514642_)
                                    (if (gx#stx-pair? _tl1429614644_)
                                        (let ((_e1429714647_
                                               (gx#stx-e _tl1429614644_)))
                                          (let ((_hd1429814650_
                                                 (##car _e1429714647_))
                                                (_tl1429914652_
                                                 (##cdr _e1429714647_)))
                                            (if (gx#stx-datum? _hd1429814650_)
                                                (if (equal? (gx#stx-e
                                                             _hd1429814650_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1429914652_)
                                                        (if (gx#stx-pair?
                                                             _tl1429314636_)
                                                            (let ((_e1430014655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1429314636_)))
                      (let ((_hd1430114658_ (##car _e1430014655_))
                            (_tl1430214660_ (##cdr _e1430014655_)))
                        (if (gx#stx-pair? _hd1430114658_)
                            (let ((_e1430314663_ (gx#stx-e _hd1430114658_)))
                              (let ((_hd1430414666_ (##car _e1430314663_))
                                    (_tl1430514668_ (##cdr _e1430314663_)))
                                (if (gx#identifier? _hd1430414666_)
                                    (if (gx#stx-eq? '%#quote _hd1430414666_)
                                        (if (gx#stx-pair? _tl1430514668_)
                                            (let ((_e1430614671_
                                                   (gx#stx-e _tl1430514668_)))
                                              (let ((_hd1430714674_
                                                     (##car _e1430614671_))
                                                    (_tl1430814676_
                                                     (##cdr _e1430614671_)))
                                                (if (gx#stx-null?
                                                     _tl1430814676_)
                                                    (if (gx#stx-pair?
                                                         _tl1430214660_)
                                                        (let ((_e1430914679_
                                                               (gx#stx-e
                                                                _tl1430214660_)))
                                                          (let ((_hd1431014682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1430914679_))
                        (_tl1431114684_ (##cdr _e1430914679_)))
                    (if (gx#stx-pair? _tl1431114684_)
                        (let ((_e1431214687_ (gx#stx-e _tl1431114684_)))
                          (let ((_hd1431314690_ (##car _e1431214687_))
                                (_tl1431414692_ (##cdr _e1431214687_)))
                            (if (gx#stx-pair? _hd1431314690_)
                                (let ((_e1431514695_
                                       (gx#stx-e _hd1431314690_)))
                                  (let ((_hd1431614698_ (##car _e1431514695_))
                                        (_tl1431714700_ (##cdr _e1431514695_)))
                                    (if (gx#identifier? _hd1431614698_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1431614698_)
                                            (if (gx#stx-pair? _tl1431714700_)
                                                (let ((_e1431814703_
                                                       (gx#stx-e
                                                        _tl1431714700_)))
                                                  (let ((_hd1431914706_
                                                         (##car _e1431814703_))
                                                        (_tl1432014708_
                                                         (##cdr _e1431814703_)))
                                                    (if (gx#stx-null?
                                                         _tl1432014708_)
                                                        (if (gx#stx-pair?
                                                             _tl1431414692_)
                                                            (let ((_e1432114711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1431414692_)))
                      (let ((_hd1432214714_ (##car _e1432114711_))
                            (_tl1432314716_ (##cdr _e1432114711_)))
                        (if (gx#stx-pair? _hd1432214714_)
                            (let ((_e1432414719_ (gx#stx-e _hd1432214714_)))
                              (let ((_hd1432514722_ (##car _e1432414719_))
                                    (_tl1432614724_ (##cdr _e1432414719_)))
                                (if (gx#identifier? _hd1432514722_)
                                    (if (gx#stx-eq? '%#quote _hd1432514722_)
                                        (if (gx#stx-pair? _tl1432614724_)
                                            (let ((_e1432714727_
                                                   (gx#stx-e _tl1432614724_)))
                                              (let ((_hd1432814730_
                                                     (##car _e1432714727_))
                                                    (_tl1432914732_
                                                     (##cdr _e1432714727_)))
                                                (if (gx#stx-null?
                                                     _tl1432914732_)
                                                    (if (gx#stx-null?
                                                         _tl1432314716_)
                                                        ((lambda (_L14735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14736_
                          _L14737_
                          _L14738_
                          _L14739_)
                   (let ((__obj21276 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj21276
                        (gx#stx-e _L14739_)
                        '#f
                        (gx#stx-e _L14738_)
                        '0
                        (gx#stx-e _L14735_)
                        (gx#stx-e _L14736_))
                       __obj21276)))
                 _hd1432814730_
                 _hd1431914706_
                 _hd1431014682_
                 _hd1430714674_
                 _hd1428914626_)
                (_g1427314602_ _g1427614605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427314602_
                                                     _g1427614605_))))
                                            (_g1427314602_ _g1427614605_))
                                        (_g1427314602_ _g1427614605_))
                                    (_g1427314602_ _g1427614605_))))
                            (_g1427314602_ _g1427614605_))))
                    (_g1427314602_ _g1427614605_))
                (_g1427314602_ _g1427614605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1427314602_ _g1427614605_))
                                            (_g1427314602_ _g1427614605_))
                                        (_g1427314602_ _g1427614605_))))
                                (_g1427314602_ _g1427614605_))))
                        (_g1427314602_ _g1427614605_))))
                (_g1427314602_ _g1427614605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427314602_
                                                     _g1427614605_))))
                                            (_g1427314602_ _g1427614605_))
                                        (_g1427314602_ _g1427614605_))
                                    (_g1427314602_ _g1427614605_))))
                            (_g1427314602_ _g1427614605_))))
                    (_g1427314602_ _g1427614605_))
                (_g1427314602_ _g1427614605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427314602_
                                                     _g1427614605_))
                                                (_g1427314602_
                                                 _g1427614605_))))
                                        (_g1427314602_ _g1427614605_))
                                    (_g1427314602_ _g1427614605_))
                                (_g1427314602_ _g1427614605_))))
                        (_g1427314602_ _g1427614605_))))
                (_g1427314602_ _g1427614605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1427314602_
                                                     _g1427614605_))))
                                            (_g1427314602_ _g1427614605_))
                                        (_g1427314602_ _g1427614605_))
                                    (_g1427314602_ _g1427614605_))))
                            (_g1427314602_ _g1427614605_))))
                    (_g1427314602_ _g1427614605_)))))
        (_g1427214782_ _args14271_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx14196_ _args14197_)
      (let* ((_g1420014216_
              (lambda (_g1420114213_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1420114213_)))
             (_g1419914223_ (lambda (_g1420114219_) ((lambda () '#f))))
             (_g1419814267_
              (lambda (_g1420114226_)
                (if (gx#stx-pair? _g1420114226_)
                    (let ((_e1420314228_ (gx#stx-e _g1420114226_)))
                      (let ((_hd1420414231_ (##car _e1420314228_))
                            (_tl1420514233_ (##cdr _e1420314228_)))
                        (if (gx#stx-pair? _hd1420414231_)
                            (let ((_e1420614236_ (gx#stx-e _hd1420414231_)))
                              (let ((_hd1420714239_ (##car _e1420614236_))
                                    (_tl1420814241_ (##cdr _e1420614236_)))
                                (if (gx#identifier? _hd1420714239_)
                                    (if (gx#stx-eq? '%#ref _hd1420714239_)
                                        (if (gx#stx-pair? _tl1420814241_)
                                            (let ((_e1420914244_
                                                   (gx#stx-e _tl1420814241_)))
                                              (let ((_hd1421014247_
                                                     (##car _e1420914244_))
                                                    (_tl1421114249_
                                                     (##cdr _e1420914244_)))
                                                (if (gx#stx-null?
                                                     _tl1421114249_)
                                                    (if (gx#stx-null?
                                                         _tl1420514233_)
                                                        ((lambda (_L14252_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L14252_)))
                                                         _hd1421014247_)
                                                        (_g1419914223_
                                                         _g1420114226_))
                                                    (_g1419914223_
                                                     _g1420114226_))))
                                            (_g1419914223_ _g1420114226_))
                                        (_g1419914223_ _g1420114226_))
                                    (_g1419914223_ _g1420114226_))))
                            (_g1419914223_ _g1420114226_))))
                    (_g1419914223_ _g1420114226_)))))
        (_g1419814267_ _args14197_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda14065
      (lambda (_stx14067_ _args14068_ _unchecked?14069_)
        (let* ((_g1407214098_
                (lambda (_g1407314095_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1407314095_)))
               (_g1407114105_ (lambda (_g1407314101_) ((lambda () '#f))))
               (_g1407014181_
                (lambda (_g1407314108_)
                  (if (gx#stx-pair? _g1407314108_)
                      (let ((_e1407614110_ (gx#stx-e _g1407314108_)))
                        (let ((_hd1407714113_ (##car _e1407614110_))
                              (_tl1407814115_ (##cdr _e1407614110_)))
                          (if (gx#stx-pair? _hd1407714113_)
                              (let ((_e1407914118_ (gx#stx-e _hd1407714113_)))
                                (let ((_hd1408014121_ (##car _e1407914118_))
                                      (_tl1408114123_ (##cdr _e1407914118_)))
                                  (if (gx#identifier? _hd1408014121_)
                                      (if (gx#stx-eq? '%#ref _hd1408014121_)
                                          (if (gx#stx-pair? _tl1408114123_)
                                              (let ((_e1408214126_
                                                     (gx#stx-e
                                                      _tl1408114123_)))
                                                (let ((_hd1408314129_
                                                       (##car _e1408214126_))
                                                      (_tl1408414131_
                                                       (##cdr _e1408214126_)))
                                                  (if (gx#stx-null?
                                                       _tl1408414131_)
                                                      (if (gx#stx-pair?
                                                           _tl1407814115_)
                                                          (let ((_e1408514134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1407814115_)))
                    (let ((_hd1408614137_ (##car _e1408514134_))
                          (_tl1408714139_ (##cdr _e1408514134_)))
                      (if (gx#stx-pair? _hd1408614137_)
                          (let ((_e1408814142_ (gx#stx-e _hd1408614137_)))
                            (let ((_hd1408914145_ (##car _e1408814142_))
                                  (_tl1409014147_ (##cdr _e1408814142_)))
                              (if (gx#identifier? _hd1408914145_)
                                  (if (gx#stx-eq? '%#quote _hd1408914145_)
                                      (if (gx#stx-pair? _tl1409014147_)
                                          (let ((_e1409114150_
                                                 (gx#stx-e _tl1409014147_)))
                                            (let ((_hd1409214153_
                                                   (##car _e1409114150_))
                                                  (_tl1409314155_
                                                   (##cdr _e1409114150_)))
                                              (if (gx#stx-null? _tl1409314155_)
                                                  (if (gx#stx-null?
                                                       _tl1408714139_)
                                                      ((lambda (_L14158_
                                                                _L14159_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L14159_)
                                                          (gx#stx-e _L14158_)
                                                          _unchecked?14069_))
                                                       _hd1409214153_
                                                       _hd1408314129_)
                                                      (_g1407114105_
                                                       _g1407314108_))
                                                  (_g1407114105_
                                                   _g1407314108_))))
                                          (_g1407114105_ _g1407314108_))
                                      (_g1407114105_ _g1407314108_))
                                  (_g1407114105_ _g1407314108_))))
                          (_g1407114105_ _g1407314108_))))
                  (_g1407114105_ _g1407314108_))
              (_g1407114105_ _g1407314108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1407114105_ _g1407314108_))
                                          (_g1407114105_ _g1407314108_))
                                      (_g1407114105_ _g1407314108_))))
                              (_g1407114105_ _g1407314108_))))
                      (_g1407114105_ _g1407314108_)))))
          (_g1407014181_ _args14068_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx14187_ _args14188_)
          (let ((_unchecked?14190_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda14065
             _stx14187_
             _args14188_
             _unchecked?14190_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g21340_
          (let ((_g21339_ (length _g21340_)))
            (cond ((fx= _g21339_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g21340_))
                  ((fx= _g21339_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda14065
                          _g21340_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g21340_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13935
      (lambda (_stx13937_ _args13938_ _unchecked?13939_)
        (let* ((_g1394213968_
                (lambda (_g1394313965_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1394313965_)))
               (_g1394113975_ (lambda (_g1394313971_) ((lambda () '#f))))
               (_g1394014051_
                (lambda (_g1394313978_)
                  (if (gx#stx-pair? _g1394313978_)
                      (let ((_e1394613980_ (gx#stx-e _g1394313978_)))
                        (let ((_hd1394713983_ (##car _e1394613980_))
                              (_tl1394813985_ (##cdr _e1394613980_)))
                          (if (gx#stx-pair? _hd1394713983_)
                              (let ((_e1394913988_ (gx#stx-e _hd1394713983_)))
                                (let ((_hd1395013991_ (##car _e1394913988_))
                                      (_tl1395113993_ (##cdr _e1394913988_)))
                                  (if (gx#identifier? _hd1395013991_)
                                      (if (gx#stx-eq? '%#ref _hd1395013991_)
                                          (if (gx#stx-pair? _tl1395113993_)
                                              (let ((_e1395213996_
                                                     (gx#stx-e
                                                      _tl1395113993_)))
                                                (let ((_hd1395313999_
                                                       (##car _e1395213996_))
                                                      (_tl1395414001_
                                                       (##cdr _e1395213996_)))
                                                  (if (gx#stx-null?
                                                       _tl1395414001_)
                                                      (if (gx#stx-pair?
                                                           _tl1394813985_)
                                                          (let ((_e1395514004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1394813985_)))
                    (let ((_hd1395614007_ (##car _e1395514004_))
                          (_tl1395714009_ (##cdr _e1395514004_)))
                      (if (gx#stx-pair? _hd1395614007_)
                          (let ((_e1395814012_ (gx#stx-e _hd1395614007_)))
                            (let ((_hd1395914015_ (##car _e1395814012_))
                                  (_tl1396014017_ (##cdr _e1395814012_)))
                              (if (gx#identifier? _hd1395914015_)
                                  (if (gx#stx-eq? '%#quote _hd1395914015_)
                                      (if (gx#stx-pair? _tl1396014017_)
                                          (let ((_e1396114020_
                                                 (gx#stx-e _tl1396014017_)))
                                            (let ((_hd1396214023_
                                                   (##car _e1396114020_))
                                                  (_tl1396314025_
                                                   (##cdr _e1396114020_)))
                                              (if (gx#stx-null? _tl1396314025_)
                                                  (if (gx#stx-null?
                                                       _tl1395714009_)
                                                      ((lambda (_L14028_
                                                                _L14029_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L14029_)
                                                          (gx#stx-e _L14028_)
                                                          _unchecked?13939_))
                                                       _hd1396214023_
                                                       _hd1395313999_)
                                                      (_g1394113975_
                                                       _g1394313978_))
                                                  (_g1394113975_
                                                   _g1394313978_))))
                                          (_g1394113975_ _g1394313978_))
                                      (_g1394113975_ _g1394313978_))
                                  (_g1394113975_ _g1394313978_))))
                          (_g1394113975_ _g1394313978_))))
                  (_g1394113975_ _g1394313978_))
              (_g1394113975_ _g1394313978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1394113975_ _g1394313978_))
                                          (_g1394113975_ _g1394313978_))
                                      (_g1394113975_ _g1394313978_))))
                              (_g1394113975_ _g1394313978_))))
                      (_g1394113975_ _g1394313978_)))))
          (_g1394014051_ _args13938_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx14057_ _args14058_)
          (let ((_unchecked?14060_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13935
             _stx14057_
             _args14058_
             _unchecked?14060_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g21342_
          (let ((_g21341_ (length _g21342_)))
            (cond ((fx= _g21341_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g21342_))
                  ((fx= _g21341_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13935
                          _g21342_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g21342_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx13933_ _args13934_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda14065
       _stx13933_
       _args13934_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx13930_ _args13931_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13935
       _stx13930_
       _args13931_
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
    (lambda (_stx13879_)
      (let* ((_g1388113894_
              (lambda (_g1388213891_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1388213891_)))
             (_g1388013927_
              (lambda (_g1388213897_)
                (if (gx#stx-pair? _g1388213897_)
                    (let ((_e1388413899_ (gx#stx-e _g1388213897_)))
                      (let ((_hd1388513902_ (##car _e1388413899_))
                            (_tl1388613904_ (##cdr _e1388413899_)))
                        (if (gx#stx-pair? _tl1388613904_)
                            (let ((_e1388713907_ (gx#stx-e _tl1388613904_)))
                              (let ((_hd1388813910_ (##car _e1388713907_))
                                    (_tl1388913912_ (##cdr _e1388713907_)))
                                (if (gx#stx-null? _tl1388913912_)
                                    ((lambda (_L13915_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L13915_)))
                                     _hd1388813910_)
                                    (_g1388113894_ _g1388213897_))))
                            (_g1388113894_ _g1388213897_))))
                    (_g1388113894_ _g1388213897_)))))
        (_g1388013927_ _stx13879_))))
  (define gxc#optimize-call%
    (lambda (_stx13785_)
      (let* ((_g1378813808_
              (lambda (_g1378913805_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1378913805_)))
             (_g1378713815_
              (lambda (_g1378913811_)
                ((lambda () (gxc#xform-call% _stx13785_)))))
             (_g1378613876_
              (lambda (_g1378913818_)
                (if (gx#stx-pair? _g1378913818_)
                    (let ((_e1379213820_ (gx#stx-e _g1378913818_)))
                      (let ((_hd1379313823_ (##car _e1379213820_))
                            (_tl1379413825_ (##cdr _e1379213820_)))
                        (if (gx#stx-pair? _tl1379413825_)
                            (let ((_e1379513828_ (gx#stx-e _tl1379413825_)))
                              (let ((_hd1379613831_ (##car _e1379513828_))
                                    (_tl1379713833_ (##cdr _e1379513828_)))
                                (if (gx#stx-pair? _hd1379613831_)
                                    (let ((_e1379813836_
                                           (gx#stx-e _hd1379613831_)))
                                      (let ((_hd1379913839_
                                             (##car _e1379813836_))
                                            (_tl1380013841_
                                             (##cdr _e1379813836_)))
                                        (if (gx#identifier? _hd1379913839_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1379913839_)
                                                (if (gx#stx-pair?
                                                     _tl1380013841_)
                                                    (let ((_e1380113844_
                                                           (gx#stx-e
                                                            _tl1380013841_)))
                                                      (let ((_hd1380213847_
                                                             (##car _e1380113844_))
                                                            (_tl1380313849_
                                                             (##cdr _e1380113844_)))
                                                        (if (gx#stx-null?
                                                             _tl1380313849_)
                                                            ((lambda (_L13852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L13853_)
                       (let* ((_rator-id13871_
                               (gxc#generate-runtime-binding-id _L13853_))
                              (_rator-type13873_
                               (gxc#optimizer-resolve-type _rator-id13871_)))
                         (if (##structure-instance-of?
                              _rator-type13873_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id13871_
                                '" => "
                                _rator-type13873_
                                '" "
                                (##structure-ref
                                 _rator-type13873_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type13873_
                                'optimize-call
                                _stx13785_
                                _L13852_))
                             (if (not _rator-type13873_)
                                 (gxc#xform-call% _stx13785_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx13785_
                                  _rator-type13873_)))))
                     _tl1379713833_
                     _hd1380213847_)
                    (_g1378713815_ _g1378913818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1378713815_
                                                     _g1378913818_))
                                                (_g1378713815_ _g1378913818_))
                                            (_g1378713815_ _g1378913818_))))
                                    (_g1378713815_ _g1378913818_))))
                            (_g1378713815_ _g1378913818_))))
                    (_g1378713815_ _g1378913818_)))))
        (_g1378613876_ _stx13785_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self13640_ _stx13641_ _args13642_)
      (let* ((_self1364313649_ _self13640_)
             (_E1364513653_
              (lambda () (error '"No clause matching" _self1364313649_)))
             (_K1364613777_
              (lambda (_struct-t13656_)
                (let* ((_struct-type13658_
                        (gxc#optimizer-resolve-type _struct-t13656_))
                       (_struct-type1365913673_ _struct-type13658_)
                       (_E1366313677_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1365913673_)))
                       (_else1366213681_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx13641_
                           _struct-t13656_
                           _struct-type13658_)))
                       (_try-match1366113689_
                        (lambda ()
                          (let ((_K1366413686_
                                 (lambda () (gxc#xform-call% _stx13641_))))
                            (if (##eq? _struct-type1365913673_ '#f)
                                (_K1366413686_)
                                (_else1366213681_)))))
                       (_K1366513752_
                        (lambda (_plist13692_ _struct-type-id13693_)
                          (let* ((_g1369613706_
                                  (lambda (_g1369713703_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1369713703_)))
                                 (_g1369513713_
                                  (lambda (_g1369713709_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx13641_)))))
                                 (_g1369413749_
                                  (lambda (_g1369713716_)
                                    (if (gx#stx-pair? _g1369713716_)
                                        (let ((_e1369913718_
                                               (gx#stx-e _g1369713716_)))
                                          (let ((_hd1370013721_
                                                 (##car _e1369913718_))
                                                (_tl1370113723_
                                                 (##cdr _e1369913718_)))
                                            (if (gx#stx-null? _tl1370113723_)
                                                ((lambda (_L13726_)
                                                   (let ((_expr13746_
                                                          (gxc#compile-e
                                                           _L13726_))
                                                         (_op13747_
                                                          (if (if _plist13692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist13692_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op13747_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id13693_ '()))
                          (cons _expr13746_ '())))
              _stx13641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1370013721_)
                                                (_g1369513713_
                                                 _g1369713716_))))
                                        (_g1369513713_ _g1369713716_)))))
                            (_g1369413749_ _args13642_)))))
                  (if (##structure-instance-of?
                       _struct-type1365913673_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1366613755_
                              (##vector-ref _struct-type1365913673_ '1))
                             (_struct-type-id13758_ _e1366613755_)
                             (_e1366713760_
                              (##vector-ref _struct-type1365913673_ '2))
                             (_e1366813763_
                              (##vector-ref _struct-type1365913673_ '3))
                             (_e1366913766_
                              (##vector-ref _struct-type1365913673_ '4))
                             (_e1367013769_
                              (##vector-ref _struct-type1365913673_ '5))
                             (_e1367113772_
                              (##vector-ref _struct-type1365913673_ '6))
                             (_plist13775_ _e1367113772_))
                        (_K1366513752_ _plist13775_ _struct-type-id13758_))
                      (_try-match1366113689_))))))
        (if (##structure-instance-of?
             _self1364313649_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1364713780_ (##vector-ref _self1364313649_ '1))
                   (_struct-t13783_ _e1364713780_))
              (_K1364613777_ _struct-t13783_))
            (_E1364513653_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self13536_ _stx13537_ _args13538_)
      (let* ((_self1353913545_ _self13536_)
             (_E1354113549_
              (lambda () (error '"No clause matching" _self1353913545_)))
             (_K1354213632_
              (lambda (_struct-t13552_)
                (let* ((_struct-type13554_
                        (gxc#optimizer-resolve-type _struct-t13552_))
                       (_struct-type1355513568_ _struct-type13554_)
                       (_E1355913572_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1355513568_)))
                       (_else1355813576_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx13537_
                           _struct-t13552_
                           _struct-type13554_)))
                       (_try-match1355713584_
                        (lambda ()
                          (let ((_K1356013581_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t13552_)
                                     (gxc#xform-call% _stx13537_)))))
                            (if (##eq? _struct-type1355513568_ '#f)
                                (_K1356013581_)
                                (_else1355813576_)))))
                       (_K1356113606_
                        (lambda (_ctor13587_
                                 _xfields13588_
                                 _fields13589_
                                 _type-id13590_)
                          (let* ((_args13592_ (map gxc#compile-e _args13538_))
                                 (_$e13594_
                                  (if _ctor13587_
                                      (if _xfields13588_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type13554_
                                           _ctor13587_)
                                          '#f)
                                      '#f)))
                            (if _$e13594_
                                ((lambda (_kons13597_)
                                   (let ((_$obj13599_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj13599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t13552_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields13589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields13588_)
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
                                    (cons (cons '%#ref (cons _kons13597_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj13599_ '()))
                                                _args13592_)))
                              _stx13537_))
                            (cons (cons '%#ref (cons _$obj13599_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx13537_)))
                                 _$e13594_)
                                (if (let ((_$e13601_ _ctor13587_))
                                      (if _$e13601_
                                          _$e13601_
                                          (not _xfields13588_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t13552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args13592_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx13537_)
                                    (let ((_arity13604_
                                           (fx+ _fields13589_ _xfields13588_)))
                                      (if (fx= _arity13604_
                                               (length _args13592_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t13552_ '())) _args13592_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx13537_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx13537_
                                           _struct-t13552_
                                           _arity13604_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1355513568_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1356213609_
                              (##vector-ref _struct-type1355513568_ '1))
                             (_type-id13612_ _e1356213609_)
                             (_e1356313614_
                              (##vector-ref _struct-type1355513568_ '2))
                             (_e1356413617_
                              (##vector-ref _struct-type1355513568_ '3))
                             (_fields13620_ _e1356413617_)
                             (_e1356513622_
                              (##vector-ref _struct-type1355513568_ '4))
                             (_xfields13625_ _e1356513622_)
                             (_e1356613627_
                              (##vector-ref _struct-type1355513568_ '5))
                             (_ctor13630_ _e1356613627_))
                        (_K1356113606_
                         _ctor13630_
                         _xfields13625_
                         _fields13620_
                         _type-id13612_))
                      (_try-match1355713584_))))))
        (if (##structure-instance-of?
             _self1353913545_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1354313635_ (##vector-ref _self1353913545_ '1))
                   (_struct-t13638_ _e1354313635_))
              (_K1354213632_ _struct-t13638_))
            (_E1354113549_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self13370_ _stx13371_ _args13372_)
      (let* ((_self1337313381_ _self13370_)
             (_E1337513385_
              (lambda () (error '"No clause matching" _self1337313381_)))
             (_K1337613518_
              (lambda (_unchecked?13388_ _off13389_ _struct-t13390_)
                (let* ((_struct-type13392_
                        (gxc#optimizer-resolve-type _struct-t13390_))
                       (_struct-type1339313407_ _struct-type13392_)
                       (_E1339713411_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1339313407_)))
                       (_else1339613415_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx13371_
                           _struct-t13390_
                           _struct-type13392_)))
                       (_try-match1339513423_
                        (lambda ()
                          (let ((_K1339813420_
                                 (lambda () (gxc#xform-call% _stx13371_))))
                            (if (##eq? _struct-type1339313407_ '#f)
                                (_K1339813420_)
                                (_else1339613415_)))))
                       (_K1339913489_
                        (lambda (_plist13426_
                                 _xfields13427_
                                 _fields13428_
                                 _struct-type-id13429_)
                          (if _xfields13427_
                              (let* ((_g1343213442_
                                      (lambda (_g1343313439_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1343313439_)))
                                     (_g1343113449_
                                      (lambda (_g1343313445_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx13371_)))))
                                     (_g1343013486_
                                      (lambda (_g1343313452_)
                                        (if (gx#stx-pair? _g1343313452_)
                                            (let ((_e1343513454_
                                                   (gx#stx-e _g1343313452_)))
                                              (let ((_hd1343613457_
                                                     (##car _e1343513454_))
                                                    (_tl1343713459_
                                                     (##cdr _e1343513454_)))
                                                (if (gx#stx-null?
                                                     _tl1343713459_)
                                                    ((lambda (_L13462_)
                                                       (let ((_expr13482_
                                                              (gxc#compile-e
                                                               _L13462_))
                                                             (_off13483_
                                                              (fx+ _off13389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields13427_
                           '1))
                     (_op13484_
                      (if _unchecked?13388_
                          '%#struct-unchecked-ref
                          (if (if _plist13426_
                                  (assgetq 'final: _plist13426_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op13484_
                        (cons (cons '%#ref (cons _struct-t13390_ '()))
                              (cons (cons '%#quote (cons _off13483_ '()))
                                    (cons _expr13482_ '()))))
                  _stx13371_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1343613457_)
                                                    (_g1343113449_
                                                     _g1343313452_))))
                                            (_g1343113449_ _g1343313452_)))))
                                (_g1343013486_ _args13372_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id13429_)
                                (gxc#xform-call% _stx13371_))))))
                  (if (##structure-instance-of?
                       _struct-type1339313407_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1340013492_
                              (##vector-ref _struct-type1339313407_ '1))
                             (_struct-type-id13495_ _e1340013492_)
                             (_e1340113497_
                              (##vector-ref _struct-type1339313407_ '2))
                             (_e1340213500_
                              (##vector-ref _struct-type1339313407_ '3))
                             (_fields13503_ _e1340213500_)
                             (_e1340313505_
                              (##vector-ref _struct-type1339313407_ '4))
                             (_xfields13508_ _e1340313505_)
                             (_e1340413510_
                              (##vector-ref _struct-type1339313407_ '5))
                             (_e1340513513_
                              (##vector-ref _struct-type1339313407_ '6))
                             (_plist13516_ _e1340513513_))
                        (_K1339913489_
                         _plist13516_
                         _xfields13508_
                         _fields13503_
                         _struct-type-id13495_))
                      (_try-match1339513423_))))))
        (if (##structure-instance-of?
             _self1337313381_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1337713521_ (##vector-ref _self1337313381_ '1))
                   (_struct-t13524_ _e1337713521_)
                   (_e1337813526_ (##vector-ref _self1337313381_ '2))
                   (_off13529_ _e1337813526_)
                   (_e1337913531_ (##vector-ref _self1337313381_ '3))
                   (_unchecked?13534_ _e1337913531_))
              (_K1337613518_ _unchecked?13534_ _off13529_ _struct-t13524_))
            (_E1337513385_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self13187_ _stx13188_ _args13189_)
      (let* ((_self1319013198_ _self13187_)
             (_E1319213202_
              (lambda () (error '"No clause matching" _self1319013198_)))
             (_K1319313352_
              (lambda (_unchecked?13205_ _off13206_ _struct-t13207_)
                (let* ((_struct-type13209_
                        (gxc#optimizer-resolve-type _struct-t13207_))
                       (_struct-type1321013224_ _struct-type13209_)
                       (_E1321413228_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1321013224_)))
                       (_else1321313232_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx13188_
                           _struct-t13207_
                           _struct-type13209_)))
                       (_try-match1321213240_
                        (lambda ()
                          (let ((_K1321513237_
                                 (lambda () (gxc#xform-call% _stx13188_))))
                            (if (##eq? _struct-type1321013224_ '#f)
                                (_K1321513237_)
                                (_else1321313232_)))))
                       (_K1321613323_
                        (lambda (_plist13243_
                                 _xfields13244_
                                 _fields13245_
                                 _struct-type-id13246_)
                          (if _xfields13244_
                              (let* ((_g1324913263_
                                      (lambda (_g1325013260_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1325013260_)))
                                     (_g1324813270_
                                      (lambda (_g1325013266_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx13188_)))))
                                     (_g1324713320_
                                      (lambda (_g1325013273_)
                                        (if (gx#stx-pair? _g1325013273_)
                                            (let ((_e1325313275_
                                                   (gx#stx-e _g1325013273_)))
                                              (let ((_hd1325413278_
                                                     (##car _e1325313275_))
                                                    (_tl1325513280_
                                                     (##cdr _e1325313275_)))
                                                (if (gx#stx-pair?
                                                     _tl1325513280_)
                                                    (let ((_e1325613283_
                                                           (gx#stx-e
                                                            _tl1325513280_)))
                                                      (let ((_hd1325713286_
                                                             (##car _e1325613283_))
                                                            (_tl1325813288_
                                                             (##cdr _e1325613283_)))
                                                        (if (gx#stx-null?
                                                             _tl1325813288_)
                                                            ((lambda (_L13291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L13292_)
                       (let ((_expr13315_ (gxc#compile-e _L13292_))
                             (_val13316_ (gxc#compile-e _L13291_))
                             (_off13317_ (fx+ _off13206_ _xfields13244_ '1))
                             (_op13318_
                              (if _unchecked?13205_
                                  '%#struct-unchecked-set!
                                  (if (if _plist13243_
                                          (assgetq 'final: _plist13243_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op13318_
                                (cons (cons '%#ref (cons _struct-t13207_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off13317_ '()))
                                            (cons _expr13315_
                                                  (cons _val13316_ '())))))
                          _stx13188_)))
                     _hd1325713286_
                     _hd1325413278_)
                    (_g1324813270_ _g1325013273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1324813270_
                                                     _g1325013273_))))
                                            (_g1324813270_ _g1325013273_)))))
                                (_g1324713320_ _args13189_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id13246_)
                                (gxc#xform-call% _stx13188_))))))
                  (if (##structure-instance-of?
                       _struct-type1321013224_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1321713326_
                              (##vector-ref _struct-type1321013224_ '1))
                             (_struct-type-id13329_ _e1321713326_)
                             (_e1321813331_
                              (##vector-ref _struct-type1321013224_ '2))
                             (_e1321913334_
                              (##vector-ref _struct-type1321013224_ '3))
                             (_fields13337_ _e1321913334_)
                             (_e1322013339_
                              (##vector-ref _struct-type1321013224_ '4))
                             (_xfields13342_ _e1322013339_)
                             (_e1322113344_
                              (##vector-ref _struct-type1321013224_ '5))
                             (_e1322213347_
                              (##vector-ref _struct-type1321013224_ '6))
                             (_plist13350_ _e1322213347_))
                        (_K1321613323_
                         _plist13350_
                         _xfields13342_
                         _fields13337_
                         _struct-type-id13329_))
                      (_try-match1321213240_))))))
        (if (##structure-instance-of?
             _self1319013198_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1319413355_ (##vector-ref _self1319013198_ '1))
                   (_struct-t13358_ _e1319413355_)
                   (_e1319513360_ (##vector-ref _self1319013198_ '2))
                   (_off13363_ _e1319513360_)
                   (_e1319613365_ (##vector-ref _self1319013198_ '3))
                   (_unchecked?13368_ _e1319613365_))
              (_K1319313352_ _unchecked?13368_ _off13363_ _struct-t13358_))
            (_E1319213202_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self13143_ _stx13144_ _args13145_)
      (let* ((_self1314613155_ _self13143_)
             (_E1314813159_
              (lambda () (error '"No clause matching" _self1314613155_)))
             (_K1314913166_
              (lambda (_inline13162_ _dispatch13163_ _arity13164_)
                (begin
                  (if (gxc#!lambda-arity-match? _self13143_ _args13145_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx13144_
                       _arity13164_))
                  (if _inline13162_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline13162_ _stx13144_)
                          _stx13144_)))
                      (if _dispatch13163_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch13163_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch13163_ '()))
                                          _args13145_))
                              _stx13144_)))
                          (gxc#xform-call% _stx13144_)))))))
        (if (##structure-instance-of?
             _self1314613155_
             (##type-id gxc#!lambda::t))
            (let* ((_e1315013169_ (##vector-ref _self1314613155_ '1))
                   (_e1315113172_ (##vector-ref _self1314613155_ '2))
                   (_arity13175_ _e1315113172_)
                   (_e1315213177_ (##vector-ref _self1314613155_ '3))
                   (_dispatch13180_ _e1315213177_)
                   (_e1315313182_ (##vector-ref _self1314613155_ '4))
                   (_inline13185_ _e1315313182_))
              (_K1314913166_ _inline13185_ _dispatch13180_ _arity13175_))
            (_E1314813159_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self13104_ _stx13105_ _args13106_)
      (let* ((_self1310713114_ _self13104_)
             (_E1310913118_
              (lambda () (error '"No clause matching" _self1310713114_)))
             (_K1311013132_
              (lambda (_clauses13121_)
                (let ((_$e13127_
                       (find (lambda (_g1312213124_)
                               (gxc#!lambda-arity-match?
                                _g1312213124_
                                _args13106_))
                             _clauses13121_)))
                  (if _$e13127_
                      ((lambda (_clause13130_)
                         (call-method
                          _clause13130_
                          'optimize-call
                          _stx13105_
                          _args13106_))
                       _$e13127_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx13105_
                       (map gxc#!lambda-arity _clauses13121_)))))))
        (if (##structure-instance-of?
             _self1310713114_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1311113135_ (##vector-ref _self1310713114_ '1))
                   (_e1311213138_ (##vector-ref _self1310713114_ '2))
                   (_clauses13141_ _e1311213138_))
              (_K1311013132_ _clauses13141_))
            (_E1310913118_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self13040_ _args13041_)
      (let* ((_self1304213049_ _self13040_)
             (_E1304413053_
              (lambda () (error '"No clause matching" _self1304213049_)))
             (_K1304513093_
              (lambda (_arity13056_)
                (let* ((_arity1305713066_ _arity13056_)
                       (_E1306013070_
                        (lambda ()
                          (error '"No clause matching" _arity1305713066_)))
                       (_try-match1305913086_
                        (lambda ()
                          (let ((_K1306113076_
                                 (lambda (_arity13074_)
                                   (fx>= (length _args13041_) _arity13074_))))
                            (if (##pair? _arity1305713066_)
                                (let ((_hd1306213079_
                                       (##car _arity1305713066_))
                                      (_tl1306313081_
                                       (##cdr _arity1305713066_)))
                                  (let ((_arity13084_ _hd1306213079_))
                                    (if (##null? _tl1306313081_)
                                        (_K1306113076_ _arity13084_)
                                        (_E1306013070_))))
                                (_E1306013070_)))))
                       (_K1306413090_
                        (lambda () (fx= (length _args13041_) _arity13056_))))
                  (if (fixnum? _arity1305713066_)
                      (_K1306413090_)
                      (_try-match1305913086_))))))
        (if (##structure-instance-of?
             _self1304213049_
             (##type-id gxc#!lambda::t))
            (let* ((_e1304613096_ (##vector-ref _self1304213049_ '1))
                   (_e1304713099_ (##vector-ref _self1304213049_ '2))
                   (_arity13102_ _e1304713099_))
              (_K1304513093_ _arity13102_))
            (_E1304413053_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx12980_)
      (let* ((_g1298212996_
              (lambda (_g1298312993_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1298312993_)))
             (_g1298113037_
              (lambda (_g1298312999_)
                (if (gx#stx-pair? _g1298312999_)
                    (let ((_e1298613001_ (gx#stx-e _g1298312999_)))
                      (let ((_hd1298713004_ (##car _e1298613001_))
                            (_tl1298813006_ (##cdr _e1298613001_)))
                        (if (gx#stx-pair? _tl1298813006_)
                            (let ((_e1298913009_ (gx#stx-e _tl1298813006_)))
                              (let ((_hd1299013012_ (##car _e1298913009_))
                                    (_tl1299113014_ (##cdr _e1298913009_)))
                                ((lambda (_L13017_ _L13018_)
                                   (let* ((_ctx13031_
                                           (gx#syntax-local-e__0 _L13018_))
                                          (_code13033_
                                           (##structure-ref
                                            _ctx13031_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code13033_))
                                      gx#current-expander-context
                                      _ctx13031_)))
                                 _tl1299113014_
                                 _hd1299013012_)))
                            (_g1298212996_ _g1298312999_))))
                    (_g1298212996_ _g1298312999_)))))
        (_g1298113037_ _stx12980_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx12790_)
      (letrec ((_generate-e12792_
                (lambda (_id12969_)
                  (let* ((_sym12971_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id12969_)
                              '#f))
                         (_$e12973_
                          (if _sym12971_
                              (gxc#optimizer-lookup-type _sym12971_)
                              '#f)))
                    (if _$e12973_
                        ((lambda (_type12976_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym12971_)
                             (let ((_typedecl12978_
                                    (call-method _type12976_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym12971_
                                           (cons _typedecl12978_ '()))))))
                         _$e12973_)
                        '(begin))))))
        (let* ((_g1279512833_
                (lambda (_g1279612830_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1279612830_)))
               (_g1279412914_
                (lambda (_g1279612836_)
                  (if (gx#stx-pair? _g1279612836_)
                      (let ((_e1281112838_ (gx#stx-e _g1279612836_)))
                        (let ((_hd1281212841_ (##car _e1281112838_))
                              (_tl1281312843_ (##cdr _e1281112838_)))
                          (if (gx#stx-pair? _tl1281312843_)
                              (let ((_e1281412846_ (gx#stx-e _tl1281312843_)))
                                (let ((_hd1281512849_ (##car _e1281412846_))
                                      (_tl1281612851_ (##cdr _e1281412846_)))
                                  (if (gx#stx-pair/null? _hd1281512849_)
                                      (if (fx>= (gx#stx-length _hd1281512849_)
                                                '0)
                                          (let ((_g21343_
                                                 (gx#syntax-split-splice
                                                  _hd1281512849_
                                                  '0)))
                                            (begin
                                              (let ((_g21344_
                                                     (values-count _g21343_)))
                                                (if (not (fx= _g21344_ 2))
                                                    (error "Context expects 2 values"
                                                           _g21344_)))
                                              (let ((_target1281712854_
                                                     (values-ref _g21343_ 0))
                                                    (_tl1281912856_
                                                     (values-ref _g21343_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1281912856_)
                                                    (letrec ((_loop1282012859_
                                                              (lambda (_hd1281812862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1282412864_)
                        (if (gx#stx-pair? _hd1281812862_)
                            (let ((_e1282112867_ (gx#stx-e _hd1281812862_)))
                              (let ((_lp-hd1282212870_ (##car _e1282112867_))
                                    (_lp-tl1282312872_ (##cdr _e1282112867_)))
                                (_loop1282012859_
                                 _lp-tl1282312872_
                                 (cons _lp-hd1282212870_ _id1282412864_))))
                            (let ((_id1282512875_ (reverse _id1282412864_)))
                              (if (gx#stx-pair? _tl1281612851_)
                                  (let ((_e1282612878_
                                         (gx#stx-e _tl1281612851_)))
                                    (let ((_hd1282712881_
                                           (##car _e1282612878_))
                                          (_tl1282812883_
                                           (##cdr _e1282612878_)))
                                      (if (gx#stx-null? _tl1282812883_)
                                          ((lambda (_L12886_)
                                             (let ((_types12912_
                                                    (map _generate-e12792_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1290412907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1290512909_)
                             (cons _g1290412907_ _g1290512909_))
                           '()
                           _L12886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types12912_)))
                                           _id1282512875_)
                                          (_g1279512833_ _g1279612836_))))
                                  (_g1279512833_ _g1279612836_)))))))
              (_loop1282012859_ _target1281712854_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1279512833_
                                                     _g1279612836_)))))
                                          (_g1279512833_ _g1279612836_))
                                      (_g1279512833_ _g1279612836_))))
                              (_g1279512833_ _g1279612836_))))
                      (_g1279512833_ _g1279612836_))))
               (_g1279312966_
                (lambda (_g1279612917_)
                  (if (gx#stx-pair? _g1279612917_)
                      (let ((_e1279812919_ (gx#stx-e _g1279612917_)))
                        (let ((_hd1279912922_ (##car _e1279812919_))
                              (_tl1280012924_ (##cdr _e1279812919_)))
                          (if (gx#stx-pair? _tl1280012924_)
                              (let ((_e1280112927_ (gx#stx-e _tl1280012924_)))
                                (let ((_hd1280212930_ (##car _e1280112927_))
                                      (_tl1280312932_ (##cdr _e1280112927_)))
                                  (if (gx#stx-pair? _hd1280212930_)
                                      (let ((_e1280412935_
                                             (gx#stx-e _hd1280212930_)))
                                        (let ((_hd1280512938_
                                               (##car _e1280412935_))
                                              (_tl1280612940_
                                               (##cdr _e1280412935_)))
                                          (if (gx#stx-null? _tl1280612940_)
                                              (if (gx#stx-pair? _tl1280312932_)
                                                  (let ((_e1280712943_
                                                         (gx#stx-e
                                                          _tl1280312932_)))
                                                    (let ((_hd1280812946_
                                                           (##car _e1280712943_))
                                                          (_tl1280912948_
                                                           (##cdr _e1280712943_)))
                                                      (if (gx#stx-null?
                                                           _tl1280912948_)
                                                          ((lambda (_L12951_)
                                                             (_generate-e12792_
                                                              _L12951_))
                                                           _hd1280512938_)
                                                          (_g1279412914_
                                                           _g1279612917_))))
                                                  (_g1279412914_
                                                   _g1279612917_))
                                              (_g1279412914_ _g1279612917_))))
                                      (_g1279412914_ _g1279612917_))))
                              (_g1279412914_ _g1279612917_))))
                      (_g1279412914_ _g1279612917_)))))
          (_g1279312966_ _stx12790_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx12344_)
      (let* ((_g1234812450_
              (lambda (_g1234912447_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1234912447_)))
             (_g1234712457_ (lambda (_g1234912453_) ((lambda () '(begin)))))
             (_g1234612607_
              (lambda (_g1234912460_)
                (if (gx#stx-pair? _g1234912460_)
                    (let ((_e1240712462_ (gx#stx-e _g1234912460_)))
                      (let ((_hd1240812465_ (##car _e1240712462_))
                            (_tl1240912467_ (##cdr _e1240712462_)))
                        (if (gx#stx-pair? _tl1240912467_)
                            (let ((_e1241012470_ (gx#stx-e _tl1240912467_)))
                              (let ((_hd1241112473_ (##car _e1241012470_))
                                    (_tl1241212475_ (##cdr _e1241012470_)))
                                (if (gx#stx-pair? _hd1241112473_)
                                    (let ((_e1241312478_
                                           (gx#stx-e _hd1241112473_)))
                                      (let ((_hd1241412481_
                                             (##car _e1241312478_))
                                            (_tl1241512483_
                                             (##cdr _e1241312478_)))
                                        (if (gx#identifier? _hd1241412481_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1241412481_)
                                                (if (gx#stx-pair?
                                                     _tl1241512483_)
                                                    (let ((_e1241612486_
                                                           (gx#stx-e
                                                            _tl1241512483_)))
                                                      (let ((_hd1241712489_
                                                             (##car _e1241612486_))
                                                            (_tl1241812491_
                                                             (##cdr _e1241612486_)))
                                                        (if (gx#stx-null?
                                                             _tl1241812491_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1241212475_)
                        (let ((_e1241912494_ (gx#stx-e _tl1241212475_)))
                          (let ((_hd1242012497_ (##car _e1241912494_))
                                (_tl1242112499_ (##cdr _e1241912494_)))
                            (if (gx#stx-pair? _hd1242012497_)
                                (let ((_e1242212502_
                                       (gx#stx-e _hd1242012497_)))
                                  (let ((_hd1242312505_ (##car _e1242212502_))
                                        (_tl1242412507_ (##cdr _e1242212502_)))
                                    (if (gx#identifier? _hd1242312505_)
                                        (if (gx#stx-eq? '%#ref _hd1242312505_)
                                            (if (gx#stx-pair? _tl1242412507_)
                                                (let ((_e1242512510_
                                                       (gx#stx-e
                                                        _tl1242412507_)))
                                                  (let ((_hd1242612513_
                                                         (##car _e1242512510_))
                                                        (_tl1242712515_
                                                         (##cdr _e1242512510_)))
                                                    (if (gx#stx-null?
                                                         _tl1242712515_)
                                                        (if (gx#stx-pair?
                                                             _tl1242112499_)
                                                            (let ((_e1242812518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1242112499_)))
                      (let ((_hd1242912521_ (##car _e1242812518_))
                            (_tl1243012523_ (##cdr _e1242812518_)))
                        (if (gx#stx-pair? _hd1242912521_)
                            (let ((_e1243112526_ (gx#stx-e _hd1242912521_)))
                              (let ((_hd1243212529_ (##car _e1243112526_))
                                    (_tl1243312531_ (##cdr _e1243112526_)))
                                (if (gx#identifier? _hd1243212529_)
                                    (if (gx#stx-eq? '%#quote _hd1243212529_)
                                        (if (gx#stx-pair? _tl1243312531_)
                                            (let ((_e1243412534_
                                                   (gx#stx-e _tl1243312531_)))
                                              (let ((_hd1243512537_
                                                     (##car _e1243412534_))
                                                    (_tl1243612539_
                                                     (##cdr _e1243412534_)))
                                                (if (gx#stx-null?
                                                     _tl1243612539_)
                                                    (if (gx#stx-pair?
                                                         _tl1243012523_)
                                                        (let ((_e1243712542_
                                                               (gx#stx-e
                                                                _tl1243012523_)))
                                                          (let ((_hd1243812545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1243712542_))
                        (_tl1243912547_ (##cdr _e1243712542_)))
                    (if (gx#stx-pair? _hd1243812545_)
                        (let ((_e1244012550_ (gx#stx-e _hd1243812545_)))
                          (let ((_hd1244112553_ (##car _e1244012550_))
                                (_tl1244212555_ (##cdr _e1244012550_)))
                            (if (gx#identifier? _hd1244112553_)
                                (if (gx#stx-eq? '%#ref _hd1244112553_)
                                    (if (gx#stx-pair? _tl1244212555_)
                                        (let ((_e1244312558_
                                               (gx#stx-e _tl1244212555_)))
                                          (let ((_hd1244412561_
                                                 (##car _e1244312558_))
                                                (_tl1244512563_
                                                 (##cdr _e1244312558_)))
                                            (if (gx#stx-null? _tl1244512563_)
                                                (if (gx#stx-null?
                                                     _tl1243912547_)
                                                    ((lambda (_L12566_
                                                              _L12567_
                                                              _L12568_
                                                              _L12569_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L12568_)
                               (cons (gx#stx-e _L12567_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L12566_)
                                           (cons '#f '())))))
                   (_g1234712457_ _g1234912460_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1244412561_
                                                     _hd1243512537_
                                                     _hd1242612513_
                                                     _hd1241712489_)
                                                    (_g1234712457_
                                                     _g1234912460_))
                                                (_g1234712457_
                                                 _g1234912460_))))
                                        (_g1234712457_ _g1234912460_))
                                    (_g1234712457_ _g1234912460_))
                                (_g1234712457_ _g1234912460_))))
                        (_g1234712457_ _g1234912460_))))
                (_g1234712457_ _g1234912460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1234712457_
                                                     _g1234912460_))))
                                            (_g1234712457_ _g1234912460_))
                                        (_g1234712457_ _g1234912460_))
                                    (_g1234712457_ _g1234912460_))))
                            (_g1234712457_ _g1234912460_))))
                    (_g1234712457_ _g1234912460_))
                (_g1234712457_ _g1234912460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1234712457_ _g1234912460_))
                                            (_g1234712457_ _g1234912460_))
                                        (_g1234712457_ _g1234912460_))))
                                (_g1234712457_ _g1234912460_))))
                        (_g1234712457_ _g1234912460_))
                    (_g1234712457_ _g1234912460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1234712457_
                                                     _g1234912460_))
                                                (_g1234712457_ _g1234912460_))
                                            (_g1234712457_ _g1234912460_))))
                                    (_g1234712457_ _g1234912460_))))
                            (_g1234712457_ _g1234912460_))))
                    (_g1234712457_ _g1234912460_))))
             (_g1234512787_
              (lambda (_g1234912610_)
                (if (gx#stx-pair? _g1234912610_)
                    (let ((_e1235512612_ (gx#stx-e _g1234912610_)))
                      (let ((_hd1235612615_ (##car _e1235512612_))
                            (_tl1235712617_ (##cdr _e1235512612_)))
                        (if (gx#stx-pair? _tl1235712617_)
                            (let ((_e1235812620_ (gx#stx-e _tl1235712617_)))
                              (let ((_hd1235912623_ (##car _e1235812620_))
                                    (_tl1236012625_ (##cdr _e1235812620_)))
                                (if (gx#stx-pair? _hd1235912623_)
                                    (let ((_e1236112628_
                                           (gx#stx-e _hd1235912623_)))
                                      (let ((_hd1236212631_
                                             (##car _e1236112628_))
                                            (_tl1236312633_
                                             (##cdr _e1236112628_)))
                                        (if (gx#identifier? _hd1236212631_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1236212631_)
                                                (if (gx#stx-pair?
                                                     _tl1236312633_)
                                                    (let ((_e1236412636_
                                                           (gx#stx-e
                                                            _tl1236312633_)))
                                                      (let ((_hd1236512639_
                                                             (##car _e1236412636_))
                                                            (_tl1236612641_
                                                             (##cdr _e1236412636_)))
                                                        (if (gx#stx-null?
                                                             _tl1236612641_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1236012625_)
                        (let ((_e1236712644_ (gx#stx-e _tl1236012625_)))
                          (let ((_hd1236812647_ (##car _e1236712644_))
                                (_tl1236912649_ (##cdr _e1236712644_)))
                            (if (gx#stx-pair? _hd1236812647_)
                                (let ((_e1237012652_
                                       (gx#stx-e _hd1236812647_)))
                                  (let ((_hd1237112655_ (##car _e1237012652_))
                                        (_tl1237212657_ (##cdr _e1237012652_)))
                                    (if (gx#identifier? _hd1237112655_)
                                        (if (gx#stx-eq? '%#ref _hd1237112655_)
                                            (if (gx#stx-pair? _tl1237212657_)
                                                (let ((_e1237312660_
                                                       (gx#stx-e
                                                        _tl1237212657_)))
                                                  (let ((_hd1237412663_
                                                         (##car _e1237312660_))
                                                        (_tl1237512665_
                                                         (##cdr _e1237312660_)))
                                                    (if (gx#stx-null?
                                                         _tl1237512665_)
                                                        (if (gx#stx-pair?
                                                             _tl1236912649_)
                                                            (let ((_e1237612668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1236912649_)))
                      (let ((_hd1237712671_ (##car _e1237612668_))
                            (_tl1237812673_ (##cdr _e1237612668_)))
                        (if (gx#stx-pair? _hd1237712671_)
                            (let ((_e1237912676_ (gx#stx-e _hd1237712671_)))
                              (let ((_hd1238012679_ (##car _e1237912676_))
                                    (_tl1238112681_ (##cdr _e1237912676_)))
                                (if (gx#identifier? _hd1238012679_)
                                    (if (gx#stx-eq? '%#quote _hd1238012679_)
                                        (if (gx#stx-pair? _tl1238112681_)
                                            (let ((_e1238212684_
                                                   (gx#stx-e _tl1238112681_)))
                                              (let ((_hd1238312687_
                                                     (##car _e1238212684_))
                                                    (_tl1238412689_
                                                     (##cdr _e1238212684_)))
                                                (if (gx#stx-null?
                                                     _tl1238412689_)
                                                    (if (gx#stx-pair?
                                                         _tl1237812673_)
                                                        (let ((_e1238512692_
                                                               (gx#stx-e
                                                                _tl1237812673_)))
                                                          (let ((_hd1238612695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1238512692_))
                        (_tl1238712697_ (##cdr _e1238512692_)))
                    (if (gx#stx-pair? _hd1238612695_)
                        (let ((_e1238812700_ (gx#stx-e _hd1238612695_)))
                          (let ((_hd1238912703_ (##car _e1238812700_))
                                (_tl1239012705_ (##cdr _e1238812700_)))
                            (if (gx#identifier? _hd1238912703_)
                                (if (gx#stx-eq? '%#ref _hd1238912703_)
                                    (if (gx#stx-pair? _tl1239012705_)
                                        (let ((_e1239112708_
                                               (gx#stx-e _tl1239012705_)))
                                          (let ((_hd1239212711_
                                                 (##car _e1239112708_))
                                                (_tl1239312713_
                                                 (##cdr _e1239112708_)))
                                            (if (gx#stx-null? _tl1239312713_)
                                                (if (gx#stx-pair?
                                                     _tl1238712697_)
                                                    (let ((_e1239412716_
                                                           (gx#stx-e
                                                            _tl1238712697_)))
                                                      (let ((_hd1239512719_
                                                             (##car _e1239412716_))
                                                            (_tl1239612721_
                                                             (##cdr _e1239412716_)))
                                                        (if (gx#stx-pair?
                                                             _hd1239512719_)
                                                            (let ((_e1239712724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1239512719_)))
                      (let ((_hd1239812727_ (##car _e1239712724_))
                            (_tl1239912729_ (##cdr _e1239712724_)))
                        (if (gx#identifier? _hd1239812727_)
                            (if (gx#stx-eq? '%#quote _hd1239812727_)
                                (if (gx#stx-pair? _tl1239912729_)
                                    (let ((_e1240012732_
                                           (gx#stx-e _tl1239912729_)))
                                      (let ((_hd1240112735_
                                             (##car _e1240012732_))
                                            (_tl1240212737_
                                             (##cdr _e1240012732_)))
                                        (if (gx#stx-null? _tl1240212737_)
                                            (if (gx#stx-null? _tl1239612721_)
                                                ((lambda (_L12740_
                                                          _L12741_
                                                          _L12742_
                                                          _L12743_
                                                          _L12744_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L12744_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12743_)
                           (cons (gx#stx-e _L12742_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L12741_)
                                       (cons (gx#stx-e _L12740_) '())))))
               (_g1234612607_ _g1234912610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1240112735_
                                                 _hd1239212711_
                                                 _hd1238312687_
                                                 _hd1237412663_
                                                 _hd1236512639_)
                                                (_g1234612607_ _g1234912610_))
                                            (_g1234612607_ _g1234912610_))))
                                    (_g1234612607_ _g1234912610_))
                                (_g1234612607_ _g1234912610_))
                            (_g1234612607_ _g1234912610_))))
                    (_g1234612607_ _g1234912610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1234612607_
                                                     _g1234912610_))
                                                (_g1234612607_
                                                 _g1234912610_))))
                                        (_g1234612607_ _g1234912610_))
                                    (_g1234612607_ _g1234912610_))
                                (_g1234612607_ _g1234912610_))))
                        (_g1234612607_ _g1234912610_))))
                (_g1234612607_ _g1234912610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1234612607_
                                                     _g1234912610_))))
                                            (_g1234612607_ _g1234912610_))
                                        (_g1234612607_ _g1234912610_))
                                    (_g1234612607_ _g1234912610_))))
                            (_g1234612607_ _g1234912610_))))
                    (_g1234612607_ _g1234912610_))
                (_g1234612607_ _g1234912610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1234612607_ _g1234912610_))
                                            (_g1234612607_ _g1234912610_))
                                        (_g1234612607_ _g1234912610_))))
                                (_g1234612607_ _g1234912610_))))
                        (_g1234612607_ _g1234912610_))
                    (_g1234612607_ _g1234912610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1234612607_
                                                     _g1234912610_))
                                                (_g1234612607_ _g1234912610_))
                                            (_g1234612607_ _g1234912610_))))
                                    (_g1234612607_ _g1234912610_))))
                            (_g1234612607_ _g1234912610_))))
                    (_g1234612607_ _g1234912610_)))))
        (_g1234512787_ _stx12344_))))
  (define gxc#!alias::typedecl
    (lambda (_self12320_)
      (let* ((_self1232112327_ _self12320_)
             (_E1232312331_
              (lambda () (error '"No clause matching" _self1232112327_)))
             (_K1232412336_
              (lambda (_alias-id12334_)
                (cons '@alias (cons _alias-id12334_ '())))))
        (if (##structure-instance-of?
             _self1232112327_
             (##type-id gxc#!alias::t))
            (let* ((_e1232512339_ (##vector-ref _self1232112327_ '1))
                   (_alias-id12342_ _e1232512339_))
              (_K1232412336_ _alias-id12342_))
            (_E1232312331_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self12264_)
      (let* ((_self1226512276_ _self12264_)
             (_E1226712280_
              (lambda () (error '"No clause matching" _self1226512276_)))
             (_K1226812289_
              (lambda (_plist12283_
                       _ctor12284_
                       _fields12285_
                       _super12286_
                       _type-id12287_)
                (cons '@struct-type
                      (cons _type-id12287_
                            (cons _super12286_
                                  (cons _fields12285_
                                        (cons _ctor12284_
                                              (cons _plist12283_ '())))))))))
        (if (##structure-instance-of?
             _self1226512276_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1226912292_ (##vector-ref _self1226512276_ '1))
                   (_type-id12295_ _e1226912292_)
                   (_e1227012297_ (##vector-ref _self1226512276_ '2))
                   (_super12300_ _e1227012297_)
                   (_e1227112302_ (##vector-ref _self1226512276_ '3))
                   (_fields12305_ _e1227112302_)
                   (_e1227212307_ (##vector-ref _self1226512276_ '4))
                   (_e1227312310_ (##vector-ref _self1226512276_ '5))
                   (_ctor12313_ _e1227312310_)
                   (_e1227412315_ (##vector-ref _self1226512276_ '6))
                   (_plist12318_ _e1227412315_))
              (_K1226812289_
               _plist12318_
               _ctor12313_
               _fields12305_
               _super12300_
               _type-id12295_))
            (_E1226712280_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self12240_)
      (let* ((_self1224112247_ _self12240_)
             (_E1224312251_
              (lambda () (error '"No clause matching" _self1224112247_)))
             (_K1224412256_
              (lambda (_struct-t12254_)
                (cons '@struct-pred (cons _struct-t12254_ '())))))
        (if (##structure-instance-of?
             _self1224112247_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1224512259_ (##vector-ref _self1224112247_ '1))
                   (_struct-t12262_ _e1224512259_))
              (_K1224412256_ _struct-t12262_))
            (_E1224312251_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self12216_)
      (let* ((_self1221712223_ _self12216_)
             (_E1221912227_
              (lambda () (error '"No clause matching" _self1221712223_)))
             (_K1222012232_
              (lambda (_struct-t12230_)
                (cons '@struct-cons (cons _struct-t12230_ '())))))
        (if (##structure-instance-of?
             _self1221712223_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1222112235_ (##vector-ref _self1221712223_ '1))
                   (_struct-t12238_ _e1222112235_))
              (_K1222012232_ _struct-t12238_))
            (_E1221912227_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self12178_)
      (let* ((_self1217912187_ _self12178_)
             (_E1218112191_
              (lambda () (error '"No clause matching" _self1217912187_)))
             (_K1218212198_
              (lambda (_unchecked?12194_ _off12195_ _struct-t12196_)
                (cons '@struct-getf
                      (cons _struct-t12196_
                            (cons _off12195_ (cons _unchecked?12194_ '())))))))
        (if (##structure-instance-of?
             _self1217912187_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1218312201_ (##vector-ref _self1217912187_ '1))
                   (_struct-t12204_ _e1218312201_)
                   (_e1218412206_ (##vector-ref _self1217912187_ '2))
                   (_off12209_ _e1218412206_)
                   (_e1218512211_ (##vector-ref _self1217912187_ '3))
                   (_unchecked?12214_ _e1218512211_))
              (_K1218212198_ _unchecked?12214_ _off12209_ _struct-t12204_))
            (_E1218112191_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self12140_)
      (let* ((_self1214112149_ _self12140_)
             (_E1214312153_
              (lambda () (error '"No clause matching" _self1214112149_)))
             (_K1214412160_
              (lambda (_unchecked?12156_ _off12157_ _struct-t12158_)
                (cons '@struct-setf
                      (cons _struct-t12158_
                            (cons _off12157_ (cons _unchecked?12156_ '())))))))
        (if (##structure-instance-of?
             _self1214112149_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1214512163_ (##vector-ref _self1214112149_ '1))
                   (_struct-t12166_ _e1214512163_)
                   (_e1214612168_ (##vector-ref _self1214112149_ '2))
                   (_off12171_ _e1214612168_)
                   (_e1214712173_ (##vector-ref _self1214112149_ '3))
                   (_unchecked?12176_ _e1214712173_))
              (_K1214412160_ _unchecked?12176_ _off12171_ _struct-t12166_))
            (_E1214312153_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12088_)
      (let* ((_self1208912099_ _self12088_)
             (_E1209112103_
              (lambda () (error '"No clause matching" _self1208912099_)))
             (_K1209212114_
              (lambda (_typedecl12106_
                       _inline12107_
                       _dispatch12108_
                       _arity12109_)
                (if _inline12107_
                    (let ((_$e12111_ _typedecl12106_))
                      (if _$e12111_
                          _$e12111_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12109_ (cons _dispatch12108_ '())))))))
        (if (##structure-instance-of?
             _self1208912099_
             (##type-id gxc#!lambda::t))
            (let* ((_e1209312117_ (##vector-ref _self1208912099_ '1))
                   (_e1209412120_ (##vector-ref _self1208912099_ '2))
                   (_arity12123_ _e1209412120_)
                   (_e1209512125_ (##vector-ref _self1208912099_ '3))
                   (_dispatch12128_ _e1209512125_)
                   (_e1209612130_ (##vector-ref _self1208912099_ '4))
                   (_inline12133_ _e1209612130_)
                   (_e1209712135_ (##vector-ref _self1208912099_ '5))
                   (_typedecl12138_ _e1209712135_))
              (_K1209212114_
               _typedecl12138_
               _inline12133_
               _dispatch12128_
               _arity12123_))
            (_E1209112103_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12021_)
      (letrec ((_clause-e12023_
                (lambda (_clause12053_)
                  (let* ((_clause1205412062_ _clause12053_)
                         (_E1205612066_
                          (lambda ()
                            (error '"No clause matching" _clause1205412062_)))
                         (_K1205712072_
                          (lambda (_dispatch12069_ _arity12070_)
                            (cons _arity12070_ (cons _dispatch12069_ '())))))
                    (if (##structure-instance-of?
                         _clause1205412062_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1205812075_
                                (##vector-ref _clause1205412062_ '1))
                               (_e1205912078_
                                (##vector-ref _clause1205412062_ '2))
                               (_arity12081_ _e1205912078_)
                               (_e1206012083_
                                (##vector-ref _clause1205412062_ '3))
                               (_dispatch12086_ _e1206012083_))
                          (_K1205712072_ _dispatch12086_ _arity12081_))
                        (_E1205612066_))))))
        (let* ((_self1202412031_ _self12021_)
               (_E1202612035_
                (lambda () (error '"No clause matching" _self1202412031_)))
               (_K1202712042_
                (lambda (_clauses12038_)
                  (let ((_clauses12040_ (map _clause-e12023_ _clauses12038_)))
                    (cons '@case-lambda _clauses12040_)))))
          (if (##structure-instance-of?
               _self1202412031_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1202812045_ (##vector-ref _self1202412031_ '1))
                     (_e1202912048_ (##vector-ref _self1202412031_ '2))
                     (_clauses12051_ _e1202912048_))
                (_K1202712042_ _clauses12051_))
              (_E1202612035_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12019_) (gxc#generate-runtime-binding-id _stx12019_))))
