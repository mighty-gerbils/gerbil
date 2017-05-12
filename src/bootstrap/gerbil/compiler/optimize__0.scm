(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
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
    (lambda _$args17194_
      (apply make-struct-instance gxc#optimizer-info::t _$args17194_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self17192_)
      (direct-struct-instance-init!
       _self17192_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj17196 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj17196) __obj17196))))))
  (define gxc#optimize!
    (lambda (_ctx17187_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx17187_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx17187_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code17189_
               (gxc#optimize-source
                (##structure-ref _ctx17187_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx17187_
           _code17189_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx17148_)
      ((letrec ((_lp17150_
                 (lambda (_rest17152_)
                   (let ((_rest1715317161_ _rest17152_))
                     (let ((_E1715617165_
                            (lambda ()
                              (error '"No clause matching" _rest1715317161_))))
                       (let ((_else1715517169_ (lambda () '#!void)))
                         (let ((_K1715717175_
                                (lambda (_rest17172_ _hd17173_)
                                  (if (##structure-instance-of?
                                       _hd17173_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd17173_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx17148_)
                                              (_lp17150_
                                               (##structure-ref
                                                _hd17173_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd17173_)))
                                        (_lp17150_ _rest17172_))
                                      (if (##structure-direct-instance-of?
                                           _hd17173_
                                           'gx#module-import::t)
                                          (_lp17150_
                                           (cons (##structure-ref
                                                  _hd17173_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest17172_))
                                          (if (##structure-direct-instance-of?
                                               _hd17173_
                                               'gx#module-export::t)
                                              (_lp17150_
                                               (cons (##structure-ref
                                                      _hd17173_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest17172_))
                                              (if (##structure-direct-instance-of?
                                                   _hd17173_
                                                   'gx#import-set::t)
                                                  (_lp17150_
                                                   (cons (##structure-ref
                                                          _hd17173_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest17172_))
                                                  (error '"Unexpected module import"
                                                         _hd17173_))))))))
                           (if (##pair? _rest1715317161_)
                               (let ((_hd1715817178_ (##car _rest1715317161_))
                                     (_tl1715917180_ (##cdr _rest1715317161_)))
                                 (let ((_hd17183_ _hd1715817178_))
                                   (let ((_rest17185_ _tl1715917180_))
                                     (_K1715717175_ _rest17185_ _hd17183_))))
                               (_else1715517169_)))))))))
         _lp17150_)
       (##structure-ref _ctx17148_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx17143_)
      (let ((_$e17145_ (gx#core-context-prelude__opt-lambda10575 _ctx17143_)))
        (if _$e17145_ (gxc#optimizer-load-ssxi _$e17145_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx17123_)
      (if (if (##structure-instance-of? _ctx17123_ 'gx#module-context::t)
              (list? (##structure-ref _ctx17123_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht17125_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id17127_
                   (##structure-ref _ctx17123_ '1 gx#expander-context::t '#f)))
              (let ((_mod17129_ (table-ref _ht17125_ _id17127_ '#f)))
                (let ()
                  (let ((_$e17132_ _mod17129_))
                    (if _$e17132_
                        _$e17132_
                        (let ((_mod17135_
                               (gxc#optimizer-import-ssxi _ctx17123_)))
                          (let ((_val17140_
                                 (let ((_$e17137_ _mod17135_))
                                   (if _$e17137_ _$e17137_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht17125_ _id17127_ _val17140_)
                                _val17140_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx17100_)
      (let ((_catch-e17102_
             (lambda (_exn17121_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx17100_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn17121_))
                     '#!void)
                 '#f))))
        (let ((_import-e17103_
               (lambda ()
                 (let ((_str-id17106_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx17100_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path17114_
                          (let ((_odir1710717109_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1710717109_
                                (let ((_odir17112_ _odir1710717109_))
                                  (path-expand
                                   (string-append _str-id17106_ '".ss")
                                   _odir17112_))
                                '#f))))
                     (let ((_library-path17116_
                            (string->symbol
                             (string-append '":" _str-id17106_))))
                       (let ((_ssxi-path17118_
                              (if (if _artefact-path17114_
                                      (file-exists? _artefact-path17114_)
                                      '#f)
                                  _artefact-path17114_
                                  _library-path17116_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path17118_)
                             (gx#import-module__opt-lambda10610
                              _ssxi-path17118_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx17100_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e17102_ _import-e17103_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args17097_
      (apply make-struct-instance gxc#!type::t _$args17097_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args17094_
      (apply make-struct-instance gxc#!alias::t _$args17094_)))
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
    (lambda _$args17091_
      (apply make-struct-instance gxc#!struct-type::t _$args17091_)))
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
    (lambda _$args17088_
      (apply make-struct-instance gxc#!procedure::t _$args17088_)))
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
    (lambda _$args17085_
      (apply make-struct-instance gxc#!struct-pred::t _$args17085_)))
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
    (lambda _$args17082_
      (apply make-struct-instance gxc#!struct-cons::t _$args17082_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '1
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args17079_
      (apply make-struct-instance gxc#!struct-getf::t _$args17079_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '1
     '!struct-setf
     '()
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args17076_
      (apply make-struct-instance gxc#!struct-setf::t _$args17076_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
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
    (lambda _$args17073_
      (apply make-struct-instance gxc#!lambda::t _$args17073_)))
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
    (lambda _$args17070_
      (apply make-struct-instance gxc#!case-lambda::t _$args17070_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self17062_
             _id17063_
             _super17064_
             _fields17065_
             _xfields17066_
             _ctor17067_
             _plist17068_)
      (direct-struct-instance-init!
       _self17062_
       _id17063_
       _super17064_
       _fields17065_
       _xfields17066_
       _ctor17067_
       _plist17068_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda17026
      (lambda (_self17028_
               _id17029_
               _arity17030_
               _dispatch17031_
               _inline17032_
               _typedecl17033_)
        (direct-struct-instance-init!
         _self17028_
         _id17029_
         _arity17030_
         _dispatch17031_
         _inline17032_
         _typedecl17033_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self17038_ _id17039_ _arity17040_ _dispatch17041_)
          (let ((_inline17043_ '#f))
            (let ((_typedecl17045_ '#f))
              (direct-struct-instance-init!
               _self17038_
               _id17039_
               _arity17040_
               _dispatch17041_
               _inline17043_
               _typedecl17045_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self17047_
                 _id17048_
                 _arity17049_
                 _dispatch17050_
                 _inline17051_)
          (let ((_typedecl17053_ '#f))
            (direct-struct-instance-init!
             _self17047_
             _id17048_
             _arity17049_
             _dispatch17050_
             _inline17051_
             _typedecl17053_))))
      (define gxc#!lambda:::init!
        (lambda _g17202_
          (let ((_g17201_ (length _g17202_)))
            (cond ((fx= _g17201_ 4) (apply gxc#!lambda:::init!__0 _g17202_))
                  ((fx= _g17201_ 5) (apply gxc#!lambda:::init!__1 _g17202_))
                  ((fx= _g17201_ 6)
                   (apply direct-struct-instance-init! _g17202_))
                  (else (error "No clause matching arguments" _g17202_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type17020_)
      (let ((_$e17022_
             (##structure-ref _type17020_ '7 gxc#!struct-type::t '#f)))
        (if _$e17022_
            (values _$e17022_)
            (let ((_vtab17025_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type17020_
                 _vtab17025_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab17025_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type17011_ _method17012_)
      (let ((_vtab1701317015_
             (##structure-ref _type17011_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1701317015_
            (let ((_vtab17018_ _vtab1701317015_))
              (table-ref _vtab17018_ _method17012_ '#f))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym17008_ _type17009_)
      (begin
        (if (##structure-instance-of? _type17009_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym17008_ _type17009_))
        (gxc#verbose
         '"declare-type "
         _sym17008_
         '" "
         (##vector->list _type17009_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym17008_
         _type17009_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda16983
      (lambda (_type-t16985_ _method16986_ _sym16987_ _rebind?16988_)
        (let ((_type16990_ (gxc#optimizer-resolve-type _type-t16985_)))
          (if (##structure-instance-of? _type16990_ 'gxc#!struct-type::t)
              (let ((_vtab16992_ (gxc#!struct-type-vtab _type16990_)))
                (if _rebind?16988_
                    (if (hash-key? _vtab16992_ _method16986_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t16985_
                         '" "
                         _method16986_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t16985_
                         '" "
                         _method16986_))
                    (if (hash-key? _vtab16992_ _method16986_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t16985_
                           '" "
                           _method16986_
                           '" => "
                           _sym16987_)
                          (hash-put! _vtab16992_ _method16986_ _sym16987_)))))
              (if (not _type16990_)
                  (gxc#verbose '"declare-method: unknown type " _type-t16985_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t16985_
                         _type16990_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t16997_ _method16998_ _sym16999_)
          (let ((_rebind?17001_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda16983
             _type-t16997_
             _method16998_
             _sym16999_
             _rebind?17001_))))
      (define gxc#optimizer-declare-method!
        (lambda _g17204_
          (let ((_g17203_ (length _g17204_)))
            (cond ((fx= _g17203_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g17204_))
                  ((fx= _g17203_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda16983
                          _g17204_))
                  (else (error "No clause matching arguments" _g17204_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym16982_)
      (table-ref
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym16982_
       '#f)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym16974_)
      (let ((_type1697516977_ (gxc#optimizer-lookup-type _sym16974_)))
        (if _type1697516977_
            (let ((_type16980_ _type1697516977_))
              (if (##structure-instance-of? _type16980_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type16980_ '1 gxc#!type::t '#f))
                  _type16980_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t16969_ _method16970_)
      (let ((_type16972_ (gxc#optimizer-resolve-type _type-t16969_)))
        (if (##structure-instance-of? _type16972_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type16972_ _method16970_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx16965_)
      (let ((_stx16967_ (gxc#apply-lift-top-lambdas _stx16965_)))
        (begin
          (gxc#apply-collect-type-info _stx16967_)
          (gxc#apply-optimize-call _stx16967_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl16962_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16962_ '%#lambda false)
           (hash-put! _tbl16962_ '%#case-lambda false)
           (hash-put! _tbl16962_ '%#let-values false)
           (hash-put! _tbl16962_ '%#letrec-values false)
           (hash-put! _tbl16962_ '%#letrec*-values false)
           (hash-put! _tbl16962_ '%#quote false)
           (hash-put! _tbl16962_ '%#quote-syntax false)
           (hash-put! _tbl16962_ '%#call false)
           (hash-put! _tbl16962_ '%#if false)
           (hash-put! _tbl16962_ '%#ref false)
           (hash-put! _tbl16962_ '%#set! false)
           (hash-put! _tbl16962_ '%#struct-instance? false)
           (hash-put! _tbl16962_ '%#struct-direct-instance? false)
           (hash-put! _tbl16962_ '%#struct-ref false)
           (hash-put! _tbl16962_ '%#struct-set! false)
           _tbl16962_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl16958_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16958_ '%#begin false)
           (hash-put! _tbl16958_ '%#begin-syntax false)
           (hash-put! _tbl16958_ '%#begin-foreign false)
           (hash-put! _tbl16958_ '%#module false)
           (hash-put! _tbl16958_ '%#import false)
           (hash-put! _tbl16958_ '%#export false)
           (hash-put! _tbl16958_ '%#provide false)
           (hash-put! _tbl16958_ '%#extern false)
           (hash-put! _tbl16958_ '%#define-values false)
           (hash-put! _tbl16958_ '%#define-syntax false)
           (hash-put! _tbl16958_ '%#define-alias false)
           (hash-put! _tbl16958_ '%#declare false)
           _tbl16958_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl16954_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16954_ (force gxc#&false-special-form))
           (hash-copy! _tbl16954_ (force gxc#&false-expression))
           _tbl16954_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl16950_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16950_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl16950_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl16950_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl16950_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl16950_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl16950_ '%#quote gxc#xform-identity)
           (hash-put! _tbl16950_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl16950_ '%#call gxc#xform-identity)
           (hash-put! _tbl16950_ '%#if gxc#xform-identity)
           (hash-put! _tbl16950_ '%#ref gxc#xform-identity)
           (hash-put! _tbl16950_ '%#set! gxc#xform-identity)
           (hash-put! _tbl16950_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl16950_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl16950_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl16950_ '%#struct-set! gxc#xform-identity)
           _tbl16950_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl16946_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16946_ '%#begin gxc#xform-identity)
           (hash-put! _tbl16946_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl16946_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl16946_ '%#module gxc#xform-identity)
           (hash-put! _tbl16946_ '%#import gxc#xform-identity)
           (hash-put! _tbl16946_ '%#export gxc#xform-identity)
           (hash-put! _tbl16946_ '%#provide gxc#xform-identity)
           (hash-put! _tbl16946_ '%#extern gxc#xform-identity)
           (hash-put! _tbl16946_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl16946_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl16946_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl16946_ '%#declare gxc#xform-identity)
           _tbl16946_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl16942_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16942_ (force gxc#&identity-special-form))
           (hash-copy! _tbl16942_ (force gxc#&identity-expression))
           _tbl16942_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl16938_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16938_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl16938_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl16938_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl16938_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl16938_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl16938_ '%#quote gxc#xform-identity)
           (hash-put! _tbl16938_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl16938_ '%#call gxc#xform-call%)
           (hash-put! _tbl16938_ '%#if gxc#xform-if%)
           (hash-put! _tbl16938_ '%#ref gxc#xform-identity)
           (hash-put! _tbl16938_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl16938_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl16938_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl16938_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl16938_ '%#struct-set! gxc#xform-struct-op%)
           _tbl16938_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl16934_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16934_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl16934_ (force gxc#&identity))
           (hash-put! _tbl16934_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl16934_ '%#module gxc#xform-module%)
           (hash-put! _tbl16934_ '%#define-values gxc#xform-define-values%)
           _tbl16934_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl16930_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16930_ (force gxc#&identity))
           (hash-put! _tbl16930_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl16930_ '%#module gxc#xform-module%)
           (hash-put!
            _tbl16930_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl16930_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx16923_ . _args16925_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16923_ _args16925_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl16920_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16920_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl16920_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl16920_ '%#ref gxc#expression-subst-ref%)
           _tbl16920_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx16913_ . _args16915_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16913_ _args16915_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl16910_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16910_ (force gxc#&void-expression))
           (hash-copy! _tbl16910_ (force gxc#&void-special-form))
           (hash-put! _tbl16910_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl16910_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl16910_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl16910_ '%#call gxc#collect-type-call%)
           _tbl16910_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx16903_ . _args16905_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16903_ _args16905_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl16900_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16900_ (force gxc#&false))
           (hash-put! _tbl16900_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl16900_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl16900_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl16900_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl16900_ '%#ref gxc#basic-expression-type-ref%)
           _tbl16900_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx16893_ . _args16895_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16893_ _args16895_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl16890_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16890_ (force gxc#&basic-xform))
           (hash-put! _tbl16890_ '%#call gxc#optimize-call%)
           _tbl16890_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx16883_ . _args16885_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16883_ _args16885_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl16880_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16880_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl16880_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl16880_ '%#module gxc#generate-ssxi-module%)
           (hash-put!
            _tbl16880_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl16880_ '%#call gxc#generate-ssxi-call%)
           _tbl16880_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx16873_ . _args16875_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16873_ _args16875_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx16870_ . _args16871_) _stx16870_))
  (define gxc#xform-wrap-source
    (lambda (_stx16867_ _src-stx16868_)
      (gx#stx-wrap-source _stx16867_ (gx#stx-source _src-stx16868_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args16861_)
      (lambda (_g1686216864_)
        (apply gxc#compile-e _g1686216864_ _args16861_))))
  (define gxc#xform-begin%
    (lambda (_stx16820_ . _args16821_)
      (let ((_g1682316833_
             (lambda (_g1682416830_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1682416830_))))
        (let ((_g1682216858_
               (lambda (_g1682416836_)
                 (if (gx#stx-pair? _g1682416836_)
                     (let ((_e1682616838_ (gx#stx-e _g1682416836_)))
                       (let ((_hd1682716841_ (##car _e1682616838_))
                             (_tl1682816843_ (##cdr _e1682616838_)))
                         ((lambda (_L16846_)
                            (let ((_forms16856_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16821_)
                                    _L16846_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms16856_)
                               _stx16820_)))
                          _tl1682816843_)))
                     (_g1682316833_ _g1682416836_)))))
          (_g1682216858_ _stx16820_)))))
  (define gxc#xform-module%
    (lambda (_stx16757_ . _args16758_)
      (let ((_g1676016774_
             (lambda (_g1676116771_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1676116771_))))
        (let ((_g1675916817_
               (lambda (_g1676116777_)
                 (if (gx#stx-pair? _g1676116777_)
                     (let ((_e1676416779_ (gx#stx-e _g1676116777_)))
                       (let ((_hd1676516782_ (##car _e1676416779_))
                             (_tl1676616784_ (##cdr _e1676416779_)))
                         (if (gx#stx-pair? _tl1676616784_)
                             (let ((_e1676716787_ (gx#stx-e _tl1676616784_)))
                               (let ((_hd1676816790_ (##car _e1676716787_))
                                     (_tl1676916792_ (##cdr _e1676716787_)))
                                 ((lambda (_L16795_ _L16796_)
                                    (let ((_ctx16809_
                                           (gx#syntax-local-e__0 _L16796_)))
                                      (let ((_code16811_
                                             (##structure-ref
                                              _ctx16809_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code16814_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code16811_
                                                         _args16758_))
                                                gx#current-expander-context
                                                _ctx16809_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx16809_
                                               _code16814_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L16796_
                                                           (cons _code16814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16757_)))))))
                                  _tl1676916792_
                                  _hd1676816790_)))
                             (_g1676016774_ _g1676116777_))))
                     (_g1676016774_ _g1676116777_)))))
          (_g1675916817_ _stx16757_)))))
  (define gxc#xform-define-values%
    (lambda (_stx16687_ . _args16688_)
      (let ((_g1669016707_
             (lambda (_g1669116704_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1669116704_))))
        (let ((_g1668916754_
               (lambda (_g1669116710_)
                 (if (gx#stx-pair? _g1669116710_)
                     (let ((_e1669416712_ (gx#stx-e _g1669116710_)))
                       (let ((_hd1669516715_ (##car _e1669416712_))
                             (_tl1669616717_ (##cdr _e1669416712_)))
                         (if (gx#stx-pair? _tl1669616717_)
                             (let ((_e1669716720_ (gx#stx-e _tl1669616717_)))
                               (let ((_hd1669816723_ (##car _e1669716720_))
                                     (_tl1669916725_ (##cdr _e1669716720_)))
                                 (if (gx#stx-pair? _tl1669916725_)
                                     (let ((_e1670016728_
                                            (gx#stx-e _tl1669916725_)))
                                       (let ((_hd1670116731_
                                              (##car _e1670016728_))
                                             (_tl1670216733_
                                              (##cdr _e1670016728_)))
                                         (if (gx#stx-null? _tl1670216733_)
                                             ((lambda (_L16736_ _L16737_)
                                                (let ((_expr16752_
                                                       (apply gxc#compile-e
                                                              _L16736_
                                                              _args16688_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16737_
                                                               (cons _expr16752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16687_)))
                                              _hd1670116731_
                                              _hd1669816723_)
                                             (_g1669016707_ _g1669116710_))))
                                     (_g1669016707_ _g1669116710_))))
                             (_g1669016707_ _g1669116710_))))
                     (_g1669016707_ _g1669116710_)))))
          (_g1668916754_ _stx16687_)))))
  (define gxc#xform-lambda%
    (lambda (_stx16630_ . _args16631_)
      (let ((_g1663316647_
             (lambda (_g1663416644_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1663416644_))))
        (let ((_g1663216684_
               (lambda (_g1663416650_)
                 (if (gx#stx-pair? _g1663416650_)
                     (let ((_e1663716652_ (gx#stx-e _g1663416650_)))
                       (let ((_hd1663816655_ (##car _e1663716652_))
                             (_tl1663916657_ (##cdr _e1663716652_)))
                         (if (gx#stx-pair? _tl1663916657_)
                             (let ((_e1664016660_ (gx#stx-e _tl1663916657_)))
                               (let ((_hd1664116663_ (##car _e1664016660_))
                                     (_tl1664216665_ (##cdr _e1664016660_)))
                                 ((lambda (_L16668_ _L16669_)
                                    (let ((_body16682_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16631_)
                                            _L16668_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L16669_ _body16682_))
                                       _stx16630_)))
                                  _tl1664216665_
                                  _hd1664116663_)))
                             (_g1663316647_ _g1663416650_))))
                     (_g1663316647_ _g1663416650_)))))
          (_g1663216684_ _stx16630_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16543_ . _args16544_)
      (let ((_clause-e16546_
             (lambda (_clause16587_)
               (let ((_g1658916600_
                      (lambda (_g1659016597_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1659016597_))))
                 (let ((_g1658816627_
                        (lambda (_g1659016603_)
                          (if (gx#stx-pair? _g1659016603_)
                              (let ((_e1659316605_ (gx#stx-e _g1659016603_)))
                                (let ((_hd1659416608_ (##car _e1659316605_))
                                      (_tl1659516610_ (##cdr _e1659316605_)))
                                  ((lambda (_L16613_ _L16614_)
                                     (let ((_body16625_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args16544_)
                                             _L16613_)))
                                       (cons _L16614_ _body16625_)))
                                   _tl1659516610_
                                   _hd1659416608_)))
                              (_g1658916600_ _g1659016603_)))))
                   (_g1658816627_ _clause16587_))))))
        (let ((_g1654816558_
               (lambda (_g1654916555_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1654916555_))))
          (let ((_g1654716584_
                 (lambda (_g1654916561_)
                   (if (gx#stx-pair? _g1654916561_)
                       (let ((_e1655116563_ (gx#stx-e _g1654916561_)))
                         (let ((_hd1655216566_ (##car _e1655116563_))
                               (_tl1655316568_ (##cdr _e1655116563_)))
                           ((lambda (_L16571_)
                              (let ((_clauses16582_
                                     (gx#stx-map1 _clause-e16546_ _L16571_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses16582_)
                                 _stx16543_)))
                            _tl1655316568_)))
                       (_g1654816558_ _g1654916561_)))))
            (_g1654716584_ _stx16543_))))))
  (define gxc#xform-let-values%
    (lambda (_stx16337_ . _args16338_)
      (let ((_g1634016373_
             (lambda (_g1634116370_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1634116370_))))
        (let ((_g1633916540_
               (lambda (_g1634116376_)
                 (if (gx#stx-pair? _g1634116376_)
                     (let ((_e1634616378_ (gx#stx-e _g1634116376_)))
                       (let ((_hd1634716381_ (##car _e1634616378_))
                             (_tl1634816383_ (##cdr _e1634616378_)))
                         (if (gx#stx-pair? _tl1634816383_)
                             (let ((_e1634916386_ (gx#stx-e _tl1634816383_)))
                               (let ((_hd1635016389_ (##car _e1634916386_))
                                     (_tl1635116391_ (##cdr _e1634916386_)))
                                 (if (gx#stx-pair/null? _hd1635016389_)
                                     (if (fx>= (gx#stx-length _hd1635016389_)
                                               '0)
                                         (let ((_g17205_
                                                (gx#syntax-split-splice
                                                 _hd1635016389_
                                                 '0)))
                                           (begin
                                             (let ((_g17206_
                                                    (values-count _g17205_)))
                                               (if (not (fx= _g17206_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17206_)))
                                             (let ((_target1635216394_
                                                    (values-ref _g17205_ 0))
                                                   (_tl1635416396_
                                                    (values-ref _g17205_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1635416396_)
                                                   (letrec ((_loop1635516399_
                                                             (lambda (_hd1635316402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1635916404_
                              _hd1636016406_)
                       (if (gx#stx-pair? _hd1635316402_)
                           (let ((_e1635616409_ (gx#stx-e _hd1635316402_)))
                             (let ((_lp-hd1635716412_ (##car _e1635616409_))
                                   (_lp-tl1635816414_ (##cdr _e1635616409_)))
                               (if (gx#stx-pair? _lp-hd1635716412_)
                                   (let ((_e1636316417_
                                          (gx#stx-e _lp-hd1635716412_)))
                                     (let ((_hd1636416420_
                                            (##car _e1636316417_))
                                           (_tl1636516422_
                                            (##cdr _e1636316417_)))
                                       (if (gx#stx-pair? _tl1636516422_)
                                           (let ((_e1636616425_
                                                  (gx#stx-e _tl1636516422_)))
                                             (let ((_hd1636716428_
                                                    (##car _e1636616425_))
                                                   (_tl1636816430_
                                                    (##cdr _e1636616425_)))
                                               (if (gx#stx-null?
                                                    _tl1636816430_)
                                                   (_loop1635516399_
                                                    _lp-tl1635816414_
                                                    (cons _hd1636716428_
                                                          _expr1635916404_)
                                                    (cons _hd1636416420_
                                                          _hd1636016406_))
                                                   (_g1634016373_
                                                    _g1634116376_))))
                                           (_g1634016373_ _g1634116376_))))
                                   (_g1634016373_ _g1634116376_))))
                           (let ((_expr1636116433_ (reverse _expr1635916404_))
                                 (_hd1636216435_ (reverse _hd1636016406_)))
                             ((lambda (_L16438_ _L16439_ _L16440_ _L16441_)
                                (let ((_g1646016476_
                                       (lambda (_g1646116473_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1646116473_))))
                                  (let ((_g1645916530_
                                         (lambda (_g1646116479_)
                                           (if (gx#stx-pair/null?
                                                _g1646116479_)
                                               (if (fx>= (gx#stx-length
                                                          _g1646116479_)
                                                         '0)
                                                   (let ((_g17207_
                                                          (gx#syntax-split-splice
                                                           _g1646116479_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17208_
                                                              (values-count
                                                               _g17207_)))
                                                         (if (not (fx= _g17208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g17208_)))
               (let ((_target1646316481_ (values-ref _g17207_ 0))
                     (_tl1646516483_ (values-ref _g17207_ 1)))
                 (if (gx#stx-null? _tl1646516483_)
                     (letrec ((_loop1646616486_
                               (lambda (_hd1646416489_ _expr1647016491_)
                                 (if (gx#stx-pair? _hd1646416489_)
                                     (let ((_e1646716494_
                                            (gx#syntax-e _hd1646416489_)))
                                       (let ((_lp-hd1646816497_
                                              (##car _e1646716494_))
                                             (_lp-tl1646916499_
                                              (##cdr _e1646716494_)))
                                         (_loop1646616486_
                                          _lp-tl1646916499_
                                          (cons _lp-hd1646816497_
                                                _expr1647016491_))))
                                     (let ((_expr1647116502_
                                            (reverse _expr1647016491_)))
                                       ((lambda (_L16505_)
                                          (let ()
                                            (let ((_body16518_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args16338_)
                                                    _L16438_)))
                                              (gxc#xform-wrap-source
                                               (cons _L16441_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L16505_
                                                              _L16440_)
                                                             (foldr (lambda (_g1651916523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1652016525_
                                     _g1652116527_)
                              (cons (cons _g1652016525_
                                          (cons _g1651916523_ '()))
                                    _g1652116527_))
                            '()
                            _L16505_
                            _L16440_))
                   _body16518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16337_))))
                                        _expr1647116502_))))))
                       (_loop1646616486_ _target1646316481_ '()))
                     (_g1646016476_ _g1646116479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1646016476_
                                                    _g1646116479_))
                                               (_g1646016476_
                                                _g1646116479_)))))
                                    (_g1645916530_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args16338_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1653216535_
                                                        _g1653316537_)
                                                 (cons _g1653216535_
                                                       _g1653316537_))
                                               '()
                                               _L16439_)))))))
                              _tl1635116391_
                              _expr1636116433_
                              _hd1636216435_
                              _hd1634716381_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1635516399_
                                                      _target1635216394_
                                                      '()
                                                      '()))
                                                   (_g1634016373_
                                                    _g1634116376_)))))
                                         (_g1634016373_ _g1634116376_))
                                     (_g1634016373_ _g1634116376_))))
                             (_g1634016373_ _g1634116376_))))
                     (_g1634016373_ _g1634116376_)))))
          (_g1633916540_ _stx16337_)))))
  (define gxc#xform-call%
    (lambda (_stx16279_ . _args16280_)
      (let ((_g1628216296_
             (lambda (_g1628316293_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1628316293_))))
        (let ((_g1628116334_
               (lambda (_g1628316299_)
                 (if (gx#stx-pair? _g1628316299_)
                     (let ((_e1628616301_ (gx#stx-e _g1628316299_)))
                       (let ((_hd1628716304_ (##car _e1628616301_))
                             (_tl1628816306_ (##cdr _e1628616301_)))
                         (if (gx#stx-pair? _tl1628816306_)
                             (let ((_e1628916309_ (gx#stx-e _tl1628816306_)))
                               (let ((_hd1629016312_ (##car _e1628916309_))
                                     (_tl1629116314_ (##cdr _e1628916309_)))
                                 ((lambda (_L16317_ _L16318_)
                                    (let ((_rator16331_
                                           (apply gxc#compile-e
                                                  _L16318_
                                                  _args16280_))
                                          (_rands16332_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16280_)
                                            _L16317_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator16331_ _rands16332_))
                                       _stx16279_)))
                                  _tl1629116314_
                                  _hd1629016312_)))
                             (_g1628216296_ _g1628316299_))))
                     (_g1628216296_ _g1628316299_)))))
          (_g1628116334_ _stx16279_)))))
  (define gxc#xform-if%
    (lambda (_stx16238_ . _args16239_)
      (let ((_g1624116251_
             (lambda (_g1624216248_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1624216248_))))
        (let ((_g1624016276_
               (lambda (_g1624216254_)
                 (if (gx#stx-pair? _g1624216254_)
                     (let ((_e1624416256_ (gx#stx-e _g1624216254_)))
                       (let ((_hd1624516259_ (##car _e1624416256_))
                             (_tl1624616261_ (##cdr _e1624416256_)))
                         ((lambda (_L16264_)
                            (let ((_forms16274_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16239_)
                                    _L16264_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms16274_)
                               _stx16238_)))
                          _tl1624616261_)))
                     (_g1624116251_ _g1624216254_)))))
          (_g1624016276_ _stx16238_)))))
  (define gxc#xform-setq%
    (lambda (_stx16168_ . _args16169_)
      (let ((_g1617116188_
             (lambda (_g1617216185_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1617216185_))))
        (let ((_g1617016235_
               (lambda (_g1617216191_)
                 (if (gx#stx-pair? _g1617216191_)
                     (let ((_e1617516193_ (gx#stx-e _g1617216191_)))
                       (let ((_hd1617616196_ (##car _e1617516193_))
                             (_tl1617716198_ (##cdr _e1617516193_)))
                         (if (gx#stx-pair? _tl1617716198_)
                             (let ((_e1617816201_ (gx#stx-e _tl1617716198_)))
                               (let ((_hd1617916204_ (##car _e1617816201_))
                                     (_tl1618016206_ (##cdr _e1617816201_)))
                                 (if (gx#stx-pair? _tl1618016206_)
                                     (let ((_e1618116209_
                                            (gx#stx-e _tl1618016206_)))
                                       (let ((_hd1618216212_
                                              (##car _e1618116209_))
                                             (_tl1618316214_
                                              (##cdr _e1618116209_)))
                                         (if (gx#stx-null? _tl1618316214_)
                                             ((lambda (_L16217_ _L16218_)
                                                (let ((_expr16233_
                                                       (apply gxc#compile-e
                                                              _L16217_
                                                              _args16169_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L16218_
                                                               (cons _expr16233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16168_)))
                                              _hd1618216212_
                                              _hd1617916204_)
                                             (_g1617116188_ _g1617216191_))))
                                     (_g1617116188_ _g1617216191_))))
                             (_g1617116188_ _g1617216191_))))
                     (_g1617116188_ _g1617216191_)))))
          (_g1617016235_ _stx16168_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx16124_ . _args16125_)
      (let ((_g1612716138_
             (lambda (_g1612816135_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1612816135_))))
        (let ((_g1612616165_
               (lambda (_g1612816141_)
                 (if (gx#stx-pair? _g1612816141_)
                     (let ((_e1613116143_ (gx#stx-e _g1612816141_)))
                       (let ((_hd1613216146_ (##car _e1613116143_))
                             (_tl1613316148_ (##cdr _e1613116143_)))
                         ((lambda (_L16151_ _L16152_)
                            (let ((_op-args16163_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16125_)
                                    _L16151_)))
                              (gxc#xform-wrap-source
                               (cons _L16152_ _op-args16163_)
                               _stx16124_)))
                          _tl1613316148_
                          _hd1613216146_)))
                     (_g1612716138_ _g1612816141_)))))
          (_g1612616165_ _stx16124_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form15358_)
      (let ((_g1536315520_
             (lambda (_g1536415517_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1536415517_))))
        (let ((_g1536215527_ (lambda (_g1536415523_) ((lambda () '#f)))))
          (let ((_g1536115667_
                 (lambda (_g1536415530_)
                   (if (gx#stx-pair? _g1536415530_)
                       (let ((_e1548015532_ (gx#stx-e _g1536415530_)))
                         (let ((_hd1548115535_ (##car _e1548015532_))
                               (_tl1548215537_ (##cdr _e1548015532_)))
                           (if (gx#stx-pair? _tl1548215537_)
                               (let ((_e1548315540_ (gx#stx-e _tl1548215537_)))
                                 (let ((_hd1548415543_ (##car _e1548315540_))
                                       (_tl1548515545_ (##cdr _e1548315540_)))
                                   (if (gx#stx-pair? _hd1548415543_)
                                       (let ((_e1548615548_
                                              (gx#stx-e _hd1548415543_)))
                                         (let ((_hd1548715551_
                                                (##car _e1548615548_))
                                               (_tl1548815553_
                                                (##cdr _e1548615548_)))
                                           (if (gx#identifier? _hd1548715551_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1548715551_)
                                                   (if (gx#stx-pair?
                                                        _tl1548815553_)
                                                       (let ((_e1548915556_
                                                              (gx#stx-e
                                                               _tl1548815553_)))
                                                         (let ((_hd1549015559_
                                                                (##car _e1548915556_))
                                                               (_tl1549115561_
                                                                (##cdr _e1548915556_)))
                                                           (if (gx#stx-pair?
                                                                _hd1549015559_)
                                                               (let ((_e1549215564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1549015559_)))
                         (let ((_hd1549315567_ (##car _e1549215564_))
                               (_tl1549415569_ (##cdr _e1549215564_)))
                           (if (gx#identifier? _hd1549315567_)
                               (if (gx#stx-eq? '%#ref _hd1549315567_)
                                   (if (gx#stx-pair? _tl1549415569_)
                                       (let ((_e1549515572_
                                              (gx#stx-e _tl1549415569_)))
                                         (let ((_hd1549615575_
                                                (##car _e1549515572_))
                                               (_tl1549715577_
                                                (##cdr _e1549515572_)))
                                           (if (gx#stx-null? _tl1549715577_)
                                               (if (gx#stx-pair?
                                                    _tl1549115561_)
                                                   (let ((_e1549815580_
                                                          (gx#stx-e
                                                           _tl1549115561_)))
                                                     (let ((_hd1549915583_
                                                            (##car _e1549815580_))
                                                           (_tl1550015585_
                                                            (##cdr _e1549815580_)))
                                                       (if (gx#stx-pair?
                                                            _hd1549915583_)
                                                           (let ((_e1550115588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1549915583_)))
                     (let ((_hd1550215591_ (##car _e1550115588_))
                           (_tl1550315593_ (##cdr _e1550115588_)))
                       (if (gx#identifier? _hd1550215591_)
                           (if (gx#stx-eq? '%#ref _hd1550215591_)
                               (if (gx#stx-pair? _tl1550315593_)
                                   (let ((_e1550415596_
                                          (gx#stx-e _tl1550315593_)))
                                     (let ((_hd1550515599_
                                            (##car _e1550415596_))
                                           (_tl1550615601_
                                            (##cdr _e1550415596_)))
                                       (if (gx#stx-null? _tl1550615601_)
                                           (if (gx#stx-pair? _tl1550015585_)
                                               (let ((_e1550715604_
                                                      (gx#stx-e
                                                       _tl1550015585_)))
                                                 (let ((_hd1550815607_
                                                        (##car _e1550715604_))
                                                       (_tl1550915609_
                                                        (##cdr _e1550715604_)))
                                                   (if (gx#stx-pair?
                                                        _hd1550815607_)
                                                       (let ((_e1551015612_
                                                              (gx#stx-e
                                                               _hd1550815607_)))
                                                         (let ((_hd1551115615_
                                                                (##car _e1551015612_))
                                                               (_tl1551215617_
                                                                (##cdr _e1551015612_)))
                                                           (if (gx#identifier?
                                                                _hd1551115615_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1551115615_)
                           (if (gx#stx-pair? _tl1551215617_)
                               (let ((_e1551315620_ (gx#stx-e _tl1551215617_)))
                                 (let ((_hd1551415623_ (##car _e1551315620_))
                                       (_tl1551515625_ (##cdr _e1551315620_)))
                                   (if (gx#stx-null? _tl1551515625_)
                                       (if (gx#stx-null? _tl1550915609_)
                                           (if (gx#stx-null? _tl1548515545_)
                                               ((lambda (_L15628_
                                                         _L15629_
                                                         _L15630_
                                                         _L15631_)
                                                  (if (if (gx#identifier?
                                                           _L15631_)
                                                          (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15630_)
                           'apply)
                      (if (gx#free-identifier=? _L15631_ _L15628_)
                          (not (gx#free-identifier=? _L15629_ _L15631_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1536215527_ _g1536415530_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1551415623_
                                                _hd1550515599_
                                                _hd1549615575_
                                                _hd1548115535_)
                                               (_g1536215527_ _g1536415530_))
                                           (_g1536215527_ _g1536415530_))
                                       (_g1536215527_ _g1536415530_))))
                               (_g1536215527_ _g1536415530_))
                           (_g1536215527_ _g1536415530_))
                       (_g1536215527_ _g1536415530_))))
               (_g1536215527_ _g1536415530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1536215527_ _g1536415530_))
                                           (_g1536215527_ _g1536415530_))))
                                   (_g1536215527_ _g1536415530_))
                               (_g1536215527_ _g1536415530_))
                           (_g1536215527_ _g1536415530_))))
                   (_g1536215527_ _g1536415530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1536215527_
                                                    _g1536415530_))
                                               (_g1536215527_ _g1536415530_))))
                                       (_g1536215527_ _g1536415530_))
                                   (_g1536215527_ _g1536415530_))
                               (_g1536215527_ _g1536415530_))))
                       (_g1536215527_ _g1536415530_))))
               (_g1536215527_ _g1536415530_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1536215527_
                                                    _g1536415530_))
                                               (_g1536215527_ _g1536415530_))))
                                       (_g1536215527_ _g1536415530_))))
                               (_g1536215527_ _g1536415530_))))
                       (_g1536215527_ _g1536415530_)))))
            (let ((_g1536015927_
                   (lambda (_g1536415670_)
                     (if (gx#stx-pair? _g1536415670_)
                         (let ((_e1541615672_ (gx#stx-e _g1536415670_)))
                           (let ((_hd1541715675_ (##car _e1541615672_))
                                 (_tl1541815677_ (##cdr _e1541615672_)))
                             (if (gx#stx-pair/null? _hd1541715675_)
                                 (if (fx>= (gx#stx-length _hd1541715675_) '0)
                                     (let ((_g17209_
                                            (gx#syntax-split-splice
                                             _hd1541715675_
                                             '0)))
                                       (begin
                                         (let ((_g17210_
                                                (values-count _g17209_)))
                                           (if (not (fx= _g17210_ 2))
                                               (error "Context expects 2 values"
                                                      _g17210_)))
                                         (let ((_target1541915680_
                                                (values-ref _g17209_ 0))
                                               (_tl1542115682_
                                                (values-ref _g17209_ 1)))
                                           (letrec ((_loop1542215685_
                                                     (lambda (_hd1542015688_
                                                              _arg1542615690_)
                                                       (if (gx#stx-pair?
                                                            _hd1542015688_)
                                                           (let ((_e1542315693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1542015688_)))
                     (let ((_lp-hd1542415696_ (##car _e1542315693_))
                           (_lp-tl1542515698_ (##cdr _e1542315693_)))
                       (_loop1542215685_
                        _lp-tl1542515698_
                        (cons _lp-hd1542415696_ _arg1542615690_))))
                   (let ((_arg1542715701_ (reverse _arg1542615690_)))
                     (if (gx#stx-pair? _tl1541815677_)
                         (let ((_e1542815704_ (gx#stx-e _tl1541815677_)))
                           (let ((_hd1542915707_ (##car _e1542815704_))
                                 (_tl1543015709_ (##cdr _e1542815704_)))
                             (if (gx#stx-pair? _hd1542915707_)
                                 (let ((_e1543115712_
                                        (gx#stx-e _hd1542915707_)))
                                   (let ((_hd1543215715_ (##car _e1543115712_))
                                         (_tl1543315717_
                                          (##cdr _e1543115712_)))
                                     (if (gx#identifier? _hd1543215715_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1543215715_)
                                             (if (gx#stx-pair? _tl1543315717_)
                                                 (let ((_e1543415720_
                                                        (gx#stx-e
                                                         _tl1543315717_)))
                                                   (let ((_hd1543515723_
                                                          (##car _e1543415720_))
                                                         (_tl1543615725_
                                                          (##cdr _e1543415720_)))
                                                     (if (gx#stx-pair?
                                                          _hd1543515723_)
                                                         (let ((_e1543715728_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1543515723_)))
                   (let ((_hd1543815731_ (##car _e1543715728_))
                         (_tl1543915733_ (##cdr _e1543715728_)))
                     (if (gx#identifier? _hd1543815731_)
                         (if (gx#stx-eq? '%#ref _hd1543815731_)
                             (if (gx#stx-pair? _tl1543915733_)
                                 (let ((_e1544015736_
                                        (gx#stx-e _tl1543915733_)))
                                   (let ((_hd1544115739_ (##car _e1544015736_))
                                         (_tl1544215741_
                                          (##cdr _e1544015736_)))
                                     (if (gx#stx-null? _tl1544215741_)
                                         (if (gx#stx-pair? _tl1543615725_)
                                             (let ((_e1544315744_
                                                    (gx#stx-e _tl1543615725_)))
                                               (let ((_hd1544415747_
                                                      (##car _e1544315744_))
                                                     (_tl1544515749_
                                                      (##cdr _e1544315744_)))
                                                 (if (gx#stx-pair?
                                                      _hd1544415747_)
                                                     (let ((_e1544615752_
                                                            (gx#stx-e
                                                             _hd1544415747_)))
                                                       (let ((_hd1544715755_
                                                              (##car _e1544615752_))
                                                             (_tl1544815757_
                                                              (##cdr _e1544615752_)))
                                                         (if (gx#identifier?
                                                              _hd1544715755_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1544715755_)
                         (if (gx#stx-pair? _tl1544815757_)
                             (let ((_e1544915760_ (gx#stx-e _tl1544815757_)))
                               (let ((_hd1545015763_ (##car _e1544915760_))
                                     (_tl1545115765_ (##cdr _e1544915760_)))
                                 (if (gx#stx-null? _tl1545115765_)
                                     (if (gx#stx-pair/null? _tl1544515749_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1544515749_)
                                                   '1)
                                             (let ((_g17211_
                                                    (gx#syntax-split-splice
                                                     _tl1544515749_
                                                     '1)))
                                               (begin
                                                 (let ((_g17212_
                                                        (values-count
                                                         _g17211_)))
                                                   (if (not (fx= _g17212_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17212_)))
                                                 (let ((_target1545215768_
                                                        (values-ref
                                                         _g17211_
                                                         0))
                                                       (_tl1545415770_
                                                        (values-ref
                                                         _g17211_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1545415770_)
                                                       (let ((_e1546115773_
                                                              (gx#stx-e
                                                               _tl1545415770_)))
                                                         (let ((_hd1546215776_
                                                                (##car _e1546115773_))
                                                               (_tl1546315778_
                                                                (##cdr _e1546115773_)))
                                                           (if (gx#stx-pair?
                                                                _hd1546215776_)
                                                               (let ((_e1546415781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1546215776_)))
                         (let ((_hd1546515784_ (##car _e1546415781_))
                               (_tl1546615786_ (##cdr _e1546415781_)))
                           (if (gx#identifier? _hd1546515784_)
                               (if (gx#stx-eq? '%#ref _hd1546515784_)
                                   (if (gx#stx-pair? _tl1546615786_)
                                       (let ((_e1546715789_
                                              (gx#stx-e _tl1546615786_)))
                                         (let ((_hd1546815792_
                                                (##car _e1546715789_))
                                               (_tl1546915794_
                                                (##cdr _e1546715789_)))
                                           (if (gx#stx-null? _tl1546915794_)
                                               (if (gx#stx-null?
                                                    _tl1546315778_)
                                                   (letrec ((_loop1545515797_
                                                             (lambda (_hd1545315800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1545915802_)
                       (if (gx#stx-pair? _hd1545315800_)
                           (let ((_e1545615805_ (gx#stx-e _hd1545315800_)))
                             (let ((_lp-hd1545715808_ (##car _e1545615805_))
                                   (_lp-tl1545815810_ (##cdr _e1545615805_)))
                               (if (gx#stx-pair? _lp-hd1545715808_)
                                   (let ((_e1547015813_
                                          (gx#stx-e _lp-hd1545715808_)))
                                     (let ((_hd1547115816_
                                            (##car _e1547015813_))
                                           (_tl1547215818_
                                            (##cdr _e1547015813_)))
                                       (if (gx#identifier? _hd1547115816_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1547115816_)
                                               (if (gx#stx-pair?
                                                    _tl1547215818_)
                                                   (let ((_e1547315821_
                                                          (gx#stx-e
                                                           _tl1547215818_)))
                                                     (let ((_hd1547415824_
                                                            (##car _e1547315821_))
                                                           (_tl1547515826_
                                                            (##cdr _e1547315821_)))
                                                       (if (gx#stx-null?
                                                            _tl1547515826_)
                                                           (_loop1545515797_
                                                            _lp-tl1545815810_
                                                            (cons _hd1547415824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1545915802_))
                   (_g1536115667_ _g1536415670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1536115667_
                                                    _g1536415670_))
                                               (_g1536115667_ _g1536415670_))
                                           (_g1536115667_ _g1536415670_))))
                                   (_g1536115667_ _g1536415670_))))
                           (let ((_xarg1546015829_ (reverse _xarg1545915802_)))
                             (if (gx#stx-null? _tl1543015709_)
                                 ((lambda (_L15832_
                                           _L15833_
                                           _L15834_
                                           _L15835_
                                           _L15836_
                                           _L15837_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1588015883_
                                                               _g1588115885_)
                                                        (cons _g1588015883_
                                                              _g1588115885_))
                                                      '()
                                                      _L15837_)))
                                            (if (gx#identifier? _L15836_)
                                                (if (eq? (gxc#identifier-symbol
                                                          _L15835_)
                                                         'apply)
                                                    (if (fx= (gx#stx-length
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1588715890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1588815892_)
                                 (cons _g1588715890_ _g1588815892_))
                               '()
                               _L15837_)))
                     (gx#stx-length
                      (begin
                        '#!void
                        (foldr (lambda (_g1589415897_ _g1589515899_)
                                 (cons _g1589415897_ _g1589515899_))
                               '()
                               _L15833_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr (lambda (_g1590115904_ _g1590215906_)
                                       (cons _g1590115904_ _g1590215906_))
                                     '()
                                     _L15837_))
                            (begin
                              '#!void
                              (foldr (lambda (_g1590815911_ _g1590915913_)
                                       (cons _g1590815911_ _g1590915913_))
                                     '()
                                     _L15833_)))
                    (if (gx#free-identifier=? _L15836_ _L15832_)
                        (not (find (lambda (_g1591515917_)
                                     (gx#free-identifier=?
                                      _g1591515917_
                                      _L15834_))
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1591915922_
                                                     _g1592015924_)
                                              (cons _g1591915922_
                                                    _g1592015924_))
                                            (cons _L15836_ '())
                                            _L15837_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1536115667_ _g1536415670_)))
                                  _hd1546815792_
                                  _xarg1546015829_
                                  _hd1545015763_
                                  _hd1544115739_
                                  _tl1542115682_
                                  _arg1542715701_)
                                 (_g1536115667_ _g1536415670_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1545515797_
                                                      _target1545215768_
                                                      '()))
                                                   (_g1536115667_
                                                    _g1536415670_))
                                               (_g1536115667_ _g1536415670_))))
                                       (_g1536115667_ _g1536415670_))
                                   (_g1536115667_ _g1536415670_))
                               (_g1536115667_ _g1536415670_))))
                       (_g1536115667_ _g1536415670_))))
               (_g1536115667_ _g1536415670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1536115667_ _g1536415670_))
                                         (_g1536115667_ _g1536415670_))
                                     (_g1536115667_ _g1536415670_))))
                             (_g1536115667_ _g1536415670_))
                         (_g1536115667_ _g1536415670_))
                     (_g1536115667_ _g1536415670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1536115667_
                                                      _g1536415670_))))
                                             (_g1536115667_ _g1536415670_))
                                         (_g1536115667_ _g1536415670_))))
                                 (_g1536115667_ _g1536415670_))
                             (_g1536115667_ _g1536415670_))
                         (_g1536115667_ _g1536415670_))))
                 (_g1536115667_ _g1536415670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1536115667_ _g1536415670_))
                                             (_g1536115667_ _g1536415670_))
                                         (_g1536115667_ _g1536415670_))))
                                 (_g1536115667_ _g1536415670_))))
                         (_g1536115667_ _g1536415670_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1542215685_
                                              _target1541915680_
                                              '())))))
                                     (_g1536115667_ _g1536415670_))
                                 (_g1536115667_ _g1536415670_))))
                         (_g1536115667_ _g1536415670_)))))
              (let ((_g1535916121_
                     (lambda (_g1536415930_)
                       (if (gx#stx-pair? _g1536415930_)
                           (let ((_e1536815932_ (gx#stx-e _g1536415930_)))
                             (let ((_hd1536915935_ (##car _e1536815932_))
                                   (_tl1537015937_ (##cdr _e1536815932_)))
                               (if (gx#stx-pair/null? _hd1536915935_)
                                   (if (fx>= (gx#stx-length _hd1536915935_) '0)
                                       (let ((_g17213_
                                              (gx#syntax-split-splice
                                               _hd1536915935_
                                               '0)))
                                         (begin
                                           (let ((_g17214_
                                                  (values-count _g17213_)))
                                             (if (not (fx= _g17214_ 2))
                                                 (error "Context expects 2 values"
                                                        _g17214_)))
                                           (let ((_target1537115940_
                                                  (values-ref _g17213_ 0))
                                                 (_tl1537315942_
                                                  (values-ref _g17213_ 1)))
                                             (if (gx#stx-null? _tl1537315942_)
                                                 (letrec ((_loop1537415945_
                                                           (lambda (_hd1537215948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1537815950_)
                     (if (gx#stx-pair? _hd1537215948_)
                         (let ((_e1537515953_ (gx#stx-e _hd1537215948_)))
                           (let ((_lp-hd1537615956_ (##car _e1537515953_))
                                 (_lp-tl1537715958_ (##cdr _e1537515953_)))
                             (_loop1537415945_
                              _lp-tl1537715958_
                              (cons _lp-hd1537615956_ _arg1537815950_))))
                         (let ((_arg1537915961_ (reverse _arg1537815950_)))
                           (if (gx#stx-pair? _tl1537015937_)
                               (let ((_e1538015964_ (gx#stx-e _tl1537015937_)))
                                 (let ((_hd1538115967_ (##car _e1538015964_))
                                       (_tl1538215969_ (##cdr _e1538015964_)))
                                   (if (gx#stx-pair? _hd1538115967_)
                                       (let ((_e1538315972_
                                              (gx#stx-e _hd1538115967_)))
                                         (let ((_hd1538415975_
                                                (##car _e1538315972_))
                                               (_tl1538515977_
                                                (##cdr _e1538315972_)))
                                           (if (gx#identifier? _hd1538415975_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1538415975_)
                                                   (if (gx#stx-pair?
                                                        _tl1538515977_)
                                                       (let ((_e1538615980_
                                                              (gx#stx-e
                                                               _tl1538515977_)))
                                                         (let ((_hd1538715983_
                                                                (##car _e1538615980_))
                                                               (_tl1538815985_
                                                                (##cdr _e1538615980_)))
                                                           (if (gx#stx-pair?
                                                                _hd1538715983_)
                                                               (let ((_e1538915988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1538715983_)))
                         (let ((_hd1539015991_ (##car _e1538915988_))
                               (_tl1539115993_ (##cdr _e1538915988_)))
                           (if (gx#identifier? _hd1539015991_)
                               (if (gx#stx-eq? '%#ref _hd1539015991_)
                                   (if (gx#stx-pair? _tl1539115993_)
                                       (let ((_e1539215996_
                                              (gx#stx-e _tl1539115993_)))
                                         (let ((_hd1539315999_
                                                (##car _e1539215996_))
                                               (_tl1539416001_
                                                (##cdr _e1539215996_)))
                                           (if (gx#stx-null? _tl1539416001_)
                                               (if (gx#stx-pair/null?
                                                    _tl1538815985_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1538815985_)
                                                             '0)
                                                       (let ((_g17215_
                                                              (gx#syntax-split-splice
                                                               _tl1538815985_
                                                               '0)))
                                                         (begin
                                                           (let ((_g17216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g17215_)))
                     (if (not (fx= _g17216_ 2))
                         (error "Context expects 2 values" _g17216_)))
                   (let ((_target1539516004_ (values-ref _g17215_ 0))
                         (_tl1539716006_ (values-ref _g17215_ 1)))
                     (if (gx#stx-null? _tl1539716006_)
                         (letrec ((_loop1539816009_
                                   (lambda (_hd1539616012_ _xarg1540216014_)
                                     (if (gx#stx-pair? _hd1539616012_)
                                         (let ((_e1539916017_
                                                (gx#stx-e _hd1539616012_)))
                                           (let ((_lp-hd1540016020_
                                                  (##car _e1539916017_))
                                                 (_lp-tl1540116022_
                                                  (##cdr _e1539916017_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1540016020_)
                                                 (let ((_e1540416025_
                                                        (gx#stx-e
                                                         _lp-hd1540016020_)))
                                                   (let ((_hd1540516028_
                                                          (##car _e1540416025_))
                                                         (_tl1540616030_
                                                          (##cdr _e1540416025_)))
                                                     (if (gx#identifier?
                                                          _hd1540516028_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1540516028_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1540616030_)
                         (let ((_e1540716033_ (gx#stx-e _tl1540616030_)))
                           (let ((_hd1540816036_ (##car _e1540716033_))
                                 (_tl1540916038_ (##cdr _e1540716033_)))
                             (if (gx#stx-null? _tl1540916038_)
                                 (_loop1539816009_
                                  _lp-tl1540116022_
                                  (cons _hd1540816036_ _xarg1540216014_))
                                 (_g1536015927_ _g1536415930_))))
                         (_g1536015927_ _g1536415930_))
                     (_g1536015927_ _g1536415930_))
                 (_g1536015927_ _g1536415930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1536015927_
                                                  _g1536415930_))))
                                         (let ((_xarg1540316041_
                                                (reverse _xarg1540216014_)))
                                           (if (gx#stx-null? _tl1538215969_)
                                               ((lambda (_L16044_
                                                         _L16045_
                                                         _L16046_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1607416077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1607516079_)
                              (cons _g1607416077_ _g1607516079_))
                            '()
                            _L16046_)))
                  (if (fx= (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1608116084_ _g1608216086_)
                                       (cons _g1608116084_ _g1608216086_))
                                     '()
                                     _L16046_)))
                           (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1608816091_ _g1608916093_)
                                       (cons _g1608816091_ _g1608916093_))
                                     '()
                                     _L16044_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1609516098_
                                                    _g1609616100_)
                                             (cons _g1609516098_
                                                   _g1609616100_))
                                           '()
                                           _L16046_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1610216105_
                                                    _g1610316107_)
                                             (cons _g1610216105_
                                                   _g1610316107_))
                                           '()
                                           _L16044_)))
                          (not (find (lambda (_g1610916111_)
                                       (gx#free-identifier=?
                                        _g1610916111_
                                        _L16045_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1611316116_
                                                       _g1611416118_)
                                                (cons _g1611316116_
                                                      _g1611416118_))
                                              '()
                                              _L16046_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1536015927_ _g1536415930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1540316041_
                                                _hd1539315999_
                                                _arg1537915961_)
                                               (_g1536015927_
                                                _g1536415930_)))))))
                           (_loop1539816009_ _target1539516004_ '()))
                         (_g1536015927_ _g1536415930_)))))
               (_g1536015927_ _g1536415930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1536015927_
                                                    _g1536415930_))
                                               (_g1536015927_ _g1536415930_))))
                                       (_g1536015927_ _g1536415930_))
                                   (_g1536015927_ _g1536415930_))
                               (_g1536015927_ _g1536415930_))))
                       (_g1536015927_ _g1536415930_))))
               (_g1536015927_ _g1536415930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1536015927_
                                                    _g1536415930_))
                                               (_g1536015927_ _g1536415930_))))
                                       (_g1536015927_ _g1536415930_))))
                               (_g1536015927_ _g1536415930_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1537415945_
                                                    _target1537115940_
                                                    '()))
                                                 (_g1536015927_
                                                  _g1536415930_)))))
                                       (_g1536015927_ _g1536415930_))
                                   (_g1536015927_ _g1536415930_))))
                           (_g1536015927_ _g1536415930_)))))
                (_g1535916121_ _form15358_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form14826_)
      (let ((_g1483014954_
             (lambda (_g1483114951_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1483114951_))))
        (let ((_g1482915071_
               (lambda (_g1483114957_)
                 (if (gx#stx-pair? _g1483114957_)
                     (let ((_e1492014959_ (gx#stx-e _g1483114957_)))
                       (let ((_hd1492114962_ (##car _e1492014959_))
                             (_tl1492214964_ (##cdr _e1492014959_)))
                         (if (gx#stx-pair? _tl1492214964_)
                             (let ((_e1492314967_ (gx#stx-e _tl1492214964_)))
                               (let ((_hd1492414970_ (##car _e1492314967_))
                                     (_tl1492514972_ (##cdr _e1492314967_)))
                                 (if (gx#stx-pair? _hd1492414970_)
                                     (let ((_e1492614975_
                                            (gx#stx-e _hd1492414970_)))
                                       (let ((_hd1492714978_
                                              (##car _e1492614975_))
                                             (_tl1492814980_
                                              (##cdr _e1492614975_)))
                                         (if (gx#identifier? _hd1492714978_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1492714978_)
                                                 (if (gx#stx-pair?
                                                      _tl1492814980_)
                                                     (let ((_e1492914983_
                                                            (gx#stx-e
                                                             _tl1492814980_)))
                                                       (let ((_hd1493014986_
                                                              (##car _e1492914983_))
                                                             (_tl1493114988_
                                                              (##cdr _e1492914983_)))
                                                         (if (gx#stx-pair?
                                                              _hd1493014986_)
                                                             (let ((_e1493214991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1493014986_)))
                       (let ((_hd1493314994_ (##car _e1493214991_))
                             (_tl1493414996_ (##cdr _e1493214991_)))
                         (if (gx#identifier? _hd1493314994_)
                             (if (gx#stx-eq? '%#ref _hd1493314994_)
                                 (if (gx#stx-pair? _tl1493414996_)
                                     (let ((_e1493514999_
                                            (gx#stx-e _tl1493414996_)))
                                       (let ((_hd1493615002_
                                              (##car _e1493514999_))
                                             (_tl1493715004_
                                              (##cdr _e1493514999_)))
                                         (if (gx#stx-null? _tl1493715004_)
                                             (if (gx#stx-pair? _tl1493114988_)
                                                 (let ((_e1493815007_
                                                        (gx#stx-e
                                                         _tl1493114988_)))
                                                   (let ((_hd1493915010_
                                                          (##car _e1493815007_))
                                                         (_tl1494015012_
                                                          (##cdr _e1493815007_)))
                                                     (if (gx#stx-pair?
                                                          _hd1493915010_)
                                                         (let ((_e1494115015_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1493915010_)))
                   (let ((_hd1494215018_ (##car _e1494115015_))
                         (_tl1494315020_ (##cdr _e1494115015_)))
                     (if (gx#identifier? _hd1494215018_)
                         (if (gx#stx-eq? '%#ref _hd1494215018_)
                             (if (gx#stx-pair? _tl1494315020_)
                                 (let ((_e1494415023_
                                        (gx#stx-e _tl1494315020_)))
                                   (let ((_hd1494515026_ (##car _e1494415023_))
                                         (_tl1494615028_
                                          (##cdr _e1494415023_)))
                                     (if (gx#stx-null? _tl1494615028_)
                                         (if (gx#stx-pair? _tl1494015012_)
                                             (let ((_e1494715031_
                                                    (gx#stx-e _tl1494015012_)))
                                               (let ((_hd1494815034_
                                                      (##car _e1494715031_))
                                                     (_tl1494915036_
                                                      (##cdr _e1494715031_)))
                                                 (if (gx#stx-null?
                                                      _tl1494915036_)
                                                     (if (gx#stx-null?
                                                          _tl1492514972_)
                                                         ((lambda (_L15039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15040_
                           _L15041_)
                    (gxc#identifier-symbol _L15039_))
                  _hd1494515026_
                  _hd1493615002_
                  _hd1492114962_)
                 (_g1483014954_ _g1483114957_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1483014954_
                                                      _g1483114957_))))
                                             (_g1483014954_ _g1483114957_))
                                         (_g1483014954_ _g1483114957_))))
                                 (_g1483014954_ _g1483114957_))
                             (_g1483014954_ _g1483114957_))
                         (_g1483014954_ _g1483114957_))))
                 (_g1483014954_ _g1483114957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1483014954_ _g1483114957_))
                                             (_g1483014954_ _g1483114957_))))
                                     (_g1483014954_ _g1483114957_))
                                 (_g1483014954_ _g1483114957_))
                             (_g1483014954_ _g1483114957_))))
                     (_g1483014954_ _g1483114957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1483014954_
                                                      _g1483114957_))
                                                 (_g1483014954_ _g1483114957_))
                                             (_g1483014954_ _g1483114957_))))
                                     (_g1483014954_ _g1483114957_))))
                             (_g1483014954_ _g1483114957_))))
                     (_g1483014954_ _g1483114957_)))))
          (let ((_g1482815207_
                 (lambda (_g1483115074_)
                   (if (gx#stx-pair? _g1483115074_)
                       (let ((_e1488115076_ (gx#stx-e _g1483115074_)))
                         (let ((_hd1488215079_ (##car _e1488115076_))
                               (_tl1488315081_ (##cdr _e1488115076_)))
                           (if (gx#stx-pair/null? _hd1488215079_)
                               (if (fx>= (gx#stx-length _hd1488215079_) '0)
                                   (let ((_g17217_
                                          (gx#syntax-split-splice
                                           _hd1488215079_
                                           '0)))
                                     (begin
                                       (let ((_g17218_
                                              (values-count _g17217_)))
                                         (if (not (fx= _g17218_ 2))
                                             (error "Context expects 2 values"
                                                    _g17218_)))
                                       (let ((_target1488415084_
                                              (values-ref _g17217_ 0))
                                             (_tl1488615086_
                                              (values-ref _g17217_ 1)))
                                         (letrec ((_loop1488715089_
                                                   (lambda (_hd1488515092_
                                                            _arg1489115094_)
                                                     (if (gx#stx-pair?
                                                          _hd1488515092_)
                                                         (let ((_e1488815097_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1488515092_)))
                   (let ((_lp-hd1488915100_ (##car _e1488815097_))
                         (_lp-tl1489015102_ (##cdr _e1488815097_)))
                     (_loop1488715089_
                      _lp-tl1489015102_
                      (cons _lp-hd1488915100_ _arg1489115094_))))
                 (let ((_arg1489215105_ (reverse _arg1489115094_)))
                   (if (gx#stx-pair? _tl1488315081_)
                       (let ((_e1489315108_ (gx#stx-e _tl1488315081_)))
                         (let ((_hd1489415111_ (##car _e1489315108_))
                               (_tl1489515113_ (##cdr _e1489315108_)))
                           (if (gx#stx-pair? _hd1489415111_)
                               (let ((_e1489615116_ (gx#stx-e _hd1489415111_)))
                                 (let ((_hd1489715119_ (##car _e1489615116_))
                                       (_tl1489815121_ (##cdr _e1489615116_)))
                                   (if (gx#identifier? _hd1489715119_)
                                       (if (gx#stx-eq? '%#call _hd1489715119_)
                                           (if (gx#stx-pair? _tl1489815121_)
                                               (let ((_e1489915124_
                                                      (gx#stx-e
                                                       _tl1489815121_)))
                                                 (let ((_hd1490015127_
                                                        (##car _e1489915124_))
                                                       (_tl1490115129_
                                                        (##cdr _e1489915124_)))
                                                   (if (gx#stx-pair?
                                                        _hd1490015127_)
                                                       (let ((_e1490215132_
                                                              (gx#stx-e
                                                               _hd1490015127_)))
                                                         (let ((_hd1490315135_
                                                                (##car _e1490215132_))
                                                               (_tl1490415137_
                                                                (##cdr _e1490215132_)))
                                                           (if (gx#identifier?
                                                                _hd1490315135_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1490315135_)
                           (if (gx#stx-pair? _tl1490415137_)
                               (let ((_e1490515140_ (gx#stx-e _tl1490415137_)))
                                 (let ((_hd1490615143_ (##car _e1490515140_))
                                       (_tl1490715145_ (##cdr _e1490515140_)))
                                   (if (gx#stx-null? _tl1490715145_)
                                       (if (gx#stx-pair? _tl1490115129_)
                                           (let ((_e1490815148_
                                                  (gx#stx-e _tl1490115129_)))
                                             (let ((_hd1490915151_
                                                    (##car _e1490815148_))
                                                   (_tl1491015153_
                                                    (##cdr _e1490815148_)))
                                               (if (gx#stx-pair?
                                                    _hd1490915151_)
                                                   (let ((_e1491115156_
                                                          (gx#stx-e
                                                           _hd1490915151_)))
                                                     (let ((_hd1491215159_
                                                            (##car _e1491115156_))
                                                           (_tl1491315161_
                                                            (##cdr _e1491115156_)))
                                                       (if (gx#identifier?
                                                            _hd1491215159_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1491215159_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1491315161_)
                           (let ((_e1491415164_ (gx#stx-e _tl1491315161_)))
                             (let ((_hd1491515167_ (##car _e1491415164_))
                                   (_tl1491615169_ (##cdr _e1491415164_)))
                               (if (gx#stx-null? _tl1491615169_)
                                   (if (gx#stx-null? _tl1489515113_)
                                       ((lambda (_L15172_
                                                 _L15173_
                                                 _L15174_
                                                 _L15175_)
                                          (gxc#identifier-symbol _L15172_))
                                        _hd1491515167_
                                        _hd1490615143_
                                        _tl1488615086_
                                        _arg1489215105_)
                                       (_g1482915071_ _g1483115074_))
                                   (_g1482915071_ _g1483115074_))))
                           (_g1482915071_ _g1483115074_))
                       (_g1482915071_ _g1483115074_))
                   (_g1482915071_ _g1483115074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1482915071_
                                                    _g1483115074_))))
                                           (_g1482915071_ _g1483115074_))
                                       (_g1482915071_ _g1483115074_))))
                               (_g1482915071_ _g1483115074_))
                           (_g1482915071_ _g1483115074_))
                       (_g1482915071_ _g1483115074_))))
               (_g1482915071_ _g1483115074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1482915071_ _g1483115074_))
                                           (_g1482915071_ _g1483115074_))
                                       (_g1482915071_ _g1483115074_))))
                               (_g1482915071_ _g1483115074_))))
                       (_g1482915071_ _g1483115074_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1488715089_
                                            _target1488415084_
                                            '())))))
                                   (_g1482915071_ _g1483115074_))
                               (_g1482915071_ _g1483115074_))))
                       (_g1482915071_ _g1483115074_)))))
            (let ((_g1482715355_
                   (lambda (_g1483115210_)
                     (if (gx#stx-pair? _g1483115210_)
                         (let ((_e1483515212_ (gx#stx-e _g1483115210_)))
                           (let ((_hd1483615215_ (##car _e1483515212_))
                                 (_tl1483715217_ (##cdr _e1483515212_)))
                             (if (gx#stx-pair/null? _hd1483615215_)
                                 (if (fx>= (gx#stx-length _hd1483615215_) '0)
                                     (let ((_g17219_
                                            (gx#syntax-split-splice
                                             _hd1483615215_
                                             '0)))
                                       (begin
                                         (let ((_g17220_
                                                (values-count _g17219_)))
                                           (if (not (fx= _g17220_ 2))
                                               (error "Context expects 2 values"
                                                      _g17220_)))
                                         (let ((_target1483815220_
                                                (values-ref _g17219_ 0))
                                               (_tl1484015222_
                                                (values-ref _g17219_ 1)))
                                           (if (gx#stx-null? _tl1484015222_)
                                               (letrec ((_loop1484115225_
                                                         (lambda (_hd1483915228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1484515230_)
                   (if (gx#stx-pair? _hd1483915228_)
                       (let ((_e1484215233_ (gx#stx-e _hd1483915228_)))
                         (let ((_lp-hd1484315236_ (##car _e1484215233_))
                               (_lp-tl1484415238_ (##cdr _e1484215233_)))
                           (_loop1484115225_
                            _lp-tl1484415238_
                            (cons _lp-hd1484315236_ _arg1484515230_))))
                       (let ((_arg1484615241_ (reverse _arg1484515230_)))
                         (if (gx#stx-pair? _tl1483715217_)
                             (let ((_e1484715244_ (gx#stx-e _tl1483715217_)))
                               (let ((_hd1484815247_ (##car _e1484715244_))
                                     (_tl1484915249_ (##cdr _e1484715244_)))
                                 (if (gx#stx-pair? _hd1484815247_)
                                     (let ((_e1485015252_
                                            (gx#stx-e _hd1484815247_)))
                                       (let ((_hd1485115255_
                                              (##car _e1485015252_))
                                             (_tl1485215257_
                                              (##cdr _e1485015252_)))
                                         (if (gx#identifier? _hd1485115255_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1485115255_)
                                                 (if (gx#stx-pair?
                                                      _tl1485215257_)
                                                     (let ((_e1485315260_
                                                            (gx#stx-e
                                                             _tl1485215257_)))
                                                       (let ((_hd1485415263_
                                                              (##car _e1485315260_))
                                                             (_tl1485515265_
                                                              (##cdr _e1485315260_)))
                                                         (if (gx#stx-pair?
                                                              _hd1485415263_)
                                                             (let ((_e1485615268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1485415263_)))
                       (let ((_hd1485715271_ (##car _e1485615268_))
                             (_tl1485815273_ (##cdr _e1485615268_)))
                         (if (gx#identifier? _hd1485715271_)
                             (if (gx#stx-eq? '%#ref _hd1485715271_)
                                 (if (gx#stx-pair? _tl1485815273_)
                                     (let ((_e1485915276_
                                            (gx#stx-e _tl1485815273_)))
                                       (let ((_hd1486015279_
                                              (##car _e1485915276_))
                                             (_tl1486115281_
                                              (##cdr _e1485915276_)))
                                         (if (gx#stx-null? _tl1486115281_)
                                             (if (gx#stx-pair/null?
                                                  _tl1485515265_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1485515265_)
                                                           '0)
                                                     (let ((_g17221_
                                                            (gx#syntax-split-splice
                                                             _tl1485515265_
                                                             '0)))
                                                       (begin
                                                         (let ((_g17222_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g17221_)))
                   (if (not (fx= _g17222_ 2))
                       (error "Context expects 2 values" _g17222_)))
                 (let ((_target1486215284_ (values-ref _g17221_ 0))
                       (_tl1486415286_ (values-ref _g17221_ 1)))
                   (if (gx#stx-null? _tl1486415286_)
                       (letrec ((_loop1486515289_
                                 (lambda (_hd1486315292_ _xarg1486915294_)
                                   (if (gx#stx-pair? _hd1486315292_)
                                       (let ((_e1486615297_
                                              (gx#stx-e _hd1486315292_)))
                                         (let ((_lp-hd1486715300_
                                                (##car _e1486615297_))
                                               (_lp-tl1486815302_
                                                (##cdr _e1486615297_)))
                                           (if (gx#stx-pair? _lp-hd1486715300_)
                                               (let ((_e1487115305_
                                                      (gx#stx-e
                                                       _lp-hd1486715300_)))
                                                 (let ((_hd1487215308_
                                                        (##car _e1487115305_))
                                                       (_tl1487315310_
                                                        (##cdr _e1487115305_)))
                                                   (if (gx#identifier?
                                                        _hd1487215308_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1487215308_)
                                                           (if (gx#stx-pair?
                                                                _tl1487315310_)
                                                               (let ((_e1487415313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1487315310_)))
                         (let ((_hd1487515316_ (##car _e1487415313_))
                               (_tl1487615318_ (##cdr _e1487415313_)))
                           (if (gx#stx-null? _tl1487615318_)
                               (_loop1486515289_
                                _lp-tl1486815302_
                                (cons _hd1487515316_ _xarg1486915294_))
                               (_g1482815207_ _g1483115210_))))
                       (_g1482815207_ _g1483115210_))
                   (_g1482815207_ _g1483115210_))
               (_g1482815207_ _g1483115210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1482815207_ _g1483115210_))))
                                       (let ((_xarg1487015321_
                                              (reverse _xarg1486915294_)))
                                         (if (gx#stx-null? _tl1484915249_)
                                             ((lambda (_L15324_
                                                       _L15325_
                                                       _L15326_)
                                                (gxc#identifier-symbol
                                                 _L15325_))
                                              _xarg1487015321_
                                              _hd1486015279_
                                              _arg1484615241_)
                                             (_g1482815207_
                                              _g1483115210_)))))))
                         (_loop1486515289_ _target1486215284_ '()))
                       (_g1482815207_ _g1483115210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1482815207_
                                                      _g1483115210_))
                                                 (_g1482815207_ _g1483115210_))
                                             (_g1482815207_ _g1483115210_))))
                                     (_g1482815207_ _g1483115210_))
                                 (_g1482815207_ _g1483115210_))
                             (_g1482815207_ _g1483115210_))))
                     (_g1482815207_ _g1483115210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1482815207_
                                                      _g1483115210_))
                                                 (_g1482815207_ _g1483115210_))
                                             (_g1482815207_ _g1483115210_))))
                                     (_g1482815207_ _g1483115210_))))
                             (_g1482815207_ _g1483115210_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1484115225_
                                                  _target1483815220_
                                                  '()))
                                               (_g1482815207_
                                                _g1483115210_)))))
                                     (_g1482815207_ _g1483115210_))
                                 (_g1482815207_ _g1483115210_))))
                         (_g1482815207_ _g1483115210_)))))
              (_g1482715355_ _form14826_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form14669_)
      (let ((_g1467314704_
             (lambda (_g1467414701_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1467414701_))))
        (let ((_g1467214717_
               (lambda (_g1467414707_)
                 ((lambda (_L14709_) (cons '0 '())) _g1467414707_))))
          (let ((_g1467114766_
                 (lambda (_g1467414720_)
                   (if (gx#stx-pair/null? _g1467414720_)
                       (if (fx>= (gx#stx-length _g1467414720_) '0)
                           (let ((_g17223_
                                  (gx#syntax-split-splice _g1467414720_ '0)))
                             (begin
                               (let ((_g17224_ (values-count _g17223_)))
                                 (if (not (fx= _g17224_ 2))
                                     (error "Context expects 2 values"
                                            _g17224_)))
                               (let ((_target1469014722_
                                      (values-ref _g17223_ 0))
                                     (_tl1469214724_ (values-ref _g17223_ 1)))
                                 (letrec ((_loop1469314727_
                                           (lambda (_hd1469114730_
                                                    _arg1469714732_)
                                             (if (gx#stx-pair? _hd1469114730_)
                                                 (let ((_e1469414735_
                                                        (gx#stx-e
                                                         _hd1469114730_)))
                                                   (let ((_lp-hd1469514738_
                                                          (##car _e1469414735_))
                                                         (_lp-tl1469614740_
                                                          (##cdr _e1469414735_)))
                                                     (_loop1469314727_
                                                      _lp-tl1469614740_
                                                      (cons _lp-hd1469514738_
                                                            _arg1469714732_))))
                                                 (let ((_arg1469814743_
                                                        (reverse _arg1469714732_)))
                                                   ((lambda (_L14746_ _L14747_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1475814761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1475914763_)
                                (cons _g1475814761_ _g1475914763_))
                              '()
                              _L14747_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1469214724_
                                                    _arg1469814743_))))))
                                   (_loop1469314727_
                                    _target1469014722_
                                    '())))))
                           (_g1467214717_ _g1467414720_))
                       (_g1467214717_ _g1467414720_)))))
            (let ((_g1467014823_
                   (lambda (_g1467414769_)
                     (if (gx#stx-pair? _g1467414769_)
                         (let ((_e1467614771_ (gx#stx-e _g1467414769_)))
                           (let ((_hd1467714774_ (##car _e1467614771_))
                                 (_tl1467814776_ (##cdr _e1467614771_)))
                             (if (gx#stx-pair/null? _hd1467714774_)
                                 (if (fx>= (gx#stx-length _hd1467714774_) '0)
                                     (let ((_g17225_
                                            (gx#syntax-split-splice
                                             _hd1467714774_
                                             '0)))
                                       (begin
                                         (let ((_g17226_
                                                (values-count _g17225_)))
                                           (if (not (fx= _g17226_ 2))
                                               (error "Context expects 2 values"
                                                      _g17226_)))
                                         (let ((_target1467914779_
                                                (values-ref _g17225_ 0))
                                               (_tl1468114781_
                                                (values-ref _g17225_ 1)))
                                           (if (gx#stx-null? _tl1468114781_)
                                               (letrec ((_loop1468214784_
                                                         (lambda (_hd1468014787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1468614789_)
                   (if (gx#stx-pair? _hd1468014787_)
                       (let ((_e1468314792_ (gx#stx-e _hd1468014787_)))
                         (let ((_lp-hd1468414795_ (##car _e1468314792_))
                               (_lp-tl1468514797_ (##cdr _e1468314792_)))
                           (_loop1468214784_
                            _lp-tl1468514797_
                            (cons _lp-hd1468414795_ _arg1468614789_))))
                       (let ((_arg1468714800_ (reverse _arg1468614789_)))
                         ((lambda (_L14803_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1481514818_ _g1481614820_)
                                        (cons _g1481514818_ _g1481614820_))
                                      '()
                                      _L14803_))))
                          _arg1468714800_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1468214784_
                                                  _target1467914779_
                                                  '()))
                                               (_g1467114766_
                                                _g1467414769_)))))
                                     (_g1467114766_ _g1467414769_))
                                 (_g1467114766_ _g1467414769_))))
                         (_g1467114766_ _g1467414769_)))))
              (_g1467014823_ _form14669_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx13942_)
      (let ((_lambda-expr?13944_
             (lambda (_expr14622_)
               (let ((_g1462514635_
                      (lambda (_g1462614632_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1462614632_))))
                 (let ((_g1462414642_
                        (lambda (_g1462614638_) ((lambda () '#f)))))
                   (let ((_g1462314666_
                          (lambda (_g1462614645_)
                            (if (gx#stx-pair? _g1462614645_)
                                (let ((_e1462814647_ (gx#stx-e _g1462614645_)))
                                  (let ((_hd1462914650_ (##car _e1462814647_))
                                        (_tl1463014652_ (##cdr _e1462814647_)))
                                    (if (gx#identifier? _hd1462914650_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1462914650_)
                                            ((lambda (_L14655_) '#t)
                                             _tl1463014652_)
                                            (_g1462414642_ _g1462614645_))
                                        (_g1462414642_ _g1462614645_))))
                                (_g1462414642_ _g1462614645_)))))
                     (_g1462314666_ _expr14622_)))))))
        (let ((_case-lambda-expr?13945_
               (lambda (_expr14575_)
                 (let ((_g1457814588_
                        (lambda (_g1457914585_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1457914585_))))
                   (let ((_g1457714595_
                          (lambda (_g1457914591_) ((lambda () '#f)))))
                     (let ((_g1457614619_
                            (lambda (_g1457914598_)
                              (if (gx#stx-pair? _g1457914598_)
                                  (let ((_e1458114600_
                                         (gx#stx-e _g1457914598_)))
                                    (let ((_hd1458214603_
                                           (##car _e1458114600_))
                                          (_tl1458314605_
                                           (##cdr _e1458114600_)))
                                      (if (gx#identifier? _hd1458214603_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1458214603_)
                                              ((lambda (_L14608_) '#t)
                                               _tl1458314605_)
                                              (_g1457714595_ _g1457914598_))
                                          (_g1457714595_ _g1457914598_))))
                                  (_g1457714595_ _g1457914598_)))))
                       (_g1457614619_ _expr14575_)))))))
          (let ((_lift-case-lambda-clauses13946_
                 (lambda (_id14336_ _clauses14337_)
                   ((letrec ((_lp14339_
                              (lambda (_rest14341_
                                       _ids14342_
                                       _impls14343_
                                       _clauses14344_)
                                (let ((_rest1434514353_ _rest14341_))
                                  (let ((_E1434814357_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1434514353_))))
                                    (let ((_else1434714361_
                                           (lambda ()
                                             (values (reverse _ids14342_)
                                                     (reverse _impls14343_)
                                                     (reverse _clauses14344_)))))
                                      (let ((_K1434914563_
                                             (lambda (_rest14364_
                                                      _clause14365_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause14365_)
                                                   (_lp14339_
                                                    _rest14364_
                                                    _ids14342_
                                                    _impls14343_
                                                    (cons _clause14365_
                                                          _clauses14344_))
                                                   (let ((_g1436714378_
                                                          (lambda (_g1436814375_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1436814375_))))
                                                     (let ((_g1436614560_
                                                            (lambda (_g1436814381_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1436814381_)
                          (let ((_e1437114383_ (gx#stx-e _g1436814381_)))
                            (let ((_hd1437214386_ (##car _e1437114383_))
                                  (_tl1437314388_ (##cdr _e1437114383_)))
                              ((lambda (_L14391_ _L14392_)
                                 (let ((_id14409_
                                        (make-symbol
                                         (gx#stx-e _id14336_)
                                         '"__"
                                         (length _clauses14344_))))
                                   (let ((_impl14411_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L14392_ _L14391_))
                                           _stx13942_)))
                                     (let ((_clause14557_
                                            (let ((_g1441514443_
                                                   (lambda (_g1441614440_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1441614440_))))
                                              (let ((_g1441414458_
                                                     (lambda (_g1441614446_)
                                                       ((lambda (_L14448_)
                                                          (cons _L14392_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id14409_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L14448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx13942_)
                              '())))
                _g1441614446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1441314507_
                                                       (lambda (_g1441614461_)
                                                         (if (gx#stx-pair/null?
                                                              _g1441614461_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1441614461_)
                               '0)
                         (let ((_g17229_
                                (gx#syntax-split-splice _g1441614461_ '0)))
                           (begin
                             (let ((_g17230_ (values-count _g17229_)))
                               (if (not (fx= _g17230_ 2))
                                   (error "Context expects 2 values"
                                          _g17230_)))
                             (let ((_target1442914463_ (values-ref _g17229_ 0))
                                   (_tl1443114465_ (values-ref _g17229_ 1)))
                               (letrec ((_loop1443214468_
                                         (lambda (_hd1443014471_
                                                  _arg1443614473_)
                                           (if (gx#stx-pair? _hd1443014471_)
                                               (let ((_e1443314476_
                                                      (gx#stx-e
                                                       _hd1443014471_)))
                                                 (let ((_lp-hd1443414479_
                                                        (##car _e1443314476_))
                                                       (_lp-tl1443514481_
                                                        (##cdr _e1443314476_)))
                                                   (_loop1443214468_
                                                    _lp-tl1443514481_
                                                    (cons _lp-hd1443414479_
                                                          _arg1443614473_))))
                                               (let ((_arg1443714484_
                                                      (reverse _arg1443614473_)))
                                                 ((lambda (_L14487_ _L14488_)
                                                    (cons _L14392_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id14409_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L14487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1449914502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1450014504_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1449914502_ '()))
                           _g1450014504_))
                   '()
                   _L14488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx13942_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1443114465_
                                                  _arg1443714484_))))))
                                 (_loop1443214468_ _target1442914463_ '())))))
                         (_g1441414458_ _g1441614461_))
                     (_g1441414458_ _g1441614461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1441214554_
                                                         (lambda (_g1441614510_)
                                                           (if (gx#stx-pair/null?
                                                                _g1441614510_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1441614510_)
                                 '0)
                           (let ((_g17231_
                                  (gx#syntax-split-splice _g1441614510_ '0)))
                             (begin
                               (let ((_g17232_ (values-count _g17231_)))
                                 (if (not (fx= _g17232_ 2))
                                     (error "Context expects 2 values"
                                            _g17232_)))
                               (let ((_target1441814512_
                                      (values-ref _g17231_ 0))
                                     (_tl1442014514_ (values-ref _g17231_ 1)))
                                 (if (gx#stx-null? _tl1442014514_)
                                     (letrec ((_loop1442114517_
                                               (lambda (_hd1441914520_
                                                        _arg1442514522_)
                                                 (if (gx#stx-pair?
                                                      _hd1441914520_)
                                                     (let ((_e1442214525_
                                                            (gx#stx-e
                                                             _hd1441914520_)))
                                                       (let ((_lp-hd1442314528_
                                                              (##car _e1442214525_))
                                                             (_lp-tl1442414530_
                                                              (##cdr _e1442214525_)))
                                                         (_loop1442114517_
                                                          _lp-tl1442414530_
                                                          (cons _lp-hd1442314528_
                                                                _arg1442514522_))))
                                                     (let ((_arg1442614533_
                                                            (reverse _arg1442514522_)))
                                                       ((lambda (_L14536_)
                                                          (cons _L14392_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id14409_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1454614549_
                                                             _g1454714551_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1454614549_ '()))
                    _g1454714551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L14536_))))
                               _stx13942_)
                              '())))
                _arg1442614533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1442114517_
                                        _target1441814512_
                                        '()))
                                     (_g1441314507_ _g1441614510_)))))
                           (_g1441314507_ _g1441614510_))
                       (_g1441314507_ _g1441614510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1441214554_
                                                     _L14392_)))))))
                                       (let ()
                                         (_lp14339_
                                          _rest14364_
                                          (cons _id14409_ _ids14342_)
                                          (cons _impl14411_ _impls14343_)
                                          (cons _clause14557_
                                                _clauses14344_)))))))
                               _tl1437314388_
                               _hd1437214386_)))
                          (_g1436714378_ _g1436814381_)))))
               (_g1436614560_ _clause14365_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1434514353_)
                                            (let ((_hd1435014566_
                                                   (##car _rest1434514353_))
                                                  (_tl1435114568_
                                                   (##cdr _rest1434514353_)))
                                              (let ((_clause14571_
                                                     _hd1435014566_))
                                                (let ((_rest14573_
                                                       _tl1435114568_))
                                                  (_K1434914563_
                                                   _rest14573_
                                                   _clause14571_))))
                                            (_else1434714361_)))))))))
                      _lp14339_)
                    _clauses14337_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def13947_
                   (lambda (_id14333_ _impl14334_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id14333_ '()) (cons _impl14334_ '())))
                      _stx13942_))))
              (let ((_g1395214026_
                     (lambda (_g1395314023_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1395314023_))))
                (let ((_g1395114033_
                       (lambda (_g1395314029_) ((lambda () _stx13942_)))))
                  (let ((_g1395014169_
                         (lambda (_g1395314036_)
                           (if (gx#stx-pair? _g1395314036_)
                               (let ((_e1398914038_ (gx#stx-e _g1395314036_)))
                                 (let ((_hd1399014041_ (##car _e1398914038_))
                                       (_tl1399114043_ (##cdr _e1398914038_)))
                                   (if (gx#stx-pair? _tl1399114043_)
                                       (let ((_e1399214046_
                                              (gx#stx-e _tl1399114043_)))
                                         (let ((_hd1399314049_
                                                (##car _e1399214046_))
                                               (_tl1399414051_
                                                (##cdr _e1399214046_)))
                                           (if (gx#stx-pair? _hd1399314049_)
                                               (let ((_e1399514054_
                                                      (gx#stx-e
                                                       _hd1399314049_)))
                                                 (let ((_hd1399614057_
                                                        (##car _e1399514054_))
                                                       (_tl1399714059_
                                                        (##cdr _e1399514054_)))
                                                   (if (gx#stx-null?
                                                        _tl1399714059_)
                                                       (if (gx#stx-pair?
                                                            _tl1399414051_)
                                                           (let ((_e1399814062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1399414051_)))
                     (let ((_hd1399914065_ (##car _e1399814062_))
                           (_tl1400014067_ (##cdr _e1399814062_)))
                       (if (gx#stx-pair? _hd1399914065_)
                           (let ((_e1400114070_ (gx#stx-e _hd1399914065_)))
                             (let ((_hd1400214073_ (##car _e1400114070_))
                                   (_tl1400314075_ (##cdr _e1400114070_)))
                               (if (gx#identifier? _hd1400214073_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1400214073_)
                                       (if (gx#stx-pair? _tl1400314075_)
                                           (let ((_e1400414078_
                                                  (gx#stx-e _tl1400314075_)))
                                             (let ((_hd1400514081_
                                                    (##car _e1400414078_))
                                                   (_tl1400614083_
                                                    (##cdr _e1400414078_)))
                                               (if (gx#stx-pair?
                                                    _hd1400514081_)
                                                   (let ((_e1400714086_
                                                          (gx#stx-e
                                                           _hd1400514081_)))
                                                     (let ((_hd1400814089_
                                                            (##car _e1400714086_))
                                                           (_tl1400914091_
                                                            (##cdr _e1400714086_)))
                                                       (if (gx#stx-pair?
                                                            _hd1400814089_)
                                                           (let ((_e1401014094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1400814089_)))
                     (let ((_hd1401114097_ (##car _e1401014094_))
                           (_tl1401214099_ (##cdr _e1401014094_)))
                       (if (gx#stx-pair? _hd1401114097_)
                           (let ((_e1401314102_ (gx#stx-e _hd1401114097_)))
                             (let ((_hd1401414105_ (##car _e1401314102_))
                                   (_tl1401514107_ (##cdr _e1401314102_)))
                               (if (gx#stx-null? _tl1401514107_)
                                   (if (gx#stx-pair? _tl1401214099_)
                                       (let ((_e1401614110_
                                              (gx#stx-e _tl1401214099_)))
                                         (let ((_hd1401714113_
                                                (##car _e1401614110_))
                                               (_tl1401814115_
                                                (##cdr _e1401614110_)))
                                           (if (gx#stx-null? _tl1401814115_)
                                               (if (gx#stx-null?
                                                    _tl1400914091_)
                                                   (if (gx#stx-pair?
                                                        _tl1400614083_)
                                                       (let ((_e1401914118_
                                                              (gx#stx-e
                                                               _tl1400614083_)))
                                                         (let ((_hd1402014121_
                                                                (##car _e1401914118_))
                                                               (_tl1402114123_
                                                                (##cdr _e1401914118_)))
                                                           (if (gx#stx-null?
                                                                _tl1402114123_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1400014067_)
                           ((lambda (_L14126_ _L14127_ _L14128_ _L14129_)
                              (if (if (gx#identifier? _L14129_)
                                      (if (gx#identifier? _L14128_)
                                          (if (_lambda-expr?13944_ _L14127_)
                                              (_case-lambda-expr?13945_
                                               _L14126_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id14164_
                                         (make-symbol
                                          (gx#stx-e _L14129_)
                                          '"__"
                                          (gx#stx-e _L14128_))))
                                    (let ((_new-case-lambda-expr14166_
                                           (gxc#apply-expression-subst
                                            _L14126_
                                            _L14128_
                                            _lambda-id14164_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L14129_)
                                           '" => "
                                           _lambda-id14164_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id14164_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id14164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L14127_ '())))
                _stx13942_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L14129_ '())
                                   (cons _new-case-lambda-expr14166_ '())))
                       _stx13942_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx13942_)))))
                                  (_g1395114033_ _g1395314036_)))
                            _hd1402014121_
                            _hd1401714113_
                            _hd1401414105_
                            _hd1399614057_)
                           (_g1395114033_ _g1395314036_))
                       (_g1395114033_ _g1395314036_))))
               (_g1395114033_ _g1395314036_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1395114033_
                                                    _g1395314036_))
                                               (_g1395114033_ _g1395314036_))))
                                       (_g1395114033_ _g1395314036_))
                                   (_g1395114033_ _g1395314036_))))
                           (_g1395114033_ _g1395314036_))))
                   (_g1395114033_ _g1395314036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1395114033_
                                                    _g1395314036_))))
                                           (_g1395114033_ _g1395314036_))
                                       (_g1395114033_ _g1395314036_))
                                   (_g1395114033_ _g1395314036_))))
                           (_g1395114033_ _g1395314036_))))
                   (_g1395114033_ _g1395314036_))
               (_g1395114033_ _g1395314036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1395114033_ _g1395314036_))))
                                       (_g1395114033_ _g1395314036_))))
                               (_g1395114033_ _g1395314036_)))))
                    (let ((_g1394914266_
                           (lambda (_g1395314172_)
                             (if (gx#stx-pair? _g1395314172_)
                                 (let ((_e1397314174_
                                        (gx#stx-e _g1395314172_)))
                                   (let ((_hd1397414177_ (##car _e1397314174_))
                                         (_tl1397514179_
                                          (##cdr _e1397314174_)))
                                     (if (gx#stx-pair? _tl1397514179_)
                                         (let ((_e1397614182_
                                                (gx#stx-e _tl1397514179_)))
                                           (let ((_hd1397714185_
                                                  (##car _e1397614182_))
                                                 (_tl1397814187_
                                                  (##cdr _e1397614182_)))
                                             (if (gx#stx-pair? _hd1397714185_)
                                                 (let ((_e1397914190_
                                                        (gx#stx-e
                                                         _hd1397714185_)))
                                                   (let ((_hd1398014193_
                                                          (##car _e1397914190_))
                                                         (_tl1398114195_
                                                          (##cdr _e1397914190_)))
                                                     (if (gx#stx-null?
                                                          _tl1398114195_)
                                                         (if (gx#stx-pair?
                                                              _tl1397814187_)
                                                             (let ((_e1398214198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1397814187_)))
                       (let ((_hd1398314201_ (##car _e1398214198_))
                             (_tl1398414203_ (##cdr _e1398214198_)))
                         (if (gx#stx-null? _tl1398414203_)
                             ((lambda (_L14206_ _L14207_)
                                (if (if (gx#identifier? _L14207_)
                                        (_case-lambda-expr?13945_ _L14206_)
                                        '#f)
                                    (let ((_g1422314233_
                                           (lambda (_g1422414230_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1422414230_))))
                                      (let ((_g1422214263_
                                             (lambda (_g1422414236_)
                                               (if (gx#stx-pair? _g1422414236_)
                                                   (let ((_e1422614238_
                                                          (gx#stx-e
                                                           _g1422414236_)))
                                                     (let ((_hd1422714241_
                                                            (##car _e1422614238_))
                                                           (_tl1422814243_
                                                            (##cdr _e1422614238_)))
                                                       ((lambda (_L14246_)
                                                          (let ((_g17227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses13946_ _L14207_ _L14246_)))
                    (begin
                      (let ((_g17228_ (values-count _g17227_)))
                        (if (not (fx= _g17228_ 3))
                            (error "Context expects 3 values" _g17228_)))
                      (let ((_ids14256_ (values-ref _g17227_ 0))
                            (_impls14257_ (values-ref _g17227_ 1))
                            (_clauses14258_ (values-ref _g17227_ 2)))
                        (let ((_defs14260_
                               (map _case-lambda-clause-def13947_
                                    _ids14256_
                                    _impls14257_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L14207_)
                               '" => "
                               _ids14256_)
                              (for-each gx#core-bind-runtime! _ids14256_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L14207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses14258_)
                              _L14206_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx13942_)
                                                  '())
                                            _defs14260_))
                               _stx13942_))))))))
                _tl1422814243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1422314233_
                                                    _g1422414236_)))))
                                        (_g1422214263_ _L14206_)))
                                    (_g1395014169_ _g1395314172_)))
                              _hd1398314201_
                              _hd1398014193_)
                             (_g1395014169_ _g1395314172_))))
                     (_g1395014169_ _g1395314172_))
                 (_g1395014169_ _g1395314172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1395014169_
                                                  _g1395314172_))))
                                         (_g1395014169_ _g1395314172_))))
                                 (_g1395014169_ _g1395314172_)))))
                      (let ((_g1394814330_
                             (lambda (_g1395314269_)
                               (if (gx#stx-pair? _g1395314269_)
                                   (let ((_e1395614271_
                                          (gx#stx-e _g1395314269_)))
                                     (let ((_hd1395714274_
                                            (##car _e1395614271_))
                                           (_tl1395814276_
                                            (##cdr _e1395614271_)))
                                       (if (gx#stx-pair? _tl1395814276_)
                                           (let ((_e1395914279_
                                                  (gx#stx-e _tl1395814276_)))
                                             (let ((_hd1396014282_
                                                    (##car _e1395914279_))
                                                   (_tl1396114284_
                                                    (##cdr _e1395914279_)))
                                               (if (gx#stx-pair?
                                                    _hd1396014282_)
                                                   (let ((_e1396214287_
                                                          (gx#stx-e
                                                           _hd1396014282_)))
                                                     (let ((_hd1396314290_
                                                            (##car _e1396214287_))
                                                           (_tl1396414292_
                                                            (##cdr _e1396214287_)))
                                                       (if (gx#stx-null?
                                                            _tl1396414292_)
                                                           (if (gx#stx-pair?
                                                                _tl1396114284_)
                                                               (let ((_e1396514295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1396114284_)))
                         (let ((_hd1396614298_ (##car _e1396514295_))
                               (_tl1396714300_ (##cdr _e1396514295_)))
                           (if (gx#stx-pair? _hd1396614298_)
                               (let ((_e1396814303_ (gx#stx-e _hd1396614298_)))
                                 (let ((_hd1396914306_ (##car _e1396814303_))
                                       (_tl1397014308_ (##cdr _e1396814303_)))
                                   (if (gx#identifier? _hd1396914306_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1396914306_)
                                           (if (gx#stx-null? _tl1396714300_)
                                               ((lambda (_L14311_ _L14312_)
                                                  (if (if (gx#identifier?
                                                           _L14312_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14311_)
                  '#f)
              _stx13942_
              (_g1394914266_ _g1395314269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1397014308_
                                                _hd1396314290_)
                                               (_g1394914266_ _g1395314269_))
                                           (_g1394914266_ _g1395314269_))
                                       (_g1394914266_ _g1395314269_))))
                               (_g1394914266_ _g1395314269_))))
                       (_g1394914266_ _g1395314269_))
                   (_g1394914266_ _g1395314269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1394914266_
                                                    _g1395314269_))))
                                           (_g1394914266_ _g1395314269_))))
                                   (_g1394914266_ _g1395314269_)))))
                        (_g1394814330_ _stx13942_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx13880_ _id13881_ _new-id13882_)
      (let ((_g1388513898_
             (lambda (_g1388613895_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1388613895_))))
        (let ((_g1388413905_
               (lambda (_g1388613901_) ((lambda () _stx13880_)))))
          (let ((_g1388313939_
                 (lambda (_g1388613908_)
                   (if (gx#stx-pair? _g1388613908_)
                       (let ((_e1388813910_ (gx#stx-e _g1388613908_)))
                         (let ((_hd1388913913_ (##car _e1388813910_))
                               (_tl1389013915_ (##cdr _e1388813910_)))
                           (if (gx#stx-pair? _tl1389013915_)
                               (let ((_e1389113918_ (gx#stx-e _tl1389013915_)))
                                 (let ((_hd1389213921_ (##car _e1389113918_))
                                       (_tl1389313923_ (##cdr _e1389113918_)))
                                   (if (gx#stx-null? _tl1389313923_)
                                       ((lambda (_L13926_)
                                          (if (gx#free-identifier=?
                                               _L13926_
                                               _id13881_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id13882_ '()))
                                               _stx13880_)
                                              (_g1388413905_ _g1388613908_)))
                                        _hd1389213921_)
                                       (_g1388413905_ _g1388613908_))))
                               (_g1388413905_ _g1388613908_))))
                       (_g1388413905_ _g1388613908_)))))
            (_g1388313939_ _stx13880_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx13785_)
      (let ((_g1378813808_
             (lambda (_g1378913805_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1378913805_))))
        (let ((_g1378713815_ (lambda (_g1378913811_) ((lambda () '#!void)))))
          (let ((_g1378613877_
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
                                           (if (gx#stx-null? _tl1380013841_)
                                               (if (gx#stx-pair?
                                                    _tl1379713833_)
                                                   (let ((_e1380113844_
                                                          (gx#stx-e
                                                           _tl1379713833_)))
                                                     (let ((_hd1380213847_
                                                            (##car _e1380113844_))
                                                           (_tl1380313849_
                                                            (##cdr _e1380113844_)))
                                                       (if (gx#stx-null?
                                                            _tl1380313849_)
                                                           ((lambda (_L13852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L13853_)
                      (let ((_type1387013872_
                             (gxc#apply-basic-expression-type _L13852_)))
                        (if _type1387013872_
                            (let ((_type13875_ _type1387013872_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L13853_)
                               _type13875_))
                            '#f)))
                    _hd1380213847_
                    _hd1379913839_)
                   (_g1378713815_ _g1378913818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1378713815_
                                                    _g1378913818_))
                                               (_g1378713815_ _g1378913818_))))
                                       (_g1378713815_ _g1378913818_))))
                               (_g1378713815_ _g1378913818_))))
                       (_g1378713815_ _g1378913818_)))))
            (_g1378613877_ _stx13785_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13339_)
      (let ((_g1334313445_
             (lambda (_g1334413442_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1334413442_))))
        (let ((_g1334213452_ (lambda (_g1334413448_) ((lambda () '#!void)))))
          (let ((_g1334113602_
                 (lambda (_g1334413455_)
                   (if (gx#stx-pair? _g1334413455_)
                       (let ((_e1340213457_ (gx#stx-e _g1334413455_)))
                         (let ((_hd1340313460_ (##car _e1340213457_))
                               (_tl1340413462_ (##cdr _e1340213457_)))
                           (if (gx#stx-pair? _tl1340413462_)
                               (let ((_e1340513465_ (gx#stx-e _tl1340413462_)))
                                 (let ((_hd1340613468_ (##car _e1340513465_))
                                       (_tl1340713470_ (##cdr _e1340513465_)))
                                   (if (gx#stx-pair? _hd1340613468_)
                                       (let ((_e1340813473_
                                              (gx#stx-e _hd1340613468_)))
                                         (let ((_hd1340913476_
                                                (##car _e1340813473_))
                                               (_tl1341013478_
                                                (##cdr _e1340813473_)))
                                           (if (gx#identifier? _hd1340913476_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1340913476_)
                                                   (if (gx#stx-pair?
                                                        _tl1341013478_)
                                                       (let ((_e1341113481_
                                                              (gx#stx-e
                                                               _tl1341013478_)))
                                                         (let ((_hd1341213484_
                                                                (##car _e1341113481_))
                                                               (_tl1341313486_
                                                                (##cdr _e1341113481_)))
                                                           (if (gx#stx-null?
                                                                _tl1341313486_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1340713470_)
                           (let ((_e1341413489_ (gx#stx-e _tl1340713470_)))
                             (let ((_hd1341513492_ (##car _e1341413489_))
                                   (_tl1341613494_ (##cdr _e1341413489_)))
                               (if (gx#stx-pair? _hd1341513492_)
                                   (let ((_e1341713497_
                                          (gx#stx-e _hd1341513492_)))
                                     (let ((_hd1341813500_
                                            (##car _e1341713497_))
                                           (_tl1341913502_
                                            (##cdr _e1341713497_)))
                                       (if (gx#identifier? _hd1341813500_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1341813500_)
                                               (if (gx#stx-pair?
                                                    _tl1341913502_)
                                                   (let ((_e1342013505_
                                                          (gx#stx-e
                                                           _tl1341913502_)))
                                                     (let ((_hd1342113508_
                                                            (##car _e1342013505_))
                                                           (_tl1342213510_
                                                            (##cdr _e1342013505_)))
                                                       (if (gx#stx-null?
                                                            _tl1342213510_)
                                                           (if (gx#stx-pair?
                                                                _tl1341613494_)
                                                               (let ((_e1342313513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1341613494_)))
                         (let ((_hd1342413516_ (##car _e1342313513_))
                               (_tl1342513518_ (##cdr _e1342313513_)))
                           (if (gx#stx-pair? _hd1342413516_)
                               (let ((_e1342613521_ (gx#stx-e _hd1342413516_)))
                                 (let ((_hd1342713524_ (##car _e1342613521_))
                                       (_tl1342813526_ (##cdr _e1342613521_)))
                                   (if (gx#identifier? _hd1342713524_)
                                       (if (gx#stx-eq? '%#quote _hd1342713524_)
                                           (if (gx#stx-pair? _tl1342813526_)
                                               (let ((_e1342913529_
                                                      (gx#stx-e
                                                       _tl1342813526_)))
                                                 (let ((_hd1343013532_
                                                        (##car _e1342913529_))
                                                       (_tl1343113534_
                                                        (##cdr _e1342913529_)))
                                                   (if (gx#stx-null?
                                                        _tl1343113534_)
                                                       (if (gx#stx-pair?
                                                            _tl1342513518_)
                                                           (let ((_e1343213537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1342513518_)))
                     (let ((_hd1343313540_ (##car _e1343213537_))
                           (_tl1343413542_ (##cdr _e1343213537_)))
                       (if (gx#stx-pair? _hd1343313540_)
                           (let ((_e1343513545_ (gx#stx-e _hd1343313540_)))
                             (let ((_hd1343613548_ (##car _e1343513545_))
                                   (_tl1343713550_ (##cdr _e1343513545_)))
                               (if (gx#identifier? _hd1343613548_)
                                   (if (gx#stx-eq? '%#ref _hd1343613548_)
                                       (if (gx#stx-pair? _tl1343713550_)
                                           (let ((_e1343813553_
                                                  (gx#stx-e _tl1343713550_)))
                                             (let ((_hd1343913556_
                                                    (##car _e1343813553_))
                                                   (_tl1344013558_
                                                    (##cdr _e1343813553_)))
                                               (if (gx#stx-null?
                                                    _tl1344013558_)
                                                   (if (gx#stx-null?
                                                        _tl1343413542_)
                                                       ((lambda (_L13561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13562_
                         _L13563_
                         _L13564_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda16983
                       (gxc#identifier-symbol _L13563_)
                       (gx#stx-e _L13562_)
                       (gxc#identifier-symbol _L13561_)
                       '#f)
                      (_g1334213452_ _g1334413455_)))
                _hd1343913556_
                _hd1343013532_
                _hd1342113508_
                _hd1341213484_)
               (_g1334213452_ _g1334413455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1334213452_
                                                    _g1334413455_))))
                                           (_g1334213452_ _g1334413455_))
                                       (_g1334213452_ _g1334413455_))
                                   (_g1334213452_ _g1334413455_))))
                           (_g1334213452_ _g1334413455_))))
                   (_g1334213452_ _g1334413455_))
               (_g1334213452_ _g1334413455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1334213452_ _g1334413455_))
                                           (_g1334213452_ _g1334413455_))
                                       (_g1334213452_ _g1334413455_))))
                               (_g1334213452_ _g1334413455_))))
                       (_g1334213452_ _g1334413455_))
                   (_g1334213452_ _g1334413455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1334213452_
                                                    _g1334413455_))
                                               (_g1334213452_ _g1334413455_))
                                           (_g1334213452_ _g1334413455_))))
                                   (_g1334213452_ _g1334413455_))))
                           (_g1334213452_ _g1334413455_))
                       (_g1334213452_ _g1334413455_))))
               (_g1334213452_ _g1334413455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1334213452_
                                                    _g1334413455_))
                                               (_g1334213452_ _g1334413455_))))
                                       (_g1334213452_ _g1334413455_))))
                               (_g1334213452_ _g1334413455_))))
                       (_g1334213452_ _g1334413455_)))))
            (let ((_g1334013782_
                   (lambda (_g1334413605_)
                     (if (gx#stx-pair? _g1334413605_)
                         (let ((_e1335013607_ (gx#stx-e _g1334413605_)))
                           (let ((_hd1335113610_ (##car _e1335013607_))
                                 (_tl1335213612_ (##cdr _e1335013607_)))
                             (if (gx#stx-pair? _tl1335213612_)
                                 (let ((_e1335313615_
                                        (gx#stx-e _tl1335213612_)))
                                   (let ((_hd1335413618_ (##car _e1335313615_))
                                         (_tl1335513620_
                                          (##cdr _e1335313615_)))
                                     (if (gx#stx-pair? _hd1335413618_)
                                         (let ((_e1335613623_
                                                (gx#stx-e _hd1335413618_)))
                                           (let ((_hd1335713626_
                                                  (##car _e1335613623_))
                                                 (_tl1335813628_
                                                  (##cdr _e1335613623_)))
                                             (if (gx#identifier?
                                                  _hd1335713626_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1335713626_)
                                                     (if (gx#stx-pair?
                                                          _tl1335813628_)
                                                         (let ((_e1335913631_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1335813628_)))
                   (let ((_hd1336013634_ (##car _e1335913631_))
                         (_tl1336113636_ (##cdr _e1335913631_)))
                     (if (gx#stx-null? _tl1336113636_)
                         (if (gx#stx-pair? _tl1335513620_)
                             (let ((_e1336213639_ (gx#stx-e _tl1335513620_)))
                               (let ((_hd1336313642_ (##car _e1336213639_))
                                     (_tl1336413644_ (##cdr _e1336213639_)))
                                 (if (gx#stx-pair? _hd1336313642_)
                                     (let ((_e1336513647_
                                            (gx#stx-e _hd1336313642_)))
                                       (let ((_hd1336613650_
                                              (##car _e1336513647_))
                                             (_tl1336713652_
                                              (##cdr _e1336513647_)))
                                         (if (gx#identifier? _hd1336613650_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1336613650_)
                                                 (if (gx#stx-pair?
                                                      _tl1336713652_)
                                                     (let ((_e1336813655_
                                                            (gx#stx-e
                                                             _tl1336713652_)))
                                                       (let ((_hd1336913658_
                                                              (##car _e1336813655_))
                                                             (_tl1337013660_
                                                              (##cdr _e1336813655_)))
                                                         (if (gx#stx-null?
                                                              _tl1337013660_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1336413644_)
                         (let ((_e1337113663_ (gx#stx-e _tl1336413644_)))
                           (let ((_hd1337213666_ (##car _e1337113663_))
                                 (_tl1337313668_ (##cdr _e1337113663_)))
                             (if (gx#stx-pair? _hd1337213666_)
                                 (let ((_e1337413671_
                                        (gx#stx-e _hd1337213666_)))
                                   (let ((_hd1337513674_ (##car _e1337413671_))
                                         (_tl1337613676_
                                          (##cdr _e1337413671_)))
                                     (if (gx#identifier? _hd1337513674_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1337513674_)
                                             (if (gx#stx-pair? _tl1337613676_)
                                                 (let ((_e1337713679_
                                                        (gx#stx-e
                                                         _tl1337613676_)))
                                                   (let ((_hd1337813682_
                                                          (##car _e1337713679_))
                                                         (_tl1337913684_
                                                          (##cdr _e1337713679_)))
                                                     (if (gx#stx-null?
                                                          _tl1337913684_)
                                                         (if (gx#stx-pair?
                                                              _tl1337313668_)
                                                             (let ((_e1338013687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1337313668_)))
                       (let ((_hd1338113690_ (##car _e1338013687_))
                             (_tl1338213692_ (##cdr _e1338013687_)))
                         (if (gx#stx-pair? _hd1338113690_)
                             (let ((_e1338313695_ (gx#stx-e _hd1338113690_)))
                               (let ((_hd1338413698_ (##car _e1338313695_))
                                     (_tl1338513700_ (##cdr _e1338313695_)))
                                 (if (gx#identifier? _hd1338413698_)
                                     (if (gx#stx-eq? '%#ref _hd1338413698_)
                                         (if (gx#stx-pair? _tl1338513700_)
                                             (let ((_e1338613703_
                                                    (gx#stx-e _tl1338513700_)))
                                               (let ((_hd1338713706_
                                                      (##car _e1338613703_))
                                                     (_tl1338813708_
                                                      (##cdr _e1338613703_)))
                                                 (if (gx#stx-null?
                                                      _tl1338813708_)
                                                     (if (gx#stx-pair?
                                                          _tl1338213692_)
                                                         (let ((_e1338913711_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1338213692_)))
                   (let ((_hd1339013714_ (##car _e1338913711_))
                         (_tl1339113716_ (##cdr _e1338913711_)))
                     (if (gx#stx-pair? _hd1339013714_)
                         (let ((_e1339213719_ (gx#stx-e _hd1339013714_)))
                           (let ((_hd1339313722_ (##car _e1339213719_))
                                 (_tl1339413724_ (##cdr _e1339213719_)))
                             (if (gx#identifier? _hd1339313722_)
                                 (if (gx#stx-eq? '%#quote _hd1339313722_)
                                     (if (gx#stx-pair? _tl1339413724_)
                                         (let ((_e1339513727_
                                                (gx#stx-e _tl1339413724_)))
                                           (let ((_hd1339613730_
                                                  (##car _e1339513727_))
                                                 (_tl1339713732_
                                                  (##cdr _e1339513727_)))
                                             (if (gx#stx-null? _tl1339713732_)
                                                 (if (gx#stx-null?
                                                      _tl1339113716_)
                                                     ((lambda (_L13735_
                                                               _L13736_
                                                               _L13737_
                                                               _L13738_
                                                               _L13739_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13739_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda16983
                     (gxc#identifier-symbol _L13738_)
                     (gx#stx-e _L13737_)
                     (gxc#identifier-symbol _L13736_)
                     (gx#stx-e _L13735_))
                    (_g1334113602_ _g1334413605_)))
              _hd1339613730_
              _hd1338713706_
              _hd1337813682_
              _hd1336913658_
              _hd1336013634_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1334113602_
                                                      _g1334413605_))
                                                 (_g1334113602_
                                                  _g1334413605_))))
                                         (_g1334113602_ _g1334413605_))
                                     (_g1334113602_ _g1334413605_))
                                 (_g1334113602_ _g1334413605_))))
                         (_g1334113602_ _g1334413605_))))
                 (_g1334113602_ _g1334413605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1334113602_
                                                      _g1334413605_))))
                                             (_g1334113602_ _g1334413605_))
                                         (_g1334113602_ _g1334413605_))
                                     (_g1334113602_ _g1334413605_))))
                             (_g1334113602_ _g1334413605_))))
                     (_g1334113602_ _g1334413605_))
                 (_g1334113602_ _g1334413605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1334113602_ _g1334413605_))
                                             (_g1334113602_ _g1334413605_))
                                         (_g1334113602_ _g1334413605_))))
                                 (_g1334113602_ _g1334413605_))))
                         (_g1334113602_ _g1334413605_))
                     (_g1334113602_ _g1334413605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1334113602_
                                                      _g1334413605_))
                                                 (_g1334113602_ _g1334413605_))
                                             (_g1334113602_ _g1334413605_))))
                                     (_g1334113602_ _g1334413605_))))
                             (_g1334113602_ _g1334413605_))
                         (_g1334113602_ _g1334413605_))))
                 (_g1334113602_ _g1334413605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1334113602_
                                                      _g1334413605_))
                                                 (_g1334113602_
                                                  _g1334413605_))))
                                         (_g1334113602_ _g1334413605_))))
                                 (_g1334113602_ _g1334413605_))))
                         (_g1334113602_ _g1334413605_)))))
              (_g1334013782_ _stx13339_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13279_)
      (let ((_g1328213295_
             (lambda (_g1328313292_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1328313292_))))
        (let ((_g1328113302_ (lambda (_g1328313298_) ((lambda () '#f)))))
          (let ((_g1328013336_
                 (lambda (_g1328313305_)
                   (if (gx#stx-pair? _g1328313305_)
                       (let ((_e1328513307_ (gx#stx-e _g1328313305_)))
                         (let ((_hd1328613310_ (##car _e1328513307_))
                               (_tl1328713312_ (##cdr _e1328513307_)))
                           (if (gx#stx-pair? _tl1328713312_)
                               (let ((_e1328813315_ (gx#stx-e _tl1328713312_)))
                                 (let ((_hd1328913318_ (##car _e1328813315_))
                                       (_tl1329013320_ (##cdr _e1328813315_)))
                                   (if (gx#stx-null? _tl1329013320_)
                                       ((lambda (_L13323_)
                                          (gxc#compile-e _L13323_))
                                        _hd1328913318_)
                                       (_g1328113302_ _g1328313305_))))
                               (_g1328113302_ _g1328313305_))))
                       (_g1328113302_ _g1328313305_)))))
            (_g1328013336_ _stx13279_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12704_)
      (let ((_g1270912830_
             (lambda (_g1271012827_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1271012827_))))
        (let ((_g1270812837_ (lambda (_g1271012833_) ((lambda () '#f)))))
          (let ((_g1270712861_
                 (lambda (_g1271012840_)
                   (if (gx#stx-pair? _g1271012840_)
                       (let ((_e1282312842_ (gx#stx-e _g1271012840_)))
                         (let ((_hd1282412845_ (##car _e1282312842_))
                               (_tl1282512847_ (##cdr _e1282312842_)))
                           ((lambda (_L12850_)
                              (if (gxc#dispatch-lambda-form? _L12850_)
                                  (let ((__obj17197
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj17197
                                       'lambda
                                       (gxc#lambda-form-arity _L12850_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L12850_))
                                      __obj17197))
                                  (_g1270812837_ _g1271012840_)))
                            _tl1282512847_)))
                       (_g1270812837_ _g1271012840_)))))
            (let ((_g1270613091_
                   (lambda (_g1271012864_)
                     (if (gx#stx-pair? _g1271012864_)
                         (let ((_e1276812866_ (gx#stx-e _g1271012864_)))
                           (let ((_hd1276912869_ (##car _e1276812866_))
                                 (_tl1277012871_ (##cdr _e1276812866_)))
                             (if (gx#stx-pair? _tl1277012871_)
                                 (let ((_e1277112874_
                                        (gx#stx-e _tl1277012871_)))
                                   (let ((_hd1277212877_ (##car _e1277112874_))
                                         (_tl1277312879_
                                          (##cdr _e1277112874_)))
                                     (if (gx#stx-pair/null? _hd1277212877_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1277212877_)
                                                   '0)
                                             (let ((_g17233_
                                                    (gx#syntax-split-splice
                                                     _hd1277212877_
                                                     '0)))
                                               (begin
                                                 (let ((_g17234_
                                                        (values-count
                                                         _g17233_)))
                                                   (if (not (fx= _g17234_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17234_)))
                                                 (let ((_target1277412882_
                                                        (values-ref
                                                         _g17233_
                                                         0))
                                                       (_tl1277612884_
                                                        (values-ref
                                                         _g17233_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1277612884_)
                                                       (letrec ((_loop1277712887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1277512890_ _arg1278112892_)
                           (if (gx#stx-pair? _hd1277512890_)
                               (let ((_e1277812895_ (gx#stx-e _hd1277512890_)))
                                 (let ((_lp-hd1277912898_
                                        (##car _e1277812895_))
                                       (_lp-tl1278012900_
                                        (##cdr _e1277812895_)))
                                   (_loop1277712887_
                                    _lp-tl1278012900_
                                    (cons _lp-hd1277912898_ _arg1278112892_))))
                               (let ((_arg1278212903_
                                      (reverse _arg1278112892_)))
                                 (if (gx#stx-pair? _tl1277312879_)
                                     (let ((_e1278312906_
                                            (gx#stx-e _tl1277312879_)))
                                       (let ((_hd1278412909_
                                              (##car _e1278312906_))
                                             (_tl1278512911_
                                              (##cdr _e1278312906_)))
                                         (if (gx#stx-pair? _hd1278412909_)
                                             (let ((_e1278612914_
                                                    (gx#stx-e _hd1278412909_)))
                                               (let ((_hd1278712917_
                                                      (##car _e1278612914_))
                                                     (_tl1278812919_
                                                      (##cdr _e1278612914_)))
                                                 (if (gx#identifier?
                                                      _hd1278712917_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1278712917_)
                                                         (if (gx#stx-pair?
                                                              _tl1278812919_)
                                                             (let ((_e1278912922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1278812919_)))
                       (let ((_hd1279012925_ (##car _e1278912922_))
                             (_tl1279112927_ (##cdr _e1278912922_)))
                         (if (gx#stx-pair? _hd1279012925_)
                             (let ((_e1279212930_ (gx#stx-e _hd1279012925_)))
                               (let ((_hd1279312933_ (##car _e1279212930_))
                                     (_tl1279412935_ (##cdr _e1279212930_)))
                                 (if (gx#identifier? _hd1279312933_)
                                     (if (gx#stx-eq? '%#ref _hd1279312933_)
                                         (if (gx#stx-pair? _tl1279412935_)
                                             (let ((_e1279512938_
                                                    (gx#stx-e _tl1279412935_)))
                                               (let ((_hd1279612941_
                                                      (##car _e1279512938_))
                                                     (_tl1279712943_
                                                      (##cdr _e1279512938_)))
                                                 (if (gx#stx-null?
                                                      _tl1279712943_)
                                                     (if (gx#stx-pair?
                                                          _tl1279112927_)
                                                         (let ((_e1279812946_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1279112927_)))
                   (let ((_hd1279912949_ (##car _e1279812946_))
                         (_tl1280012951_ (##cdr _e1279812946_)))
                     (if (gx#stx-pair? _hd1279912949_)
                         (let ((_e1280112954_ (gx#stx-e _hd1279912949_)))
                           (let ((_hd1280212957_ (##car _e1280112954_))
                                 (_tl1280312959_ (##cdr _e1280112954_)))
                             (if (gx#identifier? _hd1280212957_)
                                 (if (gx#stx-eq? '%#ref _hd1280212957_)
                                     (if (gx#stx-pair? _tl1280312959_)
                                         (let ((_e1280412962_
                                                (gx#stx-e _tl1280312959_)))
                                           (let ((_hd1280512965_
                                                  (##car _e1280412962_))
                                                 (_tl1280612967_
                                                  (##cdr _e1280412962_)))
                                             (if (gx#stx-null? _tl1280612967_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1280012951_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1280012951_)
                                                               '0)
                                                         (let ((_g17235_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1280012951_
                         '0)))
                   (begin
                     (let ((_g17236_ (values-count _g17235_)))
                       (if (not (fx= _g17236_ 2))
                           (error "Context expects 2 values" _g17236_)))
                     (let ((_target1280712970_ (values-ref _g17235_ 0))
                           (_tl1280912972_ (values-ref _g17235_ 1)))
                       (if (gx#stx-null? _tl1280912972_)
                           (letrec ((_loop1281012975_
                                     (lambda (_hd1280812978_ _xarg1281412980_)
                                       (if (gx#stx-pair? _hd1280812978_)
                                           (let ((_e1281112983_
                                                  (gx#stx-e _hd1280812978_)))
                                             (let ((_lp-hd1281212986_
                                                    (##car _e1281112983_))
                                                   (_lp-tl1281312988_
                                                    (##cdr _e1281112983_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1281212986_)
                                                   (let ((_e1281612991_
                                                          (gx#stx-e
                                                           _lp-hd1281212986_)))
                                                     (let ((_hd1281712994_
                                                            (##car _e1281612991_))
                                                           (_tl1281812996_
                                                            (##cdr _e1281612991_)))
                                                       (if (gx#identifier?
                                                            _hd1281712994_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1281712994_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1281812996_)
                           (let ((_e1281912999_ (gx#stx-e _tl1281812996_)))
                             (let ((_hd1282013002_ (##car _e1281912999_))
                                   (_tl1282113004_ (##cdr _e1281912999_)))
                               (if (gx#stx-null? _tl1282113004_)
                                   (_loop1281012975_
                                    _lp-tl1281312988_
                                    (cons _hd1282013002_ _xarg1281412980_))
                                   (_g1270712861_ _g1271012864_))))
                           (_g1270712861_ _g1271012864_))
                       (_g1270712861_ _g1271012864_))
                   (_g1270712861_ _g1271012864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1270712861_
                                                    _g1271012864_))))
                                           (let ((_xarg1281513007_
                                                  (reverse _xarg1281412980_)))
                                             (if (gx#stx-null? _tl1278512911_)
                                                 ((lambda (_L13010_
                                                           _L13011_
                                                           _L13012_
                                                           _L13013_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1305013053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1305113055_)
                                (cons _g1305013053_ _g1305113055_))
                              '()
                              _L13013_)))
                    (if (eq? (gxc#identifier-symbol _L13012_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1305713060_
                                                           _g1305813062_)
                                                    (cons _g1305713060_
                                                          _g1305813062_))
                                                  '()
                                                  _L13013_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1306413067_
                                                           _g1306513069_)
                                                    (cons _g1306413067_
                                                          _g1306513069_))
                                                  '()
                                                  _L13010_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1307113074_
                                                      _g1307213076_)
                                               (cons _g1307113074_
                                                     _g1307213076_))
                                             '()
                                             _L13013_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1307813081_
                                                      _g1307913083_)
                                               (cons _g1307813081_
                                                     _g1307913083_))
                                             '()
                                             _L13010_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13086_ (gxc#identifier-symbol _L13011_)))
                  (let ((_type13088_
                         (gxc#optimizer-resolve-type _type-t13086_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13088_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13086_)
                          '#f))))
                (_g1270712861_ _g1271012864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1281513007_
                                                  _hd1280512965_
                                                  _hd1279612941_
                                                  _arg1278212903_)
                                                 (_g1270712861_
                                                  _g1271012864_)))))))
                             (_loop1281012975_ _target1280712970_ '()))
                           (_g1270712861_ _g1271012864_)))))
                 (_g1270712861_ _g1271012864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1270712861_
                                                      _g1271012864_))
                                                 (_g1270712861_
                                                  _g1271012864_))))
                                         (_g1270712861_ _g1271012864_))
                                     (_g1270712861_ _g1271012864_))
                                 (_g1270712861_ _g1271012864_))))
                         (_g1270712861_ _g1271012864_))))
                 (_g1270712861_ _g1271012864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1270712861_
                                                      _g1271012864_))))
                                             (_g1270712861_ _g1271012864_))
                                         (_g1270712861_ _g1271012864_))
                                     (_g1270712861_ _g1271012864_))))
                             (_g1270712861_ _g1271012864_))))
                     (_g1270712861_ _g1271012864_))
                 (_g1270712861_ _g1271012864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1270712861_
                                                      _g1271012864_))))
                                             (_g1270712861_ _g1271012864_))))
                                     (_g1270712861_ _g1271012864_)))))))
                 (_loop1277712887_ _target1277412882_ '()))
               (_g1270712861_ _g1271012864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1270712861_ _g1271012864_))
                                         (_g1270712861_ _g1271012864_))))
                                 (_g1270712861_ _g1271012864_))))
                         (_g1270712861_ _g1271012864_)))))
              (let ((_g1270513276_
                     (lambda (_g1271013094_)
                       (if (gx#stx-pair? _g1271013094_)
                           (let ((_e1271613096_ (gx#stx-e _g1271013094_)))
                             (let ((_hd1271713099_ (##car _e1271613096_))
                                   (_tl1271813101_ (##cdr _e1271613096_)))
                               (if (gx#stx-pair? _tl1271813101_)
                                   (let ((_e1271913104_
                                          (gx#stx-e _tl1271813101_)))
                                     (let ((_hd1272013107_
                                            (##car _e1271913104_))
                                           (_tl1272113109_
                                            (##cdr _e1271913104_)))
                                       (if (gx#stx-pair? _tl1272113109_)
                                           (let ((_e1272213112_
                                                  (gx#stx-e _tl1272113109_)))
                                             (let ((_hd1272313115_
                                                    (##car _e1272213112_))
                                                   (_tl1272413117_
                                                    (##cdr _e1272213112_)))
                                               (if (gx#stx-pair?
                                                    _hd1272313115_)
                                                   (let ((_e1272513120_
                                                          (gx#stx-e
                                                           _hd1272313115_)))
                                                     (let ((_hd1272613123_
                                                            (##car _e1272513120_))
                                                           (_tl1272713125_
                                                            (##cdr _e1272513120_)))
                                                       (if (gx#identifier?
                                                            _hd1272613123_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1272613123_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1272713125_)
                           (let ((_e1272813128_ (gx#stx-e _tl1272713125_)))
                             (let ((_hd1272913131_ (##car _e1272813128_))
                                   (_tl1273013133_ (##cdr _e1272813128_)))
                               (if (gx#stx-pair? _hd1272913131_)
                                   (let ((_e1273113136_
                                          (gx#stx-e _hd1272913131_)))
                                     (let ((_hd1273213139_
                                            (##car _e1273113136_))
                                           (_tl1273313141_
                                            (##cdr _e1273113136_)))
                                       (if (gx#identifier? _hd1273213139_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1273213139_)
                                               (if (gx#stx-pair?
                                                    _tl1273313141_)
                                                   (let ((_e1273413144_
                                                          (gx#stx-e
                                                           _tl1273313141_)))
                                                     (let ((_hd1273513147_
                                                            (##car _e1273413144_))
                                                           (_tl1273613149_
                                                            (##cdr _e1273413144_)))
                                                       (if (gx#stx-null?
                                                            _tl1273613149_)
                                                           (if (gx#stx-pair?
                                                                _tl1273013133_)
                                                               (let ((_e1273713152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1273013133_)))
                         (let ((_hd1273813155_ (##car _e1273713152_))
                               (_tl1273913157_ (##cdr _e1273713152_)))
                           (if (gx#stx-pair? _hd1273813155_)
                               (let ((_e1274013160_ (gx#stx-e _hd1273813155_)))
                                 (let ((_hd1274113163_ (##car _e1274013160_))
                                       (_tl1274213165_ (##cdr _e1274013160_)))
                                   (if (gx#identifier? _hd1274113163_)
                                       (if (gx#stx-eq? '%#ref _hd1274113163_)
                                           (if (gx#stx-pair? _tl1274213165_)
                                               (let ((_e1274313168_
                                                      (gx#stx-e
                                                       _tl1274213165_)))
                                                 (let ((_hd1274413171_
                                                        (##car _e1274313168_))
                                                       (_tl1274513173_
                                                        (##cdr _e1274313168_)))
                                                   (if (gx#stx-null?
                                                        _tl1274513173_)
                                                       (if (gx#stx-pair?
                                                            _tl1273913157_)
                                                           (let ((_e1274613176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1273913157_)))
                     (let ((_hd1274713179_ (##car _e1274613176_))
                           (_tl1274813181_ (##cdr _e1274613176_)))
                       (if (gx#stx-pair? _hd1274713179_)
                           (let ((_e1274913184_ (gx#stx-e _hd1274713179_)))
                             (let ((_hd1275013187_ (##car _e1274913184_))
                                   (_tl1275113189_ (##cdr _e1274913184_)))
                               (if (gx#identifier? _hd1275013187_)
                                   (if (gx#stx-eq? '%#ref _hd1275013187_)
                                       (if (gx#stx-pair? _tl1275113189_)
                                           (let ((_e1275213192_
                                                  (gx#stx-e _tl1275113189_)))
                                             (let ((_hd1275313195_
                                                    (##car _e1275213192_))
                                                   (_tl1275413197_
                                                    (##cdr _e1275213192_)))
                                               (if (gx#stx-null?
                                                    _tl1275413197_)
                                                   (if (gx#stx-pair?
                                                        _tl1274813181_)
                                                       (let ((_e1275513200_
                                                              (gx#stx-e
                                                               _tl1274813181_)))
                                                         (let ((_hd1275613203_
                                                                (##car _e1275513200_))
                                                               (_tl1275713205_
                                                                (##cdr _e1275513200_)))
                                                           (if (gx#stx-pair?
                                                                _hd1275613203_)
                                                               (let ((_e1275813208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1275613203_)))
                         (let ((_hd1275913211_ (##car _e1275813208_))
                               (_tl1276013213_ (##cdr _e1275813208_)))
                           (if (gx#identifier? _hd1275913211_)
                               (if (gx#stx-eq? '%#ref _hd1275913211_)
                                   (if (gx#stx-pair? _tl1276013213_)
                                       (let ((_e1276113216_
                                              (gx#stx-e _tl1276013213_)))
                                         (let ((_hd1276213219_
                                                (##car _e1276113216_))
                                               (_tl1276313221_
                                                (##cdr _e1276113216_)))
                                           (if (gx#stx-null? _tl1276313221_)
                                               (if (gx#stx-null?
                                                    _tl1275713205_)
                                                   (if (gx#stx-null?
                                                        _tl1272413117_)
                                                       ((lambda (_L13224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13225_
                         _L13226_
                         _L13227_
                         _L13228_)
                  (if (if (gx#identifier? _L13228_)
                          (if (eq? (gxc#identifier-symbol _L13227_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L13226_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13228_ _L13224_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13271_ (gxc#identifier-symbol _L13225_)))
                        (let ((_type13273_
                               (gxc#optimizer-resolve-type _type-t13271_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13273_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13271_)
                                '#f))))
                      (_g1270613091_ _g1271013094_)))
                _hd1276213219_
                _hd1275313195_
                _hd1274413171_
                _hd1273513147_
                _hd1272013107_)
               (_g1270613091_ _g1271013094_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1270613091_
                                                    _g1271013094_))
                                               (_g1270613091_ _g1271013094_))))
                                       (_g1270613091_ _g1271013094_))
                                   (_g1270613091_ _g1271013094_))
                               (_g1270613091_ _g1271013094_))))
                       (_g1270613091_ _g1271013094_))))
               (_g1270613091_ _g1271013094_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1270613091_
                                                    _g1271013094_))))
                                           (_g1270613091_ _g1271013094_))
                                       (_g1270613091_ _g1271013094_))
                                   (_g1270613091_ _g1271013094_))))
                           (_g1270613091_ _g1271013094_))))
                   (_g1270613091_ _g1271013094_))
               (_g1270613091_ _g1271013094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1270613091_ _g1271013094_))
                                           (_g1270613091_ _g1271013094_))
                                       (_g1270613091_ _g1271013094_))))
                               (_g1270613091_ _g1271013094_))))
                       (_g1270613091_ _g1271013094_))
                   (_g1270613091_ _g1271013094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1270613091_
                                                    _g1271013094_))
                                               (_g1270613091_ _g1271013094_))
                                           (_g1270613091_ _g1271013094_))))
                                   (_g1270613091_ _g1271013094_))))
                           (_g1270613091_ _g1271013094_))
                       (_g1270613091_ _g1271013094_))
                   (_g1270613091_ _g1271013094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1270613091_
                                                    _g1271013094_))))
                                           (_g1270613091_ _g1271013094_))))
                                   (_g1270613091_ _g1271013094_))))
                           (_g1270613091_ _g1271013094_)))))
                (_g1270513276_ _stx12704_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12650_)
      (let ((_clause-e12652_
             (lambda (_form12702_)
               (let ((__obj17198 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj17198
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12702_)
                    (gxc#dispatch-lambda-form-delegate _form12702_))
                   __obj17198)))))
        (let ((_g1265512665_
               (lambda (_g1265612662_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1265612662_))))
          (let ((_g1265412672_ (lambda (_g1265612668_) ((lambda () '#f)))))
            (let ((_g1265312699_
                   (lambda (_g1265612675_)
                     (if (gx#stx-pair? _g1265612675_)
                         (let ((_e1265812677_ (gx#stx-e _g1265612675_)))
                           (let ((_hd1265912680_ (##car _e1265812677_))
                                 (_tl1266012682_ (##cdr _e1265812677_)))
                             ((lambda (_L12685_)
                                (if (andmap gxc#dispatch-lambda-form? _L12685_)
                                    (let ((_clauses12697_
                                           (map _clause-e12652_ _L12685_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12697_))
                                    (_g1265412672_ _g1265612675_)))
                              _tl1266012682_)))
                         (_g1265412672_ _g1265612675_)))))
              (_g1265312699_ _stx12650_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12555_)
      (let ((_g1255812578_
             (lambda (_g1255912575_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1255912575_))))
        (let ((_g1255712585_ (lambda (_g1255912581_) ((lambda () '#f)))))
          (let ((_g1255612647_
                 (lambda (_g1255912588_)
                   (if (gx#stx-pair? _g1255912588_)
                       (let ((_e1256212590_ (gx#stx-e _g1255912588_)))
                         (let ((_hd1256312593_ (##car _e1256212590_))
                               (_tl1256412595_ (##cdr _e1256212590_)))
                           (if (gx#stx-pair? _tl1256412595_)
                               (let ((_e1256512598_ (gx#stx-e _tl1256412595_)))
                                 (let ((_hd1256612601_ (##car _e1256512598_))
                                       (_tl1256712603_ (##cdr _e1256512598_)))
                                   (if (gx#stx-pair? _hd1256612601_)
                                       (let ((_e1256812606_
                                              (gx#stx-e _hd1256612601_)))
                                         (let ((_hd1256912609_
                                                (##car _e1256812606_))
                                               (_tl1257012611_
                                                (##cdr _e1256812606_)))
                                           (if (gx#identifier? _hd1256912609_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1256912609_)
                                                   (if (gx#stx-pair?
                                                        _tl1257012611_)
                                                       (let ((_e1257112614_
                                                              (gx#stx-e
                                                               _tl1257012611_)))
                                                         (let ((_hd1257212617_
                                                                (##car _e1257112614_))
                                                               (_tl1257312619_
                                                                (##cdr _e1257112614_)))
                                                           (if (gx#stx-null?
                                                                _tl1257312619_)
                                                               ((lambda (_L12622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12623_)
                          (let ((_type-e1264012642_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L12623_)
                                  '#f)))
                            (if _type-e1264012642_
                                (let ((_type-e12645_ _type-e1264012642_))
                                  (_type-e12645_ _stx12555_ _L12622_))
                                '#f)))
                        _tl1256712603_
                        _hd1257212617_)
                       (_g1255712585_ _g1255912588_))))
               (_g1255712585_ _g1255912588_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1255712585_
                                                    _g1255912588_))
                                               (_g1255712585_ _g1255912588_))))
                                       (_g1255712585_ _g1255912588_))))
                               (_g1255712585_ _g1255912588_))))
                       (_g1255712585_ _g1255912588_)))))
            (_g1255612647_ _stx12555_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12040_ _args12041_)
      (let ((_g1204512158_
             (lambda (_g1204612155_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1204612155_))))
        (let ((_g1204412165_
               (lambda (_g1204612161_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12040_))
                      '#f))))))
          (let ((_g1204312372_
                 (lambda (_g1204612168_)
                   (if (gx#stx-pair? _g1204612168_)
                       (let ((_e1210612170_ (gx#stx-e _g1204612168_)))
                         (let ((_hd1210712173_ (##car _e1210612170_))
                               (_tl1210812175_ (##cdr _e1210612170_)))
                           (if (gx#stx-pair? _hd1210712173_)
                               (let ((_e1210912178_ (gx#stx-e _hd1210712173_)))
                                 (let ((_hd1211012181_ (##car _e1210912178_))
                                       (_tl1211112183_ (##cdr _e1210912178_)))
                                   (if (gx#identifier? _hd1211012181_)
                                       (if (gx#stx-eq? '%#quote _hd1211012181_)
                                           (if (gx#stx-pair? _tl1211112183_)
                                               (let ((_e1211212186_
                                                      (gx#stx-e
                                                       _tl1211112183_)))
                                                 (let ((_hd1211312189_
                                                        (##car _e1211212186_))
                                                       (_tl1211412191_
                                                        (##cdr _e1211212186_)))
                                                   (if (gx#stx-null?
                                                        _tl1211412191_)
                                                       (if (gx#stx-pair?
                                                            _tl1210812175_)
                                                           (let ((_e1211512194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1210812175_)))
                     (let ((_hd1211612197_ (##car _e1211512194_))
                           (_tl1211712199_ (##cdr _e1211512194_)))
                       (if (gx#stx-pair? _hd1211612197_)
                           (let ((_e1211812202_ (gx#stx-e _hd1211612197_)))
                             (let ((_hd1211912205_ (##car _e1211812202_))
                                   (_tl1212012207_ (##cdr _e1211812202_)))
                               (if (gx#identifier? _hd1211912205_)
                                   (if (gx#stx-eq? '%#ref _hd1211912205_)
                                       (if (gx#stx-pair? _tl1212012207_)
                                           (let ((_e1212112210_
                                                  (gx#stx-e _tl1212012207_)))
                                             (let ((_hd1212212213_
                                                    (##car _e1212112210_))
                                                   (_tl1212312215_
                                                    (##cdr _e1212112210_)))
                                               (if (gx#stx-null?
                                                    _tl1212312215_)
                                                   (if (gx#stx-pair?
                                                        _tl1211712199_)
                                                       (let ((_e1212412218_
                                                              (gx#stx-e
                                                               _tl1211712199_)))
                                                         (let ((_hd1212512221_
                                                                (##car _e1212412218_))
                                                               (_tl1212612223_
                                                                (##cdr _e1212412218_)))
                                                           (if (gx#stx-pair?
                                                                _hd1212512221_)
                                                               (let ((_e1212712226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1212512221_)))
                         (let ((_hd1212812229_ (##car _e1212712226_))
                               (_tl1212912231_ (##cdr _e1212712226_)))
                           (if (gx#identifier? _hd1212812229_)
                               (if (gx#stx-eq? '%#quote _hd1212812229_)
                                   (if (gx#stx-pair? _tl1212912231_)
                                       (let ((_e1213012234_
                                              (gx#stx-e _tl1212912231_)))
                                         (let ((_hd1213112237_
                                                (##car _e1213012234_))
                                               (_tl1213212239_
                                                (##cdr _e1213012234_)))
                                           (if (gx#stx-null? _tl1213212239_)
                                               (if (gx#stx-pair?
                                                    _tl1212612223_)
                                                   (let ((_e1213312242_
                                                          (gx#stx-e
                                                           _tl1212612223_)))
                                                     (let ((_hd1213412245_
                                                            (##car _e1213312242_))
                                                           (_tl1213512247_
                                                            (##cdr _e1213312242_)))
                                                       (if (gx#stx-pair?
                                                            _tl1213512247_)
                                                           (let ((_e1213612250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1213512247_)))
                     (let ((_hd1213712253_ (##car _e1213612250_))
                           (_tl1213812255_ (##cdr _e1213612250_)))
                       (if (gx#stx-pair? _hd1213712253_)
                           (let ((_e1213912258_ (gx#stx-e _hd1213712253_)))
                             (let ((_hd1214012261_ (##car _e1213912258_))
                                   (_tl1214112263_ (##cdr _e1213912258_)))
                               (if (gx#identifier? _hd1214012261_)
                                   (if (gx#stx-eq? '%#quote _hd1214012261_)
                                       (if (gx#stx-pair? _tl1214112263_)
                                           (let ((_e1214212266_
                                                  (gx#stx-e _tl1214112263_)))
                                             (let ((_hd1214312269_
                                                    (##car _e1214212266_))
                                                   (_tl1214412271_
                                                    (##cdr _e1214212266_)))
                                               (if (gx#stx-null?
                                                    _tl1214412271_)
                                                   (if (gx#stx-pair?
                                                        _tl1213812255_)
                                                       (let ((_e1214512274_
                                                              (gx#stx-e
                                                               _tl1213812255_)))
                                                         (let ((_hd1214612277_
                                                                (##car _e1214512274_))
                                                               (_tl1214712279_
                                                                (##cdr _e1214512274_)))
                                                           (if (gx#stx-pair?
                                                                _hd1214612277_)
                                                               (let ((_e1214812282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1214612277_)))
                         (let ((_hd1214912285_ (##car _e1214812282_))
                               (_tl1215012287_ (##cdr _e1214812282_)))
                           (if (gx#identifier? _hd1214912285_)
                               (if (gx#stx-eq? '%#quote _hd1214912285_)
                                   (if (gx#stx-pair? _tl1215012287_)
                                       (let ((_e1215112290_
                                              (gx#stx-e _tl1215012287_)))
                                         (let ((_hd1215212293_
                                                (##car _e1215112290_))
                                               (_tl1215312295_
                                                (##cdr _e1215112290_)))
                                           (if (gx#stx-null? _tl1215312295_)
                                               (if (gx#stx-null?
                                                    _tl1214712279_)
                                                   ((lambda (_L12298_
                                                             _L12299_
                                                             _L12300_
                                                             _L12301_
                                                             _L12302_
                                                             _L12303_)
                                                      (let ((_super-t12349_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12302_)
                         (gxc#identifier-symbol _L12302_)
                         '#f)))
                (let ((_super-type12351_
                       (if _super-t12349_
                           (gxc#optimizer-resolve-type _super-t12349_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12351_
                              (not (##structure-instance-of?
                                    _super-type12351_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12040_
                           _L12302_)
                          '#!void)
                      (let ((_fields12367_ (gx#stx-e _L12301_))
                            (_xfields12368_
                             (if _super-type12351_
                                 (let ((_super-fields1235312356_
                                        (##structure-ref
                                         _super-type12351_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1235412358_
                                        (##structure-ref
                                         _super-type12351_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1235312356_
                                       (if _super-xfields1235412358_
                                           (let ((_super-fields12361_
                                                  _super-fields1235312356_)
                                                 (_super-xfields12362_
                                                  _super-xfields1235412358_))
                                             (fx+ _super-fields12361_
                                                  _super-xfields12362_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12369_ (gx#stx-e _L12299_))
                            (_ctor12370_
                             (let ((_$e12364_ (gx#stx-e _L12298_)))
                               (if _$e12364_
                                   (values _$e12364_)
                                   (if _super-type12351_
                                       (##structure-ref
                                        _super-type12351_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12349_ '#!void '#f))))))
                        (let ((__obj17199
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17199
                             (gx#stx-e _L12303_)
                             _super-t12349_
                             _fields12367_
                             _xfields12368_
                             _ctor12370_
                             _plist12369_)
                            __obj17199))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1215212293_
                                                    _hd1214312269_
                                                    _hd1213412245_
                                                    _hd1213112237_
                                                    _hd1212212213_
                                                    _hd1211312189_)
                                                   (_g1204412165_
                                                    _g1204612168_))
                                               (_g1204412165_ _g1204612168_))))
                                       (_g1204412165_ _g1204612168_))
                                   (_g1204412165_ _g1204612168_))
                               (_g1204412165_ _g1204612168_))))
                       (_g1204412165_ _g1204612168_))))
               (_g1204412165_ _g1204612168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1204412165_
                                                    _g1204612168_))))
                                           (_g1204412165_ _g1204612168_))
                                       (_g1204412165_ _g1204612168_))
                                   (_g1204412165_ _g1204612168_))))
                           (_g1204412165_ _g1204612168_))))
                   (_g1204412165_ _g1204612168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1204412165_
                                                    _g1204612168_))
                                               (_g1204412165_ _g1204612168_))))
                                       (_g1204412165_ _g1204612168_))
                                   (_g1204412165_ _g1204612168_))
                               (_g1204412165_ _g1204612168_))))
                       (_g1204412165_ _g1204612168_))))
               (_g1204412165_ _g1204612168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1204412165_
                                                    _g1204612168_))))
                                           (_g1204412165_ _g1204612168_))
                                       (_g1204412165_ _g1204612168_))
                                   (_g1204412165_ _g1204612168_))))
                           (_g1204412165_ _g1204612168_))))
                   (_g1204412165_ _g1204612168_))
               (_g1204412165_ _g1204612168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1204412165_ _g1204612168_))
                                           (_g1204412165_ _g1204612168_))
                                       (_g1204412165_ _g1204612168_))))
                               (_g1204412165_ _g1204612168_))))
                       (_g1204412165_ _g1204612168_)))))
            (let ((_g1204212552_
                   (lambda (_g1204612375_)
                     (if (gx#stx-pair? _g1204612375_)
                         (let ((_e1205212377_ (gx#stx-e _g1204612375_)))
                           (let ((_hd1205312380_ (##car _e1205212377_))
                                 (_tl1205412382_ (##cdr _e1205212377_)))
                             (if (gx#stx-pair? _hd1205312380_)
                                 (let ((_e1205512385_
                                        (gx#stx-e _hd1205312380_)))
                                   (let ((_hd1205612388_ (##car _e1205512385_))
                                         (_tl1205712390_
                                          (##cdr _e1205512385_)))
                                     (if (gx#identifier? _hd1205612388_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1205612388_)
                                             (if (gx#stx-pair? _tl1205712390_)
                                                 (let ((_e1205812393_
                                                        (gx#stx-e
                                                         _tl1205712390_)))
                                                   (let ((_hd1205912396_
                                                          (##car _e1205812393_))
                                                         (_tl1206012398_
                                                          (##cdr _e1205812393_)))
                                                     (if (gx#stx-null?
                                                          _tl1206012398_)
                                                         (if (gx#stx-pair?
                                                              _tl1205412382_)
                                                             (let ((_e1206112401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1205412382_)))
                       (let ((_hd1206212404_ (##car _e1206112401_))
                             (_tl1206312406_ (##cdr _e1206112401_)))
                         (if (gx#stx-pair? _hd1206212404_)
                             (let ((_e1206412409_ (gx#stx-e _hd1206212404_)))
                               (let ((_hd1206512412_ (##car _e1206412409_))
                                     (_tl1206612414_ (##cdr _e1206412409_)))
                                 (if (gx#identifier? _hd1206512412_)
                                     (if (gx#stx-eq? '%#quote _hd1206512412_)
                                         (if (gx#stx-pair? _tl1206612414_)
                                             (let ((_e1206712417_
                                                    (gx#stx-e _tl1206612414_)))
                                               (let ((_hd1206812420_
                                                      (##car _e1206712417_))
                                                     (_tl1206912422_
                                                      (##cdr _e1206712417_)))
                                                 (if (gx#stx-datum?
                                                      _hd1206812420_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1206812420_)
                         '#f)
                 (if (gx#stx-null? _tl1206912422_)
                     (if (gx#stx-pair? _tl1206312406_)
                         (let ((_e1207012425_ (gx#stx-e _tl1206312406_)))
                           (let ((_hd1207112428_ (##car _e1207012425_))
                                 (_tl1207212430_ (##cdr _e1207012425_)))
                             (if (gx#stx-pair? _hd1207112428_)
                                 (let ((_e1207312433_
                                        (gx#stx-e _hd1207112428_)))
                                   (let ((_hd1207412436_ (##car _e1207312433_))
                                         (_tl1207512438_
                                          (##cdr _e1207312433_)))
                                     (if (gx#identifier? _hd1207412436_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1207412436_)
                                             (if (gx#stx-pair? _tl1207512438_)
                                                 (let ((_e1207612441_
                                                        (gx#stx-e
                                                         _tl1207512438_)))
                                                   (let ((_hd1207712444_
                                                          (##car _e1207612441_))
                                                         (_tl1207812446_
                                                          (##cdr _e1207612441_)))
                                                     (if (gx#stx-null?
                                                          _tl1207812446_)
                                                         (if (gx#stx-pair?
                                                              _tl1207212430_)
                                                             (let ((_e1207912449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1207212430_)))
                       (let ((_hd1208012452_ (##car _e1207912449_))
                             (_tl1208112454_ (##cdr _e1207912449_)))
                         (if (gx#stx-pair? _tl1208112454_)
                             (let ((_e1208212457_ (gx#stx-e _tl1208112454_)))
                               (let ((_hd1208312460_ (##car _e1208212457_))
                                     (_tl1208412462_ (##cdr _e1208212457_)))
                                 (if (gx#stx-pair? _hd1208312460_)
                                     (let ((_e1208512465_
                                            (gx#stx-e _hd1208312460_)))
                                       (let ((_hd1208612468_
                                              (##car _e1208512465_))
                                             (_tl1208712470_
                                              (##cdr _e1208512465_)))
                                         (if (gx#identifier? _hd1208612468_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1208612468_)
                                                 (if (gx#stx-pair?
                                                      _tl1208712470_)
                                                     (let ((_e1208812473_
                                                            (gx#stx-e
                                                             _tl1208712470_)))
                                                       (let ((_hd1208912476_
                                                              (##car _e1208812473_))
                                                             (_tl1209012478_
                                                              (##cdr _e1208812473_)))
                                                         (if (gx#stx-null?
                                                              _tl1209012478_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1208412462_)
                         (let ((_e1209112481_ (gx#stx-e _tl1208412462_)))
                           (let ((_hd1209212484_ (##car _e1209112481_))
                                 (_tl1209312486_ (##cdr _e1209112481_)))
                             (if (gx#stx-pair? _hd1209212484_)
                                 (let ((_e1209412489_
                                        (gx#stx-e _hd1209212484_)))
                                   (let ((_hd1209512492_ (##car _e1209412489_))
                                         (_tl1209612494_
                                          (##cdr _e1209412489_)))
                                     (if (gx#identifier? _hd1209512492_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1209512492_)
                                             (if (gx#stx-pair? _tl1209612494_)
                                                 (let ((_e1209712497_
                                                        (gx#stx-e
                                                         _tl1209612494_)))
                                                   (let ((_hd1209812500_
                                                          (##car _e1209712497_))
                                                         (_tl1209912502_
                                                          (##cdr _e1209712497_)))
                                                     (if (gx#stx-null?
                                                          _tl1209912502_)
                                                         (if (gx#stx-null?
                                                              _tl1209312486_)
                                                             ((lambda (_L12505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12506_
                               _L12507_
                               _L12508_
                               _L12509_)
                        (let ((__obj17200
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17200
                             (gx#stx-e _L12509_)
                             '#f
                             (gx#stx-e _L12508_)
                             '0
                             (gx#stx-e _L12505_)
                             (gx#stx-e _L12506_))
                            __obj17200)))
                      _hd1209812500_
                      _hd1208912476_
                      _hd1208012452_
                      _hd1207712444_
                      _hd1205912396_)
                     (_g1204312372_ _g1204612375_))
                 (_g1204312372_ _g1204612375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1204312372_ _g1204612375_))
                                             (_g1204312372_ _g1204612375_))
                                         (_g1204312372_ _g1204612375_))))
                                 (_g1204312372_ _g1204612375_))))
                         (_g1204312372_ _g1204612375_))
                     (_g1204312372_ _g1204612375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1204312372_
                                                      _g1204612375_))
                                                 (_g1204312372_ _g1204612375_))
                                             (_g1204312372_ _g1204612375_))))
                                     (_g1204312372_ _g1204612375_))))
                             (_g1204312372_ _g1204612375_))))
                     (_g1204312372_ _g1204612375_))
                 (_g1204312372_ _g1204612375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1204312372_ _g1204612375_))
                                             (_g1204312372_ _g1204612375_))
                                         (_g1204312372_ _g1204612375_))))
                                 (_g1204312372_ _g1204612375_))))
                         (_g1204312372_ _g1204612375_))
                     (_g1204312372_ _g1204612375_))
                 (_g1204312372_ _g1204612375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1204312372_
                                                      _g1204612375_))))
                                             (_g1204312372_ _g1204612375_))
                                         (_g1204312372_ _g1204612375_))
                                     (_g1204312372_ _g1204612375_))))
                             (_g1204312372_ _g1204612375_))))
                     (_g1204312372_ _g1204612375_))
                 (_g1204312372_ _g1204612375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1204312372_ _g1204612375_))
                                             (_g1204312372_ _g1204612375_))
                                         (_g1204312372_ _g1204612375_))))
                                 (_g1204312372_ _g1204612375_))))
                         (_g1204312372_ _g1204612375_)))))
              (_g1204212552_ _args12041_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx11966_ _args11967_)
      (let ((_g1197011986_
             (lambda (_g1197111983_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1197111983_))))
        (let ((_g1196911993_ (lambda (_g1197111989_) ((lambda () '#f)))))
          (let ((_g1196812037_
                 (lambda (_g1197111996_)
                   (if (gx#stx-pair? _g1197111996_)
                       (let ((_e1197311998_ (gx#stx-e _g1197111996_)))
                         (let ((_hd1197412001_ (##car _e1197311998_))
                               (_tl1197512003_ (##cdr _e1197311998_)))
                           (if (gx#stx-pair? _hd1197412001_)
                               (let ((_e1197612006_ (gx#stx-e _hd1197412001_)))
                                 (let ((_hd1197712009_ (##car _e1197612006_))
                                       (_tl1197812011_ (##cdr _e1197612006_)))
                                   (if (gx#identifier? _hd1197712009_)
                                       (if (gx#stx-eq? '%#ref _hd1197712009_)
                                           (if (gx#stx-pair? _tl1197812011_)
                                               (let ((_e1197912014_
                                                      (gx#stx-e
                                                       _tl1197812011_)))
                                                 (let ((_hd1198012017_
                                                        (##car _e1197912014_))
                                                       (_tl1198112019_
                                                        (##cdr _e1197912014_)))
                                                   (if (gx#stx-null?
                                                        _tl1198112019_)
                                                       (if (gx#stx-null?
                                                            _tl1197512003_)
                                                           ((lambda (_L12022_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L12022_)))
                                                            _hd1198012017_)
                                                           (_g1196911993_
                                                            _g1197111996_))
                                                       (_g1196911993_
                                                        _g1197111996_))))
                                               (_g1196911993_ _g1197111996_))
                                           (_g1196911993_ _g1197111996_))
                                       (_g1196911993_ _g1197111996_))))
                               (_g1196911993_ _g1197111996_))))
                       (_g1196911993_ _g1197111996_)))))
            (_g1196812037_ _args11967_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx11850_ _args11851_)
      (let ((_g1185411880_
             (lambda (_g1185511877_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1185511877_))))
        (let ((_g1185311887_ (lambda (_g1185511883_) ((lambda () '#f)))))
          (let ((_g1185211963_
                 (lambda (_g1185511890_)
                   (if (gx#stx-pair? _g1185511890_)
                       (let ((_e1185811892_ (gx#stx-e _g1185511890_)))
                         (let ((_hd1185911895_ (##car _e1185811892_))
                               (_tl1186011897_ (##cdr _e1185811892_)))
                           (if (gx#stx-pair? _hd1185911895_)
                               (let ((_e1186111900_ (gx#stx-e _hd1185911895_)))
                                 (let ((_hd1186211903_ (##car _e1186111900_))
                                       (_tl1186311905_ (##cdr _e1186111900_)))
                                   (if (gx#identifier? _hd1186211903_)
                                       (if (gx#stx-eq? '%#ref _hd1186211903_)
                                           (if (gx#stx-pair? _tl1186311905_)
                                               (let ((_e1186411908_
                                                      (gx#stx-e
                                                       _tl1186311905_)))
                                                 (let ((_hd1186511911_
                                                        (##car _e1186411908_))
                                                       (_tl1186611913_
                                                        (##cdr _e1186411908_)))
                                                   (if (gx#stx-null?
                                                        _tl1186611913_)
                                                       (if (gx#stx-pair?
                                                            _tl1186011897_)
                                                           (let ((_e1186711916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1186011897_)))
                     (let ((_hd1186811919_ (##car _e1186711916_))
                           (_tl1186911921_ (##cdr _e1186711916_)))
                       (if (gx#stx-pair? _hd1186811919_)
                           (let ((_e1187011924_ (gx#stx-e _hd1186811919_)))
                             (let ((_hd1187111927_ (##car _e1187011924_))
                                   (_tl1187211929_ (##cdr _e1187011924_)))
                               (if (gx#identifier? _hd1187111927_)
                                   (if (gx#stx-eq? '%#quote _hd1187111927_)
                                       (if (gx#stx-pair? _tl1187211929_)
                                           (let ((_e1187311932_
                                                  (gx#stx-e _tl1187211929_)))
                                             (let ((_hd1187411935_
                                                    (##car _e1187311932_))
                                                   (_tl1187511937_
                                                    (##cdr _e1187311932_)))
                                               (if (gx#stx-null?
                                                    _tl1187511937_)
                                                   (if (gx#stx-null?
                                                        _tl1186911921_)
                                                       ((lambda (_L11940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11941_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L11941_)
                   (gx#stx-e _L11940_)))
                _hd1187411935_
                _hd1186511911_)
               (_g1185311887_ _g1185511890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1185311887_
                                                    _g1185511890_))))
                                           (_g1185311887_ _g1185511890_))
                                       (_g1185311887_ _g1185511890_))
                                   (_g1185311887_ _g1185511890_))))
                           (_g1185311887_ _g1185511890_))))
                   (_g1185311887_ _g1185511890_))
               (_g1185311887_ _g1185511890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1185311887_ _g1185511890_))
                                           (_g1185311887_ _g1185511890_))
                                       (_g1185311887_ _g1185511890_))))
                               (_g1185311887_ _g1185511890_))))
                       (_g1185311887_ _g1185511890_)))))
            (_g1185211963_ _args11851_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11734_ _args11735_)
      (let ((_g1173811764_
             (lambda (_g1173911761_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1173911761_))))
        (let ((_g1173711771_ (lambda (_g1173911767_) ((lambda () '#f)))))
          (let ((_g1173611847_
                 (lambda (_g1173911774_)
                   (if (gx#stx-pair? _g1173911774_)
                       (let ((_e1174211776_ (gx#stx-e _g1173911774_)))
                         (let ((_hd1174311779_ (##car _e1174211776_))
                               (_tl1174411781_ (##cdr _e1174211776_)))
                           (if (gx#stx-pair? _hd1174311779_)
                               (let ((_e1174511784_ (gx#stx-e _hd1174311779_)))
                                 (let ((_hd1174611787_ (##car _e1174511784_))
                                       (_tl1174711789_ (##cdr _e1174511784_)))
                                   (if (gx#identifier? _hd1174611787_)
                                       (if (gx#stx-eq? '%#ref _hd1174611787_)
                                           (if (gx#stx-pair? _tl1174711789_)
                                               (let ((_e1174811792_
                                                      (gx#stx-e
                                                       _tl1174711789_)))
                                                 (let ((_hd1174911795_
                                                        (##car _e1174811792_))
                                                       (_tl1175011797_
                                                        (##cdr _e1174811792_)))
                                                   (if (gx#stx-null?
                                                        _tl1175011797_)
                                                       (if (gx#stx-pair?
                                                            _tl1174411781_)
                                                           (let ((_e1175111800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1174411781_)))
                     (let ((_hd1175211803_ (##car _e1175111800_))
                           (_tl1175311805_ (##cdr _e1175111800_)))
                       (if (gx#stx-pair? _hd1175211803_)
                           (let ((_e1175411808_ (gx#stx-e _hd1175211803_)))
                             (let ((_hd1175511811_ (##car _e1175411808_))
                                   (_tl1175611813_ (##cdr _e1175411808_)))
                               (if (gx#identifier? _hd1175511811_)
                                   (if (gx#stx-eq? '%#quote _hd1175511811_)
                                       (if (gx#stx-pair? _tl1175611813_)
                                           (let ((_e1175711816_
                                                  (gx#stx-e _tl1175611813_)))
                                             (let ((_hd1175811819_
                                                    (##car _e1175711816_))
                                                   (_tl1175911821_
                                                    (##cdr _e1175711816_)))
                                               (if (gx#stx-null?
                                                    _tl1175911821_)
                                                   (if (gx#stx-null?
                                                        _tl1175311805_)
                                                       ((lambda (_L11824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11825_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L11825_)
                   (gx#stx-e _L11824_)))
                _hd1175811819_
                _hd1174911795_)
               (_g1173711771_ _g1173911774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1173711771_
                                                    _g1173911774_))))
                                           (_g1173711771_ _g1173911774_))
                                       (_g1173711771_ _g1173911774_))
                                   (_g1173711771_ _g1173911774_))))
                           (_g1173711771_ _g1173911774_))))
                   (_g1173711771_ _g1173911774_))
               (_g1173711771_ _g1173911774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1173711771_ _g1173911774_))
                                           (_g1173711771_ _g1173911774_))
                                       (_g1173711771_ _g1173911774_))))
                               (_g1173711771_ _g1173911774_))))
                       (_g1173711771_ _g1173911774_)))))
            (_g1173611847_ _args11735_))))))
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx11683_)
      (let ((_g1168511698_
             (lambda (_g1168611695_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1168611695_))))
        (let ((_g1168411731_
               (lambda (_g1168611701_)
                 (if (gx#stx-pair? _g1168611701_)
                     (let ((_e1168811703_ (gx#stx-e _g1168611701_)))
                       (let ((_hd1168911706_ (##car _e1168811703_))
                             (_tl1169011708_ (##cdr _e1168811703_)))
                         (if (gx#stx-pair? _tl1169011708_)
                             (let ((_e1169111711_ (gx#stx-e _tl1169011708_)))
                               (let ((_hd1169211714_ (##car _e1169111711_))
                                     (_tl1169311716_ (##cdr _e1169111711_)))
                                 (if (gx#stx-null? _tl1169311716_)
                                     ((lambda (_L11719_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L11719_)))
                                      _hd1169211714_)
                                     (_g1168511698_ _g1168611701_))))
                             (_g1168511698_ _g1168611701_))))
                     (_g1168511698_ _g1168611701_)))))
          (_g1168411731_ _stx11683_)))))
  (define gxc#optimize-call%
    (lambda (_stx11589_)
      (let ((_g1159211612_
             (lambda (_g1159311609_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1159311609_))))
        (let ((_g1159111619_
               (lambda (_g1159311615_)
                 ((lambda () (gxc#xform-call% _stx11589_))))))
          (let ((_g1159011680_
                 (lambda (_g1159311622_)
                   (if (gx#stx-pair? _g1159311622_)
                       (let ((_e1159611624_ (gx#stx-e _g1159311622_)))
                         (let ((_hd1159711627_ (##car _e1159611624_))
                               (_tl1159811629_ (##cdr _e1159611624_)))
                           (if (gx#stx-pair? _tl1159811629_)
                               (let ((_e1159911632_ (gx#stx-e _tl1159811629_)))
                                 (let ((_hd1160011635_ (##car _e1159911632_))
                                       (_tl1160111637_ (##cdr _e1159911632_)))
                                   (if (gx#stx-pair? _hd1160011635_)
                                       (let ((_e1160211640_
                                              (gx#stx-e _hd1160011635_)))
                                         (let ((_hd1160311643_
                                                (##car _e1160211640_))
                                               (_tl1160411645_
                                                (##cdr _e1160211640_)))
                                           (if (gx#identifier? _hd1160311643_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1160311643_)
                                                   (if (gx#stx-pair?
                                                        _tl1160411645_)
                                                       (let ((_e1160511648_
                                                              (gx#stx-e
                                                               _tl1160411645_)))
                                                         (let ((_hd1160611651_
                                                                (##car _e1160511648_))
                                                               (_tl1160711653_
                                                                (##cdr _e1160511648_)))
                                                           (if (gx#stx-null?
                                                                _tl1160711653_)
                                                               ((lambda (_L11656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11657_)
                          (let ((_rator-id11675_
                                 (gxc#identifier-symbol _L11657_)))
                            (let ((_rator-type11677_
                                   (gxc#optimizer-lookup-type
                                    _rator-id11675_)))
                              (let ()
                                (if _rator-type11677_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11675_
                                       '" => "
                                       _rator-type11677_
                                       '" "
                                       (##structure-ref
                                        _rator-type11677_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11677_
                                       'optimize-call
                                       _stx11589_
                                       _L11656_))
                                    (gxc#xform-call% _stx11589_))))))
                        _tl1160111637_
                        _hd1160611651_)
                       (_g1159111619_ _g1159311622_))))
               (_g1159111619_ _g1159311622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1159111619_
                                                    _g1159311622_))
                                               (_g1159111619_ _g1159311622_))))
                                       (_g1159111619_ _g1159311622_))))
                               (_g1159111619_ _g1159311622_))))
                       (_g1159111619_ _g1159311622_)))))
            (_g1159011680_ _stx11589_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self11559_ _stx11560_ _args11561_)
      (let ((_self1156211568_ _self11559_))
        (let ((_E1156411572_
               (lambda () (error '"No clause matching" _self1156211568_))))
          (let ((_K1156511581_
                 (lambda (_alias-id11575_)
                   (let ((_alias-type11577_
                          (gxc#optimizer-lookup-type _alias-id11575_)))
                     (if (##structure-instance-of?
                          _alias-type11577_
                          'gxc#!type::t)
                         (call-method
                          _alias-type11577_
                          'optimize-call
                          _stx11560_
                          _args11561_)
                         (let ((_args11579_
                                (gx#stx-map1 gxc#compile-e _args11561_)))
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _alias-id11575_ '()))
                                         _args11579_))
                             _stx11560_))))))))
            (if (struct-instance? gxc#!alias::t _self1156211568_)
                (let ((_e1156611584_ (##vector-ref _self1156211568_ '1)))
                  (let ((_alias-id11587_ _e1156611584_))
                    (_K1156511581_ _alias-id11587_)))
                (_E1156411572_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11414_ _stx11415_ _args11416_)
      (let ((_self1141711423_ _self11414_))
        (let ((_E1141911427_
               (lambda () (error '"No clause matching" _self1141711423_))))
          (let ((_K1142011551_
                 (lambda (_struct-t11430_)
                   (let ((_struct-type11432_
                          (gxc#optimizer-resolve-type _struct-t11430_)))
                     (let ((_struct-type1143311447_ _struct-type11432_))
                       (let ((_E1143711451_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1143311447_))))
                         (let ((_else1143611455_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11415_
                                   _struct-t11430_
                                   _struct-type11432_))))
                           (let ((_try-match1143511463_
                                  (lambda ()
                                    (let ((_K1143811460_
                                           (lambda ()
                                             (gxc#xform-call% _stx11415_))))
                                      (if (##eq? _struct-type1143311447_ '#f)
                                          (_K1143811460_)
                                          (_else1143611455_))))))
                             (let ((_K1143911526_
                                    (lambda (_plist11466_
                                             _struct-type-id11467_)
                                      (let ((_g1147011480_
                                             (lambda (_g1147111477_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1147111477_))))
                                        (let ((_g1146911487_
                                               (lambda (_g1147111483_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11415_))))))
                                          (let ((_g1146811523_
                                                 (lambda (_g1147111490_)
                                                   (if (gx#stx-pair?
                                                        _g1147111490_)
                                                       (let ((_e1147311492_
                                                              (gx#stx-e
                                                               _g1147111490_)))
                                                         (let ((_hd1147411495_
                                                                (##car _e1147311492_))
                                                               (_tl1147511497_
                                                                (##cdr _e1147311492_)))
                                                           (if (gx#stx-null?
                                                                _tl1147511497_)
                                                               ((lambda (_L11500_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11520_ (gxc#compile-e _L11500_))
                                (_op11521_
                                 (if (if _plist11466_
                                         (assgetq 'final: _plist11466_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11521_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11467_
                                                     '()))
                                         (cons _expr11520_ '())))
                             _stx11415_)))
                        _hd1147411495_)
                       (_g1146911487_ _g1147111490_))))
               (_g1146911487_ _g1147111490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1146811523_ _args11416_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1143311447_)
                                   (let ((_e1144011529_
                                          (##vector-ref
                                           _struct-type1143311447_
                                           '1)))
                                     (let ((_struct-type-id11532_
                                            _e1144011529_))
                                       (let ((_e1144111534_
                                              (##vector-ref
                                               _struct-type1143311447_
                                               '2)))
                                         (let ((_e1144211537_
                                                (##vector-ref
                                                 _struct-type1143311447_
                                                 '3)))
                                           (let ((_e1144311540_
                                                  (##vector-ref
                                                   _struct-type1143311447_
                                                   '4)))
                                             (let ((_e1144411543_
                                                    (##vector-ref
                                                     _struct-type1143311447_
                                                     '5)))
                                               (let ((_e1144511546_
                                                      (##vector-ref
                                                       _struct-type1143311447_
                                                       '6)))
                                                 (let ((_plist11549_
                                                        _e1144511546_))
                                                   (_K1143911526_
                                                    _plist11549_
                                                    _struct-type-id11532_)))))))))
                                   (_try-match1143511463_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1141711423_)
                (let ((_e1142111554_ (##vector-ref _self1141711423_ '1)))
                  (let ((_struct-t11557_ _e1142111554_))
                    (_K1142011551_ _struct-t11557_)))
                (_E1141911427_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11310_ _stx11311_ _args11312_)
      (let ((_self1131311319_ _self11310_))
        (let ((_E1131511323_
               (lambda () (error '"No clause matching" _self1131311319_))))
          (let ((_K1131611406_
                 (lambda (_struct-t11326_)
                   (let ((_struct-type11328_
                          (gxc#optimizer-resolve-type _struct-t11326_)))
                     (let ((_struct-type1132911342_ _struct-type11328_))
                       (let ((_E1133311346_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1132911342_))))
                         (let ((_else1133211350_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11311_
                                   _struct-t11326_
                                   _struct-type11328_))))
                           (let ((_try-match1133111358_
                                  (lambda ()
                                    (let ((_K1133411355_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11326_)
                                               (gxc#xform-call% _stx11311_)))))
                                      (if (##eq? _struct-type1132911342_ '#f)
                                          (_K1133411355_)
                                          (_else1133211350_))))))
                             (let ((_K1133511380_
                                    (lambda (_ctor11361_
                                             _xfields11362_
                                             _fields11363_
                                             _type-id11364_)
                                      (let ((_args11366_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args11312_)))
                                        (let ((_$e11368_
                                               (if _ctor11361_
                                                   (if _xfields11362_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11328_
                                                        _ctor11361_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11368_
                                              ((lambda (_kons11371_)
                                                 (let ((_$obj11373_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11326_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11363_ _xfields11362_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11373_ '())) _args11366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11311_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11373_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11311_)))
                                               _$e11368_)
                                              (if (let ((_$e11375_
                                                         _ctor11361_))
                                                    (if _$e11375_
                                                        _$e11375_
                                                        (not _xfields11362_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11326_ '()))
                             _args11366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11311_)
                                                  (let ((_arity11378_
                                                         (fx+ _fields11363_
                                                              _xfields11362_)))
                                                    (if (fx= _arity11378_
                                                             (length _args11366_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11326_ '()))
                                   _args11366_)))
                 _stx11311_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11311_
                 _struct-t11326_
                 _arity11378_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1132911342_)
                                   (let ((_e1133611383_
                                          (##vector-ref
                                           _struct-type1132911342_
                                           '1)))
                                     (let ((_type-id11386_ _e1133611383_))
                                       (let ((_e1133711388_
                                              (##vector-ref
                                               _struct-type1132911342_
                                               '2)))
                                         (let ((_e1133811391_
                                                (##vector-ref
                                                 _struct-type1132911342_
                                                 '3)))
                                           (let ((_fields11394_ _e1133811391_))
                                             (let ((_e1133911396_
                                                    (##vector-ref
                                                     _struct-type1132911342_
                                                     '4)))
                                               (let ((_xfields11399_
                                                      _e1133911396_))
                                                 (let ((_e1134011401_
                                                        (##vector-ref
                                                         _struct-type1132911342_
                                                         '5)))
                                                   (let ((_ctor11404_
                                                          _e1134011401_))
                                                     (_K1133511380_
                                                      _ctor11404_
                                                      _xfields11399_
                                                      _fields11394_
                                                      _type-id11386_))))))))))
                                   (_try-match1133111358_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1131311319_)
                (let ((_e1131711409_ (##vector-ref _self1131311319_ '1)))
                  (let ((_struct-t11412_ _e1131711409_))
                    (_K1131611406_ _struct-t11412_)))
                (_E1131511323_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11163_ _stx11164_ _args11165_)
      (let ((_self1116611173_ _self11163_))
        (let ((_E1116811177_
               (lambda () (error '"No clause matching" _self1116611173_))))
          (let ((_K1116911297_
                 (lambda (_off11180_ _struct-t11181_)
                   (let ((_struct-type11183_
                          (gxc#optimizer-resolve-type _struct-t11181_)))
                     (let ((_struct-type1118411196_ _struct-type11183_))
                       (let ((_E1118811200_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1118411196_))))
                         (let ((_else1118711204_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11164_
                                   _struct-t11181_
                                   _struct-type11183_))))
                           (let ((_try-match1118611212_
                                  (lambda ()
                                    (let ((_K1118911209_
                                           (lambda ()
                                             (gxc#xform-call% _stx11164_))))
                                      (if (##eq? _struct-type1118411196_ '#f)
                                          (_K1118911209_)
                                          (_else1118711204_))))))
                             (let ((_K1119011276_
                                    (lambda (_xfields11215_
                                             _fields11216_
                                             _struct-type-id11217_)
                                      (if _xfields11215_
                                          (let ((_g1122011230_
                                                 (lambda (_g1122111227_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1122111227_))))
                                            (let ((_g1121911237_
                                                   (lambda (_g1122111233_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11164_))))))
                                              (let ((_g1121811273_
                                                     (lambda (_g1122111240_)
                                                       (if (gx#stx-pair?
                                                            _g1122111240_)
                                                           (let ((_e1122311242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1122111240_)))
                     (let ((_hd1122411245_ (##car _e1122311242_))
                           (_tl1122511247_ (##cdr _e1122311242_)))
                       (if (gx#stx-null? _tl1122511247_)
                           ((lambda (_L11250_)
                              (let ((_expr11270_ (gxc#compile-e _L11250_))
                                    (_off11271_
                                     (fx+ _off11180_ _xfields11215_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11181_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11271_ '()))
                                                   (cons _expr11270_ '()))))
                                 _stx11164_)))
                            _hd1122411245_)
                           (_g1121911237_ _g1122111240_))))
                   (_g1121911237_ _g1122111240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1121811273_ _args11165_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11217_)
                                            (gxc#xform-call% _stx11164_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1118411196_)
                                   (let ((_e1119111279_
                                          (##vector-ref
                                           _struct-type1118411196_
                                           '1)))
                                     (let ((_struct-type-id11282_
                                            _e1119111279_))
                                       (let ((_e1119211284_
                                              (##vector-ref
                                               _struct-type1118411196_
                                               '2)))
                                         (let ((_e1119311287_
                                                (##vector-ref
                                                 _struct-type1118411196_
                                                 '3)))
                                           (let ((_fields11290_ _e1119311287_))
                                             (let ((_e1119411292_
                                                    (##vector-ref
                                                     _struct-type1118411196_
                                                     '4)))
                                               (let ((_xfields11295_
                                                      _e1119411292_))
                                                 (_K1119011276_
                                                  _xfields11295_
                                                  _fields11290_
                                                  _struct-type-id11282_))))))))
                                   (_try-match1118611212_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1116611173_)
                (let ((_e1117011300_ (##vector-ref _self1116611173_ '1)))
                  (let ((_struct-t11303_ _e1117011300_))
                    (let ((_e1117111305_ (##vector-ref _self1116611173_ '2)))
                      (let ((_off11308_ _e1117111305_))
                        (_K1116911297_ _off11308_ _struct-t11303_)))))
                (_E1116811177_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self10999_ _stx11000_ _args11001_)
      (let ((_self1100211009_ _self10999_))
        (let ((_E1100411013_
               (lambda () (error '"No clause matching" _self1100211009_))))
          (let ((_K1100511150_
                 (lambda (_off11016_ _struct-t11017_)
                   (let ((_struct-type11019_
                          (gxc#optimizer-resolve-type _struct-t11017_)))
                     (let ((_struct-type1102011032_ _struct-type11019_))
                       (let ((_E1102411036_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1102011032_))))
                         (let ((_else1102311040_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11000_
                                   _struct-t11017_
                                   _struct-type11019_))))
                           (let ((_try-match1102211048_
                                  (lambda ()
                                    (let ((_K1102511045_
                                           (lambda ()
                                             (gxc#xform-call% _stx11000_))))
                                      (if (##eq? _struct-type1102011032_ '#f)
                                          (_K1102511045_)
                                          (_else1102311040_))))))
                             (let ((_K1102611129_
                                    (lambda (_xfields11051_
                                             _fields11052_
                                             _struct-type-id11053_)
                                      (if _xfields11051_
                                          (let ((_g1105611070_
                                                 (lambda (_g1105711067_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1105711067_))))
                                            (let ((_g1105511077_
                                                   (lambda (_g1105711073_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11000_))))))
                                              (let ((_g1105411126_
                                                     (lambda (_g1105711080_)
                                                       (if (gx#stx-pair?
                                                            _g1105711080_)
                                                           (let ((_e1106011082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1105711080_)))
                     (let ((_hd1106111085_ (##car _e1106011082_))
                           (_tl1106211087_ (##cdr _e1106011082_)))
                       (if (gx#stx-pair? _tl1106211087_)
                           (let ((_e1106311090_ (gx#stx-e _tl1106211087_)))
                             (let ((_hd1106411093_ (##car _e1106311090_))
                                   (_tl1106511095_ (##cdr _e1106311090_)))
                               (if (gx#stx-null? _tl1106511095_)
                                   ((lambda (_L11098_ _L11099_)
                                      (let ((_expr11122_
                                             (gxc#compile-e _L11099_))
                                            (_val11123_
                                             (gxc#compile-e _L11098_))
                                            (_off11124_
                                             (fx+ _off11016_
                                                  _xfields11051_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11124_ '()))
                   (cons _expr11122_ (cons _val11123_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11000_)))
                                    _hd1106411093_
                                    _hd1106111085_)
                                   (_g1105511077_ _g1105711080_))))
                           (_g1105511077_ _g1105711080_))))
                   (_g1105511077_ _g1105711080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1105411126_ _args11001_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11053_)
                                            (gxc#xform-call% _stx11000_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1102011032_)
                                   (let ((_e1102711132_
                                          (##vector-ref
                                           _struct-type1102011032_
                                           '1)))
                                     (let ((_struct-type-id11135_
                                            _e1102711132_))
                                       (let ((_e1102811137_
                                              (##vector-ref
                                               _struct-type1102011032_
                                               '2)))
                                         (let ((_e1102911140_
                                                (##vector-ref
                                                 _struct-type1102011032_
                                                 '3)))
                                           (let ((_fields11143_ _e1102911140_))
                                             (let ((_e1103011145_
                                                    (##vector-ref
                                                     _struct-type1102011032_
                                                     '4)))
                                               (let ((_xfields11148_
                                                      _e1103011145_))
                                                 (_K1102611129_
                                                  _xfields11148_
                                                  _fields11143_
                                                  _struct-type-id11135_))))))))
                                   (_try-match1102211048_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1100211009_)
                (let ((_e1100611153_ (##vector-ref _self1100211009_ '1)))
                  (let ((_struct-t11156_ _e1100611153_))
                    (let ((_e1100711158_ (##vector-ref _self1100211009_ '2)))
                      (let ((_off11161_ _e1100711158_))
                        (_K1100511150_ _off11161_ _struct-t11156_)))))
                (_E1100411013_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self10953_ _stx10954_ _args10955_)
      (let ((_self1095610965_ _self10953_))
        (let ((_E1095810969_
               (lambda () (error '"No clause matching" _self1095610965_))))
          (let ((_K1095910978_
                 (lambda (_inline10972_ _dispatch10973_ _arity10974_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self10953_ _args10955_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx10954_
                          _arity10974_))
                     (if _inline10972_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline10972_ _stx10954_)
                             _stx10954_)))
                         (if _dispatch10973_
                             (let ((_args10976_
                                    (gx#stx-map1 gxc#compile-e _args10955_)))
                               (begin
                                 (gxc#verbose
                                  '"dispatch lambda => "
                                  _dispatch10973_)
                                 (gxc#compile-e
                                  (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _dispatch10973_
                                                           '()))
                                               _args10976_))
                                   _stx10954_))))
                             (gxc#xform-call% _stx10954_)))))))
            (if (struct-instance? gxc#!lambda::t _self1095610965_)
                (let ((_e1096010981_ (##vector-ref _self1095610965_ '1)))
                  (let ((_e1096110984_ (##vector-ref _self1095610965_ '2)))
                    (let ((_arity10987_ _e1096110984_))
                      (let ((_e1096210989_ (##vector-ref _self1095610965_ '3)))
                        (let ((_dispatch10992_ _e1096210989_))
                          (let ((_e1096310994_
                                 (##vector-ref _self1095610965_ '4)))
                            (let ((_inline10997_ _e1096310994_))
                              (_K1095910978_
                               _inline10997_
                               _dispatch10992_
                               _arity10987_))))))))
                (_E1095810969_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self10913_ _stx10914_ _args10915_)
      (let ((_self1091610923_ _self10913_))
        (let ((_E1091810927_
               (lambda () (error '"No clause matching" _self1091610923_))))
          (let ((_K1091910942_
                 (lambda (_clauses10930_)
                   (let ((_$e10936_
                          (find (lambda (_g1093110933_)
                                  (gxc#!lambda-arity-match?
                                   _g1093110933_
                                   _args10915_))
                                _clauses10930_)))
                     (if _$e10936_
                         ((lambda (_clause10939_)
                            (call-method
                             _clause10939_
                             'optimize-call
                             _stx10914_
                             _args10915_))
                          _$e10936_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx10914_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses10930_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses10930_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1091610923_)
                (let ((_e1092010945_ (##vector-ref _self1091610923_ '1)))
                  (let ((_e1092110948_ (##vector-ref _self1091610923_ '2)))
                    (let ((_clauses10951_ _e1092110948_))
                      (_K1091910942_ _clauses10951_))))
                (_E1091810927_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self10849_ _args10850_)
      (let ((_self1085110858_ _self10849_))
        (let ((_E1085310862_
               (lambda () (error '"No clause matching" _self1085110858_))))
          (let ((_K1085410902_
                 (lambda (_arity10865_)
                   (let ((_arity1086610875_ _arity10865_))
                     (let ((_E1086910879_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1086610875_))))
                       (let ((_try-match1086810895_
                              (lambda ()
                                (let ((_K1087010885_
                                       (lambda (_arity10883_)
                                         (fx>= (gx#stx-length _args10850_)
                                               _arity10883_))))
                                  (if (##pair? _arity1086610875_)
                                      (let ((_hd1087110888_
                                             (##car _arity1086610875_))
                                            (_tl1087210890_
                                             (##cdr _arity1086610875_)))
                                        (let ((_arity10893_ _hd1087110888_))
                                          (if (##null? _tl1087210890_)
                                              (_K1087010885_ _arity10893_)
                                              (_E1086910879_))))
                                      (_E1086910879_))))))
                         (let ((_K1087310899_
                                (lambda ()
                                  (fx= (gx#stx-length _args10850_)
                                       _arity10865_))))
                           (if (fixnum? _arity1086610875_)
                               (_K1087310899_)
                               (_try-match1086810895_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1085110858_)
                (let ((_e1085510905_ (##vector-ref _self1085110858_ '1)))
                  (let ((_e1085610908_ (##vector-ref _self1085110858_ '2)))
                    (let ((_arity10911_ _e1085610908_))
                      (_K1085410902_ _arity10911_))))
                (_E1085310862_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx10789_)
      (let ((_g1079110805_
             (lambda (_g1079210802_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1079210802_))))
        (let ((_g1079010846_
               (lambda (_g1079210808_)
                 (if (gx#stx-pair? _g1079210808_)
                     (let ((_e1079510810_ (gx#stx-e _g1079210808_)))
                       (let ((_hd1079610813_ (##car _e1079510810_))
                             (_tl1079710815_ (##cdr _e1079510810_)))
                         (if (gx#stx-pair? _tl1079710815_)
                             (let ((_e1079810818_ (gx#stx-e _tl1079710815_)))
                               (let ((_hd1079910821_ (##car _e1079810818_))
                                     (_tl1080010823_ (##cdr _e1079810818_)))
                                 ((lambda (_L10826_ _L10827_)
                                    (let ((_ctx10840_
                                           (gx#syntax-local-e__0 _L10827_)))
                                      (let ((_code10842_
                                             (##structure-ref
                                              _ctx10840_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code10842_))
                                           gx#current-expander-context
                                           _ctx10840_)))))
                                  _tl1080010823_
                                  _hd1079910821_)))
                             (_g1079110805_ _g1079210808_))))
                     (_g1079110805_ _g1079210808_)))))
          (_g1079010846_ _stx10789_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10596_)
      (let ((_generate-e10598_
             (lambda (_id10778_)
               (let ((_sym10780_ (gxc#identifier-symbol _id10778_)))
                 (let ((_$e10782_ (gxc#optimizer-lookup-type _sym10780_)))
                   (if _$e10782_
                       ((lambda (_type10785_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym10780_)
                            (let ((_typedecl10787_
                                   (call-method _type10785_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym10780_
                                          (cons _typedecl10787_ '()))))))
                        _$e10782_)
                       '(begin)))))))
        (let ((_g1060110639_
               (lambda (_g1060210636_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1060210636_))))
          (let ((_g1060010723_
                 (lambda (_g1060210642_)
                   (if (gx#stx-pair? _g1060210642_)
                       (let ((_e1061710644_ (gx#stx-e _g1060210642_)))
                         (let ((_hd1061810647_ (##car _e1061710644_))
                               (_tl1061910649_ (##cdr _e1061710644_)))
                           (if (gx#stx-pair? _tl1061910649_)
                               (let ((_e1062010652_ (gx#stx-e _tl1061910649_)))
                                 (let ((_hd1062110655_ (##car _e1062010652_))
                                       (_tl1062210657_ (##cdr _e1062010652_)))
                                   (if (gx#stx-pair/null? _hd1062110655_)
                                       (if (fx>= (gx#stx-length _hd1062110655_)
                                                 '0)
                                           (let ((_g17237_
                                                  (gx#syntax-split-splice
                                                   _hd1062110655_
                                                   '0)))
                                             (begin
                                               (let ((_g17238_
                                                      (values-count _g17237_)))
                                                 (if (not (fx= _g17238_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17238_)))
                                               (let ((_target1062310660_
                                                      (values-ref _g17237_ 0))
                                                     (_tl1062510662_
                                                      (values-ref _g17237_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1062510662_)
                                                     (letrec ((_loop1062610665_
                                                               (lambda (_hd1062410668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1063010670_)
                         (if (gx#stx-pair? _hd1062410668_)
                             (let ((_e1062710673_ (gx#stx-e _hd1062410668_)))
                               (let ((_lp-hd1062810676_ (##car _e1062710673_))
                                     (_lp-tl1062910678_ (##cdr _e1062710673_)))
                                 (_loop1062610665_
                                  _lp-tl1062910678_
                                  (cons _lp-hd1062810676_ _id1063010670_))))
                             (let ((_id1063110681_ (reverse _id1063010670_)))
                               (if (gx#stx-pair? _tl1062210657_)
                                   (let ((_e1063210684_
                                          (gx#stx-e _tl1062210657_)))
                                     (let ((_hd1063310687_
                                            (##car _e1063210684_))
                                           (_tl1063410689_
                                            (##cdr _e1063210684_)))
                                       (if (gx#stx-null? _tl1063410689_)
                                           ((lambda (_L10692_)
                                              (let ((_ids10718_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1071010713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1071110715_)
                                (cons _g1071010713_ _g1071110715_))
                              '()
                              _L10692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types10720_
                                                       (map _generate-e10598_
                                                            _ids10718_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types10720_)))))
                                            _id1063110681_)
                                           (_g1060110639_ _g1060210642_))))
                                   (_g1060110639_ _g1060210642_)))))))
               (_loop1062610665_ _target1062310660_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1060110639_
                                                      _g1060210642_)))))
                                           (_g1060110639_ _g1060210642_))
                                       (_g1060110639_ _g1060210642_))))
                               (_g1060110639_ _g1060210642_))))
                       (_g1060110639_ _g1060210642_)))))
            (let ((_g1059910775_
                   (lambda (_g1060210726_)
                     (if (gx#stx-pair? _g1060210726_)
                         (let ((_e1060410728_ (gx#stx-e _g1060210726_)))
                           (let ((_hd1060510731_ (##car _e1060410728_))
                                 (_tl1060610733_ (##cdr _e1060410728_)))
                             (if (gx#stx-pair? _tl1060610733_)
                                 (let ((_e1060710736_
                                        (gx#stx-e _tl1060610733_)))
                                   (let ((_hd1060810739_ (##car _e1060710736_))
                                         (_tl1060910741_
                                          (##cdr _e1060710736_)))
                                     (if (gx#stx-pair? _hd1060810739_)
                                         (let ((_e1061010744_
                                                (gx#stx-e _hd1060810739_)))
                                           (let ((_hd1061110747_
                                                  (##car _e1061010744_))
                                                 (_tl1061210749_
                                                  (##cdr _e1061010744_)))
                                             (if (gx#stx-null? _tl1061210749_)
                                                 (if (gx#stx-pair?
                                                      _tl1060910741_)
                                                     (let ((_e1061310752_
                                                            (gx#stx-e
                                                             _tl1060910741_)))
                                                       (let ((_hd1061410755_
                                                              (##car _e1061310752_))
                                                             (_tl1061510757_
                                                              (##cdr _e1061310752_)))
                                                         (if (gx#stx-null?
                                                              _tl1061510757_)
                                                             ((lambda (_L10760_)
                                                                (_generate-e10598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10760_))
                      _hd1061110747_)
                     (_g1060010723_ _g1060210726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1060010723_
                                                      _g1060210726_))
                                                 (_g1060010723_
                                                  _g1060210726_))))
                                         (_g1060010723_ _g1060210726_))))
                                 (_g1060010723_ _g1060210726_))))
                         (_g1060010723_ _g1060210726_)))))
              (_g1059910775_ _stx10596_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10150_)
      (let ((_g1015410256_
             (lambda (_g1015510253_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1015510253_))))
        (let ((_g1015310263_ (lambda (_g1015510259_) ((lambda () '(begin))))))
          (let ((_g1015210413_
                 (lambda (_g1015510266_)
                   (if (gx#stx-pair? _g1015510266_)
                       (let ((_e1021310268_ (gx#stx-e _g1015510266_)))
                         (let ((_hd1021410271_ (##car _e1021310268_))
                               (_tl1021510273_ (##cdr _e1021310268_)))
                           (if (gx#stx-pair? _tl1021510273_)
                               (let ((_e1021610276_ (gx#stx-e _tl1021510273_)))
                                 (let ((_hd1021710279_ (##car _e1021610276_))
                                       (_tl1021810281_ (##cdr _e1021610276_)))
                                   (if (gx#stx-pair? _hd1021710279_)
                                       (let ((_e1021910284_
                                              (gx#stx-e _hd1021710279_)))
                                         (let ((_hd1022010287_
                                                (##car _e1021910284_))
                                               (_tl1022110289_
                                                (##cdr _e1021910284_)))
                                           (if (gx#identifier? _hd1022010287_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1022010287_)
                                                   (if (gx#stx-pair?
                                                        _tl1022110289_)
                                                       (let ((_e1022210292_
                                                              (gx#stx-e
                                                               _tl1022110289_)))
                                                         (let ((_hd1022310295_
                                                                (##car _e1022210292_))
                                                               (_tl1022410297_
                                                                (##cdr _e1022210292_)))
                                                           (if (gx#stx-null?
                                                                _tl1022410297_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1021810281_)
                           (let ((_e1022510300_ (gx#stx-e _tl1021810281_)))
                             (let ((_hd1022610303_ (##car _e1022510300_))
                                   (_tl1022710305_ (##cdr _e1022510300_)))
                               (if (gx#stx-pair? _hd1022610303_)
                                   (let ((_e1022810308_
                                          (gx#stx-e _hd1022610303_)))
                                     (let ((_hd1022910311_
                                            (##car _e1022810308_))
                                           (_tl1023010313_
                                            (##cdr _e1022810308_)))
                                       (if (gx#identifier? _hd1022910311_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1022910311_)
                                               (if (gx#stx-pair?
                                                    _tl1023010313_)
                                                   (let ((_e1023110316_
                                                          (gx#stx-e
                                                           _tl1023010313_)))
                                                     (let ((_hd1023210319_
                                                            (##car _e1023110316_))
                                                           (_tl1023310321_
                                                            (##cdr _e1023110316_)))
                                                       (if (gx#stx-null?
                                                            _tl1023310321_)
                                                           (if (gx#stx-pair?
                                                                _tl1022710305_)
                                                               (let ((_e1023410324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1022710305_)))
                         (let ((_hd1023510327_ (##car _e1023410324_))
                               (_tl1023610329_ (##cdr _e1023410324_)))
                           (if (gx#stx-pair? _hd1023510327_)
                               (let ((_e1023710332_ (gx#stx-e _hd1023510327_)))
                                 (let ((_hd1023810335_ (##car _e1023710332_))
                                       (_tl1023910337_ (##cdr _e1023710332_)))
                                   (if (gx#identifier? _hd1023810335_)
                                       (if (gx#stx-eq? '%#quote _hd1023810335_)
                                           (if (gx#stx-pair? _tl1023910337_)
                                               (let ((_e1024010340_
                                                      (gx#stx-e
                                                       _tl1023910337_)))
                                                 (let ((_hd1024110343_
                                                        (##car _e1024010340_))
                                                       (_tl1024210345_
                                                        (##cdr _e1024010340_)))
                                                   (if (gx#stx-null?
                                                        _tl1024210345_)
                                                       (if (gx#stx-pair?
                                                            _tl1023610329_)
                                                           (let ((_e1024310348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1023610329_)))
                     (let ((_hd1024410351_ (##car _e1024310348_))
                           (_tl1024510353_ (##cdr _e1024310348_)))
                       (if (gx#stx-pair? _hd1024410351_)
                           (let ((_e1024610356_ (gx#stx-e _hd1024410351_)))
                             (let ((_hd1024710359_ (##car _e1024610356_))
                                   (_tl1024810361_ (##cdr _e1024610356_)))
                               (if (gx#identifier? _hd1024710359_)
                                   (if (gx#stx-eq? '%#ref _hd1024710359_)
                                       (if (gx#stx-pair? _tl1024810361_)
                                           (let ((_e1024910364_
                                                  (gx#stx-e _tl1024810361_)))
                                             (let ((_hd1025010367_
                                                    (##car _e1024910364_))
                                                   (_tl1025110369_
                                                    (##cdr _e1024910364_)))
                                               (if (gx#stx-null?
                                                    _tl1025110369_)
                                                   (if (gx#stx-null?
                                                        _tl1024510353_)
                                                       ((lambda (_L10372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10373_
                         _L10374_
                         _L10375_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L10374_)
                                  (cons (gx#stx-e _L10373_)
                                        (cons (gxc#identifier-symbol _L10372_)
                                              (cons '#f '())))))
                      (_g1015310263_ _g1015510266_)))
                _hd1025010367_
                _hd1024110343_
                _hd1023210319_
                _hd1022310295_)
               (_g1015310263_ _g1015510266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1015310263_
                                                    _g1015510266_))))
                                           (_g1015310263_ _g1015510266_))
                                       (_g1015310263_ _g1015510266_))
                                   (_g1015310263_ _g1015510266_))))
                           (_g1015310263_ _g1015510266_))))
                   (_g1015310263_ _g1015510266_))
               (_g1015310263_ _g1015510266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1015310263_ _g1015510266_))
                                           (_g1015310263_ _g1015510266_))
                                       (_g1015310263_ _g1015510266_))))
                               (_g1015310263_ _g1015510266_))))
                       (_g1015310263_ _g1015510266_))
                   (_g1015310263_ _g1015510266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1015310263_
                                                    _g1015510266_))
                                               (_g1015310263_ _g1015510266_))
                                           (_g1015310263_ _g1015510266_))))
                                   (_g1015310263_ _g1015510266_))))
                           (_g1015310263_ _g1015510266_))
                       (_g1015310263_ _g1015510266_))))
               (_g1015310263_ _g1015510266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1015310263_
                                                    _g1015510266_))
                                               (_g1015310263_ _g1015510266_))))
                                       (_g1015310263_ _g1015510266_))))
                               (_g1015310263_ _g1015510266_))))
                       (_g1015310263_ _g1015510266_)))))
            (let ((_g1015110593_
                   (lambda (_g1015510416_)
                     (if (gx#stx-pair? _g1015510416_)
                         (let ((_e1016110418_ (gx#stx-e _g1015510416_)))
                           (let ((_hd1016210421_ (##car _e1016110418_))
                                 (_tl1016310423_ (##cdr _e1016110418_)))
                             (if (gx#stx-pair? _tl1016310423_)
                                 (let ((_e1016410426_
                                        (gx#stx-e _tl1016310423_)))
                                   (let ((_hd1016510429_ (##car _e1016410426_))
                                         (_tl1016610431_
                                          (##cdr _e1016410426_)))
                                     (if (gx#stx-pair? _hd1016510429_)
                                         (let ((_e1016710434_
                                                (gx#stx-e _hd1016510429_)))
                                           (let ((_hd1016810437_
                                                  (##car _e1016710434_))
                                                 (_tl1016910439_
                                                  (##cdr _e1016710434_)))
                                             (if (gx#identifier?
                                                  _hd1016810437_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1016810437_)
                                                     (if (gx#stx-pair?
                                                          _tl1016910439_)
                                                         (let ((_e1017010442_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1016910439_)))
                   (let ((_hd1017110445_ (##car _e1017010442_))
                         (_tl1017210447_ (##cdr _e1017010442_)))
                     (if (gx#stx-null? _tl1017210447_)
                         (if (gx#stx-pair? _tl1016610431_)
                             (let ((_e1017310450_ (gx#stx-e _tl1016610431_)))
                               (let ((_hd1017410453_ (##car _e1017310450_))
                                     (_tl1017510455_ (##cdr _e1017310450_)))
                                 (if (gx#stx-pair? _hd1017410453_)
                                     (let ((_e1017610458_
                                            (gx#stx-e _hd1017410453_)))
                                       (let ((_hd1017710461_
                                              (##car _e1017610458_))
                                             (_tl1017810463_
                                              (##cdr _e1017610458_)))
                                         (if (gx#identifier? _hd1017710461_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1017710461_)
                                                 (if (gx#stx-pair?
                                                      _tl1017810463_)
                                                     (let ((_e1017910466_
                                                            (gx#stx-e
                                                             _tl1017810463_)))
                                                       (let ((_hd1018010469_
                                                              (##car _e1017910466_))
                                                             (_tl1018110471_
                                                              (##cdr _e1017910466_)))
                                                         (if (gx#stx-null?
                                                              _tl1018110471_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1017510455_)
                         (let ((_e1018210474_ (gx#stx-e _tl1017510455_)))
                           (let ((_hd1018310477_ (##car _e1018210474_))
                                 (_tl1018410479_ (##cdr _e1018210474_)))
                             (if (gx#stx-pair? _hd1018310477_)
                                 (let ((_e1018510482_
                                        (gx#stx-e _hd1018310477_)))
                                   (let ((_hd1018610485_ (##car _e1018510482_))
                                         (_tl1018710487_
                                          (##cdr _e1018510482_)))
                                     (if (gx#identifier? _hd1018610485_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1018610485_)
                                             (if (gx#stx-pair? _tl1018710487_)
                                                 (let ((_e1018810490_
                                                        (gx#stx-e
                                                         _tl1018710487_)))
                                                   (let ((_hd1018910493_
                                                          (##car _e1018810490_))
                                                         (_tl1019010495_
                                                          (##cdr _e1018810490_)))
                                                     (if (gx#stx-null?
                                                          _tl1019010495_)
                                                         (if (gx#stx-pair?
                                                              _tl1018410479_)
                                                             (let ((_e1019110498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1018410479_)))
                       (let ((_hd1019210501_ (##car _e1019110498_))
                             (_tl1019310503_ (##cdr _e1019110498_)))
                         (if (gx#stx-pair? _hd1019210501_)
                             (let ((_e1019410506_ (gx#stx-e _hd1019210501_)))
                               (let ((_hd1019510509_ (##car _e1019410506_))
                                     (_tl1019610511_ (##cdr _e1019410506_)))
                                 (if (gx#identifier? _hd1019510509_)
                                     (if (gx#stx-eq? '%#ref _hd1019510509_)
                                         (if (gx#stx-pair? _tl1019610511_)
                                             (let ((_e1019710514_
                                                    (gx#stx-e _tl1019610511_)))
                                               (let ((_hd1019810517_
                                                      (##car _e1019710514_))
                                                     (_tl1019910519_
                                                      (##cdr _e1019710514_)))
                                                 (if (gx#stx-null?
                                                      _tl1019910519_)
                                                     (if (gx#stx-pair?
                                                          _tl1019310503_)
                                                         (let ((_e1020010522_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1019310503_)))
                   (let ((_hd1020110525_ (##car _e1020010522_))
                         (_tl1020210527_ (##cdr _e1020010522_)))
                     (if (gx#stx-pair? _hd1020110525_)
                         (let ((_e1020310530_ (gx#stx-e _hd1020110525_)))
                           (let ((_hd1020410533_ (##car _e1020310530_))
                                 (_tl1020510535_ (##cdr _e1020310530_)))
                             (if (gx#identifier? _hd1020410533_)
                                 (if (gx#stx-eq? '%#quote _hd1020410533_)
                                     (if (gx#stx-pair? _tl1020510535_)
                                         (let ((_e1020610538_
                                                (gx#stx-e _tl1020510535_)))
                                           (let ((_hd1020710541_
                                                  (##car _e1020610538_))
                                                 (_tl1020810543_
                                                  (##cdr _e1020610538_)))
                                             (if (gx#stx-null? _tl1020810543_)
                                                 (if (gx#stx-null?
                                                      _tl1020210527_)
                                                     ((lambda (_L10546_
                                                               _L10547_
                                                               _L10548_
                                                               _L10549_
                                                               _L10550_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10550_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L10549_)
                                (cons (gx#stx-e _L10548_)
                                      (cons (gxc#identifier-symbol _L10547_)
                                            (cons (gx#stx-e _L10546_) '())))))
                    (_g1015210413_ _g1015510416_)))
              _hd1020710541_
              _hd1019810517_
              _hd1018910493_
              _hd1018010469_
              _hd1017110445_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1015210413_
                                                      _g1015510416_))
                                                 (_g1015210413_
                                                  _g1015510416_))))
                                         (_g1015210413_ _g1015510416_))
                                     (_g1015210413_ _g1015510416_))
                                 (_g1015210413_ _g1015510416_))))
                         (_g1015210413_ _g1015510416_))))
                 (_g1015210413_ _g1015510416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1015210413_
                                                      _g1015510416_))))
                                             (_g1015210413_ _g1015510416_))
                                         (_g1015210413_ _g1015510416_))
                                     (_g1015210413_ _g1015510416_))))
                             (_g1015210413_ _g1015510416_))))
                     (_g1015210413_ _g1015510416_))
                 (_g1015210413_ _g1015510416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1015210413_ _g1015510416_))
                                             (_g1015210413_ _g1015510416_))
                                         (_g1015210413_ _g1015510416_))))
                                 (_g1015210413_ _g1015510416_))))
                         (_g1015210413_ _g1015510416_))
                     (_g1015210413_ _g1015510416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1015210413_
                                                      _g1015510416_))
                                                 (_g1015210413_ _g1015510416_))
                                             (_g1015210413_ _g1015510416_))))
                                     (_g1015210413_ _g1015510416_))))
                             (_g1015210413_ _g1015510416_))
                         (_g1015210413_ _g1015510416_))))
                 (_g1015210413_ _g1015510416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1015210413_
                                                      _g1015510416_))
                                                 (_g1015210413_
                                                  _g1015510416_))))
                                         (_g1015210413_ _g1015510416_))))
                                 (_g1015210413_ _g1015510416_))))
                         (_g1015210413_ _g1015510416_)))))
              (_g1015110593_ _stx10150_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10126_)
      (let ((_self1012710133_ _self10126_))
        (let ((_E1012910137_
               (lambda () (error '"No clause matching" _self1012710133_))))
          (let ((_K1013010142_
                 (lambda (_alias-id10140_)
                   (cons '@alias (cons _alias-id10140_ '())))))
            (if (struct-instance? gxc#!alias::t _self1012710133_)
                (let ((_e1013110145_ (##vector-ref _self1012710133_ '1)))
                  (let ((_alias-id10148_ _e1013110145_))
                    (_K1013010142_ _alias-id10148_)))
                (_E1012910137_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10070_)
      (let ((_self1007110082_ _self10070_))
        (let ((_E1007310086_
               (lambda () (error '"No clause matching" _self1007110082_))))
          (let ((_K1007410095_
                 (lambda (_plist10089_
                          _ctor10090_
                          _fields10091_
                          _super10092_
                          _type-id10093_)
                   (cons '@struct-type
                         (cons _type-id10093_
                               (cons _super10092_
                                     (cons _fields10091_
                                           (cons _ctor10090_
                                                 (cons _plist10089_
                                                       '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self1007110082_)
                (let ((_e1007510098_ (##vector-ref _self1007110082_ '1)))
                  (let ((_type-id10101_ _e1007510098_))
                    (let ((_e1007610103_ (##vector-ref _self1007110082_ '2)))
                      (let ((_super10106_ _e1007610103_))
                        (let ((_e1007710108_
                               (##vector-ref _self1007110082_ '3)))
                          (let ((_fields10111_ _e1007710108_))
                            (let ((_e1007810113_
                                   (##vector-ref _self1007110082_ '4)))
                              (let ((_e1007910116_
                                     (##vector-ref _self1007110082_ '5)))
                                (let ((_ctor10119_ _e1007910116_))
                                  (let ((_e1008010121_
                                         (##vector-ref _self1007110082_ '6)))
                                    (let ((_plist10124_ _e1008010121_))
                                      (_K1007410095_
                                       _plist10124_
                                       _ctor10119_
                                       _fields10111_
                                       _super10106_
                                       _type-id10101_))))))))))))
                (_E1007310086_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10046_)
      (let ((_self1004710053_ _self10046_))
        (let ((_E1004910057_
               (lambda () (error '"No clause matching" _self1004710053_))))
          (let ((_K1005010062_
                 (lambda (_struct-t10060_)
                   (cons '@struct-pred (cons _struct-t10060_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self1004710053_)
                (let ((_e1005110065_ (##vector-ref _self1004710053_ '1)))
                  (let ((_struct-t10068_ _e1005110065_))
                    (_K1005010062_ _struct-t10068_)))
                (_E1004910057_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10022_)
      (let ((_self1002310029_ _self10022_))
        (let ((_E1002510033_
               (lambda () (error '"No clause matching" _self1002310029_))))
          (let ((_K1002610038_
                 (lambda (_struct-t10036_)
                   (cons '@struct-cons (cons _struct-t10036_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self1002310029_)
                (let ((_e1002710041_ (##vector-ref _self1002310029_ '1)))
                  (let ((_struct-t10044_ _e1002710041_))
                    (_K1002610038_ _struct-t10044_)))
                (_E1002510033_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self9991_)
      (let ((_self99929999_ _self9991_))
        (let ((_E999410003_
               (lambda () (error '"No clause matching" _self99929999_))))
          (let ((_K999510009_
                 (lambda (_off10006_ _struct-t10007_)
                   (cons '@struct-getf
                         (cons _struct-t10007_ (cons _off10006_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self99929999_)
                (let ((_e999610012_ (##vector-ref _self99929999_ '1)))
                  (let ((_struct-t10015_ _e999610012_))
                    (let ((_e999710017_ (##vector-ref _self99929999_ '2)))
                      (let ((_off10020_ _e999710017_))
                        (_K999510009_ _off10020_ _struct-t10015_)))))
                (_E999410003_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self9960_)
      (let ((_self99619968_ _self9960_))
        (let ((_E99639972_
               (lambda () (error '"No clause matching" _self99619968_))))
          (let ((_K99649978_
                 (lambda (_off9975_ _struct-t9976_)
                   (cons '@struct-setf
                         (cons _struct-t9976_ (cons _off9975_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self99619968_)
                (let ((_e99659981_ (##vector-ref _self99619968_ '1)))
                  (let ((_struct-t9984_ _e99659981_))
                    (let ((_e99669986_ (##vector-ref _self99619968_ '2)))
                      (let ((_off9989_ _e99669986_))
                        (_K99649978_ _off9989_ _struct-t9984_)))))
                (_E99639972_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self9908_)
      (let ((_self99099919_ _self9908_))
        (let ((_E99119923_
               (lambda () (error '"No clause matching" _self99099919_))))
          (let ((_K99129934_
                 (lambda (_typedecl9926_
                          _inline9927_
                          _dispatch9928_
                          _arity9929_)
                   (if _inline9927_
                       (let ((_$e9931_ _typedecl9926_))
                         (if _$e9931_
                             _$e9931_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity9929_ (cons _dispatch9928_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self99099919_)
                (let ((_e99139937_ (##vector-ref _self99099919_ '1)))
                  (let ((_e99149940_ (##vector-ref _self99099919_ '2)))
                    (let ((_arity9943_ _e99149940_))
                      (let ((_e99159945_ (##vector-ref _self99099919_ '3)))
                        (let ((_dispatch9948_ _e99159945_))
                          (let ((_e99169950_ (##vector-ref _self99099919_ '4)))
                            (let ((_inline9953_ _e99169950_))
                              (let ((_e99179955_
                                     (##vector-ref _self99099919_ '5)))
                                (let ((_typedecl9958_ _e99179955_))
                                  (_K99129934_
                                   _typedecl9958_
                                   _inline9953_
                                   _dispatch9948_
                                   _arity9943_))))))))))
                (_E99119923_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self9841_)
      (let ((_clause-e9843_
             (lambda (_clause9873_)
               (let ((_clause98749882_ _clause9873_))
                 (let ((_E98769886_
                        (lambda ()
                          (error '"No clause matching" _clause98749882_))))
                   (let ((_K98779892_
                          (lambda (_dispatch9889_ _arity9890_)
                            (cons _arity9890_ (cons _dispatch9889_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause98749882_)
                         (let ((_e98789895_
                                (##vector-ref _clause98749882_ '1)))
                           (let ((_e98799898_
                                  (##vector-ref _clause98749882_ '2)))
                             (let ((_arity9901_ _e98799898_))
                               (let ((_e98809903_
                                      (##vector-ref _clause98749882_ '3)))
                                 (let ((_dispatch9906_ _e98809903_))
                                   (_K98779892_
                                    _dispatch9906_
                                    _arity9901_))))))
                         (_E98769886_))))))))
        (let ((_self98449851_ _self9841_))
          (let ((_E98469855_
                 (lambda () (error '"No clause matching" _self98449851_))))
            (let ((_K98479862_
                   (lambda (_clauses9858_)
                     (let ((_clauses9860_ (map _clause-e9843_ _clauses9858_)))
                       (cons '@case-lambda _clauses9860_)))))
              (if (struct-instance? gxc#!case-lambda::t _self98449851_)
                  (let ((_e98489865_ (##vector-ref _self98449851_ '1)))
                    (let ((_e98499868_ (##vector-ref _self98449851_ '2)))
                      (let ((_clauses9871_ _e98499868_))
                        (_K98479862_ _clauses9871_))))
                  (_E98469855_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx9836_)
      (let ((_$e9838_ (gx#resolve-identifier__0 _stx9836_)))
        (if _$e9838_
            (##structure-ref _$e9838_ '1 gx#binding::t '#f)
            (gx#stx-e _stx9836_))))))
