(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
  (define gxc#current-compile-mutators (make-parameter '#f))
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
    (lambda _$args17113_
      (apply make-struct-instance gxc#optimizer-info::t _$args17113_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self17111_)
      (direct-struct-instance-init!
       _self17111_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj17115 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj17115) __obj17115))))))
  (define gxc#optimize!
    (lambda (_ctx17105_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx17105_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx17105_ '1 gx#expander-context::t '#f)
         '#t)
        (call-with-parameters
         (lambda ()
           (let ((_code17108_
                  (gxc#optimize-source
                   (##structure-ref _ctx17105_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx17105_
              _code17108_
              '11
              gx#module-context::t
              '#f)))
         gxc#current-compile-mutators
         (make-hash-table-eq)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx17066_)
      ((letrec ((_lp17068_
                 (lambda (_rest17070_)
                   (let ((_rest1707117079_ _rest17070_))
                     (let ((_E1707417083_
                            (lambda ()
                              (error '"No clause matching" _rest1707117079_))))
                       (let ((_else1707317087_ (lambda () '#!void)))
                         (let ((_K1707517093_
                                (lambda (_rest17090_ _hd17091_)
                                  (if (##structure-instance-of?
                                       _hd17091_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd17091_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx17066_)
                                              (_lp17068_
                                               (##structure-ref
                                                _hd17091_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd17091_)))
                                        (_lp17068_ _rest17090_))
                                      (if (##structure-direct-instance-of?
                                           _hd17091_
                                           'gx#module-import::t)
                                          (_lp17068_
                                           (cons (##structure-ref
                                                  _hd17091_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest17090_))
                                          (if (##structure-direct-instance-of?
                                               _hd17091_
                                               'gx#module-export::t)
                                              (_lp17068_
                                               (cons (##structure-ref
                                                      _hd17091_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest17090_))
                                              (if (##structure-direct-instance-of?
                                                   _hd17091_
                                                   'gx#import-set::t)
                                                  (_lp17068_
                                                   (cons (##structure-ref
                                                          _hd17091_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest17090_))
                                                  (error '"Unexpected module import"
                                                         _hd17091_))))))))
                           (if (##pair? _rest1707117079_)
                               (let ((_hd1707617096_ (##car _rest1707117079_))
                                     (_tl1707717098_ (##cdr _rest1707117079_)))
                                 (let ((_hd17101_ _hd1707617096_))
                                   (let ((_rest17103_ _tl1707717098_))
                                     (_K1707517093_ _rest17103_ _hd17101_))))
                               (_else1707317087_)))))))))
         _lp17068_)
       (##structure-ref _ctx17066_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx17061_)
      (let ((_$e17063_ (gx#core-context-prelude__opt-lambda10575 _ctx17061_)))
        (if _$e17063_ (gxc#optimizer-load-ssxi _$e17063_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx17041_)
      (if (if (##structure-instance-of? _ctx17041_ 'gx#module-context::t)
              (list? (##structure-ref _ctx17041_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht17043_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id17045_
                   (##structure-ref _ctx17041_ '1 gx#expander-context::t '#f)))
              (let ((_mod17047_ (table-ref _ht17043_ _id17045_ '#f)))
                (let ()
                  (let ((_$e17050_ _mod17047_))
                    (if _$e17050_
                        _$e17050_
                        (let ((_mod17053_
                               (gxc#optimizer-import-ssxi _ctx17041_)))
                          (let ((_val17058_
                                 (let ((_$e17055_ _mod17053_))
                                   (if _$e17055_ _$e17055_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht17043_ _id17045_ _val17058_)
                                _val17058_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx17018_)
      (let ((_catch-e17020_
             (lambda (_exn17039_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx17018_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn17039_))
                     '#!void)
                 '#f))))
        (let ((_import-e17021_
               (lambda ()
                 (let ((_str-id17024_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx17018_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path17032_
                          (let ((_odir1702517027_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1702517027_
                                (let ((_odir17030_ _odir1702517027_))
                                  (path-expand
                                   (string-append _str-id17024_ '".ss")
                                   _odir17030_))
                                '#f))))
                     (let ((_library-path17034_
                            (string->symbol
                             (string-append '":" _str-id17024_))))
                       (let ((_ssxi-path17036_
                              (if (if _artefact-path17032_
                                      (file-exists? _artefact-path17032_)
                                      '#f)
                                  _artefact-path17032_
                                  _library-path17034_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path17036_)
                             (gx#import-module__opt-lambda10610
                              _ssxi-path17036_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx17018_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e17020_ _import-e17021_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args17015_
      (apply make-struct-instance gxc#!type::t _$args17015_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args17012_
      (apply make-struct-instance gxc#!alias::t _$args17012_)))
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
    (lambda _$args17009_
      (apply make-struct-instance gxc#!struct-type::t _$args17009_)))
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
    (lambda _$args17006_
      (apply make-struct-instance gxc#!procedure::t _$args17006_)))
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
    (lambda _$args17003_
      (apply make-struct-instance gxc#!struct-pred::t _$args17003_)))
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
    (lambda _$args17000_
      (apply make-struct-instance gxc#!struct-cons::t _$args17000_)))
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
    (lambda _$args16997_
      (apply make-struct-instance gxc#!struct-getf::t _$args16997_)))
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
    (lambda _$args16994_
      (apply make-struct-instance gxc#!struct-setf::t _$args16994_)))
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
    (lambda _$args16991_
      (apply make-struct-instance gxc#!lambda::t _$args16991_)))
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
    (lambda _$args16988_
      (apply make-struct-instance gxc#!case-lambda::t _$args16988_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self16980_
             _id16981_
             _super16982_
             _fields16983_
             _xfields16984_
             _ctor16985_
             _plist16986_)
      (direct-struct-instance-init!
       _self16980_
       _id16981_
       _super16982_
       _fields16983_
       _xfields16984_
       _ctor16985_
       _plist16986_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda16944
      (lambda (_self16946_
               _id16947_
               _arity16948_
               _dispatch16949_
               _inline16950_
               _typedecl16951_)
        (direct-struct-instance-init!
         _self16946_
         _id16947_
         _arity16948_
         _dispatch16949_
         _inline16950_
         _typedecl16951_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self16956_ _id16957_ _arity16958_ _dispatch16959_)
          (let ((_inline16961_ '#f))
            (let ((_typedecl16963_ '#f))
              (direct-struct-instance-init!
               _self16956_
               _id16957_
               _arity16958_
               _dispatch16959_
               _inline16961_
               _typedecl16963_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self16965_
                 _id16966_
                 _arity16967_
                 _dispatch16968_
                 _inline16969_)
          (let ((_typedecl16971_ '#f))
            (direct-struct-instance-init!
             _self16965_
             _id16966_
             _arity16967_
             _dispatch16968_
             _inline16969_
             _typedecl16971_))))
      (define gxc#!lambda:::init!
        (lambda _g17121_
          (let ((_g17120_ (length _g17121_)))
            (cond ((fx= _g17120_ 4) (apply gxc#!lambda:::init!__0 _g17121_))
                  ((fx= _g17120_ 5) (apply gxc#!lambda:::init!__1 _g17121_))
                  ((fx= _g17120_ 6)
                   (apply direct-struct-instance-init! _g17121_))
                  (else (error "No clause matching arguments" _g17121_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type16938_)
      (let ((_$e16940_
             (##structure-ref _type16938_ '7 gxc#!struct-type::t '#f)))
        (if _$e16940_
            (values _$e16940_)
            (let ((_vtab16943_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type16938_
                 _vtab16943_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab16943_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type16929_ _method16930_)
      (let ((_vtab1693116933_
             (##structure-ref _type16929_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1693116933_
            (let ((_vtab16936_ _vtab1693116933_))
              (table-ref _vtab16936_ _method16930_ '#f))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym16926_ _type16927_)
      (begin
        (if (##structure-instance-of? _type16927_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym16926_ _type16927_))
        (gxc#verbose
         '"declare-type "
         _sym16926_
         '" "
         (##vector->list _type16927_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym16926_
         _type16927_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda16901
      (lambda (_type-t16903_ _method16904_ _sym16905_ _rebind?16906_)
        (let ((_type16908_ (gxc#optimizer-resolve-type _type-t16903_)))
          (if (##structure-instance-of? _type16908_ 'gxc#!struct-type::t)
              (let ((_vtab16910_ (gxc#!struct-type-vtab _type16908_)))
                (if _rebind?16906_
                    (if (hash-key? _vtab16910_ _method16904_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t16903_
                         '" "
                         _method16904_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t16903_
                         '" "
                         _method16904_))
                    (if (hash-key? _vtab16910_ _method16904_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t16903_
                           '" "
                           _method16904_
                           '" => "
                           _sym16905_)
                          (hash-put! _vtab16910_ _method16904_ _sym16905_)))))
              (if (not _type16908_)
                  (gxc#verbose '"declare-method: unknown type " _type-t16903_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t16903_
                         _type16908_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t16915_ _method16916_ _sym16917_)
          (let ((_rebind?16919_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda16901
             _type-t16915_
             _method16916_
             _sym16917_
             _rebind?16919_))))
      (define gxc#optimizer-declare-method!
        (lambda _g17123_
          (let ((_g17122_ (length _g17123_)))
            (cond ((fx= _g17122_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g17123_))
                  ((fx= _g17122_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda16901
                          _g17123_))
                  (else (error "No clause matching arguments" _g17123_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym16900_)
      (table-ref
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym16900_
       '#f)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym16892_)
      (let ((_type1689316895_ (gxc#optimizer-lookup-type _sym16892_)))
        (if _type1689316895_
            (let ((_type16898_ _type1689316895_))
              (if (##structure-instance-of? _type16898_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type16898_ '1 gxc#!type::t '#f))
                  _type16898_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t16887_ _method16888_)
      (let ((_type16890_ (gxc#optimizer-resolve-type _type-t16887_)))
        (if (##structure-instance-of? _type16890_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type16890_ _method16888_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx16883_)
      (begin
        (gxc#apply-collect-mutators _stx16883_)
        (let ((_stx16885_ (gxc#apply-lift-top-lambdas _stx16883_)))
          (begin
            (gxc#apply-collect-type-info _stx16885_)
            (gxc#apply-optimize-call _stx16885_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl16880_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16880_ '%#lambda false)
           (hash-put! _tbl16880_ '%#case-lambda false)
           (hash-put! _tbl16880_ '%#let-values false)
           (hash-put! _tbl16880_ '%#letrec-values false)
           (hash-put! _tbl16880_ '%#letrec*-values false)
           (hash-put! _tbl16880_ '%#quote false)
           (hash-put! _tbl16880_ '%#quote-syntax false)
           (hash-put! _tbl16880_ '%#call false)
           (hash-put! _tbl16880_ '%#if false)
           (hash-put! _tbl16880_ '%#ref false)
           (hash-put! _tbl16880_ '%#set! false)
           (hash-put! _tbl16880_ '%#struct-instance? false)
           (hash-put! _tbl16880_ '%#struct-direct-instance? false)
           (hash-put! _tbl16880_ '%#struct-ref false)
           (hash-put! _tbl16880_ '%#struct-set! false)
           _tbl16880_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl16876_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16876_ '%#begin false)
           (hash-put! _tbl16876_ '%#begin-syntax false)
           (hash-put! _tbl16876_ '%#begin-foreign false)
           (hash-put! _tbl16876_ '%#module false)
           (hash-put! _tbl16876_ '%#import false)
           (hash-put! _tbl16876_ '%#export false)
           (hash-put! _tbl16876_ '%#provide false)
           (hash-put! _tbl16876_ '%#extern false)
           (hash-put! _tbl16876_ '%#define-values false)
           (hash-put! _tbl16876_ '%#define-syntax false)
           (hash-put! _tbl16876_ '%#define-alias false)
           (hash-put! _tbl16876_ '%#declare false)
           _tbl16876_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl16872_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16872_ (force gxc#&false-special-form))
           (hash-copy! _tbl16872_ (force gxc#&false-expression))
           _tbl16872_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl16868_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16868_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl16868_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl16868_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl16868_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl16868_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl16868_ '%#quote gxc#xform-identity)
           (hash-put! _tbl16868_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl16868_ '%#call gxc#xform-identity)
           (hash-put! _tbl16868_ '%#if gxc#xform-identity)
           (hash-put! _tbl16868_ '%#ref gxc#xform-identity)
           (hash-put! _tbl16868_ '%#set! gxc#xform-identity)
           (hash-put! _tbl16868_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl16868_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl16868_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl16868_ '%#struct-set! gxc#xform-identity)
           _tbl16868_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl16864_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16864_ '%#begin gxc#xform-identity)
           (hash-put! _tbl16864_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl16864_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl16864_ '%#module gxc#xform-identity)
           (hash-put! _tbl16864_ '%#import gxc#xform-identity)
           (hash-put! _tbl16864_ '%#export gxc#xform-identity)
           (hash-put! _tbl16864_ '%#provide gxc#xform-identity)
           (hash-put! _tbl16864_ '%#extern gxc#xform-identity)
           (hash-put! _tbl16864_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl16864_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl16864_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl16864_ '%#declare gxc#xform-identity)
           _tbl16864_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl16860_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16860_ (force gxc#&identity-special-form))
           (hash-copy! _tbl16860_ (force gxc#&identity-expression))
           _tbl16860_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl16856_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl16856_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl16856_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl16856_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl16856_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl16856_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl16856_ '%#quote gxc#xform-identity)
           (hash-put! _tbl16856_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl16856_ '%#call gxc#xform-call%)
           (hash-put! _tbl16856_ '%#if gxc#xform-if%)
           (hash-put! _tbl16856_ '%#ref gxc#xform-identity)
           (hash-put! _tbl16856_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl16856_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl16856_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl16856_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl16856_ '%#struct-set! gxc#xform-struct-op%)
           _tbl16856_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl16852_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16852_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl16852_ (force gxc#&identity))
           (hash-put! _tbl16852_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl16852_ '%#module gxc#xform-module%)
           (hash-put! _tbl16852_ '%#define-values gxc#xform-define-values%)
           _tbl16852_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl16848_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16848_ (force gxc#&void))
           (hash-put! _tbl16848_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl16848_ '%#module gxc#collect-module%)
           (hash-put! _tbl16848_ '%#lambda gxc#collect-body-lambda%)
           (hash-put! _tbl16848_ '%#case-lambda gxc#collect-body-case-lambda%)
           (hash-put! _tbl16848_ '%#let-values gxc#collect-body-let-values%)
           (hash-put! _tbl16848_ '%#letrec-values gxc#collect-body-let-values%)
           (hash-put!
            _tbl16848_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (hash-put! _tbl16848_ '%#call gxc#collect-operands)
           (hash-put! _tbl16848_ '%#if gxc#collect-operands)
           (hash-put! _tbl16848_ '%#set! gxc#collect-mutators-setq%)
           (hash-put! _tbl16848_ '%#struct-instance? gxc#collect-operands)
           (hash-put!
            _tbl16848_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (hash-put! _tbl16848_ '%#struct-ref gxc#collect-operands)
           (hash-put! _tbl16848_ '%#struct-set! gxc#collect-operands)
           _tbl16848_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx16841_ . _args16843_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16841_ _args16843_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl16838_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16838_ (force gxc#&identity))
           (hash-put! _tbl16838_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl16838_ '%#module gxc#xform-module%)
           (hash-put!
            _tbl16838_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl16838_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx16831_ . _args16833_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16831_ _args16833_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl16828_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16828_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl16828_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl16828_ '%#ref gxc#expression-subst-ref%)
           _tbl16828_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx16821_ . _args16823_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16821_ _args16823_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl16818_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16818_ (force gxc#&void))
           (hash-put! _tbl16818_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl16818_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl16818_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl16818_ '%#call gxc#collect-type-call%)
           _tbl16818_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx16811_ . _args16813_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16811_ _args16813_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl16808_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16808_ (force gxc#&false))
           (hash-put! _tbl16808_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl16808_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl16808_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl16808_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl16808_ '%#ref gxc#basic-expression-type-ref%)
           _tbl16808_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx16801_ . _args16803_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16801_ _args16803_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl16798_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16798_ (force gxc#&basic-xform))
           (hash-put! _tbl16798_ '%#call gxc#optimize-call%)
           _tbl16798_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx16791_ . _args16793_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16791_ _args16793_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl16788_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16788_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl16788_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl16788_ '%#module gxc#generate-ssxi-module%)
           (hash-put!
            _tbl16788_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl16788_ '%#call gxc#generate-ssxi-call%)
           _tbl16788_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx16781_ . _args16783_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16781_ _args16783_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx16778_ . _args16779_) _stx16778_))
  (define gxc#xform-wrap-source
    (lambda (_stx16775_ _src-stx16776_)
      (gx#stx-wrap-source _stx16775_ (gx#stx-source _src-stx16776_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args16769_)
      (lambda (_g1677016772_)
        (apply gxc#compile-e _g1677016772_ _args16769_))))
  (define gxc#xform-begin%
    (lambda (_stx16728_ . _args16729_)
      (let ((_g1673116741_
             (lambda (_g1673216738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1673216738_))))
        (let ((_g1673016766_
               (lambda (_g1673216744_)
                 (if (gx#stx-pair? _g1673216744_)
                     (let ((_e1673416746_ (gx#stx-e _g1673216744_)))
                       (let ((_hd1673516749_ (##car _e1673416746_))
                             (_tl1673616751_ (##cdr _e1673416746_)))
                         ((lambda (_L16754_)
                            (let ((_forms16764_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16729_)
                                    _L16754_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms16764_)
                               _stx16728_)))
                          _tl1673616751_)))
                     (_g1673116741_ _g1673216744_)))))
          (_g1673016766_ _stx16728_)))))
  (define gxc#xform-module%
    (lambda (_stx16665_ . _args16666_)
      (let ((_g1666816682_
             (lambda (_g1666916679_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1666916679_))))
        (let ((_g1666716725_
               (lambda (_g1666916685_)
                 (if (gx#stx-pair? _g1666916685_)
                     (let ((_e1667216687_ (gx#stx-e _g1666916685_)))
                       (let ((_hd1667316690_ (##car _e1667216687_))
                             (_tl1667416692_ (##cdr _e1667216687_)))
                         (if (gx#stx-pair? _tl1667416692_)
                             (let ((_e1667516695_ (gx#stx-e _tl1667416692_)))
                               (let ((_hd1667616698_ (##car _e1667516695_))
                                     (_tl1667716700_ (##cdr _e1667516695_)))
                                 ((lambda (_L16703_ _L16704_)
                                    (let ((_ctx16717_
                                           (gx#syntax-local-e__0 _L16704_)))
                                      (let ((_code16719_
                                             (##structure-ref
                                              _ctx16717_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code16722_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code16719_
                                                         _args16666_))
                                                gx#current-expander-context
                                                _ctx16717_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx16717_
                                               _code16722_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L16704_
                                                           (cons _code16722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16665_)))))))
                                  _tl1667716700_
                                  _hd1667616698_)))
                             (_g1666816682_ _g1666916685_))))
                     (_g1666816682_ _g1666916685_)))))
          (_g1666716725_ _stx16665_)))))
  (define gxc#xform-define-values%
    (lambda (_stx16595_ . _args16596_)
      (let ((_g1659816615_
             (lambda (_g1659916612_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1659916612_))))
        (let ((_g1659716662_
               (lambda (_g1659916618_)
                 (if (gx#stx-pair? _g1659916618_)
                     (let ((_e1660216620_ (gx#stx-e _g1659916618_)))
                       (let ((_hd1660316623_ (##car _e1660216620_))
                             (_tl1660416625_ (##cdr _e1660216620_)))
                         (if (gx#stx-pair? _tl1660416625_)
                             (let ((_e1660516628_ (gx#stx-e _tl1660416625_)))
                               (let ((_hd1660616631_ (##car _e1660516628_))
                                     (_tl1660716633_ (##cdr _e1660516628_)))
                                 (if (gx#stx-pair? _tl1660716633_)
                                     (let ((_e1660816636_
                                            (gx#stx-e _tl1660716633_)))
                                       (let ((_hd1660916639_
                                              (##car _e1660816636_))
                                             (_tl1661016641_
                                              (##cdr _e1660816636_)))
                                         (if (gx#stx-null? _tl1661016641_)
                                             ((lambda (_L16644_ _L16645_)
                                                (let ((_expr16660_
                                                       (apply gxc#compile-e
                                                              _L16644_
                                                              _args16596_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16645_
                                                               (cons _expr16660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16595_)))
                                              _hd1660916639_
                                              _hd1660616631_)
                                             (_g1659816615_ _g1659916618_))))
                                     (_g1659816615_ _g1659916618_))))
                             (_g1659816615_ _g1659916618_))))
                     (_g1659816615_ _g1659916618_)))))
          (_g1659716662_ _stx16595_)))))
  (define gxc#xform-lambda%
    (lambda (_stx16538_ . _args16539_)
      (let ((_g1654116555_
             (lambda (_g1654216552_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1654216552_))))
        (let ((_g1654016592_
               (lambda (_g1654216558_)
                 (if (gx#stx-pair? _g1654216558_)
                     (let ((_e1654516560_ (gx#stx-e _g1654216558_)))
                       (let ((_hd1654616563_ (##car _e1654516560_))
                             (_tl1654716565_ (##cdr _e1654516560_)))
                         (if (gx#stx-pair? _tl1654716565_)
                             (let ((_e1654816568_ (gx#stx-e _tl1654716565_)))
                               (let ((_hd1654916571_ (##car _e1654816568_))
                                     (_tl1655016573_ (##cdr _e1654816568_)))
                                 ((lambda (_L16576_ _L16577_)
                                    (let ((_body16590_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16539_)
                                            _L16576_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L16577_ _body16590_))
                                       _stx16538_)))
                                  _tl1655016573_
                                  _hd1654916571_)))
                             (_g1654116555_ _g1654216558_))))
                     (_g1654116555_ _g1654216558_)))))
          (_g1654016592_ _stx16538_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16451_ . _args16452_)
      (let ((_clause-e16454_
             (lambda (_clause16495_)
               (let ((_g1649716508_
                      (lambda (_g1649816505_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1649816505_))))
                 (let ((_g1649616535_
                        (lambda (_g1649816511_)
                          (if (gx#stx-pair? _g1649816511_)
                              (let ((_e1650116513_ (gx#stx-e _g1649816511_)))
                                (let ((_hd1650216516_ (##car _e1650116513_))
                                      (_tl1650316518_ (##cdr _e1650116513_)))
                                  ((lambda (_L16521_ _L16522_)
                                     (let ((_body16533_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args16452_)
                                             _L16521_)))
                                       (cons _L16522_ _body16533_)))
                                   _tl1650316518_
                                   _hd1650216516_)))
                              (_g1649716508_ _g1649816511_)))))
                   (_g1649616535_ _clause16495_))))))
        (let ((_g1645616466_
               (lambda (_g1645716463_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1645716463_))))
          (let ((_g1645516492_
                 (lambda (_g1645716469_)
                   (if (gx#stx-pair? _g1645716469_)
                       (let ((_e1645916471_ (gx#stx-e _g1645716469_)))
                         (let ((_hd1646016474_ (##car _e1645916471_))
                               (_tl1646116476_ (##cdr _e1645916471_)))
                           ((lambda (_L16479_)
                              (let ((_clauses16490_
                                     (gx#stx-map1 _clause-e16454_ _L16479_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses16490_)
                                 _stx16451_)))
                            _tl1646116476_)))
                       (_g1645616466_ _g1645716469_)))))
            (_g1645516492_ _stx16451_))))))
  (define gxc#xform-let-values%
    (lambda (_stx16245_ . _args16246_)
      (let ((_g1624816281_
             (lambda (_g1624916278_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1624916278_))))
        (let ((_g1624716448_
               (lambda (_g1624916284_)
                 (if (gx#stx-pair? _g1624916284_)
                     (let ((_e1625416286_ (gx#stx-e _g1624916284_)))
                       (let ((_hd1625516289_ (##car _e1625416286_))
                             (_tl1625616291_ (##cdr _e1625416286_)))
                         (if (gx#stx-pair? _tl1625616291_)
                             (let ((_e1625716294_ (gx#stx-e _tl1625616291_)))
                               (let ((_hd1625816297_ (##car _e1625716294_))
                                     (_tl1625916299_ (##cdr _e1625716294_)))
                                 (if (gx#stx-pair/null? _hd1625816297_)
                                     (if (fx>= (gx#stx-length _hd1625816297_)
                                               '0)
                                         (let ((_g17124_
                                                (gx#syntax-split-splice
                                                 _hd1625816297_
                                                 '0)))
                                           (begin
                                             (let ((_g17125_
                                                    (values-count _g17124_)))
                                               (if (not (fx= _g17125_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17125_)))
                                             (let ((_target1626016302_
                                                    (values-ref _g17124_ 0))
                                                   (_tl1626216304_
                                                    (values-ref _g17124_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1626216304_)
                                                   (letrec ((_loop1626316307_
                                                             (lambda (_hd1626116310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1626716312_
                              _hd1626816314_)
                       (if (gx#stx-pair? _hd1626116310_)
                           (let ((_e1626416317_ (gx#stx-e _hd1626116310_)))
                             (let ((_lp-hd1626516320_ (##car _e1626416317_))
                                   (_lp-tl1626616322_ (##cdr _e1626416317_)))
                               (if (gx#stx-pair? _lp-hd1626516320_)
                                   (let ((_e1627116325_
                                          (gx#stx-e _lp-hd1626516320_)))
                                     (let ((_hd1627216328_
                                            (##car _e1627116325_))
                                           (_tl1627316330_
                                            (##cdr _e1627116325_)))
                                       (if (gx#stx-pair? _tl1627316330_)
                                           (let ((_e1627416333_
                                                  (gx#stx-e _tl1627316330_)))
                                             (let ((_hd1627516336_
                                                    (##car _e1627416333_))
                                                   (_tl1627616338_
                                                    (##cdr _e1627416333_)))
                                               (if (gx#stx-null?
                                                    _tl1627616338_)
                                                   (_loop1626316307_
                                                    _lp-tl1626616322_
                                                    (cons _hd1627516336_
                                                          _expr1626716312_)
                                                    (cons _hd1627216328_
                                                          _hd1626816314_))
                                                   (_g1624816281_
                                                    _g1624916284_))))
                                           (_g1624816281_ _g1624916284_))))
                                   (_g1624816281_ _g1624916284_))))
                           (let ((_expr1626916341_ (reverse _expr1626716312_))
                                 (_hd1627016343_ (reverse _hd1626816314_)))
                             ((lambda (_L16346_ _L16347_ _L16348_ _L16349_)
                                (let ((_g1636816384_
                                       (lambda (_g1636916381_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1636916381_))))
                                  (let ((_g1636716438_
                                         (lambda (_g1636916387_)
                                           (if (gx#stx-pair/null?
                                                _g1636916387_)
                                               (if (fx>= (gx#stx-length
                                                          _g1636916387_)
                                                         '0)
                                                   (let ((_g17126_
                                                          (gx#syntax-split-splice
                                                           _g1636916387_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17127_
                                                              (values-count
                                                               _g17126_)))
                                                         (if (not (fx= _g17127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g17127_)))
               (let ((_target1637116389_ (values-ref _g17126_ 0))
                     (_tl1637316391_ (values-ref _g17126_ 1)))
                 (if (gx#stx-null? _tl1637316391_)
                     (letrec ((_loop1637416394_
                               (lambda (_hd1637216397_ _expr1637816399_)
                                 (if (gx#stx-pair? _hd1637216397_)
                                     (let ((_e1637516402_
                                            (gx#syntax-e _hd1637216397_)))
                                       (let ((_lp-hd1637616405_
                                              (##car _e1637516402_))
                                             (_lp-tl1637716407_
                                              (##cdr _e1637516402_)))
                                         (_loop1637416394_
                                          _lp-tl1637716407_
                                          (cons _lp-hd1637616405_
                                                _expr1637816399_))))
                                     (let ((_expr1637916410_
                                            (reverse _expr1637816399_)))
                                       ((lambda (_L16413_)
                                          (let ()
                                            (let ((_body16426_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args16246_)
                                                    _L16346_)))
                                              (gxc#xform-wrap-source
                                               (cons _L16349_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L16413_
                                                              _L16348_)
                                                             (foldr (lambda (_g1642716431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1642816433_
                                     _g1642916435_)
                              (cons (cons _g1642816433_
                                          (cons _g1642716431_ '()))
                                    _g1642916435_))
                            '()
                            _L16413_
                            _L16348_))
                   _body16426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16245_))))
                                        _expr1637916410_))))))
                       (_loop1637416394_ _target1637116389_ '()))
                     (_g1636816384_ _g1636916387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1636816384_
                                                    _g1636916387_))
                                               (_g1636816384_
                                                _g1636916387_)))))
                                    (_g1636716438_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args16246_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1644016443_
                                                        _g1644116445_)
                                                 (cons _g1644016443_
                                                       _g1644116445_))
                                               '()
                                               _L16347_)))))))
                              _tl1625916299_
                              _expr1626916341_
                              _hd1627016343_
                              _hd1625516289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1626316307_
                                                      _target1626016302_
                                                      '()
                                                      '()))
                                                   (_g1624816281_
                                                    _g1624916284_)))))
                                         (_g1624816281_ _g1624916284_))
                                     (_g1624816281_ _g1624916284_))))
                             (_g1624816281_ _g1624916284_))))
                     (_g1624816281_ _g1624916284_)))))
          (_g1624716448_ _stx16245_)))))
  (define gxc#xform-call%
    (lambda (_stx16187_ . _args16188_)
      (let ((_g1619016204_
             (lambda (_g1619116201_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1619116201_))))
        (let ((_g1618916242_
               (lambda (_g1619116207_)
                 (if (gx#stx-pair? _g1619116207_)
                     (let ((_e1619416209_ (gx#stx-e _g1619116207_)))
                       (let ((_hd1619516212_ (##car _e1619416209_))
                             (_tl1619616214_ (##cdr _e1619416209_)))
                         (if (gx#stx-pair? _tl1619616214_)
                             (let ((_e1619716217_ (gx#stx-e _tl1619616214_)))
                               (let ((_hd1619816220_ (##car _e1619716217_))
                                     (_tl1619916222_ (##cdr _e1619716217_)))
                                 ((lambda (_L16225_ _L16226_)
                                    (let ((_rator16239_
                                           (apply gxc#compile-e
                                                  _L16226_
                                                  _args16188_))
                                          (_rands16240_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16188_)
                                            _L16225_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator16239_ _rands16240_))
                                       _stx16187_)))
                                  _tl1619916222_
                                  _hd1619816220_)))
                             (_g1619016204_ _g1619116207_))))
                     (_g1619016204_ _g1619116207_)))))
          (_g1618916242_ _stx16187_)))))
  (define gxc#xform-if%
    (lambda (_stx16146_ . _args16147_)
      (let ((_g1614916159_
             (lambda (_g1615016156_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1615016156_))))
        (let ((_g1614816184_
               (lambda (_g1615016162_)
                 (if (gx#stx-pair? _g1615016162_)
                     (let ((_e1615216164_ (gx#stx-e _g1615016162_)))
                       (let ((_hd1615316167_ (##car _e1615216164_))
                             (_tl1615416169_ (##cdr _e1615216164_)))
                         ((lambda (_L16172_)
                            (let ((_forms16182_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16147_)
                                    _L16172_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms16182_)
                               _stx16146_)))
                          _tl1615416169_)))
                     (_g1614916159_ _g1615016162_)))))
          (_g1614816184_ _stx16146_)))))
  (define gxc#xform-setq%
    (lambda (_stx16076_ . _args16077_)
      (let ((_g1607916096_
             (lambda (_g1608016093_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1608016093_))))
        (let ((_g1607816143_
               (lambda (_g1608016099_)
                 (if (gx#stx-pair? _g1608016099_)
                     (let ((_e1608316101_ (gx#stx-e _g1608016099_)))
                       (let ((_hd1608416104_ (##car _e1608316101_))
                             (_tl1608516106_ (##cdr _e1608316101_)))
                         (if (gx#stx-pair? _tl1608516106_)
                             (let ((_e1608616109_ (gx#stx-e _tl1608516106_)))
                               (let ((_hd1608716112_ (##car _e1608616109_))
                                     (_tl1608816114_ (##cdr _e1608616109_)))
                                 (if (gx#stx-pair? _tl1608816114_)
                                     (let ((_e1608916117_
                                            (gx#stx-e _tl1608816114_)))
                                       (let ((_hd1609016120_
                                              (##car _e1608916117_))
                                             (_tl1609116122_
                                              (##cdr _e1608916117_)))
                                         (if (gx#stx-null? _tl1609116122_)
                                             ((lambda (_L16125_ _L16126_)
                                                (let ((_expr16141_
                                                       (apply gxc#compile-e
                                                              _L16125_
                                                              _args16077_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L16126_
                                                               (cons _expr16141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16076_)))
                                              _hd1609016120_
                                              _hd1608716112_)
                                             (_g1607916096_ _g1608016099_))))
                                     (_g1607916096_ _g1608016099_))))
                             (_g1607916096_ _g1608016099_))))
                     (_g1607916096_ _g1608016099_)))))
          (_g1607816143_ _stx16076_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx16032_ . _args16033_)
      (let ((_g1603516046_
             (lambda (_g1603616043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1603616043_))))
        (let ((_g1603416073_
               (lambda (_g1603616049_)
                 (if (gx#stx-pair? _g1603616049_)
                     (let ((_e1603916051_ (gx#stx-e _g1603616049_)))
                       (let ((_hd1604016054_ (##car _e1603916051_))
                             (_tl1604116056_ (##cdr _e1603916051_)))
                         ((lambda (_L16059_ _L16060_)
                            (let ((_op-args16071_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16033_)
                                    _L16059_)))
                              (gxc#xform-wrap-source
                               (cons _L16060_ _op-args16071_)
                               _stx16032_)))
                          _tl1604116056_
                          _hd1604016054_)))
                     (_g1603516046_ _g1603616049_)))))
          (_g1603416073_ _stx16032_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx15963_)
      (let ((_g1596515982_
             (lambda (_g1596615979_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1596615979_))))
        (let ((_g1596416029_
               (lambda (_g1596615985_)
                 (if (gx#stx-pair? _g1596615985_)
                     (let ((_e1596915987_ (gx#stx-e _g1596615985_)))
                       (let ((_hd1597015990_ (##car _e1596915987_))
                             (_tl1597115992_ (##cdr _e1596915987_)))
                         (if (gx#stx-pair? _tl1597115992_)
                             (let ((_e1597215995_ (gx#stx-e _tl1597115992_)))
                               (let ((_hd1597315998_ (##car _e1597215995_))
                                     (_tl1597416000_ (##cdr _e1597215995_)))
                                 (if (gx#stx-pair? _tl1597416000_)
                                     (let ((_e1597516003_
                                            (gx#stx-e _tl1597416000_)))
                                       (let ((_hd1597616006_
                                              (##car _e1597516003_))
                                             (_tl1597716008_
                                              (##cdr _e1597516003_)))
                                         (if (gx#stx-null? _tl1597716008_)
                                             ((lambda (_L16011_ _L16012_)
                                                (let ((_sym16027_
                                                       (gxc#identifier-symbol
                                                        _L16012_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym16027_)
                                                    (hash-put!
                                                     (gxc#current-compile-mutators)
                                                     _sym16027_
                                                     '#t)
                                                    (gxc#compile-e _L16011_))))
                                              _hd1597616006_
                                              _hd1597315998_)
                                             (_g1596515982_ _g1596615985_))))
                                     (_g1596515982_ _g1596615985_))))
                             (_g1596515982_ _g1596615985_))))
                     (_g1596515982_ _g1596615985_)))))
          (_g1596416029_ _stx15963_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form15197_)
      (let ((_g1520215359_
             (lambda (_g1520315356_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1520315356_))))
        (let ((_g1520115366_ (lambda (_g1520315362_) ((lambda () '#f)))))
          (let ((_g1520015506_
                 (lambda (_g1520315369_)
                   (if (gx#stx-pair? _g1520315369_)
                       (let ((_e1531915371_ (gx#stx-e _g1520315369_)))
                         (let ((_hd1532015374_ (##car _e1531915371_))
                               (_tl1532115376_ (##cdr _e1531915371_)))
                           (if (gx#stx-pair? _tl1532115376_)
                               (let ((_e1532215379_ (gx#stx-e _tl1532115376_)))
                                 (let ((_hd1532315382_ (##car _e1532215379_))
                                       (_tl1532415384_ (##cdr _e1532215379_)))
                                   (if (gx#stx-pair? _hd1532315382_)
                                       (let ((_e1532515387_
                                              (gx#stx-e _hd1532315382_)))
                                         (let ((_hd1532615390_
                                                (##car _e1532515387_))
                                               (_tl1532715392_
                                                (##cdr _e1532515387_)))
                                           (if (gx#identifier? _hd1532615390_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1532615390_)
                                                   (if (gx#stx-pair?
                                                        _tl1532715392_)
                                                       (let ((_e1532815395_
                                                              (gx#stx-e
                                                               _tl1532715392_)))
                                                         (let ((_hd1532915398_
                                                                (##car _e1532815395_))
                                                               (_tl1533015400_
                                                                (##cdr _e1532815395_)))
                                                           (if (gx#stx-pair?
                                                                _hd1532915398_)
                                                               (let ((_e1533115403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1532915398_)))
                         (let ((_hd1533215406_ (##car _e1533115403_))
                               (_tl1533315408_ (##cdr _e1533115403_)))
                           (if (gx#identifier? _hd1533215406_)
                               (if (gx#stx-eq? '%#ref _hd1533215406_)
                                   (if (gx#stx-pair? _tl1533315408_)
                                       (let ((_e1533415411_
                                              (gx#stx-e _tl1533315408_)))
                                         (let ((_hd1533515414_
                                                (##car _e1533415411_))
                                               (_tl1533615416_
                                                (##cdr _e1533415411_)))
                                           (if (gx#stx-null? _tl1533615416_)
                                               (if (gx#stx-pair?
                                                    _tl1533015400_)
                                                   (let ((_e1533715419_
                                                          (gx#stx-e
                                                           _tl1533015400_)))
                                                     (let ((_hd1533815422_
                                                            (##car _e1533715419_))
                                                           (_tl1533915424_
                                                            (##cdr _e1533715419_)))
                                                       (if (gx#stx-pair?
                                                            _hd1533815422_)
                                                           (let ((_e1534015427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1533815422_)))
                     (let ((_hd1534115430_ (##car _e1534015427_))
                           (_tl1534215432_ (##cdr _e1534015427_)))
                       (if (gx#identifier? _hd1534115430_)
                           (if (gx#stx-eq? '%#ref _hd1534115430_)
                               (if (gx#stx-pair? _tl1534215432_)
                                   (let ((_e1534315435_
                                          (gx#stx-e _tl1534215432_)))
                                     (let ((_hd1534415438_
                                            (##car _e1534315435_))
                                           (_tl1534515440_
                                            (##cdr _e1534315435_)))
                                       (if (gx#stx-null? _tl1534515440_)
                                           (if (gx#stx-pair? _tl1533915424_)
                                               (let ((_e1534615443_
                                                      (gx#stx-e
                                                       _tl1533915424_)))
                                                 (let ((_hd1534715446_
                                                        (##car _e1534615443_))
                                                       (_tl1534815448_
                                                        (##cdr _e1534615443_)))
                                                   (if (gx#stx-pair?
                                                        _hd1534715446_)
                                                       (let ((_e1534915451_
                                                              (gx#stx-e
                                                               _hd1534715446_)))
                                                         (let ((_hd1535015454_
                                                                (##car _e1534915451_))
                                                               (_tl1535115456_
                                                                (##cdr _e1534915451_)))
                                                           (if (gx#identifier?
                                                                _hd1535015454_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1535015454_)
                           (if (gx#stx-pair? _tl1535115456_)
                               (let ((_e1535215459_ (gx#stx-e _tl1535115456_)))
                                 (let ((_hd1535315462_ (##car _e1535215459_))
                                       (_tl1535415464_ (##cdr _e1535215459_)))
                                   (if (gx#stx-null? _tl1535415464_)
                                       (if (gx#stx-null? _tl1534815448_)
                                           (if (gx#stx-null? _tl1532415384_)
                                               ((lambda (_L15467_
                                                         _L15468_
                                                         _L15469_
                                                         _L15470_)
                                                  (if (if (gx#identifier?
                                                           _L15470_)
                                                          (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15469_)
                           'apply)
                      (if (gx#free-identifier=? _L15470_ _L15467_)
                          (not (gx#free-identifier=? _L15468_ _L15470_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1520115366_ _g1520315369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1535315462_
                                                _hd1534415438_
                                                _hd1533515414_
                                                _hd1532015374_)
                                               (_g1520115366_ _g1520315369_))
                                           (_g1520115366_ _g1520315369_))
                                       (_g1520115366_ _g1520315369_))))
                               (_g1520115366_ _g1520315369_))
                           (_g1520115366_ _g1520315369_))
                       (_g1520115366_ _g1520315369_))))
               (_g1520115366_ _g1520315369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1520115366_ _g1520315369_))
                                           (_g1520115366_ _g1520315369_))))
                                   (_g1520115366_ _g1520315369_))
                               (_g1520115366_ _g1520315369_))
                           (_g1520115366_ _g1520315369_))))
                   (_g1520115366_ _g1520315369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1520115366_
                                                    _g1520315369_))
                                               (_g1520115366_ _g1520315369_))))
                                       (_g1520115366_ _g1520315369_))
                                   (_g1520115366_ _g1520315369_))
                               (_g1520115366_ _g1520315369_))))
                       (_g1520115366_ _g1520315369_))))
               (_g1520115366_ _g1520315369_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1520115366_
                                                    _g1520315369_))
                                               (_g1520115366_ _g1520315369_))))
                                       (_g1520115366_ _g1520315369_))))
                               (_g1520115366_ _g1520315369_))))
                       (_g1520115366_ _g1520315369_)))))
            (let ((_g1519915766_
                   (lambda (_g1520315509_)
                     (if (gx#stx-pair? _g1520315509_)
                         (let ((_e1525515511_ (gx#stx-e _g1520315509_)))
                           (let ((_hd1525615514_ (##car _e1525515511_))
                                 (_tl1525715516_ (##cdr _e1525515511_)))
                             (if (gx#stx-pair/null? _hd1525615514_)
                                 (if (fx>= (gx#stx-length _hd1525615514_) '0)
                                     (let ((_g17128_
                                            (gx#syntax-split-splice
                                             _hd1525615514_
                                             '0)))
                                       (begin
                                         (let ((_g17129_
                                                (values-count _g17128_)))
                                           (if (not (fx= _g17129_ 2))
                                               (error "Context expects 2 values"
                                                      _g17129_)))
                                         (let ((_target1525815519_
                                                (values-ref _g17128_ 0))
                                               (_tl1526015521_
                                                (values-ref _g17128_ 1)))
                                           (letrec ((_loop1526115524_
                                                     (lambda (_hd1525915527_
                                                              _arg1526515529_)
                                                       (if (gx#stx-pair?
                                                            _hd1525915527_)
                                                           (let ((_e1526215532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1525915527_)))
                     (let ((_lp-hd1526315535_ (##car _e1526215532_))
                           (_lp-tl1526415537_ (##cdr _e1526215532_)))
                       (_loop1526115524_
                        _lp-tl1526415537_
                        (cons _lp-hd1526315535_ _arg1526515529_))))
                   (let ((_arg1526615540_ (reverse _arg1526515529_)))
                     (if (gx#stx-pair? _tl1525715516_)
                         (let ((_e1526715543_ (gx#stx-e _tl1525715516_)))
                           (let ((_hd1526815546_ (##car _e1526715543_))
                                 (_tl1526915548_ (##cdr _e1526715543_)))
                             (if (gx#stx-pair? _hd1526815546_)
                                 (let ((_e1527015551_
                                        (gx#stx-e _hd1526815546_)))
                                   (let ((_hd1527115554_ (##car _e1527015551_))
                                         (_tl1527215556_
                                          (##cdr _e1527015551_)))
                                     (if (gx#identifier? _hd1527115554_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1527115554_)
                                             (if (gx#stx-pair? _tl1527215556_)
                                                 (let ((_e1527315559_
                                                        (gx#stx-e
                                                         _tl1527215556_)))
                                                   (let ((_hd1527415562_
                                                          (##car _e1527315559_))
                                                         (_tl1527515564_
                                                          (##cdr _e1527315559_)))
                                                     (if (gx#stx-pair?
                                                          _hd1527415562_)
                                                         (let ((_e1527615567_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1527415562_)))
                   (let ((_hd1527715570_ (##car _e1527615567_))
                         (_tl1527815572_ (##cdr _e1527615567_)))
                     (if (gx#identifier? _hd1527715570_)
                         (if (gx#stx-eq? '%#ref _hd1527715570_)
                             (if (gx#stx-pair? _tl1527815572_)
                                 (let ((_e1527915575_
                                        (gx#stx-e _tl1527815572_)))
                                   (let ((_hd1528015578_ (##car _e1527915575_))
                                         (_tl1528115580_
                                          (##cdr _e1527915575_)))
                                     (if (gx#stx-null? _tl1528115580_)
                                         (if (gx#stx-pair? _tl1527515564_)
                                             (let ((_e1528215583_
                                                    (gx#stx-e _tl1527515564_)))
                                               (let ((_hd1528315586_
                                                      (##car _e1528215583_))
                                                     (_tl1528415588_
                                                      (##cdr _e1528215583_)))
                                                 (if (gx#stx-pair?
                                                      _hd1528315586_)
                                                     (let ((_e1528515591_
                                                            (gx#stx-e
                                                             _hd1528315586_)))
                                                       (let ((_hd1528615594_
                                                              (##car _e1528515591_))
                                                             (_tl1528715596_
                                                              (##cdr _e1528515591_)))
                                                         (if (gx#identifier?
                                                              _hd1528615594_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1528615594_)
                         (if (gx#stx-pair? _tl1528715596_)
                             (let ((_e1528815599_ (gx#stx-e _tl1528715596_)))
                               (let ((_hd1528915602_ (##car _e1528815599_))
                                     (_tl1529015604_ (##cdr _e1528815599_)))
                                 (if (gx#stx-null? _tl1529015604_)
                                     (if (gx#stx-pair/null? _tl1528415588_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1528415588_)
                                                   '1)
                                             (let ((_g17130_
                                                    (gx#syntax-split-splice
                                                     _tl1528415588_
                                                     '1)))
                                               (begin
                                                 (let ((_g17131_
                                                        (values-count
                                                         _g17130_)))
                                                   (if (not (fx= _g17131_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17131_)))
                                                 (let ((_target1529115607_
                                                        (values-ref
                                                         _g17130_
                                                         0))
                                                       (_tl1529315609_
                                                        (values-ref
                                                         _g17130_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1529315609_)
                                                       (let ((_e1530015612_
                                                              (gx#stx-e
                                                               _tl1529315609_)))
                                                         (let ((_hd1530115615_
                                                                (##car _e1530015612_))
                                                               (_tl1530215617_
                                                                (##cdr _e1530015612_)))
                                                           (if (gx#stx-pair?
                                                                _hd1530115615_)
                                                               (let ((_e1530315620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1530115615_)))
                         (let ((_hd1530415623_ (##car _e1530315620_))
                               (_tl1530515625_ (##cdr _e1530315620_)))
                           (if (gx#identifier? _hd1530415623_)
                               (if (gx#stx-eq? '%#ref _hd1530415623_)
                                   (if (gx#stx-pair? _tl1530515625_)
                                       (let ((_e1530615628_
                                              (gx#stx-e _tl1530515625_)))
                                         (let ((_hd1530715631_
                                                (##car _e1530615628_))
                                               (_tl1530815633_
                                                (##cdr _e1530615628_)))
                                           (if (gx#stx-null? _tl1530815633_)
                                               (if (gx#stx-null?
                                                    _tl1530215617_)
                                                   (letrec ((_loop1529415636_
                                                             (lambda (_hd1529215639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1529815641_)
                       (if (gx#stx-pair? _hd1529215639_)
                           (let ((_e1529515644_ (gx#stx-e _hd1529215639_)))
                             (let ((_lp-hd1529615647_ (##car _e1529515644_))
                                   (_lp-tl1529715649_ (##cdr _e1529515644_)))
                               (if (gx#stx-pair? _lp-hd1529615647_)
                                   (let ((_e1530915652_
                                          (gx#stx-e _lp-hd1529615647_)))
                                     (let ((_hd1531015655_
                                            (##car _e1530915652_))
                                           (_tl1531115657_
                                            (##cdr _e1530915652_)))
                                       (if (gx#identifier? _hd1531015655_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1531015655_)
                                               (if (gx#stx-pair?
                                                    _tl1531115657_)
                                                   (let ((_e1531215660_
                                                          (gx#stx-e
                                                           _tl1531115657_)))
                                                     (let ((_hd1531315663_
                                                            (##car _e1531215660_))
                                                           (_tl1531415665_
                                                            (##cdr _e1531215660_)))
                                                       (if (gx#stx-null?
                                                            _tl1531415665_)
                                                           (_loop1529415636_
                                                            _lp-tl1529715649_
                                                            (cons _hd1531315663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1529815641_))
                   (_g1520015506_ _g1520315509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1520015506_
                                                    _g1520315509_))
                                               (_g1520015506_ _g1520315509_))
                                           (_g1520015506_ _g1520315509_))))
                                   (_g1520015506_ _g1520315509_))))
                           (let ((_xarg1529915668_ (reverse _xarg1529815641_)))
                             (if (gx#stx-null? _tl1526915548_)
                                 ((lambda (_L15671_
                                           _L15672_
                                           _L15673_
                                           _L15674_
                                           _L15675_
                                           _L15676_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1571915722_
                                                               _g1572015724_)
                                                        (cons _g1571915722_
                                                              _g1572015724_))
                                                      '()
                                                      _L15676_)))
                                            (if (gx#identifier? _L15675_)
                                                (if (eq? (gxc#identifier-symbol
                                                          _L15674_)
                                                         'apply)
                                                    (if (fx= (gx#stx-length
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1572615729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1572715731_)
                                 (cons _g1572615729_ _g1572715731_))
                               '()
                               _L15676_)))
                     (gx#stx-length
                      (begin
                        '#!void
                        (foldr (lambda (_g1573315736_ _g1573415738_)
                                 (cons _g1573315736_ _g1573415738_))
                               '()
                               _L15672_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr (lambda (_g1574015743_ _g1574115745_)
                                       (cons _g1574015743_ _g1574115745_))
                                     '()
                                     _L15676_))
                            (begin
                              '#!void
                              (foldr (lambda (_g1574715750_ _g1574815752_)
                                       (cons _g1574715750_ _g1574815752_))
                                     '()
                                     _L15672_)))
                    (if (gx#free-identifier=? _L15675_ _L15671_)
                        (not (find (lambda (_g1575415756_)
                                     (gx#free-identifier=?
                                      _g1575415756_
                                      _L15673_))
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1575815761_
                                                     _g1575915763_)
                                              (cons _g1575815761_
                                                    _g1575915763_))
                                            (cons _L15675_ '())
                                            _L15676_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1520015506_ _g1520315509_)))
                                  _hd1530715631_
                                  _xarg1529915668_
                                  _hd1528915602_
                                  _hd1528015578_
                                  _tl1526015521_
                                  _arg1526615540_)
                                 (_g1520015506_ _g1520315509_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1529415636_
                                                      _target1529115607_
                                                      '()))
                                                   (_g1520015506_
                                                    _g1520315509_))
                                               (_g1520015506_ _g1520315509_))))
                                       (_g1520015506_ _g1520315509_))
                                   (_g1520015506_ _g1520315509_))
                               (_g1520015506_ _g1520315509_))))
                       (_g1520015506_ _g1520315509_))))
               (_g1520015506_ _g1520315509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1520015506_ _g1520315509_))
                                         (_g1520015506_ _g1520315509_))
                                     (_g1520015506_ _g1520315509_))))
                             (_g1520015506_ _g1520315509_))
                         (_g1520015506_ _g1520315509_))
                     (_g1520015506_ _g1520315509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1520015506_
                                                      _g1520315509_))))
                                             (_g1520015506_ _g1520315509_))
                                         (_g1520015506_ _g1520315509_))))
                                 (_g1520015506_ _g1520315509_))
                             (_g1520015506_ _g1520315509_))
                         (_g1520015506_ _g1520315509_))))
                 (_g1520015506_ _g1520315509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1520015506_ _g1520315509_))
                                             (_g1520015506_ _g1520315509_))
                                         (_g1520015506_ _g1520315509_))))
                                 (_g1520015506_ _g1520315509_))))
                         (_g1520015506_ _g1520315509_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1526115524_
                                              _target1525815519_
                                              '())))))
                                     (_g1520015506_ _g1520315509_))
                                 (_g1520015506_ _g1520315509_))))
                         (_g1520015506_ _g1520315509_)))))
              (let ((_g1519815960_
                     (lambda (_g1520315769_)
                       (if (gx#stx-pair? _g1520315769_)
                           (let ((_e1520715771_ (gx#stx-e _g1520315769_)))
                             (let ((_hd1520815774_ (##car _e1520715771_))
                                   (_tl1520915776_ (##cdr _e1520715771_)))
                               (if (gx#stx-pair/null? _hd1520815774_)
                                   (if (fx>= (gx#stx-length _hd1520815774_) '0)
                                       (let ((_g17132_
                                              (gx#syntax-split-splice
                                               _hd1520815774_
                                               '0)))
                                         (begin
                                           (let ((_g17133_
                                                  (values-count _g17132_)))
                                             (if (not (fx= _g17133_ 2))
                                                 (error "Context expects 2 values"
                                                        _g17133_)))
                                           (let ((_target1521015779_
                                                  (values-ref _g17132_ 0))
                                                 (_tl1521215781_
                                                  (values-ref _g17132_ 1)))
                                             (if (gx#stx-null? _tl1521215781_)
                                                 (letrec ((_loop1521315784_
                                                           (lambda (_hd1521115787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1521715789_)
                     (if (gx#stx-pair? _hd1521115787_)
                         (let ((_e1521415792_ (gx#stx-e _hd1521115787_)))
                           (let ((_lp-hd1521515795_ (##car _e1521415792_))
                                 (_lp-tl1521615797_ (##cdr _e1521415792_)))
                             (_loop1521315784_
                              _lp-tl1521615797_
                              (cons _lp-hd1521515795_ _arg1521715789_))))
                         (let ((_arg1521815800_ (reverse _arg1521715789_)))
                           (if (gx#stx-pair? _tl1520915776_)
                               (let ((_e1521915803_ (gx#stx-e _tl1520915776_)))
                                 (let ((_hd1522015806_ (##car _e1521915803_))
                                       (_tl1522115808_ (##cdr _e1521915803_)))
                                   (if (gx#stx-pair? _hd1522015806_)
                                       (let ((_e1522215811_
                                              (gx#stx-e _hd1522015806_)))
                                         (let ((_hd1522315814_
                                                (##car _e1522215811_))
                                               (_tl1522415816_
                                                (##cdr _e1522215811_)))
                                           (if (gx#identifier? _hd1522315814_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1522315814_)
                                                   (if (gx#stx-pair?
                                                        _tl1522415816_)
                                                       (let ((_e1522515819_
                                                              (gx#stx-e
                                                               _tl1522415816_)))
                                                         (let ((_hd1522615822_
                                                                (##car _e1522515819_))
                                                               (_tl1522715824_
                                                                (##cdr _e1522515819_)))
                                                           (if (gx#stx-pair?
                                                                _hd1522615822_)
                                                               (let ((_e1522815827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1522615822_)))
                         (let ((_hd1522915830_ (##car _e1522815827_))
                               (_tl1523015832_ (##cdr _e1522815827_)))
                           (if (gx#identifier? _hd1522915830_)
                               (if (gx#stx-eq? '%#ref _hd1522915830_)
                                   (if (gx#stx-pair? _tl1523015832_)
                                       (let ((_e1523115835_
                                              (gx#stx-e _tl1523015832_)))
                                         (let ((_hd1523215838_
                                                (##car _e1523115835_))
                                               (_tl1523315840_
                                                (##cdr _e1523115835_)))
                                           (if (gx#stx-null? _tl1523315840_)
                                               (if (gx#stx-pair/null?
                                                    _tl1522715824_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1522715824_)
                                                             '0)
                                                       (let ((_g17134_
                                                              (gx#syntax-split-splice
                                                               _tl1522715824_
                                                               '0)))
                                                         (begin
                                                           (let ((_g17135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g17134_)))
                     (if (not (fx= _g17135_ 2))
                         (error "Context expects 2 values" _g17135_)))
                   (let ((_target1523415843_ (values-ref _g17134_ 0))
                         (_tl1523615845_ (values-ref _g17134_ 1)))
                     (if (gx#stx-null? _tl1523615845_)
                         (letrec ((_loop1523715848_
                                   (lambda (_hd1523515851_ _xarg1524115853_)
                                     (if (gx#stx-pair? _hd1523515851_)
                                         (let ((_e1523815856_
                                                (gx#stx-e _hd1523515851_)))
                                           (let ((_lp-hd1523915859_
                                                  (##car _e1523815856_))
                                                 (_lp-tl1524015861_
                                                  (##cdr _e1523815856_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1523915859_)
                                                 (let ((_e1524315864_
                                                        (gx#stx-e
                                                         _lp-hd1523915859_)))
                                                   (let ((_hd1524415867_
                                                          (##car _e1524315864_))
                                                         (_tl1524515869_
                                                          (##cdr _e1524315864_)))
                                                     (if (gx#identifier?
                                                          _hd1524415867_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1524415867_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1524515869_)
                         (let ((_e1524615872_ (gx#stx-e _tl1524515869_)))
                           (let ((_hd1524715875_ (##car _e1524615872_))
                                 (_tl1524815877_ (##cdr _e1524615872_)))
                             (if (gx#stx-null? _tl1524815877_)
                                 (_loop1523715848_
                                  _lp-tl1524015861_
                                  (cons _hd1524715875_ _xarg1524115853_))
                                 (_g1519915766_ _g1520315769_))))
                         (_g1519915766_ _g1520315769_))
                     (_g1519915766_ _g1520315769_))
                 (_g1519915766_ _g1520315769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1519915766_
                                                  _g1520315769_))))
                                         (let ((_xarg1524215880_
                                                (reverse _xarg1524115853_)))
                                           (if (gx#stx-null? _tl1522115808_)
                                               ((lambda (_L15883_
                                                         _L15884_
                                                         _L15885_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1591315916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1591415918_)
                              (cons _g1591315916_ _g1591415918_))
                            '()
                            _L15885_)))
                  (if (fx= (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1592015923_ _g1592115925_)
                                       (cons _g1592015923_ _g1592115925_))
                                     '()
                                     _L15885_)))
                           (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1592715930_ _g1592815932_)
                                       (cons _g1592715930_ _g1592815932_))
                                     '()
                                     _L15883_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1593415937_
                                                    _g1593515939_)
                                             (cons _g1593415937_
                                                   _g1593515939_))
                                           '()
                                           _L15885_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1594115944_
                                                    _g1594215946_)
                                             (cons _g1594115944_
                                                   _g1594215946_))
                                           '()
                                           _L15883_)))
                          (not (find (lambda (_g1594815950_)
                                       (gx#free-identifier=?
                                        _g1594815950_
                                        _L15884_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1595215955_
                                                       _g1595315957_)
                                                (cons _g1595215955_
                                                      _g1595315957_))
                                              '()
                                              _L15885_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1519915766_ _g1520315769_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1524215880_
                                                _hd1523215838_
                                                _arg1521815800_)
                                               (_g1519915766_
                                                _g1520315769_)))))))
                           (_loop1523715848_ _target1523415843_ '()))
                         (_g1519915766_ _g1520315769_)))))
               (_g1519915766_ _g1520315769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1519915766_
                                                    _g1520315769_))
                                               (_g1519915766_ _g1520315769_))))
                                       (_g1519915766_ _g1520315769_))
                                   (_g1519915766_ _g1520315769_))
                               (_g1519915766_ _g1520315769_))))
                       (_g1519915766_ _g1520315769_))))
               (_g1519915766_ _g1520315769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1519915766_
                                                    _g1520315769_))
                                               (_g1519915766_ _g1520315769_))))
                                       (_g1519915766_ _g1520315769_))))
                               (_g1519915766_ _g1520315769_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1521315784_
                                                    _target1521015779_
                                                    '()))
                                                 (_g1519915766_
                                                  _g1520315769_)))))
                                       (_g1519915766_ _g1520315769_))
                                   (_g1519915766_ _g1520315769_))))
                           (_g1519915766_ _g1520315769_)))))
                (_g1519815960_ _form15197_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form14665_)
      (let ((_g1466914793_
             (lambda (_g1467014790_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1467014790_))))
        (let ((_g1466814910_
               (lambda (_g1467014796_)
                 (if (gx#stx-pair? _g1467014796_)
                     (let ((_e1475914798_ (gx#stx-e _g1467014796_)))
                       (let ((_hd1476014801_ (##car _e1475914798_))
                             (_tl1476114803_ (##cdr _e1475914798_)))
                         (if (gx#stx-pair? _tl1476114803_)
                             (let ((_e1476214806_ (gx#stx-e _tl1476114803_)))
                               (let ((_hd1476314809_ (##car _e1476214806_))
                                     (_tl1476414811_ (##cdr _e1476214806_)))
                                 (if (gx#stx-pair? _hd1476314809_)
                                     (let ((_e1476514814_
                                            (gx#stx-e _hd1476314809_)))
                                       (let ((_hd1476614817_
                                              (##car _e1476514814_))
                                             (_tl1476714819_
                                              (##cdr _e1476514814_)))
                                         (if (gx#identifier? _hd1476614817_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1476614817_)
                                                 (if (gx#stx-pair?
                                                      _tl1476714819_)
                                                     (let ((_e1476814822_
                                                            (gx#stx-e
                                                             _tl1476714819_)))
                                                       (let ((_hd1476914825_
                                                              (##car _e1476814822_))
                                                             (_tl1477014827_
                                                              (##cdr _e1476814822_)))
                                                         (if (gx#stx-pair?
                                                              _hd1476914825_)
                                                             (let ((_e1477114830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1476914825_)))
                       (let ((_hd1477214833_ (##car _e1477114830_))
                             (_tl1477314835_ (##cdr _e1477114830_)))
                         (if (gx#identifier? _hd1477214833_)
                             (if (gx#stx-eq? '%#ref _hd1477214833_)
                                 (if (gx#stx-pair? _tl1477314835_)
                                     (let ((_e1477414838_
                                            (gx#stx-e _tl1477314835_)))
                                       (let ((_hd1477514841_
                                              (##car _e1477414838_))
                                             (_tl1477614843_
                                              (##cdr _e1477414838_)))
                                         (if (gx#stx-null? _tl1477614843_)
                                             (if (gx#stx-pair? _tl1477014827_)
                                                 (let ((_e1477714846_
                                                        (gx#stx-e
                                                         _tl1477014827_)))
                                                   (let ((_hd1477814849_
                                                          (##car _e1477714846_))
                                                         (_tl1477914851_
                                                          (##cdr _e1477714846_)))
                                                     (if (gx#stx-pair?
                                                          _hd1477814849_)
                                                         (let ((_e1478014854_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1477814849_)))
                   (let ((_hd1478114857_ (##car _e1478014854_))
                         (_tl1478214859_ (##cdr _e1478014854_)))
                     (if (gx#identifier? _hd1478114857_)
                         (if (gx#stx-eq? '%#ref _hd1478114857_)
                             (if (gx#stx-pair? _tl1478214859_)
                                 (let ((_e1478314862_
                                        (gx#stx-e _tl1478214859_)))
                                   (let ((_hd1478414865_ (##car _e1478314862_))
                                         (_tl1478514867_
                                          (##cdr _e1478314862_)))
                                     (if (gx#stx-null? _tl1478514867_)
                                         (if (gx#stx-pair? _tl1477914851_)
                                             (let ((_e1478614870_
                                                    (gx#stx-e _tl1477914851_)))
                                               (let ((_hd1478714873_
                                                      (##car _e1478614870_))
                                                     (_tl1478814875_
                                                      (##cdr _e1478614870_)))
                                                 (if (gx#stx-null?
                                                      _tl1478814875_)
                                                     (if (gx#stx-null?
                                                          _tl1476414811_)
                                                         ((lambda (_L14878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L14879_
                           _L14880_)
                    (gxc#identifier-symbol _L14878_))
                  _hd1478414865_
                  _hd1477514841_
                  _hd1476014801_)
                 (_g1466914793_ _g1467014796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1466914793_
                                                      _g1467014796_))))
                                             (_g1466914793_ _g1467014796_))
                                         (_g1466914793_ _g1467014796_))))
                                 (_g1466914793_ _g1467014796_))
                             (_g1466914793_ _g1467014796_))
                         (_g1466914793_ _g1467014796_))))
                 (_g1466914793_ _g1467014796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1466914793_ _g1467014796_))
                                             (_g1466914793_ _g1467014796_))))
                                     (_g1466914793_ _g1467014796_))
                                 (_g1466914793_ _g1467014796_))
                             (_g1466914793_ _g1467014796_))))
                     (_g1466914793_ _g1467014796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1466914793_
                                                      _g1467014796_))
                                                 (_g1466914793_ _g1467014796_))
                                             (_g1466914793_ _g1467014796_))))
                                     (_g1466914793_ _g1467014796_))))
                             (_g1466914793_ _g1467014796_))))
                     (_g1466914793_ _g1467014796_)))))
          (let ((_g1466715046_
                 (lambda (_g1467014913_)
                   (if (gx#stx-pair? _g1467014913_)
                       (let ((_e1472014915_ (gx#stx-e _g1467014913_)))
                         (let ((_hd1472114918_ (##car _e1472014915_))
                               (_tl1472214920_ (##cdr _e1472014915_)))
                           (if (gx#stx-pair/null? _hd1472114918_)
                               (if (fx>= (gx#stx-length _hd1472114918_) '0)
                                   (let ((_g17136_
                                          (gx#syntax-split-splice
                                           _hd1472114918_
                                           '0)))
                                     (begin
                                       (let ((_g17137_
                                              (values-count _g17136_)))
                                         (if (not (fx= _g17137_ 2))
                                             (error "Context expects 2 values"
                                                    _g17137_)))
                                       (let ((_target1472314923_
                                              (values-ref _g17136_ 0))
                                             (_tl1472514925_
                                              (values-ref _g17136_ 1)))
                                         (letrec ((_loop1472614928_
                                                   (lambda (_hd1472414931_
                                                            _arg1473014933_)
                                                     (if (gx#stx-pair?
                                                          _hd1472414931_)
                                                         (let ((_e1472714936_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1472414931_)))
                   (let ((_lp-hd1472814939_ (##car _e1472714936_))
                         (_lp-tl1472914941_ (##cdr _e1472714936_)))
                     (_loop1472614928_
                      _lp-tl1472914941_
                      (cons _lp-hd1472814939_ _arg1473014933_))))
                 (let ((_arg1473114944_ (reverse _arg1473014933_)))
                   (if (gx#stx-pair? _tl1472214920_)
                       (let ((_e1473214947_ (gx#stx-e _tl1472214920_)))
                         (let ((_hd1473314950_ (##car _e1473214947_))
                               (_tl1473414952_ (##cdr _e1473214947_)))
                           (if (gx#stx-pair? _hd1473314950_)
                               (let ((_e1473514955_ (gx#stx-e _hd1473314950_)))
                                 (let ((_hd1473614958_ (##car _e1473514955_))
                                       (_tl1473714960_ (##cdr _e1473514955_)))
                                   (if (gx#identifier? _hd1473614958_)
                                       (if (gx#stx-eq? '%#call _hd1473614958_)
                                           (if (gx#stx-pair? _tl1473714960_)
                                               (let ((_e1473814963_
                                                      (gx#stx-e
                                                       _tl1473714960_)))
                                                 (let ((_hd1473914966_
                                                        (##car _e1473814963_))
                                                       (_tl1474014968_
                                                        (##cdr _e1473814963_)))
                                                   (if (gx#stx-pair?
                                                        _hd1473914966_)
                                                       (let ((_e1474114971_
                                                              (gx#stx-e
                                                               _hd1473914966_)))
                                                         (let ((_hd1474214974_
                                                                (##car _e1474114971_))
                                                               (_tl1474314976_
                                                                (##cdr _e1474114971_)))
                                                           (if (gx#identifier?
                                                                _hd1474214974_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1474214974_)
                           (if (gx#stx-pair? _tl1474314976_)
                               (let ((_e1474414979_ (gx#stx-e _tl1474314976_)))
                                 (let ((_hd1474514982_ (##car _e1474414979_))
                                       (_tl1474614984_ (##cdr _e1474414979_)))
                                   (if (gx#stx-null? _tl1474614984_)
                                       (if (gx#stx-pair? _tl1474014968_)
                                           (let ((_e1474714987_
                                                  (gx#stx-e _tl1474014968_)))
                                             (let ((_hd1474814990_
                                                    (##car _e1474714987_))
                                                   (_tl1474914992_
                                                    (##cdr _e1474714987_)))
                                               (if (gx#stx-pair?
                                                    _hd1474814990_)
                                                   (let ((_e1475014995_
                                                          (gx#stx-e
                                                           _hd1474814990_)))
                                                     (let ((_hd1475114998_
                                                            (##car _e1475014995_))
                                                           (_tl1475215000_
                                                            (##cdr _e1475014995_)))
                                                       (if (gx#identifier?
                                                            _hd1475114998_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1475114998_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1475215000_)
                           (let ((_e1475315003_ (gx#stx-e _tl1475215000_)))
                             (let ((_hd1475415006_ (##car _e1475315003_))
                                   (_tl1475515008_ (##cdr _e1475315003_)))
                               (if (gx#stx-null? _tl1475515008_)
                                   (if (gx#stx-null? _tl1473414952_)
                                       ((lambda (_L15011_
                                                 _L15012_
                                                 _L15013_
                                                 _L15014_)
                                          (gxc#identifier-symbol _L15011_))
                                        _hd1475415006_
                                        _hd1474514982_
                                        _tl1472514925_
                                        _arg1473114944_)
                                       (_g1466814910_ _g1467014913_))
                                   (_g1466814910_ _g1467014913_))))
                           (_g1466814910_ _g1467014913_))
                       (_g1466814910_ _g1467014913_))
                   (_g1466814910_ _g1467014913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1466814910_
                                                    _g1467014913_))))
                                           (_g1466814910_ _g1467014913_))
                                       (_g1466814910_ _g1467014913_))))
                               (_g1466814910_ _g1467014913_))
                           (_g1466814910_ _g1467014913_))
                       (_g1466814910_ _g1467014913_))))
               (_g1466814910_ _g1467014913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1466814910_ _g1467014913_))
                                           (_g1466814910_ _g1467014913_))
                                       (_g1466814910_ _g1467014913_))))
                               (_g1466814910_ _g1467014913_))))
                       (_g1466814910_ _g1467014913_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1472614928_
                                            _target1472314923_
                                            '())))))
                                   (_g1466814910_ _g1467014913_))
                               (_g1466814910_ _g1467014913_))))
                       (_g1466814910_ _g1467014913_)))))
            (let ((_g1466615194_
                   (lambda (_g1467015049_)
                     (if (gx#stx-pair? _g1467015049_)
                         (let ((_e1467415051_ (gx#stx-e _g1467015049_)))
                           (let ((_hd1467515054_ (##car _e1467415051_))
                                 (_tl1467615056_ (##cdr _e1467415051_)))
                             (if (gx#stx-pair/null? _hd1467515054_)
                                 (if (fx>= (gx#stx-length _hd1467515054_) '0)
                                     (let ((_g17138_
                                            (gx#syntax-split-splice
                                             _hd1467515054_
                                             '0)))
                                       (begin
                                         (let ((_g17139_
                                                (values-count _g17138_)))
                                           (if (not (fx= _g17139_ 2))
                                               (error "Context expects 2 values"
                                                      _g17139_)))
                                         (let ((_target1467715059_
                                                (values-ref _g17138_ 0))
                                               (_tl1467915061_
                                                (values-ref _g17138_ 1)))
                                           (if (gx#stx-null? _tl1467915061_)
                                               (letrec ((_loop1468015064_
                                                         (lambda (_hd1467815067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1468415069_)
                   (if (gx#stx-pair? _hd1467815067_)
                       (let ((_e1468115072_ (gx#stx-e _hd1467815067_)))
                         (let ((_lp-hd1468215075_ (##car _e1468115072_))
                               (_lp-tl1468315077_ (##cdr _e1468115072_)))
                           (_loop1468015064_
                            _lp-tl1468315077_
                            (cons _lp-hd1468215075_ _arg1468415069_))))
                       (let ((_arg1468515080_ (reverse _arg1468415069_)))
                         (if (gx#stx-pair? _tl1467615056_)
                             (let ((_e1468615083_ (gx#stx-e _tl1467615056_)))
                               (let ((_hd1468715086_ (##car _e1468615083_))
                                     (_tl1468815088_ (##cdr _e1468615083_)))
                                 (if (gx#stx-pair? _hd1468715086_)
                                     (let ((_e1468915091_
                                            (gx#stx-e _hd1468715086_)))
                                       (let ((_hd1469015094_
                                              (##car _e1468915091_))
                                             (_tl1469115096_
                                              (##cdr _e1468915091_)))
                                         (if (gx#identifier? _hd1469015094_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1469015094_)
                                                 (if (gx#stx-pair?
                                                      _tl1469115096_)
                                                     (let ((_e1469215099_
                                                            (gx#stx-e
                                                             _tl1469115096_)))
                                                       (let ((_hd1469315102_
                                                              (##car _e1469215099_))
                                                             (_tl1469415104_
                                                              (##cdr _e1469215099_)))
                                                         (if (gx#stx-pair?
                                                              _hd1469315102_)
                                                             (let ((_e1469515107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1469315102_)))
                       (let ((_hd1469615110_ (##car _e1469515107_))
                             (_tl1469715112_ (##cdr _e1469515107_)))
                         (if (gx#identifier? _hd1469615110_)
                             (if (gx#stx-eq? '%#ref _hd1469615110_)
                                 (if (gx#stx-pair? _tl1469715112_)
                                     (let ((_e1469815115_
                                            (gx#stx-e _tl1469715112_)))
                                       (let ((_hd1469915118_
                                              (##car _e1469815115_))
                                             (_tl1470015120_
                                              (##cdr _e1469815115_)))
                                         (if (gx#stx-null? _tl1470015120_)
                                             (if (gx#stx-pair/null?
                                                  _tl1469415104_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1469415104_)
                                                           '0)
                                                     (let ((_g17140_
                                                            (gx#syntax-split-splice
                                                             _tl1469415104_
                                                             '0)))
                                                       (begin
                                                         (let ((_g17141_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g17140_)))
                   (if (not (fx= _g17141_ 2))
                       (error "Context expects 2 values" _g17141_)))
                 (let ((_target1470115123_ (values-ref _g17140_ 0))
                       (_tl1470315125_ (values-ref _g17140_ 1)))
                   (if (gx#stx-null? _tl1470315125_)
                       (letrec ((_loop1470415128_
                                 (lambda (_hd1470215131_ _xarg1470815133_)
                                   (if (gx#stx-pair? _hd1470215131_)
                                       (let ((_e1470515136_
                                              (gx#stx-e _hd1470215131_)))
                                         (let ((_lp-hd1470615139_
                                                (##car _e1470515136_))
                                               (_lp-tl1470715141_
                                                (##cdr _e1470515136_)))
                                           (if (gx#stx-pair? _lp-hd1470615139_)
                                               (let ((_e1471015144_
                                                      (gx#stx-e
                                                       _lp-hd1470615139_)))
                                                 (let ((_hd1471115147_
                                                        (##car _e1471015144_))
                                                       (_tl1471215149_
                                                        (##cdr _e1471015144_)))
                                                   (if (gx#identifier?
                                                        _hd1471115147_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1471115147_)
                                                           (if (gx#stx-pair?
                                                                _tl1471215149_)
                                                               (let ((_e1471315152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1471215149_)))
                         (let ((_hd1471415155_ (##car _e1471315152_))
                               (_tl1471515157_ (##cdr _e1471315152_)))
                           (if (gx#stx-null? _tl1471515157_)
                               (_loop1470415128_
                                _lp-tl1470715141_
                                (cons _hd1471415155_ _xarg1470815133_))
                               (_g1466715046_ _g1467015049_))))
                       (_g1466715046_ _g1467015049_))
                   (_g1466715046_ _g1467015049_))
               (_g1466715046_ _g1467015049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1466715046_ _g1467015049_))))
                                       (let ((_xarg1470915160_
                                              (reverse _xarg1470815133_)))
                                         (if (gx#stx-null? _tl1468815088_)
                                             ((lambda (_L15163_
                                                       _L15164_
                                                       _L15165_)
                                                (gxc#identifier-symbol
                                                 _L15164_))
                                              _xarg1470915160_
                                              _hd1469915118_
                                              _arg1468515080_)
                                             (_g1466715046_
                                              _g1467015049_)))))))
                         (_loop1470415128_ _target1470115123_ '()))
                       (_g1466715046_ _g1467015049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1466715046_
                                                      _g1467015049_))
                                                 (_g1466715046_ _g1467015049_))
                                             (_g1466715046_ _g1467015049_))))
                                     (_g1466715046_ _g1467015049_))
                                 (_g1466715046_ _g1467015049_))
                             (_g1466715046_ _g1467015049_))))
                     (_g1466715046_ _g1467015049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1466715046_
                                                      _g1467015049_))
                                                 (_g1466715046_ _g1467015049_))
                                             (_g1466715046_ _g1467015049_))))
                                     (_g1466715046_ _g1467015049_))))
                             (_g1466715046_ _g1467015049_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1468015064_
                                                  _target1467715059_
                                                  '()))
                                               (_g1466715046_
                                                _g1467015049_)))))
                                     (_g1466715046_ _g1467015049_))
                                 (_g1466715046_ _g1467015049_))))
                         (_g1466715046_ _g1467015049_)))))
              (_g1466615194_ _form14665_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form14508_)
      (let ((_g1451214543_
             (lambda (_g1451314540_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1451314540_))))
        (let ((_g1451114556_
               (lambda (_g1451314546_)
                 ((lambda (_L14548_) (cons '0 '())) _g1451314546_))))
          (let ((_g1451014605_
                 (lambda (_g1451314559_)
                   (if (gx#stx-pair/null? _g1451314559_)
                       (if (fx>= (gx#stx-length _g1451314559_) '0)
                           (let ((_g17142_
                                  (gx#syntax-split-splice _g1451314559_ '0)))
                             (begin
                               (let ((_g17143_ (values-count _g17142_)))
                                 (if (not (fx= _g17143_ 2))
                                     (error "Context expects 2 values"
                                            _g17143_)))
                               (let ((_target1452914561_
                                      (values-ref _g17142_ 0))
                                     (_tl1453114563_ (values-ref _g17142_ 1)))
                                 (letrec ((_loop1453214566_
                                           (lambda (_hd1453014569_
                                                    _arg1453614571_)
                                             (if (gx#stx-pair? _hd1453014569_)
                                                 (let ((_e1453314574_
                                                        (gx#stx-e
                                                         _hd1453014569_)))
                                                   (let ((_lp-hd1453414577_
                                                          (##car _e1453314574_))
                                                         (_lp-tl1453514579_
                                                          (##cdr _e1453314574_)))
                                                     (_loop1453214566_
                                                      _lp-tl1453514579_
                                                      (cons _lp-hd1453414577_
                                                            _arg1453614571_))))
                                                 (let ((_arg1453714582_
                                                        (reverse _arg1453614571_)))
                                                   ((lambda (_L14585_ _L14586_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1459714600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1459814602_)
                                (cons _g1459714600_ _g1459814602_))
                              '()
                              _L14586_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1453114563_
                                                    _arg1453714582_))))))
                                   (_loop1453214566_
                                    _target1452914561_
                                    '())))))
                           (_g1451114556_ _g1451314559_))
                       (_g1451114556_ _g1451314559_)))))
            (let ((_g1450914662_
                   (lambda (_g1451314608_)
                     (if (gx#stx-pair? _g1451314608_)
                         (let ((_e1451514610_ (gx#stx-e _g1451314608_)))
                           (let ((_hd1451614613_ (##car _e1451514610_))
                                 (_tl1451714615_ (##cdr _e1451514610_)))
                             (if (gx#stx-pair/null? _hd1451614613_)
                                 (if (fx>= (gx#stx-length _hd1451614613_) '0)
                                     (let ((_g17144_
                                            (gx#syntax-split-splice
                                             _hd1451614613_
                                             '0)))
                                       (begin
                                         (let ((_g17145_
                                                (values-count _g17144_)))
                                           (if (not (fx= _g17145_ 2))
                                               (error "Context expects 2 values"
                                                      _g17145_)))
                                         (let ((_target1451814618_
                                                (values-ref _g17144_ 0))
                                               (_tl1452014620_
                                                (values-ref _g17144_ 1)))
                                           (if (gx#stx-null? _tl1452014620_)
                                               (letrec ((_loop1452114623_
                                                         (lambda (_hd1451914626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1452514628_)
                   (if (gx#stx-pair? _hd1451914626_)
                       (let ((_e1452214631_ (gx#stx-e _hd1451914626_)))
                         (let ((_lp-hd1452314634_ (##car _e1452214631_))
                               (_lp-tl1452414636_ (##cdr _e1452214631_)))
                           (_loop1452114623_
                            _lp-tl1452414636_
                            (cons _lp-hd1452314634_ _arg1452514628_))))
                       (let ((_arg1452614639_ (reverse _arg1452514628_)))
                         ((lambda (_L14642_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1465414657_ _g1465514659_)
                                        (cons _g1465414657_ _g1465514659_))
                                      '()
                                      _L14642_))))
                          _arg1452614639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1452114623_
                                                  _target1451814618_
                                                  '()))
                                               (_g1451014605_
                                                _g1451314608_)))))
                                     (_g1451014605_ _g1451314608_))
                                 (_g1451014605_ _g1451314608_))))
                         (_g1451014605_ _g1451314608_)))))
              (_g1450914662_ _form14508_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx13781_)
      (let ((_lambda-expr?13783_
             (lambda (_expr14461_)
               (let ((_g1446414474_
                      (lambda (_g1446514471_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1446514471_))))
                 (let ((_g1446314481_
                        (lambda (_g1446514477_) ((lambda () '#f)))))
                   (let ((_g1446214505_
                          (lambda (_g1446514484_)
                            (if (gx#stx-pair? _g1446514484_)
                                (let ((_e1446714486_ (gx#stx-e _g1446514484_)))
                                  (let ((_hd1446814489_ (##car _e1446714486_))
                                        (_tl1446914491_ (##cdr _e1446714486_)))
                                    (if (gx#identifier? _hd1446814489_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1446814489_)
                                            ((lambda (_L14494_) '#t)
                                             _tl1446914491_)
                                            (_g1446314481_ _g1446514484_))
                                        (_g1446314481_ _g1446514484_))))
                                (_g1446314481_ _g1446514484_)))))
                     (_g1446214505_ _expr14461_)))))))
        (let ((_case-lambda-expr?13784_
               (lambda (_expr14414_)
                 (let ((_g1441714427_
                        (lambda (_g1441814424_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1441814424_))))
                   (let ((_g1441614434_
                          (lambda (_g1441814430_) ((lambda () '#f)))))
                     (let ((_g1441514458_
                            (lambda (_g1441814437_)
                              (if (gx#stx-pair? _g1441814437_)
                                  (let ((_e1442014439_
                                         (gx#stx-e _g1441814437_)))
                                    (let ((_hd1442114442_
                                           (##car _e1442014439_))
                                          (_tl1442214444_
                                           (##cdr _e1442014439_)))
                                      (if (gx#identifier? _hd1442114442_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1442114442_)
                                              ((lambda (_L14447_) '#t)
                                               _tl1442214444_)
                                              (_g1441614434_ _g1441814437_))
                                          (_g1441614434_ _g1441814437_))))
                                  (_g1441614434_ _g1441814437_)))))
                       (_g1441514458_ _expr14414_)))))))
          (let ((_lift-case-lambda-clauses13785_
                 (lambda (_id14175_ _clauses14176_)
                   ((letrec ((_lp14178_
                              (lambda (_rest14180_
                                       _ids14181_
                                       _impls14182_
                                       _clauses14183_)
                                (let ((_rest1418414192_ _rest14180_))
                                  (let ((_E1418714196_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1418414192_))))
                                    (let ((_else1418614200_
                                           (lambda ()
                                             (values (reverse _ids14181_)
                                                     (reverse _impls14182_)
                                                     (reverse _clauses14183_)))))
                                      (let ((_K1418814402_
                                             (lambda (_rest14203_
                                                      _clause14204_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause14204_)
                                                   (_lp14178_
                                                    _rest14203_
                                                    _ids14181_
                                                    _impls14182_
                                                    (cons _clause14204_
                                                          _clauses14183_))
                                                   (let ((_g1420614217_
                                                          (lambda (_g1420714214_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1420714214_))))
                                                     (let ((_g1420514399_
                                                            (lambda (_g1420714220_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1420714220_)
                          (let ((_e1421014222_ (gx#stx-e _g1420714220_)))
                            (let ((_hd1421114225_ (##car _e1421014222_))
                                  (_tl1421214227_ (##cdr _e1421014222_)))
                              ((lambda (_L14230_ _L14231_)
                                 (let ((_id14248_
                                        (make-symbol
                                         (gx#stx-e _id14175_)
                                         '"__"
                                         (length _clauses14183_))))
                                   (let ((_impl14250_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L14231_ _L14230_))
                                           _stx13781_)))
                                     (let ((_clause14396_
                                            (let ((_g1425414282_
                                                   (lambda (_g1425514279_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1425514279_))))
                                              (let ((_g1425314297_
                                                     (lambda (_g1425514285_)
                                                       ((lambda (_L14287_)
                                                          (cons _L14231_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id14248_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L14287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx13781_)
                              '())))
                _g1425514285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1425214346_
                                                       (lambda (_g1425514300_)
                                                         (if (gx#stx-pair/null?
                                                              _g1425514300_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1425514300_)
                               '0)
                         (let ((_g17148_
                                (gx#syntax-split-splice _g1425514300_ '0)))
                           (begin
                             (let ((_g17149_ (values-count _g17148_)))
                               (if (not (fx= _g17149_ 2))
                                   (error "Context expects 2 values"
                                          _g17149_)))
                             (let ((_target1426814302_ (values-ref _g17148_ 0))
                                   (_tl1427014304_ (values-ref _g17148_ 1)))
                               (letrec ((_loop1427114307_
                                         (lambda (_hd1426914310_
                                                  _arg1427514312_)
                                           (if (gx#stx-pair? _hd1426914310_)
                                               (let ((_e1427214315_
                                                      (gx#stx-e
                                                       _hd1426914310_)))
                                                 (let ((_lp-hd1427314318_
                                                        (##car _e1427214315_))
                                                       (_lp-tl1427414320_
                                                        (##cdr _e1427214315_)))
                                                   (_loop1427114307_
                                                    _lp-tl1427414320_
                                                    (cons _lp-hd1427314318_
                                                          _arg1427514312_))))
                                               (let ((_arg1427614323_
                                                      (reverse _arg1427514312_)))
                                                 ((lambda (_L14326_ _L14327_)
                                                    (cons _L14231_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id14248_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L14326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1433814341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1433914343_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1433814341_ '()))
                           _g1433914343_))
                   '()
                   _L14327_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx13781_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1427014304_
                                                  _arg1427614323_))))))
                                 (_loop1427114307_ _target1426814302_ '())))))
                         (_g1425314297_ _g1425514300_))
                     (_g1425314297_ _g1425514300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1425114393_
                                                         (lambda (_g1425514349_)
                                                           (if (gx#stx-pair/null?
                                                                _g1425514349_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1425514349_)
                                 '0)
                           (let ((_g17150_
                                  (gx#syntax-split-splice _g1425514349_ '0)))
                             (begin
                               (let ((_g17151_ (values-count _g17150_)))
                                 (if (not (fx= _g17151_ 2))
                                     (error "Context expects 2 values"
                                            _g17151_)))
                               (let ((_target1425714351_
                                      (values-ref _g17150_ 0))
                                     (_tl1425914353_ (values-ref _g17150_ 1)))
                                 (if (gx#stx-null? _tl1425914353_)
                                     (letrec ((_loop1426014356_
                                               (lambda (_hd1425814359_
                                                        _arg1426414361_)
                                                 (if (gx#stx-pair?
                                                      _hd1425814359_)
                                                     (let ((_e1426114364_
                                                            (gx#stx-e
                                                             _hd1425814359_)))
                                                       (let ((_lp-hd1426214367_
                                                              (##car _e1426114364_))
                                                             (_lp-tl1426314369_
                                                              (##cdr _e1426114364_)))
                                                         (_loop1426014356_
                                                          _lp-tl1426314369_
                                                          (cons _lp-hd1426214367_
                                                                _arg1426414361_))))
                                                     (let ((_arg1426514372_
                                                            (reverse _arg1426414361_)))
                                                       ((lambda (_L14375_)
                                                          (cons _L14231_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id14248_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1438514388_
                                                             _g1438614390_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1438514388_ '()))
                    _g1438614390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L14375_))))
                               _stx13781_)
                              '())))
                _arg1426514372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1426014356_
                                        _target1425714351_
                                        '()))
                                     (_g1425214346_ _g1425514349_)))))
                           (_g1425214346_ _g1425514349_))
                       (_g1425214346_ _g1425514349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1425114393_
                                                     _L14231_)))))))
                                       (let ()
                                         (_lp14178_
                                          _rest14203_
                                          (cons _id14248_ _ids14181_)
                                          (cons _impl14250_ _impls14182_)
                                          (cons _clause14396_
                                                _clauses14183_)))))))
                               _tl1421214227_
                               _hd1421114225_)))
                          (_g1420614217_ _g1420714220_)))))
               (_g1420514399_ _clause14204_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1418414192_)
                                            (let ((_hd1418914405_
                                                   (##car _rest1418414192_))
                                                  (_tl1419014407_
                                                   (##cdr _rest1418414192_)))
                                              (let ((_clause14410_
                                                     _hd1418914405_))
                                                (let ((_rest14412_
                                                       _tl1419014407_))
                                                  (_K1418814402_
                                                   _rest14412_
                                                   _clause14410_))))
                                            (_else1418614200_)))))))))
                      _lp14178_)
                    _clauses14176_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def13786_
                   (lambda (_id14172_ _impl14173_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id14172_ '()) (cons _impl14173_ '())))
                      _stx13781_))))
              (let ((_g1379113865_
                     (lambda (_g1379213862_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1379213862_))))
                (let ((_g1379013872_
                       (lambda (_g1379213868_) ((lambda () _stx13781_)))))
                  (let ((_g1378914008_
                         (lambda (_g1379213875_)
                           (if (gx#stx-pair? _g1379213875_)
                               (let ((_e1382813877_ (gx#stx-e _g1379213875_)))
                                 (let ((_hd1382913880_ (##car _e1382813877_))
                                       (_tl1383013882_ (##cdr _e1382813877_)))
                                   (if (gx#stx-pair? _tl1383013882_)
                                       (let ((_e1383113885_
                                              (gx#stx-e _tl1383013882_)))
                                         (let ((_hd1383213888_
                                                (##car _e1383113885_))
                                               (_tl1383313890_
                                                (##cdr _e1383113885_)))
                                           (if (gx#stx-pair? _hd1383213888_)
                                               (let ((_e1383413893_
                                                      (gx#stx-e
                                                       _hd1383213888_)))
                                                 (let ((_hd1383513896_
                                                        (##car _e1383413893_))
                                                       (_tl1383613898_
                                                        (##cdr _e1383413893_)))
                                                   (if (gx#stx-null?
                                                        _tl1383613898_)
                                                       (if (gx#stx-pair?
                                                            _tl1383313890_)
                                                           (let ((_e1383713901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1383313890_)))
                     (let ((_hd1383813904_ (##car _e1383713901_))
                           (_tl1383913906_ (##cdr _e1383713901_)))
                       (if (gx#stx-pair? _hd1383813904_)
                           (let ((_e1384013909_ (gx#stx-e _hd1383813904_)))
                             (let ((_hd1384113912_ (##car _e1384013909_))
                                   (_tl1384213914_ (##cdr _e1384013909_)))
                               (if (gx#identifier? _hd1384113912_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1384113912_)
                                       (if (gx#stx-pair? _tl1384213914_)
                                           (let ((_e1384313917_
                                                  (gx#stx-e _tl1384213914_)))
                                             (let ((_hd1384413920_
                                                    (##car _e1384313917_))
                                                   (_tl1384513922_
                                                    (##cdr _e1384313917_)))
                                               (if (gx#stx-pair?
                                                    _hd1384413920_)
                                                   (let ((_e1384613925_
                                                          (gx#stx-e
                                                           _hd1384413920_)))
                                                     (let ((_hd1384713928_
                                                            (##car _e1384613925_))
                                                           (_tl1384813930_
                                                            (##cdr _e1384613925_)))
                                                       (if (gx#stx-pair?
                                                            _hd1384713928_)
                                                           (let ((_e1384913933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1384713928_)))
                     (let ((_hd1385013936_ (##car _e1384913933_))
                           (_tl1385113938_ (##cdr _e1384913933_)))
                       (if (gx#stx-pair? _hd1385013936_)
                           (let ((_e1385213941_ (gx#stx-e _hd1385013936_)))
                             (let ((_hd1385313944_ (##car _e1385213941_))
                                   (_tl1385413946_ (##cdr _e1385213941_)))
                               (if (gx#stx-null? _tl1385413946_)
                                   (if (gx#stx-pair? _tl1385113938_)
                                       (let ((_e1385513949_
                                              (gx#stx-e _tl1385113938_)))
                                         (let ((_hd1385613952_
                                                (##car _e1385513949_))
                                               (_tl1385713954_
                                                (##cdr _e1385513949_)))
                                           (if (gx#stx-null? _tl1385713954_)
                                               (if (gx#stx-null?
                                                    _tl1384813930_)
                                                   (if (gx#stx-pair?
                                                        _tl1384513922_)
                                                       (let ((_e1385813957_
                                                              (gx#stx-e
                                                               _tl1384513922_)))
                                                         (let ((_hd1385913960_
                                                                (##car _e1385813957_))
                                                               (_tl1386013962_
                                                                (##cdr _e1385813957_)))
                                                           (if (gx#stx-null?
                                                                _tl1386013962_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1383913906_)
                           ((lambda (_L13965_ _L13966_ _L13967_ _L13968_)
                              (if (if (gx#identifier? _L13968_)
                                      (if (gx#identifier? _L13967_)
                                          (if (_lambda-expr?13783_ _L13966_)
                                              (_case-lambda-expr?13784_
                                               _L13965_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id14003_
                                         (make-symbol
                                          (gx#stx-e _L13968_)
                                          '"__"
                                          (gx#stx-e _L13967_))))
                                    (let ((_new-case-lambda-expr14005_
                                           (gxc#apply-expression-subst
                                            _L13965_
                                            _L13967_
                                            _lambda-id14003_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L13968_)
                                           '" => "
                                           _lambda-id14003_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id14003_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id14003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L13966_ '())))
                _stx13781_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L13968_ '())
                                   (cons _new-case-lambda-expr14005_ '())))
                       _stx13781_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx13781_)))))
                                  (_g1379013872_ _g1379213875_)))
                            _hd1385913960_
                            _hd1385613952_
                            _hd1385313944_
                            _hd1383513896_)
                           (_g1379013872_ _g1379213875_))
                       (_g1379013872_ _g1379213875_))))
               (_g1379013872_ _g1379213875_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1379013872_
                                                    _g1379213875_))
                                               (_g1379013872_ _g1379213875_))))
                                       (_g1379013872_ _g1379213875_))
                                   (_g1379013872_ _g1379213875_))))
                           (_g1379013872_ _g1379213875_))))
                   (_g1379013872_ _g1379213875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1379013872_
                                                    _g1379213875_))))
                                           (_g1379013872_ _g1379213875_))
                                       (_g1379013872_ _g1379213875_))
                                   (_g1379013872_ _g1379213875_))))
                           (_g1379013872_ _g1379213875_))))
                   (_g1379013872_ _g1379213875_))
               (_g1379013872_ _g1379213875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1379013872_ _g1379213875_))))
                                       (_g1379013872_ _g1379213875_))))
                               (_g1379013872_ _g1379213875_)))))
                    (let ((_g1378814105_
                           (lambda (_g1379214011_)
                             (if (gx#stx-pair? _g1379214011_)
                                 (let ((_e1381214013_
                                        (gx#stx-e _g1379214011_)))
                                   (let ((_hd1381314016_ (##car _e1381214013_))
                                         (_tl1381414018_
                                          (##cdr _e1381214013_)))
                                     (if (gx#stx-pair? _tl1381414018_)
                                         (let ((_e1381514021_
                                                (gx#stx-e _tl1381414018_)))
                                           (let ((_hd1381614024_
                                                  (##car _e1381514021_))
                                                 (_tl1381714026_
                                                  (##cdr _e1381514021_)))
                                             (if (gx#stx-pair? _hd1381614024_)
                                                 (let ((_e1381814029_
                                                        (gx#stx-e
                                                         _hd1381614024_)))
                                                   (let ((_hd1381914032_
                                                          (##car _e1381814029_))
                                                         (_tl1382014034_
                                                          (##cdr _e1381814029_)))
                                                     (if (gx#stx-null?
                                                          _tl1382014034_)
                                                         (if (gx#stx-pair?
                                                              _tl1381714026_)
                                                             (let ((_e1382114037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1381714026_)))
                       (let ((_hd1382214040_ (##car _e1382114037_))
                             (_tl1382314042_ (##cdr _e1382114037_)))
                         (if (gx#stx-null? _tl1382314042_)
                             ((lambda (_L14045_ _L14046_)
                                (if (if (gx#identifier? _L14046_)
                                        (_case-lambda-expr?13784_ _L14045_)
                                        '#f)
                                    (let ((_g1406214072_
                                           (lambda (_g1406314069_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1406314069_))))
                                      (let ((_g1406114102_
                                             (lambda (_g1406314075_)
                                               (if (gx#stx-pair? _g1406314075_)
                                                   (let ((_e1406514077_
                                                          (gx#stx-e
                                                           _g1406314075_)))
                                                     (let ((_hd1406614080_
                                                            (##car _e1406514077_))
                                                           (_tl1406714082_
                                                            (##cdr _e1406514077_)))
                                                       ((lambda (_L14085_)
                                                          (let ((_g17146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses13785_ _L14046_ _L14085_)))
                    (begin
                      (let ((_g17147_ (values-count _g17146_)))
                        (if (not (fx= _g17147_ 3))
                            (error "Context expects 3 values" _g17147_)))
                      (let ((_ids14095_ (values-ref _g17146_ 0))
                            (_impls14096_ (values-ref _g17146_ 1))
                            (_clauses14097_ (values-ref _g17146_ 2)))
                        (let ((_defs14099_
                               (map _case-lambda-clause-def13786_
                                    _ids14095_
                                    _impls14096_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L14046_)
                               '" => "
                               _ids14095_)
                              (for-each gx#core-bind-runtime! _ids14095_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L14046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses14097_)
                              _L14045_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx13781_)
                                                  '())
                                            _defs14099_))
                               _stx13781_))))))))
                _tl1406714082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1406214072_
                                                    _g1406314075_)))))
                                        (_g1406114102_ _L14045_)))
                                    (_g1378914008_ _g1379214011_)))
                              _hd1382214040_
                              _hd1381914032_)
                             (_g1378914008_ _g1379214011_))))
                     (_g1378914008_ _g1379214011_))
                 (_g1378914008_ _g1379214011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1378914008_
                                                  _g1379214011_))))
                                         (_g1378914008_ _g1379214011_))))
                                 (_g1378914008_ _g1379214011_)))))
                      (let ((_g1378714169_
                             (lambda (_g1379214108_)
                               (if (gx#stx-pair? _g1379214108_)
                                   (let ((_e1379514110_
                                          (gx#stx-e _g1379214108_)))
                                     (let ((_hd1379614113_
                                            (##car _e1379514110_))
                                           (_tl1379714115_
                                            (##cdr _e1379514110_)))
                                       (if (gx#stx-pair? _tl1379714115_)
                                           (let ((_e1379814118_
                                                  (gx#stx-e _tl1379714115_)))
                                             (let ((_hd1379914121_
                                                    (##car _e1379814118_))
                                                   (_tl1380014123_
                                                    (##cdr _e1379814118_)))
                                               (if (gx#stx-pair?
                                                    _hd1379914121_)
                                                   (let ((_e1380114126_
                                                          (gx#stx-e
                                                           _hd1379914121_)))
                                                     (let ((_hd1380214129_
                                                            (##car _e1380114126_))
                                                           (_tl1380314131_
                                                            (##cdr _e1380114126_)))
                                                       (if (gx#stx-null?
                                                            _tl1380314131_)
                                                           (if (gx#stx-pair?
                                                                _tl1380014123_)
                                                               (let ((_e1380414134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1380014123_)))
                         (let ((_hd1380514137_ (##car _e1380414134_))
                               (_tl1380614139_ (##cdr _e1380414134_)))
                           (if (gx#stx-pair? _hd1380514137_)
                               (let ((_e1380714142_ (gx#stx-e _hd1380514137_)))
                                 (let ((_hd1380814145_ (##car _e1380714142_))
                                       (_tl1380914147_ (##cdr _e1380714142_)))
                                   (if (gx#identifier? _hd1380814145_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1380814145_)
                                           (if (gx#stx-null? _tl1380614139_)
                                               ((lambda (_L14150_ _L14151_)
                                                  (if (if (gx#identifier?
                                                           _L14151_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14150_)
                  '#f)
              _stx13781_
              (_g1378814105_ _g1379214108_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1380914147_
                                                _hd1380214129_)
                                               (_g1378814105_ _g1379214108_))
                                           (_g1378814105_ _g1379214108_))
                                       (_g1378814105_ _g1379214108_))))
                               (_g1378814105_ _g1379214108_))))
                       (_g1378814105_ _g1379214108_))
                   (_g1378814105_ _g1379214108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1378814105_
                                                    _g1379214108_))))
                                           (_g1378814105_ _g1379214108_))))
                                   (_g1378814105_ _g1379214108_)))))
                        (_g1378714169_ _stx13781_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx13719_ _id13720_ _new-id13721_)
      (let ((_g1372413737_
             (lambda (_g1372513734_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1372513734_))))
        (let ((_g1372313744_
               (lambda (_g1372513740_) ((lambda () _stx13719_)))))
          (let ((_g1372213778_
                 (lambda (_g1372513747_)
                   (if (gx#stx-pair? _g1372513747_)
                       (let ((_e1372713749_ (gx#stx-e _g1372513747_)))
                         (let ((_hd1372813752_ (##car _e1372713749_))
                               (_tl1372913754_ (##cdr _e1372713749_)))
                           (if (gx#stx-pair? _tl1372913754_)
                               (let ((_e1373013757_ (gx#stx-e _tl1372913754_)))
                                 (let ((_hd1373113760_ (##car _e1373013757_))
                                       (_tl1373213762_ (##cdr _e1373013757_)))
                                   (if (gx#stx-null? _tl1373213762_)
                                       ((lambda (_L13765_)
                                          (if (gx#free-identifier=?
                                               _L13765_
                                               _id13720_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id13721_ '()))
                                               _stx13719_)
                                              (_g1372313744_ _g1372513747_)))
                                        _hd1373113760_)
                                       (_g1372313744_ _g1372513747_))))
                               (_g1372313744_ _g1372513747_))))
                       (_g1372313744_ _g1372513747_)))))
            (_g1372213778_ _stx13719_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx13622_)
      (let ((_g1362513645_
             (lambda (_g1362613642_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1362613642_))))
        (let ((_g1362413652_ (lambda (_g1362613648_) ((lambda () '#!void)))))
          (let ((_g1362313716_
                 (lambda (_g1362613655_)
                   (if (gx#stx-pair? _g1362613655_)
                       (let ((_e1362913657_ (gx#stx-e _g1362613655_)))
                         (let ((_hd1363013660_ (##car _e1362913657_))
                               (_tl1363113662_ (##cdr _e1362913657_)))
                           (if (gx#stx-pair? _tl1363113662_)
                               (let ((_e1363213665_ (gx#stx-e _tl1363113662_)))
                                 (let ((_hd1363313668_ (##car _e1363213665_))
                                       (_tl1363413670_ (##cdr _e1363213665_)))
                                   (if (gx#stx-pair? _hd1363313668_)
                                       (let ((_e1363513673_
                                              (gx#stx-e _hd1363313668_)))
                                         (let ((_hd1363613676_
                                                (##car _e1363513673_))
                                               (_tl1363713678_
                                                (##cdr _e1363513673_)))
                                           (if (gx#stx-null? _tl1363713678_)
                                               (if (gx#stx-pair?
                                                    _tl1363413670_)
                                                   (let ((_e1363813681_
                                                          (gx#stx-e
                                                           _tl1363413670_)))
                                                     (let ((_hd1363913684_
                                                            (##car _e1363813681_))
                                                           (_tl1364013686_
                                                            (##cdr _e1363813681_)))
                                                       (if (gx#stx-null?
                                                            _tl1364013686_)
                                                           ((lambda (_L13689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L13690_)
                      (let ((_sym13708_ (gxc#identifier-symbol _L13690_)))
                        (if (table-ref
                             (gxc#current-compile-mutators)
                             _sym13708_
                             '#f)
                            (gxc#verbose
                             '"skipping type declaration for mutable binding "
                             _sym13708_)
                            (let ((_type1370913711_
                                   (gxc#apply-basic-expression-type _L13689_)))
                              (if _type1370913711_
                                  (let ((_type13714_ _type1370913711_))
                                    (gxc#optimizer-declare-type!
                                     _sym13708_
                                     _type13714_))
                                  '#f)))))
                    _hd1363913684_
                    _hd1363613676_)
                   (_g1362413652_ _g1362613655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1362413652_
                                                    _g1362613655_))
                                               (_g1362413652_ _g1362613655_))))
                                       (_g1362413652_ _g1362613655_))))
                               (_g1362413652_ _g1362613655_))))
                       (_g1362413652_ _g1362613655_)))))
            (_g1362313716_ _stx13622_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13176_)
      (let ((_g1318013282_
             (lambda (_g1318113279_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1318113279_))))
        (let ((_g1317913289_ (lambda (_g1318113285_) ((lambda () '#!void)))))
          (let ((_g1317813439_
                 (lambda (_g1318113292_)
                   (if (gx#stx-pair? _g1318113292_)
                       (let ((_e1323913294_ (gx#stx-e _g1318113292_)))
                         (let ((_hd1324013297_ (##car _e1323913294_))
                               (_tl1324113299_ (##cdr _e1323913294_)))
                           (if (gx#stx-pair? _tl1324113299_)
                               (let ((_e1324213302_ (gx#stx-e _tl1324113299_)))
                                 (let ((_hd1324313305_ (##car _e1324213302_))
                                       (_tl1324413307_ (##cdr _e1324213302_)))
                                   (if (gx#stx-pair? _hd1324313305_)
                                       (let ((_e1324513310_
                                              (gx#stx-e _hd1324313305_)))
                                         (let ((_hd1324613313_
                                                (##car _e1324513310_))
                                               (_tl1324713315_
                                                (##cdr _e1324513310_)))
                                           (if (gx#identifier? _hd1324613313_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1324613313_)
                                                   (if (gx#stx-pair?
                                                        _tl1324713315_)
                                                       (let ((_e1324813318_
                                                              (gx#stx-e
                                                               _tl1324713315_)))
                                                         (let ((_hd1324913321_
                                                                (##car _e1324813318_))
                                                               (_tl1325013323_
                                                                (##cdr _e1324813318_)))
                                                           (if (gx#stx-null?
                                                                _tl1325013323_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1324413307_)
                           (let ((_e1325113326_ (gx#stx-e _tl1324413307_)))
                             (let ((_hd1325213329_ (##car _e1325113326_))
                                   (_tl1325313331_ (##cdr _e1325113326_)))
                               (if (gx#stx-pair? _hd1325213329_)
                                   (let ((_e1325413334_
                                          (gx#stx-e _hd1325213329_)))
                                     (let ((_hd1325513337_
                                            (##car _e1325413334_))
                                           (_tl1325613339_
                                            (##cdr _e1325413334_)))
                                       (if (gx#identifier? _hd1325513337_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1325513337_)
                                               (if (gx#stx-pair?
                                                    _tl1325613339_)
                                                   (let ((_e1325713342_
                                                          (gx#stx-e
                                                           _tl1325613339_)))
                                                     (let ((_hd1325813345_
                                                            (##car _e1325713342_))
                                                           (_tl1325913347_
                                                            (##cdr _e1325713342_)))
                                                       (if (gx#stx-null?
                                                            _tl1325913347_)
                                                           (if (gx#stx-pair?
                                                                _tl1325313331_)
                                                               (let ((_e1326013350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1325313331_)))
                         (let ((_hd1326113353_ (##car _e1326013350_))
                               (_tl1326213355_ (##cdr _e1326013350_)))
                           (if (gx#stx-pair? _hd1326113353_)
                               (let ((_e1326313358_ (gx#stx-e _hd1326113353_)))
                                 (let ((_hd1326413361_ (##car _e1326313358_))
                                       (_tl1326513363_ (##cdr _e1326313358_)))
                                   (if (gx#identifier? _hd1326413361_)
                                       (if (gx#stx-eq? '%#quote _hd1326413361_)
                                           (if (gx#stx-pair? _tl1326513363_)
                                               (let ((_e1326613366_
                                                      (gx#stx-e
                                                       _tl1326513363_)))
                                                 (let ((_hd1326713369_
                                                        (##car _e1326613366_))
                                                       (_tl1326813371_
                                                        (##cdr _e1326613366_)))
                                                   (if (gx#stx-null?
                                                        _tl1326813371_)
                                                       (if (gx#stx-pair?
                                                            _tl1326213355_)
                                                           (let ((_e1326913374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1326213355_)))
                     (let ((_hd1327013377_ (##car _e1326913374_))
                           (_tl1327113379_ (##cdr _e1326913374_)))
                       (if (gx#stx-pair? _hd1327013377_)
                           (let ((_e1327213382_ (gx#stx-e _hd1327013377_)))
                             (let ((_hd1327313385_ (##car _e1327213382_))
                                   (_tl1327413387_ (##cdr _e1327213382_)))
                               (if (gx#identifier? _hd1327313385_)
                                   (if (gx#stx-eq? '%#ref _hd1327313385_)
                                       (if (gx#stx-pair? _tl1327413387_)
                                           (let ((_e1327513390_
                                                  (gx#stx-e _tl1327413387_)))
                                             (let ((_hd1327613393_
                                                    (##car _e1327513390_))
                                                   (_tl1327713395_
                                                    (##cdr _e1327513390_)))
                                               (if (gx#stx-null?
                                                    _tl1327713395_)
                                                   (if (gx#stx-null?
                                                        _tl1327113379_)
                                                       ((lambda (_L13398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13399_
                         _L13400_
                         _L13401_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda16901
                       (gxc#identifier-symbol _L13400_)
                       (gx#stx-e _L13399_)
                       (gxc#identifier-symbol _L13398_)
                       '#f)
                      (_g1317913289_ _g1318113292_)))
                _hd1327613393_
                _hd1326713369_
                _hd1325813345_
                _hd1324913321_)
               (_g1317913289_ _g1318113292_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317913289_
                                                    _g1318113292_))))
                                           (_g1317913289_ _g1318113292_))
                                       (_g1317913289_ _g1318113292_))
                                   (_g1317913289_ _g1318113292_))))
                           (_g1317913289_ _g1318113292_))))
                   (_g1317913289_ _g1318113292_))
               (_g1317913289_ _g1318113292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1317913289_ _g1318113292_))
                                           (_g1317913289_ _g1318113292_))
                                       (_g1317913289_ _g1318113292_))))
                               (_g1317913289_ _g1318113292_))))
                       (_g1317913289_ _g1318113292_))
                   (_g1317913289_ _g1318113292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317913289_
                                                    _g1318113292_))
                                               (_g1317913289_ _g1318113292_))
                                           (_g1317913289_ _g1318113292_))))
                                   (_g1317913289_ _g1318113292_))))
                           (_g1317913289_ _g1318113292_))
                       (_g1317913289_ _g1318113292_))))
               (_g1317913289_ _g1318113292_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317913289_
                                                    _g1318113292_))
                                               (_g1317913289_ _g1318113292_))))
                                       (_g1317913289_ _g1318113292_))))
                               (_g1317913289_ _g1318113292_))))
                       (_g1317913289_ _g1318113292_)))))
            (let ((_g1317713619_
                   (lambda (_g1318113442_)
                     (if (gx#stx-pair? _g1318113442_)
                         (let ((_e1318713444_ (gx#stx-e _g1318113442_)))
                           (let ((_hd1318813447_ (##car _e1318713444_))
                                 (_tl1318913449_ (##cdr _e1318713444_)))
                             (if (gx#stx-pair? _tl1318913449_)
                                 (let ((_e1319013452_
                                        (gx#stx-e _tl1318913449_)))
                                   (let ((_hd1319113455_ (##car _e1319013452_))
                                         (_tl1319213457_
                                          (##cdr _e1319013452_)))
                                     (if (gx#stx-pair? _hd1319113455_)
                                         (let ((_e1319313460_
                                                (gx#stx-e _hd1319113455_)))
                                           (let ((_hd1319413463_
                                                  (##car _e1319313460_))
                                                 (_tl1319513465_
                                                  (##cdr _e1319313460_)))
                                             (if (gx#identifier?
                                                  _hd1319413463_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1319413463_)
                                                     (if (gx#stx-pair?
                                                          _tl1319513465_)
                                                         (let ((_e1319613468_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1319513465_)))
                   (let ((_hd1319713471_ (##car _e1319613468_))
                         (_tl1319813473_ (##cdr _e1319613468_)))
                     (if (gx#stx-null? _tl1319813473_)
                         (if (gx#stx-pair? _tl1319213457_)
                             (let ((_e1319913476_ (gx#stx-e _tl1319213457_)))
                               (let ((_hd1320013479_ (##car _e1319913476_))
                                     (_tl1320113481_ (##cdr _e1319913476_)))
                                 (if (gx#stx-pair? _hd1320013479_)
                                     (let ((_e1320213484_
                                            (gx#stx-e _hd1320013479_)))
                                       (let ((_hd1320313487_
                                              (##car _e1320213484_))
                                             (_tl1320413489_
                                              (##cdr _e1320213484_)))
                                         (if (gx#identifier? _hd1320313487_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1320313487_)
                                                 (if (gx#stx-pair?
                                                      _tl1320413489_)
                                                     (let ((_e1320513492_
                                                            (gx#stx-e
                                                             _tl1320413489_)))
                                                       (let ((_hd1320613495_
                                                              (##car _e1320513492_))
                                                             (_tl1320713497_
                                                              (##cdr _e1320513492_)))
                                                         (if (gx#stx-null?
                                                              _tl1320713497_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1320113481_)
                         (let ((_e1320813500_ (gx#stx-e _tl1320113481_)))
                           (let ((_hd1320913503_ (##car _e1320813500_))
                                 (_tl1321013505_ (##cdr _e1320813500_)))
                             (if (gx#stx-pair? _hd1320913503_)
                                 (let ((_e1321113508_
                                        (gx#stx-e _hd1320913503_)))
                                   (let ((_hd1321213511_ (##car _e1321113508_))
                                         (_tl1321313513_
                                          (##cdr _e1321113508_)))
                                     (if (gx#identifier? _hd1321213511_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1321213511_)
                                             (if (gx#stx-pair? _tl1321313513_)
                                                 (let ((_e1321413516_
                                                        (gx#stx-e
                                                         _tl1321313513_)))
                                                   (let ((_hd1321513519_
                                                          (##car _e1321413516_))
                                                         (_tl1321613521_
                                                          (##cdr _e1321413516_)))
                                                     (if (gx#stx-null?
                                                          _tl1321613521_)
                                                         (if (gx#stx-pair?
                                                              _tl1321013505_)
                                                             (let ((_e1321713524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1321013505_)))
                       (let ((_hd1321813527_ (##car _e1321713524_))
                             (_tl1321913529_ (##cdr _e1321713524_)))
                         (if (gx#stx-pair? _hd1321813527_)
                             (let ((_e1322013532_ (gx#stx-e _hd1321813527_)))
                               (let ((_hd1322113535_ (##car _e1322013532_))
                                     (_tl1322213537_ (##cdr _e1322013532_)))
                                 (if (gx#identifier? _hd1322113535_)
                                     (if (gx#stx-eq? '%#ref _hd1322113535_)
                                         (if (gx#stx-pair? _tl1322213537_)
                                             (let ((_e1322313540_
                                                    (gx#stx-e _tl1322213537_)))
                                               (let ((_hd1322413543_
                                                      (##car _e1322313540_))
                                                     (_tl1322513545_
                                                      (##cdr _e1322313540_)))
                                                 (if (gx#stx-null?
                                                      _tl1322513545_)
                                                     (if (gx#stx-pair?
                                                          _tl1321913529_)
                                                         (let ((_e1322613548_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1321913529_)))
                   (let ((_hd1322713551_ (##car _e1322613548_))
                         (_tl1322813553_ (##cdr _e1322613548_)))
                     (if (gx#stx-pair? _hd1322713551_)
                         (let ((_e1322913556_ (gx#stx-e _hd1322713551_)))
                           (let ((_hd1323013559_ (##car _e1322913556_))
                                 (_tl1323113561_ (##cdr _e1322913556_)))
                             (if (gx#identifier? _hd1323013559_)
                                 (if (gx#stx-eq? '%#quote _hd1323013559_)
                                     (if (gx#stx-pair? _tl1323113561_)
                                         (let ((_e1323213564_
                                                (gx#stx-e _tl1323113561_)))
                                           (let ((_hd1323313567_
                                                  (##car _e1323213564_))
                                                 (_tl1323413569_
                                                  (##cdr _e1323213564_)))
                                             (if (gx#stx-null? _tl1323413569_)
                                                 (if (gx#stx-null?
                                                      _tl1322813553_)
                                                     ((lambda (_L13572_
                                                               _L13573_
                                                               _L13574_
                                                               _L13575_
                                                               _L13576_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13576_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda16901
                     (gxc#identifier-symbol _L13575_)
                     (gx#stx-e _L13574_)
                     (gxc#identifier-symbol _L13573_)
                     (gx#stx-e _L13572_))
                    (_g1317813439_ _g1318113442_)))
              _hd1323313567_
              _hd1322413543_
              _hd1321513519_
              _hd1320613495_
              _hd1319713471_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317813439_
                                                      _g1318113442_))
                                                 (_g1317813439_
                                                  _g1318113442_))))
                                         (_g1317813439_ _g1318113442_))
                                     (_g1317813439_ _g1318113442_))
                                 (_g1317813439_ _g1318113442_))))
                         (_g1317813439_ _g1318113442_))))
                 (_g1317813439_ _g1318113442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317813439_
                                                      _g1318113442_))))
                                             (_g1317813439_ _g1318113442_))
                                         (_g1317813439_ _g1318113442_))
                                     (_g1317813439_ _g1318113442_))))
                             (_g1317813439_ _g1318113442_))))
                     (_g1317813439_ _g1318113442_))
                 (_g1317813439_ _g1318113442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1317813439_ _g1318113442_))
                                             (_g1317813439_ _g1318113442_))
                                         (_g1317813439_ _g1318113442_))))
                                 (_g1317813439_ _g1318113442_))))
                         (_g1317813439_ _g1318113442_))
                     (_g1317813439_ _g1318113442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317813439_
                                                      _g1318113442_))
                                                 (_g1317813439_ _g1318113442_))
                                             (_g1317813439_ _g1318113442_))))
                                     (_g1317813439_ _g1318113442_))))
                             (_g1317813439_ _g1318113442_))
                         (_g1317813439_ _g1318113442_))))
                 (_g1317813439_ _g1318113442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317813439_
                                                      _g1318113442_))
                                                 (_g1317813439_
                                                  _g1318113442_))))
                                         (_g1317813439_ _g1318113442_))))
                                 (_g1317813439_ _g1318113442_))))
                         (_g1317813439_ _g1318113442_)))))
              (_g1317713619_ _stx13176_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13116_)
      (let ((_g1311913132_
             (lambda (_g1312013129_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1312013129_))))
        (let ((_g1311813139_ (lambda (_g1312013135_) ((lambda () '#f)))))
          (let ((_g1311713173_
                 (lambda (_g1312013142_)
                   (if (gx#stx-pair? _g1312013142_)
                       (let ((_e1312213144_ (gx#stx-e _g1312013142_)))
                         (let ((_hd1312313147_ (##car _e1312213144_))
                               (_tl1312413149_ (##cdr _e1312213144_)))
                           (if (gx#stx-pair? _tl1312413149_)
                               (let ((_e1312513152_ (gx#stx-e _tl1312413149_)))
                                 (let ((_hd1312613155_ (##car _e1312513152_))
                                       (_tl1312713157_ (##cdr _e1312513152_)))
                                   (if (gx#stx-null? _tl1312713157_)
                                       ((lambda (_L13160_)
                                          (gxc#compile-e _L13160_))
                                        _hd1312613155_)
                                       (_g1311813139_ _g1312013142_))))
                               (_g1311813139_ _g1312013142_))))
                       (_g1311813139_ _g1312013142_)))))
            (_g1311713173_ _stx13116_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12541_)
      (let ((_g1254612667_
             (lambda (_g1254712664_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1254712664_))))
        (let ((_g1254512674_ (lambda (_g1254712670_) ((lambda () '#f)))))
          (let ((_g1254412698_
                 (lambda (_g1254712677_)
                   (if (gx#stx-pair? _g1254712677_)
                       (let ((_e1266012679_ (gx#stx-e _g1254712677_)))
                         (let ((_hd1266112682_ (##car _e1266012679_))
                               (_tl1266212684_ (##cdr _e1266012679_)))
                           ((lambda (_L12687_)
                              (if (gxc#dispatch-lambda-form? _L12687_)
                                  (let ((__obj17116
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj17116
                                       'lambda
                                       (gxc#lambda-form-arity _L12687_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L12687_))
                                      __obj17116))
                                  (_g1254512674_ _g1254712677_)))
                            _tl1266212684_)))
                       (_g1254512674_ _g1254712677_)))))
            (let ((_g1254312928_
                   (lambda (_g1254712701_)
                     (if (gx#stx-pair? _g1254712701_)
                         (let ((_e1260512703_ (gx#stx-e _g1254712701_)))
                           (let ((_hd1260612706_ (##car _e1260512703_))
                                 (_tl1260712708_ (##cdr _e1260512703_)))
                             (if (gx#stx-pair? _tl1260712708_)
                                 (let ((_e1260812711_
                                        (gx#stx-e _tl1260712708_)))
                                   (let ((_hd1260912714_ (##car _e1260812711_))
                                         (_tl1261012716_
                                          (##cdr _e1260812711_)))
                                     (if (gx#stx-pair/null? _hd1260912714_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1260912714_)
                                                   '0)
                                             (let ((_g17152_
                                                    (gx#syntax-split-splice
                                                     _hd1260912714_
                                                     '0)))
                                               (begin
                                                 (let ((_g17153_
                                                        (values-count
                                                         _g17152_)))
                                                   (if (not (fx= _g17153_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17153_)))
                                                 (let ((_target1261112719_
                                                        (values-ref
                                                         _g17152_
                                                         0))
                                                       (_tl1261312721_
                                                        (values-ref
                                                         _g17152_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1261312721_)
                                                       (letrec ((_loop1261412724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1261212727_ _arg1261812729_)
                           (if (gx#stx-pair? _hd1261212727_)
                               (let ((_e1261512732_ (gx#stx-e _hd1261212727_)))
                                 (let ((_lp-hd1261612735_
                                        (##car _e1261512732_))
                                       (_lp-tl1261712737_
                                        (##cdr _e1261512732_)))
                                   (_loop1261412724_
                                    _lp-tl1261712737_
                                    (cons _lp-hd1261612735_ _arg1261812729_))))
                               (let ((_arg1261912740_
                                      (reverse _arg1261812729_)))
                                 (if (gx#stx-pair? _tl1261012716_)
                                     (let ((_e1262012743_
                                            (gx#stx-e _tl1261012716_)))
                                       (let ((_hd1262112746_
                                              (##car _e1262012743_))
                                             (_tl1262212748_
                                              (##cdr _e1262012743_)))
                                         (if (gx#stx-pair? _hd1262112746_)
                                             (let ((_e1262312751_
                                                    (gx#stx-e _hd1262112746_)))
                                               (let ((_hd1262412754_
                                                      (##car _e1262312751_))
                                                     (_tl1262512756_
                                                      (##cdr _e1262312751_)))
                                                 (if (gx#identifier?
                                                      _hd1262412754_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1262412754_)
                                                         (if (gx#stx-pair?
                                                              _tl1262512756_)
                                                             (let ((_e1262612759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1262512756_)))
                       (let ((_hd1262712762_ (##car _e1262612759_))
                             (_tl1262812764_ (##cdr _e1262612759_)))
                         (if (gx#stx-pair? _hd1262712762_)
                             (let ((_e1262912767_ (gx#stx-e _hd1262712762_)))
                               (let ((_hd1263012770_ (##car _e1262912767_))
                                     (_tl1263112772_ (##cdr _e1262912767_)))
                                 (if (gx#identifier? _hd1263012770_)
                                     (if (gx#stx-eq? '%#ref _hd1263012770_)
                                         (if (gx#stx-pair? _tl1263112772_)
                                             (let ((_e1263212775_
                                                    (gx#stx-e _tl1263112772_)))
                                               (let ((_hd1263312778_
                                                      (##car _e1263212775_))
                                                     (_tl1263412780_
                                                      (##cdr _e1263212775_)))
                                                 (if (gx#stx-null?
                                                      _tl1263412780_)
                                                     (if (gx#stx-pair?
                                                          _tl1262812764_)
                                                         (let ((_e1263512783_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1262812764_)))
                   (let ((_hd1263612786_ (##car _e1263512783_))
                         (_tl1263712788_ (##cdr _e1263512783_)))
                     (if (gx#stx-pair? _hd1263612786_)
                         (let ((_e1263812791_ (gx#stx-e _hd1263612786_)))
                           (let ((_hd1263912794_ (##car _e1263812791_))
                                 (_tl1264012796_ (##cdr _e1263812791_)))
                             (if (gx#identifier? _hd1263912794_)
                                 (if (gx#stx-eq? '%#ref _hd1263912794_)
                                     (if (gx#stx-pair? _tl1264012796_)
                                         (let ((_e1264112799_
                                                (gx#stx-e _tl1264012796_)))
                                           (let ((_hd1264212802_
                                                  (##car _e1264112799_))
                                                 (_tl1264312804_
                                                  (##cdr _e1264112799_)))
                                             (if (gx#stx-null? _tl1264312804_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1263712788_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1263712788_)
                                                               '0)
                                                         (let ((_g17154_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1263712788_
                         '0)))
                   (begin
                     (let ((_g17155_ (values-count _g17154_)))
                       (if (not (fx= _g17155_ 2))
                           (error "Context expects 2 values" _g17155_)))
                     (let ((_target1264412807_ (values-ref _g17154_ 0))
                           (_tl1264612809_ (values-ref _g17154_ 1)))
                       (if (gx#stx-null? _tl1264612809_)
                           (letrec ((_loop1264712812_
                                     (lambda (_hd1264512815_ _xarg1265112817_)
                                       (if (gx#stx-pair? _hd1264512815_)
                                           (let ((_e1264812820_
                                                  (gx#stx-e _hd1264512815_)))
                                             (let ((_lp-hd1264912823_
                                                    (##car _e1264812820_))
                                                   (_lp-tl1265012825_
                                                    (##cdr _e1264812820_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1264912823_)
                                                   (let ((_e1265312828_
                                                          (gx#stx-e
                                                           _lp-hd1264912823_)))
                                                     (let ((_hd1265412831_
                                                            (##car _e1265312828_))
                                                           (_tl1265512833_
                                                            (##cdr _e1265312828_)))
                                                       (if (gx#identifier?
                                                            _hd1265412831_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1265412831_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1265512833_)
                           (let ((_e1265612836_ (gx#stx-e _tl1265512833_)))
                             (let ((_hd1265712839_ (##car _e1265612836_))
                                   (_tl1265812841_ (##cdr _e1265612836_)))
                               (if (gx#stx-null? _tl1265812841_)
                                   (_loop1264712812_
                                    _lp-tl1265012825_
                                    (cons _hd1265712839_ _xarg1265112817_))
                                   (_g1254412698_ _g1254712701_))))
                           (_g1254412698_ _g1254712701_))
                       (_g1254412698_ _g1254712701_))
                   (_g1254412698_ _g1254712701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1254412698_
                                                    _g1254712701_))))
                                           (let ((_xarg1265212844_
                                                  (reverse _xarg1265112817_)))
                                             (if (gx#stx-null? _tl1262212748_)
                                                 ((lambda (_L12847_
                                                           _L12848_
                                                           _L12849_
                                                           _L12850_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1288712890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1288812892_)
                                (cons _g1288712890_ _g1288812892_))
                              '()
                              _L12850_)))
                    (if (eq? (gxc#identifier-symbol _L12849_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1289412897_
                                                           _g1289512899_)
                                                    (cons _g1289412897_
                                                          _g1289512899_))
                                                  '()
                                                  _L12850_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1290112904_
                                                           _g1290212906_)
                                                    (cons _g1290112904_
                                                          _g1290212906_))
                                                  '()
                                                  _L12847_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1290812911_
                                                      _g1290912913_)
                                               (cons _g1290812911_
                                                     _g1290912913_))
                                             '()
                                             _L12850_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1291512918_
                                                      _g1291612920_)
                                               (cons _g1291512918_
                                                     _g1291612920_))
                                             '()
                                             _L12847_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t12923_ (gxc#identifier-symbol _L12848_)))
                  (let ((_type12925_
                         (gxc#optimizer-resolve-type _type-t12923_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type12925_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t12923_)
                          '#f))))
                (_g1254412698_ _g1254712701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1265212844_
                                                  _hd1264212802_
                                                  _hd1263312778_
                                                  _arg1261912740_)
                                                 (_g1254412698_
                                                  _g1254712701_)))))))
                             (_loop1264712812_ _target1264412807_ '()))
                           (_g1254412698_ _g1254712701_)))))
                 (_g1254412698_ _g1254712701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1254412698_
                                                      _g1254712701_))
                                                 (_g1254412698_
                                                  _g1254712701_))))
                                         (_g1254412698_ _g1254712701_))
                                     (_g1254412698_ _g1254712701_))
                                 (_g1254412698_ _g1254712701_))))
                         (_g1254412698_ _g1254712701_))))
                 (_g1254412698_ _g1254712701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1254412698_
                                                      _g1254712701_))))
                                             (_g1254412698_ _g1254712701_))
                                         (_g1254412698_ _g1254712701_))
                                     (_g1254412698_ _g1254712701_))))
                             (_g1254412698_ _g1254712701_))))
                     (_g1254412698_ _g1254712701_))
                 (_g1254412698_ _g1254712701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1254412698_
                                                      _g1254712701_))))
                                             (_g1254412698_ _g1254712701_))))
                                     (_g1254412698_ _g1254712701_)))))))
                 (_loop1261412724_ _target1261112719_ '()))
               (_g1254412698_ _g1254712701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1254412698_ _g1254712701_))
                                         (_g1254412698_ _g1254712701_))))
                                 (_g1254412698_ _g1254712701_))))
                         (_g1254412698_ _g1254712701_)))))
              (let ((_g1254213113_
                     (lambda (_g1254712931_)
                       (if (gx#stx-pair? _g1254712931_)
                           (let ((_e1255312933_ (gx#stx-e _g1254712931_)))
                             (let ((_hd1255412936_ (##car _e1255312933_))
                                   (_tl1255512938_ (##cdr _e1255312933_)))
                               (if (gx#stx-pair? _tl1255512938_)
                                   (let ((_e1255612941_
                                          (gx#stx-e _tl1255512938_)))
                                     (let ((_hd1255712944_
                                            (##car _e1255612941_))
                                           (_tl1255812946_
                                            (##cdr _e1255612941_)))
                                       (if (gx#stx-pair? _tl1255812946_)
                                           (let ((_e1255912949_
                                                  (gx#stx-e _tl1255812946_)))
                                             (let ((_hd1256012952_
                                                    (##car _e1255912949_))
                                                   (_tl1256112954_
                                                    (##cdr _e1255912949_)))
                                               (if (gx#stx-pair?
                                                    _hd1256012952_)
                                                   (let ((_e1256212957_
                                                          (gx#stx-e
                                                           _hd1256012952_)))
                                                     (let ((_hd1256312960_
                                                            (##car _e1256212957_))
                                                           (_tl1256412962_
                                                            (##cdr _e1256212957_)))
                                                       (if (gx#identifier?
                                                            _hd1256312960_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1256312960_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1256412962_)
                           (let ((_e1256512965_ (gx#stx-e _tl1256412962_)))
                             (let ((_hd1256612968_ (##car _e1256512965_))
                                   (_tl1256712970_ (##cdr _e1256512965_)))
                               (if (gx#stx-pair? _hd1256612968_)
                                   (let ((_e1256812973_
                                          (gx#stx-e _hd1256612968_)))
                                     (let ((_hd1256912976_
                                            (##car _e1256812973_))
                                           (_tl1257012978_
                                            (##cdr _e1256812973_)))
                                       (if (gx#identifier? _hd1256912976_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1256912976_)
                                               (if (gx#stx-pair?
                                                    _tl1257012978_)
                                                   (let ((_e1257112981_
                                                          (gx#stx-e
                                                           _tl1257012978_)))
                                                     (let ((_hd1257212984_
                                                            (##car _e1257112981_))
                                                           (_tl1257312986_
                                                            (##cdr _e1257112981_)))
                                                       (if (gx#stx-null?
                                                            _tl1257312986_)
                                                           (if (gx#stx-pair?
                                                                _tl1256712970_)
                                                               (let ((_e1257412989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1256712970_)))
                         (let ((_hd1257512992_ (##car _e1257412989_))
                               (_tl1257612994_ (##cdr _e1257412989_)))
                           (if (gx#stx-pair? _hd1257512992_)
                               (let ((_e1257712997_ (gx#stx-e _hd1257512992_)))
                                 (let ((_hd1257813000_ (##car _e1257712997_))
                                       (_tl1257913002_ (##cdr _e1257712997_)))
                                   (if (gx#identifier? _hd1257813000_)
                                       (if (gx#stx-eq? '%#ref _hd1257813000_)
                                           (if (gx#stx-pair? _tl1257913002_)
                                               (let ((_e1258013005_
                                                      (gx#stx-e
                                                       _tl1257913002_)))
                                                 (let ((_hd1258113008_
                                                        (##car _e1258013005_))
                                                       (_tl1258213010_
                                                        (##cdr _e1258013005_)))
                                                   (if (gx#stx-null?
                                                        _tl1258213010_)
                                                       (if (gx#stx-pair?
                                                            _tl1257612994_)
                                                           (let ((_e1258313013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1257612994_)))
                     (let ((_hd1258413016_ (##car _e1258313013_))
                           (_tl1258513018_ (##cdr _e1258313013_)))
                       (if (gx#stx-pair? _hd1258413016_)
                           (let ((_e1258613021_ (gx#stx-e _hd1258413016_)))
                             (let ((_hd1258713024_ (##car _e1258613021_))
                                   (_tl1258813026_ (##cdr _e1258613021_)))
                               (if (gx#identifier? _hd1258713024_)
                                   (if (gx#stx-eq? '%#ref _hd1258713024_)
                                       (if (gx#stx-pair? _tl1258813026_)
                                           (let ((_e1258913029_
                                                  (gx#stx-e _tl1258813026_)))
                                             (let ((_hd1259013032_
                                                    (##car _e1258913029_))
                                                   (_tl1259113034_
                                                    (##cdr _e1258913029_)))
                                               (if (gx#stx-null?
                                                    _tl1259113034_)
                                                   (if (gx#stx-pair?
                                                        _tl1258513018_)
                                                       (let ((_e1259213037_
                                                              (gx#stx-e
                                                               _tl1258513018_)))
                                                         (let ((_hd1259313040_
                                                                (##car _e1259213037_))
                                                               (_tl1259413042_
                                                                (##cdr _e1259213037_)))
                                                           (if (gx#stx-pair?
                                                                _hd1259313040_)
                                                               (let ((_e1259513045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1259313040_)))
                         (let ((_hd1259613048_ (##car _e1259513045_))
                               (_tl1259713050_ (##cdr _e1259513045_)))
                           (if (gx#identifier? _hd1259613048_)
                               (if (gx#stx-eq? '%#ref _hd1259613048_)
                                   (if (gx#stx-pair? _tl1259713050_)
                                       (let ((_e1259813053_
                                              (gx#stx-e _tl1259713050_)))
                                         (let ((_hd1259913056_
                                                (##car _e1259813053_))
                                               (_tl1260013058_
                                                (##cdr _e1259813053_)))
                                           (if (gx#stx-null? _tl1260013058_)
                                               (if (gx#stx-null?
                                                    _tl1259413042_)
                                                   (if (gx#stx-null?
                                                        _tl1256112954_)
                                                       ((lambda (_L13061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13062_
                         _L13063_
                         _L13064_
                         _L13065_)
                  (if (if (gx#identifier? _L13065_)
                          (if (eq? (gxc#identifier-symbol _L13064_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L13063_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13065_ _L13061_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13108_ (gxc#identifier-symbol _L13062_)))
                        (let ((_type13110_
                               (gxc#optimizer-resolve-type _type-t13108_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13110_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13108_)
                                '#f))))
                      (_g1254312928_ _g1254712931_)))
                _hd1259913056_
                _hd1259013032_
                _hd1258113008_
                _hd1257212984_
                _hd1255712944_)
               (_g1254312928_ _g1254712931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1254312928_
                                                    _g1254712931_))
                                               (_g1254312928_ _g1254712931_))))
                                       (_g1254312928_ _g1254712931_))
                                   (_g1254312928_ _g1254712931_))
                               (_g1254312928_ _g1254712931_))))
                       (_g1254312928_ _g1254712931_))))
               (_g1254312928_ _g1254712931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1254312928_
                                                    _g1254712931_))))
                                           (_g1254312928_ _g1254712931_))
                                       (_g1254312928_ _g1254712931_))
                                   (_g1254312928_ _g1254712931_))))
                           (_g1254312928_ _g1254712931_))))
                   (_g1254312928_ _g1254712931_))
               (_g1254312928_ _g1254712931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1254312928_ _g1254712931_))
                                           (_g1254312928_ _g1254712931_))
                                       (_g1254312928_ _g1254712931_))))
                               (_g1254312928_ _g1254712931_))))
                       (_g1254312928_ _g1254712931_))
                   (_g1254312928_ _g1254712931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1254312928_
                                                    _g1254712931_))
                                               (_g1254312928_ _g1254712931_))
                                           (_g1254312928_ _g1254712931_))))
                                   (_g1254312928_ _g1254712931_))))
                           (_g1254312928_ _g1254712931_))
                       (_g1254312928_ _g1254712931_))
                   (_g1254312928_ _g1254712931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1254312928_
                                                    _g1254712931_))))
                                           (_g1254312928_ _g1254712931_))))
                                   (_g1254312928_ _g1254712931_))))
                           (_g1254312928_ _g1254712931_)))))
                (_g1254213113_ _stx12541_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12487_)
      (let ((_clause-e12489_
             (lambda (_form12539_)
               (let ((__obj17117 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj17117
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12539_)
                    (gxc#dispatch-lambda-form-delegate _form12539_))
                   __obj17117)))))
        (let ((_g1249212502_
               (lambda (_g1249312499_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1249312499_))))
          (let ((_g1249112509_ (lambda (_g1249312505_) ((lambda () '#f)))))
            (let ((_g1249012536_
                   (lambda (_g1249312512_)
                     (if (gx#stx-pair? _g1249312512_)
                         (let ((_e1249512514_ (gx#stx-e _g1249312512_)))
                           (let ((_hd1249612517_ (##car _e1249512514_))
                                 (_tl1249712519_ (##cdr _e1249512514_)))
                             ((lambda (_L12522_)
                                (if (andmap gxc#dispatch-lambda-form? _L12522_)
                                    (let ((_clauses12534_
                                           (map _clause-e12489_ _L12522_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12534_))
                                    (_g1249112509_ _g1249312512_)))
                              _tl1249712519_)))
                         (_g1249112509_ _g1249312512_)))))
              (_g1249012536_ _stx12487_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12392_)
      (let ((_g1239512415_
             (lambda (_g1239612412_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1239612412_))))
        (let ((_g1239412422_ (lambda (_g1239612418_) ((lambda () '#f)))))
          (let ((_g1239312484_
                 (lambda (_g1239612425_)
                   (if (gx#stx-pair? _g1239612425_)
                       (let ((_e1239912427_ (gx#stx-e _g1239612425_)))
                         (let ((_hd1240012430_ (##car _e1239912427_))
                               (_tl1240112432_ (##cdr _e1239912427_)))
                           (if (gx#stx-pair? _tl1240112432_)
                               (let ((_e1240212435_ (gx#stx-e _tl1240112432_)))
                                 (let ((_hd1240312438_ (##car _e1240212435_))
                                       (_tl1240412440_ (##cdr _e1240212435_)))
                                   (if (gx#stx-pair? _hd1240312438_)
                                       (let ((_e1240512443_
                                              (gx#stx-e _hd1240312438_)))
                                         (let ((_hd1240612446_
                                                (##car _e1240512443_))
                                               (_tl1240712448_
                                                (##cdr _e1240512443_)))
                                           (if (gx#identifier? _hd1240612446_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1240612446_)
                                                   (if (gx#stx-pair?
                                                        _tl1240712448_)
                                                       (let ((_e1240812451_
                                                              (gx#stx-e
                                                               _tl1240712448_)))
                                                         (let ((_hd1240912454_
                                                                (##car _e1240812451_))
                                                               (_tl1241012456_
                                                                (##cdr _e1240812451_)))
                                                           (if (gx#stx-null?
                                                                _tl1241012456_)
                                                               ((lambda (_L12459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12460_)
                          (let ((_type-e1247712479_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L12460_)
                                  '#f)))
                            (if _type-e1247712479_
                                (let ((_type-e12482_ _type-e1247712479_))
                                  (_type-e12482_ _stx12392_ _L12459_))
                                '#f)))
                        _tl1240412440_
                        _hd1240912454_)
                       (_g1239412422_ _g1239612425_))))
               (_g1239412422_ _g1239612425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1239412422_
                                                    _g1239612425_))
                                               (_g1239412422_ _g1239612425_))))
                                       (_g1239412422_ _g1239612425_))))
                               (_g1239412422_ _g1239612425_))))
                       (_g1239412422_ _g1239612425_)))))
            (_g1239312484_ _stx12392_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx11877_ _args11878_)
      (let ((_g1188211995_
             (lambda (_g1188311992_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1188311992_))))
        (let ((_g1188112002_
               (lambda (_g1188311998_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx11877_))
                      '#f))))))
          (let ((_g1188012209_
                 (lambda (_g1188312005_)
                   (if (gx#stx-pair? _g1188312005_)
                       (let ((_e1194312007_ (gx#stx-e _g1188312005_)))
                         (let ((_hd1194412010_ (##car _e1194312007_))
                               (_tl1194512012_ (##cdr _e1194312007_)))
                           (if (gx#stx-pair? _hd1194412010_)
                               (let ((_e1194612015_ (gx#stx-e _hd1194412010_)))
                                 (let ((_hd1194712018_ (##car _e1194612015_))
                                       (_tl1194812020_ (##cdr _e1194612015_)))
                                   (if (gx#identifier? _hd1194712018_)
                                       (if (gx#stx-eq? '%#quote _hd1194712018_)
                                           (if (gx#stx-pair? _tl1194812020_)
                                               (let ((_e1194912023_
                                                      (gx#stx-e
                                                       _tl1194812020_)))
                                                 (let ((_hd1195012026_
                                                        (##car _e1194912023_))
                                                       (_tl1195112028_
                                                        (##cdr _e1194912023_)))
                                                   (if (gx#stx-null?
                                                        _tl1195112028_)
                                                       (if (gx#stx-pair?
                                                            _tl1194512012_)
                                                           (let ((_e1195212031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1194512012_)))
                     (let ((_hd1195312034_ (##car _e1195212031_))
                           (_tl1195412036_ (##cdr _e1195212031_)))
                       (if (gx#stx-pair? _hd1195312034_)
                           (let ((_e1195512039_ (gx#stx-e _hd1195312034_)))
                             (let ((_hd1195612042_ (##car _e1195512039_))
                                   (_tl1195712044_ (##cdr _e1195512039_)))
                               (if (gx#identifier? _hd1195612042_)
                                   (if (gx#stx-eq? '%#ref _hd1195612042_)
                                       (if (gx#stx-pair? _tl1195712044_)
                                           (let ((_e1195812047_
                                                  (gx#stx-e _tl1195712044_)))
                                             (let ((_hd1195912050_
                                                    (##car _e1195812047_))
                                                   (_tl1196012052_
                                                    (##cdr _e1195812047_)))
                                               (if (gx#stx-null?
                                                    _tl1196012052_)
                                                   (if (gx#stx-pair?
                                                        _tl1195412036_)
                                                       (let ((_e1196112055_
                                                              (gx#stx-e
                                                               _tl1195412036_)))
                                                         (let ((_hd1196212058_
                                                                (##car _e1196112055_))
                                                               (_tl1196312060_
                                                                (##cdr _e1196112055_)))
                                                           (if (gx#stx-pair?
                                                                _hd1196212058_)
                                                               (let ((_e1196412063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1196212058_)))
                         (let ((_hd1196512066_ (##car _e1196412063_))
                               (_tl1196612068_ (##cdr _e1196412063_)))
                           (if (gx#identifier? _hd1196512066_)
                               (if (gx#stx-eq? '%#quote _hd1196512066_)
                                   (if (gx#stx-pair? _tl1196612068_)
                                       (let ((_e1196712071_
                                              (gx#stx-e _tl1196612068_)))
                                         (let ((_hd1196812074_
                                                (##car _e1196712071_))
                                               (_tl1196912076_
                                                (##cdr _e1196712071_)))
                                           (if (gx#stx-null? _tl1196912076_)
                                               (if (gx#stx-pair?
                                                    _tl1196312060_)
                                                   (let ((_e1197012079_
                                                          (gx#stx-e
                                                           _tl1196312060_)))
                                                     (let ((_hd1197112082_
                                                            (##car _e1197012079_))
                                                           (_tl1197212084_
                                                            (##cdr _e1197012079_)))
                                                       (if (gx#stx-pair?
                                                            _tl1197212084_)
                                                           (let ((_e1197312087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1197212084_)))
                     (let ((_hd1197412090_ (##car _e1197312087_))
                           (_tl1197512092_ (##cdr _e1197312087_)))
                       (if (gx#stx-pair? _hd1197412090_)
                           (let ((_e1197612095_ (gx#stx-e _hd1197412090_)))
                             (let ((_hd1197712098_ (##car _e1197612095_))
                                   (_tl1197812100_ (##cdr _e1197612095_)))
                               (if (gx#identifier? _hd1197712098_)
                                   (if (gx#stx-eq? '%#quote _hd1197712098_)
                                       (if (gx#stx-pair? _tl1197812100_)
                                           (let ((_e1197912103_
                                                  (gx#stx-e _tl1197812100_)))
                                             (let ((_hd1198012106_
                                                    (##car _e1197912103_))
                                                   (_tl1198112108_
                                                    (##cdr _e1197912103_)))
                                               (if (gx#stx-null?
                                                    _tl1198112108_)
                                                   (if (gx#stx-pair?
                                                        _tl1197512092_)
                                                       (let ((_e1198212111_
                                                              (gx#stx-e
                                                               _tl1197512092_)))
                                                         (let ((_hd1198312114_
                                                                (##car _e1198212111_))
                                                               (_tl1198412116_
                                                                (##cdr _e1198212111_)))
                                                           (if (gx#stx-pair?
                                                                _hd1198312114_)
                                                               (let ((_e1198512119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1198312114_)))
                         (let ((_hd1198612122_ (##car _e1198512119_))
                               (_tl1198712124_ (##cdr _e1198512119_)))
                           (if (gx#identifier? _hd1198612122_)
                               (if (gx#stx-eq? '%#quote _hd1198612122_)
                                   (if (gx#stx-pair? _tl1198712124_)
                                       (let ((_e1198812127_
                                              (gx#stx-e _tl1198712124_)))
                                         (let ((_hd1198912130_
                                                (##car _e1198812127_))
                                               (_tl1199012132_
                                                (##cdr _e1198812127_)))
                                           (if (gx#stx-null? _tl1199012132_)
                                               (if (gx#stx-null?
                                                    _tl1198412116_)
                                                   ((lambda (_L12135_
                                                             _L12136_
                                                             _L12137_
                                                             _L12138_
                                                             _L12139_
                                                             _L12140_)
                                                      (let ((_super-t12186_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12139_)
                         (gxc#identifier-symbol _L12139_)
                         '#f)))
                (let ((_super-type12188_
                       (if _super-t12186_
                           (gxc#optimizer-resolve-type _super-t12186_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12188_
                              (not (##structure-instance-of?
                                    _super-type12188_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx11877_
                           _L12139_)
                          '#!void)
                      (let ((_fields12204_ (gx#stx-e _L12138_))
                            (_xfields12205_
                             (if _super-type12188_
                                 (let ((_super-fields1219012193_
                                        (##structure-ref
                                         _super-type12188_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1219112195_
                                        (##structure-ref
                                         _super-type12188_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1219012193_
                                       (if _super-xfields1219112195_
                                           (let ((_super-fields12198_
                                                  _super-fields1219012193_)
                                                 (_super-xfields12199_
                                                  _super-xfields1219112195_))
                                             (fx+ _super-fields12198_
                                                  _super-xfields12199_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12206_ (gx#stx-e _L12136_))
                            (_ctor12207_
                             (let ((_$e12201_ (gx#stx-e _L12135_)))
                               (if _$e12201_
                                   (values _$e12201_)
                                   (if _super-type12188_
                                       (##structure-ref
                                        _super-type12188_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12186_ '#!void '#f))))))
                        (let ((__obj17118
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17118
                             (gx#stx-e _L12140_)
                             _super-t12186_
                             _fields12204_
                             _xfields12205_
                             _ctor12207_
                             _plist12206_)
                            __obj17118))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1198912130_
                                                    _hd1198012106_
                                                    _hd1197112082_
                                                    _hd1196812074_
                                                    _hd1195912050_
                                                    _hd1195012026_)
                                                   (_g1188112002_
                                                    _g1188312005_))
                                               (_g1188112002_ _g1188312005_))))
                                       (_g1188112002_ _g1188312005_))
                                   (_g1188112002_ _g1188312005_))
                               (_g1188112002_ _g1188312005_))))
                       (_g1188112002_ _g1188312005_))))
               (_g1188112002_ _g1188312005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1188112002_
                                                    _g1188312005_))))
                                           (_g1188112002_ _g1188312005_))
                                       (_g1188112002_ _g1188312005_))
                                   (_g1188112002_ _g1188312005_))))
                           (_g1188112002_ _g1188312005_))))
                   (_g1188112002_ _g1188312005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1188112002_
                                                    _g1188312005_))
                                               (_g1188112002_ _g1188312005_))))
                                       (_g1188112002_ _g1188312005_))
                                   (_g1188112002_ _g1188312005_))
                               (_g1188112002_ _g1188312005_))))
                       (_g1188112002_ _g1188312005_))))
               (_g1188112002_ _g1188312005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1188112002_
                                                    _g1188312005_))))
                                           (_g1188112002_ _g1188312005_))
                                       (_g1188112002_ _g1188312005_))
                                   (_g1188112002_ _g1188312005_))))
                           (_g1188112002_ _g1188312005_))))
                   (_g1188112002_ _g1188312005_))
               (_g1188112002_ _g1188312005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1188112002_ _g1188312005_))
                                           (_g1188112002_ _g1188312005_))
                                       (_g1188112002_ _g1188312005_))))
                               (_g1188112002_ _g1188312005_))))
                       (_g1188112002_ _g1188312005_)))))
            (let ((_g1187912389_
                   (lambda (_g1188312212_)
                     (if (gx#stx-pair? _g1188312212_)
                         (let ((_e1188912214_ (gx#stx-e _g1188312212_)))
                           (let ((_hd1189012217_ (##car _e1188912214_))
                                 (_tl1189112219_ (##cdr _e1188912214_)))
                             (if (gx#stx-pair? _hd1189012217_)
                                 (let ((_e1189212222_
                                        (gx#stx-e _hd1189012217_)))
                                   (let ((_hd1189312225_ (##car _e1189212222_))
                                         (_tl1189412227_
                                          (##cdr _e1189212222_)))
                                     (if (gx#identifier? _hd1189312225_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1189312225_)
                                             (if (gx#stx-pair? _tl1189412227_)
                                                 (let ((_e1189512230_
                                                        (gx#stx-e
                                                         _tl1189412227_)))
                                                   (let ((_hd1189612233_
                                                          (##car _e1189512230_))
                                                         (_tl1189712235_
                                                          (##cdr _e1189512230_)))
                                                     (if (gx#stx-null?
                                                          _tl1189712235_)
                                                         (if (gx#stx-pair?
                                                              _tl1189112219_)
                                                             (let ((_e1189812238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1189112219_)))
                       (let ((_hd1189912241_ (##car _e1189812238_))
                             (_tl1190012243_ (##cdr _e1189812238_)))
                         (if (gx#stx-pair? _hd1189912241_)
                             (let ((_e1190112246_ (gx#stx-e _hd1189912241_)))
                               (let ((_hd1190212249_ (##car _e1190112246_))
                                     (_tl1190312251_ (##cdr _e1190112246_)))
                                 (if (gx#identifier? _hd1190212249_)
                                     (if (gx#stx-eq? '%#quote _hd1190212249_)
                                         (if (gx#stx-pair? _tl1190312251_)
                                             (let ((_e1190412254_
                                                    (gx#stx-e _tl1190312251_)))
                                               (let ((_hd1190512257_
                                                      (##car _e1190412254_))
                                                     (_tl1190612259_
                                                      (##cdr _e1190412254_)))
                                                 (if (gx#stx-datum?
                                                      _hd1190512257_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1190512257_)
                         '#f)
                 (if (gx#stx-null? _tl1190612259_)
                     (if (gx#stx-pair? _tl1190012243_)
                         (let ((_e1190712262_ (gx#stx-e _tl1190012243_)))
                           (let ((_hd1190812265_ (##car _e1190712262_))
                                 (_tl1190912267_ (##cdr _e1190712262_)))
                             (if (gx#stx-pair? _hd1190812265_)
                                 (let ((_e1191012270_
                                        (gx#stx-e _hd1190812265_)))
                                   (let ((_hd1191112273_ (##car _e1191012270_))
                                         (_tl1191212275_
                                          (##cdr _e1191012270_)))
                                     (if (gx#identifier? _hd1191112273_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1191112273_)
                                             (if (gx#stx-pair? _tl1191212275_)
                                                 (let ((_e1191312278_
                                                        (gx#stx-e
                                                         _tl1191212275_)))
                                                   (let ((_hd1191412281_
                                                          (##car _e1191312278_))
                                                         (_tl1191512283_
                                                          (##cdr _e1191312278_)))
                                                     (if (gx#stx-null?
                                                          _tl1191512283_)
                                                         (if (gx#stx-pair?
                                                              _tl1190912267_)
                                                             (let ((_e1191612286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1190912267_)))
                       (let ((_hd1191712289_ (##car _e1191612286_))
                             (_tl1191812291_ (##cdr _e1191612286_)))
                         (if (gx#stx-pair? _tl1191812291_)
                             (let ((_e1191912294_ (gx#stx-e _tl1191812291_)))
                               (let ((_hd1192012297_ (##car _e1191912294_))
                                     (_tl1192112299_ (##cdr _e1191912294_)))
                                 (if (gx#stx-pair? _hd1192012297_)
                                     (let ((_e1192212302_
                                            (gx#stx-e _hd1192012297_)))
                                       (let ((_hd1192312305_
                                              (##car _e1192212302_))
                                             (_tl1192412307_
                                              (##cdr _e1192212302_)))
                                         (if (gx#identifier? _hd1192312305_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1192312305_)
                                                 (if (gx#stx-pair?
                                                      _tl1192412307_)
                                                     (let ((_e1192512310_
                                                            (gx#stx-e
                                                             _tl1192412307_)))
                                                       (let ((_hd1192612313_
                                                              (##car _e1192512310_))
                                                             (_tl1192712315_
                                                              (##cdr _e1192512310_)))
                                                         (if (gx#stx-null?
                                                              _tl1192712315_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1192112299_)
                         (let ((_e1192812318_ (gx#stx-e _tl1192112299_)))
                           (let ((_hd1192912321_ (##car _e1192812318_))
                                 (_tl1193012323_ (##cdr _e1192812318_)))
                             (if (gx#stx-pair? _hd1192912321_)
                                 (let ((_e1193112326_
                                        (gx#stx-e _hd1192912321_)))
                                   (let ((_hd1193212329_ (##car _e1193112326_))
                                         (_tl1193312331_
                                          (##cdr _e1193112326_)))
                                     (if (gx#identifier? _hd1193212329_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1193212329_)
                                             (if (gx#stx-pair? _tl1193312331_)
                                                 (let ((_e1193412334_
                                                        (gx#stx-e
                                                         _tl1193312331_)))
                                                   (let ((_hd1193512337_
                                                          (##car _e1193412334_))
                                                         (_tl1193612339_
                                                          (##cdr _e1193412334_)))
                                                     (if (gx#stx-null?
                                                          _tl1193612339_)
                                                         (if (gx#stx-null?
                                                              _tl1193012323_)
                                                             ((lambda (_L12342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12343_
                               _L12344_
                               _L12345_
                               _L12346_)
                        (let ((__obj17119
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17119
                             (gx#stx-e _L12346_)
                             '#f
                             (gx#stx-e _L12345_)
                             '0
                             (gx#stx-e _L12342_)
                             (gx#stx-e _L12343_))
                            __obj17119)))
                      _hd1193512337_
                      _hd1192612313_
                      _hd1191712289_
                      _hd1191412281_
                      _hd1189612233_)
                     (_g1188012209_ _g1188312212_))
                 (_g1188012209_ _g1188312212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1188012209_ _g1188312212_))
                                             (_g1188012209_ _g1188312212_))
                                         (_g1188012209_ _g1188312212_))))
                                 (_g1188012209_ _g1188312212_))))
                         (_g1188012209_ _g1188312212_))
                     (_g1188012209_ _g1188312212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1188012209_
                                                      _g1188312212_))
                                                 (_g1188012209_ _g1188312212_))
                                             (_g1188012209_ _g1188312212_))))
                                     (_g1188012209_ _g1188312212_))))
                             (_g1188012209_ _g1188312212_))))
                     (_g1188012209_ _g1188312212_))
                 (_g1188012209_ _g1188312212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1188012209_ _g1188312212_))
                                             (_g1188012209_ _g1188312212_))
                                         (_g1188012209_ _g1188312212_))))
                                 (_g1188012209_ _g1188312212_))))
                         (_g1188012209_ _g1188312212_))
                     (_g1188012209_ _g1188312212_))
                 (_g1188012209_ _g1188312212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1188012209_
                                                      _g1188312212_))))
                                             (_g1188012209_ _g1188312212_))
                                         (_g1188012209_ _g1188312212_))
                                     (_g1188012209_ _g1188312212_))))
                             (_g1188012209_ _g1188312212_))))
                     (_g1188012209_ _g1188312212_))
                 (_g1188012209_ _g1188312212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1188012209_ _g1188312212_))
                                             (_g1188012209_ _g1188312212_))
                                         (_g1188012209_ _g1188312212_))))
                                 (_g1188012209_ _g1188312212_))))
                         (_g1188012209_ _g1188312212_)))))
              (_g1187912389_ _args11878_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx11803_ _args11804_)
      (let ((_g1180711823_
             (lambda (_g1180811820_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1180811820_))))
        (let ((_g1180611830_ (lambda (_g1180811826_) ((lambda () '#f)))))
          (let ((_g1180511874_
                 (lambda (_g1180811833_)
                   (if (gx#stx-pair? _g1180811833_)
                       (let ((_e1181011835_ (gx#stx-e _g1180811833_)))
                         (let ((_hd1181111838_ (##car _e1181011835_))
                               (_tl1181211840_ (##cdr _e1181011835_)))
                           (if (gx#stx-pair? _hd1181111838_)
                               (let ((_e1181311843_ (gx#stx-e _hd1181111838_)))
                                 (let ((_hd1181411846_ (##car _e1181311843_))
                                       (_tl1181511848_ (##cdr _e1181311843_)))
                                   (if (gx#identifier? _hd1181411846_)
                                       (if (gx#stx-eq? '%#ref _hd1181411846_)
                                           (if (gx#stx-pair? _tl1181511848_)
                                               (let ((_e1181611851_
                                                      (gx#stx-e
                                                       _tl1181511848_)))
                                                 (let ((_hd1181711854_
                                                        (##car _e1181611851_))
                                                       (_tl1181811856_
                                                        (##cdr _e1181611851_)))
                                                   (if (gx#stx-null?
                                                        _tl1181811856_)
                                                       (if (gx#stx-null?
                                                            _tl1181211840_)
                                                           ((lambda (_L11859_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L11859_)))
                                                            _hd1181711854_)
                                                           (_g1180611830_
                                                            _g1180811833_))
                                                       (_g1180611830_
                                                        _g1180811833_))))
                                               (_g1180611830_ _g1180811833_))
                                           (_g1180611830_ _g1180811833_))
                                       (_g1180611830_ _g1180811833_))))
                               (_g1180611830_ _g1180811833_))))
                       (_g1180611830_ _g1180811833_)))))
            (_g1180511874_ _args11804_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx11687_ _args11688_)
      (let ((_g1169111717_
             (lambda (_g1169211714_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1169211714_))))
        (let ((_g1169011724_ (lambda (_g1169211720_) ((lambda () '#f)))))
          (let ((_g1168911800_
                 (lambda (_g1169211727_)
                   (if (gx#stx-pair? _g1169211727_)
                       (let ((_e1169511729_ (gx#stx-e _g1169211727_)))
                         (let ((_hd1169611732_ (##car _e1169511729_))
                               (_tl1169711734_ (##cdr _e1169511729_)))
                           (if (gx#stx-pair? _hd1169611732_)
                               (let ((_e1169811737_ (gx#stx-e _hd1169611732_)))
                                 (let ((_hd1169911740_ (##car _e1169811737_))
                                       (_tl1170011742_ (##cdr _e1169811737_)))
                                   (if (gx#identifier? _hd1169911740_)
                                       (if (gx#stx-eq? '%#ref _hd1169911740_)
                                           (if (gx#stx-pair? _tl1170011742_)
                                               (let ((_e1170111745_
                                                      (gx#stx-e
                                                       _tl1170011742_)))
                                                 (let ((_hd1170211748_
                                                        (##car _e1170111745_))
                                                       (_tl1170311750_
                                                        (##cdr _e1170111745_)))
                                                   (if (gx#stx-null?
                                                        _tl1170311750_)
                                                       (if (gx#stx-pair?
                                                            _tl1169711734_)
                                                           (let ((_e1170411753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1169711734_)))
                     (let ((_hd1170511756_ (##car _e1170411753_))
                           (_tl1170611758_ (##cdr _e1170411753_)))
                       (if (gx#stx-pair? _hd1170511756_)
                           (let ((_e1170711761_ (gx#stx-e _hd1170511756_)))
                             (let ((_hd1170811764_ (##car _e1170711761_))
                                   (_tl1170911766_ (##cdr _e1170711761_)))
                               (if (gx#identifier? _hd1170811764_)
                                   (if (gx#stx-eq? '%#quote _hd1170811764_)
                                       (if (gx#stx-pair? _tl1170911766_)
                                           (let ((_e1171011769_
                                                  (gx#stx-e _tl1170911766_)))
                                             (let ((_hd1171111772_
                                                    (##car _e1171011769_))
                                                   (_tl1171211774_
                                                    (##cdr _e1171011769_)))
                                               (if (gx#stx-null?
                                                    _tl1171211774_)
                                                   (if (gx#stx-null?
                                                        _tl1170611758_)
                                                       ((lambda (_L11777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11778_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L11778_)
                   (gx#stx-e _L11777_)))
                _hd1171111772_
                _hd1170211748_)
               (_g1169011724_ _g1169211727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1169011724_
                                                    _g1169211727_))))
                                           (_g1169011724_ _g1169211727_))
                                       (_g1169011724_ _g1169211727_))
                                   (_g1169011724_ _g1169211727_))))
                           (_g1169011724_ _g1169211727_))))
                   (_g1169011724_ _g1169211727_))
               (_g1169011724_ _g1169211727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1169011724_ _g1169211727_))
                                           (_g1169011724_ _g1169211727_))
                                       (_g1169011724_ _g1169211727_))))
                               (_g1169011724_ _g1169211727_))))
                       (_g1169011724_ _g1169211727_)))))
            (_g1168911800_ _args11688_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11571_ _args11572_)
      (let ((_g1157511601_
             (lambda (_g1157611598_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1157611598_))))
        (let ((_g1157411608_ (lambda (_g1157611604_) ((lambda () '#f)))))
          (let ((_g1157311684_
                 (lambda (_g1157611611_)
                   (if (gx#stx-pair? _g1157611611_)
                       (let ((_e1157911613_ (gx#stx-e _g1157611611_)))
                         (let ((_hd1158011616_ (##car _e1157911613_))
                               (_tl1158111618_ (##cdr _e1157911613_)))
                           (if (gx#stx-pair? _hd1158011616_)
                               (let ((_e1158211621_ (gx#stx-e _hd1158011616_)))
                                 (let ((_hd1158311624_ (##car _e1158211621_))
                                       (_tl1158411626_ (##cdr _e1158211621_)))
                                   (if (gx#identifier? _hd1158311624_)
                                       (if (gx#stx-eq? '%#ref _hd1158311624_)
                                           (if (gx#stx-pair? _tl1158411626_)
                                               (let ((_e1158511629_
                                                      (gx#stx-e
                                                       _tl1158411626_)))
                                                 (let ((_hd1158611632_
                                                        (##car _e1158511629_))
                                                       (_tl1158711634_
                                                        (##cdr _e1158511629_)))
                                                   (if (gx#stx-null?
                                                        _tl1158711634_)
                                                       (if (gx#stx-pair?
                                                            _tl1158111618_)
                                                           (let ((_e1158811637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1158111618_)))
                     (let ((_hd1158911640_ (##car _e1158811637_))
                           (_tl1159011642_ (##cdr _e1158811637_)))
                       (if (gx#stx-pair? _hd1158911640_)
                           (let ((_e1159111645_ (gx#stx-e _hd1158911640_)))
                             (let ((_hd1159211648_ (##car _e1159111645_))
                                   (_tl1159311650_ (##cdr _e1159111645_)))
                               (if (gx#identifier? _hd1159211648_)
                                   (if (gx#stx-eq? '%#quote _hd1159211648_)
                                       (if (gx#stx-pair? _tl1159311650_)
                                           (let ((_e1159411653_
                                                  (gx#stx-e _tl1159311650_)))
                                             (let ((_hd1159511656_
                                                    (##car _e1159411653_))
                                                   (_tl1159611658_
                                                    (##cdr _e1159411653_)))
                                               (if (gx#stx-null?
                                                    _tl1159611658_)
                                                   (if (gx#stx-null?
                                                        _tl1159011642_)
                                                       ((lambda (_L11661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11662_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L11662_)
                   (gx#stx-e _L11661_)))
                _hd1159511656_
                _hd1158611632_)
               (_g1157411608_ _g1157611611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1157411608_
                                                    _g1157611611_))))
                                           (_g1157411608_ _g1157611611_))
                                       (_g1157411608_ _g1157611611_))
                                   (_g1157411608_ _g1157611611_))))
                           (_g1157411608_ _g1157611611_))))
                   (_g1157411608_ _g1157611611_))
               (_g1157411608_ _g1157611611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1157411608_ _g1157611611_))
                                           (_g1157411608_ _g1157611611_))
                                       (_g1157411608_ _g1157611611_))))
                               (_g1157411608_ _g1157611611_))))
                       (_g1157411608_ _g1157611611_)))))
            (_g1157311684_ _args11572_))))))
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
    (lambda (_stx11520_)
      (let ((_g1152211535_
             (lambda (_g1152311532_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1152311532_))))
        (let ((_g1152111568_
               (lambda (_g1152311538_)
                 (if (gx#stx-pair? _g1152311538_)
                     (let ((_e1152511540_ (gx#stx-e _g1152311538_)))
                       (let ((_hd1152611543_ (##car _e1152511540_))
                             (_tl1152711545_ (##cdr _e1152511540_)))
                         (if (gx#stx-pair? _tl1152711545_)
                             (let ((_e1152811548_ (gx#stx-e _tl1152711545_)))
                               (let ((_hd1152911551_ (##car _e1152811548_))
                                     (_tl1153011553_ (##cdr _e1152811548_)))
                                 (if (gx#stx-null? _tl1153011553_)
                                     ((lambda (_L11556_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L11556_)))
                                      _hd1152911551_)
                                     (_g1152211535_ _g1152311538_))))
                             (_g1152211535_ _g1152311538_))))
                     (_g1152211535_ _g1152311538_)))))
          (_g1152111568_ _stx11520_)))))
  (define gxc#optimize-call%
    (lambda (_stx11426_)
      (let ((_g1142911449_
             (lambda (_g1143011446_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1143011446_))))
        (let ((_g1142811456_
               (lambda (_g1143011452_)
                 ((lambda () (gxc#xform-call% _stx11426_))))))
          (let ((_g1142711517_
                 (lambda (_g1143011459_)
                   (if (gx#stx-pair? _g1143011459_)
                       (let ((_e1143311461_ (gx#stx-e _g1143011459_)))
                         (let ((_hd1143411464_ (##car _e1143311461_))
                               (_tl1143511466_ (##cdr _e1143311461_)))
                           (if (gx#stx-pair? _tl1143511466_)
                               (let ((_e1143611469_ (gx#stx-e _tl1143511466_)))
                                 (let ((_hd1143711472_ (##car _e1143611469_))
                                       (_tl1143811474_ (##cdr _e1143611469_)))
                                   (if (gx#stx-pair? _hd1143711472_)
                                       (let ((_e1143911477_
                                              (gx#stx-e _hd1143711472_)))
                                         (let ((_hd1144011480_
                                                (##car _e1143911477_))
                                               (_tl1144111482_
                                                (##cdr _e1143911477_)))
                                           (if (gx#identifier? _hd1144011480_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1144011480_)
                                                   (if (gx#stx-pair?
                                                        _tl1144111482_)
                                                       (let ((_e1144211485_
                                                              (gx#stx-e
                                                               _tl1144111482_)))
                                                         (let ((_hd1144311488_
                                                                (##car _e1144211485_))
                                                               (_tl1144411490_
                                                                (##cdr _e1144211485_)))
                                                           (if (gx#stx-null?
                                                                _tl1144411490_)
                                                               ((lambda (_L11493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11494_)
                          (let ((_rator-id11512_
                                 (gxc#identifier-symbol _L11494_)))
                            (let ((_rator-type11514_
                                   (gxc#optimizer-lookup-type
                                    _rator-id11512_)))
                              (let ()
                                (if _rator-type11514_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11512_
                                       '" => "
                                       _rator-type11514_
                                       '" "
                                       (##structure-ref
                                        _rator-type11514_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11514_
                                       'optimize-call
                                       _stx11426_
                                       _L11493_))
                                    (gxc#xform-call% _stx11426_))))))
                        _tl1143811474_
                        _hd1144311488_)
                       (_g1142811456_ _g1143011459_))))
               (_g1142811456_ _g1143011459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1142811456_
                                                    _g1143011459_))
                                               (_g1142811456_ _g1143011459_))))
                                       (_g1142811456_ _g1143011459_))))
                               (_g1142811456_ _g1143011459_))))
                       (_g1142811456_ _g1143011459_)))))
            (_g1142711517_ _stx11426_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self11396_ _stx11397_ _args11398_)
      (let ((_self1139911405_ _self11396_))
        (let ((_E1140111409_
               (lambda () (error '"No clause matching" _self1139911405_))))
          (let ((_K1140211418_
                 (lambda (_alias-id11412_)
                   (let ((_alias-type11414_
                          (gxc#optimizer-lookup-type _alias-id11412_)))
                     (if (##structure-instance-of?
                          _alias-type11414_
                          'gxc#!type::t)
                         (call-method
                          _alias-type11414_
                          'optimize-call
                          _stx11397_
                          _args11398_)
                         (let ((_args11416_
                                (gx#stx-map1 gxc#compile-e _args11398_)))
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _alias-id11412_ '()))
                                         _args11416_))
                             _stx11397_))))))))
            (if (struct-instance? gxc#!alias::t _self1139911405_)
                (let ((_e1140311421_ (##vector-ref _self1139911405_ '1)))
                  (let ((_alias-id11424_ _e1140311421_))
                    (_K1140211418_ _alias-id11424_)))
                (_E1140111409_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11251_ _stx11252_ _args11253_)
      (let ((_self1125411260_ _self11251_))
        (let ((_E1125611264_
               (lambda () (error '"No clause matching" _self1125411260_))))
          (let ((_K1125711388_
                 (lambda (_struct-t11267_)
                   (let ((_struct-type11269_
                          (gxc#optimizer-resolve-type _struct-t11267_)))
                     (let ((_struct-type1127011284_ _struct-type11269_))
                       (let ((_E1127411288_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1127011284_))))
                         (let ((_else1127311292_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11252_
                                   _struct-t11267_
                                   _struct-type11269_))))
                           (let ((_try-match1127211300_
                                  (lambda ()
                                    (let ((_K1127511297_
                                           (lambda ()
                                             (gxc#xform-call% _stx11252_))))
                                      (if (##eq? _struct-type1127011284_ '#f)
                                          (_K1127511297_)
                                          (_else1127311292_))))))
                             (let ((_K1127611363_
                                    (lambda (_plist11303_
                                             _struct-type-id11304_)
                                      (let ((_g1130711317_
                                             (lambda (_g1130811314_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1130811314_))))
                                        (let ((_g1130611324_
                                               (lambda (_g1130811320_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11252_))))))
                                          (let ((_g1130511360_
                                                 (lambda (_g1130811327_)
                                                   (if (gx#stx-pair?
                                                        _g1130811327_)
                                                       (let ((_e1131011329_
                                                              (gx#stx-e
                                                               _g1130811327_)))
                                                         (let ((_hd1131111332_
                                                                (##car _e1131011329_))
                                                               (_tl1131211334_
                                                                (##cdr _e1131011329_)))
                                                           (if (gx#stx-null?
                                                                _tl1131211334_)
                                                               ((lambda (_L11337_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11357_ (gxc#compile-e _L11337_))
                                (_op11358_
                                 (if (if _plist11303_
                                         (assgetq 'final: _plist11303_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11358_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11304_
                                                     '()))
                                         (cons _expr11357_ '())))
                             _stx11252_)))
                        _hd1131111332_)
                       (_g1130611324_ _g1130811327_))))
               (_g1130611324_ _g1130811327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1130511360_ _args11253_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1127011284_)
                                   (let ((_e1127711366_
                                          (##vector-ref
                                           _struct-type1127011284_
                                           '1)))
                                     (let ((_struct-type-id11369_
                                            _e1127711366_))
                                       (let ((_e1127811371_
                                              (##vector-ref
                                               _struct-type1127011284_
                                               '2)))
                                         (let ((_e1127911374_
                                                (##vector-ref
                                                 _struct-type1127011284_
                                                 '3)))
                                           (let ((_e1128011377_
                                                  (##vector-ref
                                                   _struct-type1127011284_
                                                   '4)))
                                             (let ((_e1128111380_
                                                    (##vector-ref
                                                     _struct-type1127011284_
                                                     '5)))
                                               (let ((_e1128211383_
                                                      (##vector-ref
                                                       _struct-type1127011284_
                                                       '6)))
                                                 (let ((_plist11386_
                                                        _e1128211383_))
                                                   (_K1127611363_
                                                    _plist11386_
                                                    _struct-type-id11369_)))))))))
                                   (_try-match1127211300_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1125411260_)
                (let ((_e1125811391_ (##vector-ref _self1125411260_ '1)))
                  (let ((_struct-t11394_ _e1125811391_))
                    (_K1125711388_ _struct-t11394_)))
                (_E1125611264_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11147_ _stx11148_ _args11149_)
      (let ((_self1115011156_ _self11147_))
        (let ((_E1115211160_
               (lambda () (error '"No clause matching" _self1115011156_))))
          (let ((_K1115311243_
                 (lambda (_struct-t11163_)
                   (let ((_struct-type11165_
                          (gxc#optimizer-resolve-type _struct-t11163_)))
                     (let ((_struct-type1116611179_ _struct-type11165_))
                       (let ((_E1117011183_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1116611179_))))
                         (let ((_else1116911187_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11148_
                                   _struct-t11163_
                                   _struct-type11165_))))
                           (let ((_try-match1116811195_
                                  (lambda ()
                                    (let ((_K1117111192_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11163_)
                                               (gxc#xform-call% _stx11148_)))))
                                      (if (##eq? _struct-type1116611179_ '#f)
                                          (_K1117111192_)
                                          (_else1116911187_))))))
                             (let ((_K1117211217_
                                    (lambda (_ctor11198_
                                             _xfields11199_
                                             _fields11200_
                                             _type-id11201_)
                                      (let ((_args11203_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args11149_)))
                                        (let ((_$e11205_
                                               (if _ctor11198_
                                                   (if _xfields11199_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11165_
                                                        _ctor11198_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11205_
                                              ((lambda (_kons11208_)
                                                 (let ((_$obj11210_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11163_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11200_ _xfields11199_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11210_ '())) _args11203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11148_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11210_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11148_)))
                                               _$e11205_)
                                              (if (let ((_$e11212_
                                                         _ctor11198_))
                                                    (if _$e11212_
                                                        _$e11212_
                                                        (not _xfields11199_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11163_ '()))
                             _args11203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11148_)
                                                  (let ((_arity11215_
                                                         (fx+ _fields11200_
                                                              _xfields11199_)))
                                                    (if (fx= _arity11215_
                                                             (length _args11203_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11163_ '()))
                                   _args11203_)))
                 _stx11148_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11148_
                 _struct-t11163_
                 _arity11215_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1116611179_)
                                   (let ((_e1117311220_
                                          (##vector-ref
                                           _struct-type1116611179_
                                           '1)))
                                     (let ((_type-id11223_ _e1117311220_))
                                       (let ((_e1117411225_
                                              (##vector-ref
                                               _struct-type1116611179_
                                               '2)))
                                         (let ((_e1117511228_
                                                (##vector-ref
                                                 _struct-type1116611179_
                                                 '3)))
                                           (let ((_fields11231_ _e1117511228_))
                                             (let ((_e1117611233_
                                                    (##vector-ref
                                                     _struct-type1116611179_
                                                     '4)))
                                               (let ((_xfields11236_
                                                      _e1117611233_))
                                                 (let ((_e1117711238_
                                                        (##vector-ref
                                                         _struct-type1116611179_
                                                         '5)))
                                                   (let ((_ctor11241_
                                                          _e1117711238_))
                                                     (_K1117211217_
                                                      _ctor11241_
                                                      _xfields11236_
                                                      _fields11231_
                                                      _type-id11223_))))))))))
                                   (_try-match1116811195_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1115011156_)
                (let ((_e1115411246_ (##vector-ref _self1115011156_ '1)))
                  (let ((_struct-t11249_ _e1115411246_))
                    (_K1115311243_ _struct-t11249_)))
                (_E1115211160_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11000_ _stx11001_ _args11002_)
      (let ((_self1100311010_ _self11000_))
        (let ((_E1100511014_
               (lambda () (error '"No clause matching" _self1100311010_))))
          (let ((_K1100611134_
                 (lambda (_off11017_ _struct-t11018_)
                   (let ((_struct-type11020_
                          (gxc#optimizer-resolve-type _struct-t11018_)))
                     (let ((_struct-type1102111033_ _struct-type11020_))
                       (let ((_E1102511037_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1102111033_))))
                         (let ((_else1102411041_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11001_
                                   _struct-t11018_
                                   _struct-type11020_))))
                           (let ((_try-match1102311049_
                                  (lambda ()
                                    (let ((_K1102611046_
                                           (lambda ()
                                             (gxc#xform-call% _stx11001_))))
                                      (if (##eq? _struct-type1102111033_ '#f)
                                          (_K1102611046_)
                                          (_else1102411041_))))))
                             (let ((_K1102711113_
                                    (lambda (_xfields11052_
                                             _fields11053_
                                             _struct-type-id11054_)
                                      (if _xfields11052_
                                          (let ((_g1105711067_
                                                 (lambda (_g1105811064_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1105811064_))))
                                            (let ((_g1105611074_
                                                   (lambda (_g1105811070_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11001_))))))
                                              (let ((_g1105511110_
                                                     (lambda (_g1105811077_)
                                                       (if (gx#stx-pair?
                                                            _g1105811077_)
                                                           (let ((_e1106011079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1105811077_)))
                     (let ((_hd1106111082_ (##car _e1106011079_))
                           (_tl1106211084_ (##cdr _e1106011079_)))
                       (if (gx#stx-null? _tl1106211084_)
                           ((lambda (_L11087_)
                              (let ((_expr11107_ (gxc#compile-e _L11087_))
                                    (_off11108_
                                     (fx+ _off11017_ _xfields11052_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11018_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11108_ '()))
                                                   (cons _expr11107_ '()))))
                                 _stx11001_)))
                            _hd1106111082_)
                           (_g1105611074_ _g1105811077_))))
                   (_g1105611074_ _g1105811077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1105511110_ _args11002_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11054_)
                                            (gxc#xform-call% _stx11001_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1102111033_)
                                   (let ((_e1102811116_
                                          (##vector-ref
                                           _struct-type1102111033_
                                           '1)))
                                     (let ((_struct-type-id11119_
                                            _e1102811116_))
                                       (let ((_e1102911121_
                                              (##vector-ref
                                               _struct-type1102111033_
                                               '2)))
                                         (let ((_e1103011124_
                                                (##vector-ref
                                                 _struct-type1102111033_
                                                 '3)))
                                           (let ((_fields11127_ _e1103011124_))
                                             (let ((_e1103111129_
                                                    (##vector-ref
                                                     _struct-type1102111033_
                                                     '4)))
                                               (let ((_xfields11132_
                                                      _e1103111129_))
                                                 (_K1102711113_
                                                  _xfields11132_
                                                  _fields11127_
                                                  _struct-type-id11119_))))))))
                                   (_try-match1102311049_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1100311010_)
                (let ((_e1100711137_ (##vector-ref _self1100311010_ '1)))
                  (let ((_struct-t11140_ _e1100711137_))
                    (let ((_e1100811142_ (##vector-ref _self1100311010_ '2)))
                      (let ((_off11145_ _e1100811142_))
                        (_K1100611134_ _off11145_ _struct-t11140_)))))
                (_E1100511014_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self10836_ _stx10837_ _args10838_)
      (let ((_self1083910846_ _self10836_))
        (let ((_E1084110850_
               (lambda () (error '"No clause matching" _self1083910846_))))
          (let ((_K1084210987_
                 (lambda (_off10853_ _struct-t10854_)
                   (let ((_struct-type10856_
                          (gxc#optimizer-resolve-type _struct-t10854_)))
                     (let ((_struct-type1085710869_ _struct-type10856_))
                       (let ((_E1086110873_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1085710869_))))
                         (let ((_else1086010877_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx10837_
                                   _struct-t10854_
                                   _struct-type10856_))))
                           (let ((_try-match1085910885_
                                  (lambda ()
                                    (let ((_K1086210882_
                                           (lambda ()
                                             (gxc#xform-call% _stx10837_))))
                                      (if (##eq? _struct-type1085710869_ '#f)
                                          (_K1086210882_)
                                          (_else1086010877_))))))
                             (let ((_K1086310966_
                                    (lambda (_xfields10888_
                                             _fields10889_
                                             _struct-type-id10890_)
                                      (if _xfields10888_
                                          (let ((_g1089310907_
                                                 (lambda (_g1089410904_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1089410904_))))
                                            (let ((_g1089210914_
                                                   (lambda (_g1089410910_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx10837_))))))
                                              (let ((_g1089110963_
                                                     (lambda (_g1089410917_)
                                                       (if (gx#stx-pair?
                                                            _g1089410917_)
                                                           (let ((_e1089710919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1089410917_)))
                     (let ((_hd1089810922_ (##car _e1089710919_))
                           (_tl1089910924_ (##cdr _e1089710919_)))
                       (if (gx#stx-pair? _tl1089910924_)
                           (let ((_e1090010927_ (gx#stx-e _tl1089910924_)))
                             (let ((_hd1090110930_ (##car _e1090010927_))
                                   (_tl1090210932_ (##cdr _e1090010927_)))
                               (if (gx#stx-null? _tl1090210932_)
                                   ((lambda (_L10935_ _L10936_)
                                      (let ((_expr10959_
                                             (gxc#compile-e _L10936_))
                                            (_val10960_
                                             (gxc#compile-e _L10935_))
                                            (_off10961_
                                             (fx+ _off10853_
                                                  _xfields10888_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t10854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off10961_ '()))
                   (cons _expr10959_ (cons _val10960_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx10837_)))
                                    _hd1090110930_
                                    _hd1089810922_)
                                   (_g1089210914_ _g1089410917_))))
                           (_g1089210914_ _g1089410917_))))
                   (_g1089210914_ _g1089410917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1089110963_ _args10838_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id10890_)
                                            (gxc#xform-call% _stx10837_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1085710869_)
                                   (let ((_e1086410969_
                                          (##vector-ref
                                           _struct-type1085710869_
                                           '1)))
                                     (let ((_struct-type-id10972_
                                            _e1086410969_))
                                       (let ((_e1086510974_
                                              (##vector-ref
                                               _struct-type1085710869_
                                               '2)))
                                         (let ((_e1086610977_
                                                (##vector-ref
                                                 _struct-type1085710869_
                                                 '3)))
                                           (let ((_fields10980_ _e1086610977_))
                                             (let ((_e1086710982_
                                                    (##vector-ref
                                                     _struct-type1085710869_
                                                     '4)))
                                               (let ((_xfields10985_
                                                      _e1086710982_))
                                                 (_K1086310966_
                                                  _xfields10985_
                                                  _fields10980_
                                                  _struct-type-id10972_))))))))
                                   (_try-match1085910885_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1083910846_)
                (let ((_e1084310990_ (##vector-ref _self1083910846_ '1)))
                  (let ((_struct-t10993_ _e1084310990_))
                    (let ((_e1084410995_ (##vector-ref _self1083910846_ '2)))
                      (let ((_off10998_ _e1084410995_))
                        (_K1084210987_ _off10998_ _struct-t10993_)))))
                (_E1084110850_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self10790_ _stx10791_ _args10792_)
      (let ((_self1079310802_ _self10790_))
        (let ((_E1079510806_
               (lambda () (error '"No clause matching" _self1079310802_))))
          (let ((_K1079610815_
                 (lambda (_inline10809_ _dispatch10810_ _arity10811_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self10790_ _args10792_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx10791_
                          _arity10811_))
                     (if _inline10809_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline10809_ _stx10791_)
                             _stx10791_)))
                         (if _dispatch10810_
                             (let ((_args10813_
                                    (gx#stx-map1 gxc#compile-e _args10792_)))
                               (begin
                                 (gxc#verbose
                                  '"dispatch lambda => "
                                  _dispatch10810_)
                                 (gxc#compile-e
                                  (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _dispatch10810_
                                                           '()))
                                               _args10813_))
                                   _stx10791_))))
                             (gxc#xform-call% _stx10791_)))))))
            (if (struct-instance? gxc#!lambda::t _self1079310802_)
                (let ((_e1079710818_ (##vector-ref _self1079310802_ '1)))
                  (let ((_e1079810821_ (##vector-ref _self1079310802_ '2)))
                    (let ((_arity10824_ _e1079810821_))
                      (let ((_e1079910826_ (##vector-ref _self1079310802_ '3)))
                        (let ((_dispatch10829_ _e1079910826_))
                          (let ((_e1080010831_
                                 (##vector-ref _self1079310802_ '4)))
                            (let ((_inline10834_ _e1080010831_))
                              (_K1079610815_
                               _inline10834_
                               _dispatch10829_
                               _arity10824_))))))))
                (_E1079510806_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self10750_ _stx10751_ _args10752_)
      (let ((_self1075310760_ _self10750_))
        (let ((_E1075510764_
               (lambda () (error '"No clause matching" _self1075310760_))))
          (let ((_K1075610779_
                 (lambda (_clauses10767_)
                   (let ((_$e10773_
                          (find (lambda (_g1076810770_)
                                  (gxc#!lambda-arity-match?
                                   _g1076810770_
                                   _args10752_))
                                _clauses10767_)))
                     (if _$e10773_
                         ((lambda (_clause10776_)
                            (call-method
                             _clause10776_
                             'optimize-call
                             _stx10751_
                             _args10752_))
                          _$e10773_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx10751_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses10767_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses10767_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1075310760_)
                (let ((_e1075710782_ (##vector-ref _self1075310760_ '1)))
                  (let ((_e1075810785_ (##vector-ref _self1075310760_ '2)))
                    (let ((_clauses10788_ _e1075810785_))
                      (_K1075610779_ _clauses10788_))))
                (_E1075510764_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self10686_ _args10687_)
      (let ((_self1068810695_ _self10686_))
        (let ((_E1069010699_
               (lambda () (error '"No clause matching" _self1068810695_))))
          (let ((_K1069110739_
                 (lambda (_arity10702_)
                   (let ((_arity1070310712_ _arity10702_))
                     (let ((_E1070610716_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1070310712_))))
                       (let ((_try-match1070510732_
                              (lambda ()
                                (let ((_K1070710722_
                                       (lambda (_arity10720_)
                                         (fx>= (gx#stx-length _args10687_)
                                               _arity10720_))))
                                  (if (##pair? _arity1070310712_)
                                      (let ((_hd1070810725_
                                             (##car _arity1070310712_))
                                            (_tl1070910727_
                                             (##cdr _arity1070310712_)))
                                        (let ((_arity10730_ _hd1070810725_))
                                          (if (##null? _tl1070910727_)
                                              (_K1070710722_ _arity10730_)
                                              (_E1070610716_))))
                                      (_E1070610716_))))))
                         (let ((_K1071010736_
                                (lambda ()
                                  (fx= (gx#stx-length _args10687_)
                                       _arity10702_))))
                           (if (fixnum? _arity1070310712_)
                               (_K1071010736_)
                               (_try-match1070510732_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1068810695_)
                (let ((_e1069210742_ (##vector-ref _self1068810695_ '1)))
                  (let ((_e1069310745_ (##vector-ref _self1068810695_ '2)))
                    (let ((_arity10748_ _e1069310745_))
                      (_K1069110739_ _arity10748_))))
                (_E1069010699_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx10626_)
      (let ((_g1062810642_
             (lambda (_g1062910639_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1062910639_))))
        (let ((_g1062710683_
               (lambda (_g1062910645_)
                 (if (gx#stx-pair? _g1062910645_)
                     (let ((_e1063210647_ (gx#stx-e _g1062910645_)))
                       (let ((_hd1063310650_ (##car _e1063210647_))
                             (_tl1063410652_ (##cdr _e1063210647_)))
                         (if (gx#stx-pair? _tl1063410652_)
                             (let ((_e1063510655_ (gx#stx-e _tl1063410652_)))
                               (let ((_hd1063610658_ (##car _e1063510655_))
                                     (_tl1063710660_ (##cdr _e1063510655_)))
                                 ((lambda (_L10663_ _L10664_)
                                    (let ((_ctx10677_
                                           (gx#syntax-local-e__0 _L10664_)))
                                      (let ((_code10679_
                                             (##structure-ref
                                              _ctx10677_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code10679_))
                                           gx#current-expander-context
                                           _ctx10677_)))))
                                  _tl1063710660_
                                  _hd1063610658_)))
                             (_g1062810642_ _g1062910645_))))
                     (_g1062810642_ _g1062910645_)))))
          (_g1062710683_ _stx10626_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10433_)
      (let ((_generate-e10435_
             (lambda (_id10615_)
               (let ((_sym10617_ (gxc#identifier-symbol _id10615_)))
                 (let ((_$e10619_ (gxc#optimizer-lookup-type _sym10617_)))
                   (if _$e10619_
                       ((lambda (_type10622_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym10617_)
                            (let ((_typedecl10624_
                                   (call-method _type10622_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym10617_
                                          (cons _typedecl10624_ '()))))))
                        _$e10619_)
                       '(begin)))))))
        (let ((_g1043810476_
               (lambda (_g1043910473_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1043910473_))))
          (let ((_g1043710560_
                 (lambda (_g1043910479_)
                   (if (gx#stx-pair? _g1043910479_)
                       (let ((_e1045410481_ (gx#stx-e _g1043910479_)))
                         (let ((_hd1045510484_ (##car _e1045410481_))
                               (_tl1045610486_ (##cdr _e1045410481_)))
                           (if (gx#stx-pair? _tl1045610486_)
                               (let ((_e1045710489_ (gx#stx-e _tl1045610486_)))
                                 (let ((_hd1045810492_ (##car _e1045710489_))
                                       (_tl1045910494_ (##cdr _e1045710489_)))
                                   (if (gx#stx-pair/null? _hd1045810492_)
                                       (if (fx>= (gx#stx-length _hd1045810492_)
                                                 '0)
                                           (let ((_g17156_
                                                  (gx#syntax-split-splice
                                                   _hd1045810492_
                                                   '0)))
                                             (begin
                                               (let ((_g17157_
                                                      (values-count _g17156_)))
                                                 (if (not (fx= _g17157_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17157_)))
                                               (let ((_target1046010497_
                                                      (values-ref _g17156_ 0))
                                                     (_tl1046210499_
                                                      (values-ref _g17156_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1046210499_)
                                                     (letrec ((_loop1046310502_
                                                               (lambda (_hd1046110505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1046710507_)
                         (if (gx#stx-pair? _hd1046110505_)
                             (let ((_e1046410510_ (gx#stx-e _hd1046110505_)))
                               (let ((_lp-hd1046510513_ (##car _e1046410510_))
                                     (_lp-tl1046610515_ (##cdr _e1046410510_)))
                                 (_loop1046310502_
                                  _lp-tl1046610515_
                                  (cons _lp-hd1046510513_ _id1046710507_))))
                             (let ((_id1046810518_ (reverse _id1046710507_)))
                               (if (gx#stx-pair? _tl1045910494_)
                                   (let ((_e1046910521_
                                          (gx#stx-e _tl1045910494_)))
                                     (let ((_hd1047010524_
                                            (##car _e1046910521_))
                                           (_tl1047110526_
                                            (##cdr _e1046910521_)))
                                       (if (gx#stx-null? _tl1047110526_)
                                           ((lambda (_L10529_)
                                              (let ((_ids10555_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1054710550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1054810552_)
                                (cons _g1054710550_ _g1054810552_))
                              '()
                              _L10529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types10557_
                                                       (map _generate-e10435_
                                                            _ids10555_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types10557_)))))
                                            _id1046810518_)
                                           (_g1043810476_ _g1043910479_))))
                                   (_g1043810476_ _g1043910479_)))))))
               (_loop1046310502_ _target1046010497_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1043810476_
                                                      _g1043910479_)))))
                                           (_g1043810476_ _g1043910479_))
                                       (_g1043810476_ _g1043910479_))))
                               (_g1043810476_ _g1043910479_))))
                       (_g1043810476_ _g1043910479_)))))
            (let ((_g1043610612_
                   (lambda (_g1043910563_)
                     (if (gx#stx-pair? _g1043910563_)
                         (let ((_e1044110565_ (gx#stx-e _g1043910563_)))
                           (let ((_hd1044210568_ (##car _e1044110565_))
                                 (_tl1044310570_ (##cdr _e1044110565_)))
                             (if (gx#stx-pair? _tl1044310570_)
                                 (let ((_e1044410573_
                                        (gx#stx-e _tl1044310570_)))
                                   (let ((_hd1044510576_ (##car _e1044410573_))
                                         (_tl1044610578_
                                          (##cdr _e1044410573_)))
                                     (if (gx#stx-pair? _hd1044510576_)
                                         (let ((_e1044710581_
                                                (gx#stx-e _hd1044510576_)))
                                           (let ((_hd1044810584_
                                                  (##car _e1044710581_))
                                                 (_tl1044910586_
                                                  (##cdr _e1044710581_)))
                                             (if (gx#stx-null? _tl1044910586_)
                                                 (if (gx#stx-pair?
                                                      _tl1044610578_)
                                                     (let ((_e1045010589_
                                                            (gx#stx-e
                                                             _tl1044610578_)))
                                                       (let ((_hd1045110592_
                                                              (##car _e1045010589_))
                                                             (_tl1045210594_
                                                              (##cdr _e1045010589_)))
                                                         (if (gx#stx-null?
                                                              _tl1045210594_)
                                                             ((lambda (_L10597_)
                                                                (_generate-e10435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10597_))
                      _hd1044810584_)
                     (_g1043710560_ _g1043910563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1043710560_
                                                      _g1043910563_))
                                                 (_g1043710560_
                                                  _g1043910563_))))
                                         (_g1043710560_ _g1043910563_))))
                                 (_g1043710560_ _g1043910563_))))
                         (_g1043710560_ _g1043910563_)))))
              (_g1043610612_ _stx10433_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx9987_)
      (let ((_g999110093_
             (lambda (_g999210090_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g999210090_))))
        (let ((_g999010100_ (lambda (_g999210096_) ((lambda () '(begin))))))
          (let ((_g998910250_
                 (lambda (_g999210103_)
                   (if (gx#stx-pair? _g999210103_)
                       (let ((_e1005010105_ (gx#stx-e _g999210103_)))
                         (let ((_hd1005110108_ (##car _e1005010105_))
                               (_tl1005210110_ (##cdr _e1005010105_)))
                           (if (gx#stx-pair? _tl1005210110_)
                               (let ((_e1005310113_ (gx#stx-e _tl1005210110_)))
                                 (let ((_hd1005410116_ (##car _e1005310113_))
                                       (_tl1005510118_ (##cdr _e1005310113_)))
                                   (if (gx#stx-pair? _hd1005410116_)
                                       (let ((_e1005610121_
                                              (gx#stx-e _hd1005410116_)))
                                         (let ((_hd1005710124_
                                                (##car _e1005610121_))
                                               (_tl1005810126_
                                                (##cdr _e1005610121_)))
                                           (if (gx#identifier? _hd1005710124_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1005710124_)
                                                   (if (gx#stx-pair?
                                                        _tl1005810126_)
                                                       (let ((_e1005910129_
                                                              (gx#stx-e
                                                               _tl1005810126_)))
                                                         (let ((_hd1006010132_
                                                                (##car _e1005910129_))
                                                               (_tl1006110134_
                                                                (##cdr _e1005910129_)))
                                                           (if (gx#stx-null?
                                                                _tl1006110134_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1005510118_)
                           (let ((_e1006210137_ (gx#stx-e _tl1005510118_)))
                             (let ((_hd1006310140_ (##car _e1006210137_))
                                   (_tl1006410142_ (##cdr _e1006210137_)))
                               (if (gx#stx-pair? _hd1006310140_)
                                   (let ((_e1006510145_
                                          (gx#stx-e _hd1006310140_)))
                                     (let ((_hd1006610148_
                                            (##car _e1006510145_))
                                           (_tl1006710150_
                                            (##cdr _e1006510145_)))
                                       (if (gx#identifier? _hd1006610148_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1006610148_)
                                               (if (gx#stx-pair?
                                                    _tl1006710150_)
                                                   (let ((_e1006810153_
                                                          (gx#stx-e
                                                           _tl1006710150_)))
                                                     (let ((_hd1006910156_
                                                            (##car _e1006810153_))
                                                           (_tl1007010158_
                                                            (##cdr _e1006810153_)))
                                                       (if (gx#stx-null?
                                                            _tl1007010158_)
                                                           (if (gx#stx-pair?
                                                                _tl1006410142_)
                                                               (let ((_e1007110161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1006410142_)))
                         (let ((_hd1007210164_ (##car _e1007110161_))
                               (_tl1007310166_ (##cdr _e1007110161_)))
                           (if (gx#stx-pair? _hd1007210164_)
                               (let ((_e1007410169_ (gx#stx-e _hd1007210164_)))
                                 (let ((_hd1007510172_ (##car _e1007410169_))
                                       (_tl1007610174_ (##cdr _e1007410169_)))
                                   (if (gx#identifier? _hd1007510172_)
                                       (if (gx#stx-eq? '%#quote _hd1007510172_)
                                           (if (gx#stx-pair? _tl1007610174_)
                                               (let ((_e1007710177_
                                                      (gx#stx-e
                                                       _tl1007610174_)))
                                                 (let ((_hd1007810180_
                                                        (##car _e1007710177_))
                                                       (_tl1007910182_
                                                        (##cdr _e1007710177_)))
                                                   (if (gx#stx-null?
                                                        _tl1007910182_)
                                                       (if (gx#stx-pair?
                                                            _tl1007310166_)
                                                           (let ((_e1008010185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1007310166_)))
                     (let ((_hd1008110188_ (##car _e1008010185_))
                           (_tl1008210190_ (##cdr _e1008010185_)))
                       (if (gx#stx-pair? _hd1008110188_)
                           (let ((_e1008310193_ (gx#stx-e _hd1008110188_)))
                             (let ((_hd1008410196_ (##car _e1008310193_))
                                   (_tl1008510198_ (##cdr _e1008310193_)))
                               (if (gx#identifier? _hd1008410196_)
                                   (if (gx#stx-eq? '%#ref _hd1008410196_)
                                       (if (gx#stx-pair? _tl1008510198_)
                                           (let ((_e1008610201_
                                                  (gx#stx-e _tl1008510198_)))
                                             (let ((_hd1008710204_
                                                    (##car _e1008610201_))
                                                   (_tl1008810206_
                                                    (##cdr _e1008610201_)))
                                               (if (gx#stx-null?
                                                    _tl1008810206_)
                                                   (if (gx#stx-null?
                                                        _tl1008210190_)
                                                       ((lambda (_L10209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10210_
                         _L10211_
                         _L10212_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L10211_)
                                  (cons (gx#stx-e _L10210_)
                                        (cons (gxc#identifier-symbol _L10209_)
                                              (cons '#f '())))))
                      (_g999010100_ _g999210103_)))
                _hd1008710204_
                _hd1007810180_
                _hd1006910156_
                _hd1006010132_)
               (_g999010100_ _g999210103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g999010100_
                                                    _g999210103_))))
                                           (_g999010100_ _g999210103_))
                                       (_g999010100_ _g999210103_))
                                   (_g999010100_ _g999210103_))))
                           (_g999010100_ _g999210103_))))
                   (_g999010100_ _g999210103_))
               (_g999010100_ _g999210103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g999010100_ _g999210103_))
                                           (_g999010100_ _g999210103_))
                                       (_g999010100_ _g999210103_))))
                               (_g999010100_ _g999210103_))))
                       (_g999010100_ _g999210103_))
                   (_g999010100_ _g999210103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g999010100_ _g999210103_))
                                               (_g999010100_ _g999210103_))
                                           (_g999010100_ _g999210103_))))
                                   (_g999010100_ _g999210103_))))
                           (_g999010100_ _g999210103_))
                       (_g999010100_ _g999210103_))))
               (_g999010100_ _g999210103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g999010100_ _g999210103_))
                                               (_g999010100_ _g999210103_))))
                                       (_g999010100_ _g999210103_))))
                               (_g999010100_ _g999210103_))))
                       (_g999010100_ _g999210103_)))))
            (let ((_g998810430_
                   (lambda (_g999210253_)
                     (if (gx#stx-pair? _g999210253_)
                         (let ((_e999810255_ (gx#stx-e _g999210253_)))
                           (let ((_hd999910258_ (##car _e999810255_))
                                 (_tl1000010260_ (##cdr _e999810255_)))
                             (if (gx#stx-pair? _tl1000010260_)
                                 (let ((_e1000110263_
                                        (gx#stx-e _tl1000010260_)))
                                   (let ((_hd1000210266_ (##car _e1000110263_))
                                         (_tl1000310268_
                                          (##cdr _e1000110263_)))
                                     (if (gx#stx-pair? _hd1000210266_)
                                         (let ((_e1000410271_
                                                (gx#stx-e _hd1000210266_)))
                                           (let ((_hd1000510274_
                                                  (##car _e1000410271_))
                                                 (_tl1000610276_
                                                  (##cdr _e1000410271_)))
                                             (if (gx#identifier?
                                                  _hd1000510274_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1000510274_)
                                                     (if (gx#stx-pair?
                                                          _tl1000610276_)
                                                         (let ((_e1000710279_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1000610276_)))
                   (let ((_hd1000810282_ (##car _e1000710279_))
                         (_tl1000910284_ (##cdr _e1000710279_)))
                     (if (gx#stx-null? _tl1000910284_)
                         (if (gx#stx-pair? _tl1000310268_)
                             (let ((_e1001010287_ (gx#stx-e _tl1000310268_)))
                               (let ((_hd1001110290_ (##car _e1001010287_))
                                     (_tl1001210292_ (##cdr _e1001010287_)))
                                 (if (gx#stx-pair? _hd1001110290_)
                                     (let ((_e1001310295_
                                            (gx#stx-e _hd1001110290_)))
                                       (let ((_hd1001410298_
                                              (##car _e1001310295_))
                                             (_tl1001510300_
                                              (##cdr _e1001310295_)))
                                         (if (gx#identifier? _hd1001410298_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1001410298_)
                                                 (if (gx#stx-pair?
                                                      _tl1001510300_)
                                                     (let ((_e1001610303_
                                                            (gx#stx-e
                                                             _tl1001510300_)))
                                                       (let ((_hd1001710306_
                                                              (##car _e1001610303_))
                                                             (_tl1001810308_
                                                              (##cdr _e1001610303_)))
                                                         (if (gx#stx-null?
                                                              _tl1001810308_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1001210292_)
                         (let ((_e1001910311_ (gx#stx-e _tl1001210292_)))
                           (let ((_hd1002010314_ (##car _e1001910311_))
                                 (_tl1002110316_ (##cdr _e1001910311_)))
                             (if (gx#stx-pair? _hd1002010314_)
                                 (let ((_e1002210319_
                                        (gx#stx-e _hd1002010314_)))
                                   (let ((_hd1002310322_ (##car _e1002210319_))
                                         (_tl1002410324_
                                          (##cdr _e1002210319_)))
                                     (if (gx#identifier? _hd1002310322_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1002310322_)
                                             (if (gx#stx-pair? _tl1002410324_)
                                                 (let ((_e1002510327_
                                                        (gx#stx-e
                                                         _tl1002410324_)))
                                                   (let ((_hd1002610330_
                                                          (##car _e1002510327_))
                                                         (_tl1002710332_
                                                          (##cdr _e1002510327_)))
                                                     (if (gx#stx-null?
                                                          _tl1002710332_)
                                                         (if (gx#stx-pair?
                                                              _tl1002110316_)
                                                             (let ((_e1002810335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1002110316_)))
                       (let ((_hd1002910338_ (##car _e1002810335_))
                             (_tl1003010340_ (##cdr _e1002810335_)))
                         (if (gx#stx-pair? _hd1002910338_)
                             (let ((_e1003110343_ (gx#stx-e _hd1002910338_)))
                               (let ((_hd1003210346_ (##car _e1003110343_))
                                     (_tl1003310348_ (##cdr _e1003110343_)))
                                 (if (gx#identifier? _hd1003210346_)
                                     (if (gx#stx-eq? '%#ref _hd1003210346_)
                                         (if (gx#stx-pair? _tl1003310348_)
                                             (let ((_e1003410351_
                                                    (gx#stx-e _tl1003310348_)))
                                               (let ((_hd1003510354_
                                                      (##car _e1003410351_))
                                                     (_tl1003610356_
                                                      (##cdr _e1003410351_)))
                                                 (if (gx#stx-null?
                                                      _tl1003610356_)
                                                     (if (gx#stx-pair?
                                                          _tl1003010340_)
                                                         (let ((_e1003710359_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1003010340_)))
                   (let ((_hd1003810362_ (##car _e1003710359_))
                         (_tl1003910364_ (##cdr _e1003710359_)))
                     (if (gx#stx-pair? _hd1003810362_)
                         (let ((_e1004010367_ (gx#stx-e _hd1003810362_)))
                           (let ((_hd1004110370_ (##car _e1004010367_))
                                 (_tl1004210372_ (##cdr _e1004010367_)))
                             (if (gx#identifier? _hd1004110370_)
                                 (if (gx#stx-eq? '%#quote _hd1004110370_)
                                     (if (gx#stx-pair? _tl1004210372_)
                                         (let ((_e1004310375_
                                                (gx#stx-e _tl1004210372_)))
                                           (let ((_hd1004410378_
                                                  (##car _e1004310375_))
                                                 (_tl1004510380_
                                                  (##cdr _e1004310375_)))
                                             (if (gx#stx-null? _tl1004510380_)
                                                 (if (gx#stx-null?
                                                      _tl1003910364_)
                                                     ((lambda (_L10383_
                                                               _L10384_
                                                               _L10385_
                                                               _L10386_
                                                               _L10387_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10387_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L10386_)
                                (cons (gx#stx-e _L10385_)
                                      (cons (gxc#identifier-symbol _L10384_)
                                            (cons (gx#stx-e _L10383_) '())))))
                    (_g998910250_ _g999210253_)))
              _hd1004410378_
              _hd1003510354_
              _hd1002610330_
              _hd1001710306_
              _hd1000810282_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g998910250_
                                                      _g999210253_))
                                                 (_g998910250_ _g999210253_))))
                                         (_g998910250_ _g999210253_))
                                     (_g998910250_ _g999210253_))
                                 (_g998910250_ _g999210253_))))
                         (_g998910250_ _g999210253_))))
                 (_g998910250_ _g999210253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g998910250_
                                                      _g999210253_))))
                                             (_g998910250_ _g999210253_))
                                         (_g998910250_ _g999210253_))
                                     (_g998910250_ _g999210253_))))
                             (_g998910250_ _g999210253_))))
                     (_g998910250_ _g999210253_))
                 (_g998910250_ _g999210253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g998910250_ _g999210253_))
                                             (_g998910250_ _g999210253_))
                                         (_g998910250_ _g999210253_))))
                                 (_g998910250_ _g999210253_))))
                         (_g998910250_ _g999210253_))
                     (_g998910250_ _g999210253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g998910250_
                                                      _g999210253_))
                                                 (_g998910250_ _g999210253_))
                                             (_g998910250_ _g999210253_))))
                                     (_g998910250_ _g999210253_))))
                             (_g998910250_ _g999210253_))
                         (_g998910250_ _g999210253_))))
                 (_g998910250_ _g999210253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g998910250_
                                                      _g999210253_))
                                                 (_g998910250_ _g999210253_))))
                                         (_g998910250_ _g999210253_))))
                                 (_g998910250_ _g999210253_))))
                         (_g998910250_ _g999210253_)))))
              (_g998810430_ _stx9987_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self9963_)
      (let ((_self99649970_ _self9963_))
        (let ((_E99669974_
               (lambda () (error '"No clause matching" _self99649970_))))
          (let ((_K99679979_
                 (lambda (_alias-id9977_)
                   (cons '@alias (cons _alias-id9977_ '())))))
            (if (struct-instance? gxc#!alias::t _self99649970_)
                (let ((_e99689982_ (##vector-ref _self99649970_ '1)))
                  (let ((_alias-id9985_ _e99689982_))
                    (_K99679979_ _alias-id9985_)))
                (_E99669974_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self9907_)
      (let ((_self99089919_ _self9907_))
        (let ((_E99109923_
               (lambda () (error '"No clause matching" _self99089919_))))
          (let ((_K99119932_
                 (lambda (_plist9926_
                          _ctor9927_
                          _fields9928_
                          _super9929_
                          _type-id9930_)
                   (cons '@struct-type
                         (cons _type-id9930_
                               (cons _super9929_
                                     (cons _fields9928_
                                           (cons _ctor9927_
                                                 (cons _plist9926_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self99089919_)
                (let ((_e99129935_ (##vector-ref _self99089919_ '1)))
                  (let ((_type-id9938_ _e99129935_))
                    (let ((_e99139940_ (##vector-ref _self99089919_ '2)))
                      (let ((_super9943_ _e99139940_))
                        (let ((_e99149945_ (##vector-ref _self99089919_ '3)))
                          (let ((_fields9948_ _e99149945_))
                            (let ((_e99159950_
                                   (##vector-ref _self99089919_ '4)))
                              (let ((_e99169953_
                                     (##vector-ref _self99089919_ '5)))
                                (let ((_ctor9956_ _e99169953_))
                                  (let ((_e99179958_
                                         (##vector-ref _self99089919_ '6)))
                                    (let ((_plist9961_ _e99179958_))
                                      (_K99119932_
                                       _plist9961_
                                       _ctor9956_
                                       _fields9948_
                                       _super9943_
                                       _type-id9938_))))))))))))
                (_E99109923_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self9883_)
      (let ((_self98849890_ _self9883_))
        (let ((_E98869894_
               (lambda () (error '"No clause matching" _self98849890_))))
          (let ((_K98879899_
                 (lambda (_struct-t9897_)
                   (cons '@struct-pred (cons _struct-t9897_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self98849890_)
                (let ((_e98889902_ (##vector-ref _self98849890_ '1)))
                  (let ((_struct-t9905_ _e98889902_))
                    (_K98879899_ _struct-t9905_)))
                (_E98869894_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self9859_)
      (let ((_self98609866_ _self9859_))
        (let ((_E98629870_
               (lambda () (error '"No clause matching" _self98609866_))))
          (let ((_K98639875_
                 (lambda (_struct-t9873_)
                   (cons '@struct-cons (cons _struct-t9873_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self98609866_)
                (let ((_e98649878_ (##vector-ref _self98609866_ '1)))
                  (let ((_struct-t9881_ _e98649878_))
                    (_K98639875_ _struct-t9881_)))
                (_E98629870_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self9828_)
      (let ((_self98299836_ _self9828_))
        (let ((_E98319840_
               (lambda () (error '"No clause matching" _self98299836_))))
          (let ((_K98329846_
                 (lambda (_off9843_ _struct-t9844_)
                   (cons '@struct-getf
                         (cons _struct-t9844_ (cons _off9843_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self98299836_)
                (let ((_e98339849_ (##vector-ref _self98299836_ '1)))
                  (let ((_struct-t9852_ _e98339849_))
                    (let ((_e98349854_ (##vector-ref _self98299836_ '2)))
                      (let ((_off9857_ _e98349854_))
                        (_K98329846_ _off9857_ _struct-t9852_)))))
                (_E98319840_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self9797_)
      (let ((_self97989805_ _self9797_))
        (let ((_E98009809_
               (lambda () (error '"No clause matching" _self97989805_))))
          (let ((_K98019815_
                 (lambda (_off9812_ _struct-t9813_)
                   (cons '@struct-setf
                         (cons _struct-t9813_ (cons _off9812_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self97989805_)
                (let ((_e98029818_ (##vector-ref _self97989805_ '1)))
                  (let ((_struct-t9821_ _e98029818_))
                    (let ((_e98039823_ (##vector-ref _self97989805_ '2)))
                      (let ((_off9826_ _e98039823_))
                        (_K98019815_ _off9826_ _struct-t9821_)))))
                (_E98009809_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self9745_)
      (let ((_self97469756_ _self9745_))
        (let ((_E97489760_
               (lambda () (error '"No clause matching" _self97469756_))))
          (let ((_K97499771_
                 (lambda (_typedecl9763_
                          _inline9764_
                          _dispatch9765_
                          _arity9766_)
                   (if _inline9764_
                       (let ((_$e9768_ _typedecl9763_))
                         (if _$e9768_
                             _$e9768_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity9766_ (cons _dispatch9765_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self97469756_)
                (let ((_e97509774_ (##vector-ref _self97469756_ '1)))
                  (let ((_e97519777_ (##vector-ref _self97469756_ '2)))
                    (let ((_arity9780_ _e97519777_))
                      (let ((_e97529782_ (##vector-ref _self97469756_ '3)))
                        (let ((_dispatch9785_ _e97529782_))
                          (let ((_e97539787_ (##vector-ref _self97469756_ '4)))
                            (let ((_inline9790_ _e97539787_))
                              (let ((_e97549792_
                                     (##vector-ref _self97469756_ '5)))
                                (let ((_typedecl9795_ _e97549792_))
                                  (_K97499771_
                                   _typedecl9795_
                                   _inline9790_
                                   _dispatch9785_
                                   _arity9780_))))))))))
                (_E97489760_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self9678_)
      (let ((_clause-e9680_
             (lambda (_clause9710_)
               (let ((_clause97119719_ _clause9710_))
                 (let ((_E97139723_
                        (lambda ()
                          (error '"No clause matching" _clause97119719_))))
                   (let ((_K97149729_
                          (lambda (_dispatch9726_ _arity9727_)
                            (cons _arity9727_ (cons _dispatch9726_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause97119719_)
                         (let ((_e97159732_
                                (##vector-ref _clause97119719_ '1)))
                           (let ((_e97169735_
                                  (##vector-ref _clause97119719_ '2)))
                             (let ((_arity9738_ _e97169735_))
                               (let ((_e97179740_
                                      (##vector-ref _clause97119719_ '3)))
                                 (let ((_dispatch9743_ _e97179740_))
                                   (_K97149729_
                                    _dispatch9743_
                                    _arity9738_))))))
                         (_E97139723_))))))))
        (let ((_self96819688_ _self9678_))
          (let ((_E96839692_
                 (lambda () (error '"No clause matching" _self96819688_))))
            (let ((_K96849699_
                   (lambda (_clauses9695_)
                     (let ((_clauses9697_ (map _clause-e9680_ _clauses9695_)))
                       (cons '@case-lambda _clauses9697_)))))
              (if (struct-instance? gxc#!case-lambda::t _self96819688_)
                  (let ((_e96859702_ (##vector-ref _self96819688_ '1)))
                    (let ((_e96869705_ (##vector-ref _self96819688_ '2)))
                      (let ((_clauses9708_ _e96869705_))
                        (_K96849699_ _clauses9708_))))
                  (_E96839692_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx9673_)
      (let ((_$e9675_ (gx#resolve-identifier__0 _stx9673_)))
        (if _$e9675_
            (##structure-ref _$e9675_ '1 gx#binding::t '#f)
            (gx#stx-e _stx9673_))))))
