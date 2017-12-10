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
    (lambda _$args20379_
      (apply make-struct-instance gxc#optimizer-info::t _$args20379_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self20377_)
      (struct-instance-init!
       _self20377_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj20391 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj20391) __obj20391))))))
  (define gxc#optimize!
    (lambda (_ctx20371_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx20371_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx20371_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code20374_
                  (gxc#optimize-source
                   (##structure-ref _ctx20371_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx20371_
              _code20374_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx20316_)
      (letrec* ((_deps20318_
                 (let* ((_imports20362_
                         (##structure-ref
                          _ctx20316_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e20364_
                         (gx#core-context-prelude__opt-lambda11411
                          _ctx20316_)))
                   (if _$e20364_
                       ((lambda (_g2036620368_)
                          (cons _g2036620368_ _imports20362_))
                        _$e20364_)
                       _imports20362_))))
        (let _lp20320_ ((_rest20322_ _deps20318_))
          (let* ((_rest2032320331_ _rest20322_)
                 (_E2032620335_
                  (lambda () (error '"No clause matching" _rest2032320331_)))
                 (_else2032520339_ (lambda () '#!void))
                 (_K2032720350_
                  (lambda (_rest20342_ _hd20343_)
                    (if (##structure-instance-of?
                         _hd20343_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd20343_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e20345_
                                       (gx#core-context-prelude__opt-lambda11411
                                        _hd20343_)))
                                  (if _$e20345_
                                      ((lambda (_pre20348_)
                                         (_lp20320_
                                          (cons _pre20348_
                                                (##structure-ref
                                                 _hd20343_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e20345_)
                                      (_lp20320_
                                       (##structure-ref
                                        _hd20343_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd20343_)))
                          (_lp20320_ _rest20342_))
                        (if (##structure-instance-of?
                             _hd20343_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd20343_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp20320_
                                     (##structure-ref
                                      _hd20343_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd20343_)))
                              (_lp20320_ _rest20342_))
                            (if (##structure-direct-instance-of?
                                 _hd20343_
                                 'gx#module-import::t)
                                (_lp20320_
                                 (cons (##direct-structure-ref
                                        _hd20343_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest20342_))
                                (if (##structure-direct-instance-of?
                                     _hd20343_
                                     'gx#module-export::t)
                                    (_lp20320_
                                     (cons (##direct-structure-ref
                                            _hd20343_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest20342_))
                                    (if (##structure-direct-instance-of?
                                         _hd20343_
                                         'gx#import-set::t)
                                        (_lp20320_
                                         (cons (##direct-structure-ref
                                                _hd20343_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest20342_))
                                        (error '"Unexpected module import"
                                               _hd20343_)))))))))
            (if (##pair? _rest2032320331_)
                (let ((_hd2032820353_ (##car _rest2032320331_))
                      (_tl2032920355_ (##cdr _rest2032320331_)))
                  (let* ((_hd20358_ _hd2032820353_)
                         (_rest20360_ _tl2032920355_))
                    (_K2032720350_ _rest20360_ _hd20358_)))
                (_else2032520339_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx20296_)
      (if (if (##structure-instance-of? _ctx20296_ 'gx#module-context::t)
              (list? (##structure-ref _ctx20296_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht20298_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id20300_
                  (##structure-ref _ctx20296_ '1 gx#expander-context::t '#f))
                 (_mod20302_ (table-ref _ht20298_ _id20300_ '#f)))
            (let ((_$e20305_ _mod20302_))
              (if _$e20305_
                  _$e20305_
                  (let* ((_mod20308_ (gxc#optimizer-import-ssxi _ctx20296_))
                         (_val20313_
                          (let ((_$e20310_ _mod20308_))
                            (if _$e20310_ _$e20310_ '#!void))))
                    (begin
                      (table-set! _ht20298_ _id20300_ _val20313_)
                      _val20313_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx20273_)
      (letrec ((_catch-e20275_
                (lambda (_exn20294_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx20273_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn20294_))
                        '#!void)
                    '#f)))
               (_import-e20276_
                (lambda ()
                  (let* ((_str-id20279_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx20273_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path20287_
                          (let ((_odir2028020282_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2028020282_
                                (let ((_odir20285_ _odir2028020282_))
                                  (path-expand
                                   (string-append _str-id20279_ '".ss")
                                   _odir20285_))
                                '#f)))
                         (_library-path20289_
                          (string->symbol
                           (string-append '":" _str-id20279_ '".ss")))
                         (_ssxi-path20291_
                          (if (if _artefact-path20287_
                                  (file-exists? _artefact-path20287_)
                                  '#f)
                              _artefact-path20287_
                              _library-path20289_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path20291_)
                      (gx#import-module__opt-lambda11446
                       _ssxi-path20291_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx20273_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e20275_ _import-e20276_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args20270_
      (apply make-struct-instance gxc#!type::t _$args20270_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args20267_
      (apply make-struct-instance gxc#!alias::t _$args20267_)))
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
    (lambda _$args20264_
      (apply make-struct-instance gxc#!struct-type::t _$args20264_)))
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
    (lambda _$args20261_
      (apply make-struct-instance gxc#!procedure::t _$args20261_)))
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
    (lambda _$args20258_
      (apply make-struct-instance gxc#!struct-pred::t _$args20258_)))
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
    (lambda _$args20255_
      (apply make-struct-instance gxc#!struct-cons::t _$args20255_)))
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
    (lambda _$args20252_
      (apply make-struct-instance gxc#!struct-getf::t _$args20252_)))
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
    (lambda _$args20249_
      (apply make-struct-instance gxc#!struct-setf::t _$args20249_)))
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
    (lambda _$args20246_
      (apply make-struct-instance gxc#!lambda::t _$args20246_)))
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
    (lambda _$args20243_
      (apply make-struct-instance gxc#!case-lambda::t _$args20243_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self20235_
             _id20236_
             _super20237_
             _fields20238_
             _xfields20239_
             _ctor20240_
             _plist20241_)
      (struct-instance-init!
       _self20235_
       _id20236_
       _super20237_
       _fields20238_
       _xfields20239_
       _ctor20240_
       _plist20241_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda20199
      (lambda (_self20201_
               _id20202_
               _arity20203_
               _dispatch20204_
               _inline20205_
               _typedecl20206_)
        (struct-instance-init!
         _self20201_
         _id20202_
         _arity20203_
         _dispatch20204_
         _inline20205_
         _typedecl20206_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self20211_ _id20212_ _arity20213_ _dispatch20214_)
          (let* ((_inline20216_ '#f) (_typedecl20218_ '#f))
            (struct-instance-init!
             _self20211_
             _id20212_
             _arity20213_
             _dispatch20214_
             _inline20216_
             _typedecl20218_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self20220_
                 _id20221_
                 _arity20222_
                 _dispatch20223_
                 _inline20224_)
          (let ((_typedecl20226_ '#f))
            (struct-instance-init!
             _self20220_
             _id20221_
             _arity20222_
             _dispatch20223_
             _inline20224_
             _typedecl20226_))))
      (define gxc#!lambda:::init!
        (lambda _g20399_
          (let ((_g20398_ (length _g20399_)))
            (cond ((fx= _g20398_ 4) (apply gxc#!lambda:::init!__0 _g20399_))
                  ((fx= _g20398_ 5) (apply gxc#!lambda:::init!__1 _g20399_))
                  ((fx= _g20398_ 6) (apply struct-instance-init! _g20399_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g20399_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type20193_)
      (let ((_$e20195_
             (##structure-ref _type20193_ '7 gxc#!struct-type::t '#f)))
        (if _$e20195_
            (values _$e20195_)
            (let ((_vtab20198_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type20193_
                 _vtab20198_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab20198_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type20184_ _method20185_)
      (let ((_vtab2018620188_
             (##structure-ref _type20184_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2018620188_
            (let ((_vtab20191_ _vtab2018620188_))
              (table-ref _vtab20191_ _method20185_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda20166
      (lambda (_sym20168_ _type20169_ _local?20170_)
        (begin
          (if (##structure-instance-of? _type20169_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym20168_
                     _type20169_))
          (gxc#verbose
           '"declare-type "
           _sym20168_
           '" "
           (struct->list _type20169_))
          (table-set!
           (if _local?20170_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym20168_
           _type20169_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym20175_ _type20176_)
          (let ((_local?20178_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda20166
             _sym20175_
             _type20176_
             _local?20178_))))
      (define gxc#optimizer-declare-type!
        (lambda _g20401_
          (let ((_g20400_ (length _g20401_)))
            (cond ((fx= _g20400_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g20401_))
                  ((fx= _g20400_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda20166
                          _g20401_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g20401_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda20142
      (lambda (_type-t20144_ _method20145_ _sym20146_ _rebind?20147_)
        (let ((_type20149_ (gxc#optimizer-resolve-type _type-t20144_)))
          (if (##structure-instance-of? _type20149_ 'gxc#!struct-type::t)
              (let ((_vtab20151_ (gxc#!struct-type-vtab _type20149_)))
                (if _rebind?20147_
                    (if (hash-key? _vtab20151_ _method20145_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t20144_
                         '" "
                         _method20145_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t20144_
                         '" "
                         _method20145_))
                    (if (hash-key? _vtab20151_ _method20145_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t20144_
                           '" "
                           _method20145_
                           '" => "
                           _sym20146_)
                          (table-set! _vtab20151_ _method20145_ _sym20146_)))))
              (if (not _type20149_)
                  (gxc#verbose '"declare-method: unknown type " _type-t20144_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t20144_
                         _type20149_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t20156_ _method20157_ _sym20158_)
          (let ((_rebind?20160_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda20142
             _type-t20156_
             _method20157_
             _sym20158_
             _rebind?20160_))))
      (define gxc#optimizer-declare-method!
        (lambda _g20403_
          (let ((_g20402_ (length _g20403_)))
            (cond ((fx= _g20402_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g20403_))
                  ((fx= _g20402_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda20142
                          _g20403_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g20403_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym20132_)
      (let ((_$e20140_
             (let ((_ht2013320135_ (gxc#current-compile-local-type)))
               (if _ht2013320135_
                   (let ((_ht20138_ _ht2013320135_))
                     (table-ref _ht20138_ _sym20132_ '#f))
                   '#f))))
        (if _$e20140_
            _$e20140_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym20132_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym20124_)
      (let ((_type2012520127_ (gxc#optimizer-lookup-type _sym20124_)))
        (if _type2012520127_
            (let ((_type20130_ _type2012520127_))
              (if (##structure-instance-of? _type20130_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type20130_ '1 gxc#!type::t '#f))
                  _type20130_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t20119_ _method20120_)
      (let ((_type20122_ (gxc#optimizer-resolve-type _type-t20119_)))
        (if (##structure-instance-of? _type20122_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type20122_ _method20120_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx20115_)
      (begin
        (gxc#apply-collect-mutators _stx20115_)
        (let ((_stx20117_ (gxc#apply-lift-top-lambdas _stx20115_)))
          (begin
            (gxc#apply-collect-type-info _stx20117_)
            (gxc#apply-optimize-call _stx20117_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl20112_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20112_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20112_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20112_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20112_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20112_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20112_ '%#quote gxc#xform-identity)
           (table-set! _tbl20112_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20112_ '%#call gxc#xform-identity)
           (table-set! _tbl20112_ '%#if gxc#xform-identity)
           (table-set! _tbl20112_ '%#ref gxc#xform-identity)
           (table-set! _tbl20112_ '%#set! gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20112_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20112_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20112_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl20108_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20108_ '%#begin gxc#xform-identity)
           (table-set! _tbl20108_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20108_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20108_ '%#module gxc#xform-identity)
           (table-set! _tbl20108_ '%#import gxc#xform-identity)
           (table-set! _tbl20108_ '%#export gxc#xform-identity)
           (table-set! _tbl20108_ '%#provide gxc#xform-identity)
           (table-set! _tbl20108_ '%#extern gxc#xform-identity)
           (table-set! _tbl20108_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20108_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20108_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20108_ '%#declare gxc#xform-identity)
           _tbl20108_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl20104_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20104_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20104_ (force gxc#&identity-expression))
           _tbl20104_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl20100_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20100_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20100_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20100_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20100_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20100_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20100_ '%#quote gxc#xform-identity)
           (table-set! _tbl20100_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20100_ '%#call gxc#xform-operands)
           (table-set! _tbl20100_ '%#if gxc#xform-operands)
           (table-set! _tbl20100_ '%#ref gxc#xform-identity)
           (table-set! _tbl20100_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20100_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20100_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20100_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20100_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20100_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20100_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20100_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20100_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20100_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl20096_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20096_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20096_ (force gxc#&identity))
           (table-set! _tbl20096_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20096_ '%#module gxc#xform-module%)
           (table-set! _tbl20096_ '%#define-values gxc#xform-define-values%)
           _tbl20096_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl20092_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20092_ (force gxc#&void))
           (table-set! _tbl20092_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20092_ '%#module gxc#collect-module%)
           (table-set! _tbl20092_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20092_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20092_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20092_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20092_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20092_ '%#call gxc#collect-operands)
           (table-set! _tbl20092_ '%#if gxc#collect-operands)
           (table-set! _tbl20092_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20092_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20092_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20092_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20092_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20092_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20092_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20092_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20092_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20092_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx20085_ . _args20087_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20085_ _args20087_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl20082_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20082_ (force gxc#&basic-xform))
           (table-set!
            _tbl20082_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl20082_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl20082_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl20082_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl20082_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx20075_ . _args20077_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20075_ _args20077_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl20072_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20072_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20072_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20072_ '%#ref gxc#expression-subst-ref%)
           _tbl20072_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx20065_ . _args20067_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20065_ _args20067_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl20062_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20062_ (force gxc#&void))
           (table-set! _tbl20062_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20062_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20062_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl20062_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20062_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20062_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl20062_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl20062_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl20062_ '%#call gxc#collect-type-call%)
           (table-set! _tbl20062_ '%#if gxc#collect-operands)
           (table-set! _tbl20062_ '%#set! gxc#collect-body-setq%)
           _tbl20062_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx20055_ . _args20057_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20055_ _args20057_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl20052_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20052_ (force gxc#&false))
           (table-set! _tbl20052_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl20052_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl20052_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl20052_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl20052_ '%#ref gxc#basic-expression-type-ref%)
           _tbl20052_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx20045_ . _args20047_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20045_ _args20047_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl20042_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20042_ (force gxc#&basic-xform))
           (table-set! _tbl20042_ '%#call gxc#optimize-call%)
           _tbl20042_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx20035_ . _args20037_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20035_ _args20037_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl20032_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20032_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl20032_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl20032_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl20032_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl20032_ '%#call gxc#generate-ssxi-call%)
           _tbl20032_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx20025_ . _args20027_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20025_ _args20027_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx20022_ . _args20023_) _stx20022_))
  (define gxc#xform-wrap-source
    (lambda (_stx20019_ _src-stx20020_)
      (gx#stx-wrap-source _stx20019_ (gx#stx-source _src-stx20020_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args20013_)
      (lambda (_g2001420016_)
        (apply gxc#compile-e _g2001420016_ _args20013_))))
  (define gxc#xform-begin%
    (lambda (_stx19972_ . _args19973_)
      (let* ((_g1997519985_
              (lambda (_g1997619982_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1997619982_)))
             (_g1997420010_
              (lambda (_g1997619988_)
                (if (gx#stx-pair? _g1997619988_)
                    (let ((_e1997819990_ (gx#stx-e _g1997619988_)))
                      (let ((_hd1997919993_ (##car _e1997819990_))
                            (_tl1998019995_ (##cdr _e1997819990_)))
                        ((lambda (_L19998_)
                           (let ((_forms20008_
                                  (map (gxc#xform-apply-compile-e _args19973_)
                                       _L19998_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms20008_)
                              _stx19972_)))
                         _tl1998019995_)))
                    (_g1997519985_ _g1997619988_)))))
        (_g1997420010_ _stx19972_))))
  (define gxc#xform-module%
    (lambda (_stx19909_ . _args19910_)
      (let* ((_g1991219926_
              (lambda (_g1991319923_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1991319923_)))
             (_g1991119969_
              (lambda (_g1991319929_)
                (if (gx#stx-pair? _g1991319929_)
                    (let ((_e1991619931_ (gx#stx-e _g1991319929_)))
                      (let ((_hd1991719934_ (##car _e1991619931_))
                            (_tl1991819936_ (##cdr _e1991619931_)))
                        (if (gx#stx-pair? _tl1991819936_)
                            (let ((_e1991919939_ (gx#stx-e _tl1991819936_)))
                              (let ((_hd1992019942_ (##car _e1991919939_))
                                    (_tl1992119944_ (##cdr _e1991919939_)))
                                ((lambda (_L19947_ _L19948_)
                                   (let* ((_ctx19961_
                                           (gx#syntax-local-e__0 _L19948_))
                                          (_code19963_
                                           (##structure-ref
                                            _ctx19961_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code19966_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code19963_
                                                     _args19910_))
                                            gx#current-expander-context
                                            _ctx19961_)))
                                     (begin
                                       (##structure-set!
                                        _ctx19961_
                                        _code19966_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L19948_
                                                    (cons _code19966_ '())))
                                        _stx19909_))))
                                 _tl1992119944_
                                 _hd1992019942_)))
                            (_g1991219926_ _g1991319929_))))
                    (_g1991219926_ _g1991319929_)))))
        (_g1991119969_ _stx19909_))))
  (define gxc#xform-define-values%
    (lambda (_stx19839_ . _args19840_)
      (let* ((_g1984219859_
              (lambda (_g1984319856_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1984319856_)))
             (_g1984119906_
              (lambda (_g1984319862_)
                (if (gx#stx-pair? _g1984319862_)
                    (let ((_e1984619864_ (gx#stx-e _g1984319862_)))
                      (let ((_hd1984719867_ (##car _e1984619864_))
                            (_tl1984819869_ (##cdr _e1984619864_)))
                        (if (gx#stx-pair? _tl1984819869_)
                            (let ((_e1984919872_ (gx#stx-e _tl1984819869_)))
                              (let ((_hd1985019875_ (##car _e1984919872_))
                                    (_tl1985119877_ (##cdr _e1984919872_)))
                                (if (gx#stx-pair? _tl1985119877_)
                                    (let ((_e1985219880_
                                           (gx#stx-e _tl1985119877_)))
                                      (let ((_hd1985319883_
                                             (##car _e1985219880_))
                                            (_tl1985419885_
                                             (##cdr _e1985219880_)))
                                        (if (gx#stx-null? _tl1985419885_)
                                            ((lambda (_L19888_ _L19889_)
                                               (let ((_expr19904_
                                                      (apply gxc#compile-e
                                                             _L19888_
                                                             _args19840_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19889_
                                                              (cons _expr19904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19839_)))
                                             _hd1985319883_
                                             _hd1985019875_)
                                            (_g1984219859_ _g1984319862_))))
                                    (_g1984219859_ _g1984319862_))))
                            (_g1984219859_ _g1984319862_))))
                    (_g1984219859_ _g1984319862_)))))
        (_g1984119906_ _stx19839_))))
  (define gxc#xform-lambda%
    (lambda (_stx19782_ . _args19783_)
      (let* ((_g1978519799_
              (lambda (_g1978619796_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1978619796_)))
             (_g1978419836_
              (lambda (_g1978619802_)
                (if (gx#stx-pair? _g1978619802_)
                    (let ((_e1978919804_ (gx#stx-e _g1978619802_)))
                      (let ((_hd1979019807_ (##car _e1978919804_))
                            (_tl1979119809_ (##cdr _e1978919804_)))
                        (if (gx#stx-pair? _tl1979119809_)
                            (let ((_e1979219812_ (gx#stx-e _tl1979119809_)))
                              (let ((_hd1979319815_ (##car _e1979219812_))
                                    (_tl1979419817_ (##cdr _e1979219812_)))
                                ((lambda (_L19820_ _L19821_)
                                   (let ((_body19834_
                                          (map (gxc#xform-apply-compile-e
                                                _args19783_)
                                               _L19820_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L19821_ _body19834_))
                                      _stx19782_)))
                                 _tl1979419817_
                                 _hd1979319815_)))
                            (_g1978519799_ _g1978619802_))))
                    (_g1978519799_ _g1978619802_)))))
        (_g1978419836_ _stx19782_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx19695_ . _args19696_)
      (letrec ((_clause-e19698_
                (lambda (_clause19739_)
                  (let* ((_g1974119752_
                          (lambda (_g1974219749_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1974219749_)))
                         (_g1974019779_
                          (lambda (_g1974219755_)
                            (if (gx#stx-pair? _g1974219755_)
                                (let ((_e1974519757_ (gx#stx-e _g1974219755_)))
                                  (let ((_hd1974619760_ (##car _e1974519757_))
                                        (_tl1974719762_ (##cdr _e1974519757_)))
                                    ((lambda (_L19765_ _L19766_)
                                       (let ((_body19777_
                                              (map (gxc#xform-apply-compile-e
                                                    _args19696_)
                                                   _L19765_)))
                                         (cons _L19766_ _body19777_)))
                                     _tl1974719762_
                                     _hd1974619760_)))
                                (_g1974119752_ _g1974219755_)))))
                    (_g1974019779_ _clause19739_)))))
        (let* ((_g1970019710_
                (lambda (_g1970119707_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1970119707_)))
               (_g1969919736_
                (lambda (_g1970119713_)
                  (if (gx#stx-pair? _g1970119713_)
                      (let ((_e1970319715_ (gx#stx-e _g1970119713_)))
                        (let ((_hd1970419718_ (##car _e1970319715_))
                              (_tl1970519720_ (##cdr _e1970319715_)))
                          ((lambda (_L19723_)
                             (let ((_clauses19734_
                                    (map _clause-e19698_ _L19723_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses19734_)
                                _stx19695_)))
                           _tl1970519720_)))
                      (_g1970019710_ _g1970119713_)))))
          (_g1969919736_ _stx19695_)))))
  (define gxc#xform-let-values%
    (lambda (_stx19489_ . _args19490_)
      (let* ((_g1949219525_
              (lambda (_g1949319522_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1949319522_)))
             (_g1949119692_
              (lambda (_g1949319528_)
                (if (gx#stx-pair? _g1949319528_)
                    (let ((_e1949819530_ (gx#stx-e _g1949319528_)))
                      (let ((_hd1949919533_ (##car _e1949819530_))
                            (_tl1950019535_ (##cdr _e1949819530_)))
                        (if (gx#stx-pair? _tl1950019535_)
                            (let ((_e1950119538_ (gx#stx-e _tl1950019535_)))
                              (let ((_hd1950219541_ (##car _e1950119538_))
                                    (_tl1950319543_ (##cdr _e1950119538_)))
                                (if (gx#stx-pair/null? _hd1950219541_)
                                    (if (fx>= (gx#stx-length _hd1950219541_)
                                              '0)
                                        (let ((_g20404_
                                               (gx#syntax-split-splice
                                                _hd1950219541_
                                                '0)))
                                          (begin
                                            (let ((_g20405_
                                                   (values-count _g20404_)))
                                              (if (not (fx= _g20405_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20405_)))
                                            (let ((_target1950419546_
                                                   (values-ref _g20404_ 0))
                                                  (_tl1950619548_
                                                   (values-ref _g20404_ 1)))
                                              (if (gx#stx-null? _tl1950619548_)
                                                  (letrec ((_loop1950719551_
                                                            (lambda (_hd1950519554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1951119556_
                             _hd1951219558_)
                      (if (gx#stx-pair? _hd1950519554_)
                          (let ((_e1950819561_ (gx#stx-e _hd1950519554_)))
                            (let ((_lp-hd1950919564_ (##car _e1950819561_))
                                  (_lp-tl1951019566_ (##cdr _e1950819561_)))
                              (if (gx#stx-pair? _lp-hd1950919564_)
                                  (let ((_e1951519569_
                                         (gx#stx-e _lp-hd1950919564_)))
                                    (let ((_hd1951619572_
                                           (##car _e1951519569_))
                                          (_tl1951719574_
                                           (##cdr _e1951519569_)))
                                      (if (gx#stx-pair? _tl1951719574_)
                                          (let ((_e1951819577_
                                                 (gx#stx-e _tl1951719574_)))
                                            (let ((_hd1951919580_
                                                   (##car _e1951819577_))
                                                  (_tl1952019582_
                                                   (##cdr _e1951819577_)))
                                              (if (gx#stx-null? _tl1952019582_)
                                                  (_loop1950719551_
                                                   _lp-tl1951019566_
                                                   (cons _hd1951919580_
                                                         _expr1951119556_)
                                                   (cons _hd1951619572_
                                                         _hd1951219558_))
                                                  (_g1949219525_
                                                   _g1949319528_))))
                                          (_g1949219525_ _g1949319528_))))
                                  (_g1949219525_ _g1949319528_))))
                          (let ((_expr1951319585_ (reverse _expr1951119556_))
                                (_hd1951419587_ (reverse _hd1951219558_)))
                            ((lambda (_L19590_ _L19591_ _L19592_ _L19593_)
                               (let* ((_g1961219628_
                                       (lambda (_g1961319625_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1961319625_)))
                                      (_g1961119682_
                                       (lambda (_g1961319631_)
                                         (if (gx#stx-pair/null? _g1961319631_)
                                             (if (fx>= (gx#stx-length
                                                        _g1961319631_)
                                                       '0)
                                                 (let ((_g20406_
                                                        (gx#syntax-split-splice
                                                         _g1961319631_
                                                         '0)))
                                                   (begin
                                                     (let ((_g20407_
                                                            (values-count
                                                             _g20406_)))
                                                       (if (not (fx= _g20407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g20407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1961519633_
                                                            (values-ref
                                                             _g20406_
                                                             0))
                                                           (_tl1961719635_
                                                            (values-ref
                                                             _g20406_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1961719635_)
                                                           (letrec ((_loop1961819638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1961619641_ _expr1962219643_)
                               (if (gx#stx-pair? _hd1961619641_)
                                   (let ((_e1961919646_
                                          (gx#syntax-e _hd1961619641_)))
                                     (let ((_lp-hd1962019649_
                                            (##car _e1961919646_))
                                           (_lp-tl1962119651_
                                            (##cdr _e1961919646_)))
                                       (_loop1961819638_
                                        _lp-tl1962119651_
                                        (cons _lp-hd1962019649_
                                              _expr1962219643_))))
                                   (let ((_expr1962319654_
                                          (reverse _expr1962219643_)))
                                     ((lambda (_L19657_)
                                        (let ()
                                          (let ((_body19670_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args19490_)
                                                      _L19590_)))
                                            (gxc#xform-wrap-source
                                             (cons _L19593_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L19657_
                                                            _L19592_)
                                                           (foldr (lambda (_g1967119675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1967219677_
                                   _g1967319679_)
                            (cons (cons _g1967219677_ (cons _g1967119675_ '()))
                                  _g1967319679_))
                          '()
                          _L19657_
                          _L19592_))
                 _body19670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx19489_))))
                                      _expr1962319654_))))))
                     (_loop1961819638_ _target1961519633_ '()))
                   (_g1961219628_ _g1961319631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1961219628_ _g1961319631_))
                                             (_g1961219628_ _g1961319631_)))))
                                 (_g1961119682_
                                  (map (gxc#xform-apply-compile-e _args19490_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1968419687_
                                                          _g1968519689_)
                                                   (cons _g1968419687_
                                                         _g1968519689_))
                                                 '()
                                                 _L19591_))))))
                             _tl1950319543_
                             _expr1951319585_
                             _hd1951419587_
                             _hd1949919533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1950719551_
                                                     _target1950419546_
                                                     '()
                                                     '()))
                                                  (_g1949219525_
                                                   _g1949319528_)))))
                                        (_g1949219525_ _g1949319528_))
                                    (_g1949219525_ _g1949319528_))))
                            (_g1949219525_ _g1949319528_))))
                    (_g1949219525_ _g1949319528_)))))
        (_g1949119692_ _stx19489_))))
  (define gxc#xform-operands
    (lambda (_stx19445_ . _args19446_)
      (let* ((_g1944819459_
              (lambda (_g1944919456_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1944919456_)))
             (_g1944719486_
              (lambda (_g1944919462_)
                (if (gx#stx-pair? _g1944919462_)
                    (let ((_e1945219464_ (gx#stx-e _g1944919462_)))
                      (let ((_hd1945319467_ (##car _e1945219464_))
                            (_tl1945419469_ (##cdr _e1945219464_)))
                        ((lambda (_L19472_ _L19473_)
                           (let ((_rands19484_
                                  (map (gxc#xform-apply-compile-e _args19446_)
                                       _L19472_)))
                             (gxc#xform-wrap-source
                              (cons _L19473_ _rands19484_)
                              _stx19445_)))
                         _tl1945419469_
                         _hd1945319467_)))
                    (_g1944819459_ _g1944919462_)))))
        (_g1944719486_ _stx19445_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx19375_ . _args19376_)
      (let* ((_g1937819395_
              (lambda (_g1937919392_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1937919392_)))
             (_g1937719442_
              (lambda (_g1937919398_)
                (if (gx#stx-pair? _g1937919398_)
                    (let ((_e1938219400_ (gx#stx-e _g1937919398_)))
                      (let ((_hd1938319403_ (##car _e1938219400_))
                            (_tl1938419405_ (##cdr _e1938219400_)))
                        (if (gx#stx-pair? _tl1938419405_)
                            (let ((_e1938519408_ (gx#stx-e _tl1938419405_)))
                              (let ((_hd1938619411_ (##car _e1938519408_))
                                    (_tl1938719413_ (##cdr _e1938519408_)))
                                (if (gx#stx-pair? _tl1938719413_)
                                    (let ((_e1938819416_
                                           (gx#stx-e _tl1938719413_)))
                                      (let ((_hd1938919419_
                                             (##car _e1938819416_))
                                            (_tl1939019421_
                                             (##cdr _e1938819416_)))
                                        (if (gx#stx-null? _tl1939019421_)
                                            ((lambda (_L19424_ _L19425_)
                                               (let ((_expr19440_
                                                      (apply gxc#compile-e
                                                             _L19424_
                                                             _args19376_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L19425_
                                                              (cons _expr19440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19375_)))
                                             _hd1938919419_
                                             _hd1938619411_)
                                            (_g1937819395_ _g1937919398_))))
                                    (_g1937819395_ _g1937919398_))))
                            (_g1937819395_ _g1937919398_))))
                    (_g1937819395_ _g1937919398_)))))
        (_g1937719442_ _stx19375_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx19306_)
      (let* ((_g1930819325_
              (lambda (_g1930919322_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1930919322_)))
             (_g1930719372_
              (lambda (_g1930919328_)
                (if (gx#stx-pair? _g1930919328_)
                    (let ((_e1931219330_ (gx#stx-e _g1930919328_)))
                      (let ((_hd1931319333_ (##car _e1931219330_))
                            (_tl1931419335_ (##cdr _e1931219330_)))
                        (if (gx#stx-pair? _tl1931419335_)
                            (let ((_e1931519338_ (gx#stx-e _tl1931419335_)))
                              (let ((_hd1931619341_ (##car _e1931519338_))
                                    (_tl1931719343_ (##cdr _e1931519338_)))
                                (if (gx#stx-pair? _tl1931719343_)
                                    (let ((_e1931819346_
                                           (gx#stx-e _tl1931719343_)))
                                      (let ((_hd1931919349_
                                             (##car _e1931819346_))
                                            (_tl1932019351_
                                             (##cdr _e1931819346_)))
                                        (if (gx#stx-null? _tl1932019351_)
                                            ((lambda (_L19354_ _L19355_)
                                               (let ((_sym19370_
                                                      (gxc#generate-runtime-binding-id
                                                       _L19355_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym19370_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym19370_
                                                    '#t)
                                                   (gxc#compile-e _L19354_))))
                                             _hd1931919349_
                                             _hd1931619341_)
                                            (_g1930819325_ _g1930919328_))))
                                    (_g1930819325_ _g1930919328_))))
                            (_g1930819325_ _g1930919328_))))
                    (_g1930819325_ _g1930919328_)))))
        (_g1930719372_ _stx19306_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18540_)
      (let* ((_g1854518702_
              (lambda (_g1854618699_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1854618699_)))
             (_g1854418709_ (lambda (_g1854618705_) ((lambda () '#f))))
             (_g1854318849_
              (lambda (_g1854618712_)
                (if (gx#stx-pair? _g1854618712_)
                    (let ((_e1866218714_ (gx#stx-e _g1854618712_)))
                      (let ((_hd1866318717_ (##car _e1866218714_))
                            (_tl1866418719_ (##cdr _e1866218714_)))
                        (if (gx#stx-pair? _tl1866418719_)
                            (let ((_e1866518722_ (gx#stx-e _tl1866418719_)))
                              (let ((_hd1866618725_ (##car _e1866518722_))
                                    (_tl1866718727_ (##cdr _e1866518722_)))
                                (if (gx#stx-pair? _hd1866618725_)
                                    (let ((_e1866818730_
                                           (gx#stx-e _hd1866618725_)))
                                      (let ((_hd1866918733_
                                             (##car _e1866818730_))
                                            (_tl1867018735_
                                             (##cdr _e1866818730_)))
                                        (if (gx#identifier? _hd1866918733_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1866918733_)
                                                (if (gx#stx-pair?
                                                     _tl1867018735_)
                                                    (let ((_e1867118738_
                                                           (gx#stx-e
                                                            _tl1867018735_)))
                                                      (let ((_hd1867218741_
                                                             (##car _e1867118738_))
                                                            (_tl1867318743_
                                                             (##cdr _e1867118738_)))
                                                        (if (gx#stx-pair?
                                                             _hd1867218741_)
                                                            (let ((_e1867418746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1867218741_)))
                      (let ((_hd1867518749_ (##car _e1867418746_))
                            (_tl1867618751_ (##cdr _e1867418746_)))
                        (if (gx#identifier? _hd1867518749_)
                            (if (gx#stx-eq? '%#ref _hd1867518749_)
                                (if (gx#stx-pair? _tl1867618751_)
                                    (let ((_e1867718754_
                                           (gx#stx-e _tl1867618751_)))
                                      (let ((_hd1867818757_
                                             (##car _e1867718754_))
                                            (_tl1867918759_
                                             (##cdr _e1867718754_)))
                                        (if (gx#stx-null? _tl1867918759_)
                                            (if (gx#stx-pair? _tl1867318743_)
                                                (let ((_e1868018762_
                                                       (gx#stx-e
                                                        _tl1867318743_)))
                                                  (let ((_hd1868118765_
                                                         (##car _e1868018762_))
                                                        (_tl1868218767_
                                                         (##cdr _e1868018762_)))
                                                    (if (gx#stx-pair?
                                                         _hd1868118765_)
                                                        (let ((_e1868318770_
                                                               (gx#stx-e
                                                                _hd1868118765_)))
                                                          (let ((_hd1868418773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1868318770_))
                        (_tl1868518775_ (##cdr _e1868318770_)))
                    (if (gx#identifier? _hd1868418773_)
                        (if (gx#stx-eq? '%#ref _hd1868418773_)
                            (if (gx#stx-pair? _tl1868518775_)
                                (let ((_e1868618778_
                                       (gx#stx-e _tl1868518775_)))
                                  (let ((_hd1868718781_ (##car _e1868618778_))
                                        (_tl1868818783_ (##cdr _e1868618778_)))
                                    (if (gx#stx-null? _tl1868818783_)
                                        (if (gx#stx-pair? _tl1868218767_)
                                            (let ((_e1868918786_
                                                   (gx#stx-e _tl1868218767_)))
                                              (let ((_hd1869018789_
                                                     (##car _e1868918786_))
                                                    (_tl1869118791_
                                                     (##cdr _e1868918786_)))
                                                (if (gx#stx-pair?
                                                     _hd1869018789_)
                                                    (let ((_e1869218794_
                                                           (gx#stx-e
                                                            _hd1869018789_)))
                                                      (let ((_hd1869318797_
                                                             (##car _e1869218794_))
                                                            (_tl1869418799_
                                                             (##cdr _e1869218794_)))
                                                        (if (gx#identifier?
                                                             _hd1869318797_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1869318797_)
                        (if (gx#stx-pair? _tl1869418799_)
                            (let ((_e1869518802_ (gx#stx-e _tl1869418799_)))
                              (let ((_hd1869618805_ (##car _e1869518802_))
                                    (_tl1869718807_ (##cdr _e1869518802_)))
                                (if (gx#stx-null? _tl1869718807_)
                                    (if (gx#stx-null? _tl1869118791_)
                                        (if (gx#stx-null? _tl1866718727_)
                                            ((lambda (_L18810_
                                                      _L18811_
                                                      _L18812_
                                                      _L18813_)
                                               (if (if (gx#identifier?
                                                        _L18813_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18812_)
                        'apply)
                   (if (gx#free-identifier=? _L18813_ _L18810_)
                       (not (gx#free-identifier=? _L18811_ _L18813_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g1854418709_
                                                    _g1854618712_)))
                                             _hd1869618805_
                                             _hd1868718781_
                                             _hd1867818757_
                                             _hd1866318717_)
                                            (_g1854418709_ _g1854618712_))
                                        (_g1854418709_ _g1854618712_))
                                    (_g1854418709_ _g1854618712_))))
                            (_g1854418709_ _g1854618712_))
                        (_g1854418709_ _g1854618712_))
                    (_g1854418709_ _g1854618712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1854418709_
                                                     _g1854618712_))))
                                            (_g1854418709_ _g1854618712_))
                                        (_g1854418709_ _g1854618712_))))
                                (_g1854418709_ _g1854618712_))
                            (_g1854418709_ _g1854618712_))
                        (_g1854418709_ _g1854618712_))))
                (_g1854418709_ _g1854618712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1854418709_ _g1854618712_))
                                            (_g1854418709_ _g1854618712_))))
                                    (_g1854418709_ _g1854618712_))
                                (_g1854418709_ _g1854618712_))
                            (_g1854418709_ _g1854618712_))))
                    (_g1854418709_ _g1854618712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1854418709_
                                                     _g1854618712_))
                                                (_g1854418709_ _g1854618712_))
                                            (_g1854418709_ _g1854618712_))))
                                    (_g1854418709_ _g1854618712_))))
                            (_g1854418709_ _g1854618712_))))
                    (_g1854418709_ _g1854618712_))))
             (_g1854219109_
              (lambda (_g1854618852_)
                (if (gx#stx-pair? _g1854618852_)
                    (let ((_e1859818854_ (gx#stx-e _g1854618852_)))
                      (let ((_hd1859918857_ (##car _e1859818854_))
                            (_tl1860018859_ (##cdr _e1859818854_)))
                        (if (gx#stx-pair/null? _hd1859918857_)
                            (if (fx>= (gx#stx-length _hd1859918857_) '0)
                                (let ((_g20408_
                                       (gx#syntax-split-splice
                                        _hd1859918857_
                                        '0)))
                                  (begin
                                    (let ((_g20409_ (values-count _g20408_)))
                                      (if (not (fx= _g20409_ 2))
                                          (error "Context expects 2 values"
                                                 _g20409_)))
                                    (let ((_target1860118862_
                                           (values-ref _g20408_ 0))
                                          (_tl1860318864_
                                           (values-ref _g20408_ 1)))
                                      (letrec ((_loop1860418867_
                                                (lambda (_hd1860218870_
                                                         _arg1860818872_)
                                                  (if (gx#stx-pair?
                                                       _hd1860218870_)
                                                      (let ((_e1860518875_
                                                             (gx#stx-e
                                                              _hd1860218870_)))
                                                        (let ((_lp-hd1860618878_
                                                               (##car _e1860518875_))
                                                              (_lp-tl1860718880_
                                                               (##cdr _e1860518875_)))
                                                          (_loop1860418867_
                                                           _lp-tl1860718880_
                                                           (cons _lp-hd1860618878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1860818872_))))
              (let ((_arg1860918883_ (reverse _arg1860818872_)))
                (if (gx#stx-pair? _tl1860018859_)
                    (let ((_e1861018886_ (gx#stx-e _tl1860018859_)))
                      (let ((_hd1861118889_ (##car _e1861018886_))
                            (_tl1861218891_ (##cdr _e1861018886_)))
                        (if (gx#stx-pair? _hd1861118889_)
                            (let ((_e1861318894_ (gx#stx-e _hd1861118889_)))
                              (let ((_hd1861418897_ (##car _e1861318894_))
                                    (_tl1861518899_ (##cdr _e1861318894_)))
                                (if (gx#identifier? _hd1861418897_)
                                    (if (gx#stx-eq? '%#call _hd1861418897_)
                                        (if (gx#stx-pair? _tl1861518899_)
                                            (let ((_e1861618902_
                                                   (gx#stx-e _tl1861518899_)))
                                              (let ((_hd1861718905_
                                                     (##car _e1861618902_))
                                                    (_tl1861818907_
                                                     (##cdr _e1861618902_)))
                                                (if (gx#stx-pair?
                                                     _hd1861718905_)
                                                    (let ((_e1861918910_
                                                           (gx#stx-e
                                                            _hd1861718905_)))
                                                      (let ((_hd1862018913_
                                                             (##car _e1861918910_))
                                                            (_tl1862118915_
                                                             (##cdr _e1861918910_)))
                                                        (if (gx#identifier?
                                                             _hd1862018913_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1862018913_)
                        (if (gx#stx-pair? _tl1862118915_)
                            (let ((_e1862218918_ (gx#stx-e _tl1862118915_)))
                              (let ((_hd1862318921_ (##car _e1862218918_))
                                    (_tl1862418923_ (##cdr _e1862218918_)))
                                (if (gx#stx-null? _tl1862418923_)
                                    (if (gx#stx-pair? _tl1861818907_)
                                        (let ((_e1862518926_
                                               (gx#stx-e _tl1861818907_)))
                                          (let ((_hd1862618929_
                                                 (##car _e1862518926_))
                                                (_tl1862718931_
                                                 (##cdr _e1862518926_)))
                                            (if (gx#stx-pair? _hd1862618929_)
                                                (let ((_e1862818934_
                                                       (gx#stx-e
                                                        _hd1862618929_)))
                                                  (let ((_hd1862918937_
                                                         (##car _e1862818934_))
                                                        (_tl1863018939_
                                                         (##cdr _e1862818934_)))
                                                    (if (gx#identifier?
                                                         _hd1862918937_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1862918937_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1863018939_)
                        (let ((_e1863118942_ (gx#stx-e _tl1863018939_)))
                          (let ((_hd1863218945_ (##car _e1863118942_))
                                (_tl1863318947_ (##cdr _e1863118942_)))
                            (if (gx#stx-null? _tl1863318947_)
                                (if (gx#stx-pair/null? _tl1862718931_)
                                    (if (fx>= (gx#stx-length _tl1862718931_)
                                              '1)
                                        (let ((_g20410_
                                               (gx#syntax-split-splice
                                                _tl1862718931_
                                                '1)))
                                          (begin
                                            (let ((_g20411_
                                                   (values-count _g20410_)))
                                              (if (not (fx= _g20411_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20411_)))
                                            (let ((_target1863418950_
                                                   (values-ref _g20410_ 0))
                                                  (_tl1863618952_
                                                   (values-ref _g20410_ 1)))
                                              (if (gx#stx-pair? _tl1863618952_)
                                                  (let ((_e1864318955_
                                                         (gx#stx-e
                                                          _tl1863618952_)))
                                                    (let ((_hd1864418958_
                                                           (##car _e1864318955_))
                                                          (_tl1864518960_
                                                           (##cdr _e1864318955_)))
                                                      (if (gx#stx-pair?
                                                           _hd1864418958_)
                                                          (let ((_e1864618963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1864418958_)))
                    (let ((_hd1864718966_ (##car _e1864618963_))
                          (_tl1864818968_ (##cdr _e1864618963_)))
                      (if (gx#identifier? _hd1864718966_)
                          (if (gx#stx-eq? '%#ref _hd1864718966_)
                              (if (gx#stx-pair? _tl1864818968_)
                                  (let ((_e1864918971_
                                         (gx#stx-e _tl1864818968_)))
                                    (let ((_hd1865018974_
                                           (##car _e1864918971_))
                                          (_tl1865118976_
                                           (##cdr _e1864918971_)))
                                      (if (gx#stx-null? _tl1865118976_)
                                          (if (gx#stx-null? _tl1864518960_)
                                              (letrec ((_loop1863718979_
                                                        (lambda (_hd1863518982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg1864118984_)
                  (if (gx#stx-pair? _hd1863518982_)
                      (let ((_e1863818987_ (gx#stx-e _hd1863518982_)))
                        (let ((_lp-hd1863918990_ (##car _e1863818987_))
                              (_lp-tl1864018992_ (##cdr _e1863818987_)))
                          (if (gx#stx-pair? _lp-hd1863918990_)
                              (let ((_e1865218995_
                                     (gx#stx-e _lp-hd1863918990_)))
                                (let ((_hd1865318998_ (##car _e1865218995_))
                                      (_tl1865419000_ (##cdr _e1865218995_)))
                                  (if (gx#identifier? _hd1865318998_)
                                      (if (gx#stx-eq? '%#ref _hd1865318998_)
                                          (if (gx#stx-pair? _tl1865419000_)
                                              (let ((_e1865519003_
                                                     (gx#stx-e
                                                      _tl1865419000_)))
                                                (let ((_hd1865619006_
                                                       (##car _e1865519003_))
                                                      (_tl1865719008_
                                                       (##cdr _e1865519003_)))
                                                  (if (gx#stx-null?
                                                       _tl1865719008_)
                                                      (_loop1863718979_
                                                       _lp-tl1864018992_
                                                       (cons _hd1865619006_
                                                             _xarg1864118984_))
                                                      (_g1854318849_
                                                       _g1854618852_))))
                                              (_g1854318849_ _g1854618852_))
                                          (_g1854318849_ _g1854618852_))
                                      (_g1854318849_ _g1854618852_))))
                              (_g1854318849_ _g1854618852_))))
                      (let ((_xarg1864219011_ (reverse _xarg1864118984_)))
                        (if (gx#stx-null? _tl1861218891_)
                            ((lambda (_L19014_
                                      _L19015_
                                      _L19016_
                                      _L19017_
                                      _L19018_
                                      _L19019_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1906219065_
                                                           _g1906319067_)
                                                    (cons _g1906219065_
                                                          _g1906319067_))
                                                  '()
                                                  _L19019_)))
                                       (if (gx#identifier? _L19018_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L19017_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1906919072_ _g1907019074_)
                                    (cons _g1906919072_ _g1907019074_))
                                  '()
                                  _L19019_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g1907619079_ _g1907719081_)
                                    (cons _g1907619079_ _g1907719081_))
                                  '()
                                  _L19015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g1908319086_ _g1908419088_)
                                   (cons _g1908319086_ _g1908419088_))
                                 '()
                                 _L19019_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g1909019093_ _g1909119095_)
                                   (cons _g1909019093_ _g1909119095_))
                                 '()
                                 _L19015_)))
               (if (gx#free-identifier=? _L19018_ _L19014_)
                   (not (find (lambda (_g1909719099_)
                                (gx#free-identifier=? _g1909719099_ _L19016_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1910119104_ _g1910219106_)
                                          (cons _g1910119104_ _g1910219106_))
                                        (cons _L19018_ '())
                                        _L19019_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g1854318849_ _g1854618852_)))
                             _hd1865018974_
                             _xarg1864219011_
                             _hd1863218945_
                             _hd1862318921_
                             _tl1860318864_
                             _arg1860918883_)
                            (_g1854318849_ _g1854618852_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1863718979_
                                                 _target1863418950_
                                                 '()))
                                              (_g1854318849_ _g1854618852_))
                                          (_g1854318849_ _g1854618852_))))
                                  (_g1854318849_ _g1854618852_))
                              (_g1854318849_ _g1854618852_))
                          (_g1854318849_ _g1854618852_))))
                  (_g1854318849_ _g1854618852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1854318849_
                                                   _g1854618852_)))))
                                        (_g1854318849_ _g1854618852_))
                                    (_g1854318849_ _g1854618852_))
                                (_g1854318849_ _g1854618852_))))
                        (_g1854318849_ _g1854618852_))
                    (_g1854318849_ _g1854618852_))
                (_g1854318849_ _g1854618852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1854318849_
                                                 _g1854618852_))))
                                        (_g1854318849_ _g1854618852_))
                                    (_g1854318849_ _g1854618852_))))
                            (_g1854318849_ _g1854618852_))
                        (_g1854318849_ _g1854618852_))
                    (_g1854318849_ _g1854618852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1854318849_
                                                     _g1854618852_))))
                                            (_g1854318849_ _g1854618852_))
                                        (_g1854318849_ _g1854618852_))
                                    (_g1854318849_ _g1854618852_))))
                            (_g1854318849_ _g1854618852_))))
                    (_g1854318849_ _g1854618852_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1860418867_
                                         _target1860118862_
                                         '())))))
                                (_g1854318849_ _g1854618852_))
                            (_g1854318849_ _g1854618852_))))
                    (_g1854318849_ _g1854618852_))))
             (_g1854119303_
              (lambda (_g1854619112_)
                (if (gx#stx-pair? _g1854619112_)
                    (let ((_e1855019114_ (gx#stx-e _g1854619112_)))
                      (let ((_hd1855119117_ (##car _e1855019114_))
                            (_tl1855219119_ (##cdr _e1855019114_)))
                        (if (gx#stx-pair/null? _hd1855119117_)
                            (if (fx>= (gx#stx-length _hd1855119117_) '0)
                                (let ((_g20412_
                                       (gx#syntax-split-splice
                                        _hd1855119117_
                                        '0)))
                                  (begin
                                    (let ((_g20413_ (values-count _g20412_)))
                                      (if (not (fx= _g20413_ 2))
                                          (error "Context expects 2 values"
                                                 _g20413_)))
                                    (let ((_target1855319122_
                                           (values-ref _g20412_ 0))
                                          (_tl1855519124_
                                           (values-ref _g20412_ 1)))
                                      (if (gx#stx-null? _tl1855519124_)
                                          (letrec ((_loop1855619127_
                                                    (lambda (_hd1855419130_
                                                             _arg1856019132_)
                                                      (if (gx#stx-pair?
                                                           _hd1855419130_)
                                                          (let ((_e1855719135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1855419130_)))
                    (let ((_lp-hd1855819138_ (##car _e1855719135_))
                          (_lp-tl1855919140_ (##cdr _e1855719135_)))
                      (_loop1855619127_
                       _lp-tl1855919140_
                       (cons _lp-hd1855819138_ _arg1856019132_))))
                  (let ((_arg1856119143_ (reverse _arg1856019132_)))
                    (if (gx#stx-pair? _tl1855219119_)
                        (let ((_e1856219146_ (gx#stx-e _tl1855219119_)))
                          (let ((_hd1856319149_ (##car _e1856219146_))
                                (_tl1856419151_ (##cdr _e1856219146_)))
                            (if (gx#stx-pair? _hd1856319149_)
                                (let ((_e1856519154_
                                       (gx#stx-e _hd1856319149_)))
                                  (let ((_hd1856619157_ (##car _e1856519154_))
                                        (_tl1856719159_ (##cdr _e1856519154_)))
                                    (if (gx#identifier? _hd1856619157_)
                                        (if (gx#stx-eq? '%#call _hd1856619157_)
                                            (if (gx#stx-pair? _tl1856719159_)
                                                (let ((_e1856819162_
                                                       (gx#stx-e
                                                        _tl1856719159_)))
                                                  (let ((_hd1856919165_
                                                         (##car _e1856819162_))
                                                        (_tl1857019167_
                                                         (##cdr _e1856819162_)))
                                                    (if (gx#stx-pair?
                                                         _hd1856919165_)
                                                        (let ((_e1857119170_
                                                               (gx#stx-e
                                                                _hd1856919165_)))
                                                          (let ((_hd1857219173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1857119170_))
                        (_tl1857319175_ (##cdr _e1857119170_)))
                    (if (gx#identifier? _hd1857219173_)
                        (if (gx#stx-eq? '%#ref _hd1857219173_)
                            (if (gx#stx-pair? _tl1857319175_)
                                (let ((_e1857419178_
                                       (gx#stx-e _tl1857319175_)))
                                  (let ((_hd1857519181_ (##car _e1857419178_))
                                        (_tl1857619183_ (##cdr _e1857419178_)))
                                    (if (gx#stx-null? _tl1857619183_)
                                        (if (gx#stx-pair/null? _tl1857019167_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1857019167_)
                                                      '0)
                                                (let ((_g20414_
                                                       (gx#syntax-split-splice
                                                        _tl1857019167_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20415_
                                                           (values-count
                                                            _g20414_)))
                                                      (if (not (fx= _g20415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20415_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1857719186_
                                                           (values-ref
                                                            _g20414_
                                                            0))
                                                          (_tl1857919188_
                                                           (values-ref
                                                            _g20414_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1857919188_)
                                                          (letrec ((_loop1858019191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1857819194_ _xarg1858419196_)
                              (if (gx#stx-pair? _hd1857819194_)
                                  (let ((_e1858119199_
                                         (gx#stx-e _hd1857819194_)))
                                    (let ((_lp-hd1858219202_
                                           (##car _e1858119199_))
                                          (_lp-tl1858319204_
                                           (##cdr _e1858119199_)))
                                      (if (gx#stx-pair? _lp-hd1858219202_)
                                          (let ((_e1858619207_
                                                 (gx#stx-e _lp-hd1858219202_)))
                                            (let ((_hd1858719210_
                                                   (##car _e1858619207_))
                                                  (_tl1858819212_
                                                   (##cdr _e1858619207_)))
                                              (if (gx#identifier?
                                                   _hd1858719210_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1858719210_)
                                                      (if (gx#stx-pair?
                                                           _tl1858819212_)
                                                          (let ((_e1858919215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1858819212_)))
                    (let ((_hd1859019218_ (##car _e1858919215_))
                          (_tl1859119220_ (##cdr _e1858919215_)))
                      (if (gx#stx-null? _tl1859119220_)
                          (_loop1858019191_
                           _lp-tl1858319204_
                           (cons _hd1859019218_ _xarg1858419196_))
                          (_g1854219109_ _g1854619112_))))
                  (_g1854219109_ _g1854619112_))
              (_g1854219109_ _g1854619112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1854219109_
                                                   _g1854619112_))))
                                          (_g1854219109_ _g1854619112_))))
                                  (let ((_xarg1858519223_
                                         (reverse _xarg1858419196_)))
                                    (if (gx#stx-null? _tl1856419151_)
                                        ((lambda (_L19226_ _L19227_ _L19228_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1925619259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1925719261_)
                        (cons _g1925619259_ _g1925719261_))
                      '()
                      _L19228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g1926319266_ _g1926419268_)
                                        (cons _g1926319266_ _g1926419268_))
                                      '()
                                      _L19228_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g1927019273_ _g1927119275_)
                                        (cons _g1927019273_ _g1927119275_))
                                      '()
                                      _L19226_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1927719280_ _g1927819282_)
                                       (cons _g1927719280_ _g1927819282_))
                                     '()
                                     _L19228_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1928419287_ _g1928519289_)
                                       (cons _g1928419287_ _g1928519289_))
                                     '()
                                     _L19226_)))
                   (not (find (lambda (_g1929119293_)
                                (gx#free-identifier=? _g1929119293_ _L19227_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1929519298_ _g1929619300_)
                                          (cons _g1929519298_ _g1929619300_))
                                        '()
                                        _L19228_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1854219109_ _g1854619112_)))
                                         _xarg1858519223_
                                         _hd1857519181_
                                         _arg1856119143_)
                                        (_g1854219109_ _g1854619112_)))))))
                    (_loop1858019191_ _target1857719186_ '()))
                  (_g1854219109_ _g1854619112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1854219109_ _g1854619112_))
                                            (_g1854219109_ _g1854619112_))
                                        (_g1854219109_ _g1854619112_))))
                                (_g1854219109_ _g1854619112_))
                            (_g1854219109_ _g1854619112_))
                        (_g1854219109_ _g1854619112_))))
                (_g1854219109_ _g1854619112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1854219109_ _g1854619112_))
                                            (_g1854219109_ _g1854619112_))
                                        (_g1854219109_ _g1854619112_))))
                                (_g1854219109_ _g1854619112_))))
                        (_g1854219109_ _g1854619112_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1855619127_
                                             _target1855319122_
                                             '()))
                                          (_g1854219109_ _g1854619112_)))))
                                (_g1854219109_ _g1854619112_))
                            (_g1854219109_ _g1854619112_))))
                    (_g1854219109_ _g1854619112_)))))
        (_g1854119303_ _form18540_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form18008_)
      (let* ((_g1801218136_
              (lambda (_g1801318133_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1801318133_)))
             (_g1801118253_
              (lambda (_g1801318139_)
                (if (gx#stx-pair? _g1801318139_)
                    (let ((_e1810218141_ (gx#stx-e _g1801318139_)))
                      (let ((_hd1810318144_ (##car _e1810218141_))
                            (_tl1810418146_ (##cdr _e1810218141_)))
                        (if (gx#stx-pair? _tl1810418146_)
                            (let ((_e1810518149_ (gx#stx-e _tl1810418146_)))
                              (let ((_hd1810618152_ (##car _e1810518149_))
                                    (_tl1810718154_ (##cdr _e1810518149_)))
                                (if (gx#stx-pair? _hd1810618152_)
                                    (let ((_e1810818157_
                                           (gx#stx-e _hd1810618152_)))
                                      (let ((_hd1810918160_
                                             (##car _e1810818157_))
                                            (_tl1811018162_
                                             (##cdr _e1810818157_)))
                                        (if (gx#identifier? _hd1810918160_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1810918160_)
                                                (if (gx#stx-pair?
                                                     _tl1811018162_)
                                                    (let ((_e1811118165_
                                                           (gx#stx-e
                                                            _tl1811018162_)))
                                                      (let ((_hd1811218168_
                                                             (##car _e1811118165_))
                                                            (_tl1811318170_
                                                             (##cdr _e1811118165_)))
                                                        (if (gx#stx-pair?
                                                             _hd1811218168_)
                                                            (let ((_e1811418173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1811218168_)))
                      (let ((_hd1811518176_ (##car _e1811418173_))
                            (_tl1811618178_ (##cdr _e1811418173_)))
                        (if (gx#identifier? _hd1811518176_)
                            (if (gx#stx-eq? '%#ref _hd1811518176_)
                                (if (gx#stx-pair? _tl1811618178_)
                                    (let ((_e1811718181_
                                           (gx#stx-e _tl1811618178_)))
                                      (let ((_hd1811818184_
                                             (##car _e1811718181_))
                                            (_tl1811918186_
                                             (##cdr _e1811718181_)))
                                        (if (gx#stx-null? _tl1811918186_)
                                            (if (gx#stx-pair? _tl1811318170_)
                                                (let ((_e1812018189_
                                                       (gx#stx-e
                                                        _tl1811318170_)))
                                                  (let ((_hd1812118192_
                                                         (##car _e1812018189_))
                                                        (_tl1812218194_
                                                         (##cdr _e1812018189_)))
                                                    (if (gx#stx-pair?
                                                         _hd1812118192_)
                                                        (let ((_e1812318197_
                                                               (gx#stx-e
                                                                _hd1812118192_)))
                                                          (let ((_hd1812418200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1812318197_))
                        (_tl1812518202_ (##cdr _e1812318197_)))
                    (if (gx#identifier? _hd1812418200_)
                        (if (gx#stx-eq? '%#ref _hd1812418200_)
                            (if (gx#stx-pair? _tl1812518202_)
                                (let ((_e1812618205_
                                       (gx#stx-e _tl1812518202_)))
                                  (let ((_hd1812718208_ (##car _e1812618205_))
                                        (_tl1812818210_ (##cdr _e1812618205_)))
                                    (if (gx#stx-null? _tl1812818210_)
                                        (if (gx#stx-pair? _tl1812218194_)
                                            (let ((_e1812918213_
                                                   (gx#stx-e _tl1812218194_)))
                                              (let ((_hd1813018216_
                                                     (##car _e1812918213_))
                                                    (_tl1813118218_
                                                     (##cdr _e1812918213_)))
                                                (if (gx#stx-null?
                                                     _tl1813118218_)
                                                    (if (gx#stx-null?
                                                         _tl1810718154_)
                                                        ((lambda (_L18221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18222_
                          _L18223_)
                   (gxc#generate-runtime-binding-id _L18221_))
                 _hd1812718208_
                 _hd1811818184_
                 _hd1810318144_)
                (_g1801218136_ _g1801318139_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1801218136_
                                                     _g1801318139_))))
                                            (_g1801218136_ _g1801318139_))
                                        (_g1801218136_ _g1801318139_))))
                                (_g1801218136_ _g1801318139_))
                            (_g1801218136_ _g1801318139_))
                        (_g1801218136_ _g1801318139_))))
                (_g1801218136_ _g1801318139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1801218136_ _g1801318139_))
                                            (_g1801218136_ _g1801318139_))))
                                    (_g1801218136_ _g1801318139_))
                                (_g1801218136_ _g1801318139_))
                            (_g1801218136_ _g1801318139_))))
                    (_g1801218136_ _g1801318139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1801218136_
                                                     _g1801318139_))
                                                (_g1801218136_ _g1801318139_))
                                            (_g1801218136_ _g1801318139_))))
                                    (_g1801218136_ _g1801318139_))))
                            (_g1801218136_ _g1801318139_))))
                    (_g1801218136_ _g1801318139_))))
             (_g1801018389_
              (lambda (_g1801318256_)
                (if (gx#stx-pair? _g1801318256_)
                    (let ((_e1806318258_ (gx#stx-e _g1801318256_)))
                      (let ((_hd1806418261_ (##car _e1806318258_))
                            (_tl1806518263_ (##cdr _e1806318258_)))
                        (if (gx#stx-pair/null? _hd1806418261_)
                            (if (fx>= (gx#stx-length _hd1806418261_) '0)
                                (let ((_g20416_
                                       (gx#syntax-split-splice
                                        _hd1806418261_
                                        '0)))
                                  (begin
                                    (let ((_g20417_ (values-count _g20416_)))
                                      (if (not (fx= _g20417_ 2))
                                          (error "Context expects 2 values"
                                                 _g20417_)))
                                    (let ((_target1806618266_
                                           (values-ref _g20416_ 0))
                                          (_tl1806818268_
                                           (values-ref _g20416_ 1)))
                                      (letrec ((_loop1806918271_
                                                (lambda (_hd1806718274_
                                                         _arg1807318276_)
                                                  (if (gx#stx-pair?
                                                       _hd1806718274_)
                                                      (let ((_e1807018279_
                                                             (gx#stx-e
                                                              _hd1806718274_)))
                                                        (let ((_lp-hd1807118282_
                                                               (##car _e1807018279_))
                                                              (_lp-tl1807218284_
                                                               (##cdr _e1807018279_)))
                                                          (_loop1806918271_
                                                           _lp-tl1807218284_
                                                           (cons _lp-hd1807118282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1807318276_))))
              (let ((_arg1807418287_ (reverse _arg1807318276_)))
                (if (gx#stx-pair? _tl1806518263_)
                    (let ((_e1807518290_ (gx#stx-e _tl1806518263_)))
                      (let ((_hd1807618293_ (##car _e1807518290_))
                            (_tl1807718295_ (##cdr _e1807518290_)))
                        (if (gx#stx-pair? _hd1807618293_)
                            (let ((_e1807818298_ (gx#stx-e _hd1807618293_)))
                              (let ((_hd1807918301_ (##car _e1807818298_))
                                    (_tl1808018303_ (##cdr _e1807818298_)))
                                (if (gx#identifier? _hd1807918301_)
                                    (if (gx#stx-eq? '%#call _hd1807918301_)
                                        (if (gx#stx-pair? _tl1808018303_)
                                            (let ((_e1808118306_
                                                   (gx#stx-e _tl1808018303_)))
                                              (let ((_hd1808218309_
                                                     (##car _e1808118306_))
                                                    (_tl1808318311_
                                                     (##cdr _e1808118306_)))
                                                (if (gx#stx-pair?
                                                     _hd1808218309_)
                                                    (let ((_e1808418314_
                                                           (gx#stx-e
                                                            _hd1808218309_)))
                                                      (let ((_hd1808518317_
                                                             (##car _e1808418314_))
                                                            (_tl1808618319_
                                                             (##cdr _e1808418314_)))
                                                        (if (gx#identifier?
                                                             _hd1808518317_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1808518317_)
                        (if (gx#stx-pair? _tl1808618319_)
                            (let ((_e1808718322_ (gx#stx-e _tl1808618319_)))
                              (let ((_hd1808818325_ (##car _e1808718322_))
                                    (_tl1808918327_ (##cdr _e1808718322_)))
                                (if (gx#stx-null? _tl1808918327_)
                                    (if (gx#stx-pair? _tl1808318311_)
                                        (let ((_e1809018330_
                                               (gx#stx-e _tl1808318311_)))
                                          (let ((_hd1809118333_
                                                 (##car _e1809018330_))
                                                (_tl1809218335_
                                                 (##cdr _e1809018330_)))
                                            (if (gx#stx-pair? _hd1809118333_)
                                                (let ((_e1809318338_
                                                       (gx#stx-e
                                                        _hd1809118333_)))
                                                  (let ((_hd1809418341_
                                                         (##car _e1809318338_))
                                                        (_tl1809518343_
                                                         (##cdr _e1809318338_)))
                                                    (if (gx#identifier?
                                                         _hd1809418341_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1809418341_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1809518343_)
                        (let ((_e1809618346_ (gx#stx-e _tl1809518343_)))
                          (let ((_hd1809718349_ (##car _e1809618346_))
                                (_tl1809818351_ (##cdr _e1809618346_)))
                            (if (gx#stx-null? _tl1809818351_)
                                (if (gx#stx-null? _tl1807718295_)
                                    ((lambda (_L18354_
                                              _L18355_
                                              _L18356_
                                              _L18357_)
                                       (gxc#generate-runtime-binding-id
                                        _L18354_))
                                     _hd1809718349_
                                     _hd1808818325_
                                     _tl1806818268_
                                     _arg1807418287_)
                                    (_g1801118253_ _g1801318256_))
                                (_g1801118253_ _g1801318256_))))
                        (_g1801118253_ _g1801318256_))
                    (_g1801118253_ _g1801318256_))
                (_g1801118253_ _g1801318256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1801118253_
                                                 _g1801318256_))))
                                        (_g1801118253_ _g1801318256_))
                                    (_g1801118253_ _g1801318256_))))
                            (_g1801118253_ _g1801318256_))
                        (_g1801118253_ _g1801318256_))
                    (_g1801118253_ _g1801318256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1801118253_
                                                     _g1801318256_))))
                                            (_g1801118253_ _g1801318256_))
                                        (_g1801118253_ _g1801318256_))
                                    (_g1801118253_ _g1801318256_))))
                            (_g1801118253_ _g1801318256_))))
                    (_g1801118253_ _g1801318256_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1806918271_
                                         _target1806618266_
                                         '())))))
                                (_g1801118253_ _g1801318256_))
                            (_g1801118253_ _g1801318256_))))
                    (_g1801118253_ _g1801318256_))))
             (_g1800918537_
              (lambda (_g1801318392_)
                (if (gx#stx-pair? _g1801318392_)
                    (let ((_e1801718394_ (gx#stx-e _g1801318392_)))
                      (let ((_hd1801818397_ (##car _e1801718394_))
                            (_tl1801918399_ (##cdr _e1801718394_)))
                        (if (gx#stx-pair/null? _hd1801818397_)
                            (if (fx>= (gx#stx-length _hd1801818397_) '0)
                                (let ((_g20418_
                                       (gx#syntax-split-splice
                                        _hd1801818397_
                                        '0)))
                                  (begin
                                    (let ((_g20419_ (values-count _g20418_)))
                                      (if (not (fx= _g20419_ 2))
                                          (error "Context expects 2 values"
                                                 _g20419_)))
                                    (let ((_target1802018402_
                                           (values-ref _g20418_ 0))
                                          (_tl1802218404_
                                           (values-ref _g20418_ 1)))
                                      (if (gx#stx-null? _tl1802218404_)
                                          (letrec ((_loop1802318407_
                                                    (lambda (_hd1802118410_
                                                             _arg1802718412_)
                                                      (if (gx#stx-pair?
                                                           _hd1802118410_)
                                                          (let ((_e1802418415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1802118410_)))
                    (let ((_lp-hd1802518418_ (##car _e1802418415_))
                          (_lp-tl1802618420_ (##cdr _e1802418415_)))
                      (_loop1802318407_
                       _lp-tl1802618420_
                       (cons _lp-hd1802518418_ _arg1802718412_))))
                  (let ((_arg1802818423_ (reverse _arg1802718412_)))
                    (if (gx#stx-pair? _tl1801918399_)
                        (let ((_e1802918426_ (gx#stx-e _tl1801918399_)))
                          (let ((_hd1803018429_ (##car _e1802918426_))
                                (_tl1803118431_ (##cdr _e1802918426_)))
                            (if (gx#stx-pair? _hd1803018429_)
                                (let ((_e1803218434_
                                       (gx#stx-e _hd1803018429_)))
                                  (let ((_hd1803318437_ (##car _e1803218434_))
                                        (_tl1803418439_ (##cdr _e1803218434_)))
                                    (if (gx#identifier? _hd1803318437_)
                                        (if (gx#stx-eq? '%#call _hd1803318437_)
                                            (if (gx#stx-pair? _tl1803418439_)
                                                (let ((_e1803518442_
                                                       (gx#stx-e
                                                        _tl1803418439_)))
                                                  (let ((_hd1803618445_
                                                         (##car _e1803518442_))
                                                        (_tl1803718447_
                                                         (##cdr _e1803518442_)))
                                                    (if (gx#stx-pair?
                                                         _hd1803618445_)
                                                        (let ((_e1803818450_
                                                               (gx#stx-e
                                                                _hd1803618445_)))
                                                          (let ((_hd1803918453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1803818450_))
                        (_tl1804018455_ (##cdr _e1803818450_)))
                    (if (gx#identifier? _hd1803918453_)
                        (if (gx#stx-eq? '%#ref _hd1803918453_)
                            (if (gx#stx-pair? _tl1804018455_)
                                (let ((_e1804118458_
                                       (gx#stx-e _tl1804018455_)))
                                  (let ((_hd1804218461_ (##car _e1804118458_))
                                        (_tl1804318463_ (##cdr _e1804118458_)))
                                    (if (gx#stx-null? _tl1804318463_)
                                        (if (gx#stx-pair/null? _tl1803718447_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1803718447_)
                                                      '0)
                                                (let ((_g20420_
                                                       (gx#syntax-split-splice
                                                        _tl1803718447_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20421_
                                                           (values-count
                                                            _g20420_)))
                                                      (if (not (fx= _g20421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20421_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1804418466_
                                                           (values-ref
                                                            _g20420_
                                                            0))
                                                          (_tl1804618468_
                                                           (values-ref
                                                            _g20420_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1804618468_)
                                                          (letrec ((_loop1804718471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1804518474_ _xarg1805118476_)
                              (if (gx#stx-pair? _hd1804518474_)
                                  (let ((_e1804818479_
                                         (gx#stx-e _hd1804518474_)))
                                    (let ((_lp-hd1804918482_
                                           (##car _e1804818479_))
                                          (_lp-tl1805018484_
                                           (##cdr _e1804818479_)))
                                      (if (gx#stx-pair? _lp-hd1804918482_)
                                          (let ((_e1805318487_
                                                 (gx#stx-e _lp-hd1804918482_)))
                                            (let ((_hd1805418490_
                                                   (##car _e1805318487_))
                                                  (_tl1805518492_
                                                   (##cdr _e1805318487_)))
                                              (if (gx#identifier?
                                                   _hd1805418490_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1805418490_)
                                                      (if (gx#stx-pair?
                                                           _tl1805518492_)
                                                          (let ((_e1805618495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1805518492_)))
                    (let ((_hd1805718498_ (##car _e1805618495_))
                          (_tl1805818500_ (##cdr _e1805618495_)))
                      (if (gx#stx-null? _tl1805818500_)
                          (_loop1804718471_
                           _lp-tl1805018484_
                           (cons _hd1805718498_ _xarg1805118476_))
                          (_g1801018389_ _g1801318392_))))
                  (_g1801018389_ _g1801318392_))
              (_g1801018389_ _g1801318392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1801018389_
                                                   _g1801318392_))))
                                          (_g1801018389_ _g1801318392_))))
                                  (let ((_xarg1805218503_
                                         (reverse _xarg1805118476_)))
                                    (if (gx#stx-null? _tl1803118431_)
                                        ((lambda (_L18506_ _L18507_ _L18508_)
                                           (gxc#generate-runtime-binding-id
                                            _L18507_))
                                         _xarg1805218503_
                                         _hd1804218461_
                                         _arg1802818423_)
                                        (_g1801018389_ _g1801318392_)))))))
                    (_loop1804718471_ _target1804418466_ '()))
                  (_g1801018389_ _g1801318392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1801018389_ _g1801318392_))
                                            (_g1801018389_ _g1801318392_))
                                        (_g1801018389_ _g1801318392_))))
                                (_g1801018389_ _g1801318392_))
                            (_g1801018389_ _g1801318392_))
                        (_g1801018389_ _g1801318392_))))
                (_g1801018389_ _g1801318392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1801018389_ _g1801318392_))
                                            (_g1801018389_ _g1801318392_))
                                        (_g1801018389_ _g1801318392_))))
                                (_g1801018389_ _g1801318392_))))
                        (_g1801018389_ _g1801318392_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1802318407_
                                             _target1802018402_
                                             '()))
                                          (_g1801018389_ _g1801318392_)))))
                                (_g1801018389_ _g1801318392_))
                            (_g1801018389_ _g1801318392_))))
                    (_g1801018389_ _g1801318392_)))))
        (_g1800918537_ _form18008_))))
  (define gxc#lambda-form-arity
    (lambda (_form17812_)
      (let* ((_g1781417828_
              (lambda (_g1781517825_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1781517825_)))
             (_g1781318005_
              (lambda (_g1781517831_)
                (if (gx#stx-pair? _g1781517831_)
                    (let ((_e1781817833_ (gx#stx-e _g1781517831_)))
                      (let ((_hd1781917836_ (##car _e1781817833_))
                            (_tl1782017838_ (##cdr _e1781817833_)))
                        (if (gx#stx-pair? _tl1782017838_)
                            (let ((_e1782117841_ (gx#stx-e _tl1782017838_)))
                              (let ((_hd1782217844_ (##car _e1782117841_))
                                    (_tl1782317846_ (##cdr _e1782117841_)))
                                (if (gx#stx-null? _tl1782317846_)
                                    ((lambda (_L17849_ _L17850_)
                                       (let* ((_g1786517893_
                                               (lambda (_g1786617890_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1786617890_)))
                                              (_g1786417906_
                                               (lambda (_g1786617896_)
                                                 ((lambda (_L17898_)
                                                    (cons '0 '()))
                                                  _g1786617896_)))
                                              (_g1786317955_
                                               (lambda (_g1786617909_)
                                                 (if (gx#stx-pair/null?
                                                      _g1786617909_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1786617909_)
                                                               '0)
                                                         (let ((_g20422_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1786617909_
                         '0)))
                   (begin
                     (let ((_g20423_ (values-count _g20422_)))
                       (if (not (fx= _g20423_ 2))
                           (error "Context expects 2 values" _g20423_)))
                     (let ((_target1787917911_ (values-ref _g20422_ 0))
                           (_tl1788117913_ (values-ref _g20422_ 1)))
                       (letrec ((_loop1788217916_
                                 (lambda (_hd1788017919_ _arg1788617921_)
                                   (if (gx#stx-pair? _hd1788017919_)
                                       (let ((_e1788317924_
                                              (gx#stx-e _hd1788017919_)))
                                         (let ((_lp-hd1788417927_
                                                (##car _e1788317924_))
                                               (_lp-tl1788517929_
                                                (##cdr _e1788317924_)))
                                           (_loop1788217916_
                                            _lp-tl1788517929_
                                            (cons _lp-hd1788417927_
                                                  _arg1788617921_))))
                                       (let ((_arg1788717932_
                                              (reverse _arg1788617921_)))
                                         ((lambda (_L17935_ _L17936_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1794717950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1794817952_)
                              (cons _g1794717950_ _g1794817952_))
                            '()
                            _L17936_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl1788117913_
                                          _arg1788717932_))))))
                         (_loop1788217916_ _target1787917911_ '())))))
                 (_g1786417906_ _g1786617909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1786417906_
                                                      _g1786617909_))))
                                              (_g1786218002_
                                               (lambda (_g1786617958_)
                                                 (if (gx#stx-pair/null?
                                                      _g1786617958_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1786617958_)
                                                               '0)
                                                         (let ((_g20424_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1786617958_
                         '0)))
                   (begin
                     (let ((_g20425_ (values-count _g20424_)))
                       (if (not (fx= _g20425_ 2))
                           (error "Context expects 2 values" _g20425_)))
                     (let ((_target1786817960_ (values-ref _g20424_ 0))
                           (_tl1787017962_ (values-ref _g20424_ 1)))
                       (if (gx#stx-null? _tl1787017962_)
                           (letrec ((_loop1787117965_
                                     (lambda (_hd1786917968_ _arg1787517970_)
                                       (if (gx#stx-pair? _hd1786917968_)
                                           (let ((_e1787217973_
                                                  (gx#stx-e _hd1786917968_)))
                                             (let ((_lp-hd1787317976_
                                                    (##car _e1787217973_))
                                                   (_lp-tl1787417978_
                                                    (##cdr _e1787217973_)))
                                               (_loop1787117965_
                                                _lp-tl1787417978_
                                                (cons _lp-hd1787317976_
                                                      _arg1787517970_))))
                                           (let ((_arg1787617981_
                                                  (reverse _arg1787517970_)))
                                             ((lambda (_L17984_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1799417997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1799517999_)
                            (cons _g1799417997_ _g1799517999_))
                          '()
                          _L17984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg1787617981_))))))
                             (_loop1787117965_ _target1786817960_ '()))
                           (_g1786317955_ _g1786617958_)))))
                 (_g1786317955_ _g1786617958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1786317955_
                                                      _g1786617958_)))))
                                         (_g1786218002_ _L17850_)))
                                     _hd1782217844_
                                     _hd1781917836_)
                                    (_g1781417828_ _g1781517831_))))
                            (_g1781417828_ _g1781517831_))))
                    (_g1781417828_ _g1781517831_)))))
        (_g1781318005_ _form17812_))))
  (define gxc#lambda-expr?
    (lambda (_expr17765_)
      (let* ((_g1776817778_
              (lambda (_g1776917775_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1776917775_)))
             (_g1776717785_ (lambda (_g1776917781_) ((lambda () '#f))))
             (_g1776617809_
              (lambda (_g1776917788_)
                (if (gx#stx-pair? _g1776917788_)
                    (let ((_e1777117790_ (gx#stx-e _g1776917788_)))
                      (let ((_hd1777217793_ (##car _e1777117790_))
                            (_tl1777317795_ (##cdr _e1777117790_)))
                        (if (gx#identifier? _hd1777217793_)
                            (if (gx#stx-eq? '%#lambda _hd1777217793_)
                                ((lambda (_L17798_) '#t) _tl1777317795_)
                                (_g1776717785_ _g1776917788_))
                            (_g1776717785_ _g1776917788_))))
                    (_g1776717785_ _g1776917788_)))))
        (_g1776617809_ _expr17765_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr17718_)
      (let* ((_g1772117731_
              (lambda (_g1772217728_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1772217728_)))
             (_g1772017738_ (lambda (_g1772217734_) ((lambda () '#f))))
             (_g1771917762_
              (lambda (_g1772217741_)
                (if (gx#stx-pair? _g1772217741_)
                    (let ((_e1772417743_ (gx#stx-e _g1772217741_)))
                      (let ((_hd1772517746_ (##car _e1772417743_))
                            (_tl1772617748_ (##cdr _e1772417743_)))
                        (if (gx#identifier? _hd1772517746_)
                            (if (gx#stx-eq? '%#case-lambda _hd1772517746_)
                                ((lambda (_L17751_) '#t) _tl1772617748_)
                                (_g1772017738_ _g1772217741_))
                            (_g1772017738_ _g1772217741_))))
                    (_g1772017738_ _g1772217741_)))))
        (_g1771917762_ _expr17718_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17587_)
      (let* ((_g1759017620_
              (lambda (_g1759117617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1759117617_)))
             (_g1758917627_ (lambda (_g1759117623_) ((lambda () '#f))))
             (_g1758817715_
              (lambda (_g1759117630_)
                (if (gx#stx-pair? _g1759117630_)
                    (let ((_e1759517632_ (gx#stx-e _g1759117630_)))
                      (let ((_hd1759617635_ (##car _e1759517632_))
                            (_tl1759717637_ (##cdr _e1759517632_)))
                        (if (gx#identifier? _hd1759617635_)
                            (if (gx#stx-eq? '%#let-values _hd1759617635_)
                                (if (gx#stx-pair? _tl1759717637_)
                                    (let ((_e1759817640_
                                           (gx#stx-e _tl1759717637_)))
                                      (let ((_hd1759917643_
                                             (##car _e1759817640_))
                                            (_tl1760017645_
                                             (##cdr _e1759817640_)))
                                        (if (gx#stx-pair? _hd1759917643_)
                                            (let ((_e1760117648_
                                                   (gx#stx-e _hd1759917643_)))
                                              (let ((_hd1760217651_
                                                     (##car _e1760117648_))
                                                    (_tl1760317653_
                                                     (##cdr _e1760117648_)))
                                                (if (gx#stx-pair?
                                                     _hd1760217651_)
                                                    (let ((_e1760417656_
                                                           (gx#stx-e
                                                            _hd1760217651_)))
                                                      (let ((_hd1760517659_
                                                             (##car _e1760417656_))
                                                            (_tl1760617661_
                                                             (##cdr _e1760417656_)))
                                                        (if (gx#stx-pair?
                                                             _hd1760517659_)
                                                            (let ((_e1760717664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1760517659_)))
                      (let ((_hd1760817667_ (##car _e1760717664_))
                            (_tl1760917669_ (##cdr _e1760717664_)))
                        (if (gx#stx-null? _tl1760917669_)
                            (if (gx#stx-pair? _tl1760617661_)
                                (let ((_e1761017672_
                                       (gx#stx-e _tl1760617661_)))
                                  (let ((_hd1761117675_ (##car _e1761017672_))
                                        (_tl1761217677_ (##cdr _e1761017672_)))
                                    (if (gx#stx-null? _tl1761217677_)
                                        (if (gx#stx-null? _tl1760317653_)
                                            (if (gx#stx-pair? _tl1760017645_)
                                                (let ((_e1761317680_
                                                       (gx#stx-e
                                                        _tl1760017645_)))
                                                  (let ((_hd1761417683_
                                                         (##car _e1761317680_))
                                                        (_tl1761517685_
                                                         (##cdr _e1761317680_)))
                                                    (if (gx#stx-null?
                                                         _tl1761517685_)
                                                        ((lambda (_L17688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17689_
                          _L17690_)
                   (if (gx#identifier? _L17690_)
                       (if (gxc#lambda-expr? _L17689_)
                           (gxc#case-lambda-expr? _L17688_)
                           '#f)
                       '#f))
                 _hd1761417683_
                 _hd1761117675_
                 _hd1760817667_)
                (_g1758917627_ _g1759117630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1758917627_ _g1759117630_))
                                            (_g1758917627_ _g1759117630_))
                                        (_g1758917627_ _g1759117630_))))
                                (_g1758917627_ _g1759117630_))
                            (_g1758917627_ _g1759117630_))))
                    (_g1758917627_ _g1759117630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1758917627_
                                                     _g1759117630_))))
                                            (_g1758917627_ _g1759117630_))))
                                    (_g1758917627_ _g1759117630_))
                                (_g1758917627_ _g1759117630_))
                            (_g1758917627_ _g1759117630_))))
                    (_g1758917627_ _g1759117630_)))))
        (_g1758817715_ _expr17587_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda17327
      (lambda (_stx17329_ _id17330_ _clauses17331_ _gensym?17332_)
        (let _lp17334_ ((_rest17336_ _clauses17331_)
                        (_ids17337_ '())
                        (_impls17338_ '())
                        (_clauses17339_ '()))
          (let* ((_rest1734017348_ _rest17336_)
                 (_E1734317352_
                  (lambda () (error '"No clause matching" _rest1734017348_)))
                 (_else1734217356_
                  (lambda ()
                    (values (reverse _ids17337_)
                            (reverse _impls17338_)
                            (reverse _clauses17339_))))
                 (_K1734417561_
                  (lambda (_rest17359_ _clause17360_)
                    (if (gxc#dispatch-lambda-form? _clause17360_)
                        (_lp17334_
                         _rest17359_
                         _ids17337_
                         _impls17338_
                         (cons _clause17360_ _clauses17339_))
                        (let* ((_g1736217373_
                                (lambda (_g1736317370_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1736317370_)))
                               (_g1736117558_
                                (lambda (_g1736317376_)
                                  (if (gx#stx-pair? _g1736317376_)
                                      (let ((_e1736617378_
                                             (gx#stx-e _g1736317376_)))
                                        (let ((_hd1736717381_
                                               (##car _e1736617378_))
                                              (_tl1736817383_
                                               (##cdr _e1736617378_)))
                                          ((lambda (_L17386_ _L17387_)
                                             (let* ((_id17404_
                                                     (make-symbol
                                                      (gx#stx-e _id17330_)
                                                      '"__"
                                                      (length _clauses17339_)
                                                      (if _gensym?17332_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id17406_
                                                     (gx#core-quote-syntax__1
                                                      _id17404_
                                                      (gx#stx-source
                                                       _stx17329_)))
                                                    (_impl17408_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L17387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17386_))
              _stx17329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause17555_
                                                     (let* ((_g1741217440_
                                                             (lambda (_g1741317437_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1741317437_)))
                                                            (_g1741117456_
                                                             (lambda (_g1741317443_)
                                                               ((lambda (_L17445_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17387_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id17406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L17445_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx17329_)
                                      '())))
                        _g1741317443_)))
                    (_g1741017505_
                     (lambda (_g1741317459_)
                       (if (gx#stx-pair/null? _g1741317459_)
                           (if (fx>= (gx#stx-length _g1741317459_) '0)
                               (let ((_g20426_
                                      (gx#syntax-split-splice
                                       _g1741317459_
                                       '0)))
                                 (begin
                                   (let ((_g20427_ (values-count _g20426_)))
                                     (if (not (fx= _g20427_ 2))
                                         (error "Context expects 2 values"
                                                _g20427_)))
                                   (let ((_target1742617461_
                                          (values-ref _g20426_ 0))
                                         (_tl1742817463_
                                          (values-ref _g20426_ 1)))
                                     (letrec ((_loop1742917466_
                                               (lambda (_hd1742717469_
                                                        _arg1743317471_)
                                                 (if (gx#stx-pair?
                                                      _hd1742717469_)
                                                     (let ((_e1743017474_
                                                            (gx#stx-e
                                                             _hd1742717469_)))
                                                       (let ((_lp-hd1743117477_
                                                              (##car _e1743017474_))
                                                             (_lp-tl1743217479_
                                                              (##cdr _e1743017474_)))
                                                         (_loop1742917466_
                                                          _lp-tl1743217479_
                                                          (cons _lp-hd1743117477_
                                                                _arg1743317471_))))
                                                     (let ((_arg1743417482_
                                                            (reverse _arg1743317471_)))
                                                       ((lambda (_L17485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17486_)
                  (cons _L17387_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id17406_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L17485_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g1749717500_ _g1749817502_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g1749717500_ '()))
                                   _g1749817502_))
                           '()
                           _L17486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx17329_)
                              '())))
                _tl1742817463_
                _arg1743417482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1742917466_
                                        _target1742617461_
                                        '())))))
                               (_g1741117456_ _g1741317459_))
                           (_g1741117456_ _g1741317459_))))
                    (_g1740917552_
                     (lambda (_g1741317508_)
                       (if (gx#stx-pair/null? _g1741317508_)
                           (if (fx>= (gx#stx-length _g1741317508_) '0)
                               (let ((_g20428_
                                      (gx#syntax-split-splice
                                       _g1741317508_
                                       '0)))
                                 (begin
                                   (let ((_g20429_ (values-count _g20428_)))
                                     (if (not (fx= _g20429_ 2))
                                         (error "Context expects 2 values"
                                                _g20429_)))
                                   (let ((_target1741517510_
                                          (values-ref _g20428_ 0))
                                         (_tl1741717512_
                                          (values-ref _g20428_ 1)))
                                     (if (gx#stx-null? _tl1741717512_)
                                         (letrec ((_loop1741817515_
                                                   (lambda (_hd1741617518_
                                                            _arg1742217520_)
                                                     (if (gx#stx-pair?
                                                          _hd1741617518_)
                                                         (let ((_e1741917523_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1741617518_)))
                   (let ((_lp-hd1742017526_ (##car _e1741917523_))
                         (_lp-tl1742117528_ (##cdr _e1741917523_)))
                     (_loop1741817515_
                      _lp-tl1742117528_
                      (cons _lp-hd1742017526_ _arg1742217520_))))
                 (let ((_arg1742317531_ (reverse _arg1742217520_)))
                   ((lambda (_L17534_)
                      (cons _L17387_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id17406_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g1754417547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1754517549_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g1754417547_ '()))
                         _g1754517549_))
                 '()
                 _L17534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx17329_)
                                  '())))
                    _arg1742317531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1741817515_
                                            _target1741517510_
                                            '()))
                                         (_g1741017505_ _g1741317508_)))))
                               (_g1741017505_ _g1741317508_))
                           (_g1741017505_ _g1741317508_)))))
               (_g1740917552_ _L17387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp17334_
                                                _rest17359_
                                                (cons _id17406_ _ids17337_)
                                                (cons _impl17408_ _impls17338_)
                                                (cons _clause17555_
                                                      _clauses17339_))))
                                           _tl1736817383_
                                           _hd1736717381_)))
                                      (_g1736217373_ _g1736317376_)))))
                          (_g1736117558_ _clause17360_))))))
            (if (##pair? _rest1734017348_)
                (let ((_hd1734517564_ (##car _rest1734017348_))
                      (_tl1734617566_ (##cdr _rest1734017348_)))
                  (let* ((_clause17569_ _hd1734517564_)
                         (_rest17571_ _tl1734617566_))
                    (_K1734417561_ _rest17571_ _clause17569_)))
                (_else1734217356_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17576_ _id17577_ _clauses17578_)
          (let ((_gensym?17580_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda17327
             _stx17576_
             _id17577_
             _clauses17578_
             _gensym?17580_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20431_
          (let ((_g20430_ (length _g20431_)))
            (cond ((fx= _g20430_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20431_))
                  ((fx= _g20430_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda17327
                          _g20431_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20431_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16918_)
      (letrec ((_case-lambda-clause-def16920_
                (lambda (_id17325_ _impl17326_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id17325_ '())
                               (cons (gxc#compile-e _impl17326_) '())))
                   _stx16918_))))
        (let* ((_g1692416969_
                (lambda (_g1692516966_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1692516966_)))
               (_g1692317015_
                (lambda (_g1692516972_)
                  (if (gx#stx-pair? _g1692516972_)
                      (let ((_e1695616974_ (gx#stx-e _g1692516972_)))
                        (let ((_hd1695716977_ (##car _e1695616974_))
                              (_tl1695816979_ (##cdr _e1695616974_)))
                          (if (gx#stx-pair? _tl1695816979_)
                              (let ((_e1695916982_ (gx#stx-e _tl1695816979_)))
                                (let ((_hd1696016985_ (##car _e1695916982_))
                                      (_tl1696116987_ (##cdr _e1695916982_)))
                                  (if (gx#stx-pair? _tl1696116987_)
                                      (let ((_e1696216990_
                                             (gx#stx-e _tl1696116987_)))
                                        (let ((_hd1696316993_
                                               (##car _e1696216990_))
                                              (_tl1696416995_
                                               (##cdr _e1696216990_)))
                                          (if (gx#stx-null? _tl1696416995_)
                                              ((lambda (_L16998_ _L16999_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L16999_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16998_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16918_))
                                               _hd1696316993_
                                               _hd1696016985_)
                                              (_g1692416969_ _g1692516972_))))
                                      (_g1692416969_ _g1692516972_))))
                              (_g1692416969_ _g1692516972_))))
                      (_g1692416969_ _g1692516972_))))
               (_g1692217197_
                (lambda (_g1692517018_)
                  (if (gx#stx-pair? _g1692517018_)
                      (let ((_e1694217020_ (gx#stx-e _g1692517018_)))
                        (let ((_hd1694317023_ (##car _e1694217020_))
                              (_tl1694417025_ (##cdr _e1694217020_)))
                          (if (gx#stx-pair? _tl1694417025_)
                              (let ((_e1694517028_ (gx#stx-e _tl1694417025_)))
                                (let ((_hd1694617031_ (##car _e1694517028_))
                                      (_tl1694717033_ (##cdr _e1694517028_)))
                                  (if (gx#stx-pair? _hd1694617031_)
                                      (let ((_e1694817036_
                                             (gx#stx-e _hd1694617031_)))
                                        (let ((_hd1694917039_
                                               (##car _e1694817036_))
                                              (_tl1695017041_
                                               (##cdr _e1694817036_)))
                                          (if (gx#stx-null? _tl1695017041_)
                                              (if (gx#stx-pair? _tl1694717033_)
                                                  (let ((_e1695117044_
                                                         (gx#stx-e
                                                          _tl1694717033_)))
                                                    (let ((_hd1695217047_
                                                           (##car _e1695117044_))
                                                          (_tl1695317049_
                                                           (##cdr _e1695117044_)))
                                                      (if (gx#stx-null?
                                                           _tl1695317049_)
                                                          ((lambda (_L17052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17053_)
                     (if (if (gx#identifier? _L17053_)
                             (gxc#opt-lambda-expr? _L17052_)
                             '#f)
                         (let* ((_g1706917099_
                                 (lambda (_g1707017096_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1707017096_)))
                                (_g1706817194_
                                 (lambda (_g1707017102_)
                                   (if (gx#stx-pair? _g1707017102_)
                                       (let ((_e1707417104_
                                              (gx#stx-e _g1707017102_)))
                                         (let ((_hd1707517107_
                                                (##car _e1707417104_))
                                               (_tl1707617109_
                                                (##cdr _e1707417104_)))
                                           (if (gx#stx-pair? _tl1707617109_)
                                               (let ((_e1707717112_
                                                      (gx#stx-e
                                                       _tl1707617109_)))
                                                 (let ((_hd1707817115_
                                                        (##car _e1707717112_))
                                                       (_tl1707917117_
                                                        (##cdr _e1707717112_)))
                                                   (if (gx#stx-pair?
                                                        _hd1707817115_)
                                                       (let ((_e1708017120_
                                                              (gx#stx-e
                                                               _hd1707817115_)))
                                                         (let ((_hd1708117123_
                                                                (##car _e1708017120_))
                                                               (_tl1708217125_
                                                                (##cdr _e1708017120_)))
                                                           (if (gx#stx-pair?
                                                                _hd1708117123_)
                                                               (let ((_e1708317128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1708117123_)))
                         (let ((_hd1708417131_ (##car _e1708317128_))
                               (_tl1708517133_ (##cdr _e1708317128_)))
                           (if (gx#stx-pair? _hd1708417131_)
                               (let ((_e1708617136_ (gx#stx-e _hd1708417131_)))
                                 (let ((_hd1708717139_ (##car _e1708617136_))
                                       (_tl1708817141_ (##cdr _e1708617136_)))
                                   (if (gx#stx-null? _tl1708817141_)
                                       (if (gx#stx-pair? _tl1708517133_)
                                           (let ((_e1708917144_
                                                  (gx#stx-e _tl1708517133_)))
                                             (let ((_hd1709017147_
                                                    (##car _e1708917144_))
                                                   (_tl1709117149_
                                                    (##cdr _e1708917144_)))
                                               (if (gx#stx-null?
                                                    _tl1709117149_)
                                                   (if (gx#stx-null?
                                                        _tl1708217125_)
                                                       (if (gx#stx-pair?
                                                            _tl1707917117_)
                                                           (let ((_e1709217152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1707917117_)))
                     (let ((_hd1709317155_ (##car _e1709217152_))
                           (_tl1709417157_ (##cdr _e1709217152_)))
                       (if (gx#stx-null? _tl1709417157_)
                           ((lambda (_L17160_ _L17161_ _L17162_)
                              (let* ((_lambda-id17186_
                                      (make-symbol
                                       (gx#stx-e _L17053_)
                                       '"__"
                                       (gx#stx-e _L17162_)))
                                     (_lambda-id17188_
                                      (gx#core-quote-syntax__1
                                       _lambda-id17186_
                                       (gx#stx-source _stx16918_)))
                                     (_g20432_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id17188_))
                                     (_new-case-lambda-expr17191_
                                      (gxc#apply-expression-subst
                                       _L17160_
                                       _L17162_
                                       _lambda-id17188_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L17053_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id17188_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id17188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L17161_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16918_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L17053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr17191_ '())))
               _stx16918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx16918_))))
                            _hd1709317155_
                            _hd1709017147_
                            _hd1708717139_)
                           (_g1706917099_ _g1707017102_))))
                   (_g1706917099_ _g1707017102_))
               (_g1706917099_ _g1707017102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1706917099_
                                                    _g1707017102_))))
                                           (_g1706917099_ _g1707017102_))
                                       (_g1706917099_ _g1707017102_))))
                               (_g1706917099_ _g1707017102_))))
                       (_g1706917099_ _g1707017102_))))
               (_g1706917099_ _g1707017102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1706917099_ _g1707017102_))))
                                       (_g1706917099_ _g1707017102_)))))
                           (_g1706817194_ _L17052_))
                         (_g1692317015_ _g1692517018_)))
                   _hd1695217047_
                   _hd1694917039_)
                  (_g1692317015_ _g1692517018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1692317015_
                                                   _g1692517018_))
                                              (_g1692317015_ _g1692517018_))))
                                      (_g1692317015_ _g1692517018_))))
                              (_g1692317015_ _g1692517018_))))
                      (_g1692317015_ _g1692517018_))))
               (_g1692117322_
                (lambda (_g1692517200_)
                  (if (gx#stx-pair? _g1692517200_)
                      (let ((_e1692817202_ (gx#stx-e _g1692517200_)))
                        (let ((_hd1692917205_ (##car _e1692817202_))
                              (_tl1693017207_ (##cdr _e1692817202_)))
                          (if (gx#stx-pair? _tl1693017207_)
                              (let ((_e1693117210_ (gx#stx-e _tl1693017207_)))
                                (let ((_hd1693217213_ (##car _e1693117210_))
                                      (_tl1693317215_ (##cdr _e1693117210_)))
                                  (if (gx#stx-pair? _hd1693217213_)
                                      (let ((_e1693417218_
                                             (gx#stx-e _hd1693217213_)))
                                        (let ((_hd1693517221_
                                               (##car _e1693417218_))
                                              (_tl1693617223_
                                               (##cdr _e1693417218_)))
                                          (if (gx#stx-null? _tl1693617223_)
                                              (if (gx#stx-pair? _tl1693317215_)
                                                  (let ((_e1693717226_
                                                         (gx#stx-e
                                                          _tl1693317215_)))
                                                    (let ((_hd1693817229_
                                                           (##car _e1693717226_))
                                                          (_tl1693917231_
                                                           (##cdr _e1693717226_)))
                                                      (if (gx#stx-null?
                                                           _tl1693917231_)
                                                          ((lambda (_L17234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17235_)
                     (if (if (gx#identifier? _L17235_)
                             (gxc#case-lambda-expr? _L17234_)
                             '#f)
                         (let* ((_g1725217266_
                                 (lambda (_g1725317263_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1725317263_)))
                                (_g1725117297_
                                 (lambda (_g1725317269_)
                                   (if (gx#stx-pair? _g1725317269_)
                                       (let ((_e1725917271_
                                              (gx#stx-e _g1725317269_)))
                                         (let ((_hd1726017274_
                                                (##car _e1725917271_))
                                               (_tl1726117276_
                                                (##cdr _e1725917271_)))
                                           ((lambda (_L17279_)
                                              (let ((_g20433_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx16918_
                                                      _L17235_
                                                      _L17279_)))
                                                (begin
                                                  (let ((_g20434_
                                                         (values-count
                                                          _g20433_)))
                                                    (if (not (fx= _g20434_ 3))
                                                        (error "Context expects 3 values"
                                                               _g20434_)))
                                                  (let ((_ids17289_
                                                         (values-ref
                                                          _g20433_
                                                          0))
                                                        (_impls17290_
                                                         (values-ref
                                                          _g20433_
                                                          1))
                                                        (_clauses17291_
                                                         (values-ref
                                                          _g20433_
                                                          2)))
                                                    (let* ((_g20435_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids17289_))
                                                           (_defs17294_
                                                            (map _case-lambda-clause-def16920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids17289_
                         _impls17290_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L17235_)
                 '" => "
                 (map gxc#identifier-symbol _ids17289_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L17235_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses17291_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx16918_)
                                     '())
                               _defs17294_))
                 _stx16918_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl1726117276_)))
                                       (_g1725217266_ _g1725317269_))))
                                (_g1725017319_
                                 (lambda (_g1725317300_)
                                   (if (gx#stx-pair? _g1725317300_)
                                       (let ((_e1725517302_
                                              (gx#stx-e _g1725317300_)))
                                         (let ((_hd1725617305_
                                                (##car _e1725517302_))
                                               (_tl1725717307_
                                                (##cdr _e1725517302_)))
                                           ((lambda (_L17310_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L17310_)
                                                  _stx16918_
                                                  (_g1725117297_
                                                   _g1725317300_)))
                                            _tl1725717307_)))
                                       (_g1725117297_ _g1725317300_)))))
                           (_g1725017319_ _L17234_))
                         (_g1692217197_ _g1692517200_)))
                   _hd1693817229_
                   _hd1693517221_)
                  (_g1692217197_ _g1692517200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1692217197_
                                                   _g1692517200_))
                                              (_g1692217197_ _g1692517200_))))
                                      (_g1692217197_ _g1692517200_))))
                              (_g1692217197_ _g1692517200_))))
                      (_g1692217197_ _g1692517200_)))))
          (_g1692117322_ _stx16918_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx16341_)
      (letrec* ((_bind-e__opt-lambda16900__2038220383_
                 (lambda (_id16902_ _expr16903_ _compile?16904_)
                   (cons (cons _id16902_ '())
                         (cons (if _compile?16904_
                                   (gxc#compile-e _expr16903_)
                                   _expr16903_)
                               '()))))
                (_bind-e__0__2038420385_
                 (lambda (_id16909_ _expr16910_)
                   (let ((_compile?16912_ '#t))
                     (_bind-e__opt-lambda16900__2038220383_
                      _id16909_
                      _expr16910_
                      _compile?16912_))))
                (_bind-e16343_
                 (lambda _g20437_
                   (let ((_g20436_ (length _g20437_)))
                     (cond ((fx= _g20436_ 2)
                            (apply _bind-e__0__2038420385_ _g20437_))
                           ((fx= _g20436_ 3)
                            (apply _bind-e__opt-lambda16900__2038220383_
                                   _g20437_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20437_))))))
                (_compile-bindings16344_
                 (lambda (_rest16486_)
                   (let _lp16488_ ((_rest16490_ _rest16486_)
                                   (_lift116491_ '())
                                   (_lift216492_ '())
                                   (_bind16493_ '()))
                     (let* ((_rest1649416502_ _rest16490_)
                            (_E1649716506_
                             (lambda ()
                               (error '"No clause matching" _rest1649416502_)))
                            (_else1649616510_
                             (lambda ()
                               (values (reverse _lift116491_)
                                       (reverse _lift216492_)
                                       (reverse _bind16493_))))
                            (_K1649816889_
                             (lambda (_rest16513_ _hd16514_)
                               (let* ((_g1651816554_
                                       (lambda (_g1651916551_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1651916551_)))
                                      (_g1651716595_
                                       (lambda (_g1651916557_)
                                         (if (gx#stx-pair? _g1651916557_)
                                             (let ((_e1654416559_
                                                    (gx#stx-e _g1651916557_)))
                                               (let ((_hd1654516562_
                                                      (##car _e1654416559_))
                                                     (_tl1654616564_
                                                      (##cdr _e1654416559_)))
                                                 (if (gx#stx-pair?
                                                      _tl1654616564_)
                                                     (let ((_e1654716567_
                                                            (gx#stx-e
                                                             _tl1654616564_)))
                                                       (let ((_hd1654816570_
                                                              (##car _e1654716567_))
                                                             (_tl1654916572_
                                                              (##cdr _e1654716567_)))
                                                         (if (gx#stx-null?
                                                              _tl1654916572_)
                                                             ((lambda (_L16575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16576_)
                        (_lp16488_
                         _rest16513_
                         _lift116491_
                         _lift216492_
                         (cons (cons _L16576_
                                     (cons (gxc#compile-e _L16575_) '()))
                               _bind16493_)))
                      _hd1654816570_
                      _hd1654516562_)
                     (_g1651816554_ _g1651916557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1651816554_
                                                      _g1651916557_))))
                                             (_g1651816554_ _g1651916557_))))
                                      (_g1651616767_
                                       (lambda (_g1651916598_)
                                         (if (gx#stx-pair? _g1651916598_)
                                             (let ((_e1653316600_
                                                    (gx#stx-e _g1651916598_)))
                                               (let ((_hd1653416603_
                                                      (##car _e1653316600_))
                                                     (_tl1653516605_
                                                      (##cdr _e1653316600_)))
                                                 (if (gx#stx-pair?
                                                      _hd1653416603_)
                                                     (let ((_e1653616608_
                                                            (gx#stx-e
                                                             _hd1653416603_)))
                                                       (let ((_hd1653716611_
                                                              (##car _e1653616608_))
                                                             (_tl1653816613_
                                                              (##cdr _e1653616608_)))
                                                         (if (gx#stx-null?
                                                              _tl1653816613_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1653516605_)
                         (let ((_e1653916616_ (gx#stx-e _tl1653516605_)))
                           (let ((_hd1654016619_ (##car _e1653916616_))
                                 (_tl1654116621_ (##cdr _e1653916616_)))
                             (if (gx#stx-null? _tl1654116621_)
                                 ((lambda (_L16624_ _L16625_)
                                    (if (if (gx#identifier? _L16625_)
                                            (gxc#opt-lambda-expr? _L16624_)
                                            '#f)
                                        (let* ((_g1663916669_
                                                (lambda (_g1664016666_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1664016666_)))
                                               (_g1663816764_
                                                (lambda (_g1664016672_)
                                                  (if (gx#stx-pair?
                                                       _g1664016672_)
                                                      (let ((_e1664416674_
                                                             (gx#stx-e
                                                              _g1664016672_)))
                                                        (let ((_hd1664516677_
                                                               (##car _e1664416674_))
                                                              (_tl1664616679_
                                                               (##cdr _e1664416674_)))
                                                          (if (gx#stx-pair?
                                                               _tl1664616679_)
                                                              (let ((_e1664716682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1664616679_)))
                        (let ((_hd1664816685_ (##car _e1664716682_))
                              (_tl1664916687_ (##cdr _e1664716682_)))
                          (if (gx#stx-pair? _hd1664816685_)
                              (let ((_e1665016690_ (gx#stx-e _hd1664816685_)))
                                (let ((_hd1665116693_ (##car _e1665016690_))
                                      (_tl1665216695_ (##cdr _e1665016690_)))
                                  (if (gx#stx-pair? _hd1665116693_)
                                      (let ((_e1665316698_
                                             (gx#stx-e _hd1665116693_)))
                                        (let ((_hd1665416701_
                                               (##car _e1665316698_))
                                              (_tl1665516703_
                                               (##cdr _e1665316698_)))
                                          (if (gx#stx-pair? _hd1665416701_)
                                              (let ((_e1665616706_
                                                     (gx#stx-e
                                                      _hd1665416701_)))
                                                (let ((_hd1665716709_
                                                       (##car _e1665616706_))
                                                      (_tl1665816711_
                                                       (##cdr _e1665616706_)))
                                                  (if (gx#stx-null?
                                                       _tl1665816711_)
                                                      (if (gx#stx-pair?
                                                           _tl1665516703_)
                                                          (let ((_e1665916714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1665516703_)))
                    (let ((_hd1666016717_ (##car _e1665916714_))
                          (_tl1666116719_ (##cdr _e1665916714_)))
                      (if (gx#stx-null? _tl1666116719_)
                          (if (gx#stx-null? _tl1665216695_)
                              (if (gx#stx-pair? _tl1664916687_)
                                  (let ((_e1666216722_
                                         (gx#stx-e _tl1664916687_)))
                                    (let ((_hd1666316725_
                                           (##car _e1666216722_))
                                          (_tl1666416727_
                                           (##cdr _e1666216722_)))
                                      (if (gx#stx-null? _tl1666416727_)
                                          ((lambda (_L16730_ _L16731_ _L16732_)
                                             (let* ((_lambda-id16756_
                                                     (make-symbol
                                                      (gx#stx-e _L16625_)
                                                      '"__"
                                                      (gx#stx-e _L16732_)
                                                      (gensym '__)))
                                                    (_lambda-id16758_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16756_
                                                      (gx#stx-source
                                                       _stx16341_)))
                                                    (_g20438_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16758_))
                                                    (_new-case-lambda-expr16761_
                                                     (gxc#apply-expression-subst
                                                      _L16730_
                                                      _L16732_
                                                      _lambda-id16758_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16625_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16758_))
                                                 (_lp16488_
                                                  (cons (_bind-e__opt-lambda16900__2038220383_
                                                         _L16625_
                                                         _new-case-lambda-expr16761_
                                                         '#f)
                                                        _rest16513_)
                                                  (cons (_bind-e__0__2038420385_
                                                         _lambda-id16758_
                                                         _L16731_)
                                                        _lift116491_)
                                                  _lift216492_
                                                  _bind16493_))))
                                           _hd1666316725_
                                           _hd1666016717_
                                           _hd1665716709_)
                                          (_g1663916669_ _g1664016672_))))
                                  (_g1663916669_ _g1664016672_))
                              (_g1663916669_ _g1664016672_))
                          (_g1663916669_ _g1664016672_))))
                  (_g1663916669_ _g1664016672_))
              (_g1663916669_ _g1664016672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1663916669_ _g1664016672_))))
                                      (_g1663916669_ _g1664016672_))))
                              (_g1663916669_ _g1664016672_))))
                      (_g1663916669_ _g1664016672_))))
              (_g1663916669_ _g1664016672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1663816764_ _L16624_))
                                        (_g1651716595_ _g1651916598_)))
                                  _hd1654016619_
                                  _hd1653716611_)
                                 (_g1651716595_ _g1651916598_))))
                         (_g1651716595_ _g1651916598_))
                     (_g1651716595_ _g1651916598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1651716595_
                                                      _g1651916598_))))
                                             (_g1651716595_ _g1651916598_))))
                                      (_g1651516886_
                                       (lambda (_g1651916770_)
                                         (if (gx#stx-pair? _g1651916770_)
                                             (let ((_e1652216772_
                                                    (gx#stx-e _g1651916770_)))
                                               (let ((_hd1652316775_
                                                      (##car _e1652216772_))
                                                     (_tl1652416777_
                                                      (##cdr _e1652216772_)))
                                                 (if (gx#stx-pair?
                                                      _hd1652316775_)
                                                     (let ((_e1652516780_
                                                            (gx#stx-e
                                                             _hd1652316775_)))
                                                       (let ((_hd1652616783_
                                                              (##car _e1652516780_))
                                                             (_tl1652716785_
                                                              (##cdr _e1652516780_)))
                                                         (if (gx#stx-null?
                                                              _tl1652716785_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1652416777_)
                         (let ((_e1652816788_ (gx#stx-e _tl1652416777_)))
                           (let ((_hd1652916791_ (##car _e1652816788_))
                                 (_tl1653016793_ (##cdr _e1652816788_)))
                             (if (gx#stx-null? _tl1653016793_)
                                 ((lambda (_L16796_ _L16797_)
                                    (if (if (gx#identifier? _L16797_)
                                            (gxc#case-lambda-expr? _L16796_)
                                            '#f)
                                        (let* ((_g1681216826_
                                                (lambda (_g1681316823_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1681316823_)))
                                               (_g1681116861_
                                                (lambda (_g1681316829_)
                                                  (if (gx#stx-pair?
                                                       _g1681316829_)
                                                      (let ((_e1681916831_
                                                             (gx#stx-e
                                                              _g1681316829_)))
                                                        (let ((_hd1682016834_
                                                               (##car _e1681916831_))
                                                              (_tl1682116836_
                                                               (##cdr _e1681916831_)))
                                                          ((lambda (_L16839_)
                                                             (let ((_g20439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17327
                             _stx16341_
                             _L16797_
                             _L16839_
                             '#t)))
                       (begin
                         (let ((_g20440_ (values-count _g20439_)))
                           (if (not (fx= _g20440_ 3))
                               (error "Context expects 3 values" _g20440_)))
                         (let ((_ids16849_ (values-ref _g20439_ 0))
                               (_impls16850_ (values-ref _g20439_ 1))
                               (_clauses16851_ (values-ref _g20439_ 2)))
                           (let* ((_g20441_
                                   (for-each gx#core-bind-runtime! _ids16849_))
                                  (_xbind16854_
                                   (map _bind-e16343_ _ids16849_ _impls16850_))
                                  (_expr*16856_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16851_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16858_
                                   (_bind-e__opt-lambda16900__2038220383_
                                    _L16797_
                                    _expr*16856_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L16797_)
                                '" => "
                                (map gxc#identifier-symbol _ids16849_))
                               (_lp16488_
                                _rest16513_
                                _lift116491_
                                (foldl1 cons _lift216492_ _xbind16854_)
                                (cons _bind*16858_ _bind16493_))))))))
                   _tl1682116836_)))
              (_g1681216826_ _g1681316829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1681016883_
                                                (lambda (_g1681316864_)
                                                  (if (gx#stx-pair?
                                                       _g1681316864_)
                                                      (let ((_e1681516866_
                                                             (gx#stx-e
                                                              _g1681316864_)))
                                                        (let ((_hd1681616869_
                                                               (##car _e1681516866_))
                                                              (_tl1681716871_
                                                               (##cdr _e1681516866_)))
                                                          ((lambda (_L16874_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16874_)
                         (_lp16488_
                          _rest16513_
                          _lift116491_
                          _lift216492_
                          (cons (_bind-e__opt-lambda16900__2038220383_
                                 _L16797_
                                 _L16796_
                                 '#f)
                                _bind16493_))
                         (_g1681116861_ _g1681316864_)))
                   _tl1681716871_)))
              (_g1681116861_ _g1681316864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1681016883_ _L16796_))
                                        (_g1651616767_ _g1651916770_)))
                                  _hd1652916791_
                                  _hd1652616783_)
                                 (_g1651616767_ _g1651916770_))))
                         (_g1651616767_ _g1651916770_))
                     (_g1651616767_ _g1651916770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1651616767_
                                                      _g1651916770_))))
                                             (_g1651616767_ _g1651916770_)))))
                                 (_g1651516886_ _hd16514_)))))
                       (if (##pair? _rest1649416502_)
                           (let ((_hd1649916892_ (##car _rest1649416502_))
                                 (_tl1650016894_ (##cdr _rest1649416502_)))
                             (let* ((_hd16897_ _hd1649916892_)
                                    (_rest16899_ _tl1650016894_))
                               (_K1649816889_ _rest16899_ _hd16897_)))
                           (_else1649616510_)))))))
        (let* ((_g1634716373_
                (lambda (_g1634816370_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1634816370_)))
               (_g1634616380_
                (lambda (_g1634816376_)
                  ((lambda () (gxc#xform-let-values% _stx16341_)))))
               (_g1634516483_
                (lambda (_g1634816383_)
                  (if (gx#stx-pair? _g1634816383_)
                      (let ((_e1635116385_ (gx#stx-e _g1634816383_)))
                        (let ((_hd1635216388_ (##car _e1635116385_))
                              (_tl1635316390_ (##cdr _e1635116385_)))
                          (if (gx#stx-pair? _tl1635316390_)
                              (let ((_e1635416393_ (gx#stx-e _tl1635316390_)))
                                (let ((_hd1635516396_ (##car _e1635416393_))
                                      (_tl1635616398_ (##cdr _e1635416393_)))
                                  (if (gx#stx-pair/null? _hd1635516396_)
                                      (if (fx>= (gx#stx-length _hd1635516396_)
                                                '0)
                                          (let ((_g20442_
                                                 (gx#syntax-split-splice
                                                  _hd1635516396_
                                                  '0)))
                                            (begin
                                              (let ((_g20443_
                                                     (values-count _g20442_)))
                                                (if (not (fx= _g20443_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20443_)))
                                              (let ((_target1635716401_
                                                     (values-ref _g20442_ 0))
                                                    (_tl1635916403_
                                                     (values-ref _g20442_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1635916403_)
                                                    (letrec ((_loop1636016406_
                                                              (lambda (_hd1635816409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1636416411_)
                        (if (gx#stx-pair? _hd1635816409_)
                            (let ((_e1636116414_ (gx#stx-e _hd1635816409_)))
                              (let ((_lp-hd1636216417_ (##car _e1636116414_))
                                    (_lp-tl1636316419_ (##cdr _e1636116414_)))
                                (_loop1636016406_
                                 _lp-tl1636316419_
                                 (cons _lp-hd1636216417_ _bind1636416411_))))
                            (let ((_bind1636516422_
                                   (reverse _bind1636416411_)))
                              (if (gx#stx-pair? _tl1635616398_)
                                  (let ((_e1636616425_
                                         (gx#stx-e _tl1635616398_)))
                                    (let ((_hd1636716428_
                                           (##car _e1636616425_))
                                          (_tl1636816430_
                                           (##cdr _e1636616425_)))
                                      (if (gx#stx-null? _tl1636816430_)
                                          ((lambda (_L16433_ _L16434_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1645416457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1645516459_)
                             (cons _g1645416457_ _g1645516459_))
                           '()
                           _L16434_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g20444_
                                                           (_compile-bindings16344_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1646216465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1646316467_)
                                (cons _g1646216465_ _g1646316467_))
                              '()
                              _L16434_)))))
              (begin
                (let ((_g20445_ (values-count _g20444_)))
                  (if (not (fx= _g20445_ 3))
                      (error "Context expects 3 values" _g20445_)))
                (let ((_lift116470_ (values-ref _g20444_ 0))
                      (_lift216471_ (values-ref _g20444_ 1))
                      (_hd16472_ (values-ref _g20444_ 2)))
                  (let* ((_body16474_ (gxc#compile-e _L16433_))
                         (_expr16476_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd16472_ (cons _body16474_ '())))
                           _stx16341_))
                         (_expr16478_
                          (if (null? _lift216471_)
                              _expr16476_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift216471_
                                           (cons _expr16476_ '())))
                               _stx16341_)))
                         (_expr16480_
                          (if (null? _lift116470_)
                              _expr16478_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift116470_
                                           (cons _expr16478_ '())))
                               _stx16341_))))
                    _expr16480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20392
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20392)
                                                      __obj20392)))
                                                 (_g1634616380_
                                                  _g1634816383_)))
                                           _hd1636716428_
                                           _bind1636516422_)
                                          (_g1634616380_ _g1634816383_))))
                                  (_g1634616380_ _g1634816383_)))))))
              (_loop1636016406_ _target1635716401_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1634616380_
                                                     _g1634816383_)))))
                                          (_g1634616380_ _g1634816383_))
                                      (_g1634616380_ _g1634816383_))))
                              (_g1634616380_ _g1634816383_))))
                      (_g1634616380_ _g1634816383_)))))
          (_g1634516483_ _stx16341_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15773_)
      (letrec* ((_bind-e__opt-lambda16323__2038720388_
                 (lambda (_id16325_ _expr16326_ _compile?16327_)
                   (cons (cons _id16325_ '())
                         (cons (if _compile?16327_
                                   (gxc#compile-e _expr16326_)
                                   _expr16326_)
                               '()))))
                (_bind-e__0__2038920390_
                 (lambda (_id16332_ _expr16333_)
                   (let ((_compile?16335_ '#t))
                     (_bind-e__opt-lambda16323__2038720388_
                      _id16332_
                      _expr16333_
                      _compile?16335_))))
                (_bind-e15775_
                 (lambda _g20447_
                   (let ((_g20446_ (length _g20447_)))
                     (cond ((fx= _g20446_ 2)
                            (apply _bind-e__0__2038920390_ _g20447_))
                           ((fx= _g20446_ 3)
                            (apply _bind-e__opt-lambda16323__2038720388_
                                   _g20447_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20447_))))))
                (_compile-bindings15776_
                 (lambda (_rest15911_)
                   (let _lp15913_ ((_rest15915_ _rest15911_) (_bind15916_ '()))
                     (let* ((_rest1591715925_ _rest15915_)
                            (_E1592015929_
                             (lambda ()
                               (error '"No clause matching" _rest1591715925_)))
                            (_else1591915933_
                             (lambda () (reverse _bind15916_)))
                            (_K1592116312_
                             (lambda (_rest15936_ _hd15937_)
                               (let* ((_g1594115977_
                                       (lambda (_g1594215974_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1594215974_)))
                                      (_g1594016018_
                                       (lambda (_g1594215980_)
                                         (if (gx#stx-pair? _g1594215980_)
                                             (let ((_e1596715982_
                                                    (gx#stx-e _g1594215980_)))
                                               (let ((_hd1596815985_
                                                      (##car _e1596715982_))
                                                     (_tl1596915987_
                                                      (##cdr _e1596715982_)))
                                                 (if (gx#stx-pair?
                                                      _tl1596915987_)
                                                     (let ((_e1597015990_
                                                            (gx#stx-e
                                                             _tl1596915987_)))
                                                       (let ((_hd1597115993_
                                                              (##car _e1597015990_))
                                                             (_tl1597215995_
                                                              (##cdr _e1597015990_)))
                                                         (if (gx#stx-null?
                                                              _tl1597215995_)
                                                             ((lambda (_L15998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15999_)
                        (_lp15913_
                         _rest15936_
                         (cons (cons _L15999_
                                     (cons (gxc#compile-e _L15998_) '()))
                               _bind15916_)))
                      _hd1597115993_
                      _hd1596815985_)
                     (_g1594115977_ _g1594215980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594115977_
                                                      _g1594215980_))))
                                             (_g1594115977_ _g1594215980_))))
                                      (_g1593916190_
                                       (lambda (_g1594216021_)
                                         (if (gx#stx-pair? _g1594216021_)
                                             (let ((_e1595616023_
                                                    (gx#stx-e _g1594216021_)))
                                               (let ((_hd1595716026_
                                                      (##car _e1595616023_))
                                                     (_tl1595816028_
                                                      (##cdr _e1595616023_)))
                                                 (if (gx#stx-pair?
                                                      _hd1595716026_)
                                                     (let ((_e1595916031_
                                                            (gx#stx-e
                                                             _hd1595716026_)))
                                                       (let ((_hd1596016034_
                                                              (##car _e1595916031_))
                                                             (_tl1596116036_
                                                              (##cdr _e1595916031_)))
                                                         (if (gx#stx-null?
                                                              _tl1596116036_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1595816028_)
                         (let ((_e1596216039_ (gx#stx-e _tl1595816028_)))
                           (let ((_hd1596316042_ (##car _e1596216039_))
                                 (_tl1596416044_ (##cdr _e1596216039_)))
                             (if (gx#stx-null? _tl1596416044_)
                                 ((lambda (_L16047_ _L16048_)
                                    (if (if (gx#identifier? _L16048_)
                                            (gxc#opt-lambda-expr? _L16047_)
                                            '#f)
                                        (let* ((_g1606216092_
                                                (lambda (_g1606316089_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1606316089_)))
                                               (_g1606116187_
                                                (lambda (_g1606316095_)
                                                  (if (gx#stx-pair?
                                                       _g1606316095_)
                                                      (let ((_e1606716097_
                                                             (gx#stx-e
                                                              _g1606316095_)))
                                                        (let ((_hd1606816100_
                                                               (##car _e1606716097_))
                                                              (_tl1606916102_
                                                               (##cdr _e1606716097_)))
                                                          (if (gx#stx-pair?
                                                               _tl1606916102_)
                                                              (let ((_e1607016105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1606916102_)))
                        (let ((_hd1607116108_ (##car _e1607016105_))
                              (_tl1607216110_ (##cdr _e1607016105_)))
                          (if (gx#stx-pair? _hd1607116108_)
                              (let ((_e1607316113_ (gx#stx-e _hd1607116108_)))
                                (let ((_hd1607416116_ (##car _e1607316113_))
                                      (_tl1607516118_ (##cdr _e1607316113_)))
                                  (if (gx#stx-pair? _hd1607416116_)
                                      (let ((_e1607616121_
                                             (gx#stx-e _hd1607416116_)))
                                        (let ((_hd1607716124_
                                               (##car _e1607616121_))
                                              (_tl1607816126_
                                               (##cdr _e1607616121_)))
                                          (if (gx#stx-pair? _hd1607716124_)
                                              (let ((_e1607916129_
                                                     (gx#stx-e
                                                      _hd1607716124_)))
                                                (let ((_hd1608016132_
                                                       (##car _e1607916129_))
                                                      (_tl1608116134_
                                                       (##cdr _e1607916129_)))
                                                  (if (gx#stx-null?
                                                       _tl1608116134_)
                                                      (if (gx#stx-pair?
                                                           _tl1607816126_)
                                                          (let ((_e1608216137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1607816126_)))
                    (let ((_hd1608316140_ (##car _e1608216137_))
                          (_tl1608416142_ (##cdr _e1608216137_)))
                      (if (gx#stx-null? _tl1608416142_)
                          (if (gx#stx-null? _tl1607516118_)
                              (if (gx#stx-pair? _tl1607216110_)
                                  (let ((_e1608516145_
                                         (gx#stx-e _tl1607216110_)))
                                    (let ((_hd1608616148_
                                           (##car _e1608516145_))
                                          (_tl1608716150_
                                           (##cdr _e1608516145_)))
                                      (if (gx#stx-null? _tl1608716150_)
                                          ((lambda (_L16153_ _L16154_ _L16155_)
                                             (let* ((_lambda-id16179_
                                                     (make-symbol
                                                      (gx#stx-e _L16048_)
                                                      '"__"
                                                      (gx#stx-e _L16155_)
                                                      (gensym '__)))
                                                    (_lambda-id16181_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16179_
                                                      (gx#stx-source
                                                       _stx15773_)))
                                                    (_g20448_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16181_))
                                                    (_new-case-lambda-expr16184_
                                                     (gxc#apply-expression-subst
                                                      _L16153_
                                                      _L16155_
                                                      _lambda-id16181_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16048_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16181_))
                                                 (_lp15913_
                                                  (cons (_bind-e__opt-lambda16323__2038720388_
                                                         _L16048_
                                                         _new-case-lambda-expr16184_
                                                         '#f)
                                                        _rest15936_)
                                                  (cons (_bind-e__0__2038920390_
                                                         _lambda-id16181_
                                                         _L16154_)
                                                        _bind15916_)))))
                                           _hd1608616148_
                                           _hd1608316140_
                                           _hd1608016132_)
                                          (_g1606216092_ _g1606316095_))))
                                  (_g1606216092_ _g1606316095_))
                              (_g1606216092_ _g1606316095_))
                          (_g1606216092_ _g1606316095_))))
                  (_g1606216092_ _g1606316095_))
              (_g1606216092_ _g1606316095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1606216092_ _g1606316095_))))
                                      (_g1606216092_ _g1606316095_))))
                              (_g1606216092_ _g1606316095_))))
                      (_g1606216092_ _g1606316095_))))
              (_g1606216092_ _g1606316095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1606116187_ _L16047_))
                                        (_g1594016018_ _g1594216021_)))
                                  _hd1596316042_
                                  _hd1596016034_)
                                 (_g1594016018_ _g1594216021_))))
                         (_g1594016018_ _g1594216021_))
                     (_g1594016018_ _g1594216021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1594016018_
                                                      _g1594216021_))))
                                             (_g1594016018_ _g1594216021_))))
                                      (_g1593816309_
                                       (lambda (_g1594216193_)
                                         (if (gx#stx-pair? _g1594216193_)
                                             (let ((_e1594516195_
                                                    (gx#stx-e _g1594216193_)))
                                               (let ((_hd1594616198_
                                                      (##car _e1594516195_))
                                                     (_tl1594716200_
                                                      (##cdr _e1594516195_)))
                                                 (if (gx#stx-pair?
                                                      _hd1594616198_)
                                                     (let ((_e1594816203_
                                                            (gx#stx-e
                                                             _hd1594616198_)))
                                                       (let ((_hd1594916206_
                                                              (##car _e1594816203_))
                                                             (_tl1595016208_
                                                              (##cdr _e1594816203_)))
                                                         (if (gx#stx-null?
                                                              _tl1595016208_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1594716200_)
                         (let ((_e1595116211_ (gx#stx-e _tl1594716200_)))
                           (let ((_hd1595216214_ (##car _e1595116211_))
                                 (_tl1595316216_ (##cdr _e1595116211_)))
                             (if (gx#stx-null? _tl1595316216_)
                                 ((lambda (_L16219_ _L16220_)
                                    (if (if (gx#identifier? _L16220_)
                                            (gxc#case-lambda-expr? _L16219_)
                                            '#f)
                                        (let* ((_g1623516249_
                                                (lambda (_g1623616246_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1623616246_)))
                                               (_g1623416284_
                                                (lambda (_g1623616252_)
                                                  (if (gx#stx-pair?
                                                       _g1623616252_)
                                                      (let ((_e1624216254_
                                                             (gx#stx-e
                                                              _g1623616252_)))
                                                        (let ((_hd1624316257_
                                                               (##car _e1624216254_))
                                                              (_tl1624416259_
                                                               (##cdr _e1624216254_)))
                                                          ((lambda (_L16262_)
                                                             (let ((_g20449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17327
                             _stx15773_
                             _L16220_
                             _L16262_
                             '#t)))
                       (begin
                         (let ((_g20450_ (values-count _g20449_)))
                           (if (not (fx= _g20450_ 3))
                               (error "Context expects 3 values" _g20450_)))
                         (let ((_ids16272_ (values-ref _g20449_ 0))
                               (_impls16273_ (values-ref _g20449_ 1))
                               (_clauses16274_ (values-ref _g20449_ 2)))
                           (let* ((_g20451_
                                   (for-each gx#core-bind-runtime! _ids16272_))
                                  (_xbind16277_
                                   (map _bind-e15775_ _ids16272_ _impls16273_))
                                  (_expr*16279_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16274_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16281_
                                   (_bind-e__opt-lambda16323__2038720388_
                                    _L16220_
                                    _expr*16279_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L16220_)
                                '" => "
                                (map gxc#identifier-symbol _ids16272_))
                               (_lp15913_
                                _rest15936_
                                (cons _bind*16281_
                                      (foldl1 cons
                                              _bind15916_
                                              _xbind16277_)))))))))
                   _tl1624416259_)))
              (_g1623516249_ _g1623616252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1623316306_
                                                (lambda (_g1623616287_)
                                                  (if (gx#stx-pair?
                                                       _g1623616287_)
                                                      (let ((_e1623816289_
                                                             (gx#stx-e
                                                              _g1623616287_)))
                                                        (let ((_hd1623916292_
                                                               (##car _e1623816289_))
                                                              (_tl1624016294_
                                                               (##cdr _e1623816289_)))
                                                          ((lambda (_L16297_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16297_)
                         (_lp15913_
                          _rest15936_
                          (cons (_bind-e__opt-lambda16323__2038720388_
                                 _L16220_
                                 _L16219_
                                 '#f)
                                _bind15916_))
                         (_g1623416284_ _g1623616287_)))
                   _tl1624016294_)))
              (_g1623416284_ _g1623616287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1623316306_ _L16219_))
                                        (_g1593916190_ _g1594216193_)))
                                  _hd1595216214_
                                  _hd1594916206_)
                                 (_g1593916190_ _g1594216193_))))
                         (_g1593916190_ _g1594216193_))
                     (_g1593916190_ _g1594216193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1593916190_
                                                      _g1594216193_))))
                                             (_g1593916190_ _g1594216193_)))))
                                 (_g1593816309_ _hd15937_)))))
                       (if (##pair? _rest1591715925_)
                           (let ((_hd1592216315_ (##car _rest1591715925_))
                                 (_tl1592316317_ (##cdr _rest1591715925_)))
                             (let* ((_hd16320_ _hd1592216315_)
                                    (_rest16322_ _tl1592316317_))
                               (_K1592116312_ _rest16322_ _hd16320_)))
                           (_else1591915933_)))))))
        (let* ((_g1577915806_
                (lambda (_g1578015803_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1578015803_)))
               (_g1577815813_
                (lambda (_g1578015809_)
                  ((lambda () (gxc#xform-let-values% _stx15773_)))))
               (_g1577715908_
                (lambda (_g1578015816_)
                  (if (gx#stx-pair? _g1578015816_)
                      (let ((_e1578415818_ (gx#stx-e _g1578015816_)))
                        (let ((_hd1578515821_ (##car _e1578415818_))
                              (_tl1578615823_ (##cdr _e1578415818_)))
                          (if (gx#stx-pair? _tl1578615823_)
                              (let ((_e1578715826_ (gx#stx-e _tl1578615823_)))
                                (let ((_hd1578815829_ (##car _e1578715826_))
                                      (_tl1578915831_ (##cdr _e1578715826_)))
                                  (if (gx#stx-pair/null? _hd1578815829_)
                                      (if (fx>= (gx#stx-length _hd1578815829_)
                                                '0)
                                          (let ((_g20452_
                                                 (gx#syntax-split-splice
                                                  _hd1578815829_
                                                  '0)))
                                            (begin
                                              (let ((_g20453_
                                                     (values-count _g20452_)))
                                                (if (not (fx= _g20453_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20453_)))
                                              (let ((_target1579015834_
                                                     (values-ref _g20452_ 0))
                                                    (_tl1579215836_
                                                     (values-ref _g20452_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1579215836_)
                                                    (letrec ((_loop1579315839_
                                                              (lambda (_hd1579115842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1579715844_)
                        (if (gx#stx-pair? _hd1579115842_)
                            (let ((_e1579415847_ (gx#stx-e _hd1579115842_)))
                              (let ((_lp-hd1579515850_ (##car _e1579415847_))
                                    (_lp-tl1579615852_ (##cdr _e1579415847_)))
                                (_loop1579315839_
                                 _lp-tl1579615852_
                                 (cons _lp-hd1579515850_ _bind1579715844_))))
                            (let ((_bind1579815855_
                                   (reverse _bind1579715844_)))
                              (if (gx#stx-pair? _tl1578915831_)
                                  (let ((_e1579915858_
                                         (gx#stx-e _tl1578915831_)))
                                    (let ((_hd1580015861_
                                           (##car _e1579915858_))
                                          (_tl1580115863_
                                           (##cdr _e1579915858_)))
                                      (if (gx#stx-null? _tl1580115863_)
                                          ((lambda (_L15866_ _L15867_ _L15868_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1588915892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1589015894_)
                             (cons _g1588915892_ _g1589015894_))
                           '()
                           _L15867_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd15905_
                                                           (_compile-bindings15776_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1589715900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1589815902_)
                                (cons _g1589715900_ _g1589815902_))
                              '()
                              _L15867_))))
                  (_body15906_ (gxc#compile-e _L15866_)))
              (gxc#xform-wrap-source
               (cons _L15868_ (cons _hd15905_ (cons _body15906_ '())))
               _stx15773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20393
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20393)
                                                      __obj20393)))
                                                 (_g1577815813_
                                                  _g1578015816_)))
                                           _hd1580015861_
                                           _bind1579815855_
                                           _hd1578515821_)
                                          (_g1577815813_ _g1578015816_))))
                                  (_g1577815813_ _g1578015816_)))))))
              (_loop1579315839_ _target1579015834_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1577815813_
                                                     _g1578015816_)))))
                                          (_g1577815813_ _g1578015816_))
                                      (_g1577815813_ _g1578015816_))))
                              (_g1577815813_ _g1578015816_))))
                      (_g1577815813_ _g1578015816_)))))
          (_g1577715908_ _stx15773_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15694_)
      (let* ((_g1569715714_
              (lambda (_g1569815711_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1569815711_)))
             (_g1569615721_ (lambda (_g1569815717_) ((lambda () '#f))))
             (_g1569515770_
              (lambda (_g1569815724_)
                (if (gx#stx-pair? _g1569815724_)
                    (let ((_e1570115726_ (gx#stx-e _g1569815724_)))
                      (let ((_hd1570215729_ (##car _e1570115726_))
                            (_tl1570315731_ (##cdr _e1570115726_)))
                        (if (gx#stx-pair? _hd1570215729_)
                            (let ((_e1570415734_ (gx#stx-e _hd1570215729_)))
                              (let ((_hd1570515737_ (##car _e1570415734_))
                                    (_tl1570615739_ (##cdr _e1570415734_)))
                                (if (gx#stx-null? _tl1570615739_)
                                    (if (gx#stx-pair? _tl1570315731_)
                                        (let ((_e1570715742_
                                               (gx#stx-e _tl1570315731_)))
                                          (let ((_hd1570815745_
                                                 (##car _e1570715742_))
                                                (_tl1570915747_
                                                 (##cdr _e1570715742_)))
                                            (if (gx#stx-null? _tl1570915747_)
                                                ((lambda (_L15750_ _L15751_)
                                                   (if (gx#identifier?
                                                        _L15751_)
                                                       (let ((_$e15767_
                                                              (gxc#case-lambda-expr?
                                                               _L15750_)))
                                                         (if _$e15767_
                                                             _$e15767_
                                                             (gxc#opt-lambda-expr?
                                                              _L15750_)))
                                                       '#f))
                                                 _hd1570815745_
                                                 _hd1570515737_)
                                                (_g1569615721_
                                                 _g1569815724_))))
                                        (_g1569615721_ _g1569815724_))
                                    (_g1569615721_ _g1569815724_))))
                            (_g1569615721_ _g1569815724_))))
                    (_g1569615721_ _g1569815724_)))))
        (_g1569515770_ _bind15694_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15632_ _id15633_ _new-id15634_)
      (let* ((_g1563715650_
              (lambda (_g1563815647_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1563815647_)))
             (_g1563615657_ (lambda (_g1563815653_) ((lambda () _stx15632_))))
             (_g1563515691_
              (lambda (_g1563815660_)
                (if (gx#stx-pair? _g1563815660_)
                    (let ((_e1564015662_ (gx#stx-e _g1563815660_)))
                      (let ((_hd1564115665_ (##car _e1564015662_))
                            (_tl1564215667_ (##cdr _e1564015662_)))
                        (if (gx#stx-pair? _tl1564215667_)
                            (let ((_e1564315670_ (gx#stx-e _tl1564215667_)))
                              (let ((_hd1564415673_ (##car _e1564315670_))
                                    (_tl1564515675_ (##cdr _e1564315670_)))
                                (if (gx#stx-null? _tl1564515675_)
                                    ((lambda (_L15678_)
                                       (if (gx#free-identifier=?
                                            _L15678_
                                            _id15633_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id15634_ '()))
                                            _stx15632_)
                                           (_g1563615657_ _g1563815660_)))
                                     _hd1564415673_)
                                    (_g1563615657_ _g1563815660_))))
                            (_g1563615657_ _g1563815660_))))
                    (_g1563615657_ _g1563815660_)))))
        (_g1563515691_ _stx15632_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15488_)
      (let* ((_g1549115522_
              (lambda (_g1549215519_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1549215519_)))
             (_g1549015567_
              (lambda (_g1549215525_)
                (if (gx#stx-pair? _g1549215525_)
                    (let ((_e1550915527_ (gx#stx-e _g1549215525_)))
                      (let ((_hd1551015530_ (##car _e1550915527_))
                            (_tl1551115532_ (##cdr _e1550915527_)))
                        (if (gx#stx-pair? _tl1551115532_)
                            (let ((_e1551215535_ (gx#stx-e _tl1551115532_)))
                              (let ((_hd1551315538_ (##car _e1551215535_))
                                    (_tl1551415540_ (##cdr _e1551215535_)))
                                (if (gx#stx-pair? _tl1551415540_)
                                    (let ((_e1551515543_
                                           (gx#stx-e _tl1551415540_)))
                                      (let ((_hd1551615546_
                                             (##car _e1551515543_))
                                            (_tl1551715548_
                                             (##cdr _e1551515543_)))
                                        (if (gx#stx-null? _tl1551715548_)
                                            ((lambda (_L15551_ _L15552_)
                                               (gxc#compile-e _L15551_))
                                             _hd1551615546_
                                             _hd1551315538_)
                                            (_g1549115522_ _g1549215525_))))
                                    (_g1549115522_ _g1549215525_))))
                            (_g1549115522_ _g1549215525_))))
                    (_g1549115522_ _g1549215525_))))
             (_g1548915629_
              (lambda (_g1549215570_)
                (if (gx#stx-pair? _g1549215570_)
                    (let ((_e1549515572_ (gx#stx-e _g1549215570_)))
                      (let ((_hd1549615575_ (##car _e1549515572_))
                            (_tl1549715577_ (##cdr _e1549515572_)))
                        (if (gx#stx-pair? _tl1549715577_)
                            (let ((_e1549815580_ (gx#stx-e _tl1549715577_)))
                              (let ((_hd1549915583_ (##car _e1549815580_))
                                    (_tl1550015585_ (##cdr _e1549815580_)))
                                (if (gx#stx-pair? _hd1549915583_)
                                    (let ((_e1550115588_
                                           (gx#stx-e _hd1549915583_)))
                                      (let ((_hd1550215591_
                                             (##car _e1550115588_))
                                            (_tl1550315593_
                                             (##cdr _e1550115588_)))
                                        (if (gx#stx-null? _tl1550315593_)
                                            (if (gx#stx-pair? _tl1550015585_)
                                                (let ((_e1550415596_
                                                       (gx#stx-e
                                                        _tl1550015585_)))
                                                  (let ((_hd1550515599_
                                                         (##car _e1550415596_))
                                                        (_tl1550615601_
                                                         (##cdr _e1550415596_)))
                                                    (if (gx#stx-null?
                                                         _tl1550615601_)
                                                        ((lambda (_L15604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15605_)
                   (if (gx#identifier? _L15605_)
                       (let ((_sym15621_
                              (gxc#generate-runtime-binding-id _L15605_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym15621_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym15621_)
                               (let ((_type1562215624_
                                      (gxc#apply-basic-expression-type
                                       _L15604_)))
                                 (if _type1562215624_
                                     (let ((_type15627_ _type1562215624_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym15621_
                                        _type15627_))
                                     '#f)))
                           (gxc#compile-e _L15604_)))
                       (_g1549015567_ _g1549215570_)))
                 _hd1550515599_
                 _hd1550215591_)
                (_g1549015567_ _g1549215570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1549015567_ _g1549215570_))
                                            (_g1549015567_ _g1549215570_))))
                                    (_g1549015567_ _g1549215570_))))
                            (_g1549015567_ _g1549215570_))))
                    (_g1549015567_ _g1549215570_)))))
        (_g1548915629_ _stx15488_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx15273_)
      (letrec ((_collect-e15275_
                (lambda (_hd15432_ _expr15433_)
                  (let* ((_g1543615446_
                          (lambda (_g1543715443_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1543715443_)))
                         (_g1543515453_
                          (lambda (_g1543715449_) ((lambda () '#!void))))
                         (_g1543415485_
                          (lambda (_g1543715456_)
                            (if (gx#stx-pair? _g1543715456_)
                                (let ((_e1543915458_ (gx#stx-e _g1543715456_)))
                                  (let ((_hd1544015461_ (##car _e1543915458_))
                                        (_tl1544115463_ (##cdr _e1543915458_)))
                                    (if (gx#stx-null? _tl1544115463_)
                                        ((lambda (_L15466_)
                                           (if (gx#identifier? _L15466_)
                                               (let ((_sym15477_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15466_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15477_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15477_)
                                                     (let ((_type1547815480_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15433_)))
                                                       (if _type1547815480_
                                                           (let ((_type15483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1547815480_))
                     (gxc#optimizer-declare-type!__opt-lambda20166
                      _sym15477_
                      _type15483_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1543515453_ _g1543715456_)))
                                         _hd1544015461_)
                                        (_g1543515453_ _g1543715456_))))
                                (_g1543515453_ _g1543715456_)))))
                    (_g1543415485_ _hd15432_)))))
        (let* ((_g1527715312_
                (lambda (_g1527815309_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1527815309_)))
               (_g1527615429_
                (lambda (_g1527815315_)
                  (if (gx#stx-pair? _g1527815315_)
                      (let ((_e1528215317_ (gx#stx-e _g1527815315_)))
                        (let ((_hd1528315320_ (##car _e1528215317_))
                              (_tl1528415322_ (##cdr _e1528215317_)))
                          (if (gx#stx-pair? _tl1528415322_)
                              (let ((_e1528515325_ (gx#stx-e _tl1528415322_)))
                                (let ((_hd1528615328_ (##car _e1528515325_))
                                      (_tl1528715330_ (##cdr _e1528515325_)))
                                  (if (gx#stx-pair/null? _hd1528615328_)
                                      (if (fx>= (gx#stx-length _hd1528615328_)
                                                '0)
                                          (let ((_g20454_
                                                 (gx#syntax-split-splice
                                                  _hd1528615328_
                                                  '0)))
                                            (begin
                                              (let ((_g20455_
                                                     (values-count _g20454_)))
                                                (if (not (fx= _g20455_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20455_)))
                                              (let ((_target1528815333_
                                                     (values-ref _g20454_ 0))
                                                    (_tl1529015335_
                                                     (values-ref _g20454_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1529015335_)
                                                    (letrec ((_loop1529115338_
                                                              (lambda (_hd1528915341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1529515343_
                               _hd1529615345_)
                        (if (gx#stx-pair? _hd1528915341_)
                            (let ((_e1529215348_ (gx#stx-e _hd1528915341_)))
                              (let ((_lp-hd1529315351_ (##car _e1529215348_))
                                    (_lp-tl1529415353_ (##cdr _e1529215348_)))
                                (if (gx#stx-pair? _lp-hd1529315351_)
                                    (let ((_e1529915356_
                                           (gx#stx-e _lp-hd1529315351_)))
                                      (let ((_hd1530015359_
                                             (##car _e1529915356_))
                                            (_tl1530115361_
                                             (##cdr _e1529915356_)))
                                        (if (gx#stx-pair? _tl1530115361_)
                                            (let ((_e1530215364_
                                                   (gx#stx-e _tl1530115361_)))
                                              (let ((_hd1530315367_
                                                     (##car _e1530215364_))
                                                    (_tl1530415369_
                                                     (##cdr _e1530215364_)))
                                                (if (gx#stx-null?
                                                     _tl1530415369_)
                                                    (_loop1529115338_
                                                     _lp-tl1529415353_
                                                     (cons _hd1530315367_
                                                           _expr1529515343_)
                                                     (cons _hd1530015359_
                                                           _hd1529615345_))
                                                    (_g1527715312_
                                                     _g1527815315_))))
                                            (_g1527715312_ _g1527815315_))))
                                    (_g1527715312_ _g1527815315_))))
                            (let ((_expr1529715372_ (reverse _expr1529515343_))
                                  (_hd1529815374_ (reverse _hd1529615345_)))
                              (if (gx#stx-pair? _tl1528715330_)
                                  (let ((_e1530515377_
                                         (gx#stx-e _tl1528715330_)))
                                    (let ((_hd1530615380_
                                           (##car _e1530515377_))
                                          (_tl1530715382_
                                           (##cdr _e1530515377_)))
                                      (if (gx#stx-null? _tl1530715382_)
                                          ((lambda (_L15385_ _L15386_ _L15387_)
                                             (begin
                                               (for-each
                                                _collect-e15275_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1540715410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1540815412_)
                    (cons _g1540715410_ _g1540815412_))
                  '()
                  _L15387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1541415417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1541515419_)
                    (cons _g1541415417_ _g1541515419_))
                  '()
                  _L15386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1542115424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1542215426_)
                    (cons _g1542115424_ _g1542215426_))
                  '()
                  _L15386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L15385_)))
                                           _hd1530615380_
                                           _expr1529715372_
                                           _hd1529815374_)
                                          (_g1527715312_ _g1527815315_))))
                                  (_g1527715312_ _g1527815315_)))))))
              (_loop1529115338_ _target1528815333_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1527715312_
                                                     _g1527815315_)))))
                                          (_g1527715312_ _g1527815315_))
                                      (_g1527715312_ _g1527815315_))))
                              (_g1527715312_ _g1527815315_))))
                      (_g1527715312_ _g1527815315_)))))
          (_g1527615429_ _stx15273_)))))
  (define gxc#collect-type-call%
    (lambda (_stx14827_)
      (let* ((_g1483114933_
              (lambda (_g1483214930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1483214930_)))
             (_g1483014940_ (lambda (_g1483214936_) ((lambda () '#!void))))
             (_g1482915090_
              (lambda (_g1483214943_)
                (if (gx#stx-pair? _g1483214943_)
                    (let ((_e1489014945_ (gx#stx-e _g1483214943_)))
                      (let ((_hd1489114948_ (##car _e1489014945_))
                            (_tl1489214950_ (##cdr _e1489014945_)))
                        (if (gx#stx-pair? _tl1489214950_)
                            (let ((_e1489314953_ (gx#stx-e _tl1489214950_)))
                              (let ((_hd1489414956_ (##car _e1489314953_))
                                    (_tl1489514958_ (##cdr _e1489314953_)))
                                (if (gx#stx-pair? _hd1489414956_)
                                    (let ((_e1489614961_
                                           (gx#stx-e _hd1489414956_)))
                                      (let ((_hd1489714964_
                                             (##car _e1489614961_))
                                            (_tl1489814966_
                                             (##cdr _e1489614961_)))
                                        (if (gx#identifier? _hd1489714964_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1489714964_)
                                                (if (gx#stx-pair?
                                                     _tl1489814966_)
                                                    (let ((_e1489914969_
                                                           (gx#stx-e
                                                            _tl1489814966_)))
                                                      (let ((_hd1490014972_
                                                             (##car _e1489914969_))
                                                            (_tl1490114974_
                                                             (##cdr _e1489914969_)))
                                                        (if (gx#stx-null?
                                                             _tl1490114974_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1489514958_)
                        (let ((_e1490214977_ (gx#stx-e _tl1489514958_)))
                          (let ((_hd1490314980_ (##car _e1490214977_))
                                (_tl1490414982_ (##cdr _e1490214977_)))
                            (if (gx#stx-pair? _hd1490314980_)
                                (let ((_e1490514985_
                                       (gx#stx-e _hd1490314980_)))
                                  (let ((_hd1490614988_ (##car _e1490514985_))
                                        (_tl1490714990_ (##cdr _e1490514985_)))
                                    (if (gx#identifier? _hd1490614988_)
                                        (if (gx#stx-eq? '%#ref _hd1490614988_)
                                            (if (gx#stx-pair? _tl1490714990_)
                                                (let ((_e1490814993_
                                                       (gx#stx-e
                                                        _tl1490714990_)))
                                                  (let ((_hd1490914996_
                                                         (##car _e1490814993_))
                                                        (_tl1491014998_
                                                         (##cdr _e1490814993_)))
                                                    (if (gx#stx-null?
                                                         _tl1491014998_)
                                                        (if (gx#stx-pair?
                                                             _tl1490414982_)
                                                            (let ((_e1491115001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1490414982_)))
                      (let ((_hd1491215004_ (##car _e1491115001_))
                            (_tl1491315006_ (##cdr _e1491115001_)))
                        (if (gx#stx-pair? _hd1491215004_)
                            (let ((_e1491415009_ (gx#stx-e _hd1491215004_)))
                              (let ((_hd1491515012_ (##car _e1491415009_))
                                    (_tl1491615014_ (##cdr _e1491415009_)))
                                (if (gx#identifier? _hd1491515012_)
                                    (if (gx#stx-eq? '%#quote _hd1491515012_)
                                        (if (gx#stx-pair? _tl1491615014_)
                                            (let ((_e1491715017_
                                                   (gx#stx-e _tl1491615014_)))
                                              (let ((_hd1491815020_
                                                     (##car _e1491715017_))
                                                    (_tl1491915022_
                                                     (##cdr _e1491715017_)))
                                                (if (gx#stx-null?
                                                     _tl1491915022_)
                                                    (if (gx#stx-pair?
                                                         _tl1491315006_)
                                                        (let ((_e1492015025_
                                                               (gx#stx-e
                                                                _tl1491315006_)))
                                                          (let ((_hd1492115028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1492015025_))
                        (_tl1492215030_ (##cdr _e1492015025_)))
                    (if (gx#stx-pair? _hd1492115028_)
                        (let ((_e1492315033_ (gx#stx-e _hd1492115028_)))
                          (let ((_hd1492415036_ (##car _e1492315033_))
                                (_tl1492515038_ (##cdr _e1492315033_)))
                            (if (gx#identifier? _hd1492415036_)
                                (if (gx#stx-eq? '%#ref _hd1492415036_)
                                    (if (gx#stx-pair? _tl1492515038_)
                                        (let ((_e1492615041_
                                               (gx#stx-e _tl1492515038_)))
                                          (let ((_hd1492715044_
                                                 (##car _e1492615041_))
                                                (_tl1492815046_
                                                 (##cdr _e1492615041_)))
                                            (if (gx#stx-null? _tl1492815046_)
                                                (if (gx#stx-null?
                                                     _tl1492215030_)
                                                    ((lambda (_L15049_
                                                              _L15050_
                                                              _L15051_
                                                              _L15052_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda20142
                    (gxc#generate-runtime-binding-id _L15051_)
                    (gx#stx-e _L15050_)
                    (gxc#generate-runtime-binding-id _L15049_)
                    '#f)
                   (_g1483014940_ _g1483214943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1492715044_
                                                     _hd1491815020_
                                                     _hd1490914996_
                                                     _hd1490014972_)
                                                    (_g1483014940_
                                                     _g1483214943_))
                                                (_g1483014940_
                                                 _g1483214943_))))
                                        (_g1483014940_ _g1483214943_))
                                    (_g1483014940_ _g1483214943_))
                                (_g1483014940_ _g1483214943_))))
                        (_g1483014940_ _g1483214943_))))
                (_g1483014940_ _g1483214943_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1483014940_
                                                     _g1483214943_))))
                                            (_g1483014940_ _g1483214943_))
                                        (_g1483014940_ _g1483214943_))
                                    (_g1483014940_ _g1483214943_))))
                            (_g1483014940_ _g1483214943_))))
                    (_g1483014940_ _g1483214943_))
                (_g1483014940_ _g1483214943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1483014940_ _g1483214943_))
                                            (_g1483014940_ _g1483214943_))
                                        (_g1483014940_ _g1483214943_))))
                                (_g1483014940_ _g1483214943_))))
                        (_g1483014940_ _g1483214943_))
                    (_g1483014940_ _g1483214943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1483014940_
                                                     _g1483214943_))
                                                (_g1483014940_ _g1483214943_))
                                            (_g1483014940_ _g1483214943_))))
                                    (_g1483014940_ _g1483214943_))))
                            (_g1483014940_ _g1483214943_))))
                    (_g1483014940_ _g1483214943_))))
             (_g1482815270_
              (lambda (_g1483215093_)
                (if (gx#stx-pair? _g1483215093_)
                    (let ((_e1483815095_ (gx#stx-e _g1483215093_)))
                      (let ((_hd1483915098_ (##car _e1483815095_))
                            (_tl1484015100_ (##cdr _e1483815095_)))
                        (if (gx#stx-pair? _tl1484015100_)
                            (let ((_e1484115103_ (gx#stx-e _tl1484015100_)))
                              (let ((_hd1484215106_ (##car _e1484115103_))
                                    (_tl1484315108_ (##cdr _e1484115103_)))
                                (if (gx#stx-pair? _hd1484215106_)
                                    (let ((_e1484415111_
                                           (gx#stx-e _hd1484215106_)))
                                      (let ((_hd1484515114_
                                             (##car _e1484415111_))
                                            (_tl1484615116_
                                             (##cdr _e1484415111_)))
                                        (if (gx#identifier? _hd1484515114_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1484515114_)
                                                (if (gx#stx-pair?
                                                     _tl1484615116_)
                                                    (let ((_e1484715119_
                                                           (gx#stx-e
                                                            _tl1484615116_)))
                                                      (let ((_hd1484815122_
                                                             (##car _e1484715119_))
                                                            (_tl1484915124_
                                                             (##cdr _e1484715119_)))
                                                        (if (gx#stx-null?
                                                             _tl1484915124_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1484315108_)
                        (let ((_e1485015127_ (gx#stx-e _tl1484315108_)))
                          (let ((_hd1485115130_ (##car _e1485015127_))
                                (_tl1485215132_ (##cdr _e1485015127_)))
                            (if (gx#stx-pair? _hd1485115130_)
                                (let ((_e1485315135_
                                       (gx#stx-e _hd1485115130_)))
                                  (let ((_hd1485415138_ (##car _e1485315135_))
                                        (_tl1485515140_ (##cdr _e1485315135_)))
                                    (if (gx#identifier? _hd1485415138_)
                                        (if (gx#stx-eq? '%#ref _hd1485415138_)
                                            (if (gx#stx-pair? _tl1485515140_)
                                                (let ((_e1485615143_
                                                       (gx#stx-e
                                                        _tl1485515140_)))
                                                  (let ((_hd1485715146_
                                                         (##car _e1485615143_))
                                                        (_tl1485815148_
                                                         (##cdr _e1485615143_)))
                                                    (if (gx#stx-null?
                                                         _tl1485815148_)
                                                        (if (gx#stx-pair?
                                                             _tl1485215132_)
                                                            (let ((_e1485915151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1485215132_)))
                      (let ((_hd1486015154_ (##car _e1485915151_))
                            (_tl1486115156_ (##cdr _e1485915151_)))
                        (if (gx#stx-pair? _hd1486015154_)
                            (let ((_e1486215159_ (gx#stx-e _hd1486015154_)))
                              (let ((_hd1486315162_ (##car _e1486215159_))
                                    (_tl1486415164_ (##cdr _e1486215159_)))
                                (if (gx#identifier? _hd1486315162_)
                                    (if (gx#stx-eq? '%#quote _hd1486315162_)
                                        (if (gx#stx-pair? _tl1486415164_)
                                            (let ((_e1486515167_
                                                   (gx#stx-e _tl1486415164_)))
                                              (let ((_hd1486615170_
                                                     (##car _e1486515167_))
                                                    (_tl1486715172_
                                                     (##cdr _e1486515167_)))
                                                (if (gx#stx-null?
                                                     _tl1486715172_)
                                                    (if (gx#stx-pair?
                                                         _tl1486115156_)
                                                        (let ((_e1486815175_
                                                               (gx#stx-e
                                                                _tl1486115156_)))
                                                          (let ((_hd1486915178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1486815175_))
                        (_tl1487015180_ (##cdr _e1486815175_)))
                    (if (gx#stx-pair? _hd1486915178_)
                        (let ((_e1487115183_ (gx#stx-e _hd1486915178_)))
                          (let ((_hd1487215186_ (##car _e1487115183_))
                                (_tl1487315188_ (##cdr _e1487115183_)))
                            (if (gx#identifier? _hd1487215186_)
                                (if (gx#stx-eq? '%#ref _hd1487215186_)
                                    (if (gx#stx-pair? _tl1487315188_)
                                        (let ((_e1487415191_
                                               (gx#stx-e _tl1487315188_)))
                                          (let ((_hd1487515194_
                                                 (##car _e1487415191_))
                                                (_tl1487615196_
                                                 (##cdr _e1487415191_)))
                                            (if (gx#stx-null? _tl1487615196_)
                                                (if (gx#stx-pair?
                                                     _tl1487015180_)
                                                    (let ((_e1487715199_
                                                           (gx#stx-e
                                                            _tl1487015180_)))
                                                      (let ((_hd1487815202_
                                                             (##car _e1487715199_))
                                                            (_tl1487915204_
                                                             (##cdr _e1487715199_)))
                                                        (if (gx#stx-pair?
                                                             _hd1487815202_)
                                                            (let ((_e1488015207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1487815202_)))
                      (let ((_hd1488115210_ (##car _e1488015207_))
                            (_tl1488215212_ (##cdr _e1488015207_)))
                        (if (gx#identifier? _hd1488115210_)
                            (if (gx#stx-eq? '%#quote _hd1488115210_)
                                (if (gx#stx-pair? _tl1488215212_)
                                    (let ((_e1488315215_
                                           (gx#stx-e _tl1488215212_)))
                                      (let ((_hd1488415218_
                                             (##car _e1488315215_))
                                            (_tl1488515220_
                                             (##cdr _e1488315215_)))
                                        (if (gx#stx-null? _tl1488515220_)
                                            (if (gx#stx-null? _tl1487915204_)
                                                ((lambda (_L15223_
                                                          _L15224_
                                                          _L15225_
                                                          _L15226_
                                                          _L15227_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L15227_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda20142
                                                        (gxc#generate-runtime-binding-id
                                                         _L15226_)
                                                        (gx#stx-e _L15225_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L15224_)
                                                        (gx#stx-e _L15223_))
                                                       (_g1482915090_
                                                        _g1483215093_)))
                                                 _hd1488415218_
                                                 _hd1487515194_
                                                 _hd1486615170_
                                                 _hd1485715146_
                                                 _hd1484815122_)
                                                (_g1482915090_ _g1483215093_))
                                            (_g1482915090_ _g1483215093_))))
                                    (_g1482915090_ _g1483215093_))
                                (_g1482915090_ _g1483215093_))
                            (_g1482915090_ _g1483215093_))))
                    (_g1482915090_ _g1483215093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1482915090_
                                                     _g1483215093_))
                                                (_g1482915090_
                                                 _g1483215093_))))
                                        (_g1482915090_ _g1483215093_))
                                    (_g1482915090_ _g1483215093_))
                                (_g1482915090_ _g1483215093_))))
                        (_g1482915090_ _g1483215093_))))
                (_g1482915090_ _g1483215093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1482915090_
                                                     _g1483215093_))))
                                            (_g1482915090_ _g1483215093_))
                                        (_g1482915090_ _g1483215093_))
                                    (_g1482915090_ _g1483215093_))))
                            (_g1482915090_ _g1483215093_))))
                    (_g1482915090_ _g1483215093_))
                (_g1482915090_ _g1483215093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1482915090_ _g1483215093_))
                                            (_g1482915090_ _g1483215093_))
                                        (_g1482915090_ _g1483215093_))))
                                (_g1482915090_ _g1483215093_))))
                        (_g1482915090_ _g1483215093_))
                    (_g1482915090_ _g1483215093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1482915090_
                                                     _g1483215093_))
                                                (_g1482915090_ _g1483215093_))
                                            (_g1482915090_ _g1483215093_))))
                                    (_g1482915090_ _g1483215093_))))
                            (_g1482915090_ _g1483215093_))))
                    (_g1482915090_ _g1483215093_)))))
        (_g1482815270_ _stx14827_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx14767_)
      (let* ((_g1477014783_
              (lambda (_g1477114780_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1477114780_)))
             (_g1476914790_ (lambda (_g1477114786_) ((lambda () '#f))))
             (_g1476814824_
              (lambda (_g1477114793_)
                (if (gx#stx-pair? _g1477114793_)
                    (let ((_e1477314795_ (gx#stx-e _g1477114793_)))
                      (let ((_hd1477414798_ (##car _e1477314795_))
                            (_tl1477514800_ (##cdr _e1477314795_)))
                        (if (gx#stx-pair? _tl1477514800_)
                            (let ((_e1477614803_ (gx#stx-e _tl1477514800_)))
                              (let ((_hd1477714806_ (##car _e1477614803_))
                                    (_tl1477814808_ (##cdr _e1477614803_)))
                                (if (gx#stx-null? _tl1477814808_)
                                    ((lambda (_L14811_)
                                       (gxc#compile-e _L14811_))
                                     _hd1477714806_)
                                    (_g1476914790_ _g1477114793_))))
                            (_g1476914790_ _g1477114793_))))
                    (_g1476914790_ _g1477114793_)))))
        (_g1476814824_ _stx14767_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx14192_)
      (let* ((_g1419714318_
              (lambda (_g1419814315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1419814315_)))
             (_g1419614325_ (lambda (_g1419814321_) ((lambda () '#f))))
             (_g1419514349_
              (lambda (_g1419814328_)
                (if (gx#stx-pair? _g1419814328_)
                    (let ((_e1431114330_ (gx#stx-e _g1419814328_)))
                      (let ((_hd1431214333_ (##car _e1431114330_))
                            (_tl1431314335_ (##cdr _e1431114330_)))
                        ((lambda (_L14338_)
                           (if (gxc#dispatch-lambda-form? _L14338_)
                               (let ((__obj20394
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj20394
                                    'lambda
                                    (gxc#lambda-form-arity _L14338_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L14338_))
                                   __obj20394))
                               (_g1419614325_ _g1419814328_)))
                         _tl1431314335_)))
                    (_g1419614325_ _g1419814328_))))
             (_g1419414579_
              (lambda (_g1419814352_)
                (if (gx#stx-pair? _g1419814352_)
                    (let ((_e1425614354_ (gx#stx-e _g1419814352_)))
                      (let ((_hd1425714357_ (##car _e1425614354_))
                            (_tl1425814359_ (##cdr _e1425614354_)))
                        (if (gx#stx-pair? _tl1425814359_)
                            (let ((_e1425914362_ (gx#stx-e _tl1425814359_)))
                              (let ((_hd1426014365_ (##car _e1425914362_))
                                    (_tl1426114367_ (##cdr _e1425914362_)))
                                (if (gx#stx-pair/null? _hd1426014365_)
                                    (if (fx>= (gx#stx-length _hd1426014365_)
                                              '0)
                                        (let ((_g20456_
                                               (gx#syntax-split-splice
                                                _hd1426014365_
                                                '0)))
                                          (begin
                                            (let ((_g20457_
                                                   (values-count _g20456_)))
                                              (if (not (fx= _g20457_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20457_)))
                                            (let ((_target1426214370_
                                                   (values-ref _g20456_ 0))
                                                  (_tl1426414372_
                                                   (values-ref _g20456_ 1)))
                                              (if (gx#stx-null? _tl1426414372_)
                                                  (letrec ((_loop1426514375_
                                                            (lambda (_hd1426314378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1426914380_)
                      (if (gx#stx-pair? _hd1426314378_)
                          (let ((_e1426614383_ (gx#stx-e _hd1426314378_)))
                            (let ((_lp-hd1426714386_ (##car _e1426614383_))
                                  (_lp-tl1426814388_ (##cdr _e1426614383_)))
                              (_loop1426514375_
                               _lp-tl1426814388_
                               (cons _lp-hd1426714386_ _arg1426914380_))))
                          (let ((_arg1427014391_ (reverse _arg1426914380_)))
                            (if (gx#stx-pair? _tl1426114367_)
                                (let ((_e1427114394_
                                       (gx#stx-e _tl1426114367_)))
                                  (let ((_hd1427214397_ (##car _e1427114394_))
                                        (_tl1427314399_ (##cdr _e1427114394_)))
                                    (if (gx#stx-pair? _hd1427214397_)
                                        (let ((_e1427414402_
                                               (gx#stx-e _hd1427214397_)))
                                          (let ((_hd1427514405_
                                                 (##car _e1427414402_))
                                                (_tl1427614407_
                                                 (##cdr _e1427414402_)))
                                            (if (gx#identifier? _hd1427514405_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1427514405_)
                                                    (if (gx#stx-pair?
                                                         _tl1427614407_)
                                                        (let ((_e1427714410_
                                                               (gx#stx-e
                                                                _tl1427614407_)))
                                                          (let ((_hd1427814413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1427714410_))
                        (_tl1427914415_ (##cdr _e1427714410_)))
                    (if (gx#stx-pair? _hd1427814413_)
                        (let ((_e1428014418_ (gx#stx-e _hd1427814413_)))
                          (let ((_hd1428114421_ (##car _e1428014418_))
                                (_tl1428214423_ (##cdr _e1428014418_)))
                            (if (gx#identifier? _hd1428114421_)
                                (if (gx#stx-eq? '%#ref _hd1428114421_)
                                    (if (gx#stx-pair? _tl1428214423_)
                                        (let ((_e1428314426_
                                               (gx#stx-e _tl1428214423_)))
                                          (let ((_hd1428414429_
                                                 (##car _e1428314426_))
                                                (_tl1428514431_
                                                 (##cdr _e1428314426_)))
                                            (if (gx#stx-null? _tl1428514431_)
                                                (if (gx#stx-pair?
                                                     _tl1427914415_)
                                                    (let ((_e1428614434_
                                                           (gx#stx-e
                                                            _tl1427914415_)))
                                                      (let ((_hd1428714437_
                                                             (##car _e1428614434_))
                                                            (_tl1428814439_
                                                             (##cdr _e1428614434_)))
                                                        (if (gx#stx-pair?
                                                             _hd1428714437_)
                                                            (let ((_e1428914442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1428714437_)))
                      (let ((_hd1429014445_ (##car _e1428914442_))
                            (_tl1429114447_ (##cdr _e1428914442_)))
                        (if (gx#identifier? _hd1429014445_)
                            (if (gx#stx-eq? '%#ref _hd1429014445_)
                                (if (gx#stx-pair? _tl1429114447_)
                                    (let ((_e1429214450_
                                           (gx#stx-e _tl1429114447_)))
                                      (let ((_hd1429314453_
                                             (##car _e1429214450_))
                                            (_tl1429414455_
                                             (##cdr _e1429214450_)))
                                        (if (gx#stx-null? _tl1429414455_)
                                            (if (gx#stx-pair/null?
                                                 _tl1428814439_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1428814439_)
                                                          '0)
                                                    (let ((_g20458_
                                                           (gx#syntax-split-splice
                                                            _tl1428814439_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20459_
                                                               (values-count
                                                                _g20458_)))
                                                          (if (not (fx= _g20459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g20459_)))
                (let ((_target1429514458_ (values-ref _g20458_ 0))
                      (_tl1429714460_ (values-ref _g20458_ 1)))
                  (if (gx#stx-null? _tl1429714460_)
                      (letrec ((_loop1429814463_
                                (lambda (_hd1429614466_ _xarg1430214468_)
                                  (if (gx#stx-pair? _hd1429614466_)
                                      (let ((_e1429914471_
                                             (gx#stx-e _hd1429614466_)))
                                        (let ((_lp-hd1430014474_
                                               (##car _e1429914471_))
                                              (_lp-tl1430114476_
                                               (##cdr _e1429914471_)))
                                          (if (gx#stx-pair? _lp-hd1430014474_)
                                              (let ((_e1430414479_
                                                     (gx#stx-e
                                                      _lp-hd1430014474_)))
                                                (let ((_hd1430514482_
                                                       (##car _e1430414479_))
                                                      (_tl1430614484_
                                                       (##cdr _e1430414479_)))
                                                  (if (gx#identifier?
                                                       _hd1430514482_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1430514482_)
                                                          (if (gx#stx-pair?
                                                               _tl1430614484_)
                                                              (let ((_e1430714487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1430614484_)))
                        (let ((_hd1430814490_ (##car _e1430714487_))
                              (_tl1430914492_ (##cdr _e1430714487_)))
                          (if (gx#stx-null? _tl1430914492_)
                              (_loop1429814463_
                               _lp-tl1430114476_
                               (cons _hd1430814490_ _xarg1430214468_))
                              (_g1419514349_ _g1419814352_))))
                      (_g1419514349_ _g1419814352_))
                  (_g1419514349_ _g1419814352_))
              (_g1419514349_ _g1419814352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1419514349_ _g1419814352_))))
                                      (let ((_xarg1430314495_
                                             (reverse _xarg1430214468_)))
                                        (if (gx#stx-null? _tl1427314399_)
                                            ((lambda (_L14498_
                                                      _L14499_
                                                      _L14500_
                                                      _L14501_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1453814541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1453914543_)
                            (cons _g1453814541_ _g1453914543_))
                          '()
                          _L14501_)))
               (if (eq? (gxc#generate-runtime-binding-id _L14500_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1454514548_
                                                       _g1454614550_)
                                                (cons _g1454514548_
                                                      _g1454614550_))
                                              '()
                                              _L14501_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1455214555_
                                                       _g1455314557_)
                                                (cons _g1455214555_
                                                      _g1455314557_))
                                              '()
                                              _L14498_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1455914562_ _g1456014564_)
                                           (cons _g1455914562_ _g1456014564_))
                                         '()
                                         _L14501_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1456614569_ _g1456714571_)
                                           (cons _g1456614569_ _g1456714571_))
                                         '()
                                         _L14498_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t14574_
                                                           (gxc#generate-runtime-binding-id
                                                            _L14499_))
                                                          (_type14576_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t14574_)))
                                                     (if (##structure-instance-of?
                                                          _type14576_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t14574_)
                                                         '#f))
                                                   (_g1419514349_
                                                    _g1419814352_)))
                                             _xarg1430314495_
                                             _hd1429314453_
                                             _hd1428414429_
                                             _arg1427014391_)
                                            (_g1419514349_ _g1419814352_)))))))
                        (_loop1429814463_ _target1429514458_ '()))
                      (_g1419514349_ _g1419814352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1419514349_
                                                     _g1419814352_))
                                                (_g1419514349_ _g1419814352_))
                                            (_g1419514349_ _g1419814352_))))
                                    (_g1419514349_ _g1419814352_))
                                (_g1419514349_ _g1419814352_))
                            (_g1419514349_ _g1419814352_))))
                    (_g1419514349_ _g1419814352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1419514349_
                                                     _g1419814352_))
                                                (_g1419514349_
                                                 _g1419814352_))))
                                        (_g1419514349_ _g1419814352_))
                                    (_g1419514349_ _g1419814352_))
                                (_g1419514349_ _g1419814352_))))
                        (_g1419514349_ _g1419814352_))))
                (_g1419514349_ _g1419814352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1419514349_
                                                     _g1419814352_))
                                                (_g1419514349_
                                                 _g1419814352_))))
                                        (_g1419514349_ _g1419814352_))))
                                (_g1419514349_ _g1419814352_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1426514375_
                                                     _target1426214370_
                                                     '()))
                                                  (_g1419514349_
                                                   _g1419814352_)))))
                                        (_g1419514349_ _g1419814352_))
                                    (_g1419514349_ _g1419814352_))))
                            (_g1419514349_ _g1419814352_))))
                    (_g1419514349_ _g1419814352_))))
             (_g1419314764_
              (lambda (_g1419814582_)
                (if (gx#stx-pair? _g1419814582_)
                    (let ((_e1420414584_ (gx#stx-e _g1419814582_)))
                      (let ((_hd1420514587_ (##car _e1420414584_))
                            (_tl1420614589_ (##cdr _e1420414584_)))
                        (if (gx#stx-pair? _tl1420614589_)
                            (let ((_e1420714592_ (gx#stx-e _tl1420614589_)))
                              (let ((_hd1420814595_ (##car _e1420714592_))
                                    (_tl1420914597_ (##cdr _e1420714592_)))
                                (if (gx#stx-pair? _tl1420914597_)
                                    (let ((_e1421014600_
                                           (gx#stx-e _tl1420914597_)))
                                      (let ((_hd1421114603_
                                             (##car _e1421014600_))
                                            (_tl1421214605_
                                             (##cdr _e1421014600_)))
                                        (if (gx#stx-pair? _hd1421114603_)
                                            (let ((_e1421314608_
                                                   (gx#stx-e _hd1421114603_)))
                                              (let ((_hd1421414611_
                                                     (##car _e1421314608_))
                                                    (_tl1421514613_
                                                     (##cdr _e1421314608_)))
                                                (if (gx#identifier?
                                                     _hd1421414611_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1421414611_)
                                                        (if (gx#stx-pair?
                                                             _tl1421514613_)
                                                            (let ((_e1421614616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1421514613_)))
                      (let ((_hd1421714619_ (##car _e1421614616_))
                            (_tl1421814621_ (##cdr _e1421614616_)))
                        (if (gx#stx-pair? _hd1421714619_)
                            (let ((_e1421914624_ (gx#stx-e _hd1421714619_)))
                              (let ((_hd1422014627_ (##car _e1421914624_))
                                    (_tl1422114629_ (##cdr _e1421914624_)))
                                (if (gx#identifier? _hd1422014627_)
                                    (if (gx#stx-eq? '%#ref _hd1422014627_)
                                        (if (gx#stx-pair? _tl1422114629_)
                                            (let ((_e1422214632_
                                                   (gx#stx-e _tl1422114629_)))
                                              (let ((_hd1422314635_
                                                     (##car _e1422214632_))
                                                    (_tl1422414637_
                                                     (##cdr _e1422214632_)))
                                                (if (gx#stx-null?
                                                     _tl1422414637_)
                                                    (if (gx#stx-pair?
                                                         _tl1421814621_)
                                                        (let ((_e1422514640_
                                                               (gx#stx-e
                                                                _tl1421814621_)))
                                                          (let ((_hd1422614643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1422514640_))
                        (_tl1422714645_ (##cdr _e1422514640_)))
                    (if (gx#stx-pair? _hd1422614643_)
                        (let ((_e1422814648_ (gx#stx-e _hd1422614643_)))
                          (let ((_hd1422914651_ (##car _e1422814648_))
                                (_tl1423014653_ (##cdr _e1422814648_)))
                            (if (gx#identifier? _hd1422914651_)
                                (if (gx#stx-eq? '%#ref _hd1422914651_)
                                    (if (gx#stx-pair? _tl1423014653_)
                                        (let ((_e1423114656_
                                               (gx#stx-e _tl1423014653_)))
                                          (let ((_hd1423214659_
                                                 (##car _e1423114656_))
                                                (_tl1423314661_
                                                 (##cdr _e1423114656_)))
                                            (if (gx#stx-null? _tl1423314661_)
                                                (if (gx#stx-pair?
                                                     _tl1422714645_)
                                                    (let ((_e1423414664_
                                                           (gx#stx-e
                                                            _tl1422714645_)))
                                                      (let ((_hd1423514667_
                                                             (##car _e1423414664_))
                                                            (_tl1423614669_
                                                             (##cdr _e1423414664_)))
                                                        (if (gx#stx-pair?
                                                             _hd1423514667_)
                                                            (let ((_e1423714672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1423514667_)))
                      (let ((_hd1423814675_ (##car _e1423714672_))
                            (_tl1423914677_ (##cdr _e1423714672_)))
                        (if (gx#identifier? _hd1423814675_)
                            (if (gx#stx-eq? '%#ref _hd1423814675_)
                                (if (gx#stx-pair? _tl1423914677_)
                                    (let ((_e1424014680_
                                           (gx#stx-e _tl1423914677_)))
                                      (let ((_hd1424114683_
                                             (##car _e1424014680_))
                                            (_tl1424214685_
                                             (##cdr _e1424014680_)))
                                        (if (gx#stx-null? _tl1424214685_)
                                            (if (gx#stx-pair? _tl1423614669_)
                                                (let ((_e1424314688_
                                                       (gx#stx-e
                                                        _tl1423614669_)))
                                                  (let ((_hd1424414691_
                                                         (##car _e1424314688_))
                                                        (_tl1424514693_
                                                         (##cdr _e1424314688_)))
                                                    (if (gx#stx-pair?
                                                         _hd1424414691_)
                                                        (let ((_e1424614696_
                                                               (gx#stx-e
                                                                _hd1424414691_)))
                                                          (let ((_hd1424714699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1424614696_))
                        (_tl1424814701_ (##cdr _e1424614696_)))
                    (if (gx#identifier? _hd1424714699_)
                        (if (gx#stx-eq? '%#ref _hd1424714699_)
                            (if (gx#stx-pair? _tl1424814701_)
                                (let ((_e1424914704_
                                       (gx#stx-e _tl1424814701_)))
                                  (let ((_hd1425014707_ (##car _e1424914704_))
                                        (_tl1425114709_ (##cdr _e1424914704_)))
                                    (if (gx#stx-null? _tl1425114709_)
                                        (if (gx#stx-null? _tl1424514693_)
                                            (if (gx#stx-null? _tl1421214605_)
                                                ((lambda (_L14712_
                                                          _L14713_
                                                          _L14714_
                                                          _L14715_
                                                          _L14716_)
                                                   (if (if (gx#identifier?
                                                            _L14716_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14715_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L14714_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L14716_ _L14712_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t14759_
                       (gxc#generate-runtime-binding-id _L14713_))
                      (_type14761_ (gxc#optimizer-resolve-type _type-t14759_)))
                 (if (##structure-instance-of?
                      _type14761_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t14759_)
                     '#f))
               (_g1419414579_ _g1419814582_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1425014707_
                                                 _hd1424114683_
                                                 _hd1423214659_
                                                 _hd1422314635_
                                                 _hd1420814595_)
                                                (_g1419414579_ _g1419814582_))
                                            (_g1419414579_ _g1419814582_))
                                        (_g1419414579_ _g1419814582_))))
                                (_g1419414579_ _g1419814582_))
                            (_g1419414579_ _g1419814582_))
                        (_g1419414579_ _g1419814582_))))
                (_g1419414579_ _g1419814582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1419414579_ _g1419814582_))
                                            (_g1419414579_ _g1419814582_))))
                                    (_g1419414579_ _g1419814582_))
                                (_g1419414579_ _g1419814582_))
                            (_g1419414579_ _g1419814582_))))
                    (_g1419414579_ _g1419814582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1419414579_
                                                     _g1419814582_))
                                                (_g1419414579_
                                                 _g1419814582_))))
                                        (_g1419414579_ _g1419814582_))
                                    (_g1419414579_ _g1419814582_))
                                (_g1419414579_ _g1419814582_))))
                        (_g1419414579_ _g1419814582_))))
                (_g1419414579_ _g1419814582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1419414579_
                                                     _g1419814582_))))
                                            (_g1419414579_ _g1419814582_))
                                        (_g1419414579_ _g1419814582_))
                                    (_g1419414579_ _g1419814582_))))
                            (_g1419414579_ _g1419814582_))))
                    (_g1419414579_ _g1419814582_))
                (_g1419414579_ _g1419814582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1419414579_
                                                     _g1419814582_))))
                                            (_g1419414579_ _g1419814582_))))
                                    (_g1419414579_ _g1419814582_))))
                            (_g1419414579_ _g1419814582_))))
                    (_g1419414579_ _g1419814582_)))))
        (_g1419314764_ _stx14192_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx14138_)
      (letrec ((_clause-e14140_
                (lambda (_form14190_)
                  (let ((__obj20395 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj20395
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form14190_)
                       (gxc#dispatch-lambda-form-delegate _form14190_))
                      __obj20395)))))
        (let* ((_g1414314153_
                (lambda (_g1414414150_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1414414150_)))
               (_g1414214160_ (lambda (_g1414414156_) ((lambda () '#f))))
               (_g1414114187_
                (lambda (_g1414414163_)
                  (if (gx#stx-pair? _g1414414163_)
                      (let ((_e1414614165_ (gx#stx-e _g1414414163_)))
                        (let ((_hd1414714168_ (##car _e1414614165_))
                              (_tl1414814170_ (##cdr _e1414614165_)))
                          ((lambda (_L14173_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L14173_)
                                 (let ((_clauses14185_
                                        (map _clause-e14140_ _L14173_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses14185_))
                                 (_g1414214160_ _g1414414163_)))
                           _tl1414814170_)))
                      (_g1414214160_ _g1414414163_)))))
          (_g1414114187_ _stx14138_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx14043_)
      (let* ((_g1404614066_
              (lambda (_g1404714063_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1404714063_)))
             (_g1404514073_ (lambda (_g1404714069_) ((lambda () '#f))))
             (_g1404414135_
              (lambda (_g1404714076_)
                (if (gx#stx-pair? _g1404714076_)
                    (let ((_e1405014078_ (gx#stx-e _g1404714076_)))
                      (let ((_hd1405114081_ (##car _e1405014078_))
                            (_tl1405214083_ (##cdr _e1405014078_)))
                        (if (gx#stx-pair? _tl1405214083_)
                            (let ((_e1405314086_ (gx#stx-e _tl1405214083_)))
                              (let ((_hd1405414089_ (##car _e1405314086_))
                                    (_tl1405514091_ (##cdr _e1405314086_)))
                                (if (gx#stx-pair? _hd1405414089_)
                                    (let ((_e1405614094_
                                           (gx#stx-e _hd1405414089_)))
                                      (let ((_hd1405714097_
                                             (##car _e1405614094_))
                                            (_tl1405814099_
                                             (##cdr _e1405614094_)))
                                        (if (gx#identifier? _hd1405714097_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1405714097_)
                                                (if (gx#stx-pair?
                                                     _tl1405814099_)
                                                    (let ((_e1405914102_
                                                           (gx#stx-e
                                                            _tl1405814099_)))
                                                      (let ((_hd1406014105_
                                                             (##car _e1405914102_))
                                                            (_tl1406114107_
                                                             (##cdr _e1405914102_)))
                                                        (if (gx#stx-null?
                                                             _tl1406114107_)
                                                            ((lambda (_L14110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14111_)
                       (let ((_type-e1412814130_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L14111_)
                               '#f)))
                         (if _type-e1412814130_
                             (let ((_type-e14133_ _type-e1412814130_))
                               (_type-e14133_ _stx14043_ _L14110_))
                             '#f)))
                     _tl1405514091_
                     _hd1406014105_)
                    (_g1404514073_ _g1404714076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1404514073_
                                                     _g1404714076_))
                                                (_g1404514073_ _g1404714076_))
                                            (_g1404514073_ _g1404714076_))))
                                    (_g1404514073_ _g1404714076_))))
                            (_g1404514073_ _g1404714076_))))
                    (_g1404514073_ _g1404714076_)))))
        (_g1404414135_ _stx14043_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13528_ _args13529_)
      (let* ((_g1353313646_
              (lambda (_g1353413643_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1353413643_)))
             (_g1353213653_
              (lambda (_g1353413649_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx13528_))
                     '#f)))))
             (_g1353113860_
              (lambda (_g1353413656_)
                (if (gx#stx-pair? _g1353413656_)
                    (let ((_e1359413658_ (gx#stx-e _g1353413656_)))
                      (let ((_hd1359513661_ (##car _e1359413658_))
                            (_tl1359613663_ (##cdr _e1359413658_)))
                        (if (gx#stx-pair? _hd1359513661_)
                            (let ((_e1359713666_ (gx#stx-e _hd1359513661_)))
                              (let ((_hd1359813669_ (##car _e1359713666_))
                                    (_tl1359913671_ (##cdr _e1359713666_)))
                                (if (gx#identifier? _hd1359813669_)
                                    (if (gx#stx-eq? '%#quote _hd1359813669_)
                                        (if (gx#stx-pair? _tl1359913671_)
                                            (let ((_e1360013674_
                                                   (gx#stx-e _tl1359913671_)))
                                              (let ((_hd1360113677_
                                                     (##car _e1360013674_))
                                                    (_tl1360213679_
                                                     (##cdr _e1360013674_)))
                                                (if (gx#stx-null?
                                                     _tl1360213679_)
                                                    (if (gx#stx-pair?
                                                         _tl1359613663_)
                                                        (let ((_e1360313682_
                                                               (gx#stx-e
                                                                _tl1359613663_)))
                                                          (let ((_hd1360413685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1360313682_))
                        (_tl1360513687_ (##cdr _e1360313682_)))
                    (if (gx#stx-pair? _hd1360413685_)
                        (let ((_e1360613690_ (gx#stx-e _hd1360413685_)))
                          (let ((_hd1360713693_ (##car _e1360613690_))
                                (_tl1360813695_ (##cdr _e1360613690_)))
                            (if (gx#identifier? _hd1360713693_)
                                (if (gx#stx-eq? '%#ref _hd1360713693_)
                                    (if (gx#stx-pair? _tl1360813695_)
                                        (let ((_e1360913698_
                                               (gx#stx-e _tl1360813695_)))
                                          (let ((_hd1361013701_
                                                 (##car _e1360913698_))
                                                (_tl1361113703_
                                                 (##cdr _e1360913698_)))
                                            (if (gx#stx-null? _tl1361113703_)
                                                (if (gx#stx-pair?
                                                     _tl1360513687_)
                                                    (let ((_e1361213706_
                                                           (gx#stx-e
                                                            _tl1360513687_)))
                                                      (let ((_hd1361313709_
                                                             (##car _e1361213706_))
                                                            (_tl1361413711_
                                                             (##cdr _e1361213706_)))
                                                        (if (gx#stx-pair?
                                                             _hd1361313709_)
                                                            (let ((_e1361513714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1361313709_)))
                      (let ((_hd1361613717_ (##car _e1361513714_))
                            (_tl1361713719_ (##cdr _e1361513714_)))
                        (if (gx#identifier? _hd1361613717_)
                            (if (gx#stx-eq? '%#quote _hd1361613717_)
                                (if (gx#stx-pair? _tl1361713719_)
                                    (let ((_e1361813722_
                                           (gx#stx-e _tl1361713719_)))
                                      (let ((_hd1361913725_
                                             (##car _e1361813722_))
                                            (_tl1362013727_
                                             (##cdr _e1361813722_)))
                                        (if (gx#stx-null? _tl1362013727_)
                                            (if (gx#stx-pair? _tl1361413711_)
                                                (let ((_e1362113730_
                                                       (gx#stx-e
                                                        _tl1361413711_)))
                                                  (let ((_hd1362213733_
                                                         (##car _e1362113730_))
                                                        (_tl1362313735_
                                                         (##cdr _e1362113730_)))
                                                    (if (gx#stx-pair?
                                                         _tl1362313735_)
                                                        (let ((_e1362413738_
                                                               (gx#stx-e
                                                                _tl1362313735_)))
                                                          (let ((_hd1362513741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1362413738_))
                        (_tl1362613743_ (##cdr _e1362413738_)))
                    (if (gx#stx-pair? _hd1362513741_)
                        (let ((_e1362713746_ (gx#stx-e _hd1362513741_)))
                          (let ((_hd1362813749_ (##car _e1362713746_))
                                (_tl1362913751_ (##cdr _e1362713746_)))
                            (if (gx#identifier? _hd1362813749_)
                                (if (gx#stx-eq? '%#quote _hd1362813749_)
                                    (if (gx#stx-pair? _tl1362913751_)
                                        (let ((_e1363013754_
                                               (gx#stx-e _tl1362913751_)))
                                          (let ((_hd1363113757_
                                                 (##car _e1363013754_))
                                                (_tl1363213759_
                                                 (##cdr _e1363013754_)))
                                            (if (gx#stx-null? _tl1363213759_)
                                                (if (gx#stx-pair?
                                                     _tl1362613743_)
                                                    (let ((_e1363313762_
                                                           (gx#stx-e
                                                            _tl1362613743_)))
                                                      (let ((_hd1363413765_
                                                             (##car _e1363313762_))
                                                            (_tl1363513767_
                                                             (##cdr _e1363313762_)))
                                                        (if (gx#stx-pair?
                                                             _hd1363413765_)
                                                            (let ((_e1363613770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1363413765_)))
                      (let ((_hd1363713773_ (##car _e1363613770_))
                            (_tl1363813775_ (##cdr _e1363613770_)))
                        (if (gx#identifier? _hd1363713773_)
                            (if (gx#stx-eq? '%#quote _hd1363713773_)
                                (if (gx#stx-pair? _tl1363813775_)
                                    (let ((_e1363913778_
                                           (gx#stx-e _tl1363813775_)))
                                      (let ((_hd1364013781_
                                             (##car _e1363913778_))
                                            (_tl1364113783_
                                             (##cdr _e1363913778_)))
                                        (if (gx#stx-null? _tl1364113783_)
                                            (if (gx#stx-null? _tl1363513767_)
                                                ((lambda (_L13786_
                                                          _L13787_
                                                          _L13788_
                                                          _L13789_
                                                          _L13790_
                                                          _L13791_)
                                                   (let* ((_super-t13837_
                                                           (if (gx#stx-e
                                                                _L13790_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L13790_)
                                                               '#f))
                                                          (_super-type13839_
                                                           (if _super-t13837_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t13837_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type13839_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type13839_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx13528_
                    _L13790_)
                   '#!void)
               (let ((_fields13855_ (gx#stx-e _L13789_))
                     (_xfields13856_
                      (if _super-type13839_
                          (let ((_super-fields1384113844_
                                 (##structure-ref
                                  _super-type13839_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1384213846_
                                 (##structure-ref
                                  _super-type13839_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1384113844_
                                (if _super-xfields1384213846_
                                    (let ((_super-fields13849_
                                           _super-fields1384113844_)
                                          (_super-xfields13850_
                                           _super-xfields1384213846_))
                                      (fx+ _super-fields13849_
                                           _super-xfields13850_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist13857_ (gx#stx-e _L13787_))
                     (_ctor13858_
                      (let ((_$e13852_ (gx#stx-e _L13786_)))
                        (if _$e13852_
                            (values _$e13852_)
                            (if _super-type13839_
                                (##structure-ref
                                 _super-type13839_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t13837_ '#!void '#f))))))
                 (let ((__obj20396 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj20396
                      (gx#stx-e _L13791_)
                      _super-t13837_
                      _fields13855_
                      _xfields13856_
                      _ctor13858_
                      _plist13857_)
                     __obj20396))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1364013781_
                                                 _hd1363113757_
                                                 _hd1362213733_
                                                 _hd1361913725_
                                                 _hd1361013701_
                                                 _hd1360113677_)
                                                (_g1353213653_ _g1353413656_))
                                            (_g1353213653_ _g1353413656_))))
                                    (_g1353213653_ _g1353413656_))
                                (_g1353213653_ _g1353413656_))
                            (_g1353213653_ _g1353413656_))))
                    (_g1353213653_ _g1353413656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353213653_
                                                     _g1353413656_))
                                                (_g1353213653_
                                                 _g1353413656_))))
                                        (_g1353213653_ _g1353413656_))
                                    (_g1353213653_ _g1353413656_))
                                (_g1353213653_ _g1353413656_))))
                        (_g1353213653_ _g1353413656_))))
                (_g1353213653_ _g1353413656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1353213653_ _g1353413656_))
                                            (_g1353213653_ _g1353413656_))))
                                    (_g1353213653_ _g1353413656_))
                                (_g1353213653_ _g1353413656_))
                            (_g1353213653_ _g1353413656_))))
                    (_g1353213653_ _g1353413656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353213653_
                                                     _g1353413656_))
                                                (_g1353213653_
                                                 _g1353413656_))))
                                        (_g1353213653_ _g1353413656_))
                                    (_g1353213653_ _g1353413656_))
                                (_g1353213653_ _g1353413656_))))
                        (_g1353213653_ _g1353413656_))))
                (_g1353213653_ _g1353413656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353213653_
                                                     _g1353413656_))))
                                            (_g1353213653_ _g1353413656_))
                                        (_g1353213653_ _g1353413656_))
                                    (_g1353213653_ _g1353413656_))))
                            (_g1353213653_ _g1353413656_))))
                    (_g1353213653_ _g1353413656_))))
             (_g1353014040_
              (lambda (_g1353413863_)
                (if (gx#stx-pair? _g1353413863_)
                    (let ((_e1354013865_ (gx#stx-e _g1353413863_)))
                      (let ((_hd1354113868_ (##car _e1354013865_))
                            (_tl1354213870_ (##cdr _e1354013865_)))
                        (if (gx#stx-pair? _hd1354113868_)
                            (let ((_e1354313873_ (gx#stx-e _hd1354113868_)))
                              (let ((_hd1354413876_ (##car _e1354313873_))
                                    (_tl1354513878_ (##cdr _e1354313873_)))
                                (if (gx#identifier? _hd1354413876_)
                                    (if (gx#stx-eq? '%#quote _hd1354413876_)
                                        (if (gx#stx-pair? _tl1354513878_)
                                            (let ((_e1354613881_
                                                   (gx#stx-e _tl1354513878_)))
                                              (let ((_hd1354713884_
                                                     (##car _e1354613881_))
                                                    (_tl1354813886_
                                                     (##cdr _e1354613881_)))
                                                (if (gx#stx-null?
                                                     _tl1354813886_)
                                                    (if (gx#stx-pair?
                                                         _tl1354213870_)
                                                        (let ((_e1354913889_
                                                               (gx#stx-e
                                                                _tl1354213870_)))
                                                          (let ((_hd1355013892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1354913889_))
                        (_tl1355113894_ (##cdr _e1354913889_)))
                    (if (gx#stx-pair? _hd1355013892_)
                        (let ((_e1355213897_ (gx#stx-e _hd1355013892_)))
                          (let ((_hd1355313900_ (##car _e1355213897_))
                                (_tl1355413902_ (##cdr _e1355213897_)))
                            (if (gx#identifier? _hd1355313900_)
                                (if (gx#stx-eq? '%#quote _hd1355313900_)
                                    (if (gx#stx-pair? _tl1355413902_)
                                        (let ((_e1355513905_
                                               (gx#stx-e _tl1355413902_)))
                                          (let ((_hd1355613908_
                                                 (##car _e1355513905_))
                                                (_tl1355713910_
                                                 (##cdr _e1355513905_)))
                                            (if (gx#stx-datum? _hd1355613908_)
                                                (if (equal? (gx#stx-e
                                                             _hd1355613908_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1355713910_)
                                                        (if (gx#stx-pair?
                                                             _tl1355113894_)
                                                            (let ((_e1355813913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1355113894_)))
                      (let ((_hd1355913916_ (##car _e1355813913_))
                            (_tl1356013918_ (##cdr _e1355813913_)))
                        (if (gx#stx-pair? _hd1355913916_)
                            (let ((_e1356113921_ (gx#stx-e _hd1355913916_)))
                              (let ((_hd1356213924_ (##car _e1356113921_))
                                    (_tl1356313926_ (##cdr _e1356113921_)))
                                (if (gx#identifier? _hd1356213924_)
                                    (if (gx#stx-eq? '%#quote _hd1356213924_)
                                        (if (gx#stx-pair? _tl1356313926_)
                                            (let ((_e1356413929_
                                                   (gx#stx-e _tl1356313926_)))
                                              (let ((_hd1356513932_
                                                     (##car _e1356413929_))
                                                    (_tl1356613934_
                                                     (##cdr _e1356413929_)))
                                                (if (gx#stx-null?
                                                     _tl1356613934_)
                                                    (if (gx#stx-pair?
                                                         _tl1356013918_)
                                                        (let ((_e1356713937_
                                                               (gx#stx-e
                                                                _tl1356013918_)))
                                                          (let ((_hd1356813940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1356713937_))
                        (_tl1356913942_ (##cdr _e1356713937_)))
                    (if (gx#stx-pair? _tl1356913942_)
                        (let ((_e1357013945_ (gx#stx-e _tl1356913942_)))
                          (let ((_hd1357113948_ (##car _e1357013945_))
                                (_tl1357213950_ (##cdr _e1357013945_)))
                            (if (gx#stx-pair? _hd1357113948_)
                                (let ((_e1357313953_
                                       (gx#stx-e _hd1357113948_)))
                                  (let ((_hd1357413956_ (##car _e1357313953_))
                                        (_tl1357513958_ (##cdr _e1357313953_)))
                                    (if (gx#identifier? _hd1357413956_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1357413956_)
                                            (if (gx#stx-pair? _tl1357513958_)
                                                (let ((_e1357613961_
                                                       (gx#stx-e
                                                        _tl1357513958_)))
                                                  (let ((_hd1357713964_
                                                         (##car _e1357613961_))
                                                        (_tl1357813966_
                                                         (##cdr _e1357613961_)))
                                                    (if (gx#stx-null?
                                                         _tl1357813966_)
                                                        (if (gx#stx-pair?
                                                             _tl1357213950_)
                                                            (let ((_e1357913969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1357213950_)))
                      (let ((_hd1358013972_ (##car _e1357913969_))
                            (_tl1358113974_ (##cdr _e1357913969_)))
                        (if (gx#stx-pair? _hd1358013972_)
                            (let ((_e1358213977_ (gx#stx-e _hd1358013972_)))
                              (let ((_hd1358313980_ (##car _e1358213977_))
                                    (_tl1358413982_ (##cdr _e1358213977_)))
                                (if (gx#identifier? _hd1358313980_)
                                    (if (gx#stx-eq? '%#quote _hd1358313980_)
                                        (if (gx#stx-pair? _tl1358413982_)
                                            (let ((_e1358513985_
                                                   (gx#stx-e _tl1358413982_)))
                                              (let ((_hd1358613988_
                                                     (##car _e1358513985_))
                                                    (_tl1358713990_
                                                     (##cdr _e1358513985_)))
                                                (if (gx#stx-null?
                                                     _tl1358713990_)
                                                    (if (gx#stx-null?
                                                         _tl1358113974_)
                                                        ((lambda (_L13993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13994_
                          _L13995_
                          _L13996_
                          _L13997_)
                   (let ((__obj20397 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj20397
                        (gx#stx-e _L13997_)
                        '#f
                        (gx#stx-e _L13996_)
                        '0
                        (gx#stx-e _L13993_)
                        (gx#stx-e _L13994_))
                       __obj20397)))
                 _hd1358613988_
                 _hd1357713964_
                 _hd1356813940_
                 _hd1356513932_
                 _hd1354713884_)
                (_g1353113860_ _g1353413863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353113860_
                                                     _g1353413863_))))
                                            (_g1353113860_ _g1353413863_))
                                        (_g1353113860_ _g1353413863_))
                                    (_g1353113860_ _g1353413863_))))
                            (_g1353113860_ _g1353413863_))))
                    (_g1353113860_ _g1353413863_))
                (_g1353113860_ _g1353413863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1353113860_ _g1353413863_))
                                            (_g1353113860_ _g1353413863_))
                                        (_g1353113860_ _g1353413863_))))
                                (_g1353113860_ _g1353413863_))))
                        (_g1353113860_ _g1353413863_))))
                (_g1353113860_ _g1353413863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353113860_
                                                     _g1353413863_))))
                                            (_g1353113860_ _g1353413863_))
                                        (_g1353113860_ _g1353413863_))
                                    (_g1353113860_ _g1353413863_))))
                            (_g1353113860_ _g1353413863_))))
                    (_g1353113860_ _g1353413863_))
                (_g1353113860_ _g1353413863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353113860_
                                                     _g1353413863_))
                                                (_g1353113860_
                                                 _g1353413863_))))
                                        (_g1353113860_ _g1353413863_))
                                    (_g1353113860_ _g1353413863_))
                                (_g1353113860_ _g1353413863_))))
                        (_g1353113860_ _g1353413863_))))
                (_g1353113860_ _g1353413863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1353113860_
                                                     _g1353413863_))))
                                            (_g1353113860_ _g1353413863_))
                                        (_g1353113860_ _g1353413863_))
                                    (_g1353113860_ _g1353413863_))))
                            (_g1353113860_ _g1353413863_))))
                    (_g1353113860_ _g1353413863_)))))
        (_g1353014040_ _args13529_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13454_ _args13455_)
      (let* ((_g1345813474_
              (lambda (_g1345913471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1345913471_)))
             (_g1345713481_ (lambda (_g1345913477_) ((lambda () '#f))))
             (_g1345613525_
              (lambda (_g1345913484_)
                (if (gx#stx-pair? _g1345913484_)
                    (let ((_e1346113486_ (gx#stx-e _g1345913484_)))
                      (let ((_hd1346213489_ (##car _e1346113486_))
                            (_tl1346313491_ (##cdr _e1346113486_)))
                        (if (gx#stx-pair? _hd1346213489_)
                            (let ((_e1346413494_ (gx#stx-e _hd1346213489_)))
                              (let ((_hd1346513497_ (##car _e1346413494_))
                                    (_tl1346613499_ (##cdr _e1346413494_)))
                                (if (gx#identifier? _hd1346513497_)
                                    (if (gx#stx-eq? '%#ref _hd1346513497_)
                                        (if (gx#stx-pair? _tl1346613499_)
                                            (let ((_e1346713502_
                                                   (gx#stx-e _tl1346613499_)))
                                              (let ((_hd1346813505_
                                                     (##car _e1346713502_))
                                                    (_tl1346913507_
                                                     (##cdr _e1346713502_)))
                                                (if (gx#stx-null?
                                                     _tl1346913507_)
                                                    (if (gx#stx-null?
                                                         _tl1346313491_)
                                                        ((lambda (_L13510_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L13510_)))
                                                         _hd1346813505_)
                                                        (_g1345713481_
                                                         _g1345913484_))
                                                    (_g1345713481_
                                                     _g1345913484_))))
                                            (_g1345713481_ _g1345913484_))
                                        (_g1345713481_ _g1345913484_))
                                    (_g1345713481_ _g1345913484_))))
                            (_g1345713481_ _g1345913484_))))
                    (_g1345713481_ _g1345913484_)))))
        (_g1345613525_ _args13455_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13323
      (lambda (_stx13325_ _args13326_ _unchecked?13327_)
        (let* ((_g1333013356_
                (lambda (_g1333113353_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1333113353_)))
               (_g1332913363_ (lambda (_g1333113359_) ((lambda () '#f))))
               (_g1332813439_
                (lambda (_g1333113366_)
                  (if (gx#stx-pair? _g1333113366_)
                      (let ((_e1333413368_ (gx#stx-e _g1333113366_)))
                        (let ((_hd1333513371_ (##car _e1333413368_))
                              (_tl1333613373_ (##cdr _e1333413368_)))
                          (if (gx#stx-pair? _hd1333513371_)
                              (let ((_e1333713376_ (gx#stx-e _hd1333513371_)))
                                (let ((_hd1333813379_ (##car _e1333713376_))
                                      (_tl1333913381_ (##cdr _e1333713376_)))
                                  (if (gx#identifier? _hd1333813379_)
                                      (if (gx#stx-eq? '%#ref _hd1333813379_)
                                          (if (gx#stx-pair? _tl1333913381_)
                                              (let ((_e1334013384_
                                                     (gx#stx-e
                                                      _tl1333913381_)))
                                                (let ((_hd1334113387_
                                                       (##car _e1334013384_))
                                                      (_tl1334213389_
                                                       (##cdr _e1334013384_)))
                                                  (if (gx#stx-null?
                                                       _tl1334213389_)
                                                      (if (gx#stx-pair?
                                                           _tl1333613373_)
                                                          (let ((_e1334313392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1333613373_)))
                    (let ((_hd1334413395_ (##car _e1334313392_))
                          (_tl1334513397_ (##cdr _e1334313392_)))
                      (if (gx#stx-pair? _hd1334413395_)
                          (let ((_e1334613400_ (gx#stx-e _hd1334413395_)))
                            (let ((_hd1334713403_ (##car _e1334613400_))
                                  (_tl1334813405_ (##cdr _e1334613400_)))
                              (if (gx#identifier? _hd1334713403_)
                                  (if (gx#stx-eq? '%#quote _hd1334713403_)
                                      (if (gx#stx-pair? _tl1334813405_)
                                          (let ((_e1334913408_
                                                 (gx#stx-e _tl1334813405_)))
                                            (let ((_hd1335013411_
                                                   (##car _e1334913408_))
                                                  (_tl1335113413_
                                                   (##cdr _e1334913408_)))
                                              (if (gx#stx-null? _tl1335113413_)
                                                  (if (gx#stx-null?
                                                       _tl1334513397_)
                                                      ((lambda (_L13416_
                                                                _L13417_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13417_)
                                                          (gx#stx-e _L13416_)
                                                          _unchecked?13327_))
                                                       _hd1335013411_
                                                       _hd1334113387_)
                                                      (_g1332913363_
                                                       _g1333113366_))
                                                  (_g1332913363_
                                                   _g1333113366_))))
                                          (_g1332913363_ _g1333113366_))
                                      (_g1332913363_ _g1333113366_))
                                  (_g1332913363_ _g1333113366_))))
                          (_g1332913363_ _g1333113366_))))
                  (_g1332913363_ _g1333113366_))
              (_g1332913363_ _g1333113366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1332913363_ _g1333113366_))
                                          (_g1332913363_ _g1333113366_))
                                      (_g1332913363_ _g1333113366_))))
                              (_g1332913363_ _g1333113366_))))
                      (_g1332913363_ _g1333113366_)))))
          (_g1332813439_ _args13326_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13445_ _args13446_)
          (let ((_unchecked?13448_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13323
             _stx13445_
             _args13446_
             _unchecked?13448_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20461_
          (let ((_g20460_ (length _g20461_)))
            (cond ((fx= _g20460_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20461_))
                  ((fx= _g20460_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13323
                          _g20461_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20461_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13193
      (lambda (_stx13195_ _args13196_ _unchecked?13197_)
        (let* ((_g1320013226_
                (lambda (_g1320113223_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1320113223_)))
               (_g1319913233_ (lambda (_g1320113229_) ((lambda () '#f))))
               (_g1319813309_
                (lambda (_g1320113236_)
                  (if (gx#stx-pair? _g1320113236_)
                      (let ((_e1320413238_ (gx#stx-e _g1320113236_)))
                        (let ((_hd1320513241_ (##car _e1320413238_))
                              (_tl1320613243_ (##cdr _e1320413238_)))
                          (if (gx#stx-pair? _hd1320513241_)
                              (let ((_e1320713246_ (gx#stx-e _hd1320513241_)))
                                (let ((_hd1320813249_ (##car _e1320713246_))
                                      (_tl1320913251_ (##cdr _e1320713246_)))
                                  (if (gx#identifier? _hd1320813249_)
                                      (if (gx#stx-eq? '%#ref _hd1320813249_)
                                          (if (gx#stx-pair? _tl1320913251_)
                                              (let ((_e1321013254_
                                                     (gx#stx-e
                                                      _tl1320913251_)))
                                                (let ((_hd1321113257_
                                                       (##car _e1321013254_))
                                                      (_tl1321213259_
                                                       (##cdr _e1321013254_)))
                                                  (if (gx#stx-null?
                                                       _tl1321213259_)
                                                      (if (gx#stx-pair?
                                                           _tl1320613243_)
                                                          (let ((_e1321313262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1320613243_)))
                    (let ((_hd1321413265_ (##car _e1321313262_))
                          (_tl1321513267_ (##cdr _e1321313262_)))
                      (if (gx#stx-pair? _hd1321413265_)
                          (let ((_e1321613270_ (gx#stx-e _hd1321413265_)))
                            (let ((_hd1321713273_ (##car _e1321613270_))
                                  (_tl1321813275_ (##cdr _e1321613270_)))
                              (if (gx#identifier? _hd1321713273_)
                                  (if (gx#stx-eq? '%#quote _hd1321713273_)
                                      (if (gx#stx-pair? _tl1321813275_)
                                          (let ((_e1321913278_
                                                 (gx#stx-e _tl1321813275_)))
                                            (let ((_hd1322013281_
                                                   (##car _e1321913278_))
                                                  (_tl1322113283_
                                                   (##cdr _e1321913278_)))
                                              (if (gx#stx-null? _tl1322113283_)
                                                  (if (gx#stx-null?
                                                       _tl1321513267_)
                                                      ((lambda (_L13286_
                                                                _L13287_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13287_)
                                                          (gx#stx-e _L13286_)
                                                          _unchecked?13197_))
                                                       _hd1322013281_
                                                       _hd1321113257_)
                                                      (_g1319913233_
                                                       _g1320113236_))
                                                  (_g1319913233_
                                                   _g1320113236_))))
                                          (_g1319913233_ _g1320113236_))
                                      (_g1319913233_ _g1320113236_))
                                  (_g1319913233_ _g1320113236_))))
                          (_g1319913233_ _g1320113236_))))
                  (_g1319913233_ _g1320113236_))
              (_g1319913233_ _g1320113236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1319913233_ _g1320113236_))
                                          (_g1319913233_ _g1320113236_))
                                      (_g1319913233_ _g1320113236_))))
                              (_g1319913233_ _g1320113236_))))
                      (_g1319913233_ _g1320113236_)))))
          (_g1319813309_ _args13196_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx13315_ _args13316_)
          (let ((_unchecked?13318_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13193
             _stx13315_
             _args13316_
             _unchecked?13318_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20463_
          (let ((_g20462_ (length _g20463_)))
            (cond ((fx= _g20462_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20463_))
                  ((fx= _g20462_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13193
                          _g20463_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20463_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx13191_ _args13192_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13323
       _stx13191_
       _args13192_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx13188_ _args13189_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13193
       _stx13188_
       _args13189_
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
    (lambda (_stx13137_)
      (let* ((_g1313913152_
              (lambda (_g1314013149_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1314013149_)))
             (_g1313813185_
              (lambda (_g1314013155_)
                (if (gx#stx-pair? _g1314013155_)
                    (let ((_e1314213157_ (gx#stx-e _g1314013155_)))
                      (let ((_hd1314313160_ (##car _e1314213157_))
                            (_tl1314413162_ (##cdr _e1314213157_)))
                        (if (gx#stx-pair? _tl1314413162_)
                            (let ((_e1314513165_ (gx#stx-e _tl1314413162_)))
                              (let ((_hd1314613168_ (##car _e1314513165_))
                                    (_tl1314713170_ (##cdr _e1314513165_)))
                                (if (gx#stx-null? _tl1314713170_)
                                    ((lambda (_L13173_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L13173_)))
                                     _hd1314613168_)
                                    (_g1313913152_ _g1314013155_))))
                            (_g1313913152_ _g1314013155_))))
                    (_g1313913152_ _g1314013155_)))))
        (_g1313813185_ _stx13137_))))
  (define gxc#optimize-call%
    (lambda (_stx13043_)
      (let* ((_g1304613066_
              (lambda (_g1304713063_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1304713063_)))
             (_g1304513073_
              (lambda (_g1304713069_)
                ((lambda () (gxc#xform-call% _stx13043_)))))
             (_g1304413134_
              (lambda (_g1304713076_)
                (if (gx#stx-pair? _g1304713076_)
                    (let ((_e1305013078_ (gx#stx-e _g1304713076_)))
                      (let ((_hd1305113081_ (##car _e1305013078_))
                            (_tl1305213083_ (##cdr _e1305013078_)))
                        (if (gx#stx-pair? _tl1305213083_)
                            (let ((_e1305313086_ (gx#stx-e _tl1305213083_)))
                              (let ((_hd1305413089_ (##car _e1305313086_))
                                    (_tl1305513091_ (##cdr _e1305313086_)))
                                (if (gx#stx-pair? _hd1305413089_)
                                    (let ((_e1305613094_
                                           (gx#stx-e _hd1305413089_)))
                                      (let ((_hd1305713097_
                                             (##car _e1305613094_))
                                            (_tl1305813099_
                                             (##cdr _e1305613094_)))
                                        (if (gx#identifier? _hd1305713097_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1305713097_)
                                                (if (gx#stx-pair?
                                                     _tl1305813099_)
                                                    (let ((_e1305913102_
                                                           (gx#stx-e
                                                            _tl1305813099_)))
                                                      (let ((_hd1306013105_
                                                             (##car _e1305913102_))
                                                            (_tl1306113107_
                                                             (##cdr _e1305913102_)))
                                                        (if (gx#stx-null?
                                                             _tl1306113107_)
                                                            ((lambda (_L13110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L13111_)
                       (let* ((_rator-id13129_
                               (gxc#generate-runtime-binding-id _L13111_))
                              (_rator-type13131_
                               (gxc#optimizer-resolve-type _rator-id13129_)))
                         (if (##structure-instance-of?
                              _rator-type13131_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id13129_
                                '" => "
                                _rator-type13131_
                                '" "
                                (##structure-ref
                                 _rator-type13131_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type13131_
                                'optimize-call
                                _stx13043_
                                _L13110_))
                             (if (not _rator-type13131_)
                                 (gxc#xform-call% _stx13043_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx13043_
                                  _rator-type13131_)))))
                     _tl1305513091_
                     _hd1306013105_)
                    (_g1304513073_ _g1304713076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1304513073_
                                                     _g1304713076_))
                                                (_g1304513073_ _g1304713076_))
                                            (_g1304513073_ _g1304713076_))))
                                    (_g1304513073_ _g1304713076_))))
                            (_g1304513073_ _g1304713076_))))
                    (_g1304513073_ _g1304713076_)))))
        (_g1304413134_ _stx13043_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12898_ _stx12899_ _args12900_)
      (let* ((_self1290112907_ _self12898_)
             (_E1290312911_
              (lambda () (error '"No clause matching" _self1290112907_)))
             (_K1290413035_
              (lambda (_struct-t12914_)
                (let* ((_struct-type12916_
                        (gxc#optimizer-resolve-type _struct-t12914_))
                       (_struct-type1291712931_ _struct-type12916_)
                       (_E1292112935_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1291712931_)))
                       (_else1292012939_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12899_
                           _struct-t12914_
                           _struct-type12916_)))
                       (_try-match1291912947_
                        (lambda ()
                          (let ((_K1292212944_
                                 (lambda () (gxc#xform-call% _stx12899_))))
                            (if (##eq? _struct-type1291712931_ '#f)
                                (_K1292212944_)
                                (_else1292012939_)))))
                       (_K1292313010_
                        (lambda (_plist12950_ _struct-type-id12951_)
                          (let* ((_g1295412964_
                                  (lambda (_g1295512961_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1295512961_)))
                                 (_g1295312971_
                                  (lambda (_g1295512967_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx12899_)))))
                                 (_g1295213007_
                                  (lambda (_g1295512974_)
                                    (if (gx#stx-pair? _g1295512974_)
                                        (let ((_e1295712976_
                                               (gx#stx-e _g1295512974_)))
                                          (let ((_hd1295812979_
                                                 (##car _e1295712976_))
                                                (_tl1295912981_
                                                 (##cdr _e1295712976_)))
                                            (if (gx#stx-null? _tl1295912981_)
                                                ((lambda (_L12984_)
                                                   (let ((_expr13004_
                                                          (gxc#compile-e
                                                           _L12984_))
                                                         (_op13005_
                                                          (if (if _plist12950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist12950_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op13005_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id12951_ '()))
                          (cons _expr13004_ '())))
              _stx12899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1295812979_)
                                                (_g1295312971_
                                                 _g1295512974_))))
                                        (_g1295312971_ _g1295512974_)))))
                            (_g1295213007_ _args12900_)))))
                  (if (##structure-instance-of?
                       _struct-type1291712931_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1292413013_
                              (##vector-ref _struct-type1291712931_ '1))
                             (_struct-type-id13016_ _e1292413013_)
                             (_e1292513018_
                              (##vector-ref _struct-type1291712931_ '2))
                             (_e1292613021_
                              (##vector-ref _struct-type1291712931_ '3))
                             (_e1292713024_
                              (##vector-ref _struct-type1291712931_ '4))
                             (_e1292813027_
                              (##vector-ref _struct-type1291712931_ '5))
                             (_e1292913030_
                              (##vector-ref _struct-type1291712931_ '6))
                             (_plist13033_ _e1292913030_))
                        (_K1292313010_ _plist13033_ _struct-type-id13016_))
                      (_try-match1291912947_))))))
        (if (##structure-instance-of?
             _self1290112907_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1290513038_ (##vector-ref _self1290112907_ '1))
                   (_struct-t13041_ _e1290513038_))
              (_K1290413035_ _struct-t13041_))
            (_E1290312911_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12794_ _stx12795_ _args12796_)
      (let* ((_self1279712803_ _self12794_)
             (_E1279912807_
              (lambda () (error '"No clause matching" _self1279712803_)))
             (_K1280012890_
              (lambda (_struct-t12810_)
                (let* ((_struct-type12812_
                        (gxc#optimizer-resolve-type _struct-t12810_))
                       (_struct-type1281312826_ _struct-type12812_)
                       (_E1281712830_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1281312826_)))
                       (_else1281612834_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx12795_
                           _struct-t12810_
                           _struct-type12812_)))
                       (_try-match1281512842_
                        (lambda ()
                          (let ((_K1281812839_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t12810_)
                                     (gxc#xform-call% _stx12795_)))))
                            (if (##eq? _struct-type1281312826_ '#f)
                                (_K1281812839_)
                                (_else1281612834_)))))
                       (_K1281912864_
                        (lambda (_ctor12845_
                                 _xfields12846_
                                 _fields12847_
                                 _type-id12848_)
                          (let* ((_args12850_ (map gxc#compile-e _args12796_))
                                 (_$e12852_
                                  (if _ctor12845_
                                      (if _xfields12846_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type12812_
                                           _ctor12845_)
                                          '#f)
                                      '#f)))
                            (if _$e12852_
                                ((lambda (_kons12855_)
                                   (let ((_$obj12857_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj12857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t12810_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields12847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields12846_)
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
                                    (cons (cons '%#ref (cons _kons12855_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj12857_ '()))
                                                _args12850_)))
                              _stx12795_))
                            (cons (cons '%#ref (cons _$obj12857_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx12795_)))
                                 _$e12852_)
                                (if (let ((_$e12859_ _ctor12845_))
                                      (if _$e12859_
                                          _$e12859_
                                          (not _xfields12846_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t12810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args12850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx12795_)
                                    (let ((_arity12862_
                                           (fx+ _fields12847_ _xfields12846_)))
                                      (if (fx= _arity12862_
                                               (length _args12850_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t12810_ '())) _args12850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx12795_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx12795_
                                           _struct-t12810_
                                           _arity12862_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1281312826_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1282012867_
                              (##vector-ref _struct-type1281312826_ '1))
                             (_type-id12870_ _e1282012867_)
                             (_e1282112872_
                              (##vector-ref _struct-type1281312826_ '2))
                             (_e1282212875_
                              (##vector-ref _struct-type1281312826_ '3))
                             (_fields12878_ _e1282212875_)
                             (_e1282312880_
                              (##vector-ref _struct-type1281312826_ '4))
                             (_xfields12883_ _e1282312880_)
                             (_e1282412885_
                              (##vector-ref _struct-type1281312826_ '5))
                             (_ctor12888_ _e1282412885_))
                        (_K1281912864_
                         _ctor12888_
                         _xfields12883_
                         _fields12878_
                         _type-id12870_))
                      (_try-match1281512842_))))))
        (if (##structure-instance-of?
             _self1279712803_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1280112893_ (##vector-ref _self1279712803_ '1))
                   (_struct-t12896_ _e1280112893_))
              (_K1280012890_ _struct-t12896_))
            (_E1279912807_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12628_ _stx12629_ _args12630_)
      (let* ((_self1263112639_ _self12628_)
             (_E1263312643_
              (lambda () (error '"No clause matching" _self1263112639_)))
             (_K1263412776_
              (lambda (_unchecked?12646_ _off12647_ _struct-t12648_)
                (let* ((_struct-type12650_
                        (gxc#optimizer-resolve-type _struct-t12648_))
                       (_struct-type1265112665_ _struct-type12650_)
                       (_E1265512669_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1265112665_)))
                       (_else1265412673_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12629_
                           _struct-t12648_
                           _struct-type12650_)))
                       (_try-match1265312681_
                        (lambda ()
                          (let ((_K1265612678_
                                 (lambda () (gxc#xform-call% _stx12629_))))
                            (if (##eq? _struct-type1265112665_ '#f)
                                (_K1265612678_)
                                (_else1265412673_)))))
                       (_K1265712747_
                        (lambda (_plist12684_
                                 _xfields12685_
                                 _fields12686_
                                 _struct-type-id12687_)
                          (if _xfields12685_
                              (let* ((_g1269012700_
                                      (lambda (_g1269112697_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1269112697_)))
                                     (_g1268912707_
                                      (lambda (_g1269112703_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx12629_)))))
                                     (_g1268812744_
                                      (lambda (_g1269112710_)
                                        (if (gx#stx-pair? _g1269112710_)
                                            (let ((_e1269312712_
                                                   (gx#stx-e _g1269112710_)))
                                              (let ((_hd1269412715_
                                                     (##car _e1269312712_))
                                                    (_tl1269512717_
                                                     (##cdr _e1269312712_)))
                                                (if (gx#stx-null?
                                                     _tl1269512717_)
                                                    ((lambda (_L12720_)
                                                       (let ((_expr12740_
                                                              (gxc#compile-e
                                                               _L12720_))
                                                             (_off12741_
                                                              (fx+ _off12647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields12685_
                           '1))
                     (_op12742_
                      (if _unchecked?12646_
                          '%#struct-unchecked-ref
                          (if (if _plist12684_
                                  (assgetq 'final: _plist12684_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op12742_
                        (cons (cons '%#ref (cons _struct-t12648_ '()))
                              (cons (cons '%#quote (cons _off12741_ '()))
                                    (cons _expr12740_ '()))))
                  _stx12629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1269412715_)
                                                    (_g1268912707_
                                                     _g1269112710_))))
                                            (_g1268912707_ _g1269112710_)))))
                                (_g1268812744_ _args12630_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id12687_)
                                (gxc#xform-call% _stx12629_))))))
                  (if (##structure-instance-of?
                       _struct-type1265112665_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1265812750_
                              (##vector-ref _struct-type1265112665_ '1))
                             (_struct-type-id12753_ _e1265812750_)
                             (_e1265912755_
                              (##vector-ref _struct-type1265112665_ '2))
                             (_e1266012758_
                              (##vector-ref _struct-type1265112665_ '3))
                             (_fields12761_ _e1266012758_)
                             (_e1266112763_
                              (##vector-ref _struct-type1265112665_ '4))
                             (_xfields12766_ _e1266112763_)
                             (_e1266212768_
                              (##vector-ref _struct-type1265112665_ '5))
                             (_e1266312771_
                              (##vector-ref _struct-type1265112665_ '6))
                             (_plist12774_ _e1266312771_))
                        (_K1265712747_
                         _plist12774_
                         _xfields12766_
                         _fields12761_
                         _struct-type-id12753_))
                      (_try-match1265312681_))))))
        (if (##structure-instance-of?
             _self1263112639_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1263512779_ (##vector-ref _self1263112639_ '1))
                   (_struct-t12782_ _e1263512779_)
                   (_e1263612784_ (##vector-ref _self1263112639_ '2))
                   (_off12787_ _e1263612784_)
                   (_e1263712789_ (##vector-ref _self1263112639_ '3))
                   (_unchecked?12792_ _e1263712789_))
              (_K1263412776_ _unchecked?12792_ _off12787_ _struct-t12782_))
            (_E1263312643_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12445_ _stx12446_ _args12447_)
      (let* ((_self1244812456_ _self12445_)
             (_E1245012460_
              (lambda () (error '"No clause matching" _self1244812456_)))
             (_K1245112610_
              (lambda (_unchecked?12463_ _off12464_ _struct-t12465_)
                (let* ((_struct-type12467_
                        (gxc#optimizer-resolve-type _struct-t12465_))
                       (_struct-type1246812482_ _struct-type12467_)
                       (_E1247212486_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1246812482_)))
                       (_else1247112490_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12446_
                           _struct-t12465_
                           _struct-type12467_)))
                       (_try-match1247012498_
                        (lambda ()
                          (let ((_K1247312495_
                                 (lambda () (gxc#xform-call% _stx12446_))))
                            (if (##eq? _struct-type1246812482_ '#f)
                                (_K1247312495_)
                                (_else1247112490_)))))
                       (_K1247412581_
                        (lambda (_plist12501_
                                 _xfields12502_
                                 _fields12503_
                                 _struct-type-id12504_)
                          (if _xfields12502_
                              (let* ((_g1250712521_
                                      (lambda (_g1250812518_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1250812518_)))
                                     (_g1250612528_
                                      (lambda (_g1250812524_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx12446_)))))
                                     (_g1250512578_
                                      (lambda (_g1250812531_)
                                        (if (gx#stx-pair? _g1250812531_)
                                            (let ((_e1251112533_
                                                   (gx#stx-e _g1250812531_)))
                                              (let ((_hd1251212536_
                                                     (##car _e1251112533_))
                                                    (_tl1251312538_
                                                     (##cdr _e1251112533_)))
                                                (if (gx#stx-pair?
                                                     _tl1251312538_)
                                                    (let ((_e1251412541_
                                                           (gx#stx-e
                                                            _tl1251312538_)))
                                                      (let ((_hd1251512544_
                                                             (##car _e1251412541_))
                                                            (_tl1251612546_
                                                             (##cdr _e1251412541_)))
                                                        (if (gx#stx-null?
                                                             _tl1251612546_)
                                                            ((lambda (_L12549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L12550_)
                       (let ((_expr12573_ (gxc#compile-e _L12550_))
                             (_val12574_ (gxc#compile-e _L12549_))
                             (_off12575_ (fx+ _off12464_ _xfields12502_ '1))
                             (_op12576_
                              (if _unchecked?12463_
                                  '%#struct-unchecked-set!
                                  (if (if _plist12501_
                                          (assgetq 'final: _plist12501_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op12576_
                                (cons (cons '%#ref (cons _struct-t12465_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off12575_ '()))
                                            (cons _expr12573_
                                                  (cons _val12574_ '())))))
                          _stx12446_)))
                     _hd1251512544_
                     _hd1251212536_)
                    (_g1250612528_ _g1250812531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1250612528_
                                                     _g1250812531_))))
                                            (_g1250612528_ _g1250812531_)))))
                                (_g1250512578_ _args12447_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id12504_)
                                (gxc#xform-call% _stx12446_))))))
                  (if (##structure-instance-of?
                       _struct-type1246812482_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1247512584_
                              (##vector-ref _struct-type1246812482_ '1))
                             (_struct-type-id12587_ _e1247512584_)
                             (_e1247612589_
                              (##vector-ref _struct-type1246812482_ '2))
                             (_e1247712592_
                              (##vector-ref _struct-type1246812482_ '3))
                             (_fields12595_ _e1247712592_)
                             (_e1247812597_
                              (##vector-ref _struct-type1246812482_ '4))
                             (_xfields12600_ _e1247812597_)
                             (_e1247912602_
                              (##vector-ref _struct-type1246812482_ '5))
                             (_e1248012605_
                              (##vector-ref _struct-type1246812482_ '6))
                             (_plist12608_ _e1248012605_))
                        (_K1247412581_
                         _plist12608_
                         _xfields12600_
                         _fields12595_
                         _struct-type-id12587_))
                      (_try-match1247012498_))))))
        (if (##structure-instance-of?
             _self1244812456_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1245212613_ (##vector-ref _self1244812456_ '1))
                   (_struct-t12616_ _e1245212613_)
                   (_e1245312618_ (##vector-ref _self1244812456_ '2))
                   (_off12621_ _e1245312618_)
                   (_e1245412623_ (##vector-ref _self1244812456_ '3))
                   (_unchecked?12626_ _e1245412623_))
              (_K1245112610_ _unchecked?12626_ _off12621_ _struct-t12616_))
            (_E1245012460_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self12401_ _stx12402_ _args12403_)
      (let* ((_self1240412413_ _self12401_)
             (_E1240612417_
              (lambda () (error '"No clause matching" _self1240412413_)))
             (_K1240712424_
              (lambda (_inline12420_ _dispatch12421_ _arity12422_)
                (begin
                  (if (gxc#!lambda-arity-match? _self12401_ _args12403_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx12402_
                       _arity12422_))
                  (if _inline12420_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline12420_ _stx12402_)
                          _stx12402_)))
                      (if _dispatch12421_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch12421_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch12421_ '()))
                                          _args12403_))
                              _stx12402_)))
                          (gxc#xform-call% _stx12402_)))))))
        (if (##structure-instance-of?
             _self1240412413_
             (##type-id gxc#!lambda::t))
            (let* ((_e1240812427_ (##vector-ref _self1240412413_ '1))
                   (_e1240912430_ (##vector-ref _self1240412413_ '2))
                   (_arity12433_ _e1240912430_)
                   (_e1241012435_ (##vector-ref _self1240412413_ '3))
                   (_dispatch12438_ _e1241012435_)
                   (_e1241112440_ (##vector-ref _self1240412413_ '4))
                   (_inline12443_ _e1241112440_))
              (_K1240712424_ _inline12443_ _dispatch12438_ _arity12433_))
            (_E1240612417_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self12362_ _stx12363_ _args12364_)
      (let* ((_self1236512372_ _self12362_)
             (_E1236712376_
              (lambda () (error '"No clause matching" _self1236512372_)))
             (_K1236812390_
              (lambda (_clauses12379_)
                (let ((_$e12385_
                       (find (lambda (_g1238012382_)
                               (gxc#!lambda-arity-match?
                                _g1238012382_
                                _args12364_))
                             _clauses12379_)))
                  (if _$e12385_
                      ((lambda (_clause12388_)
                         (call-method
                          _clause12388_
                          'optimize-call
                          _stx12363_
                          _args12364_))
                       _$e12385_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx12363_
                       (map gxc#!lambda-arity _clauses12379_)))))))
        (if (##structure-instance-of?
             _self1236512372_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1236912393_ (##vector-ref _self1236512372_ '1))
                   (_e1237012396_ (##vector-ref _self1236512372_ '2))
                   (_clauses12399_ _e1237012396_))
              (_K1236812390_ _clauses12399_))
            (_E1236712376_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self12298_ _args12299_)
      (let* ((_self1230012307_ _self12298_)
             (_E1230212311_
              (lambda () (error '"No clause matching" _self1230012307_)))
             (_K1230312351_
              (lambda (_arity12314_)
                (let* ((_arity1231512324_ _arity12314_)
                       (_E1231812328_
                        (lambda ()
                          (error '"No clause matching" _arity1231512324_)))
                       (_try-match1231712344_
                        (lambda ()
                          (let ((_K1231912334_
                                 (lambda (_arity12332_)
                                   (fx>= (length _args12299_) _arity12332_))))
                            (if (##pair? _arity1231512324_)
                                (let ((_hd1232012337_
                                       (##car _arity1231512324_))
                                      (_tl1232112339_
                                       (##cdr _arity1231512324_)))
                                  (let ((_arity12342_ _hd1232012337_))
                                    (if (##null? _tl1232112339_)
                                        (_K1231912334_ _arity12342_)
                                        (_E1231812328_))))
                                (_E1231812328_)))))
                       (_K1232212348_
                        (lambda () (fx= (length _args12299_) _arity12314_))))
                  (if (fixnum? _arity1231512324_)
                      (_K1232212348_)
                      (_try-match1231712344_))))))
        (if (##structure-instance-of?
             _self1230012307_
             (##type-id gxc#!lambda::t))
            (let* ((_e1230412354_ (##vector-ref _self1230012307_ '1))
                   (_e1230512357_ (##vector-ref _self1230012307_ '2))
                   (_arity12360_ _e1230512357_))
              (_K1230312351_ _arity12360_))
            (_E1230212311_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx12238_)
      (let* ((_g1224012254_
              (lambda (_g1224112251_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1224112251_)))
             (_g1223912295_
              (lambda (_g1224112257_)
                (if (gx#stx-pair? _g1224112257_)
                    (let ((_e1224412259_ (gx#stx-e _g1224112257_)))
                      (let ((_hd1224512262_ (##car _e1224412259_))
                            (_tl1224612264_ (##cdr _e1224412259_)))
                        (if (gx#stx-pair? _tl1224612264_)
                            (let ((_e1224712267_ (gx#stx-e _tl1224612264_)))
                              (let ((_hd1224812270_ (##car _e1224712267_))
                                    (_tl1224912272_ (##cdr _e1224712267_)))
                                ((lambda (_L12275_ _L12276_)
                                   (let* ((_ctx12289_
                                           (gx#syntax-local-e__0 _L12276_))
                                          (_code12291_
                                           (##structure-ref
                                            _ctx12289_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code12291_))
                                      gx#current-expander-context
                                      _ctx12289_)))
                                 _tl1224912272_
                                 _hd1224812270_)))
                            (_g1224012254_ _g1224112257_))))
                    (_g1224012254_ _g1224112257_)))))
        (_g1223912295_ _stx12238_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx12048_)
      (letrec ((_generate-e12050_
                (lambda (_id12227_)
                  (let* ((_sym12229_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id12227_)
                              '#f))
                         (_$e12231_
                          (if _sym12229_
                              (gxc#optimizer-lookup-type _sym12229_)
                              '#f)))
                    (if _$e12231_
                        ((lambda (_type12234_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym12229_)
                             (let ((_typedecl12236_
                                    (call-method _type12234_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym12229_
                                           (cons _typedecl12236_ '()))))))
                         _$e12231_)
                        '(begin))))))
        (let* ((_g1205312091_
                (lambda (_g1205412088_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1205412088_)))
               (_g1205212172_
                (lambda (_g1205412094_)
                  (if (gx#stx-pair? _g1205412094_)
                      (let ((_e1206912096_ (gx#stx-e _g1205412094_)))
                        (let ((_hd1207012099_ (##car _e1206912096_))
                              (_tl1207112101_ (##cdr _e1206912096_)))
                          (if (gx#stx-pair? _tl1207112101_)
                              (let ((_e1207212104_ (gx#stx-e _tl1207112101_)))
                                (let ((_hd1207312107_ (##car _e1207212104_))
                                      (_tl1207412109_ (##cdr _e1207212104_)))
                                  (if (gx#stx-pair/null? _hd1207312107_)
                                      (if (fx>= (gx#stx-length _hd1207312107_)
                                                '0)
                                          (let ((_g20464_
                                                 (gx#syntax-split-splice
                                                  _hd1207312107_
                                                  '0)))
                                            (begin
                                              (let ((_g20465_
                                                     (values-count _g20464_)))
                                                (if (not (fx= _g20465_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20465_)))
                                              (let ((_target1207512112_
                                                     (values-ref _g20464_ 0))
                                                    (_tl1207712114_
                                                     (values-ref _g20464_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1207712114_)
                                                    (letrec ((_loop1207812117_
                                                              (lambda (_hd1207612120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1208212122_)
                        (if (gx#stx-pair? _hd1207612120_)
                            (let ((_e1207912125_ (gx#stx-e _hd1207612120_)))
                              (let ((_lp-hd1208012128_ (##car _e1207912125_))
                                    (_lp-tl1208112130_ (##cdr _e1207912125_)))
                                (_loop1207812117_
                                 _lp-tl1208112130_
                                 (cons _lp-hd1208012128_ _id1208212122_))))
                            (let ((_id1208312133_ (reverse _id1208212122_)))
                              (if (gx#stx-pair? _tl1207412109_)
                                  (let ((_e1208412136_
                                         (gx#stx-e _tl1207412109_)))
                                    (let ((_hd1208512139_
                                           (##car _e1208412136_))
                                          (_tl1208612141_
                                           (##cdr _e1208412136_)))
                                      (if (gx#stx-null? _tl1208612141_)
                                          ((lambda (_L12144_)
                                             (let ((_types12170_
                                                    (map _generate-e12050_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1216212165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1216312167_)
                             (cons _g1216212165_ _g1216312167_))
                           '()
                           _L12144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types12170_)))
                                           _id1208312133_)
                                          (_g1205312091_ _g1205412094_))))
                                  (_g1205312091_ _g1205412094_)))))))
              (_loop1207812117_ _target1207512112_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1205312091_
                                                     _g1205412094_)))))
                                          (_g1205312091_ _g1205412094_))
                                      (_g1205312091_ _g1205412094_))))
                              (_g1205312091_ _g1205412094_))))
                      (_g1205312091_ _g1205412094_))))
               (_g1205112224_
                (lambda (_g1205412175_)
                  (if (gx#stx-pair? _g1205412175_)
                      (let ((_e1205612177_ (gx#stx-e _g1205412175_)))
                        (let ((_hd1205712180_ (##car _e1205612177_))
                              (_tl1205812182_ (##cdr _e1205612177_)))
                          (if (gx#stx-pair? _tl1205812182_)
                              (let ((_e1205912185_ (gx#stx-e _tl1205812182_)))
                                (let ((_hd1206012188_ (##car _e1205912185_))
                                      (_tl1206112190_ (##cdr _e1205912185_)))
                                  (if (gx#stx-pair? _hd1206012188_)
                                      (let ((_e1206212193_
                                             (gx#stx-e _hd1206012188_)))
                                        (let ((_hd1206312196_
                                               (##car _e1206212193_))
                                              (_tl1206412198_
                                               (##cdr _e1206212193_)))
                                          (if (gx#stx-null? _tl1206412198_)
                                              (if (gx#stx-pair? _tl1206112190_)
                                                  (let ((_e1206512201_
                                                         (gx#stx-e
                                                          _tl1206112190_)))
                                                    (let ((_hd1206612204_
                                                           (##car _e1206512201_))
                                                          (_tl1206712206_
                                                           (##cdr _e1206512201_)))
                                                      (if (gx#stx-null?
                                                           _tl1206712206_)
                                                          ((lambda (_L12209_)
                                                             (_generate-e12050_
                                                              _L12209_))
                                                           _hd1206312196_)
                                                          (_g1205212172_
                                                           _g1205412175_))))
                                                  (_g1205212172_
                                                   _g1205412175_))
                                              (_g1205212172_ _g1205412175_))))
                                      (_g1205212172_ _g1205412175_))))
                              (_g1205212172_ _g1205412175_))))
                      (_g1205212172_ _g1205412175_)))))
          (_g1205112224_ _stx12048_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11602_)
      (let* ((_g1160611708_
              (lambda (_g1160711705_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1160711705_)))
             (_g1160511715_ (lambda (_g1160711711_) ((lambda () '(begin)))))
             (_g1160411865_
              (lambda (_g1160711718_)
                (if (gx#stx-pair? _g1160711718_)
                    (let ((_e1166511720_ (gx#stx-e _g1160711718_)))
                      (let ((_hd1166611723_ (##car _e1166511720_))
                            (_tl1166711725_ (##cdr _e1166511720_)))
                        (if (gx#stx-pair? _tl1166711725_)
                            (let ((_e1166811728_ (gx#stx-e _tl1166711725_)))
                              (let ((_hd1166911731_ (##car _e1166811728_))
                                    (_tl1167011733_ (##cdr _e1166811728_)))
                                (if (gx#stx-pair? _hd1166911731_)
                                    (let ((_e1167111736_
                                           (gx#stx-e _hd1166911731_)))
                                      (let ((_hd1167211739_
                                             (##car _e1167111736_))
                                            (_tl1167311741_
                                             (##cdr _e1167111736_)))
                                        (if (gx#identifier? _hd1167211739_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1167211739_)
                                                (if (gx#stx-pair?
                                                     _tl1167311741_)
                                                    (let ((_e1167411744_
                                                           (gx#stx-e
                                                            _tl1167311741_)))
                                                      (let ((_hd1167511747_
                                                             (##car _e1167411744_))
                                                            (_tl1167611749_
                                                             (##cdr _e1167411744_)))
                                                        (if (gx#stx-null?
                                                             _tl1167611749_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1167011733_)
                        (let ((_e1167711752_ (gx#stx-e _tl1167011733_)))
                          (let ((_hd1167811755_ (##car _e1167711752_))
                                (_tl1167911757_ (##cdr _e1167711752_)))
                            (if (gx#stx-pair? _hd1167811755_)
                                (let ((_e1168011760_
                                       (gx#stx-e _hd1167811755_)))
                                  (let ((_hd1168111763_ (##car _e1168011760_))
                                        (_tl1168211765_ (##cdr _e1168011760_)))
                                    (if (gx#identifier? _hd1168111763_)
                                        (if (gx#stx-eq? '%#ref _hd1168111763_)
                                            (if (gx#stx-pair? _tl1168211765_)
                                                (let ((_e1168311768_
                                                       (gx#stx-e
                                                        _tl1168211765_)))
                                                  (let ((_hd1168411771_
                                                         (##car _e1168311768_))
                                                        (_tl1168511773_
                                                         (##cdr _e1168311768_)))
                                                    (if (gx#stx-null?
                                                         _tl1168511773_)
                                                        (if (gx#stx-pair?
                                                             _tl1167911757_)
                                                            (let ((_e1168611776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1167911757_)))
                      (let ((_hd1168711779_ (##car _e1168611776_))
                            (_tl1168811781_ (##cdr _e1168611776_)))
                        (if (gx#stx-pair? _hd1168711779_)
                            (let ((_e1168911784_ (gx#stx-e _hd1168711779_)))
                              (let ((_hd1169011787_ (##car _e1168911784_))
                                    (_tl1169111789_ (##cdr _e1168911784_)))
                                (if (gx#identifier? _hd1169011787_)
                                    (if (gx#stx-eq? '%#quote _hd1169011787_)
                                        (if (gx#stx-pair? _tl1169111789_)
                                            (let ((_e1169211792_
                                                   (gx#stx-e _tl1169111789_)))
                                              (let ((_hd1169311795_
                                                     (##car _e1169211792_))
                                                    (_tl1169411797_
                                                     (##cdr _e1169211792_)))
                                                (if (gx#stx-null?
                                                     _tl1169411797_)
                                                    (if (gx#stx-pair?
                                                         _tl1168811781_)
                                                        (let ((_e1169511800_
                                                               (gx#stx-e
                                                                _tl1168811781_)))
                                                          (let ((_hd1169611803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1169511800_))
                        (_tl1169711805_ (##cdr _e1169511800_)))
                    (if (gx#stx-pair? _hd1169611803_)
                        (let ((_e1169811808_ (gx#stx-e _hd1169611803_)))
                          (let ((_hd1169911811_ (##car _e1169811808_))
                                (_tl1170011813_ (##cdr _e1169811808_)))
                            (if (gx#identifier? _hd1169911811_)
                                (if (gx#stx-eq? '%#ref _hd1169911811_)
                                    (if (gx#stx-pair? _tl1170011813_)
                                        (let ((_e1170111816_
                                               (gx#stx-e _tl1170011813_)))
                                          (let ((_hd1170211819_
                                                 (##car _e1170111816_))
                                                (_tl1170311821_
                                                 (##cdr _e1170111816_)))
                                            (if (gx#stx-null? _tl1170311821_)
                                                (if (gx#stx-null?
                                                     _tl1169711805_)
                                                    ((lambda (_L11824_
                                                              _L11825_
                                                              _L11826_
                                                              _L11827_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L11826_)
                               (cons (gx#stx-e _L11825_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L11824_)
                                           (cons '#f '())))))
                   (_g1160511715_ _g1160711718_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1170211819_
                                                     _hd1169311795_
                                                     _hd1168411771_
                                                     _hd1167511747_)
                                                    (_g1160511715_
                                                     _g1160711718_))
                                                (_g1160511715_
                                                 _g1160711718_))))
                                        (_g1160511715_ _g1160711718_))
                                    (_g1160511715_ _g1160711718_))
                                (_g1160511715_ _g1160711718_))))
                        (_g1160511715_ _g1160711718_))))
                (_g1160511715_ _g1160711718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1160511715_
                                                     _g1160711718_))))
                                            (_g1160511715_ _g1160711718_))
                                        (_g1160511715_ _g1160711718_))
                                    (_g1160511715_ _g1160711718_))))
                            (_g1160511715_ _g1160711718_))))
                    (_g1160511715_ _g1160711718_))
                (_g1160511715_ _g1160711718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1160511715_ _g1160711718_))
                                            (_g1160511715_ _g1160711718_))
                                        (_g1160511715_ _g1160711718_))))
                                (_g1160511715_ _g1160711718_))))
                        (_g1160511715_ _g1160711718_))
                    (_g1160511715_ _g1160711718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1160511715_
                                                     _g1160711718_))
                                                (_g1160511715_ _g1160711718_))
                                            (_g1160511715_ _g1160711718_))))
                                    (_g1160511715_ _g1160711718_))))
                            (_g1160511715_ _g1160711718_))))
                    (_g1160511715_ _g1160711718_))))
             (_g1160312045_
              (lambda (_g1160711868_)
                (if (gx#stx-pair? _g1160711868_)
                    (let ((_e1161311870_ (gx#stx-e _g1160711868_)))
                      (let ((_hd1161411873_ (##car _e1161311870_))
                            (_tl1161511875_ (##cdr _e1161311870_)))
                        (if (gx#stx-pair? _tl1161511875_)
                            (let ((_e1161611878_ (gx#stx-e _tl1161511875_)))
                              (let ((_hd1161711881_ (##car _e1161611878_))
                                    (_tl1161811883_ (##cdr _e1161611878_)))
                                (if (gx#stx-pair? _hd1161711881_)
                                    (let ((_e1161911886_
                                           (gx#stx-e _hd1161711881_)))
                                      (let ((_hd1162011889_
                                             (##car _e1161911886_))
                                            (_tl1162111891_
                                             (##cdr _e1161911886_)))
                                        (if (gx#identifier? _hd1162011889_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1162011889_)
                                                (if (gx#stx-pair?
                                                     _tl1162111891_)
                                                    (let ((_e1162211894_
                                                           (gx#stx-e
                                                            _tl1162111891_)))
                                                      (let ((_hd1162311897_
                                                             (##car _e1162211894_))
                                                            (_tl1162411899_
                                                             (##cdr _e1162211894_)))
                                                        (if (gx#stx-null?
                                                             _tl1162411899_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1161811883_)
                        (let ((_e1162511902_ (gx#stx-e _tl1161811883_)))
                          (let ((_hd1162611905_ (##car _e1162511902_))
                                (_tl1162711907_ (##cdr _e1162511902_)))
                            (if (gx#stx-pair? _hd1162611905_)
                                (let ((_e1162811910_
                                       (gx#stx-e _hd1162611905_)))
                                  (let ((_hd1162911913_ (##car _e1162811910_))
                                        (_tl1163011915_ (##cdr _e1162811910_)))
                                    (if (gx#identifier? _hd1162911913_)
                                        (if (gx#stx-eq? '%#ref _hd1162911913_)
                                            (if (gx#stx-pair? _tl1163011915_)
                                                (let ((_e1163111918_
                                                       (gx#stx-e
                                                        _tl1163011915_)))
                                                  (let ((_hd1163211921_
                                                         (##car _e1163111918_))
                                                        (_tl1163311923_
                                                         (##cdr _e1163111918_)))
                                                    (if (gx#stx-null?
                                                         _tl1163311923_)
                                                        (if (gx#stx-pair?
                                                             _tl1162711907_)
                                                            (let ((_e1163411926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1162711907_)))
                      (let ((_hd1163511929_ (##car _e1163411926_))
                            (_tl1163611931_ (##cdr _e1163411926_)))
                        (if (gx#stx-pair? _hd1163511929_)
                            (let ((_e1163711934_ (gx#stx-e _hd1163511929_)))
                              (let ((_hd1163811937_ (##car _e1163711934_))
                                    (_tl1163911939_ (##cdr _e1163711934_)))
                                (if (gx#identifier? _hd1163811937_)
                                    (if (gx#stx-eq? '%#quote _hd1163811937_)
                                        (if (gx#stx-pair? _tl1163911939_)
                                            (let ((_e1164011942_
                                                   (gx#stx-e _tl1163911939_)))
                                              (let ((_hd1164111945_
                                                     (##car _e1164011942_))
                                                    (_tl1164211947_
                                                     (##cdr _e1164011942_)))
                                                (if (gx#stx-null?
                                                     _tl1164211947_)
                                                    (if (gx#stx-pair?
                                                         _tl1163611931_)
                                                        (let ((_e1164311950_
                                                               (gx#stx-e
                                                                _tl1163611931_)))
                                                          (let ((_hd1164411953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1164311950_))
                        (_tl1164511955_ (##cdr _e1164311950_)))
                    (if (gx#stx-pair? _hd1164411953_)
                        (let ((_e1164611958_ (gx#stx-e _hd1164411953_)))
                          (let ((_hd1164711961_ (##car _e1164611958_))
                                (_tl1164811963_ (##cdr _e1164611958_)))
                            (if (gx#identifier? _hd1164711961_)
                                (if (gx#stx-eq? '%#ref _hd1164711961_)
                                    (if (gx#stx-pair? _tl1164811963_)
                                        (let ((_e1164911966_
                                               (gx#stx-e _tl1164811963_)))
                                          (let ((_hd1165011969_
                                                 (##car _e1164911966_))
                                                (_tl1165111971_
                                                 (##cdr _e1164911966_)))
                                            (if (gx#stx-null? _tl1165111971_)
                                                (if (gx#stx-pair?
                                                     _tl1164511955_)
                                                    (let ((_e1165211974_
                                                           (gx#stx-e
                                                            _tl1164511955_)))
                                                      (let ((_hd1165311977_
                                                             (##car _e1165211974_))
                                                            (_tl1165411979_
                                                             (##cdr _e1165211974_)))
                                                        (if (gx#stx-pair?
                                                             _hd1165311977_)
                                                            (let ((_e1165511982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1165311977_)))
                      (let ((_hd1165611985_ (##car _e1165511982_))
                            (_tl1165711987_ (##cdr _e1165511982_)))
                        (if (gx#identifier? _hd1165611985_)
                            (if (gx#stx-eq? '%#quote _hd1165611985_)
                                (if (gx#stx-pair? _tl1165711987_)
                                    (let ((_e1165811990_
                                           (gx#stx-e _tl1165711987_)))
                                      (let ((_hd1165911993_
                                             (##car _e1165811990_))
                                            (_tl1166011995_
                                             (##cdr _e1165811990_)))
                                        (if (gx#stx-null? _tl1166011995_)
                                            (if (gx#stx-null? _tl1165411979_)
                                                ((lambda (_L11998_
                                                          _L11999_
                                                          _L12000_
                                                          _L12001_
                                                          _L12002_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L12002_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12001_)
                           (cons (gx#stx-e _L12000_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L11999_)
                                       (cons (gx#stx-e _L11998_) '())))))
               (_g1160411865_ _g1160711868_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1165911993_
                                                 _hd1165011969_
                                                 _hd1164111945_
                                                 _hd1163211921_
                                                 _hd1162311897_)
                                                (_g1160411865_ _g1160711868_))
                                            (_g1160411865_ _g1160711868_))))
                                    (_g1160411865_ _g1160711868_))
                                (_g1160411865_ _g1160711868_))
                            (_g1160411865_ _g1160711868_))))
                    (_g1160411865_ _g1160711868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1160411865_
                                                     _g1160711868_))
                                                (_g1160411865_
                                                 _g1160711868_))))
                                        (_g1160411865_ _g1160711868_))
                                    (_g1160411865_ _g1160711868_))
                                (_g1160411865_ _g1160711868_))))
                        (_g1160411865_ _g1160711868_))))
                (_g1160411865_ _g1160711868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1160411865_
                                                     _g1160711868_))))
                                            (_g1160411865_ _g1160711868_))
                                        (_g1160411865_ _g1160711868_))
                                    (_g1160411865_ _g1160711868_))))
                            (_g1160411865_ _g1160711868_))))
                    (_g1160411865_ _g1160711868_))
                (_g1160411865_ _g1160711868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1160411865_ _g1160711868_))
                                            (_g1160411865_ _g1160711868_))
                                        (_g1160411865_ _g1160711868_))))
                                (_g1160411865_ _g1160711868_))))
                        (_g1160411865_ _g1160711868_))
                    (_g1160411865_ _g1160711868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1160411865_
                                                     _g1160711868_))
                                                (_g1160411865_ _g1160711868_))
                                            (_g1160411865_ _g1160711868_))))
                                    (_g1160411865_ _g1160711868_))))
                            (_g1160411865_ _g1160711868_))))
                    (_g1160411865_ _g1160711868_)))))
        (_g1160312045_ _stx11602_))))
  (define gxc#!alias::typedecl
    (lambda (_self11578_)
      (let* ((_self1157911585_ _self11578_)
             (_E1158111589_
              (lambda () (error '"No clause matching" _self1157911585_)))
             (_K1158211594_
              (lambda (_alias-id11592_)
                (cons '@alias (cons _alias-id11592_ '())))))
        (if (##structure-instance-of?
             _self1157911585_
             (##type-id gxc#!alias::t))
            (let* ((_e1158311597_ (##vector-ref _self1157911585_ '1))
                   (_alias-id11600_ _e1158311597_))
              (_K1158211594_ _alias-id11600_))
            (_E1158111589_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11522_)
      (let* ((_self1152311534_ _self11522_)
             (_E1152511538_
              (lambda () (error '"No clause matching" _self1152311534_)))
             (_K1152611547_
              (lambda (_plist11541_
                       _ctor11542_
                       _fields11543_
                       _super11544_
                       _type-id11545_)
                (cons '@struct-type
                      (cons _type-id11545_
                            (cons _super11544_
                                  (cons _fields11543_
                                        (cons _ctor11542_
                                              (cons _plist11541_ '())))))))))
        (if (##structure-instance-of?
             _self1152311534_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1152711550_ (##vector-ref _self1152311534_ '1))
                   (_type-id11553_ _e1152711550_)
                   (_e1152811555_ (##vector-ref _self1152311534_ '2))
                   (_super11558_ _e1152811555_)
                   (_e1152911560_ (##vector-ref _self1152311534_ '3))
                   (_fields11563_ _e1152911560_)
                   (_e1153011565_ (##vector-ref _self1152311534_ '4))
                   (_e1153111568_ (##vector-ref _self1152311534_ '5))
                   (_ctor11571_ _e1153111568_)
                   (_e1153211573_ (##vector-ref _self1152311534_ '6))
                   (_plist11576_ _e1153211573_))
              (_K1152611547_
               _plist11576_
               _ctor11571_
               _fields11563_
               _super11558_
               _type-id11553_))
            (_E1152511538_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11498_)
      (let* ((_self1149911505_ _self11498_)
             (_E1150111509_
              (lambda () (error '"No clause matching" _self1149911505_)))
             (_K1150211514_
              (lambda (_struct-t11512_)
                (cons '@struct-pred (cons _struct-t11512_ '())))))
        (if (##structure-instance-of?
             _self1149911505_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1150311517_ (##vector-ref _self1149911505_ '1))
                   (_struct-t11520_ _e1150311517_))
              (_K1150211514_ _struct-t11520_))
            (_E1150111509_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11474_)
      (let* ((_self1147511481_ _self11474_)
             (_E1147711485_
              (lambda () (error '"No clause matching" _self1147511481_)))
             (_K1147811490_
              (lambda (_struct-t11488_)
                (cons '@struct-cons (cons _struct-t11488_ '())))))
        (if (##structure-instance-of?
             _self1147511481_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1147911493_ (##vector-ref _self1147511481_ '1))
                   (_struct-t11496_ _e1147911493_))
              (_K1147811490_ _struct-t11496_))
            (_E1147711485_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11436_)
      (let* ((_self1143711445_ _self11436_)
             (_E1143911449_
              (lambda () (error '"No clause matching" _self1143711445_)))
             (_K1144011456_
              (lambda (_unchecked?11452_ _off11453_ _struct-t11454_)
                (cons '@struct-getf
                      (cons _struct-t11454_
                            (cons _off11453_ (cons _unchecked?11452_ '())))))))
        (if (##structure-instance-of?
             _self1143711445_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1144111459_ (##vector-ref _self1143711445_ '1))
                   (_struct-t11462_ _e1144111459_)
                   (_e1144211464_ (##vector-ref _self1143711445_ '2))
                   (_off11467_ _e1144211464_)
                   (_e1144311469_ (##vector-ref _self1143711445_ '3))
                   (_unchecked?11472_ _e1144311469_))
              (_K1144011456_ _unchecked?11472_ _off11467_ _struct-t11462_))
            (_E1143911449_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self11398_)
      (let* ((_self1139911407_ _self11398_)
             (_E1140111411_
              (lambda () (error '"No clause matching" _self1139911407_)))
             (_K1140211418_
              (lambda (_unchecked?11414_ _off11415_ _struct-t11416_)
                (cons '@struct-setf
                      (cons _struct-t11416_
                            (cons _off11415_ (cons _unchecked?11414_ '())))))))
        (if (##structure-instance-of?
             _self1139911407_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1140311421_ (##vector-ref _self1139911407_ '1))
                   (_struct-t11424_ _e1140311421_)
                   (_e1140411426_ (##vector-ref _self1139911407_ '2))
                   (_off11429_ _e1140411426_)
                   (_e1140511431_ (##vector-ref _self1139911407_ '3))
                   (_unchecked?11434_ _e1140511431_))
              (_K1140211418_ _unchecked?11434_ _off11429_ _struct-t11424_))
            (_E1140111411_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self11346_)
      (let* ((_self1134711357_ _self11346_)
             (_E1134911361_
              (lambda () (error '"No clause matching" _self1134711357_)))
             (_K1135011372_
              (lambda (_typedecl11364_
                       _inline11365_
                       _dispatch11366_
                       _arity11367_)
                (if _inline11365_
                    (let ((_$e11369_ _typedecl11364_))
                      (if _$e11369_
                          _$e11369_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity11367_ (cons _dispatch11366_ '())))))))
        (if (##structure-instance-of?
             _self1134711357_
             (##type-id gxc#!lambda::t))
            (let* ((_e1135111375_ (##vector-ref _self1134711357_ '1))
                   (_e1135211378_ (##vector-ref _self1134711357_ '2))
                   (_arity11381_ _e1135211378_)
                   (_e1135311383_ (##vector-ref _self1134711357_ '3))
                   (_dispatch11386_ _e1135311383_)
                   (_e1135411388_ (##vector-ref _self1134711357_ '4))
                   (_inline11391_ _e1135411388_)
                   (_e1135511393_ (##vector-ref _self1134711357_ '5))
                   (_typedecl11396_ _e1135511393_))
              (_K1135011372_
               _typedecl11396_
               _inline11391_
               _dispatch11386_
               _arity11381_))
            (_E1134911361_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self11279_)
      (letrec ((_clause-e11281_
                (lambda (_clause11311_)
                  (let* ((_clause1131211320_ _clause11311_)
                         (_E1131411324_
                          (lambda ()
                            (error '"No clause matching" _clause1131211320_)))
                         (_K1131511330_
                          (lambda (_dispatch11327_ _arity11328_)
                            (cons _arity11328_ (cons _dispatch11327_ '())))))
                    (if (##structure-instance-of?
                         _clause1131211320_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1131611333_
                                (##vector-ref _clause1131211320_ '1))
                               (_e1131711336_
                                (##vector-ref _clause1131211320_ '2))
                               (_arity11339_ _e1131711336_)
                               (_e1131811341_
                                (##vector-ref _clause1131211320_ '3))
                               (_dispatch11344_ _e1131811341_))
                          (_K1131511330_ _dispatch11344_ _arity11339_))
                        (_E1131411324_))))))
        (let* ((_self1128211289_ _self11279_)
               (_E1128411293_
                (lambda () (error '"No clause matching" _self1128211289_)))
               (_K1128511300_
                (lambda (_clauses11296_)
                  (let ((_clauses11298_ (map _clause-e11281_ _clauses11296_)))
                    (cons '@case-lambda _clauses11298_)))))
          (if (##structure-instance-of?
               _self1128211289_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1128611303_ (##vector-ref _self1128211289_ '1))
                     (_e1128711306_ (##vector-ref _self1128211289_ '2))
                     (_clauses11309_ _e1128711306_))
                (_K1128511300_ _clauses11309_))
              (_E1128411293_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx11277_) (gxc#generate-runtime-binding-id _stx11277_))))
