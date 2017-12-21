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
    (lambda _$args20479_
      (apply make-struct-instance gxc#optimizer-info::t _$args20479_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self20477_)
      (struct-instance-init!
       _self20477_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj20491 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj20491) __obj20491))))))
  (define gxc#optimize!
    (lambda (_ctx20471_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx20471_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx20471_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code20474_
                  (gxc#optimize-source
                   (##structure-ref _ctx20471_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx20471_
              _code20474_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx20416_)
      (letrec* ((_deps20418_
                 (let* ((_imports20462_
                         (##structure-ref
                          _ctx20416_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e20464_
                         (gx#core-context-prelude__opt-lambda11555
                          _ctx20416_)))
                   (if _$e20464_
                       ((lambda (_g2046620468_)
                          (cons _g2046620468_ _imports20462_))
                        _$e20464_)
                       _imports20462_))))
        (let _lp20420_ ((_rest20422_ _deps20418_))
          (let* ((_rest2042320431_ _rest20422_)
                 (_E2042620435_
                  (lambda () (error '"No clause matching" _rest2042320431_)))
                 (_else2042520439_ (lambda () '#!void))
                 (_K2042720450_
                  (lambda (_rest20442_ _hd20443_)
                    (if (##structure-instance-of?
                         _hd20443_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd20443_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e20445_
                                       (gx#core-context-prelude__opt-lambda11555
                                        _hd20443_)))
                                  (if _$e20445_
                                      ((lambda (_pre20448_)
                                         (_lp20420_
                                          (cons _pre20448_
                                                (##structure-ref
                                                 _hd20443_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e20445_)
                                      (_lp20420_
                                       (##structure-ref
                                        _hd20443_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd20443_)))
                          (_lp20420_ _rest20442_))
                        (if (##structure-instance-of?
                             _hd20443_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd20443_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp20420_
                                     (##structure-ref
                                      _hd20443_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd20443_)))
                              (_lp20420_ _rest20442_))
                            (if (##structure-direct-instance-of?
                                 _hd20443_
                                 'gx#module-import::t)
                                (_lp20420_
                                 (cons (##direct-structure-ref
                                        _hd20443_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest20442_))
                                (if (##structure-direct-instance-of?
                                     _hd20443_
                                     'gx#module-export::t)
                                    (_lp20420_
                                     (cons (##direct-structure-ref
                                            _hd20443_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest20442_))
                                    (if (##structure-direct-instance-of?
                                         _hd20443_
                                         'gx#import-set::t)
                                        (_lp20420_
                                         (cons (##direct-structure-ref
                                                _hd20443_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest20442_))
                                        (error '"Unexpected module import"
                                               _hd20443_)))))))))
            (if (##pair? _rest2042320431_)
                (let ((_hd2042820453_ (##car _rest2042320431_))
                      (_tl2042920455_ (##cdr _rest2042320431_)))
                  (let* ((_hd20458_ _hd2042820453_)
                         (_rest20460_ _tl2042920455_))
                    (_K2042720450_ _rest20460_ _hd20458_)))
                (_else2042520439_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx20396_)
      (if (if (##structure-instance-of? _ctx20396_ 'gx#module-context::t)
              (list? (##structure-ref _ctx20396_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht20398_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id20400_
                  (##structure-ref _ctx20396_ '1 gx#expander-context::t '#f))
                 (_mod20402_ (table-ref _ht20398_ _id20400_ '#f)))
            (let ((_$e20405_ _mod20402_))
              (if _$e20405_
                  _$e20405_
                  (let* ((_mod20408_ (gxc#optimizer-import-ssxi _ctx20396_))
                         (_val20413_
                          (let ((_$e20410_ _mod20408_))
                            (if _$e20410_ _$e20410_ '#!void))))
                    (begin
                      (table-set! _ht20398_ _id20400_ _val20413_)
                      _val20413_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx20373_)
      (letrec ((_catch-e20375_
                (lambda (_exn20394_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx20373_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn20394_))
                        '#!void)
                    '#f)))
               (_import-e20376_
                (lambda ()
                  (let* ((_str-id20379_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx20373_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path20387_
                          (let ((_odir2038020382_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2038020382_
                                (let ((_odir20385_ _odir2038020382_))
                                  (path-expand
                                   (string-append _str-id20379_ '".ss")
                                   _odir20385_))
                                '#f)))
                         (_library-path20389_
                          (string->symbol
                           (string-append '":" _str-id20379_ '".ss")))
                         (_ssxi-path20391_
                          (if (if _artefact-path20387_
                                  (file-exists? _artefact-path20387_)
                                  '#f)
                              _artefact-path20387_
                              _library-path20389_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path20391_)
                      (gx#import-module__opt-lambda11590
                       _ssxi-path20391_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx20373_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e20375_ _import-e20376_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args20370_
      (apply make-struct-instance gxc#!type::t _$args20370_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args20367_
      (apply make-struct-instance gxc#!alias::t _$args20367_)))
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
    (lambda _$args20364_
      (apply make-struct-instance gxc#!struct-type::t _$args20364_)))
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
    (lambda _$args20361_
      (apply make-struct-instance gxc#!procedure::t _$args20361_)))
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
    (lambda _$args20358_
      (apply make-struct-instance gxc#!struct-pred::t _$args20358_)))
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
    (lambda _$args20355_
      (apply make-struct-instance gxc#!struct-cons::t _$args20355_)))
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
    (lambda _$args20352_
      (apply make-struct-instance gxc#!struct-getf::t _$args20352_)))
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
    (lambda _$args20349_
      (apply make-struct-instance gxc#!struct-setf::t _$args20349_)))
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
    (lambda _$args20346_
      (apply make-struct-instance gxc#!lambda::t _$args20346_)))
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
    (lambda _$args20343_
      (apply make-struct-instance gxc#!case-lambda::t _$args20343_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self20335_
             _id20336_
             _super20337_
             _fields20338_
             _xfields20339_
             _ctor20340_
             _plist20341_)
      (struct-instance-init!
       _self20335_
       _id20336_
       _super20337_
       _fields20338_
       _xfields20339_
       _ctor20340_
       _plist20341_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda20299
      (lambda (_self20301_
               _id20302_
               _arity20303_
               _dispatch20304_
               _inline20305_
               _typedecl20306_)
        (struct-instance-init!
         _self20301_
         _id20302_
         _arity20303_
         _dispatch20304_
         _inline20305_
         _typedecl20306_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self20311_ _id20312_ _arity20313_ _dispatch20314_)
          (let* ((_inline20316_ '#f) (_typedecl20318_ '#f))
            (struct-instance-init!
             _self20311_
             _id20312_
             _arity20313_
             _dispatch20314_
             _inline20316_
             _typedecl20318_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self20320_
                 _id20321_
                 _arity20322_
                 _dispatch20323_
                 _inline20324_)
          (let ((_typedecl20326_ '#f))
            (struct-instance-init!
             _self20320_
             _id20321_
             _arity20322_
             _dispatch20323_
             _inline20324_
             _typedecl20326_))))
      (define gxc#!lambda:::init!
        (lambda _g20499_
          (let ((_g20498_ (length _g20499_)))
            (cond ((fx= _g20498_ 4) (apply gxc#!lambda:::init!__0 _g20499_))
                  ((fx= _g20498_ 5) (apply gxc#!lambda:::init!__1 _g20499_))
                  ((fx= _g20498_ 6) (apply struct-instance-init! _g20499_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g20499_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type20293_)
      (let ((_$e20295_
             (##structure-ref _type20293_ '7 gxc#!struct-type::t '#f)))
        (if _$e20295_
            (values _$e20295_)
            (let ((_vtab20298_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type20293_
                 _vtab20298_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab20298_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type20284_ _method20285_)
      (let ((_vtab2028620288_
             (##structure-ref _type20284_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2028620288_
            (let ((_vtab20291_ _vtab2028620288_))
              (table-ref _vtab20291_ _method20285_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda20266
      (lambda (_sym20268_ _type20269_ _local?20270_)
        (begin
          (if (##structure-instance-of? _type20269_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym20268_
                     _type20269_))
          (gxc#verbose
           '"declare-type "
           _sym20268_
           '" "
           (struct->list _type20269_))
          (table-set!
           (if _local?20270_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym20268_
           _type20269_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym20275_ _type20276_)
          (let ((_local?20278_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda20266
             _sym20275_
             _type20276_
             _local?20278_))))
      (define gxc#optimizer-declare-type!
        (lambda _g20501_
          (let ((_g20500_ (length _g20501_)))
            (cond ((fx= _g20500_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g20501_))
                  ((fx= _g20500_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda20266
                          _g20501_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g20501_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda20242
      (lambda (_type-t20244_ _method20245_ _sym20246_ _rebind?20247_)
        (let ((_type20249_ (gxc#optimizer-resolve-type _type-t20244_)))
          (if (##structure-instance-of? _type20249_ 'gxc#!struct-type::t)
              (let ((_vtab20251_ (gxc#!struct-type-vtab _type20249_)))
                (if _rebind?20247_
                    (if (hash-key? _vtab20251_ _method20245_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t20244_
                         '" "
                         _method20245_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t20244_
                         '" "
                         _method20245_))
                    (if (hash-key? _vtab20251_ _method20245_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t20244_
                           '" "
                           _method20245_
                           '" => "
                           _sym20246_)
                          (table-set! _vtab20251_ _method20245_ _sym20246_)))))
              (if (not _type20249_)
                  (gxc#verbose '"declare-method: unknown type " _type-t20244_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t20244_
                         _type20249_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t20256_ _method20257_ _sym20258_)
          (let ((_rebind?20260_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda20242
             _type-t20256_
             _method20257_
             _sym20258_
             _rebind?20260_))))
      (define gxc#optimizer-declare-method!
        (lambda _g20503_
          (let ((_g20502_ (length _g20503_)))
            (cond ((fx= _g20502_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g20503_))
                  ((fx= _g20502_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda20242
                          _g20503_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g20503_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym20232_)
      (let ((_$e20240_
             (let ((_ht2023320235_ (gxc#current-compile-local-type)))
               (if _ht2023320235_
                   (let ((_ht20238_ _ht2023320235_))
                     (table-ref _ht20238_ _sym20232_ '#f))
                   '#f))))
        (if _$e20240_
            _$e20240_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym20232_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym20224_)
      (let ((_type2022520227_ (gxc#optimizer-lookup-type _sym20224_)))
        (if _type2022520227_
            (let ((_type20230_ _type2022520227_))
              (if (##structure-instance-of? _type20230_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type20230_ '1 gxc#!type::t '#f))
                  _type20230_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t20219_ _method20220_)
      (let ((_type20222_ (gxc#optimizer-resolve-type _type-t20219_)))
        (if (##structure-instance-of? _type20222_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type20222_ _method20220_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx20215_)
      (begin
        (gxc#apply-collect-mutators _stx20215_)
        (let ((_stx20217_ (gxc#apply-lift-top-lambdas _stx20215_)))
          (begin
            (gxc#apply-collect-type-info _stx20217_)
            (gxc#apply-optimize-call _stx20217_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl20212_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20212_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20212_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20212_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20212_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20212_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20212_ '%#quote gxc#xform-identity)
           (table-set! _tbl20212_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20212_ '%#call gxc#xform-identity)
           (table-set! _tbl20212_ '%#if gxc#xform-identity)
           (table-set! _tbl20212_ '%#ref gxc#xform-identity)
           (table-set! _tbl20212_ '%#set! gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20212_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20212_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20212_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl20208_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20208_ '%#begin gxc#xform-identity)
           (table-set! _tbl20208_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20208_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20208_ '%#module gxc#xform-identity)
           (table-set! _tbl20208_ '%#import gxc#xform-identity)
           (table-set! _tbl20208_ '%#export gxc#xform-identity)
           (table-set! _tbl20208_ '%#provide gxc#xform-identity)
           (table-set! _tbl20208_ '%#extern gxc#xform-identity)
           (table-set! _tbl20208_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20208_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20208_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20208_ '%#declare gxc#xform-identity)
           _tbl20208_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl20204_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20204_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20204_ (force gxc#&identity-expression))
           _tbl20204_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl20200_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20200_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20200_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20200_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20200_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20200_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20200_ '%#quote gxc#xform-identity)
           (table-set! _tbl20200_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20200_ '%#call gxc#xform-operands)
           (table-set! _tbl20200_ '%#if gxc#xform-operands)
           (table-set! _tbl20200_ '%#ref gxc#xform-identity)
           (table-set! _tbl20200_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20200_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20200_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20200_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20200_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20200_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20200_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20200_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20200_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20200_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl20196_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20196_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20196_ (force gxc#&identity))
           (table-set! _tbl20196_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20196_ '%#module gxc#xform-module%)
           (table-set! _tbl20196_ '%#define-values gxc#xform-define-values%)
           _tbl20196_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl20192_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20192_ (force gxc#&void))
           (table-set! _tbl20192_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20192_ '%#module gxc#collect-module%)
           (table-set! _tbl20192_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20192_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20192_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20192_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20192_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20192_ '%#call gxc#collect-operands)
           (table-set! _tbl20192_ '%#if gxc#collect-operands)
           (table-set! _tbl20192_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20192_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20192_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20192_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20192_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20192_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20192_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20192_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20192_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20192_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx20185_ . _args20187_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20185_ _args20187_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl20182_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20182_ (force gxc#&basic-xform))
           (table-set!
            _tbl20182_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl20182_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl20182_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl20182_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl20182_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx20175_ . _args20177_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20175_ _args20177_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl20172_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20172_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20172_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20172_ '%#ref gxc#expression-subst-ref%)
           _tbl20172_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx20165_ . _args20167_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20165_ _args20167_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl20162_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20162_ (force gxc#&void))
           (table-set! _tbl20162_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20162_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20162_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl20162_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20162_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20162_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl20162_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl20162_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl20162_ '%#call gxc#collect-type-call%)
           (table-set! _tbl20162_ '%#if gxc#collect-operands)
           (table-set! _tbl20162_ '%#set! gxc#collect-body-setq%)
           _tbl20162_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx20155_ . _args20157_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20155_ _args20157_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl20152_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20152_ (force gxc#&false))
           (table-set! _tbl20152_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl20152_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl20152_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl20152_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl20152_ '%#ref gxc#basic-expression-type-ref%)
           _tbl20152_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx20145_ . _args20147_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20145_ _args20147_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl20142_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20142_ (force gxc#&basic-xform))
           (table-set! _tbl20142_ '%#call gxc#optimize-call%)
           _tbl20142_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx20135_ . _args20137_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20135_ _args20137_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl20132_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20132_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl20132_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl20132_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl20132_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl20132_ '%#call gxc#generate-ssxi-call%)
           _tbl20132_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx20125_ . _args20127_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20125_ _args20127_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx20122_ . _args20123_) _stx20122_))
  (define gxc#xform-wrap-source
    (lambda (_stx20119_ _src-stx20120_)
      (gx#stx-wrap-source _stx20119_ (gx#stx-source _src-stx20120_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args20113_)
      (lambda (_g2011420116_)
        (apply gxc#compile-e _g2011420116_ _args20113_))))
  (define gxc#xform-begin%
    (lambda (_stx20072_ . _args20073_)
      (let* ((_g2007520085_
              (lambda (_g2007620082_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2007620082_)))
             (_g2007420110_
              (lambda (_g2007620088_)
                (if (gx#stx-pair? _g2007620088_)
                    (let ((_e2007820090_ (gx#stx-e _g2007620088_)))
                      (let ((_hd2007920093_ (##car _e2007820090_))
                            (_tl2008020095_ (##cdr _e2007820090_)))
                        ((lambda (_L20098_)
                           (let ((_forms20108_
                                  (map (gxc#xform-apply-compile-e _args20073_)
                                       _L20098_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms20108_)
                              _stx20072_)))
                         _tl2008020095_)))
                    (_g2007520085_ _g2007620088_)))))
        (_g2007420110_ _stx20072_))))
  (define gxc#xform-module%
    (lambda (_stx20009_ . _args20010_)
      (let* ((_g2001220026_
              (lambda (_g2001320023_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2001320023_)))
             (_g2001120069_
              (lambda (_g2001320029_)
                (if (gx#stx-pair? _g2001320029_)
                    (let ((_e2001620031_ (gx#stx-e _g2001320029_)))
                      (let ((_hd2001720034_ (##car _e2001620031_))
                            (_tl2001820036_ (##cdr _e2001620031_)))
                        (if (gx#stx-pair? _tl2001820036_)
                            (let ((_e2001920039_ (gx#stx-e _tl2001820036_)))
                              (let ((_hd2002020042_ (##car _e2001920039_))
                                    (_tl2002120044_ (##cdr _e2001920039_)))
                                ((lambda (_L20047_ _L20048_)
                                   (let* ((_ctx20061_
                                           (gx#syntax-local-e__0 _L20048_))
                                          (_code20063_
                                           (##structure-ref
                                            _ctx20061_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code20066_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code20063_
                                                     _args20010_))
                                            gx#current-expander-context
                                            _ctx20061_)))
                                     (begin
                                       (##structure-set!
                                        _ctx20061_
                                        _code20066_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L20048_
                                                    (cons _code20066_ '())))
                                        _stx20009_))))
                                 _tl2002120044_
                                 _hd2002020042_)))
                            (_g2001220026_ _g2001320029_))))
                    (_g2001220026_ _g2001320029_)))))
        (_g2001120069_ _stx20009_))))
  (define gxc#xform-define-values%
    (lambda (_stx19939_ . _args19940_)
      (let* ((_g1994219959_
              (lambda (_g1994319956_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1994319956_)))
             (_g1994120006_
              (lambda (_g1994319962_)
                (if (gx#stx-pair? _g1994319962_)
                    (let ((_e1994619964_ (gx#stx-e _g1994319962_)))
                      (let ((_hd1994719967_ (##car _e1994619964_))
                            (_tl1994819969_ (##cdr _e1994619964_)))
                        (if (gx#stx-pair? _tl1994819969_)
                            (let ((_e1994919972_ (gx#stx-e _tl1994819969_)))
                              (let ((_hd1995019975_ (##car _e1994919972_))
                                    (_tl1995119977_ (##cdr _e1994919972_)))
                                (if (gx#stx-pair? _tl1995119977_)
                                    (let ((_e1995219980_
                                           (gx#stx-e _tl1995119977_)))
                                      (let ((_hd1995319983_
                                             (##car _e1995219980_))
                                            (_tl1995419985_
                                             (##cdr _e1995219980_)))
                                        (if (gx#stx-null? _tl1995419985_)
                                            ((lambda (_L19988_ _L19989_)
                                               (let ((_expr20004_
                                                      (apply gxc#compile-e
                                                             _L19988_
                                                             _args19940_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19989_
                                                              (cons _expr20004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19939_)))
                                             _hd1995319983_
                                             _hd1995019975_)
                                            (_g1994219959_ _g1994319962_))))
                                    (_g1994219959_ _g1994319962_))))
                            (_g1994219959_ _g1994319962_))))
                    (_g1994219959_ _g1994319962_)))))
        (_g1994120006_ _stx19939_))))
  (define gxc#xform-lambda%
    (lambda (_stx19882_ . _args19883_)
      (let* ((_g1988519899_
              (lambda (_g1988619896_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1988619896_)))
             (_g1988419936_
              (lambda (_g1988619902_)
                (if (gx#stx-pair? _g1988619902_)
                    (let ((_e1988919904_ (gx#stx-e _g1988619902_)))
                      (let ((_hd1989019907_ (##car _e1988919904_))
                            (_tl1989119909_ (##cdr _e1988919904_)))
                        (if (gx#stx-pair? _tl1989119909_)
                            (let ((_e1989219912_ (gx#stx-e _tl1989119909_)))
                              (let ((_hd1989319915_ (##car _e1989219912_))
                                    (_tl1989419917_ (##cdr _e1989219912_)))
                                ((lambda (_L19920_ _L19921_)
                                   (let ((_body19934_
                                          (map (gxc#xform-apply-compile-e
                                                _args19883_)
                                               _L19920_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L19921_ _body19934_))
                                      _stx19882_)))
                                 _tl1989419917_
                                 _hd1989319915_)))
                            (_g1988519899_ _g1988619902_))))
                    (_g1988519899_ _g1988619902_)))))
        (_g1988419936_ _stx19882_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx19795_ . _args19796_)
      (letrec ((_clause-e19798_
                (lambda (_clause19839_)
                  (let* ((_g1984119852_
                          (lambda (_g1984219849_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1984219849_)))
                         (_g1984019879_
                          (lambda (_g1984219855_)
                            (if (gx#stx-pair? _g1984219855_)
                                (let ((_e1984519857_ (gx#stx-e _g1984219855_)))
                                  (let ((_hd1984619860_ (##car _e1984519857_))
                                        (_tl1984719862_ (##cdr _e1984519857_)))
                                    ((lambda (_L19865_ _L19866_)
                                       (let ((_body19877_
                                              (map (gxc#xform-apply-compile-e
                                                    _args19796_)
                                                   _L19865_)))
                                         (cons _L19866_ _body19877_)))
                                     _tl1984719862_
                                     _hd1984619860_)))
                                (_g1984119852_ _g1984219855_)))))
                    (_g1984019879_ _clause19839_)))))
        (let* ((_g1980019810_
                (lambda (_g1980119807_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1980119807_)))
               (_g1979919836_
                (lambda (_g1980119813_)
                  (if (gx#stx-pair? _g1980119813_)
                      (let ((_e1980319815_ (gx#stx-e _g1980119813_)))
                        (let ((_hd1980419818_ (##car _e1980319815_))
                              (_tl1980519820_ (##cdr _e1980319815_)))
                          ((lambda (_L19823_)
                             (let ((_clauses19834_
                                    (map _clause-e19798_ _L19823_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses19834_)
                                _stx19795_)))
                           _tl1980519820_)))
                      (_g1980019810_ _g1980119813_)))))
          (_g1979919836_ _stx19795_)))))
  (define gxc#xform-let-values%
    (lambda (_stx19589_ . _args19590_)
      (let* ((_g1959219625_
              (lambda (_g1959319622_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1959319622_)))
             (_g1959119792_
              (lambda (_g1959319628_)
                (if (gx#stx-pair? _g1959319628_)
                    (let ((_e1959819630_ (gx#stx-e _g1959319628_)))
                      (let ((_hd1959919633_ (##car _e1959819630_))
                            (_tl1960019635_ (##cdr _e1959819630_)))
                        (if (gx#stx-pair? _tl1960019635_)
                            (let ((_e1960119638_ (gx#stx-e _tl1960019635_)))
                              (let ((_hd1960219641_ (##car _e1960119638_))
                                    (_tl1960319643_ (##cdr _e1960119638_)))
                                (if (gx#stx-pair/null? _hd1960219641_)
                                    (if (fx>= (gx#stx-length _hd1960219641_)
                                              '0)
                                        (let ((_g20504_
                                               (gx#syntax-split-splice
                                                _hd1960219641_
                                                '0)))
                                          (begin
                                            (let ((_g20505_
                                                   (values-count _g20504_)))
                                              (if (not (fx= _g20505_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20505_)))
                                            (let ((_target1960419646_
                                                   (values-ref _g20504_ 0))
                                                  (_tl1960619648_
                                                   (values-ref _g20504_ 1)))
                                              (if (gx#stx-null? _tl1960619648_)
                                                  (letrec ((_loop1960719651_
                                                            (lambda (_hd1960519654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1961119656_
                             _hd1961219658_)
                      (if (gx#stx-pair? _hd1960519654_)
                          (let ((_e1960819661_ (gx#stx-e _hd1960519654_)))
                            (let ((_lp-hd1960919664_ (##car _e1960819661_))
                                  (_lp-tl1961019666_ (##cdr _e1960819661_)))
                              (if (gx#stx-pair? _lp-hd1960919664_)
                                  (let ((_e1961519669_
                                         (gx#stx-e _lp-hd1960919664_)))
                                    (let ((_hd1961619672_
                                           (##car _e1961519669_))
                                          (_tl1961719674_
                                           (##cdr _e1961519669_)))
                                      (if (gx#stx-pair? _tl1961719674_)
                                          (let ((_e1961819677_
                                                 (gx#stx-e _tl1961719674_)))
                                            (let ((_hd1961919680_
                                                   (##car _e1961819677_))
                                                  (_tl1962019682_
                                                   (##cdr _e1961819677_)))
                                              (if (gx#stx-null? _tl1962019682_)
                                                  (_loop1960719651_
                                                   _lp-tl1961019666_
                                                   (cons _hd1961919680_
                                                         _expr1961119656_)
                                                   (cons _hd1961619672_
                                                         _hd1961219658_))
                                                  (_g1959219625_
                                                   _g1959319628_))))
                                          (_g1959219625_ _g1959319628_))))
                                  (_g1959219625_ _g1959319628_))))
                          (let ((_expr1961319685_ (reverse _expr1961119656_))
                                (_hd1961419687_ (reverse _hd1961219658_)))
                            ((lambda (_L19690_ _L19691_ _L19692_ _L19693_)
                               (let* ((_g1971219728_
                                       (lambda (_g1971319725_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1971319725_)))
                                      (_g1971119782_
                                       (lambda (_g1971319731_)
                                         (if (gx#stx-pair/null? _g1971319731_)
                                             (if (fx>= (gx#stx-length
                                                        _g1971319731_)
                                                       '0)
                                                 (let ((_g20506_
                                                        (gx#syntax-split-splice
                                                         _g1971319731_
                                                         '0)))
                                                   (begin
                                                     (let ((_g20507_
                                                            (values-count
                                                             _g20506_)))
                                                       (if (not (fx= _g20507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g20507_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1971519733_
                                                            (values-ref
                                                             _g20506_
                                                             0))
                                                           (_tl1971719735_
                                                            (values-ref
                                                             _g20506_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1971719735_)
                                                           (letrec ((_loop1971819738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1971619741_ _expr1972219743_)
                               (if (gx#stx-pair? _hd1971619741_)
                                   (let ((_e1971919746_
                                          (gx#syntax-e _hd1971619741_)))
                                     (let ((_lp-hd1972019749_
                                            (##car _e1971919746_))
                                           (_lp-tl1972119751_
                                            (##cdr _e1971919746_)))
                                       (_loop1971819738_
                                        _lp-tl1972119751_
                                        (cons _lp-hd1972019749_
                                              _expr1972219743_))))
                                   (let ((_expr1972319754_
                                          (reverse _expr1972219743_)))
                                     ((lambda (_L19757_)
                                        (let ()
                                          (let ((_body19770_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args19590_)
                                                      _L19690_)))
                                            (gxc#xform-wrap-source
                                             (cons _L19693_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L19757_
                                                            _L19692_)
                                                           (foldr (lambda (_g1977119775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1977219777_
                                   _g1977319779_)
                            (cons (cons _g1977219777_ (cons _g1977119775_ '()))
                                  _g1977319779_))
                          '()
                          _L19757_
                          _L19692_))
                 _body19770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx19589_))))
                                      _expr1972319754_))))))
                     (_loop1971819738_ _target1971519733_ '()))
                   (_g1971219728_ _g1971319731_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1971219728_ _g1971319731_))
                                             (_g1971219728_ _g1971319731_)))))
                                 (_g1971119782_
                                  (map (gxc#xform-apply-compile-e _args19590_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1978419787_
                                                          _g1978519789_)
                                                   (cons _g1978419787_
                                                         _g1978519789_))
                                                 '()
                                                 _L19691_))))))
                             _tl1960319643_
                             _expr1961319685_
                             _hd1961419687_
                             _hd1959919633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1960719651_
                                                     _target1960419646_
                                                     '()
                                                     '()))
                                                  (_g1959219625_
                                                   _g1959319628_)))))
                                        (_g1959219625_ _g1959319628_))
                                    (_g1959219625_ _g1959319628_))))
                            (_g1959219625_ _g1959319628_))))
                    (_g1959219625_ _g1959319628_)))))
        (_g1959119792_ _stx19589_))))
  (define gxc#xform-operands
    (lambda (_stx19545_ . _args19546_)
      (let* ((_g1954819559_
              (lambda (_g1954919556_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1954919556_)))
             (_g1954719586_
              (lambda (_g1954919562_)
                (if (gx#stx-pair? _g1954919562_)
                    (let ((_e1955219564_ (gx#stx-e _g1954919562_)))
                      (let ((_hd1955319567_ (##car _e1955219564_))
                            (_tl1955419569_ (##cdr _e1955219564_)))
                        ((lambda (_L19572_ _L19573_)
                           (let ((_rands19584_
                                  (map (gxc#xform-apply-compile-e _args19546_)
                                       _L19572_)))
                             (gxc#xform-wrap-source
                              (cons _L19573_ _rands19584_)
                              _stx19545_)))
                         _tl1955419569_
                         _hd1955319567_)))
                    (_g1954819559_ _g1954919562_)))))
        (_g1954719586_ _stx19545_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx19475_ . _args19476_)
      (let* ((_g1947819495_
              (lambda (_g1947919492_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1947919492_)))
             (_g1947719542_
              (lambda (_g1947919498_)
                (if (gx#stx-pair? _g1947919498_)
                    (let ((_e1948219500_ (gx#stx-e _g1947919498_)))
                      (let ((_hd1948319503_ (##car _e1948219500_))
                            (_tl1948419505_ (##cdr _e1948219500_)))
                        (if (gx#stx-pair? _tl1948419505_)
                            (let ((_e1948519508_ (gx#stx-e _tl1948419505_)))
                              (let ((_hd1948619511_ (##car _e1948519508_))
                                    (_tl1948719513_ (##cdr _e1948519508_)))
                                (if (gx#stx-pair? _tl1948719513_)
                                    (let ((_e1948819516_
                                           (gx#stx-e _tl1948719513_)))
                                      (let ((_hd1948919519_
                                             (##car _e1948819516_))
                                            (_tl1949019521_
                                             (##cdr _e1948819516_)))
                                        (if (gx#stx-null? _tl1949019521_)
                                            ((lambda (_L19524_ _L19525_)
                                               (let ((_expr19540_
                                                      (apply gxc#compile-e
                                                             _L19524_
                                                             _args19476_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L19525_
                                                              (cons _expr19540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19475_)))
                                             _hd1948919519_
                                             _hd1948619511_)
                                            (_g1947819495_ _g1947919498_))))
                                    (_g1947819495_ _g1947919498_))))
                            (_g1947819495_ _g1947919498_))))
                    (_g1947819495_ _g1947919498_)))))
        (_g1947719542_ _stx19475_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx19406_)
      (let* ((_g1940819425_
              (lambda (_g1940919422_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1940919422_)))
             (_g1940719472_
              (lambda (_g1940919428_)
                (if (gx#stx-pair? _g1940919428_)
                    (let ((_e1941219430_ (gx#stx-e _g1940919428_)))
                      (let ((_hd1941319433_ (##car _e1941219430_))
                            (_tl1941419435_ (##cdr _e1941219430_)))
                        (if (gx#stx-pair? _tl1941419435_)
                            (let ((_e1941519438_ (gx#stx-e _tl1941419435_)))
                              (let ((_hd1941619441_ (##car _e1941519438_))
                                    (_tl1941719443_ (##cdr _e1941519438_)))
                                (if (gx#stx-pair? _tl1941719443_)
                                    (let ((_e1941819446_
                                           (gx#stx-e _tl1941719443_)))
                                      (let ((_hd1941919449_
                                             (##car _e1941819446_))
                                            (_tl1942019451_
                                             (##cdr _e1941819446_)))
                                        (if (gx#stx-null? _tl1942019451_)
                                            ((lambda (_L19454_ _L19455_)
                                               (let ((_sym19470_
                                                      (gxc#generate-runtime-binding-id
                                                       _L19455_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym19470_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym19470_
                                                    '#t)
                                                   (gxc#compile-e _L19454_))))
                                             _hd1941919449_
                                             _hd1941619441_)
                                            (_g1940819425_ _g1940919428_))))
                                    (_g1940819425_ _g1940919428_))))
                            (_g1940819425_ _g1940919428_))))
                    (_g1940819425_ _g1940919428_)))))
        (_g1940719472_ _stx19406_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18640_)
      (let* ((_g1864518802_
              (lambda (_g1864618799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1864618799_)))
             (_g1864418809_ (lambda (_g1864618805_) ((lambda () '#f))))
             (_g1864318949_
              (lambda (_g1864618812_)
                (if (gx#stx-pair? _g1864618812_)
                    (let ((_e1876218814_ (gx#stx-e _g1864618812_)))
                      (let ((_hd1876318817_ (##car _e1876218814_))
                            (_tl1876418819_ (##cdr _e1876218814_)))
                        (if (gx#stx-pair? _tl1876418819_)
                            (let ((_e1876518822_ (gx#stx-e _tl1876418819_)))
                              (let ((_hd1876618825_ (##car _e1876518822_))
                                    (_tl1876718827_ (##cdr _e1876518822_)))
                                (if (gx#stx-pair? _hd1876618825_)
                                    (let ((_e1876818830_
                                           (gx#stx-e _hd1876618825_)))
                                      (let ((_hd1876918833_
                                             (##car _e1876818830_))
                                            (_tl1877018835_
                                             (##cdr _e1876818830_)))
                                        (if (gx#identifier? _hd1876918833_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1876918833_)
                                                (if (gx#stx-pair?
                                                     _tl1877018835_)
                                                    (let ((_e1877118838_
                                                           (gx#stx-e
                                                            _tl1877018835_)))
                                                      (let ((_hd1877218841_
                                                             (##car _e1877118838_))
                                                            (_tl1877318843_
                                                             (##cdr _e1877118838_)))
                                                        (if (gx#stx-pair?
                                                             _hd1877218841_)
                                                            (let ((_e1877418846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1877218841_)))
                      (let ((_hd1877518849_ (##car _e1877418846_))
                            (_tl1877618851_ (##cdr _e1877418846_)))
                        (if (gx#identifier? _hd1877518849_)
                            (if (gx#stx-eq? '%#ref _hd1877518849_)
                                (if (gx#stx-pair? _tl1877618851_)
                                    (let ((_e1877718854_
                                           (gx#stx-e _tl1877618851_)))
                                      (let ((_hd1877818857_
                                             (##car _e1877718854_))
                                            (_tl1877918859_
                                             (##cdr _e1877718854_)))
                                        (if (gx#stx-null? _tl1877918859_)
                                            (if (gx#stx-pair? _tl1877318843_)
                                                (let ((_e1878018862_
                                                       (gx#stx-e
                                                        _tl1877318843_)))
                                                  (let ((_hd1878118865_
                                                         (##car _e1878018862_))
                                                        (_tl1878218867_
                                                         (##cdr _e1878018862_)))
                                                    (if (gx#stx-pair?
                                                         _hd1878118865_)
                                                        (let ((_e1878318870_
                                                               (gx#stx-e
                                                                _hd1878118865_)))
                                                          (let ((_hd1878418873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1878318870_))
                        (_tl1878518875_ (##cdr _e1878318870_)))
                    (if (gx#identifier? _hd1878418873_)
                        (if (gx#stx-eq? '%#ref _hd1878418873_)
                            (if (gx#stx-pair? _tl1878518875_)
                                (let ((_e1878618878_
                                       (gx#stx-e _tl1878518875_)))
                                  (let ((_hd1878718881_ (##car _e1878618878_))
                                        (_tl1878818883_ (##cdr _e1878618878_)))
                                    (if (gx#stx-null? _tl1878818883_)
                                        (if (gx#stx-pair? _tl1878218867_)
                                            (let ((_e1878918886_
                                                   (gx#stx-e _tl1878218867_)))
                                              (let ((_hd1879018889_
                                                     (##car _e1878918886_))
                                                    (_tl1879118891_
                                                     (##cdr _e1878918886_)))
                                                (if (gx#stx-pair?
                                                     _hd1879018889_)
                                                    (let ((_e1879218894_
                                                           (gx#stx-e
                                                            _hd1879018889_)))
                                                      (let ((_hd1879318897_
                                                             (##car _e1879218894_))
                                                            (_tl1879418899_
                                                             (##cdr _e1879218894_)))
                                                        (if (gx#identifier?
                                                             _hd1879318897_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1879318897_)
                        (if (gx#stx-pair? _tl1879418899_)
                            (let ((_e1879518902_ (gx#stx-e _tl1879418899_)))
                              (let ((_hd1879618905_ (##car _e1879518902_))
                                    (_tl1879718907_ (##cdr _e1879518902_)))
                                (if (gx#stx-null? _tl1879718907_)
                                    (if (gx#stx-null? _tl1879118891_)
                                        (if (gx#stx-null? _tl1876718827_)
                                            ((lambda (_L18910_
                                                      _L18911_
                                                      _L18912_
                                                      _L18913_)
                                               (if (if (gx#identifier?
                                                        _L18913_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18912_)
                        'apply)
                   (if (gx#free-identifier=? _L18913_ _L18910_)
                       (not (gx#free-identifier=? _L18911_ _L18913_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g1864418809_
                                                    _g1864618812_)))
                                             _hd1879618905_
                                             _hd1878718881_
                                             _hd1877818857_
                                             _hd1876318817_)
                                            (_g1864418809_ _g1864618812_))
                                        (_g1864418809_ _g1864618812_))
                                    (_g1864418809_ _g1864618812_))))
                            (_g1864418809_ _g1864618812_))
                        (_g1864418809_ _g1864618812_))
                    (_g1864418809_ _g1864618812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1864418809_
                                                     _g1864618812_))))
                                            (_g1864418809_ _g1864618812_))
                                        (_g1864418809_ _g1864618812_))))
                                (_g1864418809_ _g1864618812_))
                            (_g1864418809_ _g1864618812_))
                        (_g1864418809_ _g1864618812_))))
                (_g1864418809_ _g1864618812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1864418809_ _g1864618812_))
                                            (_g1864418809_ _g1864618812_))))
                                    (_g1864418809_ _g1864618812_))
                                (_g1864418809_ _g1864618812_))
                            (_g1864418809_ _g1864618812_))))
                    (_g1864418809_ _g1864618812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1864418809_
                                                     _g1864618812_))
                                                (_g1864418809_ _g1864618812_))
                                            (_g1864418809_ _g1864618812_))))
                                    (_g1864418809_ _g1864618812_))))
                            (_g1864418809_ _g1864618812_))))
                    (_g1864418809_ _g1864618812_))))
             (_g1864219209_
              (lambda (_g1864618952_)
                (if (gx#stx-pair? _g1864618952_)
                    (let ((_e1869818954_ (gx#stx-e _g1864618952_)))
                      (let ((_hd1869918957_ (##car _e1869818954_))
                            (_tl1870018959_ (##cdr _e1869818954_)))
                        (if (gx#stx-pair/null? _hd1869918957_)
                            (if (fx>= (gx#stx-length _hd1869918957_) '0)
                                (let ((_g20508_
                                       (gx#syntax-split-splice
                                        _hd1869918957_
                                        '0)))
                                  (begin
                                    (let ((_g20509_ (values-count _g20508_)))
                                      (if (not (fx= _g20509_ 2))
                                          (error "Context expects 2 values"
                                                 _g20509_)))
                                    (let ((_target1870118962_
                                           (values-ref _g20508_ 0))
                                          (_tl1870318964_
                                           (values-ref _g20508_ 1)))
                                      (letrec ((_loop1870418967_
                                                (lambda (_hd1870218970_
                                                         _arg1870818972_)
                                                  (if (gx#stx-pair?
                                                       _hd1870218970_)
                                                      (let ((_e1870518975_
                                                             (gx#stx-e
                                                              _hd1870218970_)))
                                                        (let ((_lp-hd1870618978_
                                                               (##car _e1870518975_))
                                                              (_lp-tl1870718980_
                                                               (##cdr _e1870518975_)))
                                                          (_loop1870418967_
                                                           _lp-tl1870718980_
                                                           (cons _lp-hd1870618978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1870818972_))))
              (let ((_arg1870918983_ (reverse _arg1870818972_)))
                (if (gx#stx-pair? _tl1870018959_)
                    (let ((_e1871018986_ (gx#stx-e _tl1870018959_)))
                      (let ((_hd1871118989_ (##car _e1871018986_))
                            (_tl1871218991_ (##cdr _e1871018986_)))
                        (if (gx#stx-pair? _hd1871118989_)
                            (let ((_e1871318994_ (gx#stx-e _hd1871118989_)))
                              (let ((_hd1871418997_ (##car _e1871318994_))
                                    (_tl1871518999_ (##cdr _e1871318994_)))
                                (if (gx#identifier? _hd1871418997_)
                                    (if (gx#stx-eq? '%#call _hd1871418997_)
                                        (if (gx#stx-pair? _tl1871518999_)
                                            (let ((_e1871619002_
                                                   (gx#stx-e _tl1871518999_)))
                                              (let ((_hd1871719005_
                                                     (##car _e1871619002_))
                                                    (_tl1871819007_
                                                     (##cdr _e1871619002_)))
                                                (if (gx#stx-pair?
                                                     _hd1871719005_)
                                                    (let ((_e1871919010_
                                                           (gx#stx-e
                                                            _hd1871719005_)))
                                                      (let ((_hd1872019013_
                                                             (##car _e1871919010_))
                                                            (_tl1872119015_
                                                             (##cdr _e1871919010_)))
                                                        (if (gx#identifier?
                                                             _hd1872019013_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1872019013_)
                        (if (gx#stx-pair? _tl1872119015_)
                            (let ((_e1872219018_ (gx#stx-e _tl1872119015_)))
                              (let ((_hd1872319021_ (##car _e1872219018_))
                                    (_tl1872419023_ (##cdr _e1872219018_)))
                                (if (gx#stx-null? _tl1872419023_)
                                    (if (gx#stx-pair? _tl1871819007_)
                                        (let ((_e1872519026_
                                               (gx#stx-e _tl1871819007_)))
                                          (let ((_hd1872619029_
                                                 (##car _e1872519026_))
                                                (_tl1872719031_
                                                 (##cdr _e1872519026_)))
                                            (if (gx#stx-pair? _hd1872619029_)
                                                (let ((_e1872819034_
                                                       (gx#stx-e
                                                        _hd1872619029_)))
                                                  (let ((_hd1872919037_
                                                         (##car _e1872819034_))
                                                        (_tl1873019039_
                                                         (##cdr _e1872819034_)))
                                                    (if (gx#identifier?
                                                         _hd1872919037_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1872919037_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1873019039_)
                        (let ((_e1873119042_ (gx#stx-e _tl1873019039_)))
                          (let ((_hd1873219045_ (##car _e1873119042_))
                                (_tl1873319047_ (##cdr _e1873119042_)))
                            (if (gx#stx-null? _tl1873319047_)
                                (if (gx#stx-pair/null? _tl1872719031_)
                                    (if (fx>= (gx#stx-length _tl1872719031_)
                                              '1)
                                        (let ((_g20510_
                                               (gx#syntax-split-splice
                                                _tl1872719031_
                                                '1)))
                                          (begin
                                            (let ((_g20511_
                                                   (values-count _g20510_)))
                                              (if (not (fx= _g20511_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20511_)))
                                            (let ((_target1873419050_
                                                   (values-ref _g20510_ 0))
                                                  (_tl1873619052_
                                                   (values-ref _g20510_ 1)))
                                              (if (gx#stx-pair? _tl1873619052_)
                                                  (let ((_e1874319055_
                                                         (gx#stx-e
                                                          _tl1873619052_)))
                                                    (let ((_hd1874419058_
                                                           (##car _e1874319055_))
                                                          (_tl1874519060_
                                                           (##cdr _e1874319055_)))
                                                      (if (gx#stx-pair?
                                                           _hd1874419058_)
                                                          (let ((_e1874619063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1874419058_)))
                    (let ((_hd1874719066_ (##car _e1874619063_))
                          (_tl1874819068_ (##cdr _e1874619063_)))
                      (if (gx#identifier? _hd1874719066_)
                          (if (gx#stx-eq? '%#ref _hd1874719066_)
                              (if (gx#stx-pair? _tl1874819068_)
                                  (let ((_e1874919071_
                                         (gx#stx-e _tl1874819068_)))
                                    (let ((_hd1875019074_
                                           (##car _e1874919071_))
                                          (_tl1875119076_
                                           (##cdr _e1874919071_)))
                                      (if (gx#stx-null? _tl1875119076_)
                                          (if (gx#stx-null? _tl1874519060_)
                                              (letrec ((_loop1873719079_
                                                        (lambda (_hd1873519082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg1874119084_)
                  (if (gx#stx-pair? _hd1873519082_)
                      (let ((_e1873819087_ (gx#stx-e _hd1873519082_)))
                        (let ((_lp-hd1873919090_ (##car _e1873819087_))
                              (_lp-tl1874019092_ (##cdr _e1873819087_)))
                          (if (gx#stx-pair? _lp-hd1873919090_)
                              (let ((_e1875219095_
                                     (gx#stx-e _lp-hd1873919090_)))
                                (let ((_hd1875319098_ (##car _e1875219095_))
                                      (_tl1875419100_ (##cdr _e1875219095_)))
                                  (if (gx#identifier? _hd1875319098_)
                                      (if (gx#stx-eq? '%#ref _hd1875319098_)
                                          (if (gx#stx-pair? _tl1875419100_)
                                              (let ((_e1875519103_
                                                     (gx#stx-e
                                                      _tl1875419100_)))
                                                (let ((_hd1875619106_
                                                       (##car _e1875519103_))
                                                      (_tl1875719108_
                                                       (##cdr _e1875519103_)))
                                                  (if (gx#stx-null?
                                                       _tl1875719108_)
                                                      (_loop1873719079_
                                                       _lp-tl1874019092_
                                                       (cons _hd1875619106_
                                                             _xarg1874119084_))
                                                      (_g1864318949_
                                                       _g1864618952_))))
                                              (_g1864318949_ _g1864618952_))
                                          (_g1864318949_ _g1864618952_))
                                      (_g1864318949_ _g1864618952_))))
                              (_g1864318949_ _g1864618952_))))
                      (let ((_xarg1874219111_ (reverse _xarg1874119084_)))
                        (if (gx#stx-null? _tl1871218991_)
                            ((lambda (_L19114_
                                      _L19115_
                                      _L19116_
                                      _L19117_
                                      _L19118_
                                      _L19119_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1916219165_
                                                           _g1916319167_)
                                                    (cons _g1916219165_
                                                          _g1916319167_))
                                                  '()
                                                  _L19119_)))
                                       (if (gx#identifier? _L19118_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L19117_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1916919172_ _g1917019174_)
                                    (cons _g1916919172_ _g1917019174_))
                                  '()
                                  _L19119_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g1917619179_ _g1917719181_)
                                    (cons _g1917619179_ _g1917719181_))
                                  '()
                                  _L19115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g1918319186_ _g1918419188_)
                                   (cons _g1918319186_ _g1918419188_))
                                 '()
                                 _L19119_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g1919019193_ _g1919119195_)
                                   (cons _g1919019193_ _g1919119195_))
                                 '()
                                 _L19115_)))
               (if (gx#free-identifier=? _L19118_ _L19114_)
                   (not (find (lambda (_g1919719199_)
                                (gx#free-identifier=? _g1919719199_ _L19116_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1920119204_ _g1920219206_)
                                          (cons _g1920119204_ _g1920219206_))
                                        (cons _L19118_ '())
                                        _L19119_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g1864318949_ _g1864618952_)))
                             _hd1875019074_
                             _xarg1874219111_
                             _hd1873219045_
                             _hd1872319021_
                             _tl1870318964_
                             _arg1870918983_)
                            (_g1864318949_ _g1864618952_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1873719079_
                                                 _target1873419050_
                                                 '()))
                                              (_g1864318949_ _g1864618952_))
                                          (_g1864318949_ _g1864618952_))))
                                  (_g1864318949_ _g1864618952_))
                              (_g1864318949_ _g1864618952_))
                          (_g1864318949_ _g1864618952_))))
                  (_g1864318949_ _g1864618952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1864318949_
                                                   _g1864618952_)))))
                                        (_g1864318949_ _g1864618952_))
                                    (_g1864318949_ _g1864618952_))
                                (_g1864318949_ _g1864618952_))))
                        (_g1864318949_ _g1864618952_))
                    (_g1864318949_ _g1864618952_))
                (_g1864318949_ _g1864618952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1864318949_
                                                 _g1864618952_))))
                                        (_g1864318949_ _g1864618952_))
                                    (_g1864318949_ _g1864618952_))))
                            (_g1864318949_ _g1864618952_))
                        (_g1864318949_ _g1864618952_))
                    (_g1864318949_ _g1864618952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1864318949_
                                                     _g1864618952_))))
                                            (_g1864318949_ _g1864618952_))
                                        (_g1864318949_ _g1864618952_))
                                    (_g1864318949_ _g1864618952_))))
                            (_g1864318949_ _g1864618952_))))
                    (_g1864318949_ _g1864618952_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1870418967_
                                         _target1870118962_
                                         '())))))
                                (_g1864318949_ _g1864618952_))
                            (_g1864318949_ _g1864618952_))))
                    (_g1864318949_ _g1864618952_))))
             (_g1864119403_
              (lambda (_g1864619212_)
                (if (gx#stx-pair? _g1864619212_)
                    (let ((_e1865019214_ (gx#stx-e _g1864619212_)))
                      (let ((_hd1865119217_ (##car _e1865019214_))
                            (_tl1865219219_ (##cdr _e1865019214_)))
                        (if (gx#stx-pair/null? _hd1865119217_)
                            (if (fx>= (gx#stx-length _hd1865119217_) '0)
                                (let ((_g20512_
                                       (gx#syntax-split-splice
                                        _hd1865119217_
                                        '0)))
                                  (begin
                                    (let ((_g20513_ (values-count _g20512_)))
                                      (if (not (fx= _g20513_ 2))
                                          (error "Context expects 2 values"
                                                 _g20513_)))
                                    (let ((_target1865319222_
                                           (values-ref _g20512_ 0))
                                          (_tl1865519224_
                                           (values-ref _g20512_ 1)))
                                      (if (gx#stx-null? _tl1865519224_)
                                          (letrec ((_loop1865619227_
                                                    (lambda (_hd1865419230_
                                                             _arg1866019232_)
                                                      (if (gx#stx-pair?
                                                           _hd1865419230_)
                                                          (let ((_e1865719235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1865419230_)))
                    (let ((_lp-hd1865819238_ (##car _e1865719235_))
                          (_lp-tl1865919240_ (##cdr _e1865719235_)))
                      (_loop1865619227_
                       _lp-tl1865919240_
                       (cons _lp-hd1865819238_ _arg1866019232_))))
                  (let ((_arg1866119243_ (reverse _arg1866019232_)))
                    (if (gx#stx-pair? _tl1865219219_)
                        (let ((_e1866219246_ (gx#stx-e _tl1865219219_)))
                          (let ((_hd1866319249_ (##car _e1866219246_))
                                (_tl1866419251_ (##cdr _e1866219246_)))
                            (if (gx#stx-pair? _hd1866319249_)
                                (let ((_e1866519254_
                                       (gx#stx-e _hd1866319249_)))
                                  (let ((_hd1866619257_ (##car _e1866519254_))
                                        (_tl1866719259_ (##cdr _e1866519254_)))
                                    (if (gx#identifier? _hd1866619257_)
                                        (if (gx#stx-eq? '%#call _hd1866619257_)
                                            (if (gx#stx-pair? _tl1866719259_)
                                                (let ((_e1866819262_
                                                       (gx#stx-e
                                                        _tl1866719259_)))
                                                  (let ((_hd1866919265_
                                                         (##car _e1866819262_))
                                                        (_tl1867019267_
                                                         (##cdr _e1866819262_)))
                                                    (if (gx#stx-pair?
                                                         _hd1866919265_)
                                                        (let ((_e1867119270_
                                                               (gx#stx-e
                                                                _hd1866919265_)))
                                                          (let ((_hd1867219273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1867119270_))
                        (_tl1867319275_ (##cdr _e1867119270_)))
                    (if (gx#identifier? _hd1867219273_)
                        (if (gx#stx-eq? '%#ref _hd1867219273_)
                            (if (gx#stx-pair? _tl1867319275_)
                                (let ((_e1867419278_
                                       (gx#stx-e _tl1867319275_)))
                                  (let ((_hd1867519281_ (##car _e1867419278_))
                                        (_tl1867619283_ (##cdr _e1867419278_)))
                                    (if (gx#stx-null? _tl1867619283_)
                                        (if (gx#stx-pair/null? _tl1867019267_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1867019267_)
                                                      '0)
                                                (let ((_g20514_
                                                       (gx#syntax-split-splice
                                                        _tl1867019267_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20515_
                                                           (values-count
                                                            _g20514_)))
                                                      (if (not (fx= _g20515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1867719286_
                                                           (values-ref
                                                            _g20514_
                                                            0))
                                                          (_tl1867919288_
                                                           (values-ref
                                                            _g20514_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1867919288_)
                                                          (letrec ((_loop1868019291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1867819294_ _xarg1868419296_)
                              (if (gx#stx-pair? _hd1867819294_)
                                  (let ((_e1868119299_
                                         (gx#stx-e _hd1867819294_)))
                                    (let ((_lp-hd1868219302_
                                           (##car _e1868119299_))
                                          (_lp-tl1868319304_
                                           (##cdr _e1868119299_)))
                                      (if (gx#stx-pair? _lp-hd1868219302_)
                                          (let ((_e1868619307_
                                                 (gx#stx-e _lp-hd1868219302_)))
                                            (let ((_hd1868719310_
                                                   (##car _e1868619307_))
                                                  (_tl1868819312_
                                                   (##cdr _e1868619307_)))
                                              (if (gx#identifier?
                                                   _hd1868719310_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1868719310_)
                                                      (if (gx#stx-pair?
                                                           _tl1868819312_)
                                                          (let ((_e1868919315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1868819312_)))
                    (let ((_hd1869019318_ (##car _e1868919315_))
                          (_tl1869119320_ (##cdr _e1868919315_)))
                      (if (gx#stx-null? _tl1869119320_)
                          (_loop1868019291_
                           _lp-tl1868319304_
                           (cons _hd1869019318_ _xarg1868419296_))
                          (_g1864219209_ _g1864619212_))))
                  (_g1864219209_ _g1864619212_))
              (_g1864219209_ _g1864619212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1864219209_
                                                   _g1864619212_))))
                                          (_g1864219209_ _g1864619212_))))
                                  (let ((_xarg1868519323_
                                         (reverse _xarg1868419296_)))
                                    (if (gx#stx-null? _tl1866419251_)
                                        ((lambda (_L19326_ _L19327_ _L19328_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1935619359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1935719361_)
                        (cons _g1935619359_ _g1935719361_))
                      '()
                      _L19328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g1936319366_ _g1936419368_)
                                        (cons _g1936319366_ _g1936419368_))
                                      '()
                                      _L19328_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g1937019373_ _g1937119375_)
                                        (cons _g1937019373_ _g1937119375_))
                                      '()
                                      _L19326_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1937719380_ _g1937819382_)
                                       (cons _g1937719380_ _g1937819382_))
                                     '()
                                     _L19328_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1938419387_ _g1938519389_)
                                       (cons _g1938419387_ _g1938519389_))
                                     '()
                                     _L19326_)))
                   (not (find (lambda (_g1939119393_)
                                (gx#free-identifier=? _g1939119393_ _L19327_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1939519398_ _g1939619400_)
                                          (cons _g1939519398_ _g1939619400_))
                                        '()
                                        _L19328_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1864219209_ _g1864619212_)))
                                         _xarg1868519323_
                                         _hd1867519281_
                                         _arg1866119243_)
                                        (_g1864219209_ _g1864619212_)))))))
                    (_loop1868019291_ _target1867719286_ '()))
                  (_g1864219209_ _g1864619212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1864219209_ _g1864619212_))
                                            (_g1864219209_ _g1864619212_))
                                        (_g1864219209_ _g1864619212_))))
                                (_g1864219209_ _g1864619212_))
                            (_g1864219209_ _g1864619212_))
                        (_g1864219209_ _g1864619212_))))
                (_g1864219209_ _g1864619212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1864219209_ _g1864619212_))
                                            (_g1864219209_ _g1864619212_))
                                        (_g1864219209_ _g1864619212_))))
                                (_g1864219209_ _g1864619212_))))
                        (_g1864219209_ _g1864619212_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1865619227_
                                             _target1865319222_
                                             '()))
                                          (_g1864219209_ _g1864619212_)))))
                                (_g1864219209_ _g1864619212_))
                            (_g1864219209_ _g1864619212_))))
                    (_g1864219209_ _g1864619212_)))))
        (_g1864119403_ _form18640_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form18108_)
      (let* ((_g1811218236_
              (lambda (_g1811318233_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1811318233_)))
             (_g1811118353_
              (lambda (_g1811318239_)
                (if (gx#stx-pair? _g1811318239_)
                    (let ((_e1820218241_ (gx#stx-e _g1811318239_)))
                      (let ((_hd1820318244_ (##car _e1820218241_))
                            (_tl1820418246_ (##cdr _e1820218241_)))
                        (if (gx#stx-pair? _tl1820418246_)
                            (let ((_e1820518249_ (gx#stx-e _tl1820418246_)))
                              (let ((_hd1820618252_ (##car _e1820518249_))
                                    (_tl1820718254_ (##cdr _e1820518249_)))
                                (if (gx#stx-pair? _hd1820618252_)
                                    (let ((_e1820818257_
                                           (gx#stx-e _hd1820618252_)))
                                      (let ((_hd1820918260_
                                             (##car _e1820818257_))
                                            (_tl1821018262_
                                             (##cdr _e1820818257_)))
                                        (if (gx#identifier? _hd1820918260_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1820918260_)
                                                (if (gx#stx-pair?
                                                     _tl1821018262_)
                                                    (let ((_e1821118265_
                                                           (gx#stx-e
                                                            _tl1821018262_)))
                                                      (let ((_hd1821218268_
                                                             (##car _e1821118265_))
                                                            (_tl1821318270_
                                                             (##cdr _e1821118265_)))
                                                        (if (gx#stx-pair?
                                                             _hd1821218268_)
                                                            (let ((_e1821418273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1821218268_)))
                      (let ((_hd1821518276_ (##car _e1821418273_))
                            (_tl1821618278_ (##cdr _e1821418273_)))
                        (if (gx#identifier? _hd1821518276_)
                            (if (gx#stx-eq? '%#ref _hd1821518276_)
                                (if (gx#stx-pair? _tl1821618278_)
                                    (let ((_e1821718281_
                                           (gx#stx-e _tl1821618278_)))
                                      (let ((_hd1821818284_
                                             (##car _e1821718281_))
                                            (_tl1821918286_
                                             (##cdr _e1821718281_)))
                                        (if (gx#stx-null? _tl1821918286_)
                                            (if (gx#stx-pair? _tl1821318270_)
                                                (let ((_e1822018289_
                                                       (gx#stx-e
                                                        _tl1821318270_)))
                                                  (let ((_hd1822118292_
                                                         (##car _e1822018289_))
                                                        (_tl1822218294_
                                                         (##cdr _e1822018289_)))
                                                    (if (gx#stx-pair?
                                                         _hd1822118292_)
                                                        (let ((_e1822318297_
                                                               (gx#stx-e
                                                                _hd1822118292_)))
                                                          (let ((_hd1822418300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1822318297_))
                        (_tl1822518302_ (##cdr _e1822318297_)))
                    (if (gx#identifier? _hd1822418300_)
                        (if (gx#stx-eq? '%#ref _hd1822418300_)
                            (if (gx#stx-pair? _tl1822518302_)
                                (let ((_e1822618305_
                                       (gx#stx-e _tl1822518302_)))
                                  (let ((_hd1822718308_ (##car _e1822618305_))
                                        (_tl1822818310_ (##cdr _e1822618305_)))
                                    (if (gx#stx-null? _tl1822818310_)
                                        (if (gx#stx-pair? _tl1822218294_)
                                            (let ((_e1822918313_
                                                   (gx#stx-e _tl1822218294_)))
                                              (let ((_hd1823018316_
                                                     (##car _e1822918313_))
                                                    (_tl1823118318_
                                                     (##cdr _e1822918313_)))
                                                (if (gx#stx-null?
                                                     _tl1823118318_)
                                                    (if (gx#stx-null?
                                                         _tl1820718254_)
                                                        ((lambda (_L18321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18322_
                          _L18323_)
                   (gxc#generate-runtime-binding-id _L18321_))
                 _hd1822718308_
                 _hd1821818284_
                 _hd1820318244_)
                (_g1811218236_ _g1811318239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811218236_
                                                     _g1811318239_))))
                                            (_g1811218236_ _g1811318239_))
                                        (_g1811218236_ _g1811318239_))))
                                (_g1811218236_ _g1811318239_))
                            (_g1811218236_ _g1811318239_))
                        (_g1811218236_ _g1811318239_))))
                (_g1811218236_ _g1811318239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1811218236_ _g1811318239_))
                                            (_g1811218236_ _g1811318239_))))
                                    (_g1811218236_ _g1811318239_))
                                (_g1811218236_ _g1811318239_))
                            (_g1811218236_ _g1811318239_))))
                    (_g1811218236_ _g1811318239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811218236_
                                                     _g1811318239_))
                                                (_g1811218236_ _g1811318239_))
                                            (_g1811218236_ _g1811318239_))))
                                    (_g1811218236_ _g1811318239_))))
                            (_g1811218236_ _g1811318239_))))
                    (_g1811218236_ _g1811318239_))))
             (_g1811018489_
              (lambda (_g1811318356_)
                (if (gx#stx-pair? _g1811318356_)
                    (let ((_e1816318358_ (gx#stx-e _g1811318356_)))
                      (let ((_hd1816418361_ (##car _e1816318358_))
                            (_tl1816518363_ (##cdr _e1816318358_)))
                        (if (gx#stx-pair/null? _hd1816418361_)
                            (if (fx>= (gx#stx-length _hd1816418361_) '0)
                                (let ((_g20516_
                                       (gx#syntax-split-splice
                                        _hd1816418361_
                                        '0)))
                                  (begin
                                    (let ((_g20517_ (values-count _g20516_)))
                                      (if (not (fx= _g20517_ 2))
                                          (error "Context expects 2 values"
                                                 _g20517_)))
                                    (let ((_target1816618366_
                                           (values-ref _g20516_ 0))
                                          (_tl1816818368_
                                           (values-ref _g20516_ 1)))
                                      (letrec ((_loop1816918371_
                                                (lambda (_hd1816718374_
                                                         _arg1817318376_)
                                                  (if (gx#stx-pair?
                                                       _hd1816718374_)
                                                      (let ((_e1817018379_
                                                             (gx#stx-e
                                                              _hd1816718374_)))
                                                        (let ((_lp-hd1817118382_
                                                               (##car _e1817018379_))
                                                              (_lp-tl1817218384_
                                                               (##cdr _e1817018379_)))
                                                          (_loop1816918371_
                                                           _lp-tl1817218384_
                                                           (cons _lp-hd1817118382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1817318376_))))
              (let ((_arg1817418387_ (reverse _arg1817318376_)))
                (if (gx#stx-pair? _tl1816518363_)
                    (let ((_e1817518390_ (gx#stx-e _tl1816518363_)))
                      (let ((_hd1817618393_ (##car _e1817518390_))
                            (_tl1817718395_ (##cdr _e1817518390_)))
                        (if (gx#stx-pair? _hd1817618393_)
                            (let ((_e1817818398_ (gx#stx-e _hd1817618393_)))
                              (let ((_hd1817918401_ (##car _e1817818398_))
                                    (_tl1818018403_ (##cdr _e1817818398_)))
                                (if (gx#identifier? _hd1817918401_)
                                    (if (gx#stx-eq? '%#call _hd1817918401_)
                                        (if (gx#stx-pair? _tl1818018403_)
                                            (let ((_e1818118406_
                                                   (gx#stx-e _tl1818018403_)))
                                              (let ((_hd1818218409_
                                                     (##car _e1818118406_))
                                                    (_tl1818318411_
                                                     (##cdr _e1818118406_)))
                                                (if (gx#stx-pair?
                                                     _hd1818218409_)
                                                    (let ((_e1818418414_
                                                           (gx#stx-e
                                                            _hd1818218409_)))
                                                      (let ((_hd1818518417_
                                                             (##car _e1818418414_))
                                                            (_tl1818618419_
                                                             (##cdr _e1818418414_)))
                                                        (if (gx#identifier?
                                                             _hd1818518417_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1818518417_)
                        (if (gx#stx-pair? _tl1818618419_)
                            (let ((_e1818718422_ (gx#stx-e _tl1818618419_)))
                              (let ((_hd1818818425_ (##car _e1818718422_))
                                    (_tl1818918427_ (##cdr _e1818718422_)))
                                (if (gx#stx-null? _tl1818918427_)
                                    (if (gx#stx-pair? _tl1818318411_)
                                        (let ((_e1819018430_
                                               (gx#stx-e _tl1818318411_)))
                                          (let ((_hd1819118433_
                                                 (##car _e1819018430_))
                                                (_tl1819218435_
                                                 (##cdr _e1819018430_)))
                                            (if (gx#stx-pair? _hd1819118433_)
                                                (let ((_e1819318438_
                                                       (gx#stx-e
                                                        _hd1819118433_)))
                                                  (let ((_hd1819418441_
                                                         (##car _e1819318438_))
                                                        (_tl1819518443_
                                                         (##cdr _e1819318438_)))
                                                    (if (gx#identifier?
                                                         _hd1819418441_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1819418441_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1819518443_)
                        (let ((_e1819618446_ (gx#stx-e _tl1819518443_)))
                          (let ((_hd1819718449_ (##car _e1819618446_))
                                (_tl1819818451_ (##cdr _e1819618446_)))
                            (if (gx#stx-null? _tl1819818451_)
                                (if (gx#stx-null? _tl1817718395_)
                                    ((lambda (_L18454_
                                              _L18455_
                                              _L18456_
                                              _L18457_)
                                       (gxc#generate-runtime-binding-id
                                        _L18454_))
                                     _hd1819718449_
                                     _hd1818818425_
                                     _tl1816818368_
                                     _arg1817418387_)
                                    (_g1811118353_ _g1811318356_))
                                (_g1811118353_ _g1811318356_))))
                        (_g1811118353_ _g1811318356_))
                    (_g1811118353_ _g1811318356_))
                (_g1811118353_ _g1811318356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1811118353_
                                                 _g1811318356_))))
                                        (_g1811118353_ _g1811318356_))
                                    (_g1811118353_ _g1811318356_))))
                            (_g1811118353_ _g1811318356_))
                        (_g1811118353_ _g1811318356_))
                    (_g1811118353_ _g1811318356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811118353_
                                                     _g1811318356_))))
                                            (_g1811118353_ _g1811318356_))
                                        (_g1811118353_ _g1811318356_))
                                    (_g1811118353_ _g1811318356_))))
                            (_g1811118353_ _g1811318356_))))
                    (_g1811118353_ _g1811318356_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1816918371_
                                         _target1816618366_
                                         '())))))
                                (_g1811118353_ _g1811318356_))
                            (_g1811118353_ _g1811318356_))))
                    (_g1811118353_ _g1811318356_))))
             (_g1810918637_
              (lambda (_g1811318492_)
                (if (gx#stx-pair? _g1811318492_)
                    (let ((_e1811718494_ (gx#stx-e _g1811318492_)))
                      (let ((_hd1811818497_ (##car _e1811718494_))
                            (_tl1811918499_ (##cdr _e1811718494_)))
                        (if (gx#stx-pair/null? _hd1811818497_)
                            (if (fx>= (gx#stx-length _hd1811818497_) '0)
                                (let ((_g20518_
                                       (gx#syntax-split-splice
                                        _hd1811818497_
                                        '0)))
                                  (begin
                                    (let ((_g20519_ (values-count _g20518_)))
                                      (if (not (fx= _g20519_ 2))
                                          (error "Context expects 2 values"
                                                 _g20519_)))
                                    (let ((_target1812018502_
                                           (values-ref _g20518_ 0))
                                          (_tl1812218504_
                                           (values-ref _g20518_ 1)))
                                      (if (gx#stx-null? _tl1812218504_)
                                          (letrec ((_loop1812318507_
                                                    (lambda (_hd1812118510_
                                                             _arg1812718512_)
                                                      (if (gx#stx-pair?
                                                           _hd1812118510_)
                                                          (let ((_e1812418515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1812118510_)))
                    (let ((_lp-hd1812518518_ (##car _e1812418515_))
                          (_lp-tl1812618520_ (##cdr _e1812418515_)))
                      (_loop1812318507_
                       _lp-tl1812618520_
                       (cons _lp-hd1812518518_ _arg1812718512_))))
                  (let ((_arg1812818523_ (reverse _arg1812718512_)))
                    (if (gx#stx-pair? _tl1811918499_)
                        (let ((_e1812918526_ (gx#stx-e _tl1811918499_)))
                          (let ((_hd1813018529_ (##car _e1812918526_))
                                (_tl1813118531_ (##cdr _e1812918526_)))
                            (if (gx#stx-pair? _hd1813018529_)
                                (let ((_e1813218534_
                                       (gx#stx-e _hd1813018529_)))
                                  (let ((_hd1813318537_ (##car _e1813218534_))
                                        (_tl1813418539_ (##cdr _e1813218534_)))
                                    (if (gx#identifier? _hd1813318537_)
                                        (if (gx#stx-eq? '%#call _hd1813318537_)
                                            (if (gx#stx-pair? _tl1813418539_)
                                                (let ((_e1813518542_
                                                       (gx#stx-e
                                                        _tl1813418539_)))
                                                  (let ((_hd1813618545_
                                                         (##car _e1813518542_))
                                                        (_tl1813718547_
                                                         (##cdr _e1813518542_)))
                                                    (if (gx#stx-pair?
                                                         _hd1813618545_)
                                                        (let ((_e1813818550_
                                                               (gx#stx-e
                                                                _hd1813618545_)))
                                                          (let ((_hd1813918553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1813818550_))
                        (_tl1814018555_ (##cdr _e1813818550_)))
                    (if (gx#identifier? _hd1813918553_)
                        (if (gx#stx-eq? '%#ref _hd1813918553_)
                            (if (gx#stx-pair? _tl1814018555_)
                                (let ((_e1814118558_
                                       (gx#stx-e _tl1814018555_)))
                                  (let ((_hd1814218561_ (##car _e1814118558_))
                                        (_tl1814318563_ (##cdr _e1814118558_)))
                                    (if (gx#stx-null? _tl1814318563_)
                                        (if (gx#stx-pair/null? _tl1813718547_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1813718547_)
                                                      '0)
                                                (let ((_g20520_
                                                       (gx#syntax-split-splice
                                                        _tl1813718547_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20521_
                                                           (values-count
                                                            _g20520_)))
                                                      (if (not (fx= _g20521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1814418566_
                                                           (values-ref
                                                            _g20520_
                                                            0))
                                                          (_tl1814618568_
                                                           (values-ref
                                                            _g20520_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1814618568_)
                                                          (letrec ((_loop1814718571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1814518574_ _xarg1815118576_)
                              (if (gx#stx-pair? _hd1814518574_)
                                  (let ((_e1814818579_
                                         (gx#stx-e _hd1814518574_)))
                                    (let ((_lp-hd1814918582_
                                           (##car _e1814818579_))
                                          (_lp-tl1815018584_
                                           (##cdr _e1814818579_)))
                                      (if (gx#stx-pair? _lp-hd1814918582_)
                                          (let ((_e1815318587_
                                                 (gx#stx-e _lp-hd1814918582_)))
                                            (let ((_hd1815418590_
                                                   (##car _e1815318587_))
                                                  (_tl1815518592_
                                                   (##cdr _e1815318587_)))
                                              (if (gx#identifier?
                                                   _hd1815418590_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1815418590_)
                                                      (if (gx#stx-pair?
                                                           _tl1815518592_)
                                                          (let ((_e1815618595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1815518592_)))
                    (let ((_hd1815718598_ (##car _e1815618595_))
                          (_tl1815818600_ (##cdr _e1815618595_)))
                      (if (gx#stx-null? _tl1815818600_)
                          (_loop1814718571_
                           _lp-tl1815018584_
                           (cons _hd1815718598_ _xarg1815118576_))
                          (_g1811018489_ _g1811318492_))))
                  (_g1811018489_ _g1811318492_))
              (_g1811018489_ _g1811318492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1811018489_
                                                   _g1811318492_))))
                                          (_g1811018489_ _g1811318492_))))
                                  (let ((_xarg1815218603_
                                         (reverse _xarg1815118576_)))
                                    (if (gx#stx-null? _tl1813118531_)
                                        ((lambda (_L18606_ _L18607_ _L18608_)
                                           (gxc#generate-runtime-binding-id
                                            _L18607_))
                                         _xarg1815218603_
                                         _hd1814218561_
                                         _arg1812818523_)
                                        (_g1811018489_ _g1811318492_)))))))
                    (_loop1814718571_ _target1814418566_ '()))
                  (_g1811018489_ _g1811318492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1811018489_ _g1811318492_))
                                            (_g1811018489_ _g1811318492_))
                                        (_g1811018489_ _g1811318492_))))
                                (_g1811018489_ _g1811318492_))
                            (_g1811018489_ _g1811318492_))
                        (_g1811018489_ _g1811318492_))))
                (_g1811018489_ _g1811318492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1811018489_ _g1811318492_))
                                            (_g1811018489_ _g1811318492_))
                                        (_g1811018489_ _g1811318492_))))
                                (_g1811018489_ _g1811318492_))))
                        (_g1811018489_ _g1811318492_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1812318507_
                                             _target1812018502_
                                             '()))
                                          (_g1811018489_ _g1811318492_)))))
                                (_g1811018489_ _g1811318492_))
                            (_g1811018489_ _g1811318492_))))
                    (_g1811018489_ _g1811318492_)))))
        (_g1810918637_ _form18108_))))
  (define gxc#lambda-form-arity
    (lambda (_form17912_)
      (let* ((_g1791417928_
              (lambda (_g1791517925_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1791517925_)))
             (_g1791318105_
              (lambda (_g1791517931_)
                (if (gx#stx-pair? _g1791517931_)
                    (let ((_e1791817933_ (gx#stx-e _g1791517931_)))
                      (let ((_hd1791917936_ (##car _e1791817933_))
                            (_tl1792017938_ (##cdr _e1791817933_)))
                        (if (gx#stx-pair? _tl1792017938_)
                            (let ((_e1792117941_ (gx#stx-e _tl1792017938_)))
                              (let ((_hd1792217944_ (##car _e1792117941_))
                                    (_tl1792317946_ (##cdr _e1792117941_)))
                                (if (gx#stx-null? _tl1792317946_)
                                    ((lambda (_L17949_ _L17950_)
                                       (let* ((_g1796517993_
                                               (lambda (_g1796617990_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1796617990_)))
                                              (_g1796418006_
                                               (lambda (_g1796617996_)
                                                 ((lambda (_L17998_)
                                                    (cons '0 '()))
                                                  _g1796617996_)))
                                              (_g1796318055_
                                               (lambda (_g1796618009_)
                                                 (if (gx#stx-pair/null?
                                                      _g1796618009_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1796618009_)
                                                               '0)
                                                         (let ((_g20522_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1796618009_
                         '0)))
                   (begin
                     (let ((_g20523_ (values-count _g20522_)))
                       (if (not (fx= _g20523_ 2))
                           (error "Context expects 2 values" _g20523_)))
                     (let ((_target1797918011_ (values-ref _g20522_ 0))
                           (_tl1798118013_ (values-ref _g20522_ 1)))
                       (letrec ((_loop1798218016_
                                 (lambda (_hd1798018019_ _arg1798618021_)
                                   (if (gx#stx-pair? _hd1798018019_)
                                       (let ((_e1798318024_
                                              (gx#stx-e _hd1798018019_)))
                                         (let ((_lp-hd1798418027_
                                                (##car _e1798318024_))
                                               (_lp-tl1798518029_
                                                (##cdr _e1798318024_)))
                                           (_loop1798218016_
                                            _lp-tl1798518029_
                                            (cons _lp-hd1798418027_
                                                  _arg1798618021_))))
                                       (let ((_arg1798718032_
                                              (reverse _arg1798618021_)))
                                         ((lambda (_L18035_ _L18036_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1804718050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1804818052_)
                              (cons _g1804718050_ _g1804818052_))
                            '()
                            _L18036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl1798118013_
                                          _arg1798718032_))))))
                         (_loop1798218016_ _target1797918011_ '())))))
                 (_g1796418006_ _g1796618009_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1796418006_
                                                      _g1796618009_))))
                                              (_g1796218102_
                                               (lambda (_g1796618058_)
                                                 (if (gx#stx-pair/null?
                                                      _g1796618058_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1796618058_)
                                                               '0)
                                                         (let ((_g20524_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1796618058_
                         '0)))
                   (begin
                     (let ((_g20525_ (values-count _g20524_)))
                       (if (not (fx= _g20525_ 2))
                           (error "Context expects 2 values" _g20525_)))
                     (let ((_target1796818060_ (values-ref _g20524_ 0))
                           (_tl1797018062_ (values-ref _g20524_ 1)))
                       (if (gx#stx-null? _tl1797018062_)
                           (letrec ((_loop1797118065_
                                     (lambda (_hd1796918068_ _arg1797518070_)
                                       (if (gx#stx-pair? _hd1796918068_)
                                           (let ((_e1797218073_
                                                  (gx#stx-e _hd1796918068_)))
                                             (let ((_lp-hd1797318076_
                                                    (##car _e1797218073_))
                                                   (_lp-tl1797418078_
                                                    (##cdr _e1797218073_)))
                                               (_loop1797118065_
                                                _lp-tl1797418078_
                                                (cons _lp-hd1797318076_
                                                      _arg1797518070_))))
                                           (let ((_arg1797618081_
                                                  (reverse _arg1797518070_)))
                                             ((lambda (_L18084_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1809418097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1809518099_)
                            (cons _g1809418097_ _g1809518099_))
                          '()
                          _L18084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg1797618081_))))))
                             (_loop1797118065_ _target1796818060_ '()))
                           (_g1796318055_ _g1796618058_)))))
                 (_g1796318055_ _g1796618058_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1796318055_
                                                      _g1796618058_)))))
                                         (_g1796218102_ _L17950_)))
                                     _hd1792217944_
                                     _hd1791917936_)
                                    (_g1791417928_ _g1791517931_))))
                            (_g1791417928_ _g1791517931_))))
                    (_g1791417928_ _g1791517931_)))))
        (_g1791318105_ _form17912_))))
  (define gxc#lambda-expr?
    (lambda (_expr17865_)
      (let* ((_g1786817878_
              (lambda (_g1786917875_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1786917875_)))
             (_g1786717885_ (lambda (_g1786917881_) ((lambda () '#f))))
             (_g1786617909_
              (lambda (_g1786917888_)
                (if (gx#stx-pair? _g1786917888_)
                    (let ((_e1787117890_ (gx#stx-e _g1786917888_)))
                      (let ((_hd1787217893_ (##car _e1787117890_))
                            (_tl1787317895_ (##cdr _e1787117890_)))
                        (if (gx#identifier? _hd1787217893_)
                            (if (gx#stx-eq? '%#lambda _hd1787217893_)
                                ((lambda (_L17898_) '#t) _tl1787317895_)
                                (_g1786717885_ _g1786917888_))
                            (_g1786717885_ _g1786917888_))))
                    (_g1786717885_ _g1786917888_)))))
        (_g1786617909_ _expr17865_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr17818_)
      (let* ((_g1782117831_
              (lambda (_g1782217828_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1782217828_)))
             (_g1782017838_ (lambda (_g1782217834_) ((lambda () '#f))))
             (_g1781917862_
              (lambda (_g1782217841_)
                (if (gx#stx-pair? _g1782217841_)
                    (let ((_e1782417843_ (gx#stx-e _g1782217841_)))
                      (let ((_hd1782517846_ (##car _e1782417843_))
                            (_tl1782617848_ (##cdr _e1782417843_)))
                        (if (gx#identifier? _hd1782517846_)
                            (if (gx#stx-eq? '%#case-lambda _hd1782517846_)
                                ((lambda (_L17851_) '#t) _tl1782617848_)
                                (_g1782017838_ _g1782217841_))
                            (_g1782017838_ _g1782217841_))))
                    (_g1782017838_ _g1782217841_)))))
        (_g1781917862_ _expr17818_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17687_)
      (let* ((_g1769017720_
              (lambda (_g1769117717_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1769117717_)))
             (_g1768917727_ (lambda (_g1769117723_) ((lambda () '#f))))
             (_g1768817815_
              (lambda (_g1769117730_)
                (if (gx#stx-pair? _g1769117730_)
                    (let ((_e1769517732_ (gx#stx-e _g1769117730_)))
                      (let ((_hd1769617735_ (##car _e1769517732_))
                            (_tl1769717737_ (##cdr _e1769517732_)))
                        (if (gx#identifier? _hd1769617735_)
                            (if (gx#stx-eq? '%#let-values _hd1769617735_)
                                (if (gx#stx-pair? _tl1769717737_)
                                    (let ((_e1769817740_
                                           (gx#stx-e _tl1769717737_)))
                                      (let ((_hd1769917743_
                                             (##car _e1769817740_))
                                            (_tl1770017745_
                                             (##cdr _e1769817740_)))
                                        (if (gx#stx-pair? _hd1769917743_)
                                            (let ((_e1770117748_
                                                   (gx#stx-e _hd1769917743_)))
                                              (let ((_hd1770217751_
                                                     (##car _e1770117748_))
                                                    (_tl1770317753_
                                                     (##cdr _e1770117748_)))
                                                (if (gx#stx-pair?
                                                     _hd1770217751_)
                                                    (let ((_e1770417756_
                                                           (gx#stx-e
                                                            _hd1770217751_)))
                                                      (let ((_hd1770517759_
                                                             (##car _e1770417756_))
                                                            (_tl1770617761_
                                                             (##cdr _e1770417756_)))
                                                        (if (gx#stx-pair?
                                                             _hd1770517759_)
                                                            (let ((_e1770717764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1770517759_)))
                      (let ((_hd1770817767_ (##car _e1770717764_))
                            (_tl1770917769_ (##cdr _e1770717764_)))
                        (if (gx#stx-null? _tl1770917769_)
                            (if (gx#stx-pair? _tl1770617761_)
                                (let ((_e1771017772_
                                       (gx#stx-e _tl1770617761_)))
                                  (let ((_hd1771117775_ (##car _e1771017772_))
                                        (_tl1771217777_ (##cdr _e1771017772_)))
                                    (if (gx#stx-null? _tl1771217777_)
                                        (if (gx#stx-null? _tl1770317753_)
                                            (if (gx#stx-pair? _tl1770017745_)
                                                (let ((_e1771317780_
                                                       (gx#stx-e
                                                        _tl1770017745_)))
                                                  (let ((_hd1771417783_
                                                         (##car _e1771317780_))
                                                        (_tl1771517785_
                                                         (##cdr _e1771317780_)))
                                                    (if (gx#stx-null?
                                                         _tl1771517785_)
                                                        ((lambda (_L17788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17789_
                          _L17790_)
                   (if (gx#identifier? _L17790_)
                       (if (gxc#lambda-expr? _L17789_)
                           (gxc#case-lambda-expr? _L17788_)
                           '#f)
                       '#f))
                 _hd1771417783_
                 _hd1771117775_
                 _hd1770817767_)
                (_g1768917727_ _g1769117730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1768917727_ _g1769117730_))
                                            (_g1768917727_ _g1769117730_))
                                        (_g1768917727_ _g1769117730_))))
                                (_g1768917727_ _g1769117730_))
                            (_g1768917727_ _g1769117730_))))
                    (_g1768917727_ _g1769117730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1768917727_
                                                     _g1769117730_))))
                                            (_g1768917727_ _g1769117730_))))
                                    (_g1768917727_ _g1769117730_))
                                (_g1768917727_ _g1769117730_))
                            (_g1768917727_ _g1769117730_))))
                    (_g1768917727_ _g1769117730_)))))
        (_g1768817815_ _expr17687_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda17427
      (lambda (_stx17429_ _id17430_ _clauses17431_ _gensym?17432_)
        (let _lp17434_ ((_rest17436_ _clauses17431_)
                        (_ids17437_ '())
                        (_impls17438_ '())
                        (_clauses17439_ '()))
          (let* ((_rest1744017448_ _rest17436_)
                 (_E1744317452_
                  (lambda () (error '"No clause matching" _rest1744017448_)))
                 (_else1744217456_
                  (lambda ()
                    (values (reverse _ids17437_)
                            (reverse _impls17438_)
                            (reverse _clauses17439_))))
                 (_K1744417661_
                  (lambda (_rest17459_ _clause17460_)
                    (if (gxc#dispatch-lambda-form? _clause17460_)
                        (_lp17434_
                         _rest17459_
                         _ids17437_
                         _impls17438_
                         (cons _clause17460_ _clauses17439_))
                        (let* ((_g1746217473_
                                (lambda (_g1746317470_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1746317470_)))
                               (_g1746117658_
                                (lambda (_g1746317476_)
                                  (if (gx#stx-pair? _g1746317476_)
                                      (let ((_e1746617478_
                                             (gx#stx-e _g1746317476_)))
                                        (let ((_hd1746717481_
                                               (##car _e1746617478_))
                                              (_tl1746817483_
                                               (##cdr _e1746617478_)))
                                          ((lambda (_L17486_ _L17487_)
                                             (let* ((_id17504_
                                                     (make-symbol
                                                      (gx#stx-e _id17430_)
                                                      '"__"
                                                      (length _clauses17439_)
                                                      (if _gensym?17432_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id17506_
                                                     (gx#core-quote-syntax__1
                                                      _id17504_
                                                      (gx#stx-source
                                                       _stx17429_)))
                                                    (_impl17508_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L17487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17486_))
              _stx17429_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause17655_
                                                     (let* ((_g1751217540_
                                                             (lambda (_g1751317537_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1751317537_)))
                                                            (_g1751117556_
                                                             (lambda (_g1751317543_)
                                                               ((lambda (_L17545_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17487_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id17506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L17545_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx17429_)
                                      '())))
                        _g1751317543_)))
                    (_g1751017605_
                     (lambda (_g1751317559_)
                       (if (gx#stx-pair/null? _g1751317559_)
                           (if (fx>= (gx#stx-length _g1751317559_) '0)
                               (let ((_g20526_
                                      (gx#syntax-split-splice
                                       _g1751317559_
                                       '0)))
                                 (begin
                                   (let ((_g20527_ (values-count _g20526_)))
                                     (if (not (fx= _g20527_ 2))
                                         (error "Context expects 2 values"
                                                _g20527_)))
                                   (let ((_target1752617561_
                                          (values-ref _g20526_ 0))
                                         (_tl1752817563_
                                          (values-ref _g20526_ 1)))
                                     (letrec ((_loop1752917566_
                                               (lambda (_hd1752717569_
                                                        _arg1753317571_)
                                                 (if (gx#stx-pair?
                                                      _hd1752717569_)
                                                     (let ((_e1753017574_
                                                            (gx#stx-e
                                                             _hd1752717569_)))
                                                       (let ((_lp-hd1753117577_
                                                              (##car _e1753017574_))
                                                             (_lp-tl1753217579_
                                                              (##cdr _e1753017574_)))
                                                         (_loop1752917566_
                                                          _lp-tl1753217579_
                                                          (cons _lp-hd1753117577_
                                                                _arg1753317571_))))
                                                     (let ((_arg1753417582_
                                                            (reverse _arg1753317571_)))
                                                       ((lambda (_L17585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17586_)
                  (cons _L17487_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id17506_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L17585_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g1759717600_ _g1759817602_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g1759717600_ '()))
                                   _g1759817602_))
                           '()
                           _L17586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx17429_)
                              '())))
                _tl1752817563_
                _arg1753417582_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1752917566_
                                        _target1752617561_
                                        '())))))
                               (_g1751117556_ _g1751317559_))
                           (_g1751117556_ _g1751317559_))))
                    (_g1750917652_
                     (lambda (_g1751317608_)
                       (if (gx#stx-pair/null? _g1751317608_)
                           (if (fx>= (gx#stx-length _g1751317608_) '0)
                               (let ((_g20528_
                                      (gx#syntax-split-splice
                                       _g1751317608_
                                       '0)))
                                 (begin
                                   (let ((_g20529_ (values-count _g20528_)))
                                     (if (not (fx= _g20529_ 2))
                                         (error "Context expects 2 values"
                                                _g20529_)))
                                   (let ((_target1751517610_
                                          (values-ref _g20528_ 0))
                                         (_tl1751717612_
                                          (values-ref _g20528_ 1)))
                                     (if (gx#stx-null? _tl1751717612_)
                                         (letrec ((_loop1751817615_
                                                   (lambda (_hd1751617618_
                                                            _arg1752217620_)
                                                     (if (gx#stx-pair?
                                                          _hd1751617618_)
                                                         (let ((_e1751917623_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1751617618_)))
                   (let ((_lp-hd1752017626_ (##car _e1751917623_))
                         (_lp-tl1752117628_ (##cdr _e1751917623_)))
                     (_loop1751817615_
                      _lp-tl1752117628_
                      (cons _lp-hd1752017626_ _arg1752217620_))))
                 (let ((_arg1752317631_ (reverse _arg1752217620_)))
                   ((lambda (_L17634_)
                      (cons _L17487_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id17506_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g1764417647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1764517649_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g1764417647_ '()))
                         _g1764517649_))
                 '()
                 _L17634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx17429_)
                                  '())))
                    _arg1752317631_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1751817615_
                                            _target1751517610_
                                            '()))
                                         (_g1751017605_ _g1751317608_)))))
                               (_g1751017605_ _g1751317608_))
                           (_g1751017605_ _g1751317608_)))))
               (_g1750917652_ _L17487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp17434_
                                                _rest17459_
                                                (cons _id17506_ _ids17437_)
                                                (cons _impl17508_ _impls17438_)
                                                (cons _clause17655_
                                                      _clauses17439_))))
                                           _tl1746817483_
                                           _hd1746717481_)))
                                      (_g1746217473_ _g1746317476_)))))
                          (_g1746117658_ _clause17460_))))))
            (if (##pair? _rest1744017448_)
                (let ((_hd1744517664_ (##car _rest1744017448_))
                      (_tl1744617666_ (##cdr _rest1744017448_)))
                  (let* ((_clause17669_ _hd1744517664_)
                         (_rest17671_ _tl1744617666_))
                    (_K1744417661_ _rest17671_ _clause17669_)))
                (_else1744217456_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17676_ _id17677_ _clauses17678_)
          (let ((_gensym?17680_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda17427
             _stx17676_
             _id17677_
             _clauses17678_
             _gensym?17680_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20531_
          (let ((_g20530_ (length _g20531_)))
            (cond ((fx= _g20530_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20531_))
                  ((fx= _g20530_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda17427
                          _g20531_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20531_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx17018_)
      (letrec ((_case-lambda-clause-def17020_
                (lambda (_id17425_ _impl17426_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id17425_ '())
                               (cons (gxc#compile-e _impl17426_) '())))
                   _stx17018_))))
        (let* ((_g1702417069_
                (lambda (_g1702517066_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1702517066_)))
               (_g1702317115_
                (lambda (_g1702517072_)
                  (if (gx#stx-pair? _g1702517072_)
                      (let ((_e1705617074_ (gx#stx-e _g1702517072_)))
                        (let ((_hd1705717077_ (##car _e1705617074_))
                              (_tl1705817079_ (##cdr _e1705617074_)))
                          (if (gx#stx-pair? _tl1705817079_)
                              (let ((_e1705917082_ (gx#stx-e _tl1705817079_)))
                                (let ((_hd1706017085_ (##car _e1705917082_))
                                      (_tl1706117087_ (##cdr _e1705917082_)))
                                  (if (gx#stx-pair? _tl1706117087_)
                                      (let ((_e1706217090_
                                             (gx#stx-e _tl1706117087_)))
                                        (let ((_hd1706317093_
                                               (##car _e1706217090_))
                                              (_tl1706417095_
                                               (##cdr _e1706217090_)))
                                          (if (gx#stx-null? _tl1706417095_)
                                              ((lambda (_L17098_ _L17099_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17099_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17098_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17018_))
                                               _hd1706317093_
                                               _hd1706017085_)
                                              (_g1702417069_ _g1702517072_))))
                                      (_g1702417069_ _g1702517072_))))
                              (_g1702417069_ _g1702517072_))))
                      (_g1702417069_ _g1702517072_))))
               (_g1702217297_
                (lambda (_g1702517118_)
                  (if (gx#stx-pair? _g1702517118_)
                      (let ((_e1704217120_ (gx#stx-e _g1702517118_)))
                        (let ((_hd1704317123_ (##car _e1704217120_))
                              (_tl1704417125_ (##cdr _e1704217120_)))
                          (if (gx#stx-pair? _tl1704417125_)
                              (let ((_e1704517128_ (gx#stx-e _tl1704417125_)))
                                (let ((_hd1704617131_ (##car _e1704517128_))
                                      (_tl1704717133_ (##cdr _e1704517128_)))
                                  (if (gx#stx-pair? _hd1704617131_)
                                      (let ((_e1704817136_
                                             (gx#stx-e _hd1704617131_)))
                                        (let ((_hd1704917139_
                                               (##car _e1704817136_))
                                              (_tl1705017141_
                                               (##cdr _e1704817136_)))
                                          (if (gx#stx-null? _tl1705017141_)
                                              (if (gx#stx-pair? _tl1704717133_)
                                                  (let ((_e1705117144_
                                                         (gx#stx-e
                                                          _tl1704717133_)))
                                                    (let ((_hd1705217147_
                                                           (##car _e1705117144_))
                                                          (_tl1705317149_
                                                           (##cdr _e1705117144_)))
                                                      (if (gx#stx-null?
                                                           _tl1705317149_)
                                                          ((lambda (_L17152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17153_)
                     (if (if (gx#identifier? _L17153_)
                             (gxc#opt-lambda-expr? _L17152_)
                             '#f)
                         (let* ((_g1716917199_
                                 (lambda (_g1717017196_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1717017196_)))
                                (_g1716817294_
                                 (lambda (_g1717017202_)
                                   (if (gx#stx-pair? _g1717017202_)
                                       (let ((_e1717417204_
                                              (gx#stx-e _g1717017202_)))
                                         (let ((_hd1717517207_
                                                (##car _e1717417204_))
                                               (_tl1717617209_
                                                (##cdr _e1717417204_)))
                                           (if (gx#stx-pair? _tl1717617209_)
                                               (let ((_e1717717212_
                                                      (gx#stx-e
                                                       _tl1717617209_)))
                                                 (let ((_hd1717817215_
                                                        (##car _e1717717212_))
                                                       (_tl1717917217_
                                                        (##cdr _e1717717212_)))
                                                   (if (gx#stx-pair?
                                                        _hd1717817215_)
                                                       (let ((_e1718017220_
                                                              (gx#stx-e
                                                               _hd1717817215_)))
                                                         (let ((_hd1718117223_
                                                                (##car _e1718017220_))
                                                               (_tl1718217225_
                                                                (##cdr _e1718017220_)))
                                                           (if (gx#stx-pair?
                                                                _hd1718117223_)
                                                               (let ((_e1718317228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1718117223_)))
                         (let ((_hd1718417231_ (##car _e1718317228_))
                               (_tl1718517233_ (##cdr _e1718317228_)))
                           (if (gx#stx-pair? _hd1718417231_)
                               (let ((_e1718617236_ (gx#stx-e _hd1718417231_)))
                                 (let ((_hd1718717239_ (##car _e1718617236_))
                                       (_tl1718817241_ (##cdr _e1718617236_)))
                                   (if (gx#stx-null? _tl1718817241_)
                                       (if (gx#stx-pair? _tl1718517233_)
                                           (let ((_e1718917244_
                                                  (gx#stx-e _tl1718517233_)))
                                             (let ((_hd1719017247_
                                                    (##car _e1718917244_))
                                                   (_tl1719117249_
                                                    (##cdr _e1718917244_)))
                                               (if (gx#stx-null?
                                                    _tl1719117249_)
                                                   (if (gx#stx-null?
                                                        _tl1718217225_)
                                                       (if (gx#stx-pair?
                                                            _tl1717917217_)
                                                           (let ((_e1719217252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1717917217_)))
                     (let ((_hd1719317255_ (##car _e1719217252_))
                           (_tl1719417257_ (##cdr _e1719217252_)))
                       (if (gx#stx-null? _tl1719417257_)
                           ((lambda (_L17260_ _L17261_ _L17262_)
                              (let* ((_lambda-id17286_
                                      (make-symbol
                                       (gx#stx-e _L17153_)
                                       '"__"
                                       (gx#stx-e _L17262_)))
                                     (_lambda-id17288_
                                      (gx#core-quote-syntax__1
                                       _lambda-id17286_
                                       (gx#stx-source _stx17018_)))
                                     (_g20532_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id17288_))
                                     (_new-case-lambda-expr17291_
                                      (gxc#apply-expression-subst
                                       _L17260_
                                       _L17262_
                                       _lambda-id17288_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L17153_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id17288_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id17288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L17261_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx17018_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L17153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr17291_ '())))
               _stx17018_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx17018_))))
                            _hd1719317255_
                            _hd1719017247_
                            _hd1718717239_)
                           (_g1716917199_ _g1717017202_))))
                   (_g1716917199_ _g1717017202_))
               (_g1716917199_ _g1717017202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1716917199_
                                                    _g1717017202_))))
                                           (_g1716917199_ _g1717017202_))
                                       (_g1716917199_ _g1717017202_))))
                               (_g1716917199_ _g1717017202_))))
                       (_g1716917199_ _g1717017202_))))
               (_g1716917199_ _g1717017202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1716917199_ _g1717017202_))))
                                       (_g1716917199_ _g1717017202_)))))
                           (_g1716817294_ _L17152_))
                         (_g1702317115_ _g1702517118_)))
                   _hd1705217147_
                   _hd1704917139_)
                  (_g1702317115_ _g1702517118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1702317115_
                                                   _g1702517118_))
                                              (_g1702317115_ _g1702517118_))))
                                      (_g1702317115_ _g1702517118_))))
                              (_g1702317115_ _g1702517118_))))
                      (_g1702317115_ _g1702517118_))))
               (_g1702117422_
                (lambda (_g1702517300_)
                  (if (gx#stx-pair? _g1702517300_)
                      (let ((_e1702817302_ (gx#stx-e _g1702517300_)))
                        (let ((_hd1702917305_ (##car _e1702817302_))
                              (_tl1703017307_ (##cdr _e1702817302_)))
                          (if (gx#stx-pair? _tl1703017307_)
                              (let ((_e1703117310_ (gx#stx-e _tl1703017307_)))
                                (let ((_hd1703217313_ (##car _e1703117310_))
                                      (_tl1703317315_ (##cdr _e1703117310_)))
                                  (if (gx#stx-pair? _hd1703217313_)
                                      (let ((_e1703417318_
                                             (gx#stx-e _hd1703217313_)))
                                        (let ((_hd1703517321_
                                               (##car _e1703417318_))
                                              (_tl1703617323_
                                               (##cdr _e1703417318_)))
                                          (if (gx#stx-null? _tl1703617323_)
                                              (if (gx#stx-pair? _tl1703317315_)
                                                  (let ((_e1703717326_
                                                         (gx#stx-e
                                                          _tl1703317315_)))
                                                    (let ((_hd1703817329_
                                                           (##car _e1703717326_))
                                                          (_tl1703917331_
                                                           (##cdr _e1703717326_)))
                                                      (if (gx#stx-null?
                                                           _tl1703917331_)
                                                          ((lambda (_L17334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17335_)
                     (if (if (gx#identifier? _L17335_)
                             (gxc#case-lambda-expr? _L17334_)
                             '#f)
                         (let* ((_g1735217366_
                                 (lambda (_g1735317363_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1735317363_)))
                                (_g1735117397_
                                 (lambda (_g1735317369_)
                                   (if (gx#stx-pair? _g1735317369_)
                                       (let ((_e1735917371_
                                              (gx#stx-e _g1735317369_)))
                                         (let ((_hd1736017374_
                                                (##car _e1735917371_))
                                               (_tl1736117376_
                                                (##cdr _e1735917371_)))
                                           ((lambda (_L17379_)
                                              (let ((_g20533_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx17018_
                                                      _L17335_
                                                      _L17379_)))
                                                (begin
                                                  (let ((_g20534_
                                                         (values-count
                                                          _g20533_)))
                                                    (if (not (fx= _g20534_ 3))
                                                        (error "Context expects 3 values"
                                                               _g20534_)))
                                                  (let ((_ids17389_
                                                         (values-ref
                                                          _g20533_
                                                          0))
                                                        (_impls17390_
                                                         (values-ref
                                                          _g20533_
                                                          1))
                                                        (_clauses17391_
                                                         (values-ref
                                                          _g20533_
                                                          2)))
                                                    (let* ((_g20535_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids17389_))
                                                           (_defs17394_
                                                            (map _case-lambda-clause-def17020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids17389_
                         _impls17390_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L17335_)
                 '" => "
                 (map gxc#identifier-symbol _ids17389_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L17335_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses17391_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx17018_)
                                     '())
                               _defs17394_))
                 _stx17018_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl1736117376_)))
                                       (_g1735217366_ _g1735317369_))))
                                (_g1735017419_
                                 (lambda (_g1735317400_)
                                   (if (gx#stx-pair? _g1735317400_)
                                       (let ((_e1735517402_
                                              (gx#stx-e _g1735317400_)))
                                         (let ((_hd1735617405_
                                                (##car _e1735517402_))
                                               (_tl1735717407_
                                                (##cdr _e1735517402_)))
                                           ((lambda (_L17410_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L17410_)
                                                  _stx17018_
                                                  (_g1735117397_
                                                   _g1735317400_)))
                                            _tl1735717407_)))
                                       (_g1735117397_ _g1735317400_)))))
                           (_g1735017419_ _L17334_))
                         (_g1702217297_ _g1702517300_)))
                   _hd1703817329_
                   _hd1703517321_)
                  (_g1702217297_ _g1702517300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1702217297_
                                                   _g1702517300_))
                                              (_g1702217297_ _g1702517300_))))
                                      (_g1702217297_ _g1702517300_))))
                              (_g1702217297_ _g1702517300_))))
                      (_g1702217297_ _g1702517300_)))))
          (_g1702117422_ _stx17018_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx16441_)
      (letrec* ((_bind-e__opt-lambda17000__2048220483_
                 (lambda (_id17002_ _expr17003_ _compile?17004_)
                   (cons (cons _id17002_ '())
                         (cons (if _compile?17004_
                                   (gxc#compile-e _expr17003_)
                                   _expr17003_)
                               '()))))
                (_bind-e__0__2048420485_
                 (lambda (_id17009_ _expr17010_)
                   (let ((_compile?17012_ '#t))
                     (_bind-e__opt-lambda17000__2048220483_
                      _id17009_
                      _expr17010_
                      _compile?17012_))))
                (_bind-e16443_
                 (lambda _g20537_
                   (let ((_g20536_ (length _g20537_)))
                     (cond ((fx= _g20536_ 2)
                            (apply _bind-e__0__2048420485_ _g20537_))
                           ((fx= _g20536_ 3)
                            (apply _bind-e__opt-lambda17000__2048220483_
                                   _g20537_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20537_))))))
                (_compile-bindings16444_
                 (lambda (_rest16586_)
                   (let _lp16588_ ((_rest16590_ _rest16586_)
                                   (_lift116591_ '())
                                   (_lift216592_ '())
                                   (_bind16593_ '()))
                     (let* ((_rest1659416602_ _rest16590_)
                            (_E1659716606_
                             (lambda ()
                               (error '"No clause matching" _rest1659416602_)))
                            (_else1659616610_
                             (lambda ()
                               (values (reverse _lift116591_)
                                       (reverse _lift216592_)
                                       (reverse _bind16593_))))
                            (_K1659816989_
                             (lambda (_rest16613_ _hd16614_)
                               (let* ((_g1661816654_
                                       (lambda (_g1661916651_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1661916651_)))
                                      (_g1661716695_
                                       (lambda (_g1661916657_)
                                         (if (gx#stx-pair? _g1661916657_)
                                             (let ((_e1664416659_
                                                    (gx#stx-e _g1661916657_)))
                                               (let ((_hd1664516662_
                                                      (##car _e1664416659_))
                                                     (_tl1664616664_
                                                      (##cdr _e1664416659_)))
                                                 (if (gx#stx-pair?
                                                      _tl1664616664_)
                                                     (let ((_e1664716667_
                                                            (gx#stx-e
                                                             _tl1664616664_)))
                                                       (let ((_hd1664816670_
                                                              (##car _e1664716667_))
                                                             (_tl1664916672_
                                                              (##cdr _e1664716667_)))
                                                         (if (gx#stx-null?
                                                              _tl1664916672_)
                                                             ((lambda (_L16675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16676_)
                        (_lp16588_
                         _rest16613_
                         _lift116591_
                         _lift216592_
                         (cons (cons _L16676_
                                     (cons (gxc#compile-e _L16675_) '()))
                               _bind16593_)))
                      _hd1664816670_
                      _hd1664516662_)
                     (_g1661816654_ _g1661916657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1661816654_
                                                      _g1661916657_))))
                                             (_g1661816654_ _g1661916657_))))
                                      (_g1661616867_
                                       (lambda (_g1661916698_)
                                         (if (gx#stx-pair? _g1661916698_)
                                             (let ((_e1663316700_
                                                    (gx#stx-e _g1661916698_)))
                                               (let ((_hd1663416703_
                                                      (##car _e1663316700_))
                                                     (_tl1663516705_
                                                      (##cdr _e1663316700_)))
                                                 (if (gx#stx-pair?
                                                      _hd1663416703_)
                                                     (let ((_e1663616708_
                                                            (gx#stx-e
                                                             _hd1663416703_)))
                                                       (let ((_hd1663716711_
                                                              (##car _e1663616708_))
                                                             (_tl1663816713_
                                                              (##cdr _e1663616708_)))
                                                         (if (gx#stx-null?
                                                              _tl1663816713_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1663516705_)
                         (let ((_e1663916716_ (gx#stx-e _tl1663516705_)))
                           (let ((_hd1664016719_ (##car _e1663916716_))
                                 (_tl1664116721_ (##cdr _e1663916716_)))
                             (if (gx#stx-null? _tl1664116721_)
                                 ((lambda (_L16724_ _L16725_)
                                    (if (if (gx#identifier? _L16725_)
                                            (gxc#opt-lambda-expr? _L16724_)
                                            '#f)
                                        (let* ((_g1673916769_
                                                (lambda (_g1674016766_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1674016766_)))
                                               (_g1673816864_
                                                (lambda (_g1674016772_)
                                                  (if (gx#stx-pair?
                                                       _g1674016772_)
                                                      (let ((_e1674416774_
                                                             (gx#stx-e
                                                              _g1674016772_)))
                                                        (let ((_hd1674516777_
                                                               (##car _e1674416774_))
                                                              (_tl1674616779_
                                                               (##cdr _e1674416774_)))
                                                          (if (gx#stx-pair?
                                                               _tl1674616779_)
                                                              (let ((_e1674716782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1674616779_)))
                        (let ((_hd1674816785_ (##car _e1674716782_))
                              (_tl1674916787_ (##cdr _e1674716782_)))
                          (if (gx#stx-pair? _hd1674816785_)
                              (let ((_e1675016790_ (gx#stx-e _hd1674816785_)))
                                (let ((_hd1675116793_ (##car _e1675016790_))
                                      (_tl1675216795_ (##cdr _e1675016790_)))
                                  (if (gx#stx-pair? _hd1675116793_)
                                      (let ((_e1675316798_
                                             (gx#stx-e _hd1675116793_)))
                                        (let ((_hd1675416801_
                                               (##car _e1675316798_))
                                              (_tl1675516803_
                                               (##cdr _e1675316798_)))
                                          (if (gx#stx-pair? _hd1675416801_)
                                              (let ((_e1675616806_
                                                     (gx#stx-e
                                                      _hd1675416801_)))
                                                (let ((_hd1675716809_
                                                       (##car _e1675616806_))
                                                      (_tl1675816811_
                                                       (##cdr _e1675616806_)))
                                                  (if (gx#stx-null?
                                                       _tl1675816811_)
                                                      (if (gx#stx-pair?
                                                           _tl1675516803_)
                                                          (let ((_e1675916814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1675516803_)))
                    (let ((_hd1676016817_ (##car _e1675916814_))
                          (_tl1676116819_ (##cdr _e1675916814_)))
                      (if (gx#stx-null? _tl1676116819_)
                          (if (gx#stx-null? _tl1675216795_)
                              (if (gx#stx-pair? _tl1674916787_)
                                  (let ((_e1676216822_
                                         (gx#stx-e _tl1674916787_)))
                                    (let ((_hd1676316825_
                                           (##car _e1676216822_))
                                          (_tl1676416827_
                                           (##cdr _e1676216822_)))
                                      (if (gx#stx-null? _tl1676416827_)
                                          ((lambda (_L16830_ _L16831_ _L16832_)
                                             (let* ((_lambda-id16856_
                                                     (make-symbol
                                                      (gx#stx-e _L16725_)
                                                      '"__"
                                                      (gx#stx-e _L16832_)
                                                      (gensym '__)))
                                                    (_lambda-id16858_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16856_
                                                      (gx#stx-source
                                                       _stx16441_)))
                                                    (_g20538_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16858_))
                                                    (_new-case-lambda-expr16861_
                                                     (gxc#apply-expression-subst
                                                      _L16830_
                                                      _L16832_
                                                      _lambda-id16858_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16725_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16858_))
                                                 (_lp16588_
                                                  (cons (_bind-e__opt-lambda17000__2048220483_
                                                         _L16725_
                                                         _new-case-lambda-expr16861_
                                                         '#f)
                                                        _rest16613_)
                                                  (cons (_bind-e__0__2048420485_
                                                         _lambda-id16858_
                                                         _L16831_)
                                                        _lift116591_)
                                                  _lift216592_
                                                  _bind16593_))))
                                           _hd1676316825_
                                           _hd1676016817_
                                           _hd1675716809_)
                                          (_g1673916769_ _g1674016772_))))
                                  (_g1673916769_ _g1674016772_))
                              (_g1673916769_ _g1674016772_))
                          (_g1673916769_ _g1674016772_))))
                  (_g1673916769_ _g1674016772_))
              (_g1673916769_ _g1674016772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1673916769_ _g1674016772_))))
                                      (_g1673916769_ _g1674016772_))))
                              (_g1673916769_ _g1674016772_))))
                      (_g1673916769_ _g1674016772_))))
              (_g1673916769_ _g1674016772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1673816864_ _L16724_))
                                        (_g1661716695_ _g1661916698_)))
                                  _hd1664016719_
                                  _hd1663716711_)
                                 (_g1661716695_ _g1661916698_))))
                         (_g1661716695_ _g1661916698_))
                     (_g1661716695_ _g1661916698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1661716695_
                                                      _g1661916698_))))
                                             (_g1661716695_ _g1661916698_))))
                                      (_g1661516986_
                                       (lambda (_g1661916870_)
                                         (if (gx#stx-pair? _g1661916870_)
                                             (let ((_e1662216872_
                                                    (gx#stx-e _g1661916870_)))
                                               (let ((_hd1662316875_
                                                      (##car _e1662216872_))
                                                     (_tl1662416877_
                                                      (##cdr _e1662216872_)))
                                                 (if (gx#stx-pair?
                                                      _hd1662316875_)
                                                     (let ((_e1662516880_
                                                            (gx#stx-e
                                                             _hd1662316875_)))
                                                       (let ((_hd1662616883_
                                                              (##car _e1662516880_))
                                                             (_tl1662716885_
                                                              (##cdr _e1662516880_)))
                                                         (if (gx#stx-null?
                                                              _tl1662716885_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1662416877_)
                         (let ((_e1662816888_ (gx#stx-e _tl1662416877_)))
                           (let ((_hd1662916891_ (##car _e1662816888_))
                                 (_tl1663016893_ (##cdr _e1662816888_)))
                             (if (gx#stx-null? _tl1663016893_)
                                 ((lambda (_L16896_ _L16897_)
                                    (if (if (gx#identifier? _L16897_)
                                            (gxc#case-lambda-expr? _L16896_)
                                            '#f)
                                        (let* ((_g1691216926_
                                                (lambda (_g1691316923_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1691316923_)))
                                               (_g1691116961_
                                                (lambda (_g1691316929_)
                                                  (if (gx#stx-pair?
                                                       _g1691316929_)
                                                      (let ((_e1691916931_
                                                             (gx#stx-e
                                                              _g1691316929_)))
                                                        (let ((_hd1692016934_
                                                               (##car _e1691916931_))
                                                              (_tl1692116936_
                                                               (##cdr _e1691916931_)))
                                                          ((lambda (_L16939_)
                                                             (let ((_g20539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17427
                             _stx16441_
                             _L16897_
                             _L16939_
                             '#t)))
                       (begin
                         (let ((_g20540_ (values-count _g20539_)))
                           (if (not (fx= _g20540_ 3))
                               (error "Context expects 3 values" _g20540_)))
                         (let ((_ids16949_ (values-ref _g20539_ 0))
                               (_impls16950_ (values-ref _g20539_ 1))
                               (_clauses16951_ (values-ref _g20539_ 2)))
                           (let* ((_g20541_
                                   (for-each gx#core-bind-runtime! _ids16949_))
                                  (_xbind16954_
                                   (map _bind-e16443_ _ids16949_ _impls16950_))
                                  (_expr*16956_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16951_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16958_
                                   (_bind-e__opt-lambda17000__2048220483_
                                    _L16897_
                                    _expr*16956_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L16897_)
                                '" => "
                                (map gxc#identifier-symbol _ids16949_))
                               (_lp16588_
                                _rest16613_
                                _lift116591_
                                (foldl1 cons _lift216592_ _xbind16954_)
                                (cons _bind*16958_ _bind16593_))))))))
                   _tl1692116936_)))
              (_g1691216926_ _g1691316929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1691016983_
                                                (lambda (_g1691316964_)
                                                  (if (gx#stx-pair?
                                                       _g1691316964_)
                                                      (let ((_e1691516966_
                                                             (gx#stx-e
                                                              _g1691316964_)))
                                                        (let ((_hd1691616969_
                                                               (##car _e1691516966_))
                                                              (_tl1691716971_
                                                               (##cdr _e1691516966_)))
                                                          ((lambda (_L16974_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16974_)
                         (_lp16588_
                          _rest16613_
                          _lift116591_
                          _lift216592_
                          (cons (_bind-e__opt-lambda17000__2048220483_
                                 _L16897_
                                 _L16896_
                                 '#f)
                                _bind16593_))
                         (_g1691116961_ _g1691316964_)))
                   _tl1691716971_)))
              (_g1691116961_ _g1691316964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1691016983_ _L16896_))
                                        (_g1661616867_ _g1661916870_)))
                                  _hd1662916891_
                                  _hd1662616883_)
                                 (_g1661616867_ _g1661916870_))))
                         (_g1661616867_ _g1661916870_))
                     (_g1661616867_ _g1661916870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1661616867_
                                                      _g1661916870_))))
                                             (_g1661616867_ _g1661916870_)))))
                                 (_g1661516986_ _hd16614_)))))
                       (if (##pair? _rest1659416602_)
                           (let ((_hd1659916992_ (##car _rest1659416602_))
                                 (_tl1660016994_ (##cdr _rest1659416602_)))
                             (let* ((_hd16997_ _hd1659916992_)
                                    (_rest16999_ _tl1660016994_))
                               (_K1659816989_ _rest16999_ _hd16997_)))
                           (_else1659616610_)))))))
        (let* ((_g1644716473_
                (lambda (_g1644816470_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1644816470_)))
               (_g1644616480_
                (lambda (_g1644816476_)
                  ((lambda () (gxc#xform-let-values% _stx16441_)))))
               (_g1644516583_
                (lambda (_g1644816483_)
                  (if (gx#stx-pair? _g1644816483_)
                      (let ((_e1645116485_ (gx#stx-e _g1644816483_)))
                        (let ((_hd1645216488_ (##car _e1645116485_))
                              (_tl1645316490_ (##cdr _e1645116485_)))
                          (if (gx#stx-pair? _tl1645316490_)
                              (let ((_e1645416493_ (gx#stx-e _tl1645316490_)))
                                (let ((_hd1645516496_ (##car _e1645416493_))
                                      (_tl1645616498_ (##cdr _e1645416493_)))
                                  (if (gx#stx-pair/null? _hd1645516496_)
                                      (if (fx>= (gx#stx-length _hd1645516496_)
                                                '0)
                                          (let ((_g20542_
                                                 (gx#syntax-split-splice
                                                  _hd1645516496_
                                                  '0)))
                                            (begin
                                              (let ((_g20543_
                                                     (values-count _g20542_)))
                                                (if (not (fx= _g20543_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20543_)))
                                              (let ((_target1645716501_
                                                     (values-ref _g20542_ 0))
                                                    (_tl1645916503_
                                                     (values-ref _g20542_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1645916503_)
                                                    (letrec ((_loop1646016506_
                                                              (lambda (_hd1645816509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1646416511_)
                        (if (gx#stx-pair? _hd1645816509_)
                            (let ((_e1646116514_ (gx#stx-e _hd1645816509_)))
                              (let ((_lp-hd1646216517_ (##car _e1646116514_))
                                    (_lp-tl1646316519_ (##cdr _e1646116514_)))
                                (_loop1646016506_
                                 _lp-tl1646316519_
                                 (cons _lp-hd1646216517_ _bind1646416511_))))
                            (let ((_bind1646516522_
                                   (reverse _bind1646416511_)))
                              (if (gx#stx-pair? _tl1645616498_)
                                  (let ((_e1646616525_
                                         (gx#stx-e _tl1645616498_)))
                                    (let ((_hd1646716528_
                                           (##car _e1646616525_))
                                          (_tl1646816530_
                                           (##cdr _e1646616525_)))
                                      (if (gx#stx-null? _tl1646816530_)
                                          ((lambda (_L16533_ _L16534_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1655416557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1655516559_)
                             (cons _g1655416557_ _g1655516559_))
                           '()
                           _L16534_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g20544_
                                                           (_compile-bindings16444_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1656216565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1656316567_)
                                (cons _g1656216565_ _g1656316567_))
                              '()
                              _L16534_)))))
              (begin
                (let ((_g20545_ (values-count _g20544_)))
                  (if (not (fx= _g20545_ 3))
                      (error "Context expects 3 values" _g20545_)))
                (let ((_lift116570_ (values-ref _g20544_ 0))
                      (_lift216571_ (values-ref _g20544_ 1))
                      (_hd16572_ (values-ref _g20544_ 2)))
                  (let* ((_body16574_ (gxc#compile-e _L16533_))
                         (_expr16576_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd16572_ (cons _body16574_ '())))
                           _stx16441_))
                         (_expr16578_
                          (if (null? _lift216571_)
                              _expr16576_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift216571_
                                           (cons _expr16576_ '())))
                               _stx16441_)))
                         (_expr16580_
                          (if (null? _lift116570_)
                              _expr16578_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift116570_
                                           (cons _expr16578_ '())))
                               _stx16441_))))
                    _expr16580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20492
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20492)
                                                      __obj20492)))
                                                 (_g1644616480_
                                                  _g1644816483_)))
                                           _hd1646716528_
                                           _bind1646516522_)
                                          (_g1644616480_ _g1644816483_))))
                                  (_g1644616480_ _g1644816483_)))))))
              (_loop1646016506_ _target1645716501_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1644616480_
                                                     _g1644816483_)))))
                                          (_g1644616480_ _g1644816483_))
                                      (_g1644616480_ _g1644816483_))))
                              (_g1644616480_ _g1644816483_))))
                      (_g1644616480_ _g1644816483_)))))
          (_g1644516583_ _stx16441_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15873_)
      (letrec* ((_bind-e__opt-lambda16423__2048720488_
                 (lambda (_id16425_ _expr16426_ _compile?16427_)
                   (cons (cons _id16425_ '())
                         (cons (if _compile?16427_
                                   (gxc#compile-e _expr16426_)
                                   _expr16426_)
                               '()))))
                (_bind-e__0__2048920490_
                 (lambda (_id16432_ _expr16433_)
                   (let ((_compile?16435_ '#t))
                     (_bind-e__opt-lambda16423__2048720488_
                      _id16432_
                      _expr16433_
                      _compile?16435_))))
                (_bind-e15875_
                 (lambda _g20547_
                   (let ((_g20546_ (length _g20547_)))
                     (cond ((fx= _g20546_ 2)
                            (apply _bind-e__0__2048920490_ _g20547_))
                           ((fx= _g20546_ 3)
                            (apply _bind-e__opt-lambda16423__2048720488_
                                   _g20547_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20547_))))))
                (_compile-bindings15876_
                 (lambda (_rest16011_)
                   (let _lp16013_ ((_rest16015_ _rest16011_) (_bind16016_ '()))
                     (let* ((_rest1601716025_ _rest16015_)
                            (_E1602016029_
                             (lambda ()
                               (error '"No clause matching" _rest1601716025_)))
                            (_else1601916033_
                             (lambda () (reverse _bind16016_)))
                            (_K1602116412_
                             (lambda (_rest16036_ _hd16037_)
                               (let* ((_g1604116077_
                                       (lambda (_g1604216074_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1604216074_)))
                                      (_g1604016118_
                                       (lambda (_g1604216080_)
                                         (if (gx#stx-pair? _g1604216080_)
                                             (let ((_e1606716082_
                                                    (gx#stx-e _g1604216080_)))
                                               (let ((_hd1606816085_
                                                      (##car _e1606716082_))
                                                     (_tl1606916087_
                                                      (##cdr _e1606716082_)))
                                                 (if (gx#stx-pair?
                                                      _tl1606916087_)
                                                     (let ((_e1607016090_
                                                            (gx#stx-e
                                                             _tl1606916087_)))
                                                       (let ((_hd1607116093_
                                                              (##car _e1607016090_))
                                                             (_tl1607216095_
                                                              (##cdr _e1607016090_)))
                                                         (if (gx#stx-null?
                                                              _tl1607216095_)
                                                             ((lambda (_L16098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16099_)
                        (_lp16013_
                         _rest16036_
                         (cons (cons _L16099_
                                     (cons (gxc#compile-e _L16098_) '()))
                               _bind16016_)))
                      _hd1607116093_
                      _hd1606816085_)
                     (_g1604116077_ _g1604216080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1604116077_
                                                      _g1604216080_))))
                                             (_g1604116077_ _g1604216080_))))
                                      (_g1603916290_
                                       (lambda (_g1604216121_)
                                         (if (gx#stx-pair? _g1604216121_)
                                             (let ((_e1605616123_
                                                    (gx#stx-e _g1604216121_)))
                                               (let ((_hd1605716126_
                                                      (##car _e1605616123_))
                                                     (_tl1605816128_
                                                      (##cdr _e1605616123_)))
                                                 (if (gx#stx-pair?
                                                      _hd1605716126_)
                                                     (let ((_e1605916131_
                                                            (gx#stx-e
                                                             _hd1605716126_)))
                                                       (let ((_hd1606016134_
                                                              (##car _e1605916131_))
                                                             (_tl1606116136_
                                                              (##cdr _e1605916131_)))
                                                         (if (gx#stx-null?
                                                              _tl1606116136_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1605816128_)
                         (let ((_e1606216139_ (gx#stx-e _tl1605816128_)))
                           (let ((_hd1606316142_ (##car _e1606216139_))
                                 (_tl1606416144_ (##cdr _e1606216139_)))
                             (if (gx#stx-null? _tl1606416144_)
                                 ((lambda (_L16147_ _L16148_)
                                    (if (if (gx#identifier? _L16148_)
                                            (gxc#opt-lambda-expr? _L16147_)
                                            '#f)
                                        (let* ((_g1616216192_
                                                (lambda (_g1616316189_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1616316189_)))
                                               (_g1616116287_
                                                (lambda (_g1616316195_)
                                                  (if (gx#stx-pair?
                                                       _g1616316195_)
                                                      (let ((_e1616716197_
                                                             (gx#stx-e
                                                              _g1616316195_)))
                                                        (let ((_hd1616816200_
                                                               (##car _e1616716197_))
                                                              (_tl1616916202_
                                                               (##cdr _e1616716197_)))
                                                          (if (gx#stx-pair?
                                                               _tl1616916202_)
                                                              (let ((_e1617016205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1616916202_)))
                        (let ((_hd1617116208_ (##car _e1617016205_))
                              (_tl1617216210_ (##cdr _e1617016205_)))
                          (if (gx#stx-pair? _hd1617116208_)
                              (let ((_e1617316213_ (gx#stx-e _hd1617116208_)))
                                (let ((_hd1617416216_ (##car _e1617316213_))
                                      (_tl1617516218_ (##cdr _e1617316213_)))
                                  (if (gx#stx-pair? _hd1617416216_)
                                      (let ((_e1617616221_
                                             (gx#stx-e _hd1617416216_)))
                                        (let ((_hd1617716224_
                                               (##car _e1617616221_))
                                              (_tl1617816226_
                                               (##cdr _e1617616221_)))
                                          (if (gx#stx-pair? _hd1617716224_)
                                              (let ((_e1617916229_
                                                     (gx#stx-e
                                                      _hd1617716224_)))
                                                (let ((_hd1618016232_
                                                       (##car _e1617916229_))
                                                      (_tl1618116234_
                                                       (##cdr _e1617916229_)))
                                                  (if (gx#stx-null?
                                                       _tl1618116234_)
                                                      (if (gx#stx-pair?
                                                           _tl1617816226_)
                                                          (let ((_e1618216237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1617816226_)))
                    (let ((_hd1618316240_ (##car _e1618216237_))
                          (_tl1618416242_ (##cdr _e1618216237_)))
                      (if (gx#stx-null? _tl1618416242_)
                          (if (gx#stx-null? _tl1617516218_)
                              (if (gx#stx-pair? _tl1617216210_)
                                  (let ((_e1618516245_
                                         (gx#stx-e _tl1617216210_)))
                                    (let ((_hd1618616248_
                                           (##car _e1618516245_))
                                          (_tl1618716250_
                                           (##cdr _e1618516245_)))
                                      (if (gx#stx-null? _tl1618716250_)
                                          ((lambda (_L16253_ _L16254_ _L16255_)
                                             (let* ((_lambda-id16279_
                                                     (make-symbol
                                                      (gx#stx-e _L16148_)
                                                      '"__"
                                                      (gx#stx-e _L16255_)
                                                      (gensym '__)))
                                                    (_lambda-id16281_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16279_
                                                      (gx#stx-source
                                                       _stx15873_)))
                                                    (_g20548_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16281_))
                                                    (_new-case-lambda-expr16284_
                                                     (gxc#apply-expression-subst
                                                      _L16253_
                                                      _L16255_
                                                      _lambda-id16281_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16148_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16281_))
                                                 (_lp16013_
                                                  (cons (_bind-e__opt-lambda16423__2048720488_
                                                         _L16148_
                                                         _new-case-lambda-expr16284_
                                                         '#f)
                                                        _rest16036_)
                                                  (cons (_bind-e__0__2048920490_
                                                         _lambda-id16281_
                                                         _L16254_)
                                                        _bind16016_)))))
                                           _hd1618616248_
                                           _hd1618316240_
                                           _hd1618016232_)
                                          (_g1616216192_ _g1616316195_))))
                                  (_g1616216192_ _g1616316195_))
                              (_g1616216192_ _g1616316195_))
                          (_g1616216192_ _g1616316195_))))
                  (_g1616216192_ _g1616316195_))
              (_g1616216192_ _g1616316195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1616216192_ _g1616316195_))))
                                      (_g1616216192_ _g1616316195_))))
                              (_g1616216192_ _g1616316195_))))
                      (_g1616216192_ _g1616316195_))))
              (_g1616216192_ _g1616316195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1616116287_ _L16147_))
                                        (_g1604016118_ _g1604216121_)))
                                  _hd1606316142_
                                  _hd1606016134_)
                                 (_g1604016118_ _g1604216121_))))
                         (_g1604016118_ _g1604216121_))
                     (_g1604016118_ _g1604216121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1604016118_
                                                      _g1604216121_))))
                                             (_g1604016118_ _g1604216121_))))
                                      (_g1603816409_
                                       (lambda (_g1604216293_)
                                         (if (gx#stx-pair? _g1604216293_)
                                             (let ((_e1604516295_
                                                    (gx#stx-e _g1604216293_)))
                                               (let ((_hd1604616298_
                                                      (##car _e1604516295_))
                                                     (_tl1604716300_
                                                      (##cdr _e1604516295_)))
                                                 (if (gx#stx-pair?
                                                      _hd1604616298_)
                                                     (let ((_e1604816303_
                                                            (gx#stx-e
                                                             _hd1604616298_)))
                                                       (let ((_hd1604916306_
                                                              (##car _e1604816303_))
                                                             (_tl1605016308_
                                                              (##cdr _e1604816303_)))
                                                         (if (gx#stx-null?
                                                              _tl1605016308_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1604716300_)
                         (let ((_e1605116311_ (gx#stx-e _tl1604716300_)))
                           (let ((_hd1605216314_ (##car _e1605116311_))
                                 (_tl1605316316_ (##cdr _e1605116311_)))
                             (if (gx#stx-null? _tl1605316316_)
                                 ((lambda (_L16319_ _L16320_)
                                    (if (if (gx#identifier? _L16320_)
                                            (gxc#case-lambda-expr? _L16319_)
                                            '#f)
                                        (let* ((_g1633516349_
                                                (lambda (_g1633616346_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1633616346_)))
                                               (_g1633416384_
                                                (lambda (_g1633616352_)
                                                  (if (gx#stx-pair?
                                                       _g1633616352_)
                                                      (let ((_e1634216354_
                                                             (gx#stx-e
                                                              _g1633616352_)))
                                                        (let ((_hd1634316357_
                                                               (##car _e1634216354_))
                                                              (_tl1634416359_
                                                               (##cdr _e1634216354_)))
                                                          ((lambda (_L16362_)
                                                             (let ((_g20549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17427
                             _stx15873_
                             _L16320_
                             _L16362_
                             '#t)))
                       (begin
                         (let ((_g20550_ (values-count _g20549_)))
                           (if (not (fx= _g20550_ 3))
                               (error "Context expects 3 values" _g20550_)))
                         (let ((_ids16372_ (values-ref _g20549_ 0))
                               (_impls16373_ (values-ref _g20549_ 1))
                               (_clauses16374_ (values-ref _g20549_ 2)))
                           (let* ((_g20551_
                                   (for-each gx#core-bind-runtime! _ids16372_))
                                  (_xbind16377_
                                   (map _bind-e15875_ _ids16372_ _impls16373_))
                                  (_expr*16379_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16374_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16381_
                                   (_bind-e__opt-lambda16423__2048720488_
                                    _L16320_
                                    _expr*16379_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L16320_)
                                '" => "
                                (map gxc#identifier-symbol _ids16372_))
                               (_lp16013_
                                _rest16036_
                                (cons _bind*16381_
                                      (foldl1 cons
                                              _bind16016_
                                              _xbind16377_)))))))))
                   _tl1634416359_)))
              (_g1633516349_ _g1633616352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1633316406_
                                                (lambda (_g1633616387_)
                                                  (if (gx#stx-pair?
                                                       _g1633616387_)
                                                      (let ((_e1633816389_
                                                             (gx#stx-e
                                                              _g1633616387_)))
                                                        (let ((_hd1633916392_
                                                               (##car _e1633816389_))
                                                              (_tl1634016394_
                                                               (##cdr _e1633816389_)))
                                                          ((lambda (_L16397_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16397_)
                         (_lp16013_
                          _rest16036_
                          (cons (_bind-e__opt-lambda16423__2048720488_
                                 _L16320_
                                 _L16319_
                                 '#f)
                                _bind16016_))
                         (_g1633416384_ _g1633616387_)))
                   _tl1634016394_)))
              (_g1633416384_ _g1633616387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1633316406_ _L16319_))
                                        (_g1603916290_ _g1604216293_)))
                                  _hd1605216314_
                                  _hd1604916306_)
                                 (_g1603916290_ _g1604216293_))))
                         (_g1603916290_ _g1604216293_))
                     (_g1603916290_ _g1604216293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1603916290_
                                                      _g1604216293_))))
                                             (_g1603916290_ _g1604216293_)))))
                                 (_g1603816409_ _hd16037_)))))
                       (if (##pair? _rest1601716025_)
                           (let ((_hd1602216415_ (##car _rest1601716025_))
                                 (_tl1602316417_ (##cdr _rest1601716025_)))
                             (let* ((_hd16420_ _hd1602216415_)
                                    (_rest16422_ _tl1602316417_))
                               (_K1602116412_ _rest16422_ _hd16420_)))
                           (_else1601916033_)))))))
        (let* ((_g1587915906_
                (lambda (_g1588015903_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1588015903_)))
               (_g1587815913_
                (lambda (_g1588015909_)
                  ((lambda () (gxc#xform-let-values% _stx15873_)))))
               (_g1587716008_
                (lambda (_g1588015916_)
                  (if (gx#stx-pair? _g1588015916_)
                      (let ((_e1588415918_ (gx#stx-e _g1588015916_)))
                        (let ((_hd1588515921_ (##car _e1588415918_))
                              (_tl1588615923_ (##cdr _e1588415918_)))
                          (if (gx#stx-pair? _tl1588615923_)
                              (let ((_e1588715926_ (gx#stx-e _tl1588615923_)))
                                (let ((_hd1588815929_ (##car _e1588715926_))
                                      (_tl1588915931_ (##cdr _e1588715926_)))
                                  (if (gx#stx-pair/null? _hd1588815929_)
                                      (if (fx>= (gx#stx-length _hd1588815929_)
                                                '0)
                                          (let ((_g20552_
                                                 (gx#syntax-split-splice
                                                  _hd1588815929_
                                                  '0)))
                                            (begin
                                              (let ((_g20553_
                                                     (values-count _g20552_)))
                                                (if (not (fx= _g20553_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20553_)))
                                              (let ((_target1589015934_
                                                     (values-ref _g20552_ 0))
                                                    (_tl1589215936_
                                                     (values-ref _g20552_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1589215936_)
                                                    (letrec ((_loop1589315939_
                                                              (lambda (_hd1589115942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1589715944_)
                        (if (gx#stx-pair? _hd1589115942_)
                            (let ((_e1589415947_ (gx#stx-e _hd1589115942_)))
                              (let ((_lp-hd1589515950_ (##car _e1589415947_))
                                    (_lp-tl1589615952_ (##cdr _e1589415947_)))
                                (_loop1589315939_
                                 _lp-tl1589615952_
                                 (cons _lp-hd1589515950_ _bind1589715944_))))
                            (let ((_bind1589815955_
                                   (reverse _bind1589715944_)))
                              (if (gx#stx-pair? _tl1588915931_)
                                  (let ((_e1589915958_
                                         (gx#stx-e _tl1588915931_)))
                                    (let ((_hd1590015961_
                                           (##car _e1589915958_))
                                          (_tl1590115963_
                                           (##cdr _e1589915958_)))
                                      (if (gx#stx-null? _tl1590115963_)
                                          ((lambda (_L15966_ _L15967_ _L15968_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1598915992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1599015994_)
                             (cons _g1598915992_ _g1599015994_))
                           '()
                           _L15967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd16005_
                                                           (_compile-bindings15876_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1599716000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1599816002_)
                                (cons _g1599716000_ _g1599816002_))
                              '()
                              _L15967_))))
                  (_body16006_ (gxc#compile-e _L15966_)))
              (gxc#xform-wrap-source
               (cons _L15968_ (cons _hd16005_ (cons _body16006_ '())))
               _stx15873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20493
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20493)
                                                      __obj20493)))
                                                 (_g1587815913_
                                                  _g1588015916_)))
                                           _hd1590015961_
                                           _bind1589815955_
                                           _hd1588515921_)
                                          (_g1587815913_ _g1588015916_))))
                                  (_g1587815913_ _g1588015916_)))))))
              (_loop1589315939_ _target1589015934_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1587815913_
                                                     _g1588015916_)))))
                                          (_g1587815913_ _g1588015916_))
                                      (_g1587815913_ _g1588015916_))))
                              (_g1587815913_ _g1588015916_))))
                      (_g1587815913_ _g1588015916_)))))
          (_g1587716008_ _stx15873_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15794_)
      (let* ((_g1579715814_
              (lambda (_g1579815811_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1579815811_)))
             (_g1579615821_ (lambda (_g1579815817_) ((lambda () '#f))))
             (_g1579515870_
              (lambda (_g1579815824_)
                (if (gx#stx-pair? _g1579815824_)
                    (let ((_e1580115826_ (gx#stx-e _g1579815824_)))
                      (let ((_hd1580215829_ (##car _e1580115826_))
                            (_tl1580315831_ (##cdr _e1580115826_)))
                        (if (gx#stx-pair? _hd1580215829_)
                            (let ((_e1580415834_ (gx#stx-e _hd1580215829_)))
                              (let ((_hd1580515837_ (##car _e1580415834_))
                                    (_tl1580615839_ (##cdr _e1580415834_)))
                                (if (gx#stx-null? _tl1580615839_)
                                    (if (gx#stx-pair? _tl1580315831_)
                                        (let ((_e1580715842_
                                               (gx#stx-e _tl1580315831_)))
                                          (let ((_hd1580815845_
                                                 (##car _e1580715842_))
                                                (_tl1580915847_
                                                 (##cdr _e1580715842_)))
                                            (if (gx#stx-null? _tl1580915847_)
                                                ((lambda (_L15850_ _L15851_)
                                                   (if (gx#identifier?
                                                        _L15851_)
                                                       (let ((_$e15867_
                                                              (gxc#case-lambda-expr?
                                                               _L15850_)))
                                                         (if _$e15867_
                                                             _$e15867_
                                                             (gxc#opt-lambda-expr?
                                                              _L15850_)))
                                                       '#f))
                                                 _hd1580815845_
                                                 _hd1580515837_)
                                                (_g1579615821_
                                                 _g1579815824_))))
                                        (_g1579615821_ _g1579815824_))
                                    (_g1579615821_ _g1579815824_))))
                            (_g1579615821_ _g1579815824_))))
                    (_g1579615821_ _g1579815824_)))))
        (_g1579515870_ _bind15794_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15732_ _id15733_ _new-id15734_)
      (let* ((_g1573715750_
              (lambda (_g1573815747_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1573815747_)))
             (_g1573615757_ (lambda (_g1573815753_) ((lambda () _stx15732_))))
             (_g1573515791_
              (lambda (_g1573815760_)
                (if (gx#stx-pair? _g1573815760_)
                    (let ((_e1574015762_ (gx#stx-e _g1573815760_)))
                      (let ((_hd1574115765_ (##car _e1574015762_))
                            (_tl1574215767_ (##cdr _e1574015762_)))
                        (if (gx#stx-pair? _tl1574215767_)
                            (let ((_e1574315770_ (gx#stx-e _tl1574215767_)))
                              (let ((_hd1574415773_ (##car _e1574315770_))
                                    (_tl1574515775_ (##cdr _e1574315770_)))
                                (if (gx#stx-null? _tl1574515775_)
                                    ((lambda (_L15778_)
                                       (if (gx#free-identifier=?
                                            _L15778_
                                            _id15733_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id15734_ '()))
                                            _stx15732_)
                                           (_g1573615757_ _g1573815760_)))
                                     _hd1574415773_)
                                    (_g1573615757_ _g1573815760_))))
                            (_g1573615757_ _g1573815760_))))
                    (_g1573615757_ _g1573815760_)))))
        (_g1573515791_ _stx15732_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15588_)
      (let* ((_g1559115622_
              (lambda (_g1559215619_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1559215619_)))
             (_g1559015667_
              (lambda (_g1559215625_)
                (if (gx#stx-pair? _g1559215625_)
                    (let ((_e1560915627_ (gx#stx-e _g1559215625_)))
                      (let ((_hd1561015630_ (##car _e1560915627_))
                            (_tl1561115632_ (##cdr _e1560915627_)))
                        (if (gx#stx-pair? _tl1561115632_)
                            (let ((_e1561215635_ (gx#stx-e _tl1561115632_)))
                              (let ((_hd1561315638_ (##car _e1561215635_))
                                    (_tl1561415640_ (##cdr _e1561215635_)))
                                (if (gx#stx-pair? _tl1561415640_)
                                    (let ((_e1561515643_
                                           (gx#stx-e _tl1561415640_)))
                                      (let ((_hd1561615646_
                                             (##car _e1561515643_))
                                            (_tl1561715648_
                                             (##cdr _e1561515643_)))
                                        (if (gx#stx-null? _tl1561715648_)
                                            ((lambda (_L15651_ _L15652_)
                                               (gxc#compile-e _L15651_))
                                             _hd1561615646_
                                             _hd1561315638_)
                                            (_g1559115622_ _g1559215625_))))
                                    (_g1559115622_ _g1559215625_))))
                            (_g1559115622_ _g1559215625_))))
                    (_g1559115622_ _g1559215625_))))
             (_g1558915729_
              (lambda (_g1559215670_)
                (if (gx#stx-pair? _g1559215670_)
                    (let ((_e1559515672_ (gx#stx-e _g1559215670_)))
                      (let ((_hd1559615675_ (##car _e1559515672_))
                            (_tl1559715677_ (##cdr _e1559515672_)))
                        (if (gx#stx-pair? _tl1559715677_)
                            (let ((_e1559815680_ (gx#stx-e _tl1559715677_)))
                              (let ((_hd1559915683_ (##car _e1559815680_))
                                    (_tl1560015685_ (##cdr _e1559815680_)))
                                (if (gx#stx-pair? _hd1559915683_)
                                    (let ((_e1560115688_
                                           (gx#stx-e _hd1559915683_)))
                                      (let ((_hd1560215691_
                                             (##car _e1560115688_))
                                            (_tl1560315693_
                                             (##cdr _e1560115688_)))
                                        (if (gx#stx-null? _tl1560315693_)
                                            (if (gx#stx-pair? _tl1560015685_)
                                                (let ((_e1560415696_
                                                       (gx#stx-e
                                                        _tl1560015685_)))
                                                  (let ((_hd1560515699_
                                                         (##car _e1560415696_))
                                                        (_tl1560615701_
                                                         (##cdr _e1560415696_)))
                                                    (if (gx#stx-null?
                                                         _tl1560615701_)
                                                        ((lambda (_L15704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15705_)
                   (if (gx#identifier? _L15705_)
                       (let ((_sym15721_
                              (gxc#generate-runtime-binding-id _L15705_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym15721_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym15721_)
                               (let ((_type1572215724_
                                      (gxc#apply-basic-expression-type
                                       _L15704_)))
                                 (if _type1572215724_
                                     (let ((_type15727_ _type1572215724_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym15721_
                                        _type15727_))
                                     '#f)))
                           (gxc#compile-e _L15704_)))
                       (_g1559015667_ _g1559215670_)))
                 _hd1560515699_
                 _hd1560215691_)
                (_g1559015667_ _g1559215670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1559015667_ _g1559215670_))
                                            (_g1559015667_ _g1559215670_))))
                                    (_g1559015667_ _g1559215670_))))
                            (_g1559015667_ _g1559215670_))))
                    (_g1559015667_ _g1559215670_)))))
        (_g1558915729_ _stx15588_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx15373_)
      (letrec ((_collect-e15375_
                (lambda (_hd15532_ _expr15533_)
                  (let* ((_g1553615546_
                          (lambda (_g1553715543_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1553715543_)))
                         (_g1553515553_
                          (lambda (_g1553715549_) ((lambda () '#!void))))
                         (_g1553415585_
                          (lambda (_g1553715556_)
                            (if (gx#stx-pair? _g1553715556_)
                                (let ((_e1553915558_ (gx#stx-e _g1553715556_)))
                                  (let ((_hd1554015561_ (##car _e1553915558_))
                                        (_tl1554115563_ (##cdr _e1553915558_)))
                                    (if (gx#stx-null? _tl1554115563_)
                                        ((lambda (_L15566_)
                                           (if (gx#identifier? _L15566_)
                                               (let ((_sym15577_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15566_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15577_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15577_)
                                                     (let ((_type1557815580_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15533_)))
                                                       (if _type1557815580_
                                                           (let ((_type15583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1557815580_))
                     (gxc#optimizer-declare-type!__opt-lambda20266
                      _sym15577_
                      _type15583_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1553515553_ _g1553715556_)))
                                         _hd1554015561_)
                                        (_g1553515553_ _g1553715556_))))
                                (_g1553515553_ _g1553715556_)))))
                    (_g1553415585_ _hd15532_)))))
        (let* ((_g1537715412_
                (lambda (_g1537815409_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1537815409_)))
               (_g1537615529_
                (lambda (_g1537815415_)
                  (if (gx#stx-pair? _g1537815415_)
                      (let ((_e1538215417_ (gx#stx-e _g1537815415_)))
                        (let ((_hd1538315420_ (##car _e1538215417_))
                              (_tl1538415422_ (##cdr _e1538215417_)))
                          (if (gx#stx-pair? _tl1538415422_)
                              (let ((_e1538515425_ (gx#stx-e _tl1538415422_)))
                                (let ((_hd1538615428_ (##car _e1538515425_))
                                      (_tl1538715430_ (##cdr _e1538515425_)))
                                  (if (gx#stx-pair/null? _hd1538615428_)
                                      (if (fx>= (gx#stx-length _hd1538615428_)
                                                '0)
                                          (let ((_g20554_
                                                 (gx#syntax-split-splice
                                                  _hd1538615428_
                                                  '0)))
                                            (begin
                                              (let ((_g20555_
                                                     (values-count _g20554_)))
                                                (if (not (fx= _g20555_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20555_)))
                                              (let ((_target1538815433_
                                                     (values-ref _g20554_ 0))
                                                    (_tl1539015435_
                                                     (values-ref _g20554_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1539015435_)
                                                    (letrec ((_loop1539115438_
                                                              (lambda (_hd1538915441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1539515443_
                               _hd1539615445_)
                        (if (gx#stx-pair? _hd1538915441_)
                            (let ((_e1539215448_ (gx#stx-e _hd1538915441_)))
                              (let ((_lp-hd1539315451_ (##car _e1539215448_))
                                    (_lp-tl1539415453_ (##cdr _e1539215448_)))
                                (if (gx#stx-pair? _lp-hd1539315451_)
                                    (let ((_e1539915456_
                                           (gx#stx-e _lp-hd1539315451_)))
                                      (let ((_hd1540015459_
                                             (##car _e1539915456_))
                                            (_tl1540115461_
                                             (##cdr _e1539915456_)))
                                        (if (gx#stx-pair? _tl1540115461_)
                                            (let ((_e1540215464_
                                                   (gx#stx-e _tl1540115461_)))
                                              (let ((_hd1540315467_
                                                     (##car _e1540215464_))
                                                    (_tl1540415469_
                                                     (##cdr _e1540215464_)))
                                                (if (gx#stx-null?
                                                     _tl1540415469_)
                                                    (_loop1539115438_
                                                     _lp-tl1539415453_
                                                     (cons _hd1540315467_
                                                           _expr1539515443_)
                                                     (cons _hd1540015459_
                                                           _hd1539615445_))
                                                    (_g1537715412_
                                                     _g1537815415_))))
                                            (_g1537715412_ _g1537815415_))))
                                    (_g1537715412_ _g1537815415_))))
                            (let ((_expr1539715472_ (reverse _expr1539515443_))
                                  (_hd1539815474_ (reverse _hd1539615445_)))
                              (if (gx#stx-pair? _tl1538715430_)
                                  (let ((_e1540515477_
                                         (gx#stx-e _tl1538715430_)))
                                    (let ((_hd1540615480_
                                           (##car _e1540515477_))
                                          (_tl1540715482_
                                           (##cdr _e1540515477_)))
                                      (if (gx#stx-null? _tl1540715482_)
                                          ((lambda (_L15485_ _L15486_ _L15487_)
                                             (begin
                                               (for-each
                                                _collect-e15375_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1550715510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1550815512_)
                    (cons _g1550715510_ _g1550815512_))
                  '()
                  _L15487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1551415517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1551515519_)
                    (cons _g1551415517_ _g1551515519_))
                  '()
                  _L15486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1552115524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1552215526_)
                    (cons _g1552115524_ _g1552215526_))
                  '()
                  _L15486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L15485_)))
                                           _hd1540615480_
                                           _expr1539715472_
                                           _hd1539815474_)
                                          (_g1537715412_ _g1537815415_))))
                                  (_g1537715412_ _g1537815415_)))))))
              (_loop1539115438_ _target1538815433_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1537715412_
                                                     _g1537815415_)))))
                                          (_g1537715412_ _g1537815415_))
                                      (_g1537715412_ _g1537815415_))))
                              (_g1537715412_ _g1537815415_))))
                      (_g1537715412_ _g1537815415_)))))
          (_g1537615529_ _stx15373_)))))
  (define gxc#collect-type-call%
    (lambda (_stx14927_)
      (let* ((_g1493115033_
              (lambda (_g1493215030_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1493215030_)))
             (_g1493015040_ (lambda (_g1493215036_) ((lambda () '#!void))))
             (_g1492915190_
              (lambda (_g1493215043_)
                (if (gx#stx-pair? _g1493215043_)
                    (let ((_e1499015045_ (gx#stx-e _g1493215043_)))
                      (let ((_hd1499115048_ (##car _e1499015045_))
                            (_tl1499215050_ (##cdr _e1499015045_)))
                        (if (gx#stx-pair? _tl1499215050_)
                            (let ((_e1499315053_ (gx#stx-e _tl1499215050_)))
                              (let ((_hd1499415056_ (##car _e1499315053_))
                                    (_tl1499515058_ (##cdr _e1499315053_)))
                                (if (gx#stx-pair? _hd1499415056_)
                                    (let ((_e1499615061_
                                           (gx#stx-e _hd1499415056_)))
                                      (let ((_hd1499715064_
                                             (##car _e1499615061_))
                                            (_tl1499815066_
                                             (##cdr _e1499615061_)))
                                        (if (gx#identifier? _hd1499715064_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1499715064_)
                                                (if (gx#stx-pair?
                                                     _tl1499815066_)
                                                    (let ((_e1499915069_
                                                           (gx#stx-e
                                                            _tl1499815066_)))
                                                      (let ((_hd1500015072_
                                                             (##car _e1499915069_))
                                                            (_tl1500115074_
                                                             (##cdr _e1499915069_)))
                                                        (if (gx#stx-null?
                                                             _tl1500115074_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1499515058_)
                        (let ((_e1500215077_ (gx#stx-e _tl1499515058_)))
                          (let ((_hd1500315080_ (##car _e1500215077_))
                                (_tl1500415082_ (##cdr _e1500215077_)))
                            (if (gx#stx-pair? _hd1500315080_)
                                (let ((_e1500515085_
                                       (gx#stx-e _hd1500315080_)))
                                  (let ((_hd1500615088_ (##car _e1500515085_))
                                        (_tl1500715090_ (##cdr _e1500515085_)))
                                    (if (gx#identifier? _hd1500615088_)
                                        (if (gx#stx-eq? '%#ref _hd1500615088_)
                                            (if (gx#stx-pair? _tl1500715090_)
                                                (let ((_e1500815093_
                                                       (gx#stx-e
                                                        _tl1500715090_)))
                                                  (let ((_hd1500915096_
                                                         (##car _e1500815093_))
                                                        (_tl1501015098_
                                                         (##cdr _e1500815093_)))
                                                    (if (gx#stx-null?
                                                         _tl1501015098_)
                                                        (if (gx#stx-pair?
                                                             _tl1500415082_)
                                                            (let ((_e1501115101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1500415082_)))
                      (let ((_hd1501215104_ (##car _e1501115101_))
                            (_tl1501315106_ (##cdr _e1501115101_)))
                        (if (gx#stx-pair? _hd1501215104_)
                            (let ((_e1501415109_ (gx#stx-e _hd1501215104_)))
                              (let ((_hd1501515112_ (##car _e1501415109_))
                                    (_tl1501615114_ (##cdr _e1501415109_)))
                                (if (gx#identifier? _hd1501515112_)
                                    (if (gx#stx-eq? '%#quote _hd1501515112_)
                                        (if (gx#stx-pair? _tl1501615114_)
                                            (let ((_e1501715117_
                                                   (gx#stx-e _tl1501615114_)))
                                              (let ((_hd1501815120_
                                                     (##car _e1501715117_))
                                                    (_tl1501915122_
                                                     (##cdr _e1501715117_)))
                                                (if (gx#stx-null?
                                                     _tl1501915122_)
                                                    (if (gx#stx-pair?
                                                         _tl1501315106_)
                                                        (let ((_e1502015125_
                                                               (gx#stx-e
                                                                _tl1501315106_)))
                                                          (let ((_hd1502115128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1502015125_))
                        (_tl1502215130_ (##cdr _e1502015125_)))
                    (if (gx#stx-pair? _hd1502115128_)
                        (let ((_e1502315133_ (gx#stx-e _hd1502115128_)))
                          (let ((_hd1502415136_ (##car _e1502315133_))
                                (_tl1502515138_ (##cdr _e1502315133_)))
                            (if (gx#identifier? _hd1502415136_)
                                (if (gx#stx-eq? '%#ref _hd1502415136_)
                                    (if (gx#stx-pair? _tl1502515138_)
                                        (let ((_e1502615141_
                                               (gx#stx-e _tl1502515138_)))
                                          (let ((_hd1502715144_
                                                 (##car _e1502615141_))
                                                (_tl1502815146_
                                                 (##cdr _e1502615141_)))
                                            (if (gx#stx-null? _tl1502815146_)
                                                (if (gx#stx-null?
                                                     _tl1502215130_)
                                                    ((lambda (_L15149_
                                                              _L15150_
                                                              _L15151_
                                                              _L15152_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda20242
                    (gxc#generate-runtime-binding-id _L15151_)
                    (gx#stx-e _L15150_)
                    (gxc#generate-runtime-binding-id _L15149_)
                    '#f)
                   (_g1493015040_ _g1493215043_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1502715144_
                                                     _hd1501815120_
                                                     _hd1500915096_
                                                     _hd1500015072_)
                                                    (_g1493015040_
                                                     _g1493215043_))
                                                (_g1493015040_
                                                 _g1493215043_))))
                                        (_g1493015040_ _g1493215043_))
                                    (_g1493015040_ _g1493215043_))
                                (_g1493015040_ _g1493215043_))))
                        (_g1493015040_ _g1493215043_))))
                (_g1493015040_ _g1493215043_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493015040_
                                                     _g1493215043_))))
                                            (_g1493015040_ _g1493215043_))
                                        (_g1493015040_ _g1493215043_))
                                    (_g1493015040_ _g1493215043_))))
                            (_g1493015040_ _g1493215043_))))
                    (_g1493015040_ _g1493215043_))
                (_g1493015040_ _g1493215043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1493015040_ _g1493215043_))
                                            (_g1493015040_ _g1493215043_))
                                        (_g1493015040_ _g1493215043_))))
                                (_g1493015040_ _g1493215043_))))
                        (_g1493015040_ _g1493215043_))
                    (_g1493015040_ _g1493215043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1493015040_
                                                     _g1493215043_))
                                                (_g1493015040_ _g1493215043_))
                                            (_g1493015040_ _g1493215043_))))
                                    (_g1493015040_ _g1493215043_))))
                            (_g1493015040_ _g1493215043_))))
                    (_g1493015040_ _g1493215043_))))
             (_g1492815370_
              (lambda (_g1493215193_)
                (if (gx#stx-pair? _g1493215193_)
                    (let ((_e1493815195_ (gx#stx-e _g1493215193_)))
                      (let ((_hd1493915198_ (##car _e1493815195_))
                            (_tl1494015200_ (##cdr _e1493815195_)))
                        (if (gx#stx-pair? _tl1494015200_)
                            (let ((_e1494115203_ (gx#stx-e _tl1494015200_)))
                              (let ((_hd1494215206_ (##car _e1494115203_))
                                    (_tl1494315208_ (##cdr _e1494115203_)))
                                (if (gx#stx-pair? _hd1494215206_)
                                    (let ((_e1494415211_
                                           (gx#stx-e _hd1494215206_)))
                                      (let ((_hd1494515214_
                                             (##car _e1494415211_))
                                            (_tl1494615216_
                                             (##cdr _e1494415211_)))
                                        (if (gx#identifier? _hd1494515214_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1494515214_)
                                                (if (gx#stx-pair?
                                                     _tl1494615216_)
                                                    (let ((_e1494715219_
                                                           (gx#stx-e
                                                            _tl1494615216_)))
                                                      (let ((_hd1494815222_
                                                             (##car _e1494715219_))
                                                            (_tl1494915224_
                                                             (##cdr _e1494715219_)))
                                                        (if (gx#stx-null?
                                                             _tl1494915224_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1494315208_)
                        (let ((_e1495015227_ (gx#stx-e _tl1494315208_)))
                          (let ((_hd1495115230_ (##car _e1495015227_))
                                (_tl1495215232_ (##cdr _e1495015227_)))
                            (if (gx#stx-pair? _hd1495115230_)
                                (let ((_e1495315235_
                                       (gx#stx-e _hd1495115230_)))
                                  (let ((_hd1495415238_ (##car _e1495315235_))
                                        (_tl1495515240_ (##cdr _e1495315235_)))
                                    (if (gx#identifier? _hd1495415238_)
                                        (if (gx#stx-eq? '%#ref _hd1495415238_)
                                            (if (gx#stx-pair? _tl1495515240_)
                                                (let ((_e1495615243_
                                                       (gx#stx-e
                                                        _tl1495515240_)))
                                                  (let ((_hd1495715246_
                                                         (##car _e1495615243_))
                                                        (_tl1495815248_
                                                         (##cdr _e1495615243_)))
                                                    (if (gx#stx-null?
                                                         _tl1495815248_)
                                                        (if (gx#stx-pair?
                                                             _tl1495215232_)
                                                            (let ((_e1495915251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1495215232_)))
                      (let ((_hd1496015254_ (##car _e1495915251_))
                            (_tl1496115256_ (##cdr _e1495915251_)))
                        (if (gx#stx-pair? _hd1496015254_)
                            (let ((_e1496215259_ (gx#stx-e _hd1496015254_)))
                              (let ((_hd1496315262_ (##car _e1496215259_))
                                    (_tl1496415264_ (##cdr _e1496215259_)))
                                (if (gx#identifier? _hd1496315262_)
                                    (if (gx#stx-eq? '%#quote _hd1496315262_)
                                        (if (gx#stx-pair? _tl1496415264_)
                                            (let ((_e1496515267_
                                                   (gx#stx-e _tl1496415264_)))
                                              (let ((_hd1496615270_
                                                     (##car _e1496515267_))
                                                    (_tl1496715272_
                                                     (##cdr _e1496515267_)))
                                                (if (gx#stx-null?
                                                     _tl1496715272_)
                                                    (if (gx#stx-pair?
                                                         _tl1496115256_)
                                                        (let ((_e1496815275_
                                                               (gx#stx-e
                                                                _tl1496115256_)))
                                                          (let ((_hd1496915278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1496815275_))
                        (_tl1497015280_ (##cdr _e1496815275_)))
                    (if (gx#stx-pair? _hd1496915278_)
                        (let ((_e1497115283_ (gx#stx-e _hd1496915278_)))
                          (let ((_hd1497215286_ (##car _e1497115283_))
                                (_tl1497315288_ (##cdr _e1497115283_)))
                            (if (gx#identifier? _hd1497215286_)
                                (if (gx#stx-eq? '%#ref _hd1497215286_)
                                    (if (gx#stx-pair? _tl1497315288_)
                                        (let ((_e1497415291_
                                               (gx#stx-e _tl1497315288_)))
                                          (let ((_hd1497515294_
                                                 (##car _e1497415291_))
                                                (_tl1497615296_
                                                 (##cdr _e1497415291_)))
                                            (if (gx#stx-null? _tl1497615296_)
                                                (if (gx#stx-pair?
                                                     _tl1497015280_)
                                                    (let ((_e1497715299_
                                                           (gx#stx-e
                                                            _tl1497015280_)))
                                                      (let ((_hd1497815302_
                                                             (##car _e1497715299_))
                                                            (_tl1497915304_
                                                             (##cdr _e1497715299_)))
                                                        (if (gx#stx-pair?
                                                             _hd1497815302_)
                                                            (let ((_e1498015307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1497815302_)))
                      (let ((_hd1498115310_ (##car _e1498015307_))
                            (_tl1498215312_ (##cdr _e1498015307_)))
                        (if (gx#identifier? _hd1498115310_)
                            (if (gx#stx-eq? '%#quote _hd1498115310_)
                                (if (gx#stx-pair? _tl1498215312_)
                                    (let ((_e1498315315_
                                           (gx#stx-e _tl1498215312_)))
                                      (let ((_hd1498415318_
                                             (##car _e1498315315_))
                                            (_tl1498515320_
                                             (##cdr _e1498315315_)))
                                        (if (gx#stx-null? _tl1498515320_)
                                            (if (gx#stx-null? _tl1497915304_)
                                                ((lambda (_L15323_
                                                          _L15324_
                                                          _L15325_
                                                          _L15326_
                                                          _L15327_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L15327_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda20242
                                                        (gxc#generate-runtime-binding-id
                                                         _L15326_)
                                                        (gx#stx-e _L15325_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L15324_)
                                                        (gx#stx-e _L15323_))
                                                       (_g1492915190_
                                                        _g1493215193_)))
                                                 _hd1498415318_
                                                 _hd1497515294_
                                                 _hd1496615270_
                                                 _hd1495715246_
                                                 _hd1494815222_)
                                                (_g1492915190_ _g1493215193_))
                                            (_g1492915190_ _g1493215193_))))
                                    (_g1492915190_ _g1493215193_))
                                (_g1492915190_ _g1493215193_))
                            (_g1492915190_ _g1493215193_))))
                    (_g1492915190_ _g1493215193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1492915190_
                                                     _g1493215193_))
                                                (_g1492915190_
                                                 _g1493215193_))))
                                        (_g1492915190_ _g1493215193_))
                                    (_g1492915190_ _g1493215193_))
                                (_g1492915190_ _g1493215193_))))
                        (_g1492915190_ _g1493215193_))))
                (_g1492915190_ _g1493215193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1492915190_
                                                     _g1493215193_))))
                                            (_g1492915190_ _g1493215193_))
                                        (_g1492915190_ _g1493215193_))
                                    (_g1492915190_ _g1493215193_))))
                            (_g1492915190_ _g1493215193_))))
                    (_g1492915190_ _g1493215193_))
                (_g1492915190_ _g1493215193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1492915190_ _g1493215193_))
                                            (_g1492915190_ _g1493215193_))
                                        (_g1492915190_ _g1493215193_))))
                                (_g1492915190_ _g1493215193_))))
                        (_g1492915190_ _g1493215193_))
                    (_g1492915190_ _g1493215193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1492915190_
                                                     _g1493215193_))
                                                (_g1492915190_ _g1493215193_))
                                            (_g1492915190_ _g1493215193_))))
                                    (_g1492915190_ _g1493215193_))))
                            (_g1492915190_ _g1493215193_))))
                    (_g1492915190_ _g1493215193_)))))
        (_g1492815370_ _stx14927_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx14867_)
      (let* ((_g1487014883_
              (lambda (_g1487114880_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1487114880_)))
             (_g1486914890_ (lambda (_g1487114886_) ((lambda () '#f))))
             (_g1486814924_
              (lambda (_g1487114893_)
                (if (gx#stx-pair? _g1487114893_)
                    (let ((_e1487314895_ (gx#stx-e _g1487114893_)))
                      (let ((_hd1487414898_ (##car _e1487314895_))
                            (_tl1487514900_ (##cdr _e1487314895_)))
                        (if (gx#stx-pair? _tl1487514900_)
                            (let ((_e1487614903_ (gx#stx-e _tl1487514900_)))
                              (let ((_hd1487714906_ (##car _e1487614903_))
                                    (_tl1487814908_ (##cdr _e1487614903_)))
                                (if (gx#stx-null? _tl1487814908_)
                                    ((lambda (_L14911_)
                                       (gxc#compile-e _L14911_))
                                     _hd1487714906_)
                                    (_g1486914890_ _g1487114893_))))
                            (_g1486914890_ _g1487114893_))))
                    (_g1486914890_ _g1487114893_)))))
        (_g1486814924_ _stx14867_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx14292_)
      (let* ((_g1429714418_
              (lambda (_g1429814415_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1429814415_)))
             (_g1429614425_ (lambda (_g1429814421_) ((lambda () '#f))))
             (_g1429514449_
              (lambda (_g1429814428_)
                (if (gx#stx-pair? _g1429814428_)
                    (let ((_e1441114430_ (gx#stx-e _g1429814428_)))
                      (let ((_hd1441214433_ (##car _e1441114430_))
                            (_tl1441314435_ (##cdr _e1441114430_)))
                        ((lambda (_L14438_)
                           (if (gxc#dispatch-lambda-form? _L14438_)
                               (let ((__obj20494
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj20494
                                    'lambda
                                    (gxc#lambda-form-arity _L14438_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L14438_))
                                   __obj20494))
                               (_g1429614425_ _g1429814428_)))
                         _tl1441314435_)))
                    (_g1429614425_ _g1429814428_))))
             (_g1429414679_
              (lambda (_g1429814452_)
                (if (gx#stx-pair? _g1429814452_)
                    (let ((_e1435614454_ (gx#stx-e _g1429814452_)))
                      (let ((_hd1435714457_ (##car _e1435614454_))
                            (_tl1435814459_ (##cdr _e1435614454_)))
                        (if (gx#stx-pair? _tl1435814459_)
                            (let ((_e1435914462_ (gx#stx-e _tl1435814459_)))
                              (let ((_hd1436014465_ (##car _e1435914462_))
                                    (_tl1436114467_ (##cdr _e1435914462_)))
                                (if (gx#stx-pair/null? _hd1436014465_)
                                    (if (fx>= (gx#stx-length _hd1436014465_)
                                              '0)
                                        (let ((_g20556_
                                               (gx#syntax-split-splice
                                                _hd1436014465_
                                                '0)))
                                          (begin
                                            (let ((_g20557_
                                                   (values-count _g20556_)))
                                              (if (not (fx= _g20557_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20557_)))
                                            (let ((_target1436214470_
                                                   (values-ref _g20556_ 0))
                                                  (_tl1436414472_
                                                   (values-ref _g20556_ 1)))
                                              (if (gx#stx-null? _tl1436414472_)
                                                  (letrec ((_loop1436514475_
                                                            (lambda (_hd1436314478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1436914480_)
                      (if (gx#stx-pair? _hd1436314478_)
                          (let ((_e1436614483_ (gx#stx-e _hd1436314478_)))
                            (let ((_lp-hd1436714486_ (##car _e1436614483_))
                                  (_lp-tl1436814488_ (##cdr _e1436614483_)))
                              (_loop1436514475_
                               _lp-tl1436814488_
                               (cons _lp-hd1436714486_ _arg1436914480_))))
                          (let ((_arg1437014491_ (reverse _arg1436914480_)))
                            (if (gx#stx-pair? _tl1436114467_)
                                (let ((_e1437114494_
                                       (gx#stx-e _tl1436114467_)))
                                  (let ((_hd1437214497_ (##car _e1437114494_))
                                        (_tl1437314499_ (##cdr _e1437114494_)))
                                    (if (gx#stx-pair? _hd1437214497_)
                                        (let ((_e1437414502_
                                               (gx#stx-e _hd1437214497_)))
                                          (let ((_hd1437514505_
                                                 (##car _e1437414502_))
                                                (_tl1437614507_
                                                 (##cdr _e1437414502_)))
                                            (if (gx#identifier? _hd1437514505_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1437514505_)
                                                    (if (gx#stx-pair?
                                                         _tl1437614507_)
                                                        (let ((_e1437714510_
                                                               (gx#stx-e
                                                                _tl1437614507_)))
                                                          (let ((_hd1437814513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1437714510_))
                        (_tl1437914515_ (##cdr _e1437714510_)))
                    (if (gx#stx-pair? _hd1437814513_)
                        (let ((_e1438014518_ (gx#stx-e _hd1437814513_)))
                          (let ((_hd1438114521_ (##car _e1438014518_))
                                (_tl1438214523_ (##cdr _e1438014518_)))
                            (if (gx#identifier? _hd1438114521_)
                                (if (gx#stx-eq? '%#ref _hd1438114521_)
                                    (if (gx#stx-pair? _tl1438214523_)
                                        (let ((_e1438314526_
                                               (gx#stx-e _tl1438214523_)))
                                          (let ((_hd1438414529_
                                                 (##car _e1438314526_))
                                                (_tl1438514531_
                                                 (##cdr _e1438314526_)))
                                            (if (gx#stx-null? _tl1438514531_)
                                                (if (gx#stx-pair?
                                                     _tl1437914515_)
                                                    (let ((_e1438614534_
                                                           (gx#stx-e
                                                            _tl1437914515_)))
                                                      (let ((_hd1438714537_
                                                             (##car _e1438614534_))
                                                            (_tl1438814539_
                                                             (##cdr _e1438614534_)))
                                                        (if (gx#stx-pair?
                                                             _hd1438714537_)
                                                            (let ((_e1438914542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1438714537_)))
                      (let ((_hd1439014545_ (##car _e1438914542_))
                            (_tl1439114547_ (##cdr _e1438914542_)))
                        (if (gx#identifier? _hd1439014545_)
                            (if (gx#stx-eq? '%#ref _hd1439014545_)
                                (if (gx#stx-pair? _tl1439114547_)
                                    (let ((_e1439214550_
                                           (gx#stx-e _tl1439114547_)))
                                      (let ((_hd1439314553_
                                             (##car _e1439214550_))
                                            (_tl1439414555_
                                             (##cdr _e1439214550_)))
                                        (if (gx#stx-null? _tl1439414555_)
                                            (if (gx#stx-pair/null?
                                                 _tl1438814539_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1438814539_)
                                                          '0)
                                                    (let ((_g20558_
                                                           (gx#syntax-split-splice
                                                            _tl1438814539_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20559_
                                                               (values-count
                                                                _g20558_)))
                                                          (if (not (fx= _g20559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g20559_)))
                (let ((_target1439514558_ (values-ref _g20558_ 0))
                      (_tl1439714560_ (values-ref _g20558_ 1)))
                  (if (gx#stx-null? _tl1439714560_)
                      (letrec ((_loop1439814563_
                                (lambda (_hd1439614566_ _xarg1440214568_)
                                  (if (gx#stx-pair? _hd1439614566_)
                                      (let ((_e1439914571_
                                             (gx#stx-e _hd1439614566_)))
                                        (let ((_lp-hd1440014574_
                                               (##car _e1439914571_))
                                              (_lp-tl1440114576_
                                               (##cdr _e1439914571_)))
                                          (if (gx#stx-pair? _lp-hd1440014574_)
                                              (let ((_e1440414579_
                                                     (gx#stx-e
                                                      _lp-hd1440014574_)))
                                                (let ((_hd1440514582_
                                                       (##car _e1440414579_))
                                                      (_tl1440614584_
                                                       (##cdr _e1440414579_)))
                                                  (if (gx#identifier?
                                                       _hd1440514582_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1440514582_)
                                                          (if (gx#stx-pair?
                                                               _tl1440614584_)
                                                              (let ((_e1440714587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1440614584_)))
                        (let ((_hd1440814590_ (##car _e1440714587_))
                              (_tl1440914592_ (##cdr _e1440714587_)))
                          (if (gx#stx-null? _tl1440914592_)
                              (_loop1439814563_
                               _lp-tl1440114576_
                               (cons _hd1440814590_ _xarg1440214568_))
                              (_g1429514449_ _g1429814452_))))
                      (_g1429514449_ _g1429814452_))
                  (_g1429514449_ _g1429814452_))
              (_g1429514449_ _g1429814452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1429514449_ _g1429814452_))))
                                      (let ((_xarg1440314595_
                                             (reverse _xarg1440214568_)))
                                        (if (gx#stx-null? _tl1437314499_)
                                            ((lambda (_L14598_
                                                      _L14599_
                                                      _L14600_
                                                      _L14601_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1463814641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1463914643_)
                            (cons _g1463814641_ _g1463914643_))
                          '()
                          _L14601_)))
               (if (eq? (gxc#generate-runtime-binding-id _L14600_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1464514648_
                                                       _g1464614650_)
                                                (cons _g1464514648_
                                                      _g1464614650_))
                                              '()
                                              _L14601_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1465214655_
                                                       _g1465314657_)
                                                (cons _g1465214655_
                                                      _g1465314657_))
                                              '()
                                              _L14598_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1465914662_ _g1466014664_)
                                           (cons _g1465914662_ _g1466014664_))
                                         '()
                                         _L14601_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1466614669_ _g1466714671_)
                                           (cons _g1466614669_ _g1466714671_))
                                         '()
                                         _L14598_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t14674_
                                                           (gxc#generate-runtime-binding-id
                                                            _L14599_))
                                                          (_type14676_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t14674_)))
                                                     (if (##structure-instance-of?
                                                          _type14676_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t14674_)
                                                         '#f))
                                                   (_g1429514449_
                                                    _g1429814452_)))
                                             _xarg1440314595_
                                             _hd1439314553_
                                             _hd1438414529_
                                             _arg1437014491_)
                                            (_g1429514449_ _g1429814452_)))))))
                        (_loop1439814563_ _target1439514558_ '()))
                      (_g1429514449_ _g1429814452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429514449_
                                                     _g1429814452_))
                                                (_g1429514449_ _g1429814452_))
                                            (_g1429514449_ _g1429814452_))))
                                    (_g1429514449_ _g1429814452_))
                                (_g1429514449_ _g1429814452_))
                            (_g1429514449_ _g1429814452_))))
                    (_g1429514449_ _g1429814452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429514449_
                                                     _g1429814452_))
                                                (_g1429514449_
                                                 _g1429814452_))))
                                        (_g1429514449_ _g1429814452_))
                                    (_g1429514449_ _g1429814452_))
                                (_g1429514449_ _g1429814452_))))
                        (_g1429514449_ _g1429814452_))))
                (_g1429514449_ _g1429814452_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429514449_
                                                     _g1429814452_))
                                                (_g1429514449_
                                                 _g1429814452_))))
                                        (_g1429514449_ _g1429814452_))))
                                (_g1429514449_ _g1429814452_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1436514475_
                                                     _target1436214470_
                                                     '()))
                                                  (_g1429514449_
                                                   _g1429814452_)))))
                                        (_g1429514449_ _g1429814452_))
                                    (_g1429514449_ _g1429814452_))))
                            (_g1429514449_ _g1429814452_))))
                    (_g1429514449_ _g1429814452_))))
             (_g1429314864_
              (lambda (_g1429814682_)
                (if (gx#stx-pair? _g1429814682_)
                    (let ((_e1430414684_ (gx#stx-e _g1429814682_)))
                      (let ((_hd1430514687_ (##car _e1430414684_))
                            (_tl1430614689_ (##cdr _e1430414684_)))
                        (if (gx#stx-pair? _tl1430614689_)
                            (let ((_e1430714692_ (gx#stx-e _tl1430614689_)))
                              (let ((_hd1430814695_ (##car _e1430714692_))
                                    (_tl1430914697_ (##cdr _e1430714692_)))
                                (if (gx#stx-pair? _tl1430914697_)
                                    (let ((_e1431014700_
                                           (gx#stx-e _tl1430914697_)))
                                      (let ((_hd1431114703_
                                             (##car _e1431014700_))
                                            (_tl1431214705_
                                             (##cdr _e1431014700_)))
                                        (if (gx#stx-pair? _hd1431114703_)
                                            (let ((_e1431314708_
                                                   (gx#stx-e _hd1431114703_)))
                                              (let ((_hd1431414711_
                                                     (##car _e1431314708_))
                                                    (_tl1431514713_
                                                     (##cdr _e1431314708_)))
                                                (if (gx#identifier?
                                                     _hd1431414711_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1431414711_)
                                                        (if (gx#stx-pair?
                                                             _tl1431514713_)
                                                            (let ((_e1431614716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1431514713_)))
                      (let ((_hd1431714719_ (##car _e1431614716_))
                            (_tl1431814721_ (##cdr _e1431614716_)))
                        (if (gx#stx-pair? _hd1431714719_)
                            (let ((_e1431914724_ (gx#stx-e _hd1431714719_)))
                              (let ((_hd1432014727_ (##car _e1431914724_))
                                    (_tl1432114729_ (##cdr _e1431914724_)))
                                (if (gx#identifier? _hd1432014727_)
                                    (if (gx#stx-eq? '%#ref _hd1432014727_)
                                        (if (gx#stx-pair? _tl1432114729_)
                                            (let ((_e1432214732_
                                                   (gx#stx-e _tl1432114729_)))
                                              (let ((_hd1432314735_
                                                     (##car _e1432214732_))
                                                    (_tl1432414737_
                                                     (##cdr _e1432214732_)))
                                                (if (gx#stx-null?
                                                     _tl1432414737_)
                                                    (if (gx#stx-pair?
                                                         _tl1431814721_)
                                                        (let ((_e1432514740_
                                                               (gx#stx-e
                                                                _tl1431814721_)))
                                                          (let ((_hd1432614743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1432514740_))
                        (_tl1432714745_ (##cdr _e1432514740_)))
                    (if (gx#stx-pair? _hd1432614743_)
                        (let ((_e1432814748_ (gx#stx-e _hd1432614743_)))
                          (let ((_hd1432914751_ (##car _e1432814748_))
                                (_tl1433014753_ (##cdr _e1432814748_)))
                            (if (gx#identifier? _hd1432914751_)
                                (if (gx#stx-eq? '%#ref _hd1432914751_)
                                    (if (gx#stx-pair? _tl1433014753_)
                                        (let ((_e1433114756_
                                               (gx#stx-e _tl1433014753_)))
                                          (let ((_hd1433214759_
                                                 (##car _e1433114756_))
                                                (_tl1433314761_
                                                 (##cdr _e1433114756_)))
                                            (if (gx#stx-null? _tl1433314761_)
                                                (if (gx#stx-pair?
                                                     _tl1432714745_)
                                                    (let ((_e1433414764_
                                                           (gx#stx-e
                                                            _tl1432714745_)))
                                                      (let ((_hd1433514767_
                                                             (##car _e1433414764_))
                                                            (_tl1433614769_
                                                             (##cdr _e1433414764_)))
                                                        (if (gx#stx-pair?
                                                             _hd1433514767_)
                                                            (let ((_e1433714772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1433514767_)))
                      (let ((_hd1433814775_ (##car _e1433714772_))
                            (_tl1433914777_ (##cdr _e1433714772_)))
                        (if (gx#identifier? _hd1433814775_)
                            (if (gx#stx-eq? '%#ref _hd1433814775_)
                                (if (gx#stx-pair? _tl1433914777_)
                                    (let ((_e1434014780_
                                           (gx#stx-e _tl1433914777_)))
                                      (let ((_hd1434114783_
                                             (##car _e1434014780_))
                                            (_tl1434214785_
                                             (##cdr _e1434014780_)))
                                        (if (gx#stx-null? _tl1434214785_)
                                            (if (gx#stx-pair? _tl1433614769_)
                                                (let ((_e1434314788_
                                                       (gx#stx-e
                                                        _tl1433614769_)))
                                                  (let ((_hd1434414791_
                                                         (##car _e1434314788_))
                                                        (_tl1434514793_
                                                         (##cdr _e1434314788_)))
                                                    (if (gx#stx-pair?
                                                         _hd1434414791_)
                                                        (let ((_e1434614796_
                                                               (gx#stx-e
                                                                _hd1434414791_)))
                                                          (let ((_hd1434714799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1434614796_))
                        (_tl1434814801_ (##cdr _e1434614796_)))
                    (if (gx#identifier? _hd1434714799_)
                        (if (gx#stx-eq? '%#ref _hd1434714799_)
                            (if (gx#stx-pair? _tl1434814801_)
                                (let ((_e1434914804_
                                       (gx#stx-e _tl1434814801_)))
                                  (let ((_hd1435014807_ (##car _e1434914804_))
                                        (_tl1435114809_ (##cdr _e1434914804_)))
                                    (if (gx#stx-null? _tl1435114809_)
                                        (if (gx#stx-null? _tl1434514793_)
                                            (if (gx#stx-null? _tl1431214705_)
                                                ((lambda (_L14812_
                                                          _L14813_
                                                          _L14814_
                                                          _L14815_
                                                          _L14816_)
                                                   (if (if (gx#identifier?
                                                            _L14816_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14815_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L14814_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L14816_ _L14812_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t14859_
                       (gxc#generate-runtime-binding-id _L14813_))
                      (_type14861_ (gxc#optimizer-resolve-type _type-t14859_)))
                 (if (##structure-instance-of?
                      _type14861_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t14859_)
                     '#f))
               (_g1429414679_ _g1429814682_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1435014807_
                                                 _hd1434114783_
                                                 _hd1433214759_
                                                 _hd1432314735_
                                                 _hd1430814695_)
                                                (_g1429414679_ _g1429814682_))
                                            (_g1429414679_ _g1429814682_))
                                        (_g1429414679_ _g1429814682_))))
                                (_g1429414679_ _g1429814682_))
                            (_g1429414679_ _g1429814682_))
                        (_g1429414679_ _g1429814682_))))
                (_g1429414679_ _g1429814682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1429414679_ _g1429814682_))
                                            (_g1429414679_ _g1429814682_))))
                                    (_g1429414679_ _g1429814682_))
                                (_g1429414679_ _g1429814682_))
                            (_g1429414679_ _g1429814682_))))
                    (_g1429414679_ _g1429814682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429414679_
                                                     _g1429814682_))
                                                (_g1429414679_
                                                 _g1429814682_))))
                                        (_g1429414679_ _g1429814682_))
                                    (_g1429414679_ _g1429814682_))
                                (_g1429414679_ _g1429814682_))))
                        (_g1429414679_ _g1429814682_))))
                (_g1429414679_ _g1429814682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429414679_
                                                     _g1429814682_))))
                                            (_g1429414679_ _g1429814682_))
                                        (_g1429414679_ _g1429814682_))
                                    (_g1429414679_ _g1429814682_))))
                            (_g1429414679_ _g1429814682_))))
                    (_g1429414679_ _g1429814682_))
                (_g1429414679_ _g1429814682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429414679_
                                                     _g1429814682_))))
                                            (_g1429414679_ _g1429814682_))))
                                    (_g1429414679_ _g1429814682_))))
                            (_g1429414679_ _g1429814682_))))
                    (_g1429414679_ _g1429814682_)))))
        (_g1429314864_ _stx14292_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx14238_)
      (letrec ((_clause-e14240_
                (lambda (_form14290_)
                  (let ((__obj20495 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj20495
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form14290_)
                       (gxc#dispatch-lambda-form-delegate _form14290_))
                      __obj20495)))))
        (let* ((_g1424314253_
                (lambda (_g1424414250_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1424414250_)))
               (_g1424214260_ (lambda (_g1424414256_) ((lambda () '#f))))
               (_g1424114287_
                (lambda (_g1424414263_)
                  (if (gx#stx-pair? _g1424414263_)
                      (let ((_e1424614265_ (gx#stx-e _g1424414263_)))
                        (let ((_hd1424714268_ (##car _e1424614265_))
                              (_tl1424814270_ (##cdr _e1424614265_)))
                          ((lambda (_L14273_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L14273_)
                                 (let ((_clauses14285_
                                        (map _clause-e14240_ _L14273_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses14285_))
                                 (_g1424214260_ _g1424414263_)))
                           _tl1424814270_)))
                      (_g1424214260_ _g1424414263_)))))
          (_g1424114287_ _stx14238_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx14143_)
      (let* ((_g1414614166_
              (lambda (_g1414714163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1414714163_)))
             (_g1414514173_ (lambda (_g1414714169_) ((lambda () '#f))))
             (_g1414414235_
              (lambda (_g1414714176_)
                (if (gx#stx-pair? _g1414714176_)
                    (let ((_e1415014178_ (gx#stx-e _g1414714176_)))
                      (let ((_hd1415114181_ (##car _e1415014178_))
                            (_tl1415214183_ (##cdr _e1415014178_)))
                        (if (gx#stx-pair? _tl1415214183_)
                            (let ((_e1415314186_ (gx#stx-e _tl1415214183_)))
                              (let ((_hd1415414189_ (##car _e1415314186_))
                                    (_tl1415514191_ (##cdr _e1415314186_)))
                                (if (gx#stx-pair? _hd1415414189_)
                                    (let ((_e1415614194_
                                           (gx#stx-e _hd1415414189_)))
                                      (let ((_hd1415714197_
                                             (##car _e1415614194_))
                                            (_tl1415814199_
                                             (##cdr _e1415614194_)))
                                        (if (gx#identifier? _hd1415714197_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1415714197_)
                                                (if (gx#stx-pair?
                                                     _tl1415814199_)
                                                    (let ((_e1415914202_
                                                           (gx#stx-e
                                                            _tl1415814199_)))
                                                      (let ((_hd1416014205_
                                                             (##car _e1415914202_))
                                                            (_tl1416114207_
                                                             (##cdr _e1415914202_)))
                                                        (if (gx#stx-null?
                                                             _tl1416114207_)
                                                            ((lambda (_L14210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14211_)
                       (let ((_type-e1422814230_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L14211_)
                               '#f)))
                         (if _type-e1422814230_
                             (let ((_type-e14233_ _type-e1422814230_))
                               (_type-e14233_ _stx14143_ _L14210_))
                             '#f)))
                     _tl1415514191_
                     _hd1416014205_)
                    (_g1414514173_ _g1414714176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1414514173_
                                                     _g1414714176_))
                                                (_g1414514173_ _g1414714176_))
                                            (_g1414514173_ _g1414714176_))))
                                    (_g1414514173_ _g1414714176_))))
                            (_g1414514173_ _g1414714176_))))
                    (_g1414514173_ _g1414714176_)))))
        (_g1414414235_ _stx14143_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13628_ _args13629_)
      (let* ((_g1363313746_
              (lambda (_g1363413743_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1363413743_)))
             (_g1363213753_
              (lambda (_g1363413749_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx13628_))
                     '#f)))))
             (_g1363113960_
              (lambda (_g1363413756_)
                (if (gx#stx-pair? _g1363413756_)
                    (let ((_e1369413758_ (gx#stx-e _g1363413756_)))
                      (let ((_hd1369513761_ (##car _e1369413758_))
                            (_tl1369613763_ (##cdr _e1369413758_)))
                        (if (gx#stx-pair? _hd1369513761_)
                            (let ((_e1369713766_ (gx#stx-e _hd1369513761_)))
                              (let ((_hd1369813769_ (##car _e1369713766_))
                                    (_tl1369913771_ (##cdr _e1369713766_)))
                                (if (gx#identifier? _hd1369813769_)
                                    (if (gx#stx-eq? '%#quote _hd1369813769_)
                                        (if (gx#stx-pair? _tl1369913771_)
                                            (let ((_e1370013774_
                                                   (gx#stx-e _tl1369913771_)))
                                              (let ((_hd1370113777_
                                                     (##car _e1370013774_))
                                                    (_tl1370213779_
                                                     (##cdr _e1370013774_)))
                                                (if (gx#stx-null?
                                                     _tl1370213779_)
                                                    (if (gx#stx-pair?
                                                         _tl1369613763_)
                                                        (let ((_e1370313782_
                                                               (gx#stx-e
                                                                _tl1369613763_)))
                                                          (let ((_hd1370413785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1370313782_))
                        (_tl1370513787_ (##cdr _e1370313782_)))
                    (if (gx#stx-pair? _hd1370413785_)
                        (let ((_e1370613790_ (gx#stx-e _hd1370413785_)))
                          (let ((_hd1370713793_ (##car _e1370613790_))
                                (_tl1370813795_ (##cdr _e1370613790_)))
                            (if (gx#identifier? _hd1370713793_)
                                (if (gx#stx-eq? '%#ref _hd1370713793_)
                                    (if (gx#stx-pair? _tl1370813795_)
                                        (let ((_e1370913798_
                                               (gx#stx-e _tl1370813795_)))
                                          (let ((_hd1371013801_
                                                 (##car _e1370913798_))
                                                (_tl1371113803_
                                                 (##cdr _e1370913798_)))
                                            (if (gx#stx-null? _tl1371113803_)
                                                (if (gx#stx-pair?
                                                     _tl1370513787_)
                                                    (let ((_e1371213806_
                                                           (gx#stx-e
                                                            _tl1370513787_)))
                                                      (let ((_hd1371313809_
                                                             (##car _e1371213806_))
                                                            (_tl1371413811_
                                                             (##cdr _e1371213806_)))
                                                        (if (gx#stx-pair?
                                                             _hd1371313809_)
                                                            (let ((_e1371513814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1371313809_)))
                      (let ((_hd1371613817_ (##car _e1371513814_))
                            (_tl1371713819_ (##cdr _e1371513814_)))
                        (if (gx#identifier? _hd1371613817_)
                            (if (gx#stx-eq? '%#quote _hd1371613817_)
                                (if (gx#stx-pair? _tl1371713819_)
                                    (let ((_e1371813822_
                                           (gx#stx-e _tl1371713819_)))
                                      (let ((_hd1371913825_
                                             (##car _e1371813822_))
                                            (_tl1372013827_
                                             (##cdr _e1371813822_)))
                                        (if (gx#stx-null? _tl1372013827_)
                                            (if (gx#stx-pair? _tl1371413811_)
                                                (let ((_e1372113830_
                                                       (gx#stx-e
                                                        _tl1371413811_)))
                                                  (let ((_hd1372213833_
                                                         (##car _e1372113830_))
                                                        (_tl1372313835_
                                                         (##cdr _e1372113830_)))
                                                    (if (gx#stx-pair?
                                                         _tl1372313835_)
                                                        (let ((_e1372413838_
                                                               (gx#stx-e
                                                                _tl1372313835_)))
                                                          (let ((_hd1372513841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1372413838_))
                        (_tl1372613843_ (##cdr _e1372413838_)))
                    (if (gx#stx-pair? _hd1372513841_)
                        (let ((_e1372713846_ (gx#stx-e _hd1372513841_)))
                          (let ((_hd1372813849_ (##car _e1372713846_))
                                (_tl1372913851_ (##cdr _e1372713846_)))
                            (if (gx#identifier? _hd1372813849_)
                                (if (gx#stx-eq? '%#quote _hd1372813849_)
                                    (if (gx#stx-pair? _tl1372913851_)
                                        (let ((_e1373013854_
                                               (gx#stx-e _tl1372913851_)))
                                          (let ((_hd1373113857_
                                                 (##car _e1373013854_))
                                                (_tl1373213859_
                                                 (##cdr _e1373013854_)))
                                            (if (gx#stx-null? _tl1373213859_)
                                                (if (gx#stx-pair?
                                                     _tl1372613843_)
                                                    (let ((_e1373313862_
                                                           (gx#stx-e
                                                            _tl1372613843_)))
                                                      (let ((_hd1373413865_
                                                             (##car _e1373313862_))
                                                            (_tl1373513867_
                                                             (##cdr _e1373313862_)))
                                                        (if (gx#stx-pair?
                                                             _hd1373413865_)
                                                            (let ((_e1373613870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1373413865_)))
                      (let ((_hd1373713873_ (##car _e1373613870_))
                            (_tl1373813875_ (##cdr _e1373613870_)))
                        (if (gx#identifier? _hd1373713873_)
                            (if (gx#stx-eq? '%#quote _hd1373713873_)
                                (if (gx#stx-pair? _tl1373813875_)
                                    (let ((_e1373913878_
                                           (gx#stx-e _tl1373813875_)))
                                      (let ((_hd1374013881_
                                             (##car _e1373913878_))
                                            (_tl1374113883_
                                             (##cdr _e1373913878_)))
                                        (if (gx#stx-null? _tl1374113883_)
                                            (if (gx#stx-null? _tl1373513867_)
                                                ((lambda (_L13886_
                                                          _L13887_
                                                          _L13888_
                                                          _L13889_
                                                          _L13890_
                                                          _L13891_)
                                                   (let* ((_super-t13937_
                                                           (if (gx#stx-e
                                                                _L13890_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L13890_)
                                                               '#f))
                                                          (_super-type13939_
                                                           (if _super-t13937_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t13937_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type13939_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type13939_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx13628_
                    _L13890_)
                   '#!void)
               (let ((_fields13955_ (gx#stx-e _L13889_))
                     (_xfields13956_
                      (if _super-type13939_
                          (let ((_super-fields1394113944_
                                 (##structure-ref
                                  _super-type13939_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1394213946_
                                 (##structure-ref
                                  _super-type13939_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1394113944_
                                (if _super-xfields1394213946_
                                    (let ((_super-fields13949_
                                           _super-fields1394113944_)
                                          (_super-xfields13950_
                                           _super-xfields1394213946_))
                                      (fx+ _super-fields13949_
                                           _super-xfields13950_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist13957_ (gx#stx-e _L13887_))
                     (_ctor13958_
                      (let ((_$e13952_ (gx#stx-e _L13886_)))
                        (if _$e13952_
                            (values _$e13952_)
                            (if _super-type13939_
                                (##structure-ref
                                 _super-type13939_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t13937_ '#!void '#f))))))
                 (let ((__obj20496 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj20496
                      (gx#stx-e _L13891_)
                      _super-t13937_
                      _fields13955_
                      _xfields13956_
                      _ctor13958_
                      _plist13957_)
                     __obj20496))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1374013881_
                                                 _hd1373113857_
                                                 _hd1372213833_
                                                 _hd1371913825_
                                                 _hd1371013801_
                                                 _hd1370113777_)
                                                (_g1363213753_ _g1363413756_))
                                            (_g1363213753_ _g1363413756_))))
                                    (_g1363213753_ _g1363413756_))
                                (_g1363213753_ _g1363413756_))
                            (_g1363213753_ _g1363413756_))))
                    (_g1363213753_ _g1363413756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363213753_
                                                     _g1363413756_))
                                                (_g1363213753_
                                                 _g1363413756_))))
                                        (_g1363213753_ _g1363413756_))
                                    (_g1363213753_ _g1363413756_))
                                (_g1363213753_ _g1363413756_))))
                        (_g1363213753_ _g1363413756_))))
                (_g1363213753_ _g1363413756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1363213753_ _g1363413756_))
                                            (_g1363213753_ _g1363413756_))))
                                    (_g1363213753_ _g1363413756_))
                                (_g1363213753_ _g1363413756_))
                            (_g1363213753_ _g1363413756_))))
                    (_g1363213753_ _g1363413756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363213753_
                                                     _g1363413756_))
                                                (_g1363213753_
                                                 _g1363413756_))))
                                        (_g1363213753_ _g1363413756_))
                                    (_g1363213753_ _g1363413756_))
                                (_g1363213753_ _g1363413756_))))
                        (_g1363213753_ _g1363413756_))))
                (_g1363213753_ _g1363413756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363213753_
                                                     _g1363413756_))))
                                            (_g1363213753_ _g1363413756_))
                                        (_g1363213753_ _g1363413756_))
                                    (_g1363213753_ _g1363413756_))))
                            (_g1363213753_ _g1363413756_))))
                    (_g1363213753_ _g1363413756_))))
             (_g1363014140_
              (lambda (_g1363413963_)
                (if (gx#stx-pair? _g1363413963_)
                    (let ((_e1364013965_ (gx#stx-e _g1363413963_)))
                      (let ((_hd1364113968_ (##car _e1364013965_))
                            (_tl1364213970_ (##cdr _e1364013965_)))
                        (if (gx#stx-pair? _hd1364113968_)
                            (let ((_e1364313973_ (gx#stx-e _hd1364113968_)))
                              (let ((_hd1364413976_ (##car _e1364313973_))
                                    (_tl1364513978_ (##cdr _e1364313973_)))
                                (if (gx#identifier? _hd1364413976_)
                                    (if (gx#stx-eq? '%#quote _hd1364413976_)
                                        (if (gx#stx-pair? _tl1364513978_)
                                            (let ((_e1364613981_
                                                   (gx#stx-e _tl1364513978_)))
                                              (let ((_hd1364713984_
                                                     (##car _e1364613981_))
                                                    (_tl1364813986_
                                                     (##cdr _e1364613981_)))
                                                (if (gx#stx-null?
                                                     _tl1364813986_)
                                                    (if (gx#stx-pair?
                                                         _tl1364213970_)
                                                        (let ((_e1364913989_
                                                               (gx#stx-e
                                                                _tl1364213970_)))
                                                          (let ((_hd1365013992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1364913989_))
                        (_tl1365113994_ (##cdr _e1364913989_)))
                    (if (gx#stx-pair? _hd1365013992_)
                        (let ((_e1365213997_ (gx#stx-e _hd1365013992_)))
                          (let ((_hd1365314000_ (##car _e1365213997_))
                                (_tl1365414002_ (##cdr _e1365213997_)))
                            (if (gx#identifier? _hd1365314000_)
                                (if (gx#stx-eq? '%#quote _hd1365314000_)
                                    (if (gx#stx-pair? _tl1365414002_)
                                        (let ((_e1365514005_
                                               (gx#stx-e _tl1365414002_)))
                                          (let ((_hd1365614008_
                                                 (##car _e1365514005_))
                                                (_tl1365714010_
                                                 (##cdr _e1365514005_)))
                                            (if (gx#stx-datum? _hd1365614008_)
                                                (if (equal? (gx#stx-e
                                                             _hd1365614008_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1365714010_)
                                                        (if (gx#stx-pair?
                                                             _tl1365113994_)
                                                            (let ((_e1365814013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1365113994_)))
                      (let ((_hd1365914016_ (##car _e1365814013_))
                            (_tl1366014018_ (##cdr _e1365814013_)))
                        (if (gx#stx-pair? _hd1365914016_)
                            (let ((_e1366114021_ (gx#stx-e _hd1365914016_)))
                              (let ((_hd1366214024_ (##car _e1366114021_))
                                    (_tl1366314026_ (##cdr _e1366114021_)))
                                (if (gx#identifier? _hd1366214024_)
                                    (if (gx#stx-eq? '%#quote _hd1366214024_)
                                        (if (gx#stx-pair? _tl1366314026_)
                                            (let ((_e1366414029_
                                                   (gx#stx-e _tl1366314026_)))
                                              (let ((_hd1366514032_
                                                     (##car _e1366414029_))
                                                    (_tl1366614034_
                                                     (##cdr _e1366414029_)))
                                                (if (gx#stx-null?
                                                     _tl1366614034_)
                                                    (if (gx#stx-pair?
                                                         _tl1366014018_)
                                                        (let ((_e1366714037_
                                                               (gx#stx-e
                                                                _tl1366014018_)))
                                                          (let ((_hd1366814040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1366714037_))
                        (_tl1366914042_ (##cdr _e1366714037_)))
                    (if (gx#stx-pair? _tl1366914042_)
                        (let ((_e1367014045_ (gx#stx-e _tl1366914042_)))
                          (let ((_hd1367114048_ (##car _e1367014045_))
                                (_tl1367214050_ (##cdr _e1367014045_)))
                            (if (gx#stx-pair? _hd1367114048_)
                                (let ((_e1367314053_
                                       (gx#stx-e _hd1367114048_)))
                                  (let ((_hd1367414056_ (##car _e1367314053_))
                                        (_tl1367514058_ (##cdr _e1367314053_)))
                                    (if (gx#identifier? _hd1367414056_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1367414056_)
                                            (if (gx#stx-pair? _tl1367514058_)
                                                (let ((_e1367614061_
                                                       (gx#stx-e
                                                        _tl1367514058_)))
                                                  (let ((_hd1367714064_
                                                         (##car _e1367614061_))
                                                        (_tl1367814066_
                                                         (##cdr _e1367614061_)))
                                                    (if (gx#stx-null?
                                                         _tl1367814066_)
                                                        (if (gx#stx-pair?
                                                             _tl1367214050_)
                                                            (let ((_e1367914069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1367214050_)))
                      (let ((_hd1368014072_ (##car _e1367914069_))
                            (_tl1368114074_ (##cdr _e1367914069_)))
                        (if (gx#stx-pair? _hd1368014072_)
                            (let ((_e1368214077_ (gx#stx-e _hd1368014072_)))
                              (let ((_hd1368314080_ (##car _e1368214077_))
                                    (_tl1368414082_ (##cdr _e1368214077_)))
                                (if (gx#identifier? _hd1368314080_)
                                    (if (gx#stx-eq? '%#quote _hd1368314080_)
                                        (if (gx#stx-pair? _tl1368414082_)
                                            (let ((_e1368514085_
                                                   (gx#stx-e _tl1368414082_)))
                                              (let ((_hd1368614088_
                                                     (##car _e1368514085_))
                                                    (_tl1368714090_
                                                     (##cdr _e1368514085_)))
                                                (if (gx#stx-null?
                                                     _tl1368714090_)
                                                    (if (gx#stx-null?
                                                         _tl1368114074_)
                                                        ((lambda (_L14093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14094_
                          _L14095_
                          _L14096_
                          _L14097_)
                   (let ((__obj20497 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj20497
                        (gx#stx-e _L14097_)
                        '#f
                        (gx#stx-e _L14096_)
                        '0
                        (gx#stx-e _L14093_)
                        (gx#stx-e _L14094_))
                       __obj20497)))
                 _hd1368614088_
                 _hd1367714064_
                 _hd1366814040_
                 _hd1366514032_
                 _hd1364713984_)
                (_g1363113960_ _g1363413963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363113960_
                                                     _g1363413963_))))
                                            (_g1363113960_ _g1363413963_))
                                        (_g1363113960_ _g1363413963_))
                                    (_g1363113960_ _g1363413963_))))
                            (_g1363113960_ _g1363413963_))))
                    (_g1363113960_ _g1363413963_))
                (_g1363113960_ _g1363413963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1363113960_ _g1363413963_))
                                            (_g1363113960_ _g1363413963_))
                                        (_g1363113960_ _g1363413963_))))
                                (_g1363113960_ _g1363413963_))))
                        (_g1363113960_ _g1363413963_))))
                (_g1363113960_ _g1363413963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363113960_
                                                     _g1363413963_))))
                                            (_g1363113960_ _g1363413963_))
                                        (_g1363113960_ _g1363413963_))
                                    (_g1363113960_ _g1363413963_))))
                            (_g1363113960_ _g1363413963_))))
                    (_g1363113960_ _g1363413963_))
                (_g1363113960_ _g1363413963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363113960_
                                                     _g1363413963_))
                                                (_g1363113960_
                                                 _g1363413963_))))
                                        (_g1363113960_ _g1363413963_))
                                    (_g1363113960_ _g1363413963_))
                                (_g1363113960_ _g1363413963_))))
                        (_g1363113960_ _g1363413963_))))
                (_g1363113960_ _g1363413963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1363113960_
                                                     _g1363413963_))))
                                            (_g1363113960_ _g1363413963_))
                                        (_g1363113960_ _g1363413963_))
                                    (_g1363113960_ _g1363413963_))))
                            (_g1363113960_ _g1363413963_))))
                    (_g1363113960_ _g1363413963_)))))
        (_g1363014140_ _args13629_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13554_ _args13555_)
      (let* ((_g1355813574_
              (lambda (_g1355913571_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1355913571_)))
             (_g1355713581_ (lambda (_g1355913577_) ((lambda () '#f))))
             (_g1355613625_
              (lambda (_g1355913584_)
                (if (gx#stx-pair? _g1355913584_)
                    (let ((_e1356113586_ (gx#stx-e _g1355913584_)))
                      (let ((_hd1356213589_ (##car _e1356113586_))
                            (_tl1356313591_ (##cdr _e1356113586_)))
                        (if (gx#stx-pair? _hd1356213589_)
                            (let ((_e1356413594_ (gx#stx-e _hd1356213589_)))
                              (let ((_hd1356513597_ (##car _e1356413594_))
                                    (_tl1356613599_ (##cdr _e1356413594_)))
                                (if (gx#identifier? _hd1356513597_)
                                    (if (gx#stx-eq? '%#ref _hd1356513597_)
                                        (if (gx#stx-pair? _tl1356613599_)
                                            (let ((_e1356713602_
                                                   (gx#stx-e _tl1356613599_)))
                                              (let ((_hd1356813605_
                                                     (##car _e1356713602_))
                                                    (_tl1356913607_
                                                     (##cdr _e1356713602_)))
                                                (if (gx#stx-null?
                                                     _tl1356913607_)
                                                    (if (gx#stx-null?
                                                         _tl1356313591_)
                                                        ((lambda (_L13610_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L13610_)))
                                                         _hd1356813605_)
                                                        (_g1355713581_
                                                         _g1355913584_))
                                                    (_g1355713581_
                                                     _g1355913584_))))
                                            (_g1355713581_ _g1355913584_))
                                        (_g1355713581_ _g1355913584_))
                                    (_g1355713581_ _g1355913584_))))
                            (_g1355713581_ _g1355913584_))))
                    (_g1355713581_ _g1355913584_)))))
        (_g1355613625_ _args13555_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13423
      (lambda (_stx13425_ _args13426_ _unchecked?13427_)
        (let* ((_g1343013456_
                (lambda (_g1343113453_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1343113453_)))
               (_g1342913463_ (lambda (_g1343113459_) ((lambda () '#f))))
               (_g1342813539_
                (lambda (_g1343113466_)
                  (if (gx#stx-pair? _g1343113466_)
                      (let ((_e1343413468_ (gx#stx-e _g1343113466_)))
                        (let ((_hd1343513471_ (##car _e1343413468_))
                              (_tl1343613473_ (##cdr _e1343413468_)))
                          (if (gx#stx-pair? _hd1343513471_)
                              (let ((_e1343713476_ (gx#stx-e _hd1343513471_)))
                                (let ((_hd1343813479_ (##car _e1343713476_))
                                      (_tl1343913481_ (##cdr _e1343713476_)))
                                  (if (gx#identifier? _hd1343813479_)
                                      (if (gx#stx-eq? '%#ref _hd1343813479_)
                                          (if (gx#stx-pair? _tl1343913481_)
                                              (let ((_e1344013484_
                                                     (gx#stx-e
                                                      _tl1343913481_)))
                                                (let ((_hd1344113487_
                                                       (##car _e1344013484_))
                                                      (_tl1344213489_
                                                       (##cdr _e1344013484_)))
                                                  (if (gx#stx-null?
                                                       _tl1344213489_)
                                                      (if (gx#stx-pair?
                                                           _tl1343613473_)
                                                          (let ((_e1344313492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1343613473_)))
                    (let ((_hd1344413495_ (##car _e1344313492_))
                          (_tl1344513497_ (##cdr _e1344313492_)))
                      (if (gx#stx-pair? _hd1344413495_)
                          (let ((_e1344613500_ (gx#stx-e _hd1344413495_)))
                            (let ((_hd1344713503_ (##car _e1344613500_))
                                  (_tl1344813505_ (##cdr _e1344613500_)))
                              (if (gx#identifier? _hd1344713503_)
                                  (if (gx#stx-eq? '%#quote _hd1344713503_)
                                      (if (gx#stx-pair? _tl1344813505_)
                                          (let ((_e1344913508_
                                                 (gx#stx-e _tl1344813505_)))
                                            (let ((_hd1345013511_
                                                   (##car _e1344913508_))
                                                  (_tl1345113513_
                                                   (##cdr _e1344913508_)))
                                              (if (gx#stx-null? _tl1345113513_)
                                                  (if (gx#stx-null?
                                                       _tl1344513497_)
                                                      ((lambda (_L13516_
                                                                _L13517_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13517_)
                                                          (gx#stx-e _L13516_)
                                                          _unchecked?13427_))
                                                       _hd1345013511_
                                                       _hd1344113487_)
                                                      (_g1342913463_
                                                       _g1343113466_))
                                                  (_g1342913463_
                                                   _g1343113466_))))
                                          (_g1342913463_ _g1343113466_))
                                      (_g1342913463_ _g1343113466_))
                                  (_g1342913463_ _g1343113466_))))
                          (_g1342913463_ _g1343113466_))))
                  (_g1342913463_ _g1343113466_))
              (_g1342913463_ _g1343113466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1342913463_ _g1343113466_))
                                          (_g1342913463_ _g1343113466_))
                                      (_g1342913463_ _g1343113466_))))
                              (_g1342913463_ _g1343113466_))))
                      (_g1342913463_ _g1343113466_)))))
          (_g1342813539_ _args13426_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13545_ _args13546_)
          (let ((_unchecked?13548_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13423
             _stx13545_
             _args13546_
             _unchecked?13548_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20561_
          (let ((_g20560_ (length _g20561_)))
            (cond ((fx= _g20560_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20561_))
                  ((fx= _g20560_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13423
                          _g20561_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20561_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13293
      (lambda (_stx13295_ _args13296_ _unchecked?13297_)
        (let* ((_g1330013326_
                (lambda (_g1330113323_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1330113323_)))
               (_g1329913333_ (lambda (_g1330113329_) ((lambda () '#f))))
               (_g1329813409_
                (lambda (_g1330113336_)
                  (if (gx#stx-pair? _g1330113336_)
                      (let ((_e1330413338_ (gx#stx-e _g1330113336_)))
                        (let ((_hd1330513341_ (##car _e1330413338_))
                              (_tl1330613343_ (##cdr _e1330413338_)))
                          (if (gx#stx-pair? _hd1330513341_)
                              (let ((_e1330713346_ (gx#stx-e _hd1330513341_)))
                                (let ((_hd1330813349_ (##car _e1330713346_))
                                      (_tl1330913351_ (##cdr _e1330713346_)))
                                  (if (gx#identifier? _hd1330813349_)
                                      (if (gx#stx-eq? '%#ref _hd1330813349_)
                                          (if (gx#stx-pair? _tl1330913351_)
                                              (let ((_e1331013354_
                                                     (gx#stx-e
                                                      _tl1330913351_)))
                                                (let ((_hd1331113357_
                                                       (##car _e1331013354_))
                                                      (_tl1331213359_
                                                       (##cdr _e1331013354_)))
                                                  (if (gx#stx-null?
                                                       _tl1331213359_)
                                                      (if (gx#stx-pair?
                                                           _tl1330613343_)
                                                          (let ((_e1331313362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1330613343_)))
                    (let ((_hd1331413365_ (##car _e1331313362_))
                          (_tl1331513367_ (##cdr _e1331313362_)))
                      (if (gx#stx-pair? _hd1331413365_)
                          (let ((_e1331613370_ (gx#stx-e _hd1331413365_)))
                            (let ((_hd1331713373_ (##car _e1331613370_))
                                  (_tl1331813375_ (##cdr _e1331613370_)))
                              (if (gx#identifier? _hd1331713373_)
                                  (if (gx#stx-eq? '%#quote _hd1331713373_)
                                      (if (gx#stx-pair? _tl1331813375_)
                                          (let ((_e1331913378_
                                                 (gx#stx-e _tl1331813375_)))
                                            (let ((_hd1332013381_
                                                   (##car _e1331913378_))
                                                  (_tl1332113383_
                                                   (##cdr _e1331913378_)))
                                              (if (gx#stx-null? _tl1332113383_)
                                                  (if (gx#stx-null?
                                                       _tl1331513367_)
                                                      ((lambda (_L13386_
                                                                _L13387_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13387_)
                                                          (gx#stx-e _L13386_)
                                                          _unchecked?13297_))
                                                       _hd1332013381_
                                                       _hd1331113357_)
                                                      (_g1329913333_
                                                       _g1330113336_))
                                                  (_g1329913333_
                                                   _g1330113336_))))
                                          (_g1329913333_ _g1330113336_))
                                      (_g1329913333_ _g1330113336_))
                                  (_g1329913333_ _g1330113336_))))
                          (_g1329913333_ _g1330113336_))))
                  (_g1329913333_ _g1330113336_))
              (_g1329913333_ _g1330113336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1329913333_ _g1330113336_))
                                          (_g1329913333_ _g1330113336_))
                                      (_g1329913333_ _g1330113336_))))
                              (_g1329913333_ _g1330113336_))))
                      (_g1329913333_ _g1330113336_)))))
          (_g1329813409_ _args13296_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx13415_ _args13416_)
          (let ((_unchecked?13418_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13293
             _stx13415_
             _args13416_
             _unchecked?13418_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20563_
          (let ((_g20562_ (length _g20563_)))
            (cond ((fx= _g20562_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20563_))
                  ((fx= _g20562_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13293
                          _g20563_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20563_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx13291_ _args13292_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13423
       _stx13291_
       _args13292_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx13288_ _args13289_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13293
       _stx13288_
       _args13289_
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
    (lambda (_stx13237_)
      (let* ((_g1323913252_
              (lambda (_g1324013249_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1324013249_)))
             (_g1323813285_
              (lambda (_g1324013255_)
                (if (gx#stx-pair? _g1324013255_)
                    (let ((_e1324213257_ (gx#stx-e _g1324013255_)))
                      (let ((_hd1324313260_ (##car _e1324213257_))
                            (_tl1324413262_ (##cdr _e1324213257_)))
                        (if (gx#stx-pair? _tl1324413262_)
                            (let ((_e1324513265_ (gx#stx-e _tl1324413262_)))
                              (let ((_hd1324613268_ (##car _e1324513265_))
                                    (_tl1324713270_ (##cdr _e1324513265_)))
                                (if (gx#stx-null? _tl1324713270_)
                                    ((lambda (_L13273_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L13273_)))
                                     _hd1324613268_)
                                    (_g1323913252_ _g1324013255_))))
                            (_g1323913252_ _g1324013255_))))
                    (_g1323913252_ _g1324013255_)))))
        (_g1323813285_ _stx13237_))))
  (define gxc#optimize-call%
    (lambda (_stx13143_)
      (let* ((_g1314613166_
              (lambda (_g1314713163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1314713163_)))
             (_g1314513173_
              (lambda (_g1314713169_)
                ((lambda () (gxc#xform-call% _stx13143_)))))
             (_g1314413234_
              (lambda (_g1314713176_)
                (if (gx#stx-pair? _g1314713176_)
                    (let ((_e1315013178_ (gx#stx-e _g1314713176_)))
                      (let ((_hd1315113181_ (##car _e1315013178_))
                            (_tl1315213183_ (##cdr _e1315013178_)))
                        (if (gx#stx-pair? _tl1315213183_)
                            (let ((_e1315313186_ (gx#stx-e _tl1315213183_)))
                              (let ((_hd1315413189_ (##car _e1315313186_))
                                    (_tl1315513191_ (##cdr _e1315313186_)))
                                (if (gx#stx-pair? _hd1315413189_)
                                    (let ((_e1315613194_
                                           (gx#stx-e _hd1315413189_)))
                                      (let ((_hd1315713197_
                                             (##car _e1315613194_))
                                            (_tl1315813199_
                                             (##cdr _e1315613194_)))
                                        (if (gx#identifier? _hd1315713197_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1315713197_)
                                                (if (gx#stx-pair?
                                                     _tl1315813199_)
                                                    (let ((_e1315913202_
                                                           (gx#stx-e
                                                            _tl1315813199_)))
                                                      (let ((_hd1316013205_
                                                             (##car _e1315913202_))
                                                            (_tl1316113207_
                                                             (##cdr _e1315913202_)))
                                                        (if (gx#stx-null?
                                                             _tl1316113207_)
                                                            ((lambda (_L13210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L13211_)
                       (let* ((_rator-id13229_
                               (gxc#generate-runtime-binding-id _L13211_))
                              (_rator-type13231_
                               (gxc#optimizer-resolve-type _rator-id13229_)))
                         (if (##structure-instance-of?
                              _rator-type13231_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id13229_
                                '" => "
                                _rator-type13231_
                                '" "
                                (##structure-ref
                                 _rator-type13231_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type13231_
                                'optimize-call
                                _stx13143_
                                _L13210_))
                             (if (not _rator-type13231_)
                                 (gxc#xform-call% _stx13143_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx13143_
                                  _rator-type13231_)))))
                     _tl1315513191_
                     _hd1316013205_)
                    (_g1314513173_ _g1314713176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1314513173_
                                                     _g1314713176_))
                                                (_g1314513173_ _g1314713176_))
                                            (_g1314513173_ _g1314713176_))))
                                    (_g1314513173_ _g1314713176_))))
                            (_g1314513173_ _g1314713176_))))
                    (_g1314513173_ _g1314713176_)))))
        (_g1314413234_ _stx13143_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12998_ _stx12999_ _args13000_)
      (let* ((_self1300113007_ _self12998_)
             (_E1300313011_
              (lambda () (error '"No clause matching" _self1300113007_)))
             (_K1300413135_
              (lambda (_struct-t13014_)
                (let* ((_struct-type13016_
                        (gxc#optimizer-resolve-type _struct-t13014_))
                       (_struct-type1301713031_ _struct-type13016_)
                       (_E1302113035_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1301713031_)))
                       (_else1302013039_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12999_
                           _struct-t13014_
                           _struct-type13016_)))
                       (_try-match1301913047_
                        (lambda ()
                          (let ((_K1302213044_
                                 (lambda () (gxc#xform-call% _stx12999_))))
                            (if (##eq? _struct-type1301713031_ '#f)
                                (_K1302213044_)
                                (_else1302013039_)))))
                       (_K1302313110_
                        (lambda (_plist13050_ _struct-type-id13051_)
                          (let* ((_g1305413064_
                                  (lambda (_g1305513061_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1305513061_)))
                                 (_g1305313071_
                                  (lambda (_g1305513067_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx12999_)))))
                                 (_g1305213107_
                                  (lambda (_g1305513074_)
                                    (if (gx#stx-pair? _g1305513074_)
                                        (let ((_e1305713076_
                                               (gx#stx-e _g1305513074_)))
                                          (let ((_hd1305813079_
                                                 (##car _e1305713076_))
                                                (_tl1305913081_
                                                 (##cdr _e1305713076_)))
                                            (if (gx#stx-null? _tl1305913081_)
                                                ((lambda (_L13084_)
                                                   (let ((_expr13104_
                                                          (gxc#compile-e
                                                           _L13084_))
                                                         (_op13105_
                                                          (if (if _plist13050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist13050_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op13105_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id13051_ '()))
                          (cons _expr13104_ '())))
              _stx12999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1305813079_)
                                                (_g1305313071_
                                                 _g1305513074_))))
                                        (_g1305313071_ _g1305513074_)))))
                            (_g1305213107_ _args13000_)))))
                  (if (##structure-instance-of?
                       _struct-type1301713031_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1302413113_
                              (##vector-ref _struct-type1301713031_ '1))
                             (_struct-type-id13116_ _e1302413113_)
                             (_e1302513118_
                              (##vector-ref _struct-type1301713031_ '2))
                             (_e1302613121_
                              (##vector-ref _struct-type1301713031_ '3))
                             (_e1302713124_
                              (##vector-ref _struct-type1301713031_ '4))
                             (_e1302813127_
                              (##vector-ref _struct-type1301713031_ '5))
                             (_e1302913130_
                              (##vector-ref _struct-type1301713031_ '6))
                             (_plist13133_ _e1302913130_))
                        (_K1302313110_ _plist13133_ _struct-type-id13116_))
                      (_try-match1301913047_))))))
        (if (##structure-instance-of?
             _self1300113007_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1300513138_ (##vector-ref _self1300113007_ '1))
                   (_struct-t13141_ _e1300513138_))
              (_K1300413135_ _struct-t13141_))
            (_E1300313011_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12894_ _stx12895_ _args12896_)
      (let* ((_self1289712903_ _self12894_)
             (_E1289912907_
              (lambda () (error '"No clause matching" _self1289712903_)))
             (_K1290012990_
              (lambda (_struct-t12910_)
                (let* ((_struct-type12912_
                        (gxc#optimizer-resolve-type _struct-t12910_))
                       (_struct-type1291312926_ _struct-type12912_)
                       (_E1291712930_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1291312926_)))
                       (_else1291612934_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx12895_
                           _struct-t12910_
                           _struct-type12912_)))
                       (_try-match1291512942_
                        (lambda ()
                          (let ((_K1291812939_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t12910_)
                                     (gxc#xform-call% _stx12895_)))))
                            (if (##eq? _struct-type1291312926_ '#f)
                                (_K1291812939_)
                                (_else1291612934_)))))
                       (_K1291912964_
                        (lambda (_ctor12945_
                                 _xfields12946_
                                 _fields12947_
                                 _type-id12948_)
                          (let* ((_args12950_ (map gxc#compile-e _args12896_))
                                 (_$e12952_
                                  (if _ctor12945_
                                      (if _xfields12946_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type12912_
                                           _ctor12945_)
                                          '#f)
                                      '#f)))
                            (if _$e12952_
                                ((lambda (_kons12955_)
                                   (let ((_$obj12957_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj12957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t12910_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields12947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields12946_)
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
                                    (cons (cons '%#ref (cons _kons12955_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj12957_ '()))
                                                _args12950_)))
                              _stx12895_))
                            (cons (cons '%#ref (cons _$obj12957_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx12895_)))
                                 _$e12952_)
                                (if (let ((_$e12959_ _ctor12945_))
                                      (if _$e12959_
                                          _$e12959_
                                          (not _xfields12946_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t12910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args12950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx12895_)
                                    (let ((_arity12962_
                                           (fx+ _fields12947_ _xfields12946_)))
                                      (if (fx= _arity12962_
                                               (length _args12950_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t12910_ '())) _args12950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx12895_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx12895_
                                           _struct-t12910_
                                           _arity12962_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1291312926_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1292012967_
                              (##vector-ref _struct-type1291312926_ '1))
                             (_type-id12970_ _e1292012967_)
                             (_e1292112972_
                              (##vector-ref _struct-type1291312926_ '2))
                             (_e1292212975_
                              (##vector-ref _struct-type1291312926_ '3))
                             (_fields12978_ _e1292212975_)
                             (_e1292312980_
                              (##vector-ref _struct-type1291312926_ '4))
                             (_xfields12983_ _e1292312980_)
                             (_e1292412985_
                              (##vector-ref _struct-type1291312926_ '5))
                             (_ctor12988_ _e1292412985_))
                        (_K1291912964_
                         _ctor12988_
                         _xfields12983_
                         _fields12978_
                         _type-id12970_))
                      (_try-match1291512942_))))))
        (if (##structure-instance-of?
             _self1289712903_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1290112993_ (##vector-ref _self1289712903_ '1))
                   (_struct-t12996_ _e1290112993_))
              (_K1290012990_ _struct-t12996_))
            (_E1289912907_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12728_ _stx12729_ _args12730_)
      (let* ((_self1273112739_ _self12728_)
             (_E1273312743_
              (lambda () (error '"No clause matching" _self1273112739_)))
             (_K1273412876_
              (lambda (_unchecked?12746_ _off12747_ _struct-t12748_)
                (let* ((_struct-type12750_
                        (gxc#optimizer-resolve-type _struct-t12748_))
                       (_struct-type1275112765_ _struct-type12750_)
                       (_E1275512769_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1275112765_)))
                       (_else1275412773_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12729_
                           _struct-t12748_
                           _struct-type12750_)))
                       (_try-match1275312781_
                        (lambda ()
                          (let ((_K1275612778_
                                 (lambda () (gxc#xform-call% _stx12729_))))
                            (if (##eq? _struct-type1275112765_ '#f)
                                (_K1275612778_)
                                (_else1275412773_)))))
                       (_K1275712847_
                        (lambda (_plist12784_
                                 _xfields12785_
                                 _fields12786_
                                 _struct-type-id12787_)
                          (if _xfields12785_
                              (let* ((_g1279012800_
                                      (lambda (_g1279112797_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1279112797_)))
                                     (_g1278912807_
                                      (lambda (_g1279112803_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx12729_)))))
                                     (_g1278812844_
                                      (lambda (_g1279112810_)
                                        (if (gx#stx-pair? _g1279112810_)
                                            (let ((_e1279312812_
                                                   (gx#stx-e _g1279112810_)))
                                              (let ((_hd1279412815_
                                                     (##car _e1279312812_))
                                                    (_tl1279512817_
                                                     (##cdr _e1279312812_)))
                                                (if (gx#stx-null?
                                                     _tl1279512817_)
                                                    ((lambda (_L12820_)
                                                       (let ((_expr12840_
                                                              (gxc#compile-e
                                                               _L12820_))
                                                             (_off12841_
                                                              (fx+ _off12747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields12785_
                           '1))
                     (_op12842_
                      (if _unchecked?12746_
                          '%#struct-unchecked-ref
                          (if (if _plist12784_
                                  (assgetq 'final: _plist12784_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op12842_
                        (cons (cons '%#ref (cons _struct-t12748_ '()))
                              (cons (cons '%#quote (cons _off12841_ '()))
                                    (cons _expr12840_ '()))))
                  _stx12729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1279412815_)
                                                    (_g1278912807_
                                                     _g1279112810_))))
                                            (_g1278912807_ _g1279112810_)))))
                                (_g1278812844_ _args12730_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id12787_)
                                (gxc#xform-call% _stx12729_))))))
                  (if (##structure-instance-of?
                       _struct-type1275112765_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1275812850_
                              (##vector-ref _struct-type1275112765_ '1))
                             (_struct-type-id12853_ _e1275812850_)
                             (_e1275912855_
                              (##vector-ref _struct-type1275112765_ '2))
                             (_e1276012858_
                              (##vector-ref _struct-type1275112765_ '3))
                             (_fields12861_ _e1276012858_)
                             (_e1276112863_
                              (##vector-ref _struct-type1275112765_ '4))
                             (_xfields12866_ _e1276112863_)
                             (_e1276212868_
                              (##vector-ref _struct-type1275112765_ '5))
                             (_e1276312871_
                              (##vector-ref _struct-type1275112765_ '6))
                             (_plist12874_ _e1276312871_))
                        (_K1275712847_
                         _plist12874_
                         _xfields12866_
                         _fields12861_
                         _struct-type-id12853_))
                      (_try-match1275312781_))))))
        (if (##structure-instance-of?
             _self1273112739_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1273512879_ (##vector-ref _self1273112739_ '1))
                   (_struct-t12882_ _e1273512879_)
                   (_e1273612884_ (##vector-ref _self1273112739_ '2))
                   (_off12887_ _e1273612884_)
                   (_e1273712889_ (##vector-ref _self1273112739_ '3))
                   (_unchecked?12892_ _e1273712889_))
              (_K1273412876_ _unchecked?12892_ _off12887_ _struct-t12882_))
            (_E1273312743_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12545_ _stx12546_ _args12547_)
      (let* ((_self1254812556_ _self12545_)
             (_E1255012560_
              (lambda () (error '"No clause matching" _self1254812556_)))
             (_K1255112710_
              (lambda (_unchecked?12563_ _off12564_ _struct-t12565_)
                (let* ((_struct-type12567_
                        (gxc#optimizer-resolve-type _struct-t12565_))
                       (_struct-type1256812582_ _struct-type12567_)
                       (_E1257212586_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1256812582_)))
                       (_else1257112590_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12546_
                           _struct-t12565_
                           _struct-type12567_)))
                       (_try-match1257012598_
                        (lambda ()
                          (let ((_K1257312595_
                                 (lambda () (gxc#xform-call% _stx12546_))))
                            (if (##eq? _struct-type1256812582_ '#f)
                                (_K1257312595_)
                                (_else1257112590_)))))
                       (_K1257412681_
                        (lambda (_plist12601_
                                 _xfields12602_
                                 _fields12603_
                                 _struct-type-id12604_)
                          (if _xfields12602_
                              (let* ((_g1260712621_
                                      (lambda (_g1260812618_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1260812618_)))
                                     (_g1260612628_
                                      (lambda (_g1260812624_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx12546_)))))
                                     (_g1260512678_
                                      (lambda (_g1260812631_)
                                        (if (gx#stx-pair? _g1260812631_)
                                            (let ((_e1261112633_
                                                   (gx#stx-e _g1260812631_)))
                                              (let ((_hd1261212636_
                                                     (##car _e1261112633_))
                                                    (_tl1261312638_
                                                     (##cdr _e1261112633_)))
                                                (if (gx#stx-pair?
                                                     _tl1261312638_)
                                                    (let ((_e1261412641_
                                                           (gx#stx-e
                                                            _tl1261312638_)))
                                                      (let ((_hd1261512644_
                                                             (##car _e1261412641_))
                                                            (_tl1261612646_
                                                             (##cdr _e1261412641_)))
                                                        (if (gx#stx-null?
                                                             _tl1261612646_)
                                                            ((lambda (_L12649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L12650_)
                       (let ((_expr12673_ (gxc#compile-e _L12650_))
                             (_val12674_ (gxc#compile-e _L12649_))
                             (_off12675_ (fx+ _off12564_ _xfields12602_ '1))
                             (_op12676_
                              (if _unchecked?12563_
                                  '%#struct-unchecked-set!
                                  (if (if _plist12601_
                                          (assgetq 'final: _plist12601_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op12676_
                                (cons (cons '%#ref (cons _struct-t12565_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off12675_ '()))
                                            (cons _expr12673_
                                                  (cons _val12674_ '())))))
                          _stx12546_)))
                     _hd1261512644_
                     _hd1261212636_)
                    (_g1260612628_ _g1260812631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1260612628_
                                                     _g1260812631_))))
                                            (_g1260612628_ _g1260812631_)))))
                                (_g1260512678_ _args12547_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id12604_)
                                (gxc#xform-call% _stx12546_))))))
                  (if (##structure-instance-of?
                       _struct-type1256812582_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1257512684_
                              (##vector-ref _struct-type1256812582_ '1))
                             (_struct-type-id12687_ _e1257512684_)
                             (_e1257612689_
                              (##vector-ref _struct-type1256812582_ '2))
                             (_e1257712692_
                              (##vector-ref _struct-type1256812582_ '3))
                             (_fields12695_ _e1257712692_)
                             (_e1257812697_
                              (##vector-ref _struct-type1256812582_ '4))
                             (_xfields12700_ _e1257812697_)
                             (_e1257912702_
                              (##vector-ref _struct-type1256812582_ '5))
                             (_e1258012705_
                              (##vector-ref _struct-type1256812582_ '6))
                             (_plist12708_ _e1258012705_))
                        (_K1257412681_
                         _plist12708_
                         _xfields12700_
                         _fields12695_
                         _struct-type-id12687_))
                      (_try-match1257012598_))))))
        (if (##structure-instance-of?
             _self1254812556_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1255212713_ (##vector-ref _self1254812556_ '1))
                   (_struct-t12716_ _e1255212713_)
                   (_e1255312718_ (##vector-ref _self1254812556_ '2))
                   (_off12721_ _e1255312718_)
                   (_e1255412723_ (##vector-ref _self1254812556_ '3))
                   (_unchecked?12726_ _e1255412723_))
              (_K1255112710_ _unchecked?12726_ _off12721_ _struct-t12716_))
            (_E1255012560_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self12501_ _stx12502_ _args12503_)
      (let* ((_self1250412513_ _self12501_)
             (_E1250612517_
              (lambda () (error '"No clause matching" _self1250412513_)))
             (_K1250712524_
              (lambda (_inline12520_ _dispatch12521_ _arity12522_)
                (begin
                  (if (gxc#!lambda-arity-match? _self12501_ _args12503_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx12502_
                       _arity12522_))
                  (if _inline12520_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline12520_ _stx12502_)
                          _stx12502_)))
                      (if _dispatch12521_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch12521_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch12521_ '()))
                                          _args12503_))
                              _stx12502_)))
                          (gxc#xform-call% _stx12502_)))))))
        (if (##structure-instance-of?
             _self1250412513_
             (##type-id gxc#!lambda::t))
            (let* ((_e1250812527_ (##vector-ref _self1250412513_ '1))
                   (_e1250912530_ (##vector-ref _self1250412513_ '2))
                   (_arity12533_ _e1250912530_)
                   (_e1251012535_ (##vector-ref _self1250412513_ '3))
                   (_dispatch12538_ _e1251012535_)
                   (_e1251112540_ (##vector-ref _self1250412513_ '4))
                   (_inline12543_ _e1251112540_))
              (_K1250712524_ _inline12543_ _dispatch12538_ _arity12533_))
            (_E1250612517_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self12462_ _stx12463_ _args12464_)
      (let* ((_self1246512472_ _self12462_)
             (_E1246712476_
              (lambda () (error '"No clause matching" _self1246512472_)))
             (_K1246812490_
              (lambda (_clauses12479_)
                (let ((_$e12485_
                       (find (lambda (_g1248012482_)
                               (gxc#!lambda-arity-match?
                                _g1248012482_
                                _args12464_))
                             _clauses12479_)))
                  (if _$e12485_
                      ((lambda (_clause12488_)
                         (call-method
                          _clause12488_
                          'optimize-call
                          _stx12463_
                          _args12464_))
                       _$e12485_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx12463_
                       (map gxc#!lambda-arity _clauses12479_)))))))
        (if (##structure-instance-of?
             _self1246512472_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1246912493_ (##vector-ref _self1246512472_ '1))
                   (_e1247012496_ (##vector-ref _self1246512472_ '2))
                   (_clauses12499_ _e1247012496_))
              (_K1246812490_ _clauses12499_))
            (_E1246712476_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self12398_ _args12399_)
      (let* ((_self1240012407_ _self12398_)
             (_E1240212411_
              (lambda () (error '"No clause matching" _self1240012407_)))
             (_K1240312451_
              (lambda (_arity12414_)
                (let* ((_arity1241512424_ _arity12414_)
                       (_E1241812428_
                        (lambda ()
                          (error '"No clause matching" _arity1241512424_)))
                       (_try-match1241712444_
                        (lambda ()
                          (let ((_K1241912434_
                                 (lambda (_arity12432_)
                                   (fx>= (length _args12399_) _arity12432_))))
                            (if (##pair? _arity1241512424_)
                                (let ((_hd1242012437_
                                       (##car _arity1241512424_))
                                      (_tl1242112439_
                                       (##cdr _arity1241512424_)))
                                  (let ((_arity12442_ _hd1242012437_))
                                    (if (##null? _tl1242112439_)
                                        (_K1241912434_ _arity12442_)
                                        (_E1241812428_))))
                                (_E1241812428_)))))
                       (_K1242212448_
                        (lambda () (fx= (length _args12399_) _arity12414_))))
                  (if (fixnum? _arity1241512424_)
                      (_K1242212448_)
                      (_try-match1241712444_))))))
        (if (##structure-instance-of?
             _self1240012407_
             (##type-id gxc#!lambda::t))
            (let* ((_e1240412454_ (##vector-ref _self1240012407_ '1))
                   (_e1240512457_ (##vector-ref _self1240012407_ '2))
                   (_arity12460_ _e1240512457_))
              (_K1240312451_ _arity12460_))
            (_E1240212411_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx12338_)
      (let* ((_g1234012354_
              (lambda (_g1234112351_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1234112351_)))
             (_g1233912395_
              (lambda (_g1234112357_)
                (if (gx#stx-pair? _g1234112357_)
                    (let ((_e1234412359_ (gx#stx-e _g1234112357_)))
                      (let ((_hd1234512362_ (##car _e1234412359_))
                            (_tl1234612364_ (##cdr _e1234412359_)))
                        (if (gx#stx-pair? _tl1234612364_)
                            (let ((_e1234712367_ (gx#stx-e _tl1234612364_)))
                              (let ((_hd1234812370_ (##car _e1234712367_))
                                    (_tl1234912372_ (##cdr _e1234712367_)))
                                ((lambda (_L12375_ _L12376_)
                                   (let* ((_ctx12389_
                                           (gx#syntax-local-e__0 _L12376_))
                                          (_code12391_
                                           (##structure-ref
                                            _ctx12389_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code12391_))
                                      gx#current-expander-context
                                      _ctx12389_)))
                                 _tl1234912372_
                                 _hd1234812370_)))
                            (_g1234012354_ _g1234112357_))))
                    (_g1234012354_ _g1234112357_)))))
        (_g1233912395_ _stx12338_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx12148_)
      (letrec ((_generate-e12150_
                (lambda (_id12327_)
                  (let* ((_sym12329_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id12327_)
                              '#f))
                         (_$e12331_
                          (if _sym12329_
                              (gxc#optimizer-lookup-type _sym12329_)
                              '#f)))
                    (if _$e12331_
                        ((lambda (_type12334_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym12329_)
                             (let ((_typedecl12336_
                                    (call-method _type12334_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym12329_
                                           (cons _typedecl12336_ '()))))))
                         _$e12331_)
                        '(begin))))))
        (let* ((_g1215312191_
                (lambda (_g1215412188_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1215412188_)))
               (_g1215212272_
                (lambda (_g1215412194_)
                  (if (gx#stx-pair? _g1215412194_)
                      (let ((_e1216912196_ (gx#stx-e _g1215412194_)))
                        (let ((_hd1217012199_ (##car _e1216912196_))
                              (_tl1217112201_ (##cdr _e1216912196_)))
                          (if (gx#stx-pair? _tl1217112201_)
                              (let ((_e1217212204_ (gx#stx-e _tl1217112201_)))
                                (let ((_hd1217312207_ (##car _e1217212204_))
                                      (_tl1217412209_ (##cdr _e1217212204_)))
                                  (if (gx#stx-pair/null? _hd1217312207_)
                                      (if (fx>= (gx#stx-length _hd1217312207_)
                                                '0)
                                          (let ((_g20564_
                                                 (gx#syntax-split-splice
                                                  _hd1217312207_
                                                  '0)))
                                            (begin
                                              (let ((_g20565_
                                                     (values-count _g20564_)))
                                                (if (not (fx= _g20565_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20565_)))
                                              (let ((_target1217512212_
                                                     (values-ref _g20564_ 0))
                                                    (_tl1217712214_
                                                     (values-ref _g20564_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1217712214_)
                                                    (letrec ((_loop1217812217_
                                                              (lambda (_hd1217612220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1218212222_)
                        (if (gx#stx-pair? _hd1217612220_)
                            (let ((_e1217912225_ (gx#stx-e _hd1217612220_)))
                              (let ((_lp-hd1218012228_ (##car _e1217912225_))
                                    (_lp-tl1218112230_ (##cdr _e1217912225_)))
                                (_loop1217812217_
                                 _lp-tl1218112230_
                                 (cons _lp-hd1218012228_ _id1218212222_))))
                            (let ((_id1218312233_ (reverse _id1218212222_)))
                              (if (gx#stx-pair? _tl1217412209_)
                                  (let ((_e1218412236_
                                         (gx#stx-e _tl1217412209_)))
                                    (let ((_hd1218512239_
                                           (##car _e1218412236_))
                                          (_tl1218612241_
                                           (##cdr _e1218412236_)))
                                      (if (gx#stx-null? _tl1218612241_)
                                          ((lambda (_L12244_)
                                             (let ((_types12270_
                                                    (map _generate-e12150_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1226212265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1226312267_)
                             (cons _g1226212265_ _g1226312267_))
                           '()
                           _L12244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types12270_)))
                                           _id1218312233_)
                                          (_g1215312191_ _g1215412194_))))
                                  (_g1215312191_ _g1215412194_)))))))
              (_loop1217812217_ _target1217512212_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1215312191_
                                                     _g1215412194_)))))
                                          (_g1215312191_ _g1215412194_))
                                      (_g1215312191_ _g1215412194_))))
                              (_g1215312191_ _g1215412194_))))
                      (_g1215312191_ _g1215412194_))))
               (_g1215112324_
                (lambda (_g1215412275_)
                  (if (gx#stx-pair? _g1215412275_)
                      (let ((_e1215612277_ (gx#stx-e _g1215412275_)))
                        (let ((_hd1215712280_ (##car _e1215612277_))
                              (_tl1215812282_ (##cdr _e1215612277_)))
                          (if (gx#stx-pair? _tl1215812282_)
                              (let ((_e1215912285_ (gx#stx-e _tl1215812282_)))
                                (let ((_hd1216012288_ (##car _e1215912285_))
                                      (_tl1216112290_ (##cdr _e1215912285_)))
                                  (if (gx#stx-pair? _hd1216012288_)
                                      (let ((_e1216212293_
                                             (gx#stx-e _hd1216012288_)))
                                        (let ((_hd1216312296_
                                               (##car _e1216212293_))
                                              (_tl1216412298_
                                               (##cdr _e1216212293_)))
                                          (if (gx#stx-null? _tl1216412298_)
                                              (if (gx#stx-pair? _tl1216112290_)
                                                  (let ((_e1216512301_
                                                         (gx#stx-e
                                                          _tl1216112290_)))
                                                    (let ((_hd1216612304_
                                                           (##car _e1216512301_))
                                                          (_tl1216712306_
                                                           (##cdr _e1216512301_)))
                                                      (if (gx#stx-null?
                                                           _tl1216712306_)
                                                          ((lambda (_L12309_)
                                                             (_generate-e12150_
                                                              _L12309_))
                                                           _hd1216312296_)
                                                          (_g1215212272_
                                                           _g1215412275_))))
                                                  (_g1215212272_
                                                   _g1215412275_))
                                              (_g1215212272_ _g1215412275_))))
                                      (_g1215212272_ _g1215412275_))))
                              (_g1215212272_ _g1215412275_))))
                      (_g1215212272_ _g1215412275_)))))
          (_g1215112324_ _stx12148_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11702_)
      (let* ((_g1170611808_
              (lambda (_g1170711805_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1170711805_)))
             (_g1170511815_ (lambda (_g1170711811_) ((lambda () '(begin)))))
             (_g1170411965_
              (lambda (_g1170711818_)
                (if (gx#stx-pair? _g1170711818_)
                    (let ((_e1176511820_ (gx#stx-e _g1170711818_)))
                      (let ((_hd1176611823_ (##car _e1176511820_))
                            (_tl1176711825_ (##cdr _e1176511820_)))
                        (if (gx#stx-pair? _tl1176711825_)
                            (let ((_e1176811828_ (gx#stx-e _tl1176711825_)))
                              (let ((_hd1176911831_ (##car _e1176811828_))
                                    (_tl1177011833_ (##cdr _e1176811828_)))
                                (if (gx#stx-pair? _hd1176911831_)
                                    (let ((_e1177111836_
                                           (gx#stx-e _hd1176911831_)))
                                      (let ((_hd1177211839_
                                             (##car _e1177111836_))
                                            (_tl1177311841_
                                             (##cdr _e1177111836_)))
                                        (if (gx#identifier? _hd1177211839_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1177211839_)
                                                (if (gx#stx-pair?
                                                     _tl1177311841_)
                                                    (let ((_e1177411844_
                                                           (gx#stx-e
                                                            _tl1177311841_)))
                                                      (let ((_hd1177511847_
                                                             (##car _e1177411844_))
                                                            (_tl1177611849_
                                                             (##cdr _e1177411844_)))
                                                        (if (gx#stx-null?
                                                             _tl1177611849_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1177011833_)
                        (let ((_e1177711852_ (gx#stx-e _tl1177011833_)))
                          (let ((_hd1177811855_ (##car _e1177711852_))
                                (_tl1177911857_ (##cdr _e1177711852_)))
                            (if (gx#stx-pair? _hd1177811855_)
                                (let ((_e1178011860_
                                       (gx#stx-e _hd1177811855_)))
                                  (let ((_hd1178111863_ (##car _e1178011860_))
                                        (_tl1178211865_ (##cdr _e1178011860_)))
                                    (if (gx#identifier? _hd1178111863_)
                                        (if (gx#stx-eq? '%#ref _hd1178111863_)
                                            (if (gx#stx-pair? _tl1178211865_)
                                                (let ((_e1178311868_
                                                       (gx#stx-e
                                                        _tl1178211865_)))
                                                  (let ((_hd1178411871_
                                                         (##car _e1178311868_))
                                                        (_tl1178511873_
                                                         (##cdr _e1178311868_)))
                                                    (if (gx#stx-null?
                                                         _tl1178511873_)
                                                        (if (gx#stx-pair?
                                                             _tl1177911857_)
                                                            (let ((_e1178611876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1177911857_)))
                      (let ((_hd1178711879_ (##car _e1178611876_))
                            (_tl1178811881_ (##cdr _e1178611876_)))
                        (if (gx#stx-pair? _hd1178711879_)
                            (let ((_e1178911884_ (gx#stx-e _hd1178711879_)))
                              (let ((_hd1179011887_ (##car _e1178911884_))
                                    (_tl1179111889_ (##cdr _e1178911884_)))
                                (if (gx#identifier? _hd1179011887_)
                                    (if (gx#stx-eq? '%#quote _hd1179011887_)
                                        (if (gx#stx-pair? _tl1179111889_)
                                            (let ((_e1179211892_
                                                   (gx#stx-e _tl1179111889_)))
                                              (let ((_hd1179311895_
                                                     (##car _e1179211892_))
                                                    (_tl1179411897_
                                                     (##cdr _e1179211892_)))
                                                (if (gx#stx-null?
                                                     _tl1179411897_)
                                                    (if (gx#stx-pair?
                                                         _tl1178811881_)
                                                        (let ((_e1179511900_
                                                               (gx#stx-e
                                                                _tl1178811881_)))
                                                          (let ((_hd1179611903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1179511900_))
                        (_tl1179711905_ (##cdr _e1179511900_)))
                    (if (gx#stx-pair? _hd1179611903_)
                        (let ((_e1179811908_ (gx#stx-e _hd1179611903_)))
                          (let ((_hd1179911911_ (##car _e1179811908_))
                                (_tl1180011913_ (##cdr _e1179811908_)))
                            (if (gx#identifier? _hd1179911911_)
                                (if (gx#stx-eq? '%#ref _hd1179911911_)
                                    (if (gx#stx-pair? _tl1180011913_)
                                        (let ((_e1180111916_
                                               (gx#stx-e _tl1180011913_)))
                                          (let ((_hd1180211919_
                                                 (##car _e1180111916_))
                                                (_tl1180311921_
                                                 (##cdr _e1180111916_)))
                                            (if (gx#stx-null? _tl1180311921_)
                                                (if (gx#stx-null?
                                                     _tl1179711905_)
                                                    ((lambda (_L11924_
                                                              _L11925_
                                                              _L11926_
                                                              _L11927_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L11926_)
                               (cons (gx#stx-e _L11925_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L11924_)
                                           (cons '#f '())))))
                   (_g1170511815_ _g1170711818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1180211919_
                                                     _hd1179311895_
                                                     _hd1178411871_
                                                     _hd1177511847_)
                                                    (_g1170511815_
                                                     _g1170711818_))
                                                (_g1170511815_
                                                 _g1170711818_))))
                                        (_g1170511815_ _g1170711818_))
                                    (_g1170511815_ _g1170711818_))
                                (_g1170511815_ _g1170711818_))))
                        (_g1170511815_ _g1170711818_))))
                (_g1170511815_ _g1170711818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1170511815_
                                                     _g1170711818_))))
                                            (_g1170511815_ _g1170711818_))
                                        (_g1170511815_ _g1170711818_))
                                    (_g1170511815_ _g1170711818_))))
                            (_g1170511815_ _g1170711818_))))
                    (_g1170511815_ _g1170711818_))
                (_g1170511815_ _g1170711818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1170511815_ _g1170711818_))
                                            (_g1170511815_ _g1170711818_))
                                        (_g1170511815_ _g1170711818_))))
                                (_g1170511815_ _g1170711818_))))
                        (_g1170511815_ _g1170711818_))
                    (_g1170511815_ _g1170711818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1170511815_
                                                     _g1170711818_))
                                                (_g1170511815_ _g1170711818_))
                                            (_g1170511815_ _g1170711818_))))
                                    (_g1170511815_ _g1170711818_))))
                            (_g1170511815_ _g1170711818_))))
                    (_g1170511815_ _g1170711818_))))
             (_g1170312145_
              (lambda (_g1170711968_)
                (if (gx#stx-pair? _g1170711968_)
                    (let ((_e1171311970_ (gx#stx-e _g1170711968_)))
                      (let ((_hd1171411973_ (##car _e1171311970_))
                            (_tl1171511975_ (##cdr _e1171311970_)))
                        (if (gx#stx-pair? _tl1171511975_)
                            (let ((_e1171611978_ (gx#stx-e _tl1171511975_)))
                              (let ((_hd1171711981_ (##car _e1171611978_))
                                    (_tl1171811983_ (##cdr _e1171611978_)))
                                (if (gx#stx-pair? _hd1171711981_)
                                    (let ((_e1171911986_
                                           (gx#stx-e _hd1171711981_)))
                                      (let ((_hd1172011989_
                                             (##car _e1171911986_))
                                            (_tl1172111991_
                                             (##cdr _e1171911986_)))
                                        (if (gx#identifier? _hd1172011989_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1172011989_)
                                                (if (gx#stx-pair?
                                                     _tl1172111991_)
                                                    (let ((_e1172211994_
                                                           (gx#stx-e
                                                            _tl1172111991_)))
                                                      (let ((_hd1172311997_
                                                             (##car _e1172211994_))
                                                            (_tl1172411999_
                                                             (##cdr _e1172211994_)))
                                                        (if (gx#stx-null?
                                                             _tl1172411999_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1171811983_)
                        (let ((_e1172512002_ (gx#stx-e _tl1171811983_)))
                          (let ((_hd1172612005_ (##car _e1172512002_))
                                (_tl1172712007_ (##cdr _e1172512002_)))
                            (if (gx#stx-pair? _hd1172612005_)
                                (let ((_e1172812010_
                                       (gx#stx-e _hd1172612005_)))
                                  (let ((_hd1172912013_ (##car _e1172812010_))
                                        (_tl1173012015_ (##cdr _e1172812010_)))
                                    (if (gx#identifier? _hd1172912013_)
                                        (if (gx#stx-eq? '%#ref _hd1172912013_)
                                            (if (gx#stx-pair? _tl1173012015_)
                                                (let ((_e1173112018_
                                                       (gx#stx-e
                                                        _tl1173012015_)))
                                                  (let ((_hd1173212021_
                                                         (##car _e1173112018_))
                                                        (_tl1173312023_
                                                         (##cdr _e1173112018_)))
                                                    (if (gx#stx-null?
                                                         _tl1173312023_)
                                                        (if (gx#stx-pair?
                                                             _tl1172712007_)
                                                            (let ((_e1173412026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1172712007_)))
                      (let ((_hd1173512029_ (##car _e1173412026_))
                            (_tl1173612031_ (##cdr _e1173412026_)))
                        (if (gx#stx-pair? _hd1173512029_)
                            (let ((_e1173712034_ (gx#stx-e _hd1173512029_)))
                              (let ((_hd1173812037_ (##car _e1173712034_))
                                    (_tl1173912039_ (##cdr _e1173712034_)))
                                (if (gx#identifier? _hd1173812037_)
                                    (if (gx#stx-eq? '%#quote _hd1173812037_)
                                        (if (gx#stx-pair? _tl1173912039_)
                                            (let ((_e1174012042_
                                                   (gx#stx-e _tl1173912039_)))
                                              (let ((_hd1174112045_
                                                     (##car _e1174012042_))
                                                    (_tl1174212047_
                                                     (##cdr _e1174012042_)))
                                                (if (gx#stx-null?
                                                     _tl1174212047_)
                                                    (if (gx#stx-pair?
                                                         _tl1173612031_)
                                                        (let ((_e1174312050_
                                                               (gx#stx-e
                                                                _tl1173612031_)))
                                                          (let ((_hd1174412053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1174312050_))
                        (_tl1174512055_ (##cdr _e1174312050_)))
                    (if (gx#stx-pair? _hd1174412053_)
                        (let ((_e1174612058_ (gx#stx-e _hd1174412053_)))
                          (let ((_hd1174712061_ (##car _e1174612058_))
                                (_tl1174812063_ (##cdr _e1174612058_)))
                            (if (gx#identifier? _hd1174712061_)
                                (if (gx#stx-eq? '%#ref _hd1174712061_)
                                    (if (gx#stx-pair? _tl1174812063_)
                                        (let ((_e1174912066_
                                               (gx#stx-e _tl1174812063_)))
                                          (let ((_hd1175012069_
                                                 (##car _e1174912066_))
                                                (_tl1175112071_
                                                 (##cdr _e1174912066_)))
                                            (if (gx#stx-null? _tl1175112071_)
                                                (if (gx#stx-pair?
                                                     _tl1174512055_)
                                                    (let ((_e1175212074_
                                                           (gx#stx-e
                                                            _tl1174512055_)))
                                                      (let ((_hd1175312077_
                                                             (##car _e1175212074_))
                                                            (_tl1175412079_
                                                             (##cdr _e1175212074_)))
                                                        (if (gx#stx-pair?
                                                             _hd1175312077_)
                                                            (let ((_e1175512082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1175312077_)))
                      (let ((_hd1175612085_ (##car _e1175512082_))
                            (_tl1175712087_ (##cdr _e1175512082_)))
                        (if (gx#identifier? _hd1175612085_)
                            (if (gx#stx-eq? '%#quote _hd1175612085_)
                                (if (gx#stx-pair? _tl1175712087_)
                                    (let ((_e1175812090_
                                           (gx#stx-e _tl1175712087_)))
                                      (let ((_hd1175912093_
                                             (##car _e1175812090_))
                                            (_tl1176012095_
                                             (##cdr _e1175812090_)))
                                        (if (gx#stx-null? _tl1176012095_)
                                            (if (gx#stx-null? _tl1175412079_)
                                                ((lambda (_L12098_
                                                          _L12099_
                                                          _L12100_
                                                          _L12101_
                                                          _L12102_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L12102_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12101_)
                           (cons (gx#stx-e _L12100_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L12099_)
                                       (cons (gx#stx-e _L12098_) '())))))
               (_g1170411965_ _g1170711968_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1175912093_
                                                 _hd1175012069_
                                                 _hd1174112045_
                                                 _hd1173212021_
                                                 _hd1172311997_)
                                                (_g1170411965_ _g1170711968_))
                                            (_g1170411965_ _g1170711968_))))
                                    (_g1170411965_ _g1170711968_))
                                (_g1170411965_ _g1170711968_))
                            (_g1170411965_ _g1170711968_))))
                    (_g1170411965_ _g1170711968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1170411965_
                                                     _g1170711968_))
                                                (_g1170411965_
                                                 _g1170711968_))))
                                        (_g1170411965_ _g1170711968_))
                                    (_g1170411965_ _g1170711968_))
                                (_g1170411965_ _g1170711968_))))
                        (_g1170411965_ _g1170711968_))))
                (_g1170411965_ _g1170711968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1170411965_
                                                     _g1170711968_))))
                                            (_g1170411965_ _g1170711968_))
                                        (_g1170411965_ _g1170711968_))
                                    (_g1170411965_ _g1170711968_))))
                            (_g1170411965_ _g1170711968_))))
                    (_g1170411965_ _g1170711968_))
                (_g1170411965_ _g1170711968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1170411965_ _g1170711968_))
                                            (_g1170411965_ _g1170711968_))
                                        (_g1170411965_ _g1170711968_))))
                                (_g1170411965_ _g1170711968_))))
                        (_g1170411965_ _g1170711968_))
                    (_g1170411965_ _g1170711968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1170411965_
                                                     _g1170711968_))
                                                (_g1170411965_ _g1170711968_))
                                            (_g1170411965_ _g1170711968_))))
                                    (_g1170411965_ _g1170711968_))))
                            (_g1170411965_ _g1170711968_))))
                    (_g1170411965_ _g1170711968_)))))
        (_g1170312145_ _stx11702_))))
  (define gxc#!alias::typedecl
    (lambda (_self11678_)
      (let* ((_self1167911685_ _self11678_)
             (_E1168111689_
              (lambda () (error '"No clause matching" _self1167911685_)))
             (_K1168211694_
              (lambda (_alias-id11692_)
                (cons '@alias (cons _alias-id11692_ '())))))
        (if (##structure-instance-of?
             _self1167911685_
             (##type-id gxc#!alias::t))
            (let* ((_e1168311697_ (##vector-ref _self1167911685_ '1))
                   (_alias-id11700_ _e1168311697_))
              (_K1168211694_ _alias-id11700_))
            (_E1168111689_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11622_)
      (let* ((_self1162311634_ _self11622_)
             (_E1162511638_
              (lambda () (error '"No clause matching" _self1162311634_)))
             (_K1162611647_
              (lambda (_plist11641_
                       _ctor11642_
                       _fields11643_
                       _super11644_
                       _type-id11645_)
                (cons '@struct-type
                      (cons _type-id11645_
                            (cons _super11644_
                                  (cons _fields11643_
                                        (cons _ctor11642_
                                              (cons _plist11641_ '())))))))))
        (if (##structure-instance-of?
             _self1162311634_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1162711650_ (##vector-ref _self1162311634_ '1))
                   (_type-id11653_ _e1162711650_)
                   (_e1162811655_ (##vector-ref _self1162311634_ '2))
                   (_super11658_ _e1162811655_)
                   (_e1162911660_ (##vector-ref _self1162311634_ '3))
                   (_fields11663_ _e1162911660_)
                   (_e1163011665_ (##vector-ref _self1162311634_ '4))
                   (_e1163111668_ (##vector-ref _self1162311634_ '5))
                   (_ctor11671_ _e1163111668_)
                   (_e1163211673_ (##vector-ref _self1162311634_ '6))
                   (_plist11676_ _e1163211673_))
              (_K1162611647_
               _plist11676_
               _ctor11671_
               _fields11663_
               _super11658_
               _type-id11653_))
            (_E1162511638_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11598_)
      (let* ((_self1159911605_ _self11598_)
             (_E1160111609_
              (lambda () (error '"No clause matching" _self1159911605_)))
             (_K1160211614_
              (lambda (_struct-t11612_)
                (cons '@struct-pred (cons _struct-t11612_ '())))))
        (if (##structure-instance-of?
             _self1159911605_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1160311617_ (##vector-ref _self1159911605_ '1))
                   (_struct-t11620_ _e1160311617_))
              (_K1160211614_ _struct-t11620_))
            (_E1160111609_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11574_)
      (let* ((_self1157511581_ _self11574_)
             (_E1157711585_
              (lambda () (error '"No clause matching" _self1157511581_)))
             (_K1157811590_
              (lambda (_struct-t11588_)
                (cons '@struct-cons (cons _struct-t11588_ '())))))
        (if (##structure-instance-of?
             _self1157511581_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1157911593_ (##vector-ref _self1157511581_ '1))
                   (_struct-t11596_ _e1157911593_))
              (_K1157811590_ _struct-t11596_))
            (_E1157711585_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11536_)
      (let* ((_self1153711545_ _self11536_)
             (_E1153911549_
              (lambda () (error '"No clause matching" _self1153711545_)))
             (_K1154011556_
              (lambda (_unchecked?11552_ _off11553_ _struct-t11554_)
                (cons '@struct-getf
                      (cons _struct-t11554_
                            (cons _off11553_ (cons _unchecked?11552_ '())))))))
        (if (##structure-instance-of?
             _self1153711545_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1154111559_ (##vector-ref _self1153711545_ '1))
                   (_struct-t11562_ _e1154111559_)
                   (_e1154211564_ (##vector-ref _self1153711545_ '2))
                   (_off11567_ _e1154211564_)
                   (_e1154311569_ (##vector-ref _self1153711545_ '3))
                   (_unchecked?11572_ _e1154311569_))
              (_K1154011556_ _unchecked?11572_ _off11567_ _struct-t11562_))
            (_E1153911549_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self11498_)
      (let* ((_self1149911507_ _self11498_)
             (_E1150111511_
              (lambda () (error '"No clause matching" _self1149911507_)))
             (_K1150211518_
              (lambda (_unchecked?11514_ _off11515_ _struct-t11516_)
                (cons '@struct-setf
                      (cons _struct-t11516_
                            (cons _off11515_ (cons _unchecked?11514_ '())))))))
        (if (##structure-instance-of?
             _self1149911507_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1150311521_ (##vector-ref _self1149911507_ '1))
                   (_struct-t11524_ _e1150311521_)
                   (_e1150411526_ (##vector-ref _self1149911507_ '2))
                   (_off11529_ _e1150411526_)
                   (_e1150511531_ (##vector-ref _self1149911507_ '3))
                   (_unchecked?11534_ _e1150511531_))
              (_K1150211518_ _unchecked?11534_ _off11529_ _struct-t11524_))
            (_E1150111511_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self11446_)
      (let* ((_self1144711457_ _self11446_)
             (_E1144911461_
              (lambda () (error '"No clause matching" _self1144711457_)))
             (_K1145011472_
              (lambda (_typedecl11464_
                       _inline11465_
                       _dispatch11466_
                       _arity11467_)
                (if _inline11465_
                    (let ((_$e11469_ _typedecl11464_))
                      (if _$e11469_
                          _$e11469_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity11467_ (cons _dispatch11466_ '())))))))
        (if (##structure-instance-of?
             _self1144711457_
             (##type-id gxc#!lambda::t))
            (let* ((_e1145111475_ (##vector-ref _self1144711457_ '1))
                   (_e1145211478_ (##vector-ref _self1144711457_ '2))
                   (_arity11481_ _e1145211478_)
                   (_e1145311483_ (##vector-ref _self1144711457_ '3))
                   (_dispatch11486_ _e1145311483_)
                   (_e1145411488_ (##vector-ref _self1144711457_ '4))
                   (_inline11491_ _e1145411488_)
                   (_e1145511493_ (##vector-ref _self1144711457_ '5))
                   (_typedecl11496_ _e1145511493_))
              (_K1145011472_
               _typedecl11496_
               _inline11491_
               _dispatch11486_
               _arity11481_))
            (_E1144911461_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self11379_)
      (letrec ((_clause-e11381_
                (lambda (_clause11411_)
                  (let* ((_clause1141211420_ _clause11411_)
                         (_E1141411424_
                          (lambda ()
                            (error '"No clause matching" _clause1141211420_)))
                         (_K1141511430_
                          (lambda (_dispatch11427_ _arity11428_)
                            (cons _arity11428_ (cons _dispatch11427_ '())))))
                    (if (##structure-instance-of?
                         _clause1141211420_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1141611433_
                                (##vector-ref _clause1141211420_ '1))
                               (_e1141711436_
                                (##vector-ref _clause1141211420_ '2))
                               (_arity11439_ _e1141711436_)
                               (_e1141811441_
                                (##vector-ref _clause1141211420_ '3))
                               (_dispatch11444_ _e1141811441_))
                          (_K1141511430_ _dispatch11444_ _arity11439_))
                        (_E1141411424_))))))
        (let* ((_self1138211389_ _self11379_)
               (_E1138411393_
                (lambda () (error '"No clause matching" _self1138211389_)))
               (_K1138511400_
                (lambda (_clauses11396_)
                  (let ((_clauses11398_ (map _clause-e11381_ _clauses11396_)))
                    (cons '@case-lambda _clauses11398_)))))
          (if (##structure-instance-of?
               _self1138211389_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1138611403_ (##vector-ref _self1138211389_ '1))
                     (_e1138711406_ (##vector-ref _self1138211389_ '2))
                     (_clauses11409_ _e1138711406_))
                (_K1138511400_ _clauses11409_))
              (_E1138411393_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx11377_) (gxc#generate-runtime-binding-id _stx11377_))))
