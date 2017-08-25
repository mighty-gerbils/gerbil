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
    (lambda _$args19951_
      (apply make-struct-instance gxc#optimizer-info::t _$args19951_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19949_)
      (struct-instance-init!
       _self19949_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19963 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19963) __obj19963))))))
  (define gxc#optimize!
    (lambda (_ctx19943_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19943_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19943_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19946_
                  (gxc#optimize-source
                   (##structure-ref _ctx19943_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19943_
              _code19946_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19888_)
      (let ((_deps19890_
             (let ((_imports19934_
                    (##structure-ref _ctx19888_ '8 gx#module-context::t '#f)))
               (let ((_$e19936_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19888_)))
                 (if _$e19936_
                     ((lambda (_g1993819940_)
                        (cons _g1993819940_ _imports19934_))
                      _$e19936_)
                     _imports19934_)))))
        ((letrec ((_lp19892_
                   (lambda (_rest19894_)
                     (let ((_rest1989519903_ _rest19894_))
                       (let ((_E1989819907_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1989519903_))))
                         (let ((_else1989719911_ (lambda () '#!void)))
                           (let ((_K1989919922_
                                  (lambda (_rest19914_ _hd19915_)
                                    (if (##structure-instance-of?
                                         _hd19915_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19915_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19917_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19915_)))
                                                  (if _$e19917_
                                                      ((lambda (_pre19920_)
                                                         (_lp19892_
                                                          (cons _pre19920_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19915_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19917_)
              (_lp19892_
               (##structure-ref _hd19915_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19915_)))
                                          (_lp19892_ _rest19914_))
                                        (if (##structure-instance-of?
                                             _hd19915_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19915_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19892_
                                                     (##structure-ref
                                                      _hd19915_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19915_)))
                                              (_lp19892_ _rest19914_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19915_
                                                 'gx#module-import::t)
                                                (_lp19892_
                                                 (cons (##direct-structure-ref
                                                        _hd19915_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19914_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19915_
                                                     'gx#module-export::t)
                                                    (_lp19892_
                                                     (cons (##direct-structure-ref
                                                            _hd19915_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19914_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19915_
                                                         'gx#import-set::t)
                                                        (_lp19892_
                                                         (cons (##direct-structure-ref
                                                                _hd19915_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19914_))
                                                        (error '"Unexpected module import"
                                                               _hd19915_)))))))))
                             (if (##pair? _rest1989519903_)
                                 (let ((_hd1990019925_
                                        (##car _rest1989519903_))
                                       (_tl1990119927_
                                        (##cdr _rest1989519903_)))
                                   (let ((_hd19930_ _hd1990019925_))
                                     (let ((_rest19932_ _tl1990119927_))
                                       (_K1989919922_ _rest19932_ _hd19930_))))
                                 (_else1989719911_)))))))))
           _lp19892_)
         _deps19890_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19868_)
      (if (if (##structure-instance-of? _ctx19868_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19868_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19870_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19872_
                   (##structure-ref _ctx19868_ '1 gx#expander-context::t '#f)))
              (let ((_mod19874_ (table-ref _ht19870_ _id19872_ '#f)))
                (let ()
                  (let ((_$e19877_ _mod19874_))
                    (if _$e19877_
                        _$e19877_
                        (let ((_mod19880_
                               (gxc#optimizer-import-ssxi _ctx19868_)))
                          (let ((_val19885_
                                 (let ((_$e19882_ _mod19880_))
                                   (if _$e19882_ _$e19882_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19870_ _id19872_ _val19885_)
                                _val19885_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19845_)
      (let ((_catch-e19847_
             (lambda (_exn19866_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19845_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19866_))
                     '#!void)
                 '#f))))
        (let ((_import-e19848_
               (lambda ()
                 (let ((_str-id19851_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19845_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19859_
                          (let ((_odir1985219854_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1985219854_
                                (let ((_odir19857_ _odir1985219854_))
                                  (path-expand
                                   (string-append _str-id19851_ '".ss")
                                   _odir19857_))
                                '#f))))
                     (let ((_library-path19861_
                            (string->symbol
                             (string-append '":" _str-id19851_ '".ss"))))
                       (let ((_ssxi-path19863_
                              (if (if _artefact-path19859_
                                      (file-exists? _artefact-path19859_)
                                      '#f)
                                  _artefact-path19859_
                                  _library-path19861_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19863_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19863_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19845_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19847_ _import-e19848_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19842_
      (apply make-struct-instance gxc#!type::t _$args19842_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19839_
      (apply make-struct-instance gxc#!alias::t _$args19839_)))
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
    (lambda _$args19836_
      (apply make-struct-instance gxc#!struct-type::t _$args19836_)))
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
    (lambda _$args19833_
      (apply make-struct-instance gxc#!procedure::t _$args19833_)))
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
    (lambda _$args19830_
      (apply make-struct-instance gxc#!struct-pred::t _$args19830_)))
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
    (lambda _$args19827_
      (apply make-struct-instance gxc#!struct-cons::t _$args19827_)))
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
    (lambda _$args19824_
      (apply make-struct-instance gxc#!struct-getf::t _$args19824_)))
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
    (lambda _$args19821_
      (apply make-struct-instance gxc#!struct-setf::t _$args19821_)))
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
    (lambda _$args19818_
      (apply make-struct-instance gxc#!lambda::t _$args19818_)))
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
    (lambda _$args19815_
      (apply make-struct-instance gxc#!case-lambda::t _$args19815_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19807_
             _id19808_
             _super19809_
             _fields19810_
             _xfields19811_
             _ctor19812_
             _plist19813_)
      (struct-instance-init!
       _self19807_
       _id19808_
       _super19809_
       _fields19810_
       _xfields19811_
       _ctor19812_
       _plist19813_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19771
      (lambda (_self19773_
               _id19774_
               _arity19775_
               _dispatch19776_
               _inline19777_
               _typedecl19778_)
        (struct-instance-init!
         _self19773_
         _id19774_
         _arity19775_
         _dispatch19776_
         _inline19777_
         _typedecl19778_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19783_ _id19784_ _arity19785_ _dispatch19786_)
          (let ((_inline19788_ '#f))
            (let ((_typedecl19790_ '#f))
              (struct-instance-init!
               _self19783_
               _id19784_
               _arity19785_
               _dispatch19786_
               _inline19788_
               _typedecl19790_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19792_
                 _id19793_
                 _arity19794_
                 _dispatch19795_
                 _inline19796_)
          (let ((_typedecl19798_ '#f))
            (struct-instance-init!
             _self19792_
             _id19793_
             _arity19794_
             _dispatch19795_
             _inline19796_
             _typedecl19798_))))
      (define gxc#!lambda:::init!
        (lambda _g19971_
          (let ((_g19970_ (length _g19971_)))
            (cond ((fx= _g19970_ 4) (apply gxc#!lambda:::init!__0 _g19971_))
                  ((fx= _g19970_ 5) (apply gxc#!lambda:::init!__1 _g19971_))
                  ((fx= _g19970_ 6) (apply struct-instance-init! _g19971_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g19971_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19765_)
      (let ((_$e19767_
             (##structure-ref _type19765_ '7 gxc#!struct-type::t '#f)))
        (if _$e19767_
            (values _$e19767_)
            (let ((_vtab19770_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19765_
                 _vtab19770_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19770_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19756_ _method19757_)
      (let ((_vtab1975819760_
             (##structure-ref _type19756_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1975819760_
            (let ((_vtab19763_ _vtab1975819760_))
              (table-ref _vtab19763_ _method19757_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19738
      (lambda (_sym19740_ _type19741_ _local?19742_)
        (begin
          (if (##structure-instance-of? _type19741_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19740_
                     _type19741_))
          (gxc#verbose
           '"declare-type "
           _sym19740_
           '" "
           (struct->list _type19741_))
          (table-set!
           (if _local?19742_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19740_
           _type19741_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19747_ _type19748_)
          (let ((_local?19750_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19738
             _sym19747_
             _type19748_
             _local?19750_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19973_
          (let ((_g19972_ (length _g19973_)))
            (cond ((fx= _g19972_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19973_))
                  ((fx= _g19972_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19738
                          _g19973_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g19973_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19714
      (lambda (_type-t19716_ _method19717_ _sym19718_ _rebind?19719_)
        (let ((_type19721_ (gxc#optimizer-resolve-type _type-t19716_)))
          (if (##structure-instance-of? _type19721_ 'gxc#!struct-type::t)
              (let ((_vtab19723_ (gxc#!struct-type-vtab _type19721_)))
                (if _rebind?19719_
                    (if (hash-key? _vtab19723_ _method19717_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19716_
                         '" "
                         _method19717_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19716_
                         '" "
                         _method19717_))
                    (if (hash-key? _vtab19723_ _method19717_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19716_
                           '" "
                           _method19717_
                           '" => "
                           _sym19718_)
                          (table-set! _vtab19723_ _method19717_ _sym19718_)))))
              (if (not _type19721_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19716_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19716_
                         _type19721_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19728_ _method19729_ _sym19730_)
          (let ((_rebind?19732_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19714
             _type-t19728_
             _method19729_
             _sym19730_
             _rebind?19732_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19975_
          (let ((_g19974_ (length _g19975_)))
            (cond ((fx= _g19974_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19975_))
                  ((fx= _g19974_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19714
                          _g19975_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g19975_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19704_)
      (let ((_$e19712_
             (let ((_ht1970519707_ (gxc#current-compile-local-type)))
               (if _ht1970519707_
                   (let ((_ht19710_ _ht1970519707_))
                     (table-ref _ht19710_ _sym19704_ '#f))
                   '#f))))
        (if _$e19712_
            _$e19712_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19704_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19696_)
      (let ((_type1969719699_ (gxc#optimizer-lookup-type _sym19696_)))
        (if _type1969719699_
            (let ((_type19702_ _type1969719699_))
              (if (##structure-instance-of? _type19702_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19702_ '1 gxc#!type::t '#f))
                  _type19702_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19691_ _method19692_)
      (let ((_type19694_ (gxc#optimizer-resolve-type _type-t19691_)))
        (if (##structure-instance-of? _type19694_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19694_ _method19692_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19687_)
      (begin
        (gxc#apply-collect-mutators _stx19687_)
        (let ((_stx19689_ (gxc#apply-lift-top-lambdas _stx19687_)))
          (begin
            (gxc#apply-collect-type-info _stx19689_)
            (gxc#apply-optimize-call _stx19689_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19684_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19684_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19684_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19684_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19684_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19684_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19684_ '%#quote gxc#xform-identity)
           (table-set! _tbl19684_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19684_ '%#call gxc#xform-identity)
           (table-set! _tbl19684_ '%#if gxc#xform-identity)
           (table-set! _tbl19684_ '%#ref gxc#xform-identity)
           (table-set! _tbl19684_ '%#set! gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19684_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl19684_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl19684_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19680_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19680_ '%#begin gxc#xform-identity)
           (table-set! _tbl19680_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19680_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19680_ '%#module gxc#xform-identity)
           (table-set! _tbl19680_ '%#import gxc#xform-identity)
           (table-set! _tbl19680_ '%#export gxc#xform-identity)
           (table-set! _tbl19680_ '%#provide gxc#xform-identity)
           (table-set! _tbl19680_ '%#extern gxc#xform-identity)
           (table-set! _tbl19680_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19680_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19680_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19680_ '%#declare gxc#xform-identity)
           _tbl19680_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19676_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19676_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19676_ (force gxc#&identity-expression))
           _tbl19676_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19672_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19672_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19672_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19672_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19672_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19672_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19672_ '%#quote gxc#xform-identity)
           (table-set! _tbl19672_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19672_ '%#call gxc#xform-operands)
           (table-set! _tbl19672_ '%#if gxc#xform-operands)
           (table-set! _tbl19672_ '%#ref gxc#xform-identity)
           (table-set! _tbl19672_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19672_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19672_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19672_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19672_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl19672_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl19672_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl19672_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl19672_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl19672_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19668_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19668_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19668_ (force gxc#&identity))
           (table-set! _tbl19668_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19668_ '%#module gxc#xform-module%)
           (table-set! _tbl19668_ '%#define-values gxc#xform-define-values%)
           _tbl19668_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19664_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19664_ (force gxc#&void))
           (table-set! _tbl19664_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19664_ '%#module gxc#collect-module%)
           (table-set! _tbl19664_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19664_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19664_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19664_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19664_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19664_ '%#call gxc#collect-operands)
           (table-set! _tbl19664_ '%#if gxc#collect-operands)
           (table-set! _tbl19664_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19664_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19664_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19664_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19664_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl19664_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl19664_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl19664_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl19664_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl19664_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19657_ . _args19659_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19657_ _args19659_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19654_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19654_ (force gxc#&basic-xform))
           (table-set!
            _tbl19654_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19654_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19654_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19654_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19654_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19647_ . _args19649_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19647_ _args19649_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19644_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19644_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19644_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19644_ '%#ref gxc#expression-subst-ref%)
           _tbl19644_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19637_ . _args19639_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19637_ _args19639_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19634_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19634_ (force gxc#&void))
           (table-set! _tbl19634_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19634_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19634_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19634_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19634_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19634_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19634_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19634_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19634_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19634_ '%#if gxc#collect-operands)
           (table-set! _tbl19634_ '%#set! gxc#collect-body-setq%)
           _tbl19634_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19627_ . _args19629_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19627_ _args19629_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19624_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19624_ (force gxc#&false))
           (table-set! _tbl19624_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19624_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19624_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19624_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19624_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19624_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19617_ . _args19619_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19617_ _args19619_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19614_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19614_ (force gxc#&basic-xform))
           (table-set! _tbl19614_ '%#call gxc#optimize-call%)
           _tbl19614_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19607_ . _args19609_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19607_ _args19609_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19604_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19604_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19604_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19604_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19604_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19604_ '%#call gxc#generate-ssxi-call%)
           _tbl19604_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19597_ . _args19599_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19597_ _args19599_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19594_ . _args19595_) _stx19594_))
  (define gxc#xform-wrap-source
    (lambda (_stx19591_ _src-stx19592_)
      (gx#stx-wrap-source _stx19591_ (gx#stx-source _src-stx19592_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19585_)
      (lambda (_g1958619588_)
        (apply gxc#compile-e _g1958619588_ _args19585_))))
  (define gxc#xform-begin%
    (lambda (_stx19544_ . _args19545_)
      (let ((_g1954719557_
             (lambda (_g1954819554_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1954819554_))))
        (let ((_g1954619582_
               (lambda (_g1954819560_)
                 (if (gx#stx-pair? _g1954819560_)
                     (let ((_e1955019562_ (gx#stx-e _g1954819560_)))
                       (let ((_hd1955119565_ (##car _e1955019562_))
                             (_tl1955219567_ (##cdr _e1955019562_)))
                         ((lambda (_L19570_)
                            (let ((_forms19580_
                                   (map (gxc#xform-apply-compile-e _args19545_)
                                        _L19570_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms19580_)
                               _stx19544_)))
                          _tl1955219567_)))
                     (_g1954719557_ _g1954819560_)))))
          (_g1954619582_ _stx19544_)))))
  (define gxc#xform-module%
    (lambda (_stx19481_ . _args19482_)
      (let ((_g1948419498_
             (lambda (_g1948519495_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1948519495_))))
        (let ((_g1948319541_
               (lambda (_g1948519501_)
                 (if (gx#stx-pair? _g1948519501_)
                     (let ((_e1948819503_ (gx#stx-e _g1948519501_)))
                       (let ((_hd1948919506_ (##car _e1948819503_))
                             (_tl1949019508_ (##cdr _e1948819503_)))
                         (if (gx#stx-pair? _tl1949019508_)
                             (let ((_e1949119511_ (gx#stx-e _tl1949019508_)))
                               (let ((_hd1949219514_ (##car _e1949119511_))
                                     (_tl1949319516_ (##cdr _e1949119511_)))
                                 ((lambda (_L19519_ _L19520_)
                                    (let ((_ctx19533_
                                           (gx#syntax-local-e__0 _L19520_)))
                                      (let ((_code19535_
                                             (##structure-ref
                                              _ctx19533_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code19538_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code19535_
                                                         _args19482_))
                                                gx#current-expander-context
                                                _ctx19533_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx19533_
                                               _code19538_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L19520_
                                                           (cons _code19538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19481_)))))))
                                  _tl1949319516_
                                  _hd1949219514_)))
                             (_g1948419498_ _g1948519501_))))
                     (_g1948419498_ _g1948519501_)))))
          (_g1948319541_ _stx19481_)))))
  (define gxc#xform-define-values%
    (lambda (_stx19411_ . _args19412_)
      (let ((_g1941419431_
             (lambda (_g1941519428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1941519428_))))
        (let ((_g1941319478_
               (lambda (_g1941519434_)
                 (if (gx#stx-pair? _g1941519434_)
                     (let ((_e1941819436_ (gx#stx-e _g1941519434_)))
                       (let ((_hd1941919439_ (##car _e1941819436_))
                             (_tl1942019441_ (##cdr _e1941819436_)))
                         (if (gx#stx-pair? _tl1942019441_)
                             (let ((_e1942119444_ (gx#stx-e _tl1942019441_)))
                               (let ((_hd1942219447_ (##car _e1942119444_))
                                     (_tl1942319449_ (##cdr _e1942119444_)))
                                 (if (gx#stx-pair? _tl1942319449_)
                                     (let ((_e1942419452_
                                            (gx#stx-e _tl1942319449_)))
                                       (let ((_hd1942519455_
                                              (##car _e1942419452_))
                                             (_tl1942619457_
                                              (##cdr _e1942419452_)))
                                         (if (gx#stx-null? _tl1942619457_)
                                             ((lambda (_L19460_ _L19461_)
                                                (let ((_expr19476_
                                                       (apply gxc#compile-e
                                                              _L19460_
                                                              _args19412_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L19461_
                                                               (cons _expr19476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx19411_)))
                                              _hd1942519455_
                                              _hd1942219447_)
                                             (_g1941419431_ _g1941519434_))))
                                     (_g1941419431_ _g1941519434_))))
                             (_g1941419431_ _g1941519434_))))
                     (_g1941419431_ _g1941519434_)))))
          (_g1941319478_ _stx19411_)))))
  (define gxc#xform-lambda%
    (lambda (_stx19354_ . _args19355_)
      (let ((_g1935719371_
             (lambda (_g1935819368_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1935819368_))))
        (let ((_g1935619408_
               (lambda (_g1935819374_)
                 (if (gx#stx-pair? _g1935819374_)
                     (let ((_e1936119376_ (gx#stx-e _g1935819374_)))
                       (let ((_hd1936219379_ (##car _e1936119376_))
                             (_tl1936319381_ (##cdr _e1936119376_)))
                         (if (gx#stx-pair? _tl1936319381_)
                             (let ((_e1936419384_ (gx#stx-e _tl1936319381_)))
                               (let ((_hd1936519387_ (##car _e1936419384_))
                                     (_tl1936619389_ (##cdr _e1936419384_)))
                                 ((lambda (_L19392_ _L19393_)
                                    (let ((_body19406_
                                           (map (gxc#xform-apply-compile-e
                                                 _args19355_)
                                                _L19392_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L19393_ _body19406_))
                                       _stx19354_)))
                                  _tl1936619389_
                                  _hd1936519387_)))
                             (_g1935719371_ _g1935819374_))))
                     (_g1935719371_ _g1935819374_)))))
          (_g1935619408_ _stx19354_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx19267_ . _args19268_)
      (let ((_clause-e19270_
             (lambda (_clause19311_)
               (let ((_g1931319324_
                      (lambda (_g1931419321_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1931419321_))))
                 (let ((_g1931219351_
                        (lambda (_g1931419327_)
                          (if (gx#stx-pair? _g1931419327_)
                              (let ((_e1931719329_ (gx#stx-e _g1931419327_)))
                                (let ((_hd1931819332_ (##car _e1931719329_))
                                      (_tl1931919334_ (##cdr _e1931719329_)))
                                  ((lambda (_L19337_ _L19338_)
                                     (let ((_body19349_
                                            (map (gxc#xform-apply-compile-e
                                                  _args19268_)
                                                 _L19337_)))
                                       (cons _L19338_ _body19349_)))
                                   _tl1931919334_
                                   _hd1931819332_)))
                              (_g1931319324_ _g1931419327_)))))
                   (_g1931219351_ _clause19311_))))))
        (let ((_g1927219282_
               (lambda (_g1927319279_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1927319279_))))
          (let ((_g1927119308_
                 (lambda (_g1927319285_)
                   (if (gx#stx-pair? _g1927319285_)
                       (let ((_e1927519287_ (gx#stx-e _g1927319285_)))
                         (let ((_hd1927619290_ (##car _e1927519287_))
                               (_tl1927719292_ (##cdr _e1927519287_)))
                           ((lambda (_L19295_)
                              (let ((_clauses19306_
                                     (map _clause-e19270_ _L19295_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses19306_)
                                 _stx19267_)))
                            _tl1927719292_)))
                       (_g1927219282_ _g1927319285_)))))
            (_g1927119308_ _stx19267_))))))
  (define gxc#xform-let-values%
    (lambda (_stx19061_ . _args19062_)
      (let ((_g1906419097_
             (lambda (_g1906519094_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1906519094_))))
        (let ((_g1906319264_
               (lambda (_g1906519100_)
                 (if (gx#stx-pair? _g1906519100_)
                     (let ((_e1907019102_ (gx#stx-e _g1906519100_)))
                       (let ((_hd1907119105_ (##car _e1907019102_))
                             (_tl1907219107_ (##cdr _e1907019102_)))
                         (if (gx#stx-pair? _tl1907219107_)
                             (let ((_e1907319110_ (gx#stx-e _tl1907219107_)))
                               (let ((_hd1907419113_ (##car _e1907319110_))
                                     (_tl1907519115_ (##cdr _e1907319110_)))
                                 (if (gx#stx-pair/null? _hd1907419113_)
                                     (if (fx>= (gx#stx-length _hd1907419113_)
                                               '0)
                                         (let ((_g19976_
                                                (gx#syntax-split-splice
                                                 _hd1907419113_
                                                 '0)))
                                           (begin
                                             (let ((_g19977_
                                                    (values-count _g19976_)))
                                               (if (not (fx= _g19977_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19977_)))
                                             (let ((_target1907619118_
                                                    (values-ref _g19976_ 0))
                                                   (_tl1907819120_
                                                    (values-ref _g19976_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1907819120_)
                                                   (letrec ((_loop1907919123_
                                                             (lambda (_hd1907719126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1908319128_
                              _hd1908419130_)
                       (if (gx#stx-pair? _hd1907719126_)
                           (let ((_e1908019133_ (gx#stx-e _hd1907719126_)))
                             (let ((_lp-hd1908119136_ (##car _e1908019133_))
                                   (_lp-tl1908219138_ (##cdr _e1908019133_)))
                               (if (gx#stx-pair? _lp-hd1908119136_)
                                   (let ((_e1908719141_
                                          (gx#stx-e _lp-hd1908119136_)))
                                     (let ((_hd1908819144_
                                            (##car _e1908719141_))
                                           (_tl1908919146_
                                            (##cdr _e1908719141_)))
                                       (if (gx#stx-pair? _tl1908919146_)
                                           (let ((_e1909019149_
                                                  (gx#stx-e _tl1908919146_)))
                                             (let ((_hd1909119152_
                                                    (##car _e1909019149_))
                                                   (_tl1909219154_
                                                    (##cdr _e1909019149_)))
                                               (if (gx#stx-null?
                                                    _tl1909219154_)
                                                   (_loop1907919123_
                                                    _lp-tl1908219138_
                                                    (cons _hd1909119152_
                                                          _expr1908319128_)
                                                    (cons _hd1908819144_
                                                          _hd1908419130_))
                                                   (_g1906419097_
                                                    _g1906519100_))))
                                           (_g1906419097_ _g1906519100_))))
                                   (_g1906419097_ _g1906519100_))))
                           (let ((_expr1908519157_ (reverse _expr1908319128_))
                                 (_hd1908619159_ (reverse _hd1908419130_)))
                             ((lambda (_L19162_ _L19163_ _L19164_ _L19165_)
                                (let ((_g1918419200_
                                       (lambda (_g1918519197_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1918519197_))))
                                  (let ((_g1918319254_
                                         (lambda (_g1918519203_)
                                           (if (gx#stx-pair/null?
                                                _g1918519203_)
                                               (if (fx>= (gx#stx-length
                                                          _g1918519203_)
                                                         '0)
                                                   (let ((_g19978_
                                                          (gx#syntax-split-splice
                                                           _g1918519203_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19979_
                                                              (values-count
                                                               _g19978_)))
                                                         (if (not (fx= _g19979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19979_)))
               (let ((_target1918719205_ (values-ref _g19978_ 0))
                     (_tl1918919207_ (values-ref _g19978_ 1)))
                 (if (gx#stx-null? _tl1918919207_)
                     (letrec ((_loop1919019210_
                               (lambda (_hd1918819213_ _expr1919419215_)
                                 (if (gx#stx-pair? _hd1918819213_)
                                     (let ((_e1919119218_
                                            (gx#syntax-e _hd1918819213_)))
                                       (let ((_lp-hd1919219221_
                                              (##car _e1919119218_))
                                             (_lp-tl1919319223_
                                              (##cdr _e1919119218_)))
                                         (_loop1919019210_
                                          _lp-tl1919319223_
                                          (cons _lp-hd1919219221_
                                                _expr1919419215_))))
                                     (let ((_expr1919519226_
                                            (reverse _expr1919419215_)))
                                       ((lambda (_L19229_)
                                          (let ()
                                            (let ((_body19242_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args19062_)
                                                        _L19162_)))
                                              (gxc#xform-wrap-source
                                               (cons _L19165_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L19229_
                                                              _L19164_)
                                                             (foldr (lambda (_g1924319247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1924419249_
                                     _g1924519251_)
                              (cons (cons _g1924419249_
                                          (cons _g1924319247_ '()))
                                    _g1924519251_))
                            '()
                            _L19229_
                            _L19164_))
                   _body19242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19061_))))
                                        _expr1919519226_))))))
                       (_loop1919019210_ _target1918719205_ '()))
                     (_g1918419200_ _g1918519203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1918419200_
                                                    _g1918519203_))
                                               (_g1918419200_
                                                _g1918519203_)))))
                                    (_g1918319254_
                                     (map (gxc#xform-apply-compile-e
                                           _args19062_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1925619259_
                                                             _g1925719261_)
                                                      (cons _g1925619259_
                                                            _g1925719261_))
                                                    '()
                                                    _L19163_)))))))
                              _tl1907519115_
                              _expr1908519157_
                              _hd1908619159_
                              _hd1907119105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1907919123_
                                                      _target1907619118_
                                                      '()
                                                      '()))
                                                   (_g1906419097_
                                                    _g1906519100_)))))
                                         (_g1906419097_ _g1906519100_))
                                     (_g1906419097_ _g1906519100_))))
                             (_g1906419097_ _g1906519100_))))
                     (_g1906419097_ _g1906519100_)))))
          (_g1906319264_ _stx19061_)))))
  (define gxc#xform-operands
    (lambda (_stx19017_ . _args19018_)
      (let ((_g1902019031_
             (lambda (_g1902119028_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1902119028_))))
        (let ((_g1901919058_
               (lambda (_g1902119034_)
                 (if (gx#stx-pair? _g1902119034_)
                     (let ((_e1902419036_ (gx#stx-e _g1902119034_)))
                       (let ((_hd1902519039_ (##car _e1902419036_))
                             (_tl1902619041_ (##cdr _e1902419036_)))
                         ((lambda (_L19044_ _L19045_)
                            (let ((_rands19056_
                                   (map (gxc#xform-apply-compile-e _args19018_)
                                        _L19044_)))
                              (gxc#xform-wrap-source
                               (cons _L19045_ _rands19056_)
                               _stx19017_)))
                          _tl1902619041_
                          _hd1902519039_)))
                     (_g1902019031_ _g1902119034_)))))
          (_g1901919058_ _stx19017_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18947_ . _args18948_)
      (let ((_g1895018967_
             (lambda (_g1895118964_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1895118964_))))
        (let ((_g1894919014_
               (lambda (_g1895118970_)
                 (if (gx#stx-pair? _g1895118970_)
                     (let ((_e1895418972_ (gx#stx-e _g1895118970_)))
                       (let ((_hd1895518975_ (##car _e1895418972_))
                             (_tl1895618977_ (##cdr _e1895418972_)))
                         (if (gx#stx-pair? _tl1895618977_)
                             (let ((_e1895718980_ (gx#stx-e _tl1895618977_)))
                               (let ((_hd1895818983_ (##car _e1895718980_))
                                     (_tl1895918985_ (##cdr _e1895718980_)))
                                 (if (gx#stx-pair? _tl1895918985_)
                                     (let ((_e1896018988_
                                            (gx#stx-e _tl1895918985_)))
                                       (let ((_hd1896118991_
                                              (##car _e1896018988_))
                                             (_tl1896218993_
                                              (##cdr _e1896018988_)))
                                         (if (gx#stx-null? _tl1896218993_)
                                             ((lambda (_L18996_ _L18997_)
                                                (let ((_expr19012_
                                                       (apply gxc#compile-e
                                                              _L18996_
                                                              _args18948_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18997_
                                                               (cons _expr19012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18947_)))
                                              _hd1896118991_
                                              _hd1895818983_)
                                             (_g1895018967_ _g1895118970_))))
                                     (_g1895018967_ _g1895118970_))))
                             (_g1895018967_ _g1895118970_))))
                     (_g1895018967_ _g1895118970_)))))
          (_g1894919014_ _stx18947_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18878_)
      (let ((_g1888018897_
             (lambda (_g1888118894_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1888118894_))))
        (let ((_g1887918944_
               (lambda (_g1888118900_)
                 (if (gx#stx-pair? _g1888118900_)
                     (let ((_e1888418902_ (gx#stx-e _g1888118900_)))
                       (let ((_hd1888518905_ (##car _e1888418902_))
                             (_tl1888618907_ (##cdr _e1888418902_)))
                         (if (gx#stx-pair? _tl1888618907_)
                             (let ((_e1888718910_ (gx#stx-e _tl1888618907_)))
                               (let ((_hd1888818913_ (##car _e1888718910_))
                                     (_tl1888918915_ (##cdr _e1888718910_)))
                                 (if (gx#stx-pair? _tl1888918915_)
                                     (let ((_e1889018918_
                                            (gx#stx-e _tl1888918915_)))
                                       (let ((_hd1889118921_
                                              (##car _e1889018918_))
                                             (_tl1889218923_
                                              (##cdr _e1889018918_)))
                                         (if (gx#stx-null? _tl1889218923_)
                                             ((lambda (_L18926_ _L18927_)
                                                (let ((_sym18942_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18927_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18942_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18942_
                                                     '#t)
                                                    (gxc#compile-e _L18926_))))
                                              _hd1889118921_
                                              _hd1888818913_)
                                             (_g1888018897_ _g1888118900_))))
                                     (_g1888018897_ _g1888118900_))))
                             (_g1888018897_ _g1888118900_))))
                     (_g1888018897_ _g1888118900_)))))
          (_g1887918944_ _stx18878_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18112_)
      (let ((_g1811718274_
             (lambda (_g1811818271_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1811818271_))))
        (let ((_g1811618281_ (lambda (_g1811818277_) ((lambda () '#f)))))
          (let ((_g1811518421_
                 (lambda (_g1811818284_)
                   (if (gx#stx-pair? _g1811818284_)
                       (let ((_e1823418286_ (gx#stx-e _g1811818284_)))
                         (let ((_hd1823518289_ (##car _e1823418286_))
                               (_tl1823618291_ (##cdr _e1823418286_)))
                           (if (gx#stx-pair? _tl1823618291_)
                               (let ((_e1823718294_ (gx#stx-e _tl1823618291_)))
                                 (let ((_hd1823818297_ (##car _e1823718294_))
                                       (_tl1823918299_ (##cdr _e1823718294_)))
                                   (if (gx#stx-pair? _hd1823818297_)
                                       (let ((_e1824018302_
                                              (gx#stx-e _hd1823818297_)))
                                         (let ((_hd1824118305_
                                                (##car _e1824018302_))
                                               (_tl1824218307_
                                                (##cdr _e1824018302_)))
                                           (if (gx#identifier? _hd1824118305_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1824118305_)
                                                   (if (gx#stx-pair?
                                                        _tl1824218307_)
                                                       (let ((_e1824318310_
                                                              (gx#stx-e
                                                               _tl1824218307_)))
                                                         (let ((_hd1824418313_
                                                                (##car _e1824318310_))
                                                               (_tl1824518315_
                                                                (##cdr _e1824318310_)))
                                                           (if (gx#stx-pair?
                                                                _hd1824418313_)
                                                               (let ((_e1824618318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1824418313_)))
                         (let ((_hd1824718321_ (##car _e1824618318_))
                               (_tl1824818323_ (##cdr _e1824618318_)))
                           (if (gx#identifier? _hd1824718321_)
                               (if (gx#stx-eq? '%#ref _hd1824718321_)
                                   (if (gx#stx-pair? _tl1824818323_)
                                       (let ((_e1824918326_
                                              (gx#stx-e _tl1824818323_)))
                                         (let ((_hd1825018329_
                                                (##car _e1824918326_))
                                               (_tl1825118331_
                                                (##cdr _e1824918326_)))
                                           (if (gx#stx-null? _tl1825118331_)
                                               (if (gx#stx-pair?
                                                    _tl1824518315_)
                                                   (let ((_e1825218334_
                                                          (gx#stx-e
                                                           _tl1824518315_)))
                                                     (let ((_hd1825318337_
                                                            (##car _e1825218334_))
                                                           (_tl1825418339_
                                                            (##cdr _e1825218334_)))
                                                       (if (gx#stx-pair?
                                                            _hd1825318337_)
                                                           (let ((_e1825518342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1825318337_)))
                     (let ((_hd1825618345_ (##car _e1825518342_))
                           (_tl1825718347_ (##cdr _e1825518342_)))
                       (if (gx#identifier? _hd1825618345_)
                           (if (gx#stx-eq? '%#ref _hd1825618345_)
                               (if (gx#stx-pair? _tl1825718347_)
                                   (let ((_e1825818350_
                                          (gx#stx-e _tl1825718347_)))
                                     (let ((_hd1825918353_
                                            (##car _e1825818350_))
                                           (_tl1826018355_
                                            (##cdr _e1825818350_)))
                                       (if (gx#stx-null? _tl1826018355_)
                                           (if (gx#stx-pair? _tl1825418339_)
                                               (let ((_e1826118358_
                                                      (gx#stx-e
                                                       _tl1825418339_)))
                                                 (let ((_hd1826218361_
                                                        (##car _e1826118358_))
                                                       (_tl1826318363_
                                                        (##cdr _e1826118358_)))
                                                   (if (gx#stx-pair?
                                                        _hd1826218361_)
                                                       (let ((_e1826418366_
                                                              (gx#stx-e
                                                               _hd1826218361_)))
                                                         (let ((_hd1826518369_
                                                                (##car _e1826418366_))
                                                               (_tl1826618371_
                                                                (##cdr _e1826418366_)))
                                                           (if (gx#identifier?
                                                                _hd1826518369_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1826518369_)
                           (if (gx#stx-pair? _tl1826618371_)
                               (let ((_e1826718374_ (gx#stx-e _tl1826618371_)))
                                 (let ((_hd1826818377_ (##car _e1826718374_))
                                       (_tl1826918379_ (##cdr _e1826718374_)))
                                   (if (gx#stx-null? _tl1826918379_)
                                       (if (gx#stx-null? _tl1826318363_)
                                           (if (gx#stx-null? _tl1823918299_)
                                               ((lambda (_L18382_
                                                         _L18383_
                                                         _L18384_
                                                         _L18385_)
                                                  (if (if (gx#identifier?
                                                           _L18385_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18384_)
                           'apply)
                      (if (gx#free-identifier=? _L18385_ _L18382_)
                          (not (gx#free-identifier=? _L18383_ _L18385_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1811618281_ _g1811818284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1826818377_
                                                _hd1825918353_
                                                _hd1825018329_
                                                _hd1823518289_)
                                               (_g1811618281_ _g1811818284_))
                                           (_g1811618281_ _g1811818284_))
                                       (_g1811618281_ _g1811818284_))))
                               (_g1811618281_ _g1811818284_))
                           (_g1811618281_ _g1811818284_))
                       (_g1811618281_ _g1811818284_))))
               (_g1811618281_ _g1811818284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1811618281_ _g1811818284_))
                                           (_g1811618281_ _g1811818284_))))
                                   (_g1811618281_ _g1811818284_))
                               (_g1811618281_ _g1811818284_))
                           (_g1811618281_ _g1811818284_))))
                   (_g1811618281_ _g1811818284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811618281_
                                                    _g1811818284_))
                                               (_g1811618281_ _g1811818284_))))
                                       (_g1811618281_ _g1811818284_))
                                   (_g1811618281_ _g1811818284_))
                               (_g1811618281_ _g1811818284_))))
                       (_g1811618281_ _g1811818284_))))
               (_g1811618281_ _g1811818284_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811618281_
                                                    _g1811818284_))
                                               (_g1811618281_ _g1811818284_))))
                                       (_g1811618281_ _g1811818284_))))
                               (_g1811618281_ _g1811818284_))))
                       (_g1811618281_ _g1811818284_)))))
            (let ((_g1811418681_
                   (lambda (_g1811818424_)
                     (if (gx#stx-pair? _g1811818424_)
                         (let ((_e1817018426_ (gx#stx-e _g1811818424_)))
                           (let ((_hd1817118429_ (##car _e1817018426_))
                                 (_tl1817218431_ (##cdr _e1817018426_)))
                             (if (gx#stx-pair/null? _hd1817118429_)
                                 (if (fx>= (gx#stx-length _hd1817118429_) '0)
                                     (let ((_g19980_
                                            (gx#syntax-split-splice
                                             _hd1817118429_
                                             '0)))
                                       (begin
                                         (let ((_g19981_
                                                (values-count _g19980_)))
                                           (if (not (fx= _g19981_ 2))
                                               (error "Context expects 2 values"
                                                      _g19981_)))
                                         (let ((_target1817318434_
                                                (values-ref _g19980_ 0))
                                               (_tl1817518436_
                                                (values-ref _g19980_ 1)))
                                           (letrec ((_loop1817618439_
                                                     (lambda (_hd1817418442_
                                                              _arg1818018444_)
                                                       (if (gx#stx-pair?
                                                            _hd1817418442_)
                                                           (let ((_e1817718447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1817418442_)))
                     (let ((_lp-hd1817818450_ (##car _e1817718447_))
                           (_lp-tl1817918452_ (##cdr _e1817718447_)))
                       (_loop1817618439_
                        _lp-tl1817918452_
                        (cons _lp-hd1817818450_ _arg1818018444_))))
                   (let ((_arg1818118455_ (reverse _arg1818018444_)))
                     (if (gx#stx-pair? _tl1817218431_)
                         (let ((_e1818218458_ (gx#stx-e _tl1817218431_)))
                           (let ((_hd1818318461_ (##car _e1818218458_))
                                 (_tl1818418463_ (##cdr _e1818218458_)))
                             (if (gx#stx-pair? _hd1818318461_)
                                 (let ((_e1818518466_
                                        (gx#stx-e _hd1818318461_)))
                                   (let ((_hd1818618469_ (##car _e1818518466_))
                                         (_tl1818718471_
                                          (##cdr _e1818518466_)))
                                     (if (gx#identifier? _hd1818618469_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1818618469_)
                                             (if (gx#stx-pair? _tl1818718471_)
                                                 (let ((_e1818818474_
                                                        (gx#stx-e
                                                         _tl1818718471_)))
                                                   (let ((_hd1818918477_
                                                          (##car _e1818818474_))
                                                         (_tl1819018479_
                                                          (##cdr _e1818818474_)))
                                                     (if (gx#stx-pair?
                                                          _hd1818918477_)
                                                         (let ((_e1819118482_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1818918477_)))
                   (let ((_hd1819218485_ (##car _e1819118482_))
                         (_tl1819318487_ (##cdr _e1819118482_)))
                     (if (gx#identifier? _hd1819218485_)
                         (if (gx#stx-eq? '%#ref _hd1819218485_)
                             (if (gx#stx-pair? _tl1819318487_)
                                 (let ((_e1819418490_
                                        (gx#stx-e _tl1819318487_)))
                                   (let ((_hd1819518493_ (##car _e1819418490_))
                                         (_tl1819618495_
                                          (##cdr _e1819418490_)))
                                     (if (gx#stx-null? _tl1819618495_)
                                         (if (gx#stx-pair? _tl1819018479_)
                                             (let ((_e1819718498_
                                                    (gx#stx-e _tl1819018479_)))
                                               (let ((_hd1819818501_
                                                      (##car _e1819718498_))
                                                     (_tl1819918503_
                                                      (##cdr _e1819718498_)))
                                                 (if (gx#stx-pair?
                                                      _hd1819818501_)
                                                     (let ((_e1820018506_
                                                            (gx#stx-e
                                                             _hd1819818501_)))
                                                       (let ((_hd1820118509_
                                                              (##car _e1820018506_))
                                                             (_tl1820218511_
                                                              (##cdr _e1820018506_)))
                                                         (if (gx#identifier?
                                                              _hd1820118509_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1820118509_)
                         (if (gx#stx-pair? _tl1820218511_)
                             (let ((_e1820318514_ (gx#stx-e _tl1820218511_)))
                               (let ((_hd1820418517_ (##car _e1820318514_))
                                     (_tl1820518519_ (##cdr _e1820318514_)))
                                 (if (gx#stx-null? _tl1820518519_)
                                     (if (gx#stx-pair/null? _tl1819918503_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1819918503_)
                                                   '1)
                                             (let ((_g19982_
                                                    (gx#syntax-split-splice
                                                     _tl1819918503_
                                                     '1)))
                                               (begin
                                                 (let ((_g19983_
                                                        (values-count
                                                         _g19982_)))
                                                   (if (not (fx= _g19983_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19983_)))
                                                 (let ((_target1820618522_
                                                        (values-ref
                                                         _g19982_
                                                         0))
                                                       (_tl1820818524_
                                                        (values-ref
                                                         _g19982_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1820818524_)
                                                       (let ((_e1821518527_
                                                              (gx#stx-e
                                                               _tl1820818524_)))
                                                         (let ((_hd1821618530_
                                                                (##car _e1821518527_))
                                                               (_tl1821718532_
                                                                (##cdr _e1821518527_)))
                                                           (if (gx#stx-pair?
                                                                _hd1821618530_)
                                                               (let ((_e1821818535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1821618530_)))
                         (let ((_hd1821918538_ (##car _e1821818535_))
                               (_tl1822018540_ (##cdr _e1821818535_)))
                           (if (gx#identifier? _hd1821918538_)
                               (if (gx#stx-eq? '%#ref _hd1821918538_)
                                   (if (gx#stx-pair? _tl1822018540_)
                                       (let ((_e1822118543_
                                              (gx#stx-e _tl1822018540_)))
                                         (let ((_hd1822218546_
                                                (##car _e1822118543_))
                                               (_tl1822318548_
                                                (##cdr _e1822118543_)))
                                           (if (gx#stx-null? _tl1822318548_)
                                               (if (gx#stx-null?
                                                    _tl1821718532_)
                                                   (letrec ((_loop1820918551_
                                                             (lambda (_hd1820718554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1821318556_)
                       (if (gx#stx-pair? _hd1820718554_)
                           (let ((_e1821018559_ (gx#stx-e _hd1820718554_)))
                             (let ((_lp-hd1821118562_ (##car _e1821018559_))
                                   (_lp-tl1821218564_ (##cdr _e1821018559_)))
                               (if (gx#stx-pair? _lp-hd1821118562_)
                                   (let ((_e1822418567_
                                          (gx#stx-e _lp-hd1821118562_)))
                                     (let ((_hd1822518570_
                                            (##car _e1822418567_))
                                           (_tl1822618572_
                                            (##cdr _e1822418567_)))
                                       (if (gx#identifier? _hd1822518570_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1822518570_)
                                               (if (gx#stx-pair?
                                                    _tl1822618572_)
                                                   (let ((_e1822718575_
                                                          (gx#stx-e
                                                           _tl1822618572_)))
                                                     (let ((_hd1822818578_
                                                            (##car _e1822718575_))
                                                           (_tl1822918580_
                                                            (##cdr _e1822718575_)))
                                                       (if (gx#stx-null?
                                                            _tl1822918580_)
                                                           (_loop1820918551_
                                                            _lp-tl1821218564_
                                                            (cons _hd1822818578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1821318556_))
                   (_g1811518421_ _g1811818424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811518421_
                                                    _g1811818424_))
                                               (_g1811518421_ _g1811818424_))
                                           (_g1811518421_ _g1811818424_))))
                                   (_g1811518421_ _g1811818424_))))
                           (let ((_xarg1821418583_ (reverse _xarg1821318556_)))
                             (if (gx#stx-null? _tl1818418463_)
                                 ((lambda (_L18586_
                                           _L18587_
                                           _L18588_
                                           _L18589_
                                           _L18590_
                                           _L18591_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1863418637_
                                                                _g1863518639_)
                                                         (cons _g1863418637_
                                                               _g1863518639_))
                                                       '()
                                                       _L18591_)))
                                            (if (gx#identifier? _L18590_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L18589_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1864118644_ _g1864218646_)
                                         (cons _g1864118644_ _g1864218646_))
                                       '()
                                       _L18591_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1864818651_ _g1864918653_)
                                         (cons _g1864818651_ _g1864918653_))
                                       '()
                                       _L18587_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1865518658_ _g1865618660_)
                                        (cons _g1865518658_ _g1865618660_))
                                      '()
                                      _L18591_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1866218665_ _g1866318667_)
                                        (cons _g1866218665_ _g1866318667_))
                                      '()
                                      _L18587_)))
                    (if (gx#free-identifier=? _L18590_ _L18586_)
                        (not (find (lambda (_g1866918671_)
                                     (gx#free-identifier=?
                                      _g1866918671_
                                      _L18588_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1867318676_
                                                      _g1867418678_)
                                               (cons _g1867318676_
                                                     _g1867418678_))
                                             (cons _L18590_ '())
                                             _L18591_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1811518421_ _g1811818424_)))
                                  _hd1822218546_
                                  _xarg1821418583_
                                  _hd1820418517_
                                  _hd1819518493_
                                  _tl1817518436_
                                  _arg1818118455_)
                                 (_g1811518421_ _g1811818424_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1820918551_
                                                      _target1820618522_
                                                      '()))
                                                   (_g1811518421_
                                                    _g1811818424_))
                                               (_g1811518421_ _g1811818424_))))
                                       (_g1811518421_ _g1811818424_))
                                   (_g1811518421_ _g1811818424_))
                               (_g1811518421_ _g1811818424_))))
                       (_g1811518421_ _g1811818424_))))
               (_g1811518421_ _g1811818424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1811518421_ _g1811818424_))
                                         (_g1811518421_ _g1811818424_))
                                     (_g1811518421_ _g1811818424_))))
                             (_g1811518421_ _g1811818424_))
                         (_g1811518421_ _g1811818424_))
                     (_g1811518421_ _g1811818424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1811518421_
                                                      _g1811818424_))))
                                             (_g1811518421_ _g1811818424_))
                                         (_g1811518421_ _g1811818424_))))
                                 (_g1811518421_ _g1811818424_))
                             (_g1811518421_ _g1811818424_))
                         (_g1811518421_ _g1811818424_))))
                 (_g1811518421_ _g1811818424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811518421_ _g1811818424_))
                                             (_g1811518421_ _g1811818424_))
                                         (_g1811518421_ _g1811818424_))))
                                 (_g1811518421_ _g1811818424_))))
                         (_g1811518421_ _g1811818424_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1817618439_
                                              _target1817318434_
                                              '())))))
                                     (_g1811518421_ _g1811818424_))
                                 (_g1811518421_ _g1811818424_))))
                         (_g1811518421_ _g1811818424_)))))
              (let ((_g1811318875_
                     (lambda (_g1811818684_)
                       (if (gx#stx-pair? _g1811818684_)
                           (let ((_e1812218686_ (gx#stx-e _g1811818684_)))
                             (let ((_hd1812318689_ (##car _e1812218686_))
                                   (_tl1812418691_ (##cdr _e1812218686_)))
                               (if (gx#stx-pair/null? _hd1812318689_)
                                   (if (fx>= (gx#stx-length _hd1812318689_) '0)
                                       (let ((_g19984_
                                              (gx#syntax-split-splice
                                               _hd1812318689_
                                               '0)))
                                         (begin
                                           (let ((_g19985_
                                                  (values-count _g19984_)))
                                             (if (not (fx= _g19985_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19985_)))
                                           (let ((_target1812518694_
                                                  (values-ref _g19984_ 0))
                                                 (_tl1812718696_
                                                  (values-ref _g19984_ 1)))
                                             (if (gx#stx-null? _tl1812718696_)
                                                 (letrec ((_loop1812818699_
                                                           (lambda (_hd1812618702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1813218704_)
                     (if (gx#stx-pair? _hd1812618702_)
                         (let ((_e1812918707_ (gx#stx-e _hd1812618702_)))
                           (let ((_lp-hd1813018710_ (##car _e1812918707_))
                                 (_lp-tl1813118712_ (##cdr _e1812918707_)))
                             (_loop1812818699_
                              _lp-tl1813118712_
                              (cons _lp-hd1813018710_ _arg1813218704_))))
                         (let ((_arg1813318715_ (reverse _arg1813218704_)))
                           (if (gx#stx-pair? _tl1812418691_)
                               (let ((_e1813418718_ (gx#stx-e _tl1812418691_)))
                                 (let ((_hd1813518721_ (##car _e1813418718_))
                                       (_tl1813618723_ (##cdr _e1813418718_)))
                                   (if (gx#stx-pair? _hd1813518721_)
                                       (let ((_e1813718726_
                                              (gx#stx-e _hd1813518721_)))
                                         (let ((_hd1813818729_
                                                (##car _e1813718726_))
                                               (_tl1813918731_
                                                (##cdr _e1813718726_)))
                                           (if (gx#identifier? _hd1813818729_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1813818729_)
                                                   (if (gx#stx-pair?
                                                        _tl1813918731_)
                                                       (let ((_e1814018734_
                                                              (gx#stx-e
                                                               _tl1813918731_)))
                                                         (let ((_hd1814118737_
                                                                (##car _e1814018734_))
                                                               (_tl1814218739_
                                                                (##cdr _e1814018734_)))
                                                           (if (gx#stx-pair?
                                                                _hd1814118737_)
                                                               (let ((_e1814318742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1814118737_)))
                         (let ((_hd1814418745_ (##car _e1814318742_))
                               (_tl1814518747_ (##cdr _e1814318742_)))
                           (if (gx#identifier? _hd1814418745_)
                               (if (gx#stx-eq? '%#ref _hd1814418745_)
                                   (if (gx#stx-pair? _tl1814518747_)
                                       (let ((_e1814618750_
                                              (gx#stx-e _tl1814518747_)))
                                         (let ((_hd1814718753_
                                                (##car _e1814618750_))
                                               (_tl1814818755_
                                                (##cdr _e1814618750_)))
                                           (if (gx#stx-null? _tl1814818755_)
                                               (if (gx#stx-pair/null?
                                                    _tl1814218739_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1814218739_)
                                                             '0)
                                                       (let ((_g19986_
                                                              (gx#syntax-split-splice
                                                               _tl1814218739_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19986_)))
                     (if (not (fx= _g19987_ 2))
                         (error "Context expects 2 values" _g19987_)))
                   (let ((_target1814918758_ (values-ref _g19986_ 0))
                         (_tl1815118760_ (values-ref _g19986_ 1)))
                     (if (gx#stx-null? _tl1815118760_)
                         (letrec ((_loop1815218763_
                                   (lambda (_hd1815018766_ _xarg1815618768_)
                                     (if (gx#stx-pair? _hd1815018766_)
                                         (let ((_e1815318771_
                                                (gx#stx-e _hd1815018766_)))
                                           (let ((_lp-hd1815418774_
                                                  (##car _e1815318771_))
                                                 (_lp-tl1815518776_
                                                  (##cdr _e1815318771_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1815418774_)
                                                 (let ((_e1815818779_
                                                        (gx#stx-e
                                                         _lp-hd1815418774_)))
                                                   (let ((_hd1815918782_
                                                          (##car _e1815818779_))
                                                         (_tl1816018784_
                                                          (##cdr _e1815818779_)))
                                                     (if (gx#identifier?
                                                          _hd1815918782_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1815918782_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1816018784_)
                         (let ((_e1816118787_ (gx#stx-e _tl1816018784_)))
                           (let ((_hd1816218790_ (##car _e1816118787_))
                                 (_tl1816318792_ (##cdr _e1816118787_)))
                             (if (gx#stx-null? _tl1816318792_)
                                 (_loop1815218763_
                                  _lp-tl1815518776_
                                  (cons _hd1816218790_ _xarg1815618768_))
                                 (_g1811418681_ _g1811818684_))))
                         (_g1811418681_ _g1811818684_))
                     (_g1811418681_ _g1811818684_))
                 (_g1811418681_ _g1811818684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811418681_
                                                  _g1811818684_))))
                                         (let ((_xarg1815718795_
                                                (reverse _xarg1815618768_)))
                                           (if (gx#stx-null? _tl1813618723_)
                                               ((lambda (_L18798_
                                                         _L18799_
                                                         _L18800_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1882818831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1882918833_)
                               (cons _g1882818831_ _g1882918833_))
                             '()
                             _L18800_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1883518838_
                                                      _g1883618840_)
                                               (cons _g1883518838_
                                                     _g1883618840_))
                                             '()
                                             _L18800_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1884218845_
                                                      _g1884318847_)
                                               (cons _g1884218845_
                                                     _g1884318847_))
                                             '()
                                             _L18798_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1884918852_
                                                     _g1885018854_)
                                              (cons _g1884918852_
                                                    _g1885018854_))
                                            '()
                                            _L18800_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1885618859_
                                                     _g1885718861_)
                                              (cons _g1885618859_
                                                    _g1885718861_))
                                            '()
                                            _L18798_)))
                          (not (find (lambda (_g1886318865_)
                                       (gx#free-identifier=?
                                        _g1886318865_
                                        _L18799_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1886718870_
                                                        _g1886818872_)
                                                 (cons _g1886718870_
                                                       _g1886818872_))
                                               '()
                                               _L18800_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1811418681_ _g1811818684_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1815718795_
                                                _hd1814718753_
                                                _arg1813318715_)
                                               (_g1811418681_
                                                _g1811818684_)))))))
                           (_loop1815218763_ _target1814918758_ '()))
                         (_g1811418681_ _g1811818684_)))))
               (_g1811418681_ _g1811818684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811418681_
                                                    _g1811818684_))
                                               (_g1811418681_ _g1811818684_))))
                                       (_g1811418681_ _g1811818684_))
                                   (_g1811418681_ _g1811818684_))
                               (_g1811418681_ _g1811818684_))))
                       (_g1811418681_ _g1811818684_))))
               (_g1811418681_ _g1811818684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811418681_
                                                    _g1811818684_))
                                               (_g1811418681_ _g1811818684_))))
                                       (_g1811418681_ _g1811818684_))))
                               (_g1811418681_ _g1811818684_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1812818699_
                                                    _target1812518694_
                                                    '()))
                                                 (_g1811418681_
                                                  _g1811818684_)))))
                                       (_g1811418681_ _g1811818684_))
                                   (_g1811418681_ _g1811818684_))))
                           (_g1811418681_ _g1811818684_)))))
                (_g1811318875_ _form18112_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form17580_)
      (let ((_g1758417708_
             (lambda (_g1758517705_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1758517705_))))
        (let ((_g1758317825_
               (lambda (_g1758517711_)
                 (if (gx#stx-pair? _g1758517711_)
                     (let ((_e1767417713_ (gx#stx-e _g1758517711_)))
                       (let ((_hd1767517716_ (##car _e1767417713_))
                             (_tl1767617718_ (##cdr _e1767417713_)))
                         (if (gx#stx-pair? _tl1767617718_)
                             (let ((_e1767717721_ (gx#stx-e _tl1767617718_)))
                               (let ((_hd1767817724_ (##car _e1767717721_))
                                     (_tl1767917726_ (##cdr _e1767717721_)))
                                 (if (gx#stx-pair? _hd1767817724_)
                                     (let ((_e1768017729_
                                            (gx#stx-e _hd1767817724_)))
                                       (let ((_hd1768117732_
                                              (##car _e1768017729_))
                                             (_tl1768217734_
                                              (##cdr _e1768017729_)))
                                         (if (gx#identifier? _hd1768117732_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1768117732_)
                                                 (if (gx#stx-pair?
                                                      _tl1768217734_)
                                                     (let ((_e1768317737_
                                                            (gx#stx-e
                                                             _tl1768217734_)))
                                                       (let ((_hd1768417740_
                                                              (##car _e1768317737_))
                                                             (_tl1768517742_
                                                              (##cdr _e1768317737_)))
                                                         (if (gx#stx-pair?
                                                              _hd1768417740_)
                                                             (let ((_e1768617745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1768417740_)))
                       (let ((_hd1768717748_ (##car _e1768617745_))
                             (_tl1768817750_ (##cdr _e1768617745_)))
                         (if (gx#identifier? _hd1768717748_)
                             (if (gx#stx-eq? '%#ref _hd1768717748_)
                                 (if (gx#stx-pair? _tl1768817750_)
                                     (let ((_e1768917753_
                                            (gx#stx-e _tl1768817750_)))
                                       (let ((_hd1769017756_
                                              (##car _e1768917753_))
                                             (_tl1769117758_
                                              (##cdr _e1768917753_)))
                                         (if (gx#stx-null? _tl1769117758_)
                                             (if (gx#stx-pair? _tl1768517742_)
                                                 (let ((_e1769217761_
                                                        (gx#stx-e
                                                         _tl1768517742_)))
                                                   (let ((_hd1769317764_
                                                          (##car _e1769217761_))
                                                         (_tl1769417766_
                                                          (##cdr _e1769217761_)))
                                                     (if (gx#stx-pair?
                                                          _hd1769317764_)
                                                         (let ((_e1769517769_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1769317764_)))
                   (let ((_hd1769617772_ (##car _e1769517769_))
                         (_tl1769717774_ (##cdr _e1769517769_)))
                     (if (gx#identifier? _hd1769617772_)
                         (if (gx#stx-eq? '%#ref _hd1769617772_)
                             (if (gx#stx-pair? _tl1769717774_)
                                 (let ((_e1769817777_
                                        (gx#stx-e _tl1769717774_)))
                                   (let ((_hd1769917780_ (##car _e1769817777_))
                                         (_tl1770017782_
                                          (##cdr _e1769817777_)))
                                     (if (gx#stx-null? _tl1770017782_)
                                         (if (gx#stx-pair? _tl1769417766_)
                                             (let ((_e1770117785_
                                                    (gx#stx-e _tl1769417766_)))
                                               (let ((_hd1770217788_
                                                      (##car _e1770117785_))
                                                     (_tl1770317790_
                                                      (##cdr _e1770117785_)))
                                                 (if (gx#stx-null?
                                                      _tl1770317790_)
                                                     (if (gx#stx-null?
                                                          _tl1767917726_)
                                                         ((lambda (_L17793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17794_
                           _L17795_)
                    (gxc#generate-runtime-binding-id _L17793_))
                  _hd1769917780_
                  _hd1769017756_
                  _hd1767517716_)
                 (_g1758417708_ _g1758517711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758417708_
                                                      _g1758517711_))))
                                             (_g1758417708_ _g1758517711_))
                                         (_g1758417708_ _g1758517711_))))
                                 (_g1758417708_ _g1758517711_))
                             (_g1758417708_ _g1758517711_))
                         (_g1758417708_ _g1758517711_))))
                 (_g1758417708_ _g1758517711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1758417708_ _g1758517711_))
                                             (_g1758417708_ _g1758517711_))))
                                     (_g1758417708_ _g1758517711_))
                                 (_g1758417708_ _g1758517711_))
                             (_g1758417708_ _g1758517711_))))
                     (_g1758417708_ _g1758517711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758417708_
                                                      _g1758517711_))
                                                 (_g1758417708_ _g1758517711_))
                                             (_g1758417708_ _g1758517711_))))
                                     (_g1758417708_ _g1758517711_))))
                             (_g1758417708_ _g1758517711_))))
                     (_g1758417708_ _g1758517711_)))))
          (let ((_g1758217961_
                 (lambda (_g1758517828_)
                   (if (gx#stx-pair? _g1758517828_)
                       (let ((_e1763517830_ (gx#stx-e _g1758517828_)))
                         (let ((_hd1763617833_ (##car _e1763517830_))
                               (_tl1763717835_ (##cdr _e1763517830_)))
                           (if (gx#stx-pair/null? _hd1763617833_)
                               (if (fx>= (gx#stx-length _hd1763617833_) '0)
                                   (let ((_g19988_
                                          (gx#syntax-split-splice
                                           _hd1763617833_
                                           '0)))
                                     (begin
                                       (let ((_g19989_
                                              (values-count _g19988_)))
                                         (if (not (fx= _g19989_ 2))
                                             (error "Context expects 2 values"
                                                    _g19989_)))
                                       (let ((_target1763817838_
                                              (values-ref _g19988_ 0))
                                             (_tl1764017840_
                                              (values-ref _g19988_ 1)))
                                         (letrec ((_loop1764117843_
                                                   (lambda (_hd1763917846_
                                                            _arg1764517848_)
                                                     (if (gx#stx-pair?
                                                          _hd1763917846_)
                                                         (let ((_e1764217851_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1763917846_)))
                   (let ((_lp-hd1764317854_ (##car _e1764217851_))
                         (_lp-tl1764417856_ (##cdr _e1764217851_)))
                     (_loop1764117843_
                      _lp-tl1764417856_
                      (cons _lp-hd1764317854_ _arg1764517848_))))
                 (let ((_arg1764617859_ (reverse _arg1764517848_)))
                   (if (gx#stx-pair? _tl1763717835_)
                       (let ((_e1764717862_ (gx#stx-e _tl1763717835_)))
                         (let ((_hd1764817865_ (##car _e1764717862_))
                               (_tl1764917867_ (##cdr _e1764717862_)))
                           (if (gx#stx-pair? _hd1764817865_)
                               (let ((_e1765017870_ (gx#stx-e _hd1764817865_)))
                                 (let ((_hd1765117873_ (##car _e1765017870_))
                                       (_tl1765217875_ (##cdr _e1765017870_)))
                                   (if (gx#identifier? _hd1765117873_)
                                       (if (gx#stx-eq? '%#call _hd1765117873_)
                                           (if (gx#stx-pair? _tl1765217875_)
                                               (let ((_e1765317878_
                                                      (gx#stx-e
                                                       _tl1765217875_)))
                                                 (let ((_hd1765417881_
                                                        (##car _e1765317878_))
                                                       (_tl1765517883_
                                                        (##cdr _e1765317878_)))
                                                   (if (gx#stx-pair?
                                                        _hd1765417881_)
                                                       (let ((_e1765617886_
                                                              (gx#stx-e
                                                               _hd1765417881_)))
                                                         (let ((_hd1765717889_
                                                                (##car _e1765617886_))
                                                               (_tl1765817891_
                                                                (##cdr _e1765617886_)))
                                                           (if (gx#identifier?
                                                                _hd1765717889_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1765717889_)
                           (if (gx#stx-pair? _tl1765817891_)
                               (let ((_e1765917894_ (gx#stx-e _tl1765817891_)))
                                 (let ((_hd1766017897_ (##car _e1765917894_))
                                       (_tl1766117899_ (##cdr _e1765917894_)))
                                   (if (gx#stx-null? _tl1766117899_)
                                       (if (gx#stx-pair? _tl1765517883_)
                                           (let ((_e1766217902_
                                                  (gx#stx-e _tl1765517883_)))
                                             (let ((_hd1766317905_
                                                    (##car _e1766217902_))
                                                   (_tl1766417907_
                                                    (##cdr _e1766217902_)))
                                               (if (gx#stx-pair?
                                                    _hd1766317905_)
                                                   (let ((_e1766517910_
                                                          (gx#stx-e
                                                           _hd1766317905_)))
                                                     (let ((_hd1766617913_
                                                            (##car _e1766517910_))
                                                           (_tl1766717915_
                                                            (##cdr _e1766517910_)))
                                                       (if (gx#identifier?
                                                            _hd1766617913_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1766617913_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1766717915_)
                           (let ((_e1766817918_ (gx#stx-e _tl1766717915_)))
                             (let ((_hd1766917921_ (##car _e1766817918_))
                                   (_tl1767017923_ (##cdr _e1766817918_)))
                               (if (gx#stx-null? _tl1767017923_)
                                   (if (gx#stx-null? _tl1764917867_)
                                       ((lambda (_L17926_
                                                 _L17927_
                                                 _L17928_
                                                 _L17929_)
                                          (gxc#generate-runtime-binding-id
                                           _L17926_))
                                        _hd1766917921_
                                        _hd1766017897_
                                        _tl1764017840_
                                        _arg1764617859_)
                                       (_g1758317825_ _g1758517828_))
                                   (_g1758317825_ _g1758517828_))))
                           (_g1758317825_ _g1758517828_))
                       (_g1758317825_ _g1758517828_))
                   (_g1758317825_ _g1758517828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1758317825_
                                                    _g1758517828_))))
                                           (_g1758317825_ _g1758517828_))
                                       (_g1758317825_ _g1758517828_))))
                               (_g1758317825_ _g1758517828_))
                           (_g1758317825_ _g1758517828_))
                       (_g1758317825_ _g1758517828_))))
               (_g1758317825_ _g1758517828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1758317825_ _g1758517828_))
                                           (_g1758317825_ _g1758517828_))
                                       (_g1758317825_ _g1758517828_))))
                               (_g1758317825_ _g1758517828_))))
                       (_g1758317825_ _g1758517828_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1764117843_
                                            _target1763817838_
                                            '())))))
                                   (_g1758317825_ _g1758517828_))
                               (_g1758317825_ _g1758517828_))))
                       (_g1758317825_ _g1758517828_)))))
            (let ((_g1758118109_
                   (lambda (_g1758517964_)
                     (if (gx#stx-pair? _g1758517964_)
                         (let ((_e1758917966_ (gx#stx-e _g1758517964_)))
                           (let ((_hd1759017969_ (##car _e1758917966_))
                                 (_tl1759117971_ (##cdr _e1758917966_)))
                             (if (gx#stx-pair/null? _hd1759017969_)
                                 (if (fx>= (gx#stx-length _hd1759017969_) '0)
                                     (let ((_g19990_
                                            (gx#syntax-split-splice
                                             _hd1759017969_
                                             '0)))
                                       (begin
                                         (let ((_g19991_
                                                (values-count _g19990_)))
                                           (if (not (fx= _g19991_ 2))
                                               (error "Context expects 2 values"
                                                      _g19991_)))
                                         (let ((_target1759217974_
                                                (values-ref _g19990_ 0))
                                               (_tl1759417976_
                                                (values-ref _g19990_ 1)))
                                           (if (gx#stx-null? _tl1759417976_)
                                               (letrec ((_loop1759517979_
                                                         (lambda (_hd1759317982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1759917984_)
                   (if (gx#stx-pair? _hd1759317982_)
                       (let ((_e1759617987_ (gx#stx-e _hd1759317982_)))
                         (let ((_lp-hd1759717990_ (##car _e1759617987_))
                               (_lp-tl1759817992_ (##cdr _e1759617987_)))
                           (_loop1759517979_
                            _lp-tl1759817992_
                            (cons _lp-hd1759717990_ _arg1759917984_))))
                       (let ((_arg1760017995_ (reverse _arg1759917984_)))
                         (if (gx#stx-pair? _tl1759117971_)
                             (let ((_e1760117998_ (gx#stx-e _tl1759117971_)))
                               (let ((_hd1760218001_ (##car _e1760117998_))
                                     (_tl1760318003_ (##cdr _e1760117998_)))
                                 (if (gx#stx-pair? _hd1760218001_)
                                     (let ((_e1760418006_
                                            (gx#stx-e _hd1760218001_)))
                                       (let ((_hd1760518009_
                                              (##car _e1760418006_))
                                             (_tl1760618011_
                                              (##cdr _e1760418006_)))
                                         (if (gx#identifier? _hd1760518009_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1760518009_)
                                                 (if (gx#stx-pair?
                                                      _tl1760618011_)
                                                     (let ((_e1760718014_
                                                            (gx#stx-e
                                                             _tl1760618011_)))
                                                       (let ((_hd1760818017_
                                                              (##car _e1760718014_))
                                                             (_tl1760918019_
                                                              (##cdr _e1760718014_)))
                                                         (if (gx#stx-pair?
                                                              _hd1760818017_)
                                                             (let ((_e1761018022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1760818017_)))
                       (let ((_hd1761118025_ (##car _e1761018022_))
                             (_tl1761218027_ (##cdr _e1761018022_)))
                         (if (gx#identifier? _hd1761118025_)
                             (if (gx#stx-eq? '%#ref _hd1761118025_)
                                 (if (gx#stx-pair? _tl1761218027_)
                                     (let ((_e1761318030_
                                            (gx#stx-e _tl1761218027_)))
                                       (let ((_hd1761418033_
                                              (##car _e1761318030_))
                                             (_tl1761518035_
                                              (##cdr _e1761318030_)))
                                         (if (gx#stx-null? _tl1761518035_)
                                             (if (gx#stx-pair/null?
                                                  _tl1760918019_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1760918019_)
                                                           '0)
                                                     (let ((_g19992_
                                                            (gx#syntax-split-splice
                                                             _tl1760918019_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19993_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19992_)))
                   (if (not (fx= _g19993_ 2))
                       (error "Context expects 2 values" _g19993_)))
                 (let ((_target1761618038_ (values-ref _g19992_ 0))
                       (_tl1761818040_ (values-ref _g19992_ 1)))
                   (if (gx#stx-null? _tl1761818040_)
                       (letrec ((_loop1761918043_
                                 (lambda (_hd1761718046_ _xarg1762318048_)
                                   (if (gx#stx-pair? _hd1761718046_)
                                       (let ((_e1762018051_
                                              (gx#stx-e _hd1761718046_)))
                                         (let ((_lp-hd1762118054_
                                                (##car _e1762018051_))
                                               (_lp-tl1762218056_
                                                (##cdr _e1762018051_)))
                                           (if (gx#stx-pair? _lp-hd1762118054_)
                                               (let ((_e1762518059_
                                                      (gx#stx-e
                                                       _lp-hd1762118054_)))
                                                 (let ((_hd1762618062_
                                                        (##car _e1762518059_))
                                                       (_tl1762718064_
                                                        (##cdr _e1762518059_)))
                                                   (if (gx#identifier?
                                                        _hd1762618062_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1762618062_)
                                                           (if (gx#stx-pair?
                                                                _tl1762718064_)
                                                               (let ((_e1762818067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1762718064_)))
                         (let ((_hd1762918070_ (##car _e1762818067_))
                               (_tl1763018072_ (##cdr _e1762818067_)))
                           (if (gx#stx-null? _tl1763018072_)
                               (_loop1761918043_
                                _lp-tl1762218056_
                                (cons _hd1762918070_ _xarg1762318048_))
                               (_g1758217961_ _g1758517964_))))
                       (_g1758217961_ _g1758517964_))
                   (_g1758217961_ _g1758517964_))
               (_g1758217961_ _g1758517964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1758217961_ _g1758517964_))))
                                       (let ((_xarg1762418075_
                                              (reverse _xarg1762318048_)))
                                         (if (gx#stx-null? _tl1760318003_)
                                             ((lambda (_L18078_
                                                       _L18079_
                                                       _L18080_)
                                                (gxc#generate-runtime-binding-id
                                                 _L18079_))
                                              _xarg1762418075_
                                              _hd1761418033_
                                              _arg1760017995_)
                                             (_g1758217961_
                                              _g1758517964_)))))))
                         (_loop1761918043_ _target1761618038_ '()))
                       (_g1758217961_ _g1758517964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758217961_
                                                      _g1758517964_))
                                                 (_g1758217961_ _g1758517964_))
                                             (_g1758217961_ _g1758517964_))))
                                     (_g1758217961_ _g1758517964_))
                                 (_g1758217961_ _g1758517964_))
                             (_g1758217961_ _g1758517964_))))
                     (_g1758217961_ _g1758517964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758217961_
                                                      _g1758517964_))
                                                 (_g1758217961_ _g1758517964_))
                                             (_g1758217961_ _g1758517964_))))
                                     (_g1758217961_ _g1758517964_))))
                             (_g1758217961_ _g1758517964_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1759517979_
                                                  _target1759217974_
                                                  '()))
                                               (_g1758217961_
                                                _g1758517964_)))))
                                     (_g1758217961_ _g1758517964_))
                                 (_g1758217961_ _g1758517964_))))
                         (_g1758217961_ _g1758517964_)))))
              (_g1758118109_ _form17580_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form17384_)
      (let ((_g1738617400_
             (lambda (_g1738717397_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1738717397_))))
        (let ((_g1738517577_
               (lambda (_g1738717403_)
                 (if (gx#stx-pair? _g1738717403_)
                     (let ((_e1739017405_ (gx#stx-e _g1738717403_)))
                       (let ((_hd1739117408_ (##car _e1739017405_))
                             (_tl1739217410_ (##cdr _e1739017405_)))
                         (if (gx#stx-pair? _tl1739217410_)
                             (let ((_e1739317413_ (gx#stx-e _tl1739217410_)))
                               (let ((_hd1739417416_ (##car _e1739317413_))
                                     (_tl1739517418_ (##cdr _e1739317413_)))
                                 (if (gx#stx-null? _tl1739517418_)
                                     ((lambda (_L17421_ _L17422_)
                                        (let ((_g1743717465_
                                               (lambda (_g1743817462_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1743817462_))))
                                          (let ((_g1743617478_
                                                 (lambda (_g1743817468_)
                                                   ((lambda (_L17470_)
                                                      (cons '0 '()))
                                                    _g1743817468_))))
                                            (let ((_g1743517527_
                                                   (lambda (_g1743817481_)
                                                     (if (gx#stx-pair/null?
                                                          _g1743817481_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1743817481_)
                           '0)
                     (let ((_g19994_
                            (gx#syntax-split-splice _g1743817481_ '0)))
                       (begin
                         (let ((_g19995_ (values-count _g19994_)))
                           (if (not (fx= _g19995_ 2))
                               (error "Context expects 2 values" _g19995_)))
                         (let ((_target1745117483_ (values-ref _g19994_ 0))
                               (_tl1745317485_ (values-ref _g19994_ 1)))
                           (letrec ((_loop1745417488_
                                     (lambda (_hd1745217491_ _arg1745817493_)
                                       (if (gx#stx-pair? _hd1745217491_)
                                           (let ((_e1745517496_
                                                  (gx#stx-e _hd1745217491_)))
                                             (let ((_lp-hd1745617499_
                                                    (##car _e1745517496_))
                                                   (_lp-tl1745717501_
                                                    (##cdr _e1745517496_)))
                                               (_loop1745417488_
                                                _lp-tl1745717501_
                                                (cons _lp-hd1745617499_
                                                      _arg1745817493_))))
                                           (let ((_arg1745917504_
                                                  (reverse _arg1745817493_)))
                                             ((lambda (_L17507_ _L17508_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1751917522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1752017524_)
                                  (cons _g1751917522_ _g1752017524_))
                                '()
                                _L17508_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1745317485_
                                              _arg1745917504_))))))
                             (_loop1745417488_ _target1745117483_ '())))))
                     (_g1743617478_ _g1743817481_))
                 (_g1743617478_ _g1743817481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1743417574_
                                                     (lambda (_g1743817530_)
                                                       (if (gx#stx-pair/null?
                                                            _g1743817530_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1743817530_)
                             '0)
                       (let ((_g19996_
                              (gx#syntax-split-splice _g1743817530_ '0)))
                         (begin
                           (let ((_g19997_ (values-count _g19996_)))
                             (if (not (fx= _g19997_ 2))
                                 (error "Context expects 2 values" _g19997_)))
                           (let ((_target1744017532_ (values-ref _g19996_ 0))
                                 (_tl1744217534_ (values-ref _g19996_ 1)))
                             (if (gx#stx-null? _tl1744217534_)
                                 (letrec ((_loop1744317537_
                                           (lambda (_hd1744117540_
                                                    _arg1744717542_)
                                             (if (gx#stx-pair? _hd1744117540_)
                                                 (let ((_e1744417545_
                                                        (gx#stx-e
                                                         _hd1744117540_)))
                                                   (let ((_lp-hd1744517548_
                                                          (##car _e1744417545_))
                                                         (_lp-tl1744617550_
                                                          (##cdr _e1744417545_)))
                                                     (_loop1744317537_
                                                      _lp-tl1744617550_
                                                      (cons _lp-hd1744517548_
                                                            _arg1744717542_))))
                                                 (let ((_arg1744817553_
                                                        (reverse _arg1744717542_)))
                                                   ((lambda (_L17556_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1756617569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1756717571_)
                                  (cons _g1756617569_ _g1756717571_))
                                '()
                                _L17556_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1744817553_))))))
                                   (_loop1744317537_ _target1744017532_ '()))
                                 (_g1743517527_ _g1743817530_)))))
                       (_g1743517527_ _g1743817530_))
                   (_g1743517527_ _g1743817530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743417574_ _L17422_))))))
                                      _hd1739417416_
                                      _hd1739117408_)
                                     (_g1738617400_ _g1738717403_))))
                             (_g1738617400_ _g1738717403_))))
                     (_g1738617400_ _g1738717403_)))))
          (_g1738517577_ _form17384_)))))
  (define gxc#lambda-expr?
    (lambda (_expr17337_)
      (let ((_g1734017350_
             (lambda (_g1734117347_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1734117347_))))
        (let ((_g1733917357_ (lambda (_g1734117353_) ((lambda () '#f)))))
          (let ((_g1733817381_
                 (lambda (_g1734117360_)
                   (if (gx#stx-pair? _g1734117360_)
                       (let ((_e1734317362_ (gx#stx-e _g1734117360_)))
                         (let ((_hd1734417365_ (##car _e1734317362_))
                               (_tl1734517367_ (##cdr _e1734317362_)))
                           (if (gx#identifier? _hd1734417365_)
                               (if (gx#stx-eq? '%#lambda _hd1734417365_)
                                   ((lambda (_L17370_) '#t) _tl1734517367_)
                                   (_g1733917357_ _g1734117360_))
                               (_g1733917357_ _g1734117360_))))
                       (_g1733917357_ _g1734117360_)))))
            (_g1733817381_ _expr17337_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr17290_)
      (let ((_g1729317303_
             (lambda (_g1729417300_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1729417300_))))
        (let ((_g1729217310_ (lambda (_g1729417306_) ((lambda () '#f)))))
          (let ((_g1729117334_
                 (lambda (_g1729417313_)
                   (if (gx#stx-pair? _g1729417313_)
                       (let ((_e1729617315_ (gx#stx-e _g1729417313_)))
                         (let ((_hd1729717318_ (##car _e1729617315_))
                               (_tl1729817320_ (##cdr _e1729617315_)))
                           (if (gx#identifier? _hd1729717318_)
                               (if (gx#stx-eq? '%#case-lambda _hd1729717318_)
                                   ((lambda (_L17323_) '#t) _tl1729817320_)
                                   (_g1729217310_ _g1729417313_))
                               (_g1729217310_ _g1729417313_))))
                       (_g1729217310_ _g1729417313_)))))
            (_g1729117334_ _expr17290_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17159_)
      (let ((_g1716217192_
             (lambda (_g1716317189_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1716317189_))))
        (let ((_g1716117199_ (lambda (_g1716317195_) ((lambda () '#f)))))
          (let ((_g1716017287_
                 (lambda (_g1716317202_)
                   (if (gx#stx-pair? _g1716317202_)
                       (let ((_e1716717204_ (gx#stx-e _g1716317202_)))
                         (let ((_hd1716817207_ (##car _e1716717204_))
                               (_tl1716917209_ (##cdr _e1716717204_)))
                           (if (gx#identifier? _hd1716817207_)
                               (if (gx#stx-eq? '%#let-values _hd1716817207_)
                                   (if (gx#stx-pair? _tl1716917209_)
                                       (let ((_e1717017212_
                                              (gx#stx-e _tl1716917209_)))
                                         (let ((_hd1717117215_
                                                (##car _e1717017212_))
                                               (_tl1717217217_
                                                (##cdr _e1717017212_)))
                                           (if (gx#stx-pair? _hd1717117215_)
                                               (let ((_e1717317220_
                                                      (gx#stx-e
                                                       _hd1717117215_)))
                                                 (let ((_hd1717417223_
                                                        (##car _e1717317220_))
                                                       (_tl1717517225_
                                                        (##cdr _e1717317220_)))
                                                   (if (gx#stx-pair?
                                                        _hd1717417223_)
                                                       (let ((_e1717617228_
                                                              (gx#stx-e
                                                               _hd1717417223_)))
                                                         (let ((_hd1717717231_
                                                                (##car _e1717617228_))
                                                               (_tl1717817233_
                                                                (##cdr _e1717617228_)))
                                                           (if (gx#stx-pair?
                                                                _hd1717717231_)
                                                               (let ((_e1717917236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1717717231_)))
                         (let ((_hd1718017239_ (##car _e1717917236_))
                               (_tl1718117241_ (##cdr _e1717917236_)))
                           (if (gx#stx-null? _tl1718117241_)
                               (if (gx#stx-pair? _tl1717817233_)
                                   (let ((_e1718217244_
                                          (gx#stx-e _tl1717817233_)))
                                     (let ((_hd1718317247_
                                            (##car _e1718217244_))
                                           (_tl1718417249_
                                            (##cdr _e1718217244_)))
                                       (if (gx#stx-null? _tl1718417249_)
                                           (if (gx#stx-null? _tl1717517225_)
                                               (if (gx#stx-pair?
                                                    _tl1717217217_)
                                                   (let ((_e1718517252_
                                                          (gx#stx-e
                                                           _tl1717217217_)))
                                                     (let ((_hd1718617255_
                                                            (##car _e1718517252_))
                                                           (_tl1718717257_
                                                            (##cdr _e1718517252_)))
                                                       (if (gx#stx-null?
                                                            _tl1718717257_)
                                                           ((lambda (_L17260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17261_
                             _L17262_)
                      (if (gx#identifier? _L17262_)
                          (if (gxc#lambda-expr? _L17261_)
                              (gxc#case-lambda-expr? _L17260_)
                              '#f)
                          '#f))
                    _hd1718617255_
                    _hd1718317247_
                    _hd1718017239_)
                   (_g1716117199_ _g1716317202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1716117199_
                                                    _g1716317202_))
                                               (_g1716117199_ _g1716317202_))
                                           (_g1716117199_ _g1716317202_))))
                                   (_g1716117199_ _g1716317202_))
                               (_g1716117199_ _g1716317202_))))
                       (_g1716117199_ _g1716317202_))))
               (_g1716117199_ _g1716317202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1716117199_ _g1716317202_))))
                                       (_g1716117199_ _g1716317202_))
                                   (_g1716117199_ _g1716317202_))
                               (_g1716117199_ _g1716317202_))))
                       (_g1716117199_ _g1716317202_)))))
            (_g1716017287_ _expr17159_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16899
      (lambda (_stx16901_ _id16902_ _clauses16903_ _gensym?16904_)
        ((letrec ((_lp16906_
                   (lambda (_rest16908_ _ids16909_ _impls16910_ _clauses16911_)
                     (let ((_rest1691216920_ _rest16908_))
                       (let ((_E1691516924_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1691216920_))))
                         (let ((_else1691416928_
                                (lambda ()
                                  (values (reverse _ids16909_)
                                          (reverse _impls16910_)
                                          (reverse _clauses16911_)))))
                           (let ((_K1691617133_
                                  (lambda (_rest16931_ _clause16932_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16932_)
                                        (_lp16906_
                                         _rest16931_
                                         _ids16909_
                                         _impls16910_
                                         (cons _clause16932_ _clauses16911_))
                                        (let ((_g1693416945_
                                               (lambda (_g1693516942_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1693516942_))))
                                          (let ((_g1693317130_
                                                 (lambda (_g1693516948_)
                                                   (if (gx#stx-pair?
                                                        _g1693516948_)
                                                       (let ((_e1693816950_
                                                              (gx#stx-e
                                                               _g1693516948_)))
                                                         (let ((_hd1693916953_
                                                                (##car _e1693816950_))
                                                               (_tl1694016955_
                                                                (##cdr _e1693816950_)))
                                                           ((lambda (_L16958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16959_)
                      (let ((_id16976_
                             (make-symbol
                              (gx#stx-e _id16902_)
                              '"__"
                              (length _clauses16911_)
                              (if _gensym?16904_ (gensym '__) '""))))
                        (let ((_id16978_
                               (gx#core-quote-syntax__1
                                _id16976_
                                (gx#stx-source _stx16901_))))
                          (let ((_impl16980_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16959_ _L16958_))
                                  _stx16901_)))
                            (let ((_clause17127_
                                   (let ((_g1698417012_
                                          (lambda (_g1698517009_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1698517009_))))
                                     (let ((_g1698317028_
                                            (lambda (_g1698517015_)
                                              ((lambda (_L17017_)
                                                 (cons _L16959_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16978_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L17017_ '()))
                                              '()))))
                      _stx16901_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1698517015_))))
                                       (let ((_g1698217077_
                                              (lambda (_g1698517031_)
                                                (if (gx#stx-pair/null?
                                                     _g1698517031_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1698517031_)
                                                              '0)
                                                        (let ((_g19998_
                                                               (gx#syntax-split-splice
                                                                _g1698517031_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19998_)))
                      (if (not (fx= _g19999_ 2))
                          (error "Context expects 2 values" _g19999_)))
                    (let ((_target1699817033_ (values-ref _g19998_ 0))
                          (_tl1700017035_ (values-ref _g19998_ 1)))
                      (letrec ((_loop1700117038_
                                (lambda (_hd1699917041_ _arg1700517043_)
                                  (if (gx#stx-pair? _hd1699917041_)
                                      (let ((_e1700217046_
                                             (gx#stx-e _hd1699917041_)))
                                        (let ((_lp-hd1700317049_
                                               (##car _e1700217046_))
                                              (_lp-tl1700417051_
                                               (##cdr _e1700217046_)))
                                          (_loop1700117038_
                                           _lp-tl1700417051_
                                           (cons _lp-hd1700317049_
                                                 _arg1700517043_))))
                                      (let ((_arg1700617054_
                                             (reverse _arg1700517043_)))
                                        ((lambda (_L17057_ _L17058_)
                                           (cons _L16959_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16978_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L17057_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1706917072_
                                                             _g1707017074_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1706917072_ '()))
                    _g1707017074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L17058_))))))
                _stx16901_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1700017035_
                                         _arg1700617054_))))))
                        (_loop1700117038_ _target1699817033_ '())))))
                (_g1698317028_ _g1698517031_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1698317028_
                                                     _g1698517031_)))))
                                         (let ((_g1698117124_
                                                (lambda (_g1698517080_)
                                                  (if (gx#stx-pair/null?
                                                       _g1698517080_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1698517080_)
                        '0)
                  (let ((_g20000_ (gx#syntax-split-splice _g1698517080_ '0)))
                    (begin
                      (let ((_g20001_ (values-count _g20000_)))
                        (if (not (fx= _g20001_ 2))
                            (error "Context expects 2 values" _g20001_)))
                      (let ((_target1698717082_ (values-ref _g20000_ 0))
                            (_tl1698917084_ (values-ref _g20000_ 1)))
                        (if (gx#stx-null? _tl1698917084_)
                            (letrec ((_loop1699017087_
                                      (lambda (_hd1698817090_ _arg1699417092_)
                                        (if (gx#stx-pair? _hd1698817090_)
                                            (let ((_e1699117095_
                                                   (gx#stx-e _hd1698817090_)))
                                              (let ((_lp-hd1699217098_
                                                     (##car _e1699117095_))
                                                    (_lp-tl1699317100_
                                                     (##cdr _e1699117095_)))
                                                (_loop1699017087_
                                                 _lp-tl1699317100_
                                                 (cons _lp-hd1699217098_
                                                       _arg1699417092_))))
                                            (let ((_arg1699517103_
                                                   (reverse _arg1699417092_)))
                                              ((lambda (_L17106_)
                                                 (cons _L16959_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16978_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1711617119_
                                                     _g1711717121_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1711617119_
                                                                '()))
                                                    _g1711717121_))
                                            '()
                                            _L17106_))))
                      _stx16901_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1699517103_))))))
                              (_loop1699017087_ _target1698717082_ '()))
                            (_g1698217077_ _g1698517080_)))))
                  (_g1698217077_ _g1698517080_))
              (_g1698217077_ _g1698517080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1698117124_ _L16959_)))))))
                              (let ()
                                (_lp16906_
                                 _rest16931_
                                 (cons _id16978_ _ids16909_)
                                 (cons _impl16980_ _impls16910_)
                                 (cons _clause17127_ _clauses16911_))))))))
                    _tl1694016955_
                    _hd1693916953_)))
               (_g1693416945_ _g1693516948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1693317130_ _clause16932_)))))))
                             (if (##pair? _rest1691216920_)
                                 (let ((_hd1691717136_
                                        (##car _rest1691216920_))
                                       (_tl1691817138_
                                        (##cdr _rest1691216920_)))
                                   (let ((_clause17141_ _hd1691717136_))
                                     (let ((_rest17143_ _tl1691817138_))
                                       (_K1691617133_
                                        _rest17143_
                                        _clause17141_))))
                                 (_else1691416928_)))))))))
           _lp16906_)
         _clauses16903_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17148_ _id17149_ _clauses17150_)
          (let ((_gensym?17152_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16899
             _stx17148_
             _id17149_
             _clauses17150_
             _gensym?17152_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20003_
          (let ((_g20002_ (length _g20003_)))
            (cond ((fx= _g20002_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20003_))
                  ((fx= _g20002_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16899
                          _g20003_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20003_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16490_)
      (let ((_case-lambda-clause-def16492_
             (lambda (_id16897_ _impl16898_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16897_ '())
                            (cons (gxc#compile-e _impl16898_) '())))
                _stx16490_))))
        (let ((_g1649616541_
               (lambda (_g1649716538_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1649716538_))))
          (let ((_g1649516587_
                 (lambda (_g1649716544_)
                   (if (gx#stx-pair? _g1649716544_)
                       (let ((_e1652816546_ (gx#stx-e _g1649716544_)))
                         (let ((_hd1652916549_ (##car _e1652816546_))
                               (_tl1653016551_ (##cdr _e1652816546_)))
                           (if (gx#stx-pair? _tl1653016551_)
                               (let ((_e1653116554_ (gx#stx-e _tl1653016551_)))
                                 (let ((_hd1653216557_ (##car _e1653116554_))
                                       (_tl1653316559_ (##cdr _e1653116554_)))
                                   (if (gx#stx-pair? _tl1653316559_)
                                       (let ((_e1653416562_
                                              (gx#stx-e _tl1653316559_)))
                                         (let ((_hd1653516565_
                                                (##car _e1653416562_))
                                               (_tl1653616567_
                                                (##cdr _e1653416562_)))
                                           (if (gx#stx-null? _tl1653616567_)
                                               ((lambda (_L16570_ _L16571_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16571_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16570_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16490_))
                                                _hd1653516565_
                                                _hd1653216557_)
                                               (_g1649616541_ _g1649716544_))))
                                       (_g1649616541_ _g1649716544_))))
                               (_g1649616541_ _g1649716544_))))
                       (_g1649616541_ _g1649716544_)))))
            (let ((_g1649416769_
                   (lambda (_g1649716590_)
                     (if (gx#stx-pair? _g1649716590_)
                         (let ((_e1651416592_ (gx#stx-e _g1649716590_)))
                           (let ((_hd1651516595_ (##car _e1651416592_))
                                 (_tl1651616597_ (##cdr _e1651416592_)))
                             (if (gx#stx-pair? _tl1651616597_)
                                 (let ((_e1651716600_
                                        (gx#stx-e _tl1651616597_)))
                                   (let ((_hd1651816603_ (##car _e1651716600_))
                                         (_tl1651916605_
                                          (##cdr _e1651716600_)))
                                     (if (gx#stx-pair? _hd1651816603_)
                                         (let ((_e1652016608_
                                                (gx#stx-e _hd1651816603_)))
                                           (let ((_hd1652116611_
                                                  (##car _e1652016608_))
                                                 (_tl1652216613_
                                                  (##cdr _e1652016608_)))
                                             (if (gx#stx-null? _tl1652216613_)
                                                 (if (gx#stx-pair?
                                                      _tl1651916605_)
                                                     (let ((_e1652316616_
                                                            (gx#stx-e
                                                             _tl1651916605_)))
                                                       (let ((_hd1652416619_
                                                              (##car _e1652316616_))
                                                             (_tl1652516621_
                                                              (##cdr _e1652316616_)))
                                                         (if (gx#stx-null?
                                                              _tl1652516621_)
                                                             ((lambda (_L16624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16625_)
                        (if (if (gx#identifier? _L16625_)
                                (gxc#opt-lambda-expr? _L16624_)
                                '#f)
                            (let ((_g1664116671_
                                   (lambda (_g1664216668_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1664216668_))))
                              (let ((_g1664016766_
                                     (lambda (_g1664216674_)
                                       (if (gx#stx-pair? _g1664216674_)
                                           (let ((_e1664616676_
                                                  (gx#stx-e _g1664216674_)))
                                             (let ((_hd1664716679_
                                                    (##car _e1664616676_))
                                                   (_tl1664816681_
                                                    (##cdr _e1664616676_)))
                                               (if (gx#stx-pair?
                                                    _tl1664816681_)
                                                   (let ((_e1664916684_
                                                          (gx#stx-e
                                                           _tl1664816681_)))
                                                     (let ((_hd1665016687_
                                                            (##car _e1664916684_))
                                                           (_tl1665116689_
                                                            (##cdr _e1664916684_)))
                                                       (if (gx#stx-pair?
                                                            _hd1665016687_)
                                                           (let ((_e1665216692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1665016687_)))
                     (let ((_hd1665316695_ (##car _e1665216692_))
                           (_tl1665416697_ (##cdr _e1665216692_)))
                       (if (gx#stx-pair? _hd1665316695_)
                           (let ((_e1665516700_ (gx#stx-e _hd1665316695_)))
                             (let ((_hd1665616703_ (##car _e1665516700_))
                                   (_tl1665716705_ (##cdr _e1665516700_)))
                               (if (gx#stx-pair? _hd1665616703_)
                                   (let ((_e1665816708_
                                          (gx#stx-e _hd1665616703_)))
                                     (let ((_hd1665916711_
                                            (##car _e1665816708_))
                                           (_tl1666016713_
                                            (##cdr _e1665816708_)))
                                       (if (gx#stx-null? _tl1666016713_)
                                           (if (gx#stx-pair? _tl1665716705_)
                                               (let ((_e1666116716_
                                                      (gx#stx-e
                                                       _tl1665716705_)))
                                                 (let ((_hd1666216719_
                                                        (##car _e1666116716_))
                                                       (_tl1666316721_
                                                        (##cdr _e1666116716_)))
                                                   (if (gx#stx-null?
                                                        _tl1666316721_)
                                                       (if (gx#stx-null?
                                                            _tl1665416697_)
                                                           (if (gx#stx-pair?
                                                                _tl1665116689_)
                                                               (let ((_e1666416724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1665116689_)))
                         (let ((_hd1666516727_ (##car _e1666416724_))
                               (_tl1666616729_ (##cdr _e1666416724_)))
                           (if (gx#stx-null? _tl1666616729_)
                               ((lambda (_L16732_ _L16733_ _L16734_)
                                  (let ((_lambda-id16758_
                                         (make-symbol
                                          (gx#stx-e _L16625_)
                                          '"__"
                                          (gx#stx-e _L16734_))))
                                    (let ((_lambda-id16760_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16758_
                                            (gx#stx-source _stx16490_))))
                                      (let ((_g20004_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16760_)))
                                        (let ((_new-case-lambda-expr16763_
                                               (gxc#apply-expression-subst
                                                _L16732_
                                                _L16734_
                                                _lambda-id16760_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16625_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16760_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16760_ '())
                                (cons (gxc#compile-e _L16733_) '())))
                    _stx16490_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16625_ '())
                                       (cons _new-case-lambda-expr16763_ '())))
                           _stx16490_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16490_))))))))
                                _hd1666516727_
                                _hd1666216719_
                                _hd1665916711_)
                               (_g1664116671_ _g1664216674_))))
                       (_g1664116671_ _g1664216674_))
                   (_g1664116671_ _g1664216674_))
               (_g1664116671_ _g1664216674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1664116671_ _g1664216674_))
                                           (_g1664116671_ _g1664216674_))))
                                   (_g1664116671_ _g1664216674_))))
                           (_g1664116671_ _g1664216674_))))
                   (_g1664116671_ _g1664216674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1664116671_
                                                    _g1664216674_))))
                                           (_g1664116671_ _g1664216674_)))))
                                (_g1664016766_ _L16624_)))
                            (_g1649516587_ _g1649716590_)))
                      _hd1652416619_
                      _hd1652116611_)
                     (_g1649516587_ _g1649716590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1649516587_
                                                      _g1649716590_))
                                                 (_g1649516587_
                                                  _g1649716590_))))
                                         (_g1649516587_ _g1649716590_))))
                                 (_g1649516587_ _g1649716590_))))
                         (_g1649516587_ _g1649716590_)))))
              (let ((_g1649316894_
                     (lambda (_g1649716772_)
                       (if (gx#stx-pair? _g1649716772_)
                           (let ((_e1650016774_ (gx#stx-e _g1649716772_)))
                             (let ((_hd1650116777_ (##car _e1650016774_))
                                   (_tl1650216779_ (##cdr _e1650016774_)))
                               (if (gx#stx-pair? _tl1650216779_)
                                   (let ((_e1650316782_
                                          (gx#stx-e _tl1650216779_)))
                                     (let ((_hd1650416785_
                                            (##car _e1650316782_))
                                           (_tl1650516787_
                                            (##cdr _e1650316782_)))
                                       (if (gx#stx-pair? _hd1650416785_)
                                           (let ((_e1650616790_
                                                  (gx#stx-e _hd1650416785_)))
                                             (let ((_hd1650716793_
                                                    (##car _e1650616790_))
                                                   (_tl1650816795_
                                                    (##cdr _e1650616790_)))
                                               (if (gx#stx-null?
                                                    _tl1650816795_)
                                                   (if (gx#stx-pair?
                                                        _tl1650516787_)
                                                       (let ((_e1650916798_
                                                              (gx#stx-e
                                                               _tl1650516787_)))
                                                         (let ((_hd1651016801_
                                                                (##car _e1650916798_))
                                                               (_tl1651116803_
                                                                (##cdr _e1650916798_)))
                                                           (if (gx#stx-null?
                                                                _tl1651116803_)
                                                               ((lambda (_L16806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16807_)
                          (if (if (gx#identifier? _L16807_)
                                  (gxc#case-lambda-expr? _L16806_)
                                  '#f)
                              (let ((_g1682416838_
                                     (lambda (_g1682516835_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1682516835_))))
                                (let ((_g1682316869_
                                       (lambda (_g1682516841_)
                                         (if (gx#stx-pair? _g1682516841_)
                                             (let ((_e1683116843_
                                                    (gx#stx-e _g1682516841_)))
                                               (let ((_hd1683216846_
                                                      (##car _e1683116843_))
                                                     (_tl1683316848_
                                                      (##cdr _e1683116843_)))
                                                 ((lambda (_L16851_)
                                                    (let ((_g20005_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx16490_
                                                            _L16807_
                                                            _L16851_)))
                                                      (begin
                                                        (let ((_g20006_
                                                               (values-count
                                                                _g20005_)))
                                                          (if (not (fx= _g20006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g20006_)))
                (let ((_ids16861_ (values-ref _g20005_ 0))
                      (_impls16862_ (values-ref _g20005_ 1))
                      (_clauses16863_ (values-ref _g20005_ 2)))
                  (let ((_g20007_ (for-each gx#core-bind-runtime! _ids16861_)))
                    (let ((_defs16866_
                           (map _case-lambda-clause-def16492_
                                _ids16861_
                                _impls16862_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16807_)
                           '" => "
                           (map gxc#identifier-symbol _ids16861_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16807_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16863_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16490_)
                                               '())
                                         _defs16866_))
                           _stx16490_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1683316848_)))
                                             (_g1682416838_ _g1682516841_)))))
                                  (let ((_g1682216891_
                                         (lambda (_g1682516872_)
                                           (if (gx#stx-pair? _g1682516872_)
                                               (let ((_e1682716874_
                                                      (gx#stx-e
                                                       _g1682516872_)))
                                                 (let ((_hd1682816877_
                                                        (##car _e1682716874_))
                                                       (_tl1682916879_
                                                        (##cdr _e1682716874_)))
                                                   ((lambda (_L16882_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16882_)
                  _stx16490_
                  (_g1682316869_ _g1682516872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1682916879_)))
                                               (_g1682316869_
                                                _g1682516872_)))))
                                    (_g1682216891_ _L16806_))))
                              (_g1649416769_ _g1649716772_)))
                        _hd1651016801_
                        _hd1650716793_)
                       (_g1649416769_ _g1649716772_))))
               (_g1649416769_ _g1649716772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1649416769_
                                                    _g1649716772_))))
                                           (_g1649416769_ _g1649716772_))))
                                   (_g1649416769_ _g1649716772_))))
                           (_g1649416769_ _g1649716772_)))))
                (_g1649316894_ _stx16490_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15913_)
      (let ((_bind-e__opt-lambda16472__1995419955_
             (lambda (_id16474_ _expr16475_ _compile?16476_)
               (cons (cons _id16474_ '())
                     (cons (if _compile?16476_
                               (gxc#compile-e _expr16475_)
                               _expr16475_)
                           '())))))
        (let ((_bind-e__0__1995619957_
               (lambda (_id16481_ _expr16482_)
                 (let ((_compile?16484_ '#t))
                   (_bind-e__opt-lambda16472__1995419955_
                    _id16481_
                    _expr16482_
                    _compile?16484_)))))
          (let ((_bind-e15915_
                 (lambda _g20017_
                   (let ((_g20016_ (length _g20017_)))
                     (cond ((fx= _g20016_ 2)
                            (apply _bind-e__0__1995619957_ _g20017_))
                           ((fx= _g20016_ 3)
                            (apply _bind-e__opt-lambda16472__1995419955_
                                   _g20017_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20017_)))))))
            (let ((_compile-bindings15916_
                   (lambda (_rest16058_)
                     ((letrec ((_lp16060_
                                (lambda (_rest16062_
                                         _lift116063_
                                         _lift216064_
                                         _bind16065_)
                                  (let ((_rest1606616074_ _rest16062_))
                                    (let ((_E1606916078_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1606616074_))))
                                      (let ((_else1606816082_
                                             (lambda ()
                                               (values (reverse _lift116063_)
                                                       (reverse _lift216064_)
                                                       (reverse _bind16065_)))))
                                        (let ((_K1607016461_
                                               (lambda (_rest16085_ _hd16086_)
                                                 (let ((_g1609016126_
                                                        (lambda (_g1609116123_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1609116123_))))
                                                   (let ((_g1608916167_
                                                          (lambda (_g1609116129_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1609116129_)
                        (let ((_e1611616131_ (gx#stx-e _g1609116129_)))
                          (let ((_hd1611716134_ (##car _e1611616131_))
                                (_tl1611816136_ (##cdr _e1611616131_)))
                            (if (gx#stx-pair? _tl1611816136_)
                                (let ((_e1611916139_
                                       (gx#stx-e _tl1611816136_)))
                                  (let ((_hd1612016142_ (##car _e1611916139_))
                                        (_tl1612116144_ (##cdr _e1611916139_)))
                                    (if (gx#stx-null? _tl1612116144_)
                                        ((lambda (_L16147_ _L16148_)
                                           (_lp16060_
                                            _rest16085_
                                            _lift116063_
                                            _lift216064_
                                            (cons (cons _L16148_
                                                        (cons (gxc#compile-e
                                                               _L16147_)
                                                              '()))
                                                  _bind16065_)))
                                         _hd1612016142_
                                         _hd1611716134_)
                                        (_g1609016126_ _g1609116129_))))
                                (_g1609016126_ _g1609116129_))))
                        (_g1609016126_ _g1609116129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1608816339_
                                                            (lambda (_g1609116170_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1609116170_)
                          (let ((_e1610516172_ (gx#stx-e _g1609116170_)))
                            (let ((_hd1610616175_ (##car _e1610516172_))
                                  (_tl1610716177_ (##cdr _e1610516172_)))
                              (if (gx#stx-pair? _hd1610616175_)
                                  (let ((_e1610816180_
                                         (gx#stx-e _hd1610616175_)))
                                    (let ((_hd1610916183_
                                           (##car _e1610816180_))
                                          (_tl1611016185_
                                           (##cdr _e1610816180_)))
                                      (if (gx#stx-null? _tl1611016185_)
                                          (if (gx#stx-pair? _tl1610716177_)
                                              (let ((_e1611116188_
                                                     (gx#stx-e
                                                      _tl1610716177_)))
                                                (let ((_hd1611216191_
                                                       (##car _e1611116188_))
                                                      (_tl1611316193_
                                                       (##cdr _e1611116188_)))
                                                  (if (gx#stx-null?
                                                       _tl1611316193_)
                                                      ((lambda (_L16196_
                                                                _L16197_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16197_)
                         (gxc#opt-lambda-expr? _L16196_)
                         '#f)
                     (let ((_g1621116241_
                            (lambda (_g1621216238_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1621216238_))))
                       (let ((_g1621016336_
                              (lambda (_g1621216244_)
                                (if (gx#stx-pair? _g1621216244_)
                                    (let ((_e1621616246_
                                           (gx#stx-e _g1621216244_)))
                                      (let ((_hd1621716249_
                                             (##car _e1621616246_))
                                            (_tl1621816251_
                                             (##cdr _e1621616246_)))
                                        (if (gx#stx-pair? _tl1621816251_)
                                            (let ((_e1621916254_
                                                   (gx#stx-e _tl1621816251_)))
                                              (let ((_hd1622016257_
                                                     (##car _e1621916254_))
                                                    (_tl1622116259_
                                                     (##cdr _e1621916254_)))
                                                (if (gx#stx-pair?
                                                     _hd1622016257_)
                                                    (let ((_e1622216262_
                                                           (gx#stx-e
                                                            _hd1622016257_)))
                                                      (let ((_hd1622316265_
                                                             (##car _e1622216262_))
                                                            (_tl1622416267_
                                                             (##cdr _e1622216262_)))
                                                        (if (gx#stx-pair?
                                                             _hd1622316265_)
                                                            (let ((_e1622516270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1622316265_)))
                      (let ((_hd1622616273_ (##car _e1622516270_))
                            (_tl1622716275_ (##cdr _e1622516270_)))
                        (if (gx#stx-pair? _hd1622616273_)
                            (let ((_e1622816278_ (gx#stx-e _hd1622616273_)))
                              (let ((_hd1622916281_ (##car _e1622816278_))
                                    (_tl1623016283_ (##cdr _e1622816278_)))
                                (if (gx#stx-null? _tl1623016283_)
                                    (if (gx#stx-pair? _tl1622716275_)
                                        (let ((_e1623116286_
                                               (gx#stx-e _tl1622716275_)))
                                          (let ((_hd1623216289_
                                                 (##car _e1623116286_))
                                                (_tl1623316291_
                                                 (##cdr _e1623116286_)))
                                            (if (gx#stx-null? _tl1623316291_)
                                                (if (gx#stx-null?
                                                     _tl1622416267_)
                                                    (if (gx#stx-pair?
                                                         _tl1622116259_)
                                                        (let ((_e1623416294_
                                                               (gx#stx-e
                                                                _tl1622116259_)))
                                                          (let ((_hd1623516297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1623416294_))
                        (_tl1623616299_ (##cdr _e1623416294_)))
                    (if (gx#stx-null? _tl1623616299_)
                        ((lambda (_L16302_ _L16303_ _L16304_)
                           (let ((_lambda-id16328_
                                  (make-symbol
                                   (gx#stx-e _L16197_)
                                   '"__"
                                   (gx#stx-e _L16304_)
                                   (gensym '__))))
                             (let ((_lambda-id16330_
                                    (gx#core-quote-syntax__1
                                     _lambda-id16328_
                                     (gx#stx-source _stx15913_))))
                               (let ((_g20012_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id16330_)))
                                 (let ((_new-case-lambda-expr16333_
                                        (gxc#apply-expression-subst
                                         _L16302_
                                         _L16304_
                                         _lambda-id16330_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L16197_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id16330_))
                                       (_lp16060_
                                        (cons (_bind-e__opt-lambda16472__1995419955_
                                               _L16197_
                                               _new-case-lambda-expr16333_
                                               '#f)
                                              _rest16085_)
                                        (cons (_bind-e__0__1995619957_
                                               _lambda-id16330_
                                               _L16303_)
                                              _lift116063_)
                                        _lift216064_
                                        _bind16065_))))))))
                         _hd1623516297_
                         _hd1623216289_
                         _hd1622916281_)
                        (_g1621116241_ _g1621216244_))))
                (_g1621116241_ _g1621216244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1621116241_
                                                     _g1621216244_))
                                                (_g1621116241_
                                                 _g1621216244_))))
                                        (_g1621116241_ _g1621216244_))
                                    (_g1621116241_ _g1621216244_))))
                            (_g1621116241_ _g1621216244_))))
                    (_g1621116241_ _g1621216244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1621116241_
                                                     _g1621216244_))))
                                            (_g1621116241_ _g1621216244_))))
                                    (_g1621116241_ _g1621216244_)))))
                         (_g1621016336_ _L16196_)))
                     (_g1608916167_ _g1609116170_)))
               _hd1611216191_
               _hd1610916183_)
              (_g1608916167_ _g1609116170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1608916167_ _g1609116170_))
                                          (_g1608916167_ _g1609116170_))))
                                  (_g1608916167_ _g1609116170_))))
                          (_g1608916167_ _g1609116170_)))))
               (let ((_g1608716458_
                      (lambda (_g1609116342_)
                        (if (gx#stx-pair? _g1609116342_)
                            (let ((_e1609416344_ (gx#stx-e _g1609116342_)))
                              (let ((_hd1609516347_ (##car _e1609416344_))
                                    (_tl1609616349_ (##cdr _e1609416344_)))
                                (if (gx#stx-pair? _hd1609516347_)
                                    (let ((_e1609716352_
                                           (gx#stx-e _hd1609516347_)))
                                      (let ((_hd1609816355_
                                             (##car _e1609716352_))
                                            (_tl1609916357_
                                             (##cdr _e1609716352_)))
                                        (if (gx#stx-null? _tl1609916357_)
                                            (if (gx#stx-pair? _tl1609616349_)
                                                (let ((_e1610016360_
                                                       (gx#stx-e
                                                        _tl1609616349_)))
                                                  (let ((_hd1610116363_
                                                         (##car _e1610016360_))
                                                        (_tl1610216365_
                                                         (##cdr _e1610016360_)))
                                                    (if (gx#stx-null?
                                                         _tl1610216365_)
                                                        ((lambda (_L16368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16369_)
                   (if (if (gx#identifier? _L16369_)
                           (gxc#case-lambda-expr? _L16368_)
                           '#f)
                       (let ((_g1638416398_
                              (lambda (_g1638516395_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1638516395_))))
                         (let ((_g1638316433_
                                (lambda (_g1638516401_)
                                  (if (gx#stx-pair? _g1638516401_)
                                      (let ((_e1639116403_
                                             (gx#stx-e _g1638516401_)))
                                        (let ((_hd1639216406_
                                               (##car _e1639116403_))
                                              (_tl1639316408_
                                               (##cdr _e1639116403_)))
                                          ((lambda (_L16411_)
                                             (let ((_g20013_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16899
                                                     _stx15913_
                                                     _L16369_
                                                     _L16411_
                                                     '#t)))
                                               (begin
                                                 (let ((_g20014_
                                                        (values-count
                                                         _g20013_)))
                                                   (if (not (fx= _g20014_ 3))
                                                       (error "Context expects 3 values"
                                                              _g20014_)))
                                                 (let ((_ids16421_
                                                        (values-ref
                                                         _g20013_
                                                         0))
                                                       (_impls16422_
                                                        (values-ref
                                                         _g20013_
                                                         1))
                                                       (_clauses16423_
                                                        (values-ref
                                                         _g20013_
                                                         2)))
                                                   (let ((_g20015_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids16421_)))
                                                     (let ((_xbind16426_
                                                            (map _bind-e15915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids16421_
                         _impls16422_)))
               (let ((_expr*16428_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses16423_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*16430_
                        (_bind-e__opt-lambda16472__1995419955_
                         _L16369_
                         _expr*16428_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L16369_)
                        '" => "
                        (map gxc#identifier-symbol _ids16421_))
                       (_lp16060_
                        _rest16085_
                        _lift116063_
                        (foldl1 cons _lift216064_ _xbind16426_)
                        (cons _bind*16430_ _bind16065_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1639316408_)))
                                      (_g1638416398_ _g1638516401_)))))
                           (let ((_g1638216455_
                                  (lambda (_g1638516436_)
                                    (if (gx#stx-pair? _g1638516436_)
                                        (let ((_e1638716438_
                                               (gx#stx-e _g1638516436_)))
                                          (let ((_hd1638816441_
                                                 (##car _e1638716438_))
                                                (_tl1638916443_
                                                 (##cdr _e1638716438_)))
                                            ((lambda (_L16446_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L16446_)
                                                   (_lp16060_
                                                    _rest16085_
                                                    _lift116063_
                                                    _lift216064_
                                                    (cons (_bind-e__opt-lambda16472__1995419955_
                                                           _L16369_
                                                           _L16368_
                                                           '#f)
                                                          _bind16065_))
                                                   (_g1638316433_
                                                    _g1638516436_)))
                                             _tl1638916443_)))
                                        (_g1638316433_ _g1638516436_)))))
                             (_g1638216455_ _L16368_))))
                       (_g1608816339_ _g1609116342_)))
                 _hd1610116363_
                 _hd1609816355_)
                (_g1608816339_ _g1609116342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1608816339_ _g1609116342_))
                                            (_g1608816339_ _g1609116342_))))
                                    (_g1608816339_ _g1609116342_))))
                            (_g1608816339_ _g1609116342_)))))
                 (_g1608716458_ _hd16086_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1606616074_)
                                              (let ((_hd1607116464_
                                                     (##car _rest1606616074_))
                                                    (_tl1607216466_
                                                     (##cdr _rest1606616074_)))
                                                (let ((_hd16469_
                                                       _hd1607116464_))
                                                  (let ((_rest16471_
                                                         _tl1607216466_))
                                                    (_K1607016461_
                                                     _rest16471_
                                                     _hd16469_))))
                                              (_else1606816082_)))))))))
                        _lp16060_)
                      _rest16058_
                      '()
                      '()
                      '()))))
              (let ((_g1591915945_
                     (lambda (_g1592015942_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1592015942_))))
                (let ((_g1591815952_
                       (lambda (_g1592015948_)
                         ((lambda () (gxc#xform-let-values% _stx15913_))))))
                  (let ((_g1591716055_
                         (lambda (_g1592015955_)
                           (if (gx#stx-pair? _g1592015955_)
                               (let ((_e1592315957_ (gx#stx-e _g1592015955_)))
                                 (let ((_hd1592415960_ (##car _e1592315957_))
                                       (_tl1592515962_ (##cdr _e1592315957_)))
                                   (if (gx#stx-pair? _tl1592515962_)
                                       (let ((_e1592615965_
                                              (gx#stx-e _tl1592515962_)))
                                         (let ((_hd1592715968_
                                                (##car _e1592615965_))
                                               (_tl1592815970_
                                                (##cdr _e1592615965_)))
                                           (if (gx#stx-pair/null?
                                                _hd1592715968_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1592715968_)
                                                         '0)
                                                   (let ((_g20008_
                                                          (gx#syntax-split-splice
                                                           _hd1592715968_
                                                           '0)))
                                                     (begin
                                                       (let ((_g20009_
                                                              (values-count
                                                               _g20008_)))
                                                         (if (not (fx= _g20009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g20009_)))
               (let ((_target1592915973_ (values-ref _g20008_ 0))
                     (_tl1593115975_ (values-ref _g20008_ 1)))
                 (if (gx#stx-null? _tl1593115975_)
                     (letrec ((_loop1593215978_
                               (lambda (_hd1593015981_ _bind1593615983_)
                                 (if (gx#stx-pair? _hd1593015981_)
                                     (let ((_e1593315986_
                                            (gx#stx-e _hd1593015981_)))
                                       (let ((_lp-hd1593415989_
                                              (##car _e1593315986_))
                                             (_lp-tl1593515991_
                                              (##cdr _e1593315986_)))
                                         (_loop1593215978_
                                          _lp-tl1593515991_
                                          (cons _lp-hd1593415989_
                                                _bind1593615983_))))
                                     (let ((_bind1593715994_
                                            (reverse _bind1593615983_)))
                                       (if (gx#stx-pair? _tl1592815970_)
                                           (let ((_e1593815997_
                                                  (gx#stx-e _tl1592815970_)))
                                             (let ((_hd1593916000_
                                                    (##car _e1593815997_))
                                                   (_tl1594016002_
                                                    (##cdr _e1593815997_)))
                                               (if (gx#stx-null?
                                                    _tl1594016002_)
                                                   ((lambda (_L16005_ _L16006_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1602616029_ _g1602716031_)
                                      (cons _g1602616029_ _g1602716031_))
                                    '()
                                    _L16006_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g20010_
                            (_compile-bindings15916_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1603416037_ _g1603516039_)
                                         (cons _g1603416037_ _g1603516039_))
                                       '()
                                       _L16006_)))))
                       (begin
                         (let ((_g20011_ (values-count _g20010_)))
                           (if (not (fx= _g20011_ 3))
                               (error "Context expects 3 values" _g20011_)))
                         (let ((_lift116042_ (values-ref _g20010_ 0))
                               (_lift216043_ (values-ref _g20010_ 1))
                               (_hd16044_ (values-ref _g20010_ 2)))
                           (let ((_body16046_ (gxc#compile-e _L16005_)))
                             (let ((_expr16048_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd16044_
                                                 (cons _body16046_ '())))
                                     _stx15913_)))
                               (let ((_expr16050_
                                      (if (null? _lift216043_)
                                          _expr16048_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift216043_
                                                       (cons _expr16048_ '())))
                                           _stx15913_))))
                                 (let ((_expr16052_
                                        (if (null? _lift116042_)
                                            _expr16050_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift116042_
                                                         (cons _expr16050_
                                                               '())))
                                             _stx15913_))))
                                   (let () _expr16052_)))))))))
                   gx#current-expander-context
                   (let ((__obj19964 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19964)
                       __obj19964)))
                  (_g1591815952_ _g1592015955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1593916000_
                                                    _bind1593715994_)
                                                   (_g1591815952_
                                                    _g1592015955_))))
                                           (_g1591815952_ _g1592015955_)))))))
                       (_loop1593215978_ _target1592915973_ '()))
                     (_g1591815952_ _g1592015955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1591815952_
                                                    _g1592015955_))
                                               (_g1591815952_ _g1592015955_))))
                                       (_g1591815952_ _g1592015955_))))
                               (_g1591815952_ _g1592015955_)))))
                    (_g1591716055_ _stx15913_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15345_)
      (let ((_bind-e__opt-lambda15895__1995919960_
             (lambda (_id15897_ _expr15898_ _compile?15899_)
               (cons (cons _id15897_ '())
                     (cons (if _compile?15899_
                               (gxc#compile-e _expr15898_)
                               _expr15898_)
                           '())))))
        (let ((_bind-e__0__1996119962_
               (lambda (_id15904_ _expr15905_)
                 (let ((_compile?15907_ '#t))
                   (_bind-e__opt-lambda15895__1995919960_
                    _id15904_
                    _expr15905_
                    _compile?15907_)))))
          (let ((_bind-e15347_
                 (lambda _g20025_
                   (let ((_g20024_ (length _g20025_)))
                     (cond ((fx= _g20024_ 2)
                            (apply _bind-e__0__1996119962_ _g20025_))
                           ((fx= _g20024_ 3)
                            (apply _bind-e__opt-lambda15895__1995919960_
                                   _g20025_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20025_)))))))
            (let ((_compile-bindings15348_
                   (lambda (_rest15483_)
                     ((letrec ((_lp15485_
                                (lambda (_rest15487_ _bind15488_)
                                  (let ((_rest1548915497_ _rest15487_))
                                    (let ((_E1549215501_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1548915497_))))
                                      (let ((_else1549115505_
                                             (lambda ()
                                               (reverse _bind15488_))))
                                        (let ((_K1549315884_
                                               (lambda (_rest15508_ _hd15509_)
                                                 (let ((_g1551315549_
                                                        (lambda (_g1551415546_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1551415546_))))
                                                   (let ((_g1551215590_
                                                          (lambda (_g1551415552_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1551415552_)
                        (let ((_e1553915554_ (gx#stx-e _g1551415552_)))
                          (let ((_hd1554015557_ (##car _e1553915554_))
                                (_tl1554115559_ (##cdr _e1553915554_)))
                            (if (gx#stx-pair? _tl1554115559_)
                                (let ((_e1554215562_
                                       (gx#stx-e _tl1554115559_)))
                                  (let ((_hd1554315565_ (##car _e1554215562_))
                                        (_tl1554415567_ (##cdr _e1554215562_)))
                                    (if (gx#stx-null? _tl1554415567_)
                                        ((lambda (_L15570_ _L15571_)
                                           (_lp15485_
                                            _rest15508_
                                            (cons (cons _L15571_
                                                        (cons (gxc#compile-e
                                                               _L15570_)
                                                              '()))
                                                  _bind15488_)))
                                         _hd1554315565_
                                         _hd1554015557_)
                                        (_g1551315549_ _g1551415552_))))
                                (_g1551315549_ _g1551415552_))))
                        (_g1551315549_ _g1551415552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1551115762_
                                                            (lambda (_g1551415593_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1551415593_)
                          (let ((_e1552815595_ (gx#stx-e _g1551415593_)))
                            (let ((_hd1552915598_ (##car _e1552815595_))
                                  (_tl1553015600_ (##cdr _e1552815595_)))
                              (if (gx#stx-pair? _hd1552915598_)
                                  (let ((_e1553115603_
                                         (gx#stx-e _hd1552915598_)))
                                    (let ((_hd1553215606_
                                           (##car _e1553115603_))
                                          (_tl1553315608_
                                           (##cdr _e1553115603_)))
                                      (if (gx#stx-null? _tl1553315608_)
                                          (if (gx#stx-pair? _tl1553015600_)
                                              (let ((_e1553415611_
                                                     (gx#stx-e
                                                      _tl1553015600_)))
                                                (let ((_hd1553515614_
                                                       (##car _e1553415611_))
                                                      (_tl1553615616_
                                                       (##cdr _e1553415611_)))
                                                  (if (gx#stx-null?
                                                       _tl1553615616_)
                                                      ((lambda (_L15619_
                                                                _L15620_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15620_)
                         (gxc#opt-lambda-expr? _L15619_)
                         '#f)
                     (let ((_g1563415664_
                            (lambda (_g1563515661_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1563515661_))))
                       (let ((_g1563315759_
                              (lambda (_g1563515667_)
                                (if (gx#stx-pair? _g1563515667_)
                                    (let ((_e1563915669_
                                           (gx#stx-e _g1563515667_)))
                                      (let ((_hd1564015672_
                                             (##car _e1563915669_))
                                            (_tl1564115674_
                                             (##cdr _e1563915669_)))
                                        (if (gx#stx-pair? _tl1564115674_)
                                            (let ((_e1564215677_
                                                   (gx#stx-e _tl1564115674_)))
                                              (let ((_hd1564315680_
                                                     (##car _e1564215677_))
                                                    (_tl1564415682_
                                                     (##cdr _e1564215677_)))
                                                (if (gx#stx-pair?
                                                     _hd1564315680_)
                                                    (let ((_e1564515685_
                                                           (gx#stx-e
                                                            _hd1564315680_)))
                                                      (let ((_hd1564615688_
                                                             (##car _e1564515685_))
                                                            (_tl1564715690_
                                                             (##cdr _e1564515685_)))
                                                        (if (gx#stx-pair?
                                                             _hd1564615688_)
                                                            (let ((_e1564815693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1564615688_)))
                      (let ((_hd1564915696_ (##car _e1564815693_))
                            (_tl1565015698_ (##cdr _e1564815693_)))
                        (if (gx#stx-pair? _hd1564915696_)
                            (let ((_e1565115701_ (gx#stx-e _hd1564915696_)))
                              (let ((_hd1565215704_ (##car _e1565115701_))
                                    (_tl1565315706_ (##cdr _e1565115701_)))
                                (if (gx#stx-null? _tl1565315706_)
                                    (if (gx#stx-pair? _tl1565015698_)
                                        (let ((_e1565415709_
                                               (gx#stx-e _tl1565015698_)))
                                          (let ((_hd1565515712_
                                                 (##car _e1565415709_))
                                                (_tl1565615714_
                                                 (##cdr _e1565415709_)))
                                            (if (gx#stx-null? _tl1565615714_)
                                                (if (gx#stx-null?
                                                     _tl1564715690_)
                                                    (if (gx#stx-pair?
                                                         _tl1564415682_)
                                                        (let ((_e1565715717_
                                                               (gx#stx-e
                                                                _tl1564415682_)))
                                                          (let ((_hd1565815720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1565715717_))
                        (_tl1565915722_ (##cdr _e1565715717_)))
                    (if (gx#stx-null? _tl1565915722_)
                        ((lambda (_L15725_ _L15726_ _L15727_)
                           (let ((_lambda-id15751_
                                  (make-symbol
                                   (gx#stx-e _L15620_)
                                   '"__"
                                   (gx#stx-e _L15727_)
                                   (gensym '__))))
                             (let ((_lambda-id15753_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15751_
                                     (gx#stx-source _stx15345_))))
                               (let ((_g20020_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15753_)))
                                 (let ((_new-case-lambda-expr15756_
                                        (gxc#apply-expression-subst
                                         _L15725_
                                         _L15727_
                                         _lambda-id15753_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15620_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15753_))
                                       (_lp15485_
                                        (cons (_bind-e__opt-lambda15895__1995919960_
                                               _L15620_
                                               _new-case-lambda-expr15756_
                                               '#f)
                                              _rest15508_)
                                        (cons (_bind-e__0__1996119962_
                                               _lambda-id15753_
                                               _L15726_)
                                              _bind15488_)))))))))
                         _hd1565815720_
                         _hd1565515712_
                         _hd1565215704_)
                        (_g1563415664_ _g1563515667_))))
                (_g1563415664_ _g1563515667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563415664_
                                                     _g1563515667_))
                                                (_g1563415664_
                                                 _g1563515667_))))
                                        (_g1563415664_ _g1563515667_))
                                    (_g1563415664_ _g1563515667_))))
                            (_g1563415664_ _g1563515667_))))
                    (_g1563415664_ _g1563515667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563415664_
                                                     _g1563515667_))))
                                            (_g1563415664_ _g1563515667_))))
                                    (_g1563415664_ _g1563515667_)))))
                         (_g1563315759_ _L15619_)))
                     (_g1551215590_ _g1551415593_)))
               _hd1553515614_
               _hd1553215606_)
              (_g1551215590_ _g1551415593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1551215590_ _g1551415593_))
                                          (_g1551215590_ _g1551415593_))))
                                  (_g1551215590_ _g1551415593_))))
                          (_g1551215590_ _g1551415593_)))))
               (let ((_g1551015881_
                      (lambda (_g1551415765_)
                        (if (gx#stx-pair? _g1551415765_)
                            (let ((_e1551715767_ (gx#stx-e _g1551415765_)))
                              (let ((_hd1551815770_ (##car _e1551715767_))
                                    (_tl1551915772_ (##cdr _e1551715767_)))
                                (if (gx#stx-pair? _hd1551815770_)
                                    (let ((_e1552015775_
                                           (gx#stx-e _hd1551815770_)))
                                      (let ((_hd1552115778_
                                             (##car _e1552015775_))
                                            (_tl1552215780_
                                             (##cdr _e1552015775_)))
                                        (if (gx#stx-null? _tl1552215780_)
                                            (if (gx#stx-pair? _tl1551915772_)
                                                (let ((_e1552315783_
                                                       (gx#stx-e
                                                        _tl1551915772_)))
                                                  (let ((_hd1552415786_
                                                         (##car _e1552315783_))
                                                        (_tl1552515788_
                                                         (##cdr _e1552315783_)))
                                                    (if (gx#stx-null?
                                                         _tl1552515788_)
                                                        ((lambda (_L15791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15792_)
                   (if (if (gx#identifier? _L15792_)
                           (gxc#case-lambda-expr? _L15791_)
                           '#f)
                       (let ((_g1580715821_
                              (lambda (_g1580815818_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1580815818_))))
                         (let ((_g1580615856_
                                (lambda (_g1580815824_)
                                  (if (gx#stx-pair? _g1580815824_)
                                      (let ((_e1581415826_
                                             (gx#stx-e _g1580815824_)))
                                        (let ((_hd1581515829_
                                               (##car _e1581415826_))
                                              (_tl1581615831_
                                               (##cdr _e1581415826_)))
                                          ((lambda (_L15834_)
                                             (let ((_g20021_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16899
                                                     _stx15345_
                                                     _L15792_
                                                     _L15834_
                                                     '#t)))
                                               (begin
                                                 (let ((_g20022_
                                                        (values-count
                                                         _g20021_)))
                                                   (if (not (fx= _g20022_ 3))
                                                       (error "Context expects 3 values"
                                                              _g20022_)))
                                                 (let ((_ids15844_
                                                        (values-ref
                                                         _g20021_
                                                         0))
                                                       (_impls15845_
                                                        (values-ref
                                                         _g20021_
                                                         1))
                                                       (_clauses15846_
                                                        (values-ref
                                                         _g20021_
                                                         2)))
                                                   (let ((_g20023_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15844_)))
                                                     (let ((_xbind15849_
                                                            (map _bind-e15347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15844_
                         _impls15845_)))
               (let ((_expr*15851_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15846_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15853_
                        (_bind-e__opt-lambda15895__1995919960_
                         _L15792_
                         _expr*15851_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15792_)
                        '" => "
                        (map gxc#identifier-symbol _ids15844_))
                       (_lp15485_
                        _rest15508_
                        (cons _bind*15853_
                              (foldl1 cons
                                      _bind15488_
                                      _xbind15849_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1581615831_)))
                                      (_g1580715821_ _g1580815824_)))))
                           (let ((_g1580515878_
                                  (lambda (_g1580815859_)
                                    (if (gx#stx-pair? _g1580815859_)
                                        (let ((_e1581015861_
                                               (gx#stx-e _g1580815859_)))
                                          (let ((_hd1581115864_
                                                 (##car _e1581015861_))
                                                (_tl1581215866_
                                                 (##cdr _e1581015861_)))
                                            ((lambda (_L15869_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15869_)
                                                   (_lp15485_
                                                    _rest15508_
                                                    (cons (_bind-e__opt-lambda15895__1995919960_
                                                           _L15792_
                                                           _L15791_
                                                           '#f)
                                                          _bind15488_))
                                                   (_g1580615856_
                                                    _g1580815859_)))
                                             _tl1581215866_)))
                                        (_g1580615856_ _g1580815859_)))))
                             (_g1580515878_ _L15791_))))
                       (_g1551115762_ _g1551415765_)))
                 _hd1552415786_
                 _hd1552115778_)
                (_g1551115762_ _g1551415765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1551115762_ _g1551415765_))
                                            (_g1551115762_ _g1551415765_))))
                                    (_g1551115762_ _g1551415765_))))
                            (_g1551115762_ _g1551415765_)))))
                 (_g1551015881_ _hd15509_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1548915497_)
                                              (let ((_hd1549415887_
                                                     (##car _rest1548915497_))
                                                    (_tl1549515889_
                                                     (##cdr _rest1548915497_)))
                                                (let ((_hd15892_
                                                       _hd1549415887_))
                                                  (let ((_rest15894_
                                                         _tl1549515889_))
                                                    (_K1549315884_
                                                     _rest15894_
                                                     _hd15892_))))
                                              (_else1549115505_)))))))))
                        _lp15485_)
                      _rest15483_
                      '()))))
              (let ((_g1535115378_
                     (lambda (_g1535215375_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1535215375_))))
                (let ((_g1535015385_
                       (lambda (_g1535215381_)
                         ((lambda () (gxc#xform-let-values% _stx15345_))))))
                  (let ((_g1534915480_
                         (lambda (_g1535215388_)
                           (if (gx#stx-pair? _g1535215388_)
                               (let ((_e1535615390_ (gx#stx-e _g1535215388_)))
                                 (let ((_hd1535715393_ (##car _e1535615390_))
                                       (_tl1535815395_ (##cdr _e1535615390_)))
                                   (if (gx#stx-pair? _tl1535815395_)
                                       (let ((_e1535915398_
                                              (gx#stx-e _tl1535815395_)))
                                         (let ((_hd1536015401_
                                                (##car _e1535915398_))
                                               (_tl1536115403_
                                                (##cdr _e1535915398_)))
                                           (if (gx#stx-pair/null?
                                                _hd1536015401_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1536015401_)
                                                         '0)
                                                   (let ((_g20018_
                                                          (gx#syntax-split-splice
                                                           _hd1536015401_
                                                           '0)))
                                                     (begin
                                                       (let ((_g20019_
                                                              (values-count
                                                               _g20018_)))
                                                         (if (not (fx= _g20019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g20019_)))
               (let ((_target1536215406_ (values-ref _g20018_ 0))
                     (_tl1536415408_ (values-ref _g20018_ 1)))
                 (if (gx#stx-null? _tl1536415408_)
                     (letrec ((_loop1536515411_
                               (lambda (_hd1536315414_ _bind1536915416_)
                                 (if (gx#stx-pair? _hd1536315414_)
                                     (let ((_e1536615419_
                                            (gx#stx-e _hd1536315414_)))
                                       (let ((_lp-hd1536715422_
                                              (##car _e1536615419_))
                                             (_lp-tl1536815424_
                                              (##cdr _e1536615419_)))
                                         (_loop1536515411_
                                          _lp-tl1536815424_
                                          (cons _lp-hd1536715422_
                                                _bind1536915416_))))
                                     (let ((_bind1537015427_
                                            (reverse _bind1536915416_)))
                                       (if (gx#stx-pair? _tl1536115403_)
                                           (let ((_e1537115430_
                                                  (gx#stx-e _tl1536115403_)))
                                             (let ((_hd1537215433_
                                                    (##car _e1537115430_))
                                                   (_tl1537315435_
                                                    (##cdr _e1537115430_)))
                                               (if (gx#stx-null?
                                                    _tl1537315435_)
                                                   ((lambda (_L15438_
                                                             _L15439_
                                                             _L15440_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1546115464_ _g1546215466_)
                                      (cons _g1546115464_ _g1546215466_))
                                    '()
                                    _L15439_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd15477_
                            (_compile-bindings15348_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1546915472_ _g1547015474_)
                                         (cons _g1546915472_ _g1547015474_))
                                       '()
                                       _L15439_))))
                           (_body15478_ (gxc#compile-e _L15438_)))
                       (gxc#xform-wrap-source
                        (cons _L15440_ (cons _hd15477_ (cons _body15478_ '())))
                        _stx15345_)))
                   gx#current-expander-context
                   (let ((__obj19965 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19965)
                       __obj19965)))
                  (_g1535015385_ _g1535215388_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1537215433_
                                                    _bind1537015427_
                                                    _hd1535715393_)
                                                   (_g1535015385_
                                                    _g1535215388_))))
                                           (_g1535015385_ _g1535215388_)))))))
                       (_loop1536515411_ _target1536215406_ '()))
                     (_g1535015385_ _g1535215388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1535015385_
                                                    _g1535215388_))
                                               (_g1535015385_ _g1535215388_))))
                                       (_g1535015385_ _g1535215388_))))
                               (_g1535015385_ _g1535215388_)))))
                    (_g1534915480_ _stx15345_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15266_)
      (let ((_g1526915286_
             (lambda (_g1527015283_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1527015283_))))
        (let ((_g1526815293_ (lambda (_g1527015289_) ((lambda () '#f)))))
          (let ((_g1526715342_
                 (lambda (_g1527015296_)
                   (if (gx#stx-pair? _g1527015296_)
                       (let ((_e1527315298_ (gx#stx-e _g1527015296_)))
                         (let ((_hd1527415301_ (##car _e1527315298_))
                               (_tl1527515303_ (##cdr _e1527315298_)))
                           (if (gx#stx-pair? _hd1527415301_)
                               (let ((_e1527615306_ (gx#stx-e _hd1527415301_)))
                                 (let ((_hd1527715309_ (##car _e1527615306_))
                                       (_tl1527815311_ (##cdr _e1527615306_)))
                                   (if (gx#stx-null? _tl1527815311_)
                                       (if (gx#stx-pair? _tl1527515303_)
                                           (let ((_e1527915314_
                                                  (gx#stx-e _tl1527515303_)))
                                             (let ((_hd1528015317_
                                                    (##car _e1527915314_))
                                                   (_tl1528115319_
                                                    (##cdr _e1527915314_)))
                                               (if (gx#stx-null?
                                                    _tl1528115319_)
                                                   ((lambda (_L15322_ _L15323_)
                                                      (if (gx#identifier?
                                                           _L15323_)
                                                          (let ((_$e15339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L15322_)))
                    (if _$e15339_ _$e15339_ (gxc#opt-lambda-expr? _L15322_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1528015317_
                                                    _hd1527715309_)
                                                   (_g1526815293_
                                                    _g1527015296_))))
                                           (_g1526815293_ _g1527015296_))
                                       (_g1526815293_ _g1527015296_))))
                               (_g1526815293_ _g1527015296_))))
                       (_g1526815293_ _g1527015296_)))))
            (_g1526715342_ _bind15266_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15204_ _id15205_ _new-id15206_)
      (let ((_g1520915222_
             (lambda (_g1521015219_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1521015219_))))
        (let ((_g1520815229_
               (lambda (_g1521015225_) ((lambda () _stx15204_)))))
          (let ((_g1520715263_
                 (lambda (_g1521015232_)
                   (if (gx#stx-pair? _g1521015232_)
                       (let ((_e1521215234_ (gx#stx-e _g1521015232_)))
                         (let ((_hd1521315237_ (##car _e1521215234_))
                               (_tl1521415239_ (##cdr _e1521215234_)))
                           (if (gx#stx-pair? _tl1521415239_)
                               (let ((_e1521515242_ (gx#stx-e _tl1521415239_)))
                                 (let ((_hd1521615245_ (##car _e1521515242_))
                                       (_tl1521715247_ (##cdr _e1521515242_)))
                                   (if (gx#stx-null? _tl1521715247_)
                                       ((lambda (_L15250_)
                                          (if (gx#free-identifier=?
                                               _L15250_
                                               _id15205_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id15206_ '()))
                                               _stx15204_)
                                              (_g1520815229_ _g1521015232_)))
                                        _hd1521615245_)
                                       (_g1520815229_ _g1521015232_))))
                               (_g1520815229_ _g1521015232_))))
                       (_g1520815229_ _g1521015232_)))))
            (_g1520715263_ _stx15204_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15060_)
      (let ((_g1506315094_
             (lambda (_g1506415091_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1506415091_))))
        (let ((_g1506215139_
               (lambda (_g1506415097_)
                 (if (gx#stx-pair? _g1506415097_)
                     (let ((_e1508115099_ (gx#stx-e _g1506415097_)))
                       (let ((_hd1508215102_ (##car _e1508115099_))
                             (_tl1508315104_ (##cdr _e1508115099_)))
                         (if (gx#stx-pair? _tl1508315104_)
                             (let ((_e1508415107_ (gx#stx-e _tl1508315104_)))
                               (let ((_hd1508515110_ (##car _e1508415107_))
                                     (_tl1508615112_ (##cdr _e1508415107_)))
                                 (if (gx#stx-pair? _tl1508615112_)
                                     (let ((_e1508715115_
                                            (gx#stx-e _tl1508615112_)))
                                       (let ((_hd1508815118_
                                              (##car _e1508715115_))
                                             (_tl1508915120_
                                              (##cdr _e1508715115_)))
                                         (if (gx#stx-null? _tl1508915120_)
                                             ((lambda (_L15123_ _L15124_)
                                                (gxc#compile-e _L15123_))
                                              _hd1508815118_
                                              _hd1508515110_)
                                             (_g1506315094_ _g1506415097_))))
                                     (_g1506315094_ _g1506415097_))))
                             (_g1506315094_ _g1506415097_))))
                     (_g1506315094_ _g1506415097_)))))
          (let ((_g1506115201_
                 (lambda (_g1506415142_)
                   (if (gx#stx-pair? _g1506415142_)
                       (let ((_e1506715144_ (gx#stx-e _g1506415142_)))
                         (let ((_hd1506815147_ (##car _e1506715144_))
                               (_tl1506915149_ (##cdr _e1506715144_)))
                           (if (gx#stx-pair? _tl1506915149_)
                               (let ((_e1507015152_ (gx#stx-e _tl1506915149_)))
                                 (let ((_hd1507115155_ (##car _e1507015152_))
                                       (_tl1507215157_ (##cdr _e1507015152_)))
                                   (if (gx#stx-pair? _hd1507115155_)
                                       (let ((_e1507315160_
                                              (gx#stx-e _hd1507115155_)))
                                         (let ((_hd1507415163_
                                                (##car _e1507315160_))
                                               (_tl1507515165_
                                                (##cdr _e1507315160_)))
                                           (if (gx#stx-null? _tl1507515165_)
                                               (if (gx#stx-pair?
                                                    _tl1507215157_)
                                                   (let ((_e1507615168_
                                                          (gx#stx-e
                                                           _tl1507215157_)))
                                                     (let ((_hd1507715171_
                                                            (##car _e1507615168_))
                                                           (_tl1507815173_
                                                            (##cdr _e1507615168_)))
                                                       (if (gx#stx-null?
                                                            _tl1507815173_)
                                                           ((lambda (_L15176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15177_)
                      (if (gx#identifier? _L15177_)
                          (let ((_sym15193_
                                 (gxc#generate-runtime-binding-id _L15177_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym15193_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym15193_)
                                  (let ((_type1519415196_
                                         (gxc#apply-basic-expression-type
                                          _L15176_)))
                                    (if _type1519415196_
                                        (let ((_type15199_ _type1519415196_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym15193_
                                           _type15199_))
                                        '#f)))
                              (gxc#compile-e _L15176_)))
                          (_g1506215139_ _g1506415142_)))
                    _hd1507715171_
                    _hd1507415163_)
                   (_g1506215139_ _g1506415142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1506215139_
                                                    _g1506415142_))
                                               (_g1506215139_ _g1506415142_))))
                                       (_g1506215139_ _g1506415142_))))
                               (_g1506215139_ _g1506415142_))))
                       (_g1506215139_ _g1506415142_)))))
            (_g1506115201_ _stx15060_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14845_)
      (let ((_collect-e14847_
             (lambda (_hd15004_ _expr15005_)
               (let ((_g1500815018_
                      (lambda (_g1500915015_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1500915015_))))
                 (let ((_g1500715025_
                        (lambda (_g1500915021_) ((lambda () '#!void)))))
                   (let ((_g1500615057_
                          (lambda (_g1500915028_)
                            (if (gx#stx-pair? _g1500915028_)
                                (let ((_e1501115030_ (gx#stx-e _g1500915028_)))
                                  (let ((_hd1501215033_ (##car _e1501115030_))
                                        (_tl1501315035_ (##cdr _e1501115030_)))
                                    (if (gx#stx-null? _tl1501315035_)
                                        ((lambda (_L15038_)
                                           (if (gx#identifier? _L15038_)
                                               (let ((_sym15049_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15038_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15049_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15049_)
                                                     (let ((_type1505015052_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15005_)))
                                                       (if _type1505015052_
                                                           (let ((_type15055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1505015052_))
                     (gxc#optimizer-declare-type!__opt-lambda19738
                      _sym15049_
                      _type15055_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1500715025_ _g1500915028_)))
                                         _hd1501215033_)
                                        (_g1500715025_ _g1500915028_))))
                                (_g1500715025_ _g1500915028_)))))
                     (_g1500615057_ _hd15004_)))))))
        (let ((_g1484914884_
               (lambda (_g1485014881_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1485014881_))))
          (let ((_g1484815001_
                 (lambda (_g1485014887_)
                   (if (gx#stx-pair? _g1485014887_)
                       (let ((_e1485414889_ (gx#stx-e _g1485014887_)))
                         (let ((_hd1485514892_ (##car _e1485414889_))
                               (_tl1485614894_ (##cdr _e1485414889_)))
                           (if (gx#stx-pair? _tl1485614894_)
                               (let ((_e1485714897_ (gx#stx-e _tl1485614894_)))
                                 (let ((_hd1485814900_ (##car _e1485714897_))
                                       (_tl1485914902_ (##cdr _e1485714897_)))
                                   (if (gx#stx-pair/null? _hd1485814900_)
                                       (if (fx>= (gx#stx-length _hd1485814900_)
                                                 '0)
                                           (let ((_g20026_
                                                  (gx#syntax-split-splice
                                                   _hd1485814900_
                                                   '0)))
                                             (begin
                                               (let ((_g20027_
                                                      (values-count _g20026_)))
                                                 (if (not (fx= _g20027_ 2))
                                                     (error "Context expects 2 values"
                                                            _g20027_)))
                                               (let ((_target1486014905_
                                                      (values-ref _g20026_ 0))
                                                     (_tl1486214907_
                                                      (values-ref _g20026_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1486214907_)
                                                     (letrec ((_loop1486314910_
                                                               (lambda (_hd1486114913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1486714915_
                                _hd1486814917_)
                         (if (gx#stx-pair? _hd1486114913_)
                             (let ((_e1486414920_ (gx#stx-e _hd1486114913_)))
                               (let ((_lp-hd1486514923_ (##car _e1486414920_))
                                     (_lp-tl1486614925_ (##cdr _e1486414920_)))
                                 (if (gx#stx-pair? _lp-hd1486514923_)
                                     (let ((_e1487114928_
                                            (gx#stx-e _lp-hd1486514923_)))
                                       (let ((_hd1487214931_
                                              (##car _e1487114928_))
                                             (_tl1487314933_
                                              (##cdr _e1487114928_)))
                                         (if (gx#stx-pair? _tl1487314933_)
                                             (let ((_e1487414936_
                                                    (gx#stx-e _tl1487314933_)))
                                               (let ((_hd1487514939_
                                                      (##car _e1487414936_))
                                                     (_tl1487614941_
                                                      (##cdr _e1487414936_)))
                                                 (if (gx#stx-null?
                                                      _tl1487614941_)
                                                     (_loop1486314910_
                                                      _lp-tl1486614925_
                                                      (cons _hd1487514939_
                                                            _expr1486714915_)
                                                      (cons _hd1487214931_
                                                            _hd1486814917_))
                                                     (_g1484914884_
                                                      _g1485014887_))))
                                             (_g1484914884_ _g1485014887_))))
                                     (_g1484914884_ _g1485014887_))))
                             (let ((_expr1486914944_
                                    (reverse _expr1486714915_))
                                   (_hd1487014946_ (reverse _hd1486814917_)))
                               (if (gx#stx-pair? _tl1485914902_)
                                   (let ((_e1487714949_
                                          (gx#stx-e _tl1485914902_)))
                                     (let ((_hd1487814952_
                                            (##car _e1487714949_))
                                           (_tl1487914954_
                                            (##cdr _e1487714949_)))
                                       (if (gx#stx-null? _tl1487914954_)
                                           ((lambda (_L14957_
                                                     _L14958_
                                                     _L14959_)
                                              (begin
                                                (for-each
                                                 _collect-e14847_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1497914982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1498014984_)
                     (cons _g1497914982_ _g1498014984_))
                   '()
                   _L14959_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1498614989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1498714991_)
                     (cons _g1498614989_ _g1498714991_))
                   '()
                   _L14958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1499314996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1499414998_)
                     (cons _g1499314996_ _g1499414998_))
                   '()
                   _L14958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14957_)))
                                            _hd1487814952_
                                            _expr1486914944_
                                            _hd1487014946_)
                                           (_g1484914884_ _g1485014887_))))
                                   (_g1484914884_ _g1485014887_)))))))
               (_loop1486314910_ _target1486014905_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1484914884_
                                                      _g1485014887_)))))
                                           (_g1484914884_ _g1485014887_))
                                       (_g1484914884_ _g1485014887_))))
                               (_g1484914884_ _g1485014887_))))
                       (_g1484914884_ _g1485014887_)))))
            (_g1484815001_ _stx14845_))))))
  (define gxc#collect-type-call%
    (lambda (_stx14399_)
      (let ((_g1440314505_
             (lambda (_g1440414502_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1440414502_))))
        (let ((_g1440214512_ (lambda (_g1440414508_) ((lambda () '#!void)))))
          (let ((_g1440114662_
                 (lambda (_g1440414515_)
                   (if (gx#stx-pair? _g1440414515_)
                       (let ((_e1446214517_ (gx#stx-e _g1440414515_)))
                         (let ((_hd1446314520_ (##car _e1446214517_))
                               (_tl1446414522_ (##cdr _e1446214517_)))
                           (if (gx#stx-pair? _tl1446414522_)
                               (let ((_e1446514525_ (gx#stx-e _tl1446414522_)))
                                 (let ((_hd1446614528_ (##car _e1446514525_))
                                       (_tl1446714530_ (##cdr _e1446514525_)))
                                   (if (gx#stx-pair? _hd1446614528_)
                                       (let ((_e1446814533_
                                              (gx#stx-e _hd1446614528_)))
                                         (let ((_hd1446914536_
                                                (##car _e1446814533_))
                                               (_tl1447014538_
                                                (##cdr _e1446814533_)))
                                           (if (gx#identifier? _hd1446914536_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1446914536_)
                                                   (if (gx#stx-pair?
                                                        _tl1447014538_)
                                                       (let ((_e1447114541_
                                                              (gx#stx-e
                                                               _tl1447014538_)))
                                                         (let ((_hd1447214544_
                                                                (##car _e1447114541_))
                                                               (_tl1447314546_
                                                                (##cdr _e1447114541_)))
                                                           (if (gx#stx-null?
                                                                _tl1447314546_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1446714530_)
                           (let ((_e1447414549_ (gx#stx-e _tl1446714530_)))
                             (let ((_hd1447514552_ (##car _e1447414549_))
                                   (_tl1447614554_ (##cdr _e1447414549_)))
                               (if (gx#stx-pair? _hd1447514552_)
                                   (let ((_e1447714557_
                                          (gx#stx-e _hd1447514552_)))
                                     (let ((_hd1447814560_
                                            (##car _e1447714557_))
                                           (_tl1447914562_
                                            (##cdr _e1447714557_)))
                                       (if (gx#identifier? _hd1447814560_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1447814560_)
                                               (if (gx#stx-pair?
                                                    _tl1447914562_)
                                                   (let ((_e1448014565_
                                                          (gx#stx-e
                                                           _tl1447914562_)))
                                                     (let ((_hd1448114568_
                                                            (##car _e1448014565_))
                                                           (_tl1448214570_
                                                            (##cdr _e1448014565_)))
                                                       (if (gx#stx-null?
                                                            _tl1448214570_)
                                                           (if (gx#stx-pair?
                                                                _tl1447614554_)
                                                               (let ((_e1448314573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1447614554_)))
                         (let ((_hd1448414576_ (##car _e1448314573_))
                               (_tl1448514578_ (##cdr _e1448314573_)))
                           (if (gx#stx-pair? _hd1448414576_)
                               (let ((_e1448614581_ (gx#stx-e _hd1448414576_)))
                                 (let ((_hd1448714584_ (##car _e1448614581_))
                                       (_tl1448814586_ (##cdr _e1448614581_)))
                                   (if (gx#identifier? _hd1448714584_)
                                       (if (gx#stx-eq? '%#quote _hd1448714584_)
                                           (if (gx#stx-pair? _tl1448814586_)
                                               (let ((_e1448914589_
                                                      (gx#stx-e
                                                       _tl1448814586_)))
                                                 (let ((_hd1449014592_
                                                        (##car _e1448914589_))
                                                       (_tl1449114594_
                                                        (##cdr _e1448914589_)))
                                                   (if (gx#stx-null?
                                                        _tl1449114594_)
                                                       (if (gx#stx-pair?
                                                            _tl1448514578_)
                                                           (let ((_e1449214597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1448514578_)))
                     (let ((_hd1449314600_ (##car _e1449214597_))
                           (_tl1449414602_ (##cdr _e1449214597_)))
                       (if (gx#stx-pair? _hd1449314600_)
                           (let ((_e1449514605_ (gx#stx-e _hd1449314600_)))
                             (let ((_hd1449614608_ (##car _e1449514605_))
                                   (_tl1449714610_ (##cdr _e1449514605_)))
                               (if (gx#identifier? _hd1449614608_)
                                   (if (gx#stx-eq? '%#ref _hd1449614608_)
                                       (if (gx#stx-pair? _tl1449714610_)
                                           (let ((_e1449814613_
                                                  (gx#stx-e _tl1449714610_)))
                                             (let ((_hd1449914616_
                                                    (##car _e1449814613_))
                                                   (_tl1450014618_
                                                    (##cdr _e1449814613_)))
                                               (if (gx#stx-null?
                                                    _tl1450014618_)
                                                   (if (gx#stx-null?
                                                        _tl1449414602_)
                                                       ((lambda (_L14621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14622_
                         _L14623_
                         _L14624_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19714
                       (gxc#generate-runtime-binding-id _L14623_)
                       (gx#stx-e _L14622_)
                       (gxc#generate-runtime-binding-id _L14621_)
                       '#f)
                      (_g1440214512_ _g1440414515_)))
                _hd1449914616_
                _hd1449014592_
                _hd1448114568_
                _hd1447214544_)
               (_g1440214512_ _g1440414515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1440214512_
                                                    _g1440414515_))))
                                           (_g1440214512_ _g1440414515_))
                                       (_g1440214512_ _g1440414515_))
                                   (_g1440214512_ _g1440414515_))))
                           (_g1440214512_ _g1440414515_))))
                   (_g1440214512_ _g1440414515_))
               (_g1440214512_ _g1440414515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1440214512_ _g1440414515_))
                                           (_g1440214512_ _g1440414515_))
                                       (_g1440214512_ _g1440414515_))))
                               (_g1440214512_ _g1440414515_))))
                       (_g1440214512_ _g1440414515_))
                   (_g1440214512_ _g1440414515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1440214512_
                                                    _g1440414515_))
                                               (_g1440214512_ _g1440414515_))
                                           (_g1440214512_ _g1440414515_))))
                                   (_g1440214512_ _g1440414515_))))
                           (_g1440214512_ _g1440414515_))
                       (_g1440214512_ _g1440414515_))))
               (_g1440214512_ _g1440414515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1440214512_
                                                    _g1440414515_))
                                               (_g1440214512_ _g1440414515_))))
                                       (_g1440214512_ _g1440414515_))))
                               (_g1440214512_ _g1440414515_))))
                       (_g1440214512_ _g1440414515_)))))
            (let ((_g1440014842_
                   (lambda (_g1440414665_)
                     (if (gx#stx-pair? _g1440414665_)
                         (let ((_e1441014667_ (gx#stx-e _g1440414665_)))
                           (let ((_hd1441114670_ (##car _e1441014667_))
                                 (_tl1441214672_ (##cdr _e1441014667_)))
                             (if (gx#stx-pair? _tl1441214672_)
                                 (let ((_e1441314675_
                                        (gx#stx-e _tl1441214672_)))
                                   (let ((_hd1441414678_ (##car _e1441314675_))
                                         (_tl1441514680_
                                          (##cdr _e1441314675_)))
                                     (if (gx#stx-pair? _hd1441414678_)
                                         (let ((_e1441614683_
                                                (gx#stx-e _hd1441414678_)))
                                           (let ((_hd1441714686_
                                                  (##car _e1441614683_))
                                                 (_tl1441814688_
                                                  (##cdr _e1441614683_)))
                                             (if (gx#identifier?
                                                  _hd1441714686_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1441714686_)
                                                     (if (gx#stx-pair?
                                                          _tl1441814688_)
                                                         (let ((_e1441914691_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1441814688_)))
                   (let ((_hd1442014694_ (##car _e1441914691_))
                         (_tl1442114696_ (##cdr _e1441914691_)))
                     (if (gx#stx-null? _tl1442114696_)
                         (if (gx#stx-pair? _tl1441514680_)
                             (let ((_e1442214699_ (gx#stx-e _tl1441514680_)))
                               (let ((_hd1442314702_ (##car _e1442214699_))
                                     (_tl1442414704_ (##cdr _e1442214699_)))
                                 (if (gx#stx-pair? _hd1442314702_)
                                     (let ((_e1442514707_
                                            (gx#stx-e _hd1442314702_)))
                                       (let ((_hd1442614710_
                                              (##car _e1442514707_))
                                             (_tl1442714712_
                                              (##cdr _e1442514707_)))
                                         (if (gx#identifier? _hd1442614710_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1442614710_)
                                                 (if (gx#stx-pair?
                                                      _tl1442714712_)
                                                     (let ((_e1442814715_
                                                            (gx#stx-e
                                                             _tl1442714712_)))
                                                       (let ((_hd1442914718_
                                                              (##car _e1442814715_))
                                                             (_tl1443014720_
                                                              (##cdr _e1442814715_)))
                                                         (if (gx#stx-null?
                                                              _tl1443014720_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1442414704_)
                         (let ((_e1443114723_ (gx#stx-e _tl1442414704_)))
                           (let ((_hd1443214726_ (##car _e1443114723_))
                                 (_tl1443314728_ (##cdr _e1443114723_)))
                             (if (gx#stx-pair? _hd1443214726_)
                                 (let ((_e1443414731_
                                        (gx#stx-e _hd1443214726_)))
                                   (let ((_hd1443514734_ (##car _e1443414731_))
                                         (_tl1443614736_
                                          (##cdr _e1443414731_)))
                                     (if (gx#identifier? _hd1443514734_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1443514734_)
                                             (if (gx#stx-pair? _tl1443614736_)
                                                 (let ((_e1443714739_
                                                        (gx#stx-e
                                                         _tl1443614736_)))
                                                   (let ((_hd1443814742_
                                                          (##car _e1443714739_))
                                                         (_tl1443914744_
                                                          (##cdr _e1443714739_)))
                                                     (if (gx#stx-null?
                                                          _tl1443914744_)
                                                         (if (gx#stx-pair?
                                                              _tl1443314728_)
                                                             (let ((_e1444014747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1443314728_)))
                       (let ((_hd1444114750_ (##car _e1444014747_))
                             (_tl1444214752_ (##cdr _e1444014747_)))
                         (if (gx#stx-pair? _hd1444114750_)
                             (let ((_e1444314755_ (gx#stx-e _hd1444114750_)))
                               (let ((_hd1444414758_ (##car _e1444314755_))
                                     (_tl1444514760_ (##cdr _e1444314755_)))
                                 (if (gx#identifier? _hd1444414758_)
                                     (if (gx#stx-eq? '%#ref _hd1444414758_)
                                         (if (gx#stx-pair? _tl1444514760_)
                                             (let ((_e1444614763_
                                                    (gx#stx-e _tl1444514760_)))
                                               (let ((_hd1444714766_
                                                      (##car _e1444614763_))
                                                     (_tl1444814768_
                                                      (##cdr _e1444614763_)))
                                                 (if (gx#stx-null?
                                                      _tl1444814768_)
                                                     (if (gx#stx-pair?
                                                          _tl1444214752_)
                                                         (let ((_e1444914771_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1444214752_)))
                   (let ((_hd1445014774_ (##car _e1444914771_))
                         (_tl1445114776_ (##cdr _e1444914771_)))
                     (if (gx#stx-pair? _hd1445014774_)
                         (let ((_e1445214779_ (gx#stx-e _hd1445014774_)))
                           (let ((_hd1445314782_ (##car _e1445214779_))
                                 (_tl1445414784_ (##cdr _e1445214779_)))
                             (if (gx#identifier? _hd1445314782_)
                                 (if (gx#stx-eq? '%#quote _hd1445314782_)
                                     (if (gx#stx-pair? _tl1445414784_)
                                         (let ((_e1445514787_
                                                (gx#stx-e _tl1445414784_)))
                                           (let ((_hd1445614790_
                                                  (##car _e1445514787_))
                                                 (_tl1445714792_
                                                  (##cdr _e1445514787_)))
                                             (if (gx#stx-null? _tl1445714792_)
                                                 (if (gx#stx-null?
                                                      _tl1445114776_)
                                                     ((lambda (_L14795_
                                                               _L14796_
                                                               _L14797_
                                                               _L14798_
                                                               _L14799_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14799_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19714
                     (gxc#generate-runtime-binding-id _L14798_)
                     (gx#stx-e _L14797_)
                     (gxc#generate-runtime-binding-id _L14796_)
                     (gx#stx-e _L14795_))
                    (_g1440114662_ _g1440414665_)))
              _hd1445614790_
              _hd1444714766_
              _hd1443814742_
              _hd1442914718_
              _hd1442014694_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440114662_
                                                      _g1440414665_))
                                                 (_g1440114662_
                                                  _g1440414665_))))
                                         (_g1440114662_ _g1440414665_))
                                     (_g1440114662_ _g1440414665_))
                                 (_g1440114662_ _g1440414665_))))
                         (_g1440114662_ _g1440414665_))))
                 (_g1440114662_ _g1440414665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440114662_
                                                      _g1440414665_))))
                                             (_g1440114662_ _g1440414665_))
                                         (_g1440114662_ _g1440414665_))
                                     (_g1440114662_ _g1440414665_))))
                             (_g1440114662_ _g1440414665_))))
                     (_g1440114662_ _g1440414665_))
                 (_g1440114662_ _g1440414665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1440114662_ _g1440414665_))
                                             (_g1440114662_ _g1440414665_))
                                         (_g1440114662_ _g1440414665_))))
                                 (_g1440114662_ _g1440414665_))))
                         (_g1440114662_ _g1440414665_))
                     (_g1440114662_ _g1440414665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440114662_
                                                      _g1440414665_))
                                                 (_g1440114662_ _g1440414665_))
                                             (_g1440114662_ _g1440414665_))))
                                     (_g1440114662_ _g1440414665_))))
                             (_g1440114662_ _g1440414665_))
                         (_g1440114662_ _g1440414665_))))
                 (_g1440114662_ _g1440414665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440114662_
                                                      _g1440414665_))
                                                 (_g1440114662_
                                                  _g1440414665_))))
                                         (_g1440114662_ _g1440414665_))))
                                 (_g1440114662_ _g1440414665_))))
                         (_g1440114662_ _g1440414665_)))))
              (_g1440014842_ _stx14399_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx14339_)
      (let ((_g1434214355_
             (lambda (_g1434314352_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1434314352_))))
        (let ((_g1434114362_ (lambda (_g1434314358_) ((lambda () '#f)))))
          (let ((_g1434014396_
                 (lambda (_g1434314365_)
                   (if (gx#stx-pair? _g1434314365_)
                       (let ((_e1434514367_ (gx#stx-e _g1434314365_)))
                         (let ((_hd1434614370_ (##car _e1434514367_))
                               (_tl1434714372_ (##cdr _e1434514367_)))
                           (if (gx#stx-pair? _tl1434714372_)
                               (let ((_e1434814375_ (gx#stx-e _tl1434714372_)))
                                 (let ((_hd1434914378_ (##car _e1434814375_))
                                       (_tl1435014380_ (##cdr _e1434814375_)))
                                   (if (gx#stx-null? _tl1435014380_)
                                       ((lambda (_L14383_)
                                          (gxc#compile-e _L14383_))
                                        _hd1434914378_)
                                       (_g1434114362_ _g1434314365_))))
                               (_g1434114362_ _g1434314365_))))
                       (_g1434114362_ _g1434314365_)))))
            (_g1434014396_ _stx14339_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13764_)
      (let ((_g1376913890_
             (lambda (_g1377013887_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1377013887_))))
        (let ((_g1376813897_ (lambda (_g1377013893_) ((lambda () '#f)))))
          (let ((_g1376713921_
                 (lambda (_g1377013900_)
                   (if (gx#stx-pair? _g1377013900_)
                       (let ((_e1388313902_ (gx#stx-e _g1377013900_)))
                         (let ((_hd1388413905_ (##car _e1388313902_))
                               (_tl1388513907_ (##cdr _e1388313902_)))
                           ((lambda (_L13910_)
                              (if (gxc#dispatch-lambda-form? _L13910_)
                                  (let ((__obj19966
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19966
                                       'lambda
                                       (gxc#lambda-form-arity _L13910_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13910_))
                                      __obj19966))
                                  (_g1376813897_ _g1377013900_)))
                            _tl1388513907_)))
                       (_g1376813897_ _g1377013900_)))))
            (let ((_g1376614151_
                   (lambda (_g1377013924_)
                     (if (gx#stx-pair? _g1377013924_)
                         (let ((_e1382813926_ (gx#stx-e _g1377013924_)))
                           (let ((_hd1382913929_ (##car _e1382813926_))
                                 (_tl1383013931_ (##cdr _e1382813926_)))
                             (if (gx#stx-pair? _tl1383013931_)
                                 (let ((_e1383113934_
                                        (gx#stx-e _tl1383013931_)))
                                   (let ((_hd1383213937_ (##car _e1383113934_))
                                         (_tl1383313939_
                                          (##cdr _e1383113934_)))
                                     (if (gx#stx-pair/null? _hd1383213937_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1383213937_)
                                                   '0)
                                             (let ((_g20028_
                                                    (gx#syntax-split-splice
                                                     _hd1383213937_
                                                     '0)))
                                               (begin
                                                 (let ((_g20029_
                                                        (values-count
                                                         _g20028_)))
                                                   (if (not (fx= _g20029_ 2))
                                                       (error "Context expects 2 values"
                                                              _g20029_)))
                                                 (let ((_target1383413942_
                                                        (values-ref
                                                         _g20028_
                                                         0))
                                                       (_tl1383613944_
                                                        (values-ref
                                                         _g20028_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1383613944_)
                                                       (letrec ((_loop1383713947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1383513950_ _arg1384113952_)
                           (if (gx#stx-pair? _hd1383513950_)
                               (let ((_e1383813955_ (gx#stx-e _hd1383513950_)))
                                 (let ((_lp-hd1383913958_
                                        (##car _e1383813955_))
                                       (_lp-tl1384013960_
                                        (##cdr _e1383813955_)))
                                   (_loop1383713947_
                                    _lp-tl1384013960_
                                    (cons _lp-hd1383913958_ _arg1384113952_))))
                               (let ((_arg1384213963_
                                      (reverse _arg1384113952_)))
                                 (if (gx#stx-pair? _tl1383313939_)
                                     (let ((_e1384313966_
                                            (gx#stx-e _tl1383313939_)))
                                       (let ((_hd1384413969_
                                              (##car _e1384313966_))
                                             (_tl1384513971_
                                              (##cdr _e1384313966_)))
                                         (if (gx#stx-pair? _hd1384413969_)
                                             (let ((_e1384613974_
                                                    (gx#stx-e _hd1384413969_)))
                                               (let ((_hd1384713977_
                                                      (##car _e1384613974_))
                                                     (_tl1384813979_
                                                      (##cdr _e1384613974_)))
                                                 (if (gx#identifier?
                                                      _hd1384713977_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1384713977_)
                                                         (if (gx#stx-pair?
                                                              _tl1384813979_)
                                                             (let ((_e1384913982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1384813979_)))
                       (let ((_hd1385013985_ (##car _e1384913982_))
                             (_tl1385113987_ (##cdr _e1384913982_)))
                         (if (gx#stx-pair? _hd1385013985_)
                             (let ((_e1385213990_ (gx#stx-e _hd1385013985_)))
                               (let ((_hd1385313993_ (##car _e1385213990_))
                                     (_tl1385413995_ (##cdr _e1385213990_)))
                                 (if (gx#identifier? _hd1385313993_)
                                     (if (gx#stx-eq? '%#ref _hd1385313993_)
                                         (if (gx#stx-pair? _tl1385413995_)
                                             (let ((_e1385513998_
                                                    (gx#stx-e _tl1385413995_)))
                                               (let ((_hd1385614001_
                                                      (##car _e1385513998_))
                                                     (_tl1385714003_
                                                      (##cdr _e1385513998_)))
                                                 (if (gx#stx-null?
                                                      _tl1385714003_)
                                                     (if (gx#stx-pair?
                                                          _tl1385113987_)
                                                         (let ((_e1385814006_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1385113987_)))
                   (let ((_hd1385914009_ (##car _e1385814006_))
                         (_tl1386014011_ (##cdr _e1385814006_)))
                     (if (gx#stx-pair? _hd1385914009_)
                         (let ((_e1386114014_ (gx#stx-e _hd1385914009_)))
                           (let ((_hd1386214017_ (##car _e1386114014_))
                                 (_tl1386314019_ (##cdr _e1386114014_)))
                             (if (gx#identifier? _hd1386214017_)
                                 (if (gx#stx-eq? '%#ref _hd1386214017_)
                                     (if (gx#stx-pair? _tl1386314019_)
                                         (let ((_e1386414022_
                                                (gx#stx-e _tl1386314019_)))
                                           (let ((_hd1386514025_
                                                  (##car _e1386414022_))
                                                 (_tl1386614027_
                                                  (##cdr _e1386414022_)))
                                             (if (gx#stx-null? _tl1386614027_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1386014011_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1386014011_)
                                                               '0)
                                                         (let ((_g20030_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1386014011_
                         '0)))
                   (begin
                     (let ((_g20031_ (values-count _g20030_)))
                       (if (not (fx= _g20031_ 2))
                           (error "Context expects 2 values" _g20031_)))
                     (let ((_target1386714030_ (values-ref _g20030_ 0))
                           (_tl1386914032_ (values-ref _g20030_ 1)))
                       (if (gx#stx-null? _tl1386914032_)
                           (letrec ((_loop1387014035_
                                     (lambda (_hd1386814038_ _xarg1387414040_)
                                       (if (gx#stx-pair? _hd1386814038_)
                                           (let ((_e1387114043_
                                                  (gx#stx-e _hd1386814038_)))
                                             (let ((_lp-hd1387214046_
                                                    (##car _e1387114043_))
                                                   (_lp-tl1387314048_
                                                    (##cdr _e1387114043_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1387214046_)
                                                   (let ((_e1387614051_
                                                          (gx#stx-e
                                                           _lp-hd1387214046_)))
                                                     (let ((_hd1387714054_
                                                            (##car _e1387614051_))
                                                           (_tl1387814056_
                                                            (##cdr _e1387614051_)))
                                                       (if (gx#identifier?
                                                            _hd1387714054_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1387714054_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1387814056_)
                           (let ((_e1387914059_ (gx#stx-e _tl1387814056_)))
                             (let ((_hd1388014062_ (##car _e1387914059_))
                                   (_tl1388114064_ (##cdr _e1387914059_)))
                               (if (gx#stx-null? _tl1388114064_)
                                   (_loop1387014035_
                                    _lp-tl1387314048_
                                    (cons _hd1388014062_ _xarg1387414040_))
                                   (_g1376713921_ _g1377013924_))))
                           (_g1376713921_ _g1377013924_))
                       (_g1376713921_ _g1377013924_))
                   (_g1376713921_ _g1377013924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376713921_
                                                    _g1377013924_))))
                                           (let ((_xarg1387514067_
                                                  (reverse _xarg1387414040_)))
                                             (if (gx#stx-null? _tl1384513971_)
                                                 ((lambda (_L14070_
                                                           _L14071_
                                                           _L14072_
                                                           _L14073_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1411014113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1411114115_)
                                 (cons _g1411014113_ _g1411114115_))
                               '()
                               _L14073_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L14072_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1411714120_
                                                            _g1411814122_)
                                                     (cons _g1411714120_
                                                           _g1411814122_))
                                                   '()
                                                   _L14073_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1412414127_
                                                            _g1412514129_)
                                                     (cons _g1412414127_
                                                           _g1412514129_))
                                                   '()
                                                   _L14070_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1413114134_
                                                       _g1413214136_)
                                                (cons _g1413114134_
                                                      _g1413214136_))
                                              '()
                                              _L14073_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1413814141_
                                                       _g1413914143_)
                                                (cons _g1413814141_
                                                      _g1413914143_))
                                              '()
                                              _L14070_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t14146_
                       (gxc#generate-runtime-binding-id _L14071_)))
                  (let ((_type14148_
                         (gxc#optimizer-resolve-type _type-t14146_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type14148_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t14146_)
                          '#f))))
                (_g1376713921_ _g1377013924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1387514067_
                                                  _hd1386514025_
                                                  _hd1385614001_
                                                  _arg1384213963_)
                                                 (_g1376713921_
                                                  _g1377013924_)))))))
                             (_loop1387014035_ _target1386714030_ '()))
                           (_g1376713921_ _g1377013924_)))))
                 (_g1376713921_ _g1377013924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376713921_
                                                      _g1377013924_))
                                                 (_g1376713921_
                                                  _g1377013924_))))
                                         (_g1376713921_ _g1377013924_))
                                     (_g1376713921_ _g1377013924_))
                                 (_g1376713921_ _g1377013924_))))
                         (_g1376713921_ _g1377013924_))))
                 (_g1376713921_ _g1377013924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376713921_
                                                      _g1377013924_))))
                                             (_g1376713921_ _g1377013924_))
                                         (_g1376713921_ _g1377013924_))
                                     (_g1376713921_ _g1377013924_))))
                             (_g1376713921_ _g1377013924_))))
                     (_g1376713921_ _g1377013924_))
                 (_g1376713921_ _g1377013924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376713921_
                                                      _g1377013924_))))
                                             (_g1376713921_ _g1377013924_))))
                                     (_g1376713921_ _g1377013924_)))))))
                 (_loop1383713947_ _target1383413942_ '()))
               (_g1376713921_ _g1377013924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1376713921_ _g1377013924_))
                                         (_g1376713921_ _g1377013924_))))
                                 (_g1376713921_ _g1377013924_))))
                         (_g1376713921_ _g1377013924_)))))
              (let ((_g1376514336_
                     (lambda (_g1377014154_)
                       (if (gx#stx-pair? _g1377014154_)
                           (let ((_e1377614156_ (gx#stx-e _g1377014154_)))
                             (let ((_hd1377714159_ (##car _e1377614156_))
                                   (_tl1377814161_ (##cdr _e1377614156_)))
                               (if (gx#stx-pair? _tl1377814161_)
                                   (let ((_e1377914164_
                                          (gx#stx-e _tl1377814161_)))
                                     (let ((_hd1378014167_
                                            (##car _e1377914164_))
                                           (_tl1378114169_
                                            (##cdr _e1377914164_)))
                                       (if (gx#stx-pair? _tl1378114169_)
                                           (let ((_e1378214172_
                                                  (gx#stx-e _tl1378114169_)))
                                             (let ((_hd1378314175_
                                                    (##car _e1378214172_))
                                                   (_tl1378414177_
                                                    (##cdr _e1378214172_)))
                                               (if (gx#stx-pair?
                                                    _hd1378314175_)
                                                   (let ((_e1378514180_
                                                          (gx#stx-e
                                                           _hd1378314175_)))
                                                     (let ((_hd1378614183_
                                                            (##car _e1378514180_))
                                                           (_tl1378714185_
                                                            (##cdr _e1378514180_)))
                                                       (if (gx#identifier?
                                                            _hd1378614183_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1378614183_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1378714185_)
                           (let ((_e1378814188_ (gx#stx-e _tl1378714185_)))
                             (let ((_hd1378914191_ (##car _e1378814188_))
                                   (_tl1379014193_ (##cdr _e1378814188_)))
                               (if (gx#stx-pair? _hd1378914191_)
                                   (let ((_e1379114196_
                                          (gx#stx-e _hd1378914191_)))
                                     (let ((_hd1379214199_
                                            (##car _e1379114196_))
                                           (_tl1379314201_
                                            (##cdr _e1379114196_)))
                                       (if (gx#identifier? _hd1379214199_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1379214199_)
                                               (if (gx#stx-pair?
                                                    _tl1379314201_)
                                                   (let ((_e1379414204_
                                                          (gx#stx-e
                                                           _tl1379314201_)))
                                                     (let ((_hd1379514207_
                                                            (##car _e1379414204_))
                                                           (_tl1379614209_
                                                            (##cdr _e1379414204_)))
                                                       (if (gx#stx-null?
                                                            _tl1379614209_)
                                                           (if (gx#stx-pair?
                                                                _tl1379014193_)
                                                               (let ((_e1379714212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1379014193_)))
                         (let ((_hd1379814215_ (##car _e1379714212_))
                               (_tl1379914217_ (##cdr _e1379714212_)))
                           (if (gx#stx-pair? _hd1379814215_)
                               (let ((_e1380014220_ (gx#stx-e _hd1379814215_)))
                                 (let ((_hd1380114223_ (##car _e1380014220_))
                                       (_tl1380214225_ (##cdr _e1380014220_)))
                                   (if (gx#identifier? _hd1380114223_)
                                       (if (gx#stx-eq? '%#ref _hd1380114223_)
                                           (if (gx#stx-pair? _tl1380214225_)
                                               (let ((_e1380314228_
                                                      (gx#stx-e
                                                       _tl1380214225_)))
                                                 (let ((_hd1380414231_
                                                        (##car _e1380314228_))
                                                       (_tl1380514233_
                                                        (##cdr _e1380314228_)))
                                                   (if (gx#stx-null?
                                                        _tl1380514233_)
                                                       (if (gx#stx-pair?
                                                            _tl1379914217_)
                                                           (let ((_e1380614236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1379914217_)))
                     (let ((_hd1380714239_ (##car _e1380614236_))
                           (_tl1380814241_ (##cdr _e1380614236_)))
                       (if (gx#stx-pair? _hd1380714239_)
                           (let ((_e1380914244_ (gx#stx-e _hd1380714239_)))
                             (let ((_hd1381014247_ (##car _e1380914244_))
                                   (_tl1381114249_ (##cdr _e1380914244_)))
                               (if (gx#identifier? _hd1381014247_)
                                   (if (gx#stx-eq? '%#ref _hd1381014247_)
                                       (if (gx#stx-pair? _tl1381114249_)
                                           (let ((_e1381214252_
                                                  (gx#stx-e _tl1381114249_)))
                                             (let ((_hd1381314255_
                                                    (##car _e1381214252_))
                                                   (_tl1381414257_
                                                    (##cdr _e1381214252_)))
                                               (if (gx#stx-null?
                                                    _tl1381414257_)
                                                   (if (gx#stx-pair?
                                                        _tl1380814241_)
                                                       (let ((_e1381514260_
                                                              (gx#stx-e
                                                               _tl1380814241_)))
                                                         (let ((_hd1381614263_
                                                                (##car _e1381514260_))
                                                               (_tl1381714265_
                                                                (##cdr _e1381514260_)))
                                                           (if (gx#stx-pair?
                                                                _hd1381614263_)
                                                               (let ((_e1381814268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1381614263_)))
                         (let ((_hd1381914271_ (##car _e1381814268_))
                               (_tl1382014273_ (##cdr _e1381814268_)))
                           (if (gx#identifier? _hd1381914271_)
                               (if (gx#stx-eq? '%#ref _hd1381914271_)
                                   (if (gx#stx-pair? _tl1382014273_)
                                       (let ((_e1382114276_
                                              (gx#stx-e _tl1382014273_)))
                                         (let ((_hd1382214279_
                                                (##car _e1382114276_))
                                               (_tl1382314281_
                                                (##cdr _e1382114276_)))
                                           (if (gx#stx-null? _tl1382314281_)
                                               (if (gx#stx-null?
                                                    _tl1381714265_)
                                                   (if (gx#stx-null?
                                                        _tl1378414177_)
                                                       ((lambda (_L14284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14285_
                         _L14286_
                         _L14287_
                         _L14288_)
                  (if (if (gx#identifier? _L14288_)
                          (if (eq? (gxc#generate-runtime-binding-id _L14287_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L14286_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L14288_ _L14284_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t14331_
                             (gxc#generate-runtime-binding-id _L14285_)))
                        (let ((_type14333_
                               (gxc#optimizer-resolve-type _type-t14331_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type14333_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t14331_)
                                '#f))))
                      (_g1376614151_ _g1377014154_)))
                _hd1382214279_
                _hd1381314255_
                _hd1380414231_
                _hd1379514207_
                _hd1378014167_)
               (_g1376614151_ _g1377014154_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376614151_
                                                    _g1377014154_))
                                               (_g1376614151_ _g1377014154_))))
                                       (_g1376614151_ _g1377014154_))
                                   (_g1376614151_ _g1377014154_))
                               (_g1376614151_ _g1377014154_))))
                       (_g1376614151_ _g1377014154_))))
               (_g1376614151_ _g1377014154_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376614151_
                                                    _g1377014154_))))
                                           (_g1376614151_ _g1377014154_))
                                       (_g1376614151_ _g1377014154_))
                                   (_g1376614151_ _g1377014154_))))
                           (_g1376614151_ _g1377014154_))))
                   (_g1376614151_ _g1377014154_))
               (_g1376614151_ _g1377014154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1376614151_ _g1377014154_))
                                           (_g1376614151_ _g1377014154_))
                                       (_g1376614151_ _g1377014154_))))
                               (_g1376614151_ _g1377014154_))))
                       (_g1376614151_ _g1377014154_))
                   (_g1376614151_ _g1377014154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376614151_
                                                    _g1377014154_))
                                               (_g1376614151_ _g1377014154_))
                                           (_g1376614151_ _g1377014154_))))
                                   (_g1376614151_ _g1377014154_))))
                           (_g1376614151_ _g1377014154_))
                       (_g1376614151_ _g1377014154_))
                   (_g1376614151_ _g1377014154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376614151_
                                                    _g1377014154_))))
                                           (_g1376614151_ _g1377014154_))))
                                   (_g1376614151_ _g1377014154_))))
                           (_g1376614151_ _g1377014154_)))))
                (_g1376514336_ _stx13764_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13710_)
      (let ((_clause-e13712_
             (lambda (_form13762_)
               (let ((__obj19967 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19967
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13762_)
                    (gxc#dispatch-lambda-form-delegate _form13762_))
                   __obj19967)))))
        (let ((_g1371513725_
               (lambda (_g1371613722_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1371613722_))))
          (let ((_g1371413732_ (lambda (_g1371613728_) ((lambda () '#f)))))
            (let ((_g1371313759_
                   (lambda (_g1371613735_)
                     (if (gx#stx-pair? _g1371613735_)
                         (let ((_e1371813737_ (gx#stx-e _g1371613735_)))
                           (let ((_hd1371913740_ (##car _e1371813737_))
                                 (_tl1372013742_ (##cdr _e1371813737_)))
                             ((lambda (_L13745_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13745_)
                                    (let ((_clauses13757_
                                           (map _clause-e13712_ _L13745_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13757_))
                                    (_g1371413732_ _g1371613735_)))
                              _tl1372013742_)))
                         (_g1371413732_ _g1371613735_)))))
              (_g1371313759_ _stx13710_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13615_)
      (let ((_g1361813638_
             (lambda (_g1361913635_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1361913635_))))
        (let ((_g1361713645_ (lambda (_g1361913641_) ((lambda () '#f)))))
          (let ((_g1361613707_
                 (lambda (_g1361913648_)
                   (if (gx#stx-pair? _g1361913648_)
                       (let ((_e1362213650_ (gx#stx-e _g1361913648_)))
                         (let ((_hd1362313653_ (##car _e1362213650_))
                               (_tl1362413655_ (##cdr _e1362213650_)))
                           (if (gx#stx-pair? _tl1362413655_)
                               (let ((_e1362513658_ (gx#stx-e _tl1362413655_)))
                                 (let ((_hd1362613661_ (##car _e1362513658_))
                                       (_tl1362713663_ (##cdr _e1362513658_)))
                                   (if (gx#stx-pair? _hd1362613661_)
                                       (let ((_e1362813666_
                                              (gx#stx-e _hd1362613661_)))
                                         (let ((_hd1362913669_
                                                (##car _e1362813666_))
                                               (_tl1363013671_
                                                (##cdr _e1362813666_)))
                                           (if (gx#identifier? _hd1362913669_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1362913669_)
                                                   (if (gx#stx-pair?
                                                        _tl1363013671_)
                                                       (let ((_e1363113674_
                                                              (gx#stx-e
                                                               _tl1363013671_)))
                                                         (let ((_hd1363213677_
                                                                (##car _e1363113674_))
                                                               (_tl1363313679_
                                                                (##cdr _e1363113674_)))
                                                           (if (gx#stx-null?
                                                                _tl1363313679_)
                                                               ((lambda (_L13682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13683_)
                          (let ((_type-e1370013702_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13683_)
                                  '#f)))
                            (if _type-e1370013702_
                                (let ((_type-e13705_ _type-e1370013702_))
                                  (_type-e13705_ _stx13615_ _L13682_))
                                '#f)))
                        _tl1362713663_
                        _hd1363213677_)
                       (_g1361713645_ _g1361913648_))))
               (_g1361713645_ _g1361913648_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1361713645_
                                                    _g1361913648_))
                                               (_g1361713645_ _g1361913648_))))
                                       (_g1361713645_ _g1361913648_))))
                               (_g1361713645_ _g1361913648_))))
                       (_g1361713645_ _g1361913648_)))))
            (_g1361613707_ _stx13615_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13100_ _args13101_)
      (let ((_g1310513218_
             (lambda (_g1310613215_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1310613215_))))
        (let ((_g1310413225_
               (lambda (_g1310613221_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx13100_))
                      '#f))))))
          (let ((_g1310313432_
                 (lambda (_g1310613228_)
                   (if (gx#stx-pair? _g1310613228_)
                       (let ((_e1316613230_ (gx#stx-e _g1310613228_)))
                         (let ((_hd1316713233_ (##car _e1316613230_))
                               (_tl1316813235_ (##cdr _e1316613230_)))
                           (if (gx#stx-pair? _hd1316713233_)
                               (let ((_e1316913238_ (gx#stx-e _hd1316713233_)))
                                 (let ((_hd1317013241_ (##car _e1316913238_))
                                       (_tl1317113243_ (##cdr _e1316913238_)))
                                   (if (gx#identifier? _hd1317013241_)
                                       (if (gx#stx-eq? '%#quote _hd1317013241_)
                                           (if (gx#stx-pair? _tl1317113243_)
                                               (let ((_e1317213246_
                                                      (gx#stx-e
                                                       _tl1317113243_)))
                                                 (let ((_hd1317313249_
                                                        (##car _e1317213246_))
                                                       (_tl1317413251_
                                                        (##cdr _e1317213246_)))
                                                   (if (gx#stx-null?
                                                        _tl1317413251_)
                                                       (if (gx#stx-pair?
                                                            _tl1316813235_)
                                                           (let ((_e1317513254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1316813235_)))
                     (let ((_hd1317613257_ (##car _e1317513254_))
                           (_tl1317713259_ (##cdr _e1317513254_)))
                       (if (gx#stx-pair? _hd1317613257_)
                           (let ((_e1317813262_ (gx#stx-e _hd1317613257_)))
                             (let ((_hd1317913265_ (##car _e1317813262_))
                                   (_tl1318013267_ (##cdr _e1317813262_)))
                               (if (gx#identifier? _hd1317913265_)
                                   (if (gx#stx-eq? '%#ref _hd1317913265_)
                                       (if (gx#stx-pair? _tl1318013267_)
                                           (let ((_e1318113270_
                                                  (gx#stx-e _tl1318013267_)))
                                             (let ((_hd1318213273_
                                                    (##car _e1318113270_))
                                                   (_tl1318313275_
                                                    (##cdr _e1318113270_)))
                                               (if (gx#stx-null?
                                                    _tl1318313275_)
                                                   (if (gx#stx-pair?
                                                        _tl1317713259_)
                                                       (let ((_e1318413278_
                                                              (gx#stx-e
                                                               _tl1317713259_)))
                                                         (let ((_hd1318513281_
                                                                (##car _e1318413278_))
                                                               (_tl1318613283_
                                                                (##cdr _e1318413278_)))
                                                           (if (gx#stx-pair?
                                                                _hd1318513281_)
                                                               (let ((_e1318713286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1318513281_)))
                         (let ((_hd1318813289_ (##car _e1318713286_))
                               (_tl1318913291_ (##cdr _e1318713286_)))
                           (if (gx#identifier? _hd1318813289_)
                               (if (gx#stx-eq? '%#quote _hd1318813289_)
                                   (if (gx#stx-pair? _tl1318913291_)
                                       (let ((_e1319013294_
                                              (gx#stx-e _tl1318913291_)))
                                         (let ((_hd1319113297_
                                                (##car _e1319013294_))
                                               (_tl1319213299_
                                                (##cdr _e1319013294_)))
                                           (if (gx#stx-null? _tl1319213299_)
                                               (if (gx#stx-pair?
                                                    _tl1318613283_)
                                                   (let ((_e1319313302_
                                                          (gx#stx-e
                                                           _tl1318613283_)))
                                                     (let ((_hd1319413305_
                                                            (##car _e1319313302_))
                                                           (_tl1319513307_
                                                            (##cdr _e1319313302_)))
                                                       (if (gx#stx-pair?
                                                            _tl1319513307_)
                                                           (let ((_e1319613310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1319513307_)))
                     (let ((_hd1319713313_ (##car _e1319613310_))
                           (_tl1319813315_ (##cdr _e1319613310_)))
                       (if (gx#stx-pair? _hd1319713313_)
                           (let ((_e1319913318_ (gx#stx-e _hd1319713313_)))
                             (let ((_hd1320013321_ (##car _e1319913318_))
                                   (_tl1320113323_ (##cdr _e1319913318_)))
                               (if (gx#identifier? _hd1320013321_)
                                   (if (gx#stx-eq? '%#quote _hd1320013321_)
                                       (if (gx#stx-pair? _tl1320113323_)
                                           (let ((_e1320213326_
                                                  (gx#stx-e _tl1320113323_)))
                                             (let ((_hd1320313329_
                                                    (##car _e1320213326_))
                                                   (_tl1320413331_
                                                    (##cdr _e1320213326_)))
                                               (if (gx#stx-null?
                                                    _tl1320413331_)
                                                   (if (gx#stx-pair?
                                                        _tl1319813315_)
                                                       (let ((_e1320513334_
                                                              (gx#stx-e
                                                               _tl1319813315_)))
                                                         (let ((_hd1320613337_
                                                                (##car _e1320513334_))
                                                               (_tl1320713339_
                                                                (##cdr _e1320513334_)))
                                                           (if (gx#stx-pair?
                                                                _hd1320613337_)
                                                               (let ((_e1320813342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1320613337_)))
                         (let ((_hd1320913345_ (##car _e1320813342_))
                               (_tl1321013347_ (##cdr _e1320813342_)))
                           (if (gx#identifier? _hd1320913345_)
                               (if (gx#stx-eq? '%#quote _hd1320913345_)
                                   (if (gx#stx-pair? _tl1321013347_)
                                       (let ((_e1321113350_
                                              (gx#stx-e _tl1321013347_)))
                                         (let ((_hd1321213353_
                                                (##car _e1321113350_))
                                               (_tl1321313355_
                                                (##cdr _e1321113350_)))
                                           (if (gx#stx-null? _tl1321313355_)
                                               (if (gx#stx-null?
                                                    _tl1320713339_)
                                                   ((lambda (_L13358_
                                                             _L13359_
                                                             _L13360_
                                                             _L13361_
                                                             _L13362_
                                                             _L13363_)
                                                      (let ((_super-t13409_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13362_)
                         (gxc#generate-runtime-binding-id _L13362_)
                         '#f)))
                (let ((_super-type13411_
                       (if _super-t13409_
                           (gxc#optimizer-resolve-type _super-t13409_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type13411_
                              (not (##structure-instance-of?
                                    _super-type13411_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx13100_
                           _L13362_)
                          '#!void)
                      (let ((_fields13427_ (gx#stx-e _L13361_))
                            (_xfields13428_
                             (if _super-type13411_
                                 (let ((_super-fields1341313416_
                                        (##structure-ref
                                         _super-type13411_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1341413418_
                                        (##structure-ref
                                         _super-type13411_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1341313416_
                                       (if _super-xfields1341413418_
                                           (let ((_super-fields13421_
                                                  _super-fields1341313416_)
                                                 (_super-xfields13422_
                                                  _super-xfields1341413418_))
                                             (fx+ _super-fields13421_
                                                  _super-xfields13422_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist13429_ (gx#stx-e _L13359_))
                            (_ctor13430_
                             (let ((_$e13424_ (gx#stx-e _L13358_)))
                               (if _$e13424_
                                   (values _$e13424_)
                                   (if _super-type13411_
                                       (##structure-ref
                                        _super-type13411_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t13409_ '#!void '#f))))))
                        (let ((__obj19968
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19968
                             (gx#stx-e _L13363_)
                             _super-t13409_
                             _fields13427_
                             _xfields13428_
                             _ctor13430_
                             _plist13429_)
                            __obj19968))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1321213353_
                                                    _hd1320313329_
                                                    _hd1319413305_
                                                    _hd1319113297_
                                                    _hd1318213273_
                                                    _hd1317313249_)
                                                   (_g1310413225_
                                                    _g1310613228_))
                                               (_g1310413225_ _g1310613228_))))
                                       (_g1310413225_ _g1310613228_))
                                   (_g1310413225_ _g1310613228_))
                               (_g1310413225_ _g1310613228_))))
                       (_g1310413225_ _g1310613228_))))
               (_g1310413225_ _g1310613228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310413225_
                                                    _g1310613228_))))
                                           (_g1310413225_ _g1310613228_))
                                       (_g1310413225_ _g1310613228_))
                                   (_g1310413225_ _g1310613228_))))
                           (_g1310413225_ _g1310613228_))))
                   (_g1310413225_ _g1310613228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310413225_
                                                    _g1310613228_))
                                               (_g1310413225_ _g1310613228_))))
                                       (_g1310413225_ _g1310613228_))
                                   (_g1310413225_ _g1310613228_))
                               (_g1310413225_ _g1310613228_))))
                       (_g1310413225_ _g1310613228_))))
               (_g1310413225_ _g1310613228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310413225_
                                                    _g1310613228_))))
                                           (_g1310413225_ _g1310613228_))
                                       (_g1310413225_ _g1310613228_))
                                   (_g1310413225_ _g1310613228_))))
                           (_g1310413225_ _g1310613228_))))
                   (_g1310413225_ _g1310613228_))
               (_g1310413225_ _g1310613228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1310413225_ _g1310613228_))
                                           (_g1310413225_ _g1310613228_))
                                       (_g1310413225_ _g1310613228_))))
                               (_g1310413225_ _g1310613228_))))
                       (_g1310413225_ _g1310613228_)))))
            (let ((_g1310213612_
                   (lambda (_g1310613435_)
                     (if (gx#stx-pair? _g1310613435_)
                         (let ((_e1311213437_ (gx#stx-e _g1310613435_)))
                           (let ((_hd1311313440_ (##car _e1311213437_))
                                 (_tl1311413442_ (##cdr _e1311213437_)))
                             (if (gx#stx-pair? _hd1311313440_)
                                 (let ((_e1311513445_
                                        (gx#stx-e _hd1311313440_)))
                                   (let ((_hd1311613448_ (##car _e1311513445_))
                                         (_tl1311713450_
                                          (##cdr _e1311513445_)))
                                     (if (gx#identifier? _hd1311613448_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1311613448_)
                                             (if (gx#stx-pair? _tl1311713450_)
                                                 (let ((_e1311813453_
                                                        (gx#stx-e
                                                         _tl1311713450_)))
                                                   (let ((_hd1311913456_
                                                          (##car _e1311813453_))
                                                         (_tl1312013458_
                                                          (##cdr _e1311813453_)))
                                                     (if (gx#stx-null?
                                                          _tl1312013458_)
                                                         (if (gx#stx-pair?
                                                              _tl1311413442_)
                                                             (let ((_e1312113461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1311413442_)))
                       (let ((_hd1312213464_ (##car _e1312113461_))
                             (_tl1312313466_ (##cdr _e1312113461_)))
                         (if (gx#stx-pair? _hd1312213464_)
                             (let ((_e1312413469_ (gx#stx-e _hd1312213464_)))
                               (let ((_hd1312513472_ (##car _e1312413469_))
                                     (_tl1312613474_ (##cdr _e1312413469_)))
                                 (if (gx#identifier? _hd1312513472_)
                                     (if (gx#stx-eq? '%#quote _hd1312513472_)
                                         (if (gx#stx-pair? _tl1312613474_)
                                             (let ((_e1312713477_
                                                    (gx#stx-e _tl1312613474_)))
                                               (let ((_hd1312813480_
                                                      (##car _e1312713477_))
                                                     (_tl1312913482_
                                                      (##cdr _e1312713477_)))
                                                 (if (gx#stx-datum?
                                                      _hd1312813480_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1312813480_)
                         '#f)
                 (if (gx#stx-null? _tl1312913482_)
                     (if (gx#stx-pair? _tl1312313466_)
                         (let ((_e1313013485_ (gx#stx-e _tl1312313466_)))
                           (let ((_hd1313113488_ (##car _e1313013485_))
                                 (_tl1313213490_ (##cdr _e1313013485_)))
                             (if (gx#stx-pair? _hd1313113488_)
                                 (let ((_e1313313493_
                                        (gx#stx-e _hd1313113488_)))
                                   (let ((_hd1313413496_ (##car _e1313313493_))
                                         (_tl1313513498_
                                          (##cdr _e1313313493_)))
                                     (if (gx#identifier? _hd1313413496_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1313413496_)
                                             (if (gx#stx-pair? _tl1313513498_)
                                                 (let ((_e1313613501_
                                                        (gx#stx-e
                                                         _tl1313513498_)))
                                                   (let ((_hd1313713504_
                                                          (##car _e1313613501_))
                                                         (_tl1313813506_
                                                          (##cdr _e1313613501_)))
                                                     (if (gx#stx-null?
                                                          _tl1313813506_)
                                                         (if (gx#stx-pair?
                                                              _tl1313213490_)
                                                             (let ((_e1313913509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1313213490_)))
                       (let ((_hd1314013512_ (##car _e1313913509_))
                             (_tl1314113514_ (##cdr _e1313913509_)))
                         (if (gx#stx-pair? _tl1314113514_)
                             (let ((_e1314213517_ (gx#stx-e _tl1314113514_)))
                               (let ((_hd1314313520_ (##car _e1314213517_))
                                     (_tl1314413522_ (##cdr _e1314213517_)))
                                 (if (gx#stx-pair? _hd1314313520_)
                                     (let ((_e1314513525_
                                            (gx#stx-e _hd1314313520_)))
                                       (let ((_hd1314613528_
                                              (##car _e1314513525_))
                                             (_tl1314713530_
                                              (##cdr _e1314513525_)))
                                         (if (gx#identifier? _hd1314613528_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1314613528_)
                                                 (if (gx#stx-pair?
                                                      _tl1314713530_)
                                                     (let ((_e1314813533_
                                                            (gx#stx-e
                                                             _tl1314713530_)))
                                                       (let ((_hd1314913536_
                                                              (##car _e1314813533_))
                                                             (_tl1315013538_
                                                              (##cdr _e1314813533_)))
                                                         (if (gx#stx-null?
                                                              _tl1315013538_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1314413522_)
                         (let ((_e1315113541_ (gx#stx-e _tl1314413522_)))
                           (let ((_hd1315213544_ (##car _e1315113541_))
                                 (_tl1315313546_ (##cdr _e1315113541_)))
                             (if (gx#stx-pair? _hd1315213544_)
                                 (let ((_e1315413549_
                                        (gx#stx-e _hd1315213544_)))
                                   (let ((_hd1315513552_ (##car _e1315413549_))
                                         (_tl1315613554_
                                          (##cdr _e1315413549_)))
                                     (if (gx#identifier? _hd1315513552_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1315513552_)
                                             (if (gx#stx-pair? _tl1315613554_)
                                                 (let ((_e1315713557_
                                                        (gx#stx-e
                                                         _tl1315613554_)))
                                                   (let ((_hd1315813560_
                                                          (##car _e1315713557_))
                                                         (_tl1315913562_
                                                          (##cdr _e1315713557_)))
                                                     (if (gx#stx-null?
                                                          _tl1315913562_)
                                                         (if (gx#stx-null?
                                                              _tl1315313546_)
                                                             ((lambda (_L13565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L13566_
                               _L13567_
                               _L13568_
                               _L13569_)
                        (let ((__obj19969
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19969
                             (gx#stx-e _L13569_)
                             '#f
                             (gx#stx-e _L13568_)
                             '0
                             (gx#stx-e _L13565_)
                             (gx#stx-e _L13566_))
                            __obj19969)))
                      _hd1315813560_
                      _hd1314913536_
                      _hd1314013512_
                      _hd1313713504_
                      _hd1311913456_)
                     (_g1310313432_ _g1310613435_))
                 (_g1310313432_ _g1310613435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310313432_ _g1310613435_))
                                             (_g1310313432_ _g1310613435_))
                                         (_g1310313432_ _g1310613435_))))
                                 (_g1310313432_ _g1310613435_))))
                         (_g1310313432_ _g1310613435_))
                     (_g1310313432_ _g1310613435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1310313432_
                                                      _g1310613435_))
                                                 (_g1310313432_ _g1310613435_))
                                             (_g1310313432_ _g1310613435_))))
                                     (_g1310313432_ _g1310613435_))))
                             (_g1310313432_ _g1310613435_))))
                     (_g1310313432_ _g1310613435_))
                 (_g1310313432_ _g1310613435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310313432_ _g1310613435_))
                                             (_g1310313432_ _g1310613435_))
                                         (_g1310313432_ _g1310613435_))))
                                 (_g1310313432_ _g1310613435_))))
                         (_g1310313432_ _g1310613435_))
                     (_g1310313432_ _g1310613435_))
                 (_g1310313432_ _g1310613435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1310313432_
                                                      _g1310613435_))))
                                             (_g1310313432_ _g1310613435_))
                                         (_g1310313432_ _g1310613435_))
                                     (_g1310313432_ _g1310613435_))))
                             (_g1310313432_ _g1310613435_))))
                     (_g1310313432_ _g1310613435_))
                 (_g1310313432_ _g1310613435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310313432_ _g1310613435_))
                                             (_g1310313432_ _g1310613435_))
                                         (_g1310313432_ _g1310613435_))))
                                 (_g1310313432_ _g1310613435_))))
                         (_g1310313432_ _g1310613435_)))))
              (_g1310213612_ _args13101_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13026_ _args13027_)
      (let ((_g1303013046_
             (lambda (_g1303113043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1303113043_))))
        (let ((_g1302913053_ (lambda (_g1303113049_) ((lambda () '#f)))))
          (let ((_g1302813097_
                 (lambda (_g1303113056_)
                   (if (gx#stx-pair? _g1303113056_)
                       (let ((_e1303313058_ (gx#stx-e _g1303113056_)))
                         (let ((_hd1303413061_ (##car _e1303313058_))
                               (_tl1303513063_ (##cdr _e1303313058_)))
                           (if (gx#stx-pair? _hd1303413061_)
                               (let ((_e1303613066_ (gx#stx-e _hd1303413061_)))
                                 (let ((_hd1303713069_ (##car _e1303613066_))
                                       (_tl1303813071_ (##cdr _e1303613066_)))
                                   (if (gx#identifier? _hd1303713069_)
                                       (if (gx#stx-eq? '%#ref _hd1303713069_)
                                           (if (gx#stx-pair? _tl1303813071_)
                                               (let ((_e1303913074_
                                                      (gx#stx-e
                                                       _tl1303813071_)))
                                                 (let ((_hd1304013077_
                                                        (##car _e1303913074_))
                                                       (_tl1304113079_
                                                        (##cdr _e1303913074_)))
                                                   (if (gx#stx-null?
                                                        _tl1304113079_)
                                                       (if (gx#stx-null?
                                                            _tl1303513063_)
                                                           ((lambda (_L13082_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L13082_)))
                                                            _hd1304013077_)
                                                           (_g1302913053_
                                                            _g1303113056_))
                                                       (_g1302913053_
                                                        _g1303113056_))))
                                               (_g1302913053_ _g1303113056_))
                                           (_g1302913053_ _g1303113056_))
                                       (_g1302913053_ _g1303113056_))))
                               (_g1302913053_ _g1303113056_))))
                       (_g1302913053_ _g1303113056_)))))
            (_g1302813097_ _args13027_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12895
      (lambda (_stx12897_ _args12898_ _unchecked?12899_)
        (let ((_g1290212928_
               (lambda (_g1290312925_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1290312925_))))
          (let ((_g1290112935_ (lambda (_g1290312931_) ((lambda () '#f)))))
            (let ((_g1290013011_
                   (lambda (_g1290312938_)
                     (if (gx#stx-pair? _g1290312938_)
                         (let ((_e1290612940_ (gx#stx-e _g1290312938_)))
                           (let ((_hd1290712943_ (##car _e1290612940_))
                                 (_tl1290812945_ (##cdr _e1290612940_)))
                             (if (gx#stx-pair? _hd1290712943_)
                                 (let ((_e1290912948_
                                        (gx#stx-e _hd1290712943_)))
                                   (let ((_hd1291012951_ (##car _e1290912948_))
                                         (_tl1291112953_
                                          (##cdr _e1290912948_)))
                                     (if (gx#identifier? _hd1291012951_)
                                         (if (gx#stx-eq? '%#ref _hd1291012951_)
                                             (if (gx#stx-pair? _tl1291112953_)
                                                 (let ((_e1291212956_
                                                        (gx#stx-e
                                                         _tl1291112953_)))
                                                   (let ((_hd1291312959_
                                                          (##car _e1291212956_))
                                                         (_tl1291412961_
                                                          (##cdr _e1291212956_)))
                                                     (if (gx#stx-null?
                                                          _tl1291412961_)
                                                         (if (gx#stx-pair?
                                                              _tl1290812945_)
                                                             (let ((_e1291512964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1290812945_)))
                       (let ((_hd1291612967_ (##car _e1291512964_))
                             (_tl1291712969_ (##cdr _e1291512964_)))
                         (if (gx#stx-pair? _hd1291612967_)
                             (let ((_e1291812972_ (gx#stx-e _hd1291612967_)))
                               (let ((_hd1291912975_ (##car _e1291812972_))
                                     (_tl1292012977_ (##cdr _e1291812972_)))
                                 (if (gx#identifier? _hd1291912975_)
                                     (if (gx#stx-eq? '%#quote _hd1291912975_)
                                         (if (gx#stx-pair? _tl1292012977_)
                                             (let ((_e1292112980_
                                                    (gx#stx-e _tl1292012977_)))
                                               (let ((_hd1292212983_
                                                      (##car _e1292112980_))
                                                     (_tl1292312985_
                                                      (##cdr _e1292112980_)))
                                                 (if (gx#stx-null?
                                                      _tl1292312985_)
                                                     (if (gx#stx-null?
                                                          _tl1291712969_)
                                                         ((lambda (_L12988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12989_)
                    (##structure
                     gxc#!struct-getf::t
                     (gxc#generate-runtime-binding-id _L12989_)
                     (gx#stx-e _L12988_)
                     _unchecked?12899_))
                  _hd1292212983_
                  _hd1291312959_)
                 (_g1290112935_ _g1290312938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1290112935_
                                                      _g1290312938_))))
                                             (_g1290112935_ _g1290312938_))
                                         (_g1290112935_ _g1290312938_))
                                     (_g1290112935_ _g1290312938_))))
                             (_g1290112935_ _g1290312938_))))
                     (_g1290112935_ _g1290312938_))
                 (_g1290112935_ _g1290312938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1290112935_ _g1290312938_))
                                             (_g1290112935_ _g1290312938_))
                                         (_g1290112935_ _g1290312938_))))
                                 (_g1290112935_ _g1290312938_))))
                         (_g1290112935_ _g1290312938_)))))
              (_g1290013011_ _args12898_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13017_ _args13018_)
          (let ((_unchecked?13020_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12895
             _stx13017_
             _args13018_
             _unchecked?13020_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20033_
          (let ((_g20032_ (length _g20033_)))
            (cond ((fx= _g20032_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20033_))
                  ((fx= _g20032_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12895
                          _g20033_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20033_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12765
      (lambda (_stx12767_ _args12768_ _unchecked?12769_)
        (let ((_g1277212798_
               (lambda (_g1277312795_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1277312795_))))
          (let ((_g1277112805_ (lambda (_g1277312801_) ((lambda () '#f)))))
            (let ((_g1277012881_
                   (lambda (_g1277312808_)
                     (if (gx#stx-pair? _g1277312808_)
                         (let ((_e1277612810_ (gx#stx-e _g1277312808_)))
                           (let ((_hd1277712813_ (##car _e1277612810_))
                                 (_tl1277812815_ (##cdr _e1277612810_)))
                             (if (gx#stx-pair? _hd1277712813_)
                                 (let ((_e1277912818_
                                        (gx#stx-e _hd1277712813_)))
                                   (let ((_hd1278012821_ (##car _e1277912818_))
                                         (_tl1278112823_
                                          (##cdr _e1277912818_)))
                                     (if (gx#identifier? _hd1278012821_)
                                         (if (gx#stx-eq? '%#ref _hd1278012821_)
                                             (if (gx#stx-pair? _tl1278112823_)
                                                 (let ((_e1278212826_
                                                        (gx#stx-e
                                                         _tl1278112823_)))
                                                   (let ((_hd1278312829_
                                                          (##car _e1278212826_))
                                                         (_tl1278412831_
                                                          (##cdr _e1278212826_)))
                                                     (if (gx#stx-null?
                                                          _tl1278412831_)
                                                         (if (gx#stx-pair?
                                                              _tl1277812815_)
                                                             (let ((_e1278512834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1277812815_)))
                       (let ((_hd1278612837_ (##car _e1278512834_))
                             (_tl1278712839_ (##cdr _e1278512834_)))
                         (if (gx#stx-pair? _hd1278612837_)
                             (let ((_e1278812842_ (gx#stx-e _hd1278612837_)))
                               (let ((_hd1278912845_ (##car _e1278812842_))
                                     (_tl1279012847_ (##cdr _e1278812842_)))
                                 (if (gx#identifier? _hd1278912845_)
                                     (if (gx#stx-eq? '%#quote _hd1278912845_)
                                         (if (gx#stx-pair? _tl1279012847_)
                                             (let ((_e1279112850_
                                                    (gx#stx-e _tl1279012847_)))
                                               (let ((_hd1279212853_
                                                      (##car _e1279112850_))
                                                     (_tl1279312855_
                                                      (##cdr _e1279112850_)))
                                                 (if (gx#stx-null?
                                                      _tl1279312855_)
                                                     (if (gx#stx-null?
                                                          _tl1278712839_)
                                                         ((lambda (_L12858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12859_)
                    (##structure
                     gxc#!struct-setf::t
                     (gxc#generate-runtime-binding-id _L12859_)
                     (gx#stx-e _L12858_)
                     _unchecked?12769_))
                  _hd1279212853_
                  _hd1278312829_)
                 (_g1277112805_ _g1277312808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1277112805_
                                                      _g1277312808_))))
                                             (_g1277112805_ _g1277312808_))
                                         (_g1277112805_ _g1277312808_))
                                     (_g1277112805_ _g1277312808_))))
                             (_g1277112805_ _g1277312808_))))
                     (_g1277112805_ _g1277312808_))
                 (_g1277112805_ _g1277312808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1277112805_ _g1277312808_))
                                             (_g1277112805_ _g1277312808_))
                                         (_g1277112805_ _g1277312808_))))
                                 (_g1277112805_ _g1277312808_))))
                         (_g1277112805_ _g1277312808_)))))
              (_g1277012881_ _args12768_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx12887_ _args12888_)
          (let ((_unchecked?12890_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12765
             _stx12887_
             _args12888_
             _unchecked?12890_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20035_
          (let ((_g20034_ (length _g20035_)))
            (cond ((fx= _g20034_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20035_))
                  ((fx= _g20034_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12765
                          _g20035_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20035_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx12763_ _args12764_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12895
       _stx12763_
       _args12764_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx12760_ _args12761_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12765
       _stx12760_
       _args12761_
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
    (lambda (_stx12709_)
      (let ((_g1271112724_
             (lambda (_g1271212721_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1271212721_))))
        (let ((_g1271012757_
               (lambda (_g1271212727_)
                 (if (gx#stx-pair? _g1271212727_)
                     (let ((_e1271412729_ (gx#stx-e _g1271212727_)))
                       (let ((_hd1271512732_ (##car _e1271412729_))
                             (_tl1271612734_ (##cdr _e1271412729_)))
                         (if (gx#stx-pair? _tl1271612734_)
                             (let ((_e1271712737_ (gx#stx-e _tl1271612734_)))
                               (let ((_hd1271812740_ (##car _e1271712737_))
                                     (_tl1271912742_ (##cdr _e1271712737_)))
                                 (if (gx#stx-null? _tl1271912742_)
                                     ((lambda (_L12745_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12745_)))
                                      _hd1271812740_)
                                     (_g1271112724_ _g1271212727_))))
                             (_g1271112724_ _g1271212727_))))
                     (_g1271112724_ _g1271212727_)))))
          (_g1271012757_ _stx12709_)))))
  (define gxc#optimize-call%
    (lambda (_stx12615_)
      (let ((_g1261812638_
             (lambda (_g1261912635_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1261912635_))))
        (let ((_g1261712645_
               (lambda (_g1261912641_)
                 ((lambda () (gxc#xform-call% _stx12615_))))))
          (let ((_g1261612706_
                 (lambda (_g1261912648_)
                   (if (gx#stx-pair? _g1261912648_)
                       (let ((_e1262212650_ (gx#stx-e _g1261912648_)))
                         (let ((_hd1262312653_ (##car _e1262212650_))
                               (_tl1262412655_ (##cdr _e1262212650_)))
                           (if (gx#stx-pair? _tl1262412655_)
                               (let ((_e1262512658_ (gx#stx-e _tl1262412655_)))
                                 (let ((_hd1262612661_ (##car _e1262512658_))
                                       (_tl1262712663_ (##cdr _e1262512658_)))
                                   (if (gx#stx-pair? _hd1262612661_)
                                       (let ((_e1262812666_
                                              (gx#stx-e _hd1262612661_)))
                                         (let ((_hd1262912669_
                                                (##car _e1262812666_))
                                               (_tl1263012671_
                                                (##cdr _e1262812666_)))
                                           (if (gx#identifier? _hd1262912669_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1262912669_)
                                                   (if (gx#stx-pair?
                                                        _tl1263012671_)
                                                       (let ((_e1263112674_
                                                              (gx#stx-e
                                                               _tl1263012671_)))
                                                         (let ((_hd1263212677_
                                                                (##car _e1263112674_))
                                                               (_tl1263312679_
                                                                (##cdr _e1263112674_)))
                                                           (if (gx#stx-null?
                                                                _tl1263312679_)
                                                               ((lambda (_L12682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12683_)
                          (let ((_rator-id12701_
                                 (gxc#generate-runtime-binding-id _L12683_)))
                            (let ((_rator-type12703_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12701_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12703_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12701_
                                       '" => "
                                       _rator-type12703_
                                       '" "
                                       (##structure-ref
                                        _rator-type12703_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12703_
                                       'optimize-call
                                       _stx12615_
                                       _L12682_))
                                    (if (not _rator-type12703_)
                                        (gxc#xform-call% _stx12615_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12615_
                                         _rator-type12703_)))))))
                        _tl1262712663_
                        _hd1263212677_)
                       (_g1261712645_ _g1261912648_))))
               (_g1261712645_ _g1261912648_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1261712645_
                                                    _g1261912648_))
                                               (_g1261712645_ _g1261912648_))))
                                       (_g1261712645_ _g1261912648_))))
                               (_g1261712645_ _g1261912648_))))
                       (_g1261712645_ _g1261912648_)))))
            (_g1261612706_ _stx12615_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12470_ _stx12471_ _args12472_)
      (let ((_self1247312479_ _self12470_))
        (let ((_E1247512483_
               (lambda () (error '"No clause matching" _self1247312479_))))
          (let ((_K1247612607_
                 (lambda (_struct-t12486_)
                   (let ((_struct-type12488_
                          (gxc#optimizer-resolve-type _struct-t12486_)))
                     (let ((_struct-type1248912503_ _struct-type12488_))
                       (let ((_E1249312507_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1248912503_))))
                         (let ((_else1249212511_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12471_
                                   _struct-t12486_
                                   _struct-type12488_))))
                           (let ((_try-match1249112519_
                                  (lambda ()
                                    (let ((_K1249412516_
                                           (lambda ()
                                             (gxc#xform-call% _stx12471_))))
                                      (if (##eq? _struct-type1248912503_ '#f)
                                          (_K1249412516_)
                                          (_else1249212511_))))))
                             (let ((_K1249512582_
                                    (lambda (_plist12522_
                                             _struct-type-id12523_)
                                      (let ((_g1252612536_
                                             (lambda (_g1252712533_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1252712533_))))
                                        (let ((_g1252512543_
                                               (lambda (_g1252712539_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx12471_))))))
                                          (let ((_g1252412579_
                                                 (lambda (_g1252712546_)
                                                   (if (gx#stx-pair?
                                                        _g1252712546_)
                                                       (let ((_e1252912548_
                                                              (gx#stx-e
                                                               _g1252712546_)))
                                                         (let ((_hd1253012551_
                                                                (##car _e1252912548_))
                                                               (_tl1253112553_
                                                                (##cdr _e1252912548_)))
                                                           (if (gx#stx-null?
                                                                _tl1253112553_)
                                                               ((lambda (_L12556_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12576_ (gxc#compile-e _L12556_))
                                (_op12577_
                                 (if (if _plist12522_
                                         (assgetq 'final: _plist12522_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12577_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id12523_
                                                     '()))
                                         (cons _expr12576_ '())))
                             _stx12471_)))
                        _hd1253012551_)
                       (_g1252512543_ _g1252712546_))))
               (_g1252512543_ _g1252712546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1252412579_ _args12472_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1248912503_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1249612585_
                                          (##vector-ref
                                           _struct-type1248912503_
                                           '1)))
                                     (let ((_struct-type-id12588_
                                            _e1249612585_))
                                       (let ((_e1249712590_
                                              (##vector-ref
                                               _struct-type1248912503_
                                               '2)))
                                         (let ((_e1249812593_
                                                (##vector-ref
                                                 _struct-type1248912503_
                                                 '3)))
                                           (let ((_e1249912596_
                                                  (##vector-ref
                                                   _struct-type1248912503_
                                                   '4)))
                                             (let ((_e1250012599_
                                                    (##vector-ref
                                                     _struct-type1248912503_
                                                     '5)))
                                               (let ((_e1250112602_
                                                      (##vector-ref
                                                       _struct-type1248912503_
                                                       '6)))
                                                 (let ((_plist12605_
                                                        _e1250112602_))
                                                   (_K1249512582_
                                                    _plist12605_
                                                    _struct-type-id12588_)))))))))
                                   (_try-match1249112519_)))))))))))
            (if (##structure-instance-of?
                 _self1247312479_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1247712610_ (##vector-ref _self1247312479_ '1)))
                  (let ((_struct-t12613_ _e1247712610_))
                    (_K1247612607_ _struct-t12613_)))
                (_E1247512483_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12366_ _stx12367_ _args12368_)
      (let ((_self1236912375_ _self12366_))
        (let ((_E1237112379_
               (lambda () (error '"No clause matching" _self1236912375_))))
          (let ((_K1237212462_
                 (lambda (_struct-t12382_)
                   (let ((_struct-type12384_
                          (gxc#optimizer-resolve-type _struct-t12382_)))
                     (let ((_struct-type1238512398_ _struct-type12384_))
                       (let ((_E1238912402_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1238512398_))))
                         (let ((_else1238812406_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx12367_
                                   _struct-t12382_
                                   _struct-type12384_))))
                           (let ((_try-match1238712414_
                                  (lambda ()
                                    (let ((_K1239012411_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t12382_)
                                               (gxc#xform-call% _stx12367_)))))
                                      (if (##eq? _struct-type1238512398_ '#f)
                                          (_K1239012411_)
                                          (_else1238812406_))))))
                             (let ((_K1239112436_
                                    (lambda (_ctor12417_
                                             _xfields12418_
                                             _fields12419_
                                             _type-id12420_)
                                      (let ((_args12422_
                                             (map gxc#compile-e _args12368_)))
                                        (let ((_$e12424_
                                               (if _ctor12417_
                                                   (if _xfields12418_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type12384_
                                                        _ctor12417_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e12424_
                                              ((lambda (_kons12427_)
                                                 (let ((_$obj12429_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj12429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t12382_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields12419_ _xfields12418_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons12427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj12429_ '())) _args12422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx12367_))
                                          (cons (cons '%#ref
                                                      (cons _$obj12429_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx12367_)))
                                               _$e12424_)
                                              (if (let ((_$e12431_
                                                         _ctor12417_))
                                                    (if _$e12431_
                                                        _$e12431_
                                                        (not _xfields12418_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t12382_ '()))
                             _args12422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12367_)
                                                  (let ((_arity12434_
                                                         (fx+ _fields12419_
                                                              _xfields12418_)))
                                                    (if (fx= _arity12434_
                                                             (length _args12422_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t12382_ '()))
                                   _args12422_)))
                 _stx12367_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx12367_
                 _struct-t12382_
                 _arity12434_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1238512398_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1239212439_
                                          (##vector-ref
                                           _struct-type1238512398_
                                           '1)))
                                     (let ((_type-id12442_ _e1239212439_))
                                       (let ((_e1239312444_
                                              (##vector-ref
                                               _struct-type1238512398_
                                               '2)))
                                         (let ((_e1239412447_
                                                (##vector-ref
                                                 _struct-type1238512398_
                                                 '3)))
                                           (let ((_fields12450_ _e1239412447_))
                                             (let ((_e1239512452_
                                                    (##vector-ref
                                                     _struct-type1238512398_
                                                     '4)))
                                               (let ((_xfields12455_
                                                      _e1239512452_))
                                                 (let ((_e1239612457_
                                                        (##vector-ref
                                                         _struct-type1238512398_
                                                         '5)))
                                                   (let ((_ctor12460_
                                                          _e1239612457_))
                                                     (_K1239112436_
                                                      _ctor12460_
                                                      _xfields12455_
                                                      _fields12450_
                                                      _type-id12442_))))))))))
                                   (_try-match1238712414_)))))))))))
            (if (##structure-instance-of?
                 _self1236912375_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1237312465_ (##vector-ref _self1236912375_ '1)))
                  (let ((_struct-t12468_ _e1237312465_))
                    (_K1237212462_ _struct-t12468_)))
                (_E1237112379_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12200_ _stx12201_ _args12202_)
      (let ((_self1220312211_ _self12200_))
        (let ((_E1220512215_
               (lambda () (error '"No clause matching" _self1220312211_))))
          (let ((_K1220612348_
                 (lambda (_unchecked?12218_ _off12219_ _struct-t12220_)
                   (let ((_struct-type12222_
                          (gxc#optimizer-resolve-type _struct-t12220_)))
                     (let ((_struct-type1222312237_ _struct-type12222_))
                       (let ((_E1222712241_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1222312237_))))
                         (let ((_else1222612245_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12201_
                                   _struct-t12220_
                                   _struct-type12222_))))
                           (let ((_try-match1222512253_
                                  (lambda ()
                                    (let ((_K1222812250_
                                           (lambda ()
                                             (gxc#xform-call% _stx12201_))))
                                      (if (##eq? _struct-type1222312237_ '#f)
                                          (_K1222812250_)
                                          (_else1222612245_))))))
                             (let ((_K1222912319_
                                    (lambda (_plist12256_
                                             _xfields12257_
                                             _fields12258_
                                             _struct-type-id12259_)
                                      (if _xfields12257_
                                          (let ((_g1226212272_
                                                 (lambda (_g1226312269_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1226312269_))))
                                            (let ((_g1226112279_
                                                   (lambda (_g1226312275_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx12201_))))))
                                              (let ((_g1226012316_
                                                     (lambda (_g1226312282_)
                                                       (if (gx#stx-pair?
                                                            _g1226312282_)
                                                           (let ((_e1226512284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1226312282_)))
                     (let ((_hd1226612287_ (##car _e1226512284_))
                           (_tl1226712289_ (##cdr _e1226512284_)))
                       (if (gx#stx-null? _tl1226712289_)
                           ((lambda (_L12292_)
                              (let ((_expr12312_ (gxc#compile-e _L12292_))
                                    (_off12313_
                                     (fx+ _off12219_ _xfields12257_ '1))
                                    (_op12314_
                                     (if _unchecked?12218_
                                         '%#struct-unchecked-ref
                                         (if (if _plist12256_
                                                 (assgetq 'final: _plist12256_)
                                                 '#f)
                                             '%#struct-direct-ref
                                             '%#struct-ref))))
                                (gxc#xform-wrap-source
                                 (cons _op12314_
                                       (cons (cons '%#ref
                                                   (cons _struct-t12220_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off12313_ '()))
                                                   (cons _expr12312_ '()))))
                                 _stx12201_)))
                            _hd1226612287_)
                           (_g1226112279_ _g1226312282_))))
                   (_g1226112279_ _g1226312282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1226012316_ _args12202_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id12259_)
                                            (gxc#xform-call% _stx12201_))))))
                               (if (##structure-instance-of?
                                    _struct-type1222312237_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1223012322_
                                          (##vector-ref
                                           _struct-type1222312237_
                                           '1)))
                                     (let ((_struct-type-id12325_
                                            _e1223012322_))
                                       (let ((_e1223112327_
                                              (##vector-ref
                                               _struct-type1222312237_
                                               '2)))
                                         (let ((_e1223212330_
                                                (##vector-ref
                                                 _struct-type1222312237_
                                                 '3)))
                                           (let ((_fields12333_ _e1223212330_))
                                             (let ((_e1223312335_
                                                    (##vector-ref
                                                     _struct-type1222312237_
                                                     '4)))
                                               (let ((_xfields12338_
                                                      _e1223312335_))
                                                 (let ((_e1223412340_
                                                        (##vector-ref
                                                         _struct-type1222312237_
                                                         '5)))
                                                   (let ((_e1223512343_
                                                          (##vector-ref
                                                           _struct-type1222312237_
                                                           '6)))
                                                     (let ((_plist12346_
                                                            _e1223512343_))
                                                       (_K1222912319_
                                                        _plist12346_
                                                        _xfields12338_
                                                        _fields12333_
                                                        _struct-type-id12325_)))))))))))
                                   (_try-match1222512253_)))))))))))
            (if (##structure-instance-of?
                 _self1220312211_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1220712351_ (##vector-ref _self1220312211_ '1)))
                  (let ((_struct-t12354_ _e1220712351_))
                    (let ((_e1220812356_ (##vector-ref _self1220312211_ '2)))
                      (let ((_off12359_ _e1220812356_))
                        (let ((_e1220912361_
                               (##vector-ref _self1220312211_ '3)))
                          (let ((_unchecked?12364_ _e1220912361_))
                            (_K1220612348_
                             _unchecked?12364_
                             _off12359_
                             _struct-t12354_)))))))
                (_E1220512215_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12017_ _stx12018_ _args12019_)
      (let ((_self1202012028_ _self12017_))
        (let ((_E1202212032_
               (lambda () (error '"No clause matching" _self1202012028_))))
          (let ((_K1202312182_
                 (lambda (_unchecked?12035_ _off12036_ _struct-t12037_)
                   (let ((_struct-type12039_
                          (gxc#optimizer-resolve-type _struct-t12037_)))
                     (let ((_struct-type1204012054_ _struct-type12039_))
                       (let ((_E1204412058_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1204012054_))))
                         (let ((_else1204312062_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12018_
                                   _struct-t12037_
                                   _struct-type12039_))))
                           (let ((_try-match1204212070_
                                  (lambda ()
                                    (let ((_K1204512067_
                                           (lambda ()
                                             (gxc#xform-call% _stx12018_))))
                                      (if (##eq? _struct-type1204012054_ '#f)
                                          (_K1204512067_)
                                          (_else1204312062_))))))
                             (let ((_K1204612153_
                                    (lambda (_plist12073_
                                             _xfields12074_
                                             _fields12075_
                                             _struct-type-id12076_)
                                      (if _xfields12074_
                                          (let ((_g1207912093_
                                                 (lambda (_g1208012090_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1208012090_))))
                                            (let ((_g1207812100_
                                                   (lambda (_g1208012096_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx12018_))))))
                                              (let ((_g1207712150_
                                                     (lambda (_g1208012103_)
                                                       (if (gx#stx-pair?
                                                            _g1208012103_)
                                                           (let ((_e1208312105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1208012103_)))
                     (let ((_hd1208412108_ (##car _e1208312105_))
                           (_tl1208512110_ (##cdr _e1208312105_)))
                       (if (gx#stx-pair? _tl1208512110_)
                           (let ((_e1208612113_ (gx#stx-e _tl1208512110_)))
                             (let ((_hd1208712116_ (##car _e1208612113_))
                                   (_tl1208812118_ (##cdr _e1208612113_)))
                               (if (gx#stx-null? _tl1208812118_)
                                   ((lambda (_L12121_ _L12122_)
                                      (let ((_expr12145_
                                             (gxc#compile-e _L12122_))
                                            (_val12146_
                                             (gxc#compile-e _L12121_))
                                            (_off12147_
                                             (fx+ _off12036_
                                                  _xfields12074_
                                                  '1))
                                            (_op12148_
                                             (if _unchecked?12035_
                                                 '%#struct-unchecked-set!
                                                 (if (if _plist12073_
                                                         (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _plist12073_)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-direct-set!
                                                     '%#struct-set!))))
                                        (gxc#xform-wrap-source
                                         (cons _op12148_
                                               (cons (cons '%#ref
                                                           (cons _struct-t12037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off12147_ '()))
                   (cons _expr12145_ (cons _val12146_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx12018_)))
                                    _hd1208712116_
                                    _hd1208412108_)
                                   (_g1207812100_ _g1208012103_))))
                           (_g1207812100_ _g1208012103_))))
                   (_g1207812100_ _g1208012103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1207712150_ _args12019_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id12076_)
                                            (gxc#xform-call% _stx12018_))))))
                               (if (##structure-instance-of?
                                    _struct-type1204012054_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1204712156_
                                          (##vector-ref
                                           _struct-type1204012054_
                                           '1)))
                                     (let ((_struct-type-id12159_
                                            _e1204712156_))
                                       (let ((_e1204812161_
                                              (##vector-ref
                                               _struct-type1204012054_
                                               '2)))
                                         (let ((_e1204912164_
                                                (##vector-ref
                                                 _struct-type1204012054_
                                                 '3)))
                                           (let ((_fields12167_ _e1204912164_))
                                             (let ((_e1205012169_
                                                    (##vector-ref
                                                     _struct-type1204012054_
                                                     '4)))
                                               (let ((_xfields12172_
                                                      _e1205012169_))
                                                 (let ((_e1205112174_
                                                        (##vector-ref
                                                         _struct-type1204012054_
                                                         '5)))
                                                   (let ((_e1205212177_
                                                          (##vector-ref
                                                           _struct-type1204012054_
                                                           '6)))
                                                     (let ((_plist12180_
                                                            _e1205212177_))
                                                       (_K1204612153_
                                                        _plist12180_
                                                        _xfields12172_
                                                        _fields12167_
                                                        _struct-type-id12159_)))))))))))
                                   (_try-match1204212070_)))))))))))
            (if (##structure-instance-of?
                 _self1202012028_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1202412185_ (##vector-ref _self1202012028_ '1)))
                  (let ((_struct-t12188_ _e1202412185_))
                    (let ((_e1202512190_ (##vector-ref _self1202012028_ '2)))
                      (let ((_off12193_ _e1202512190_))
                        (let ((_e1202612195_
                               (##vector-ref _self1202012028_ '3)))
                          (let ((_unchecked?12198_ _e1202612195_))
                            (_K1202312182_
                             _unchecked?12198_
                             _off12193_
                             _struct-t12188_)))))))
                (_E1202212032_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11973_ _stx11974_ _args11975_)
      (let ((_self1197611985_ _self11973_))
        (let ((_E1197811989_
               (lambda () (error '"No clause matching" _self1197611985_))))
          (let ((_K1197911996_
                 (lambda (_inline11992_ _dispatch11993_ _arity11994_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11973_ _args11975_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11974_
                          _arity11994_))
                     (if _inline11992_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11992_ _stx11974_)
                             _stx11974_)))
                         (if _dispatch11993_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11993_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11993_ '()))
                                             _args11975_))
                                 _stx11974_)))
                             (gxc#xform-call% _stx11974_)))))))
            (if (##structure-instance-of?
                 _self1197611985_
                 (##type-id gxc#!lambda::t))
                (let ((_e1198011999_ (##vector-ref _self1197611985_ '1)))
                  (let ((_e1198112002_ (##vector-ref _self1197611985_ '2)))
                    (let ((_arity12005_ _e1198112002_))
                      (let ((_e1198212007_ (##vector-ref _self1197611985_ '3)))
                        (let ((_dispatch12010_ _e1198212007_))
                          (let ((_e1198312012_
                                 (##vector-ref _self1197611985_ '4)))
                            (let ((_inline12015_ _e1198312012_))
                              (_K1197911996_
                               _inline12015_
                               _dispatch12010_
                               _arity12005_))))))))
                (_E1197811989_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11934_ _stx11935_ _args11936_)
      (let ((_self1193711944_ _self11934_))
        (let ((_E1193911948_
               (lambda () (error '"No clause matching" _self1193711944_))))
          (let ((_K1194011962_
                 (lambda (_clauses11951_)
                   (let ((_$e11957_
                          (find (lambda (_g1195211954_)
                                  (gxc#!lambda-arity-match?
                                   _g1195211954_
                                   _args11936_))
                                _clauses11951_)))
                     (if _$e11957_
                         ((lambda (_clause11960_)
                            (call-method
                             _clause11960_
                             'optimize-call
                             _stx11935_
                             _args11936_))
                          _$e11957_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11935_
                          (map gxc#!lambda-arity _clauses11951_)))))))
            (if (##structure-instance-of?
                 _self1193711944_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1194111965_ (##vector-ref _self1193711944_ '1)))
                  (let ((_e1194211968_ (##vector-ref _self1193711944_ '2)))
                    (let ((_clauses11971_ _e1194211968_))
                      (_K1194011962_ _clauses11971_))))
                (_E1193911948_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11870_ _args11871_)
      (let ((_self1187211879_ _self11870_))
        (let ((_E1187411883_
               (lambda () (error '"No clause matching" _self1187211879_))))
          (let ((_K1187511923_
                 (lambda (_arity11886_)
                   (let ((_arity1188711896_ _arity11886_))
                     (let ((_E1189011900_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1188711896_))))
                       (let ((_try-match1188911916_
                              (lambda ()
                                (let ((_K1189111906_
                                       (lambda (_arity11904_)
                                         (fx>= (length _args11871_)
                                               _arity11904_))))
                                  (if (##pair? _arity1188711896_)
                                      (let ((_hd1189211909_
                                             (##car _arity1188711896_))
                                            (_tl1189311911_
                                             (##cdr _arity1188711896_)))
                                        (let ((_arity11914_ _hd1189211909_))
                                          (if (##null? _tl1189311911_)
                                              (_K1189111906_ _arity11914_)
                                              (_E1189011900_))))
                                      (_E1189011900_))))))
                         (let ((_K1189411920_
                                (lambda ()
                                  (fx= (length _args11871_) _arity11886_))))
                           (if (fixnum? _arity1188711896_)
                               (_K1189411920_)
                               (_try-match1188911916_)))))))))
            (if (##structure-instance-of?
                 _self1187211879_
                 (##type-id gxc#!lambda::t))
                (let ((_e1187611926_ (##vector-ref _self1187211879_ '1)))
                  (let ((_e1187711929_ (##vector-ref _self1187211879_ '2)))
                    (let ((_arity11932_ _e1187711929_))
                      (_K1187511923_ _arity11932_))))
                (_E1187411883_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11810_)
      (let ((_g1181211826_
             (lambda (_g1181311823_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1181311823_))))
        (let ((_g1181111867_
               (lambda (_g1181311829_)
                 (if (gx#stx-pair? _g1181311829_)
                     (let ((_e1181611831_ (gx#stx-e _g1181311829_)))
                       (let ((_hd1181711834_ (##car _e1181611831_))
                             (_tl1181811836_ (##cdr _e1181611831_)))
                         (if (gx#stx-pair? _tl1181811836_)
                             (let ((_e1181911839_ (gx#stx-e _tl1181811836_)))
                               (let ((_hd1182011842_ (##car _e1181911839_))
                                     (_tl1182111844_ (##cdr _e1181911839_)))
                                 ((lambda (_L11847_ _L11848_)
                                    (let ((_ctx11861_
                                           (gx#syntax-local-e__0 _L11848_)))
                                      (let ((_code11863_
                                             (##structure-ref
                                              _ctx11861_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11863_))
                                           gx#current-expander-context
                                           _ctx11861_)))))
                                  _tl1182111844_
                                  _hd1182011842_)))
                             (_g1181211826_ _g1181311829_))))
                     (_g1181211826_ _g1181311829_)))))
          (_g1181111867_ _stx11810_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11620_)
      (let ((_generate-e11622_
             (lambda (_id11799_)
               (let ((_sym11801_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11799_)
                          '#f)))
                 (let ((_$e11803_
                        (if _sym11801_
                            (gxc#optimizer-lookup-type _sym11801_)
                            '#f)))
                   (if _$e11803_
                       ((lambda (_type11806_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11801_)
                            (let ((_typedecl11808_
                                   (call-method _type11806_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11801_
                                          (cons _typedecl11808_ '()))))))
                        _$e11803_)
                       '(begin)))))))
        (let ((_g1162511663_
               (lambda (_g1162611660_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1162611660_))))
          (let ((_g1162411744_
                 (lambda (_g1162611666_)
                   (if (gx#stx-pair? _g1162611666_)
                       (let ((_e1164111668_ (gx#stx-e _g1162611666_)))
                         (let ((_hd1164211671_ (##car _e1164111668_))
                               (_tl1164311673_ (##cdr _e1164111668_)))
                           (if (gx#stx-pair? _tl1164311673_)
                               (let ((_e1164411676_ (gx#stx-e _tl1164311673_)))
                                 (let ((_hd1164511679_ (##car _e1164411676_))
                                       (_tl1164611681_ (##cdr _e1164411676_)))
                                   (if (gx#stx-pair/null? _hd1164511679_)
                                       (if (fx>= (gx#stx-length _hd1164511679_)
                                                 '0)
                                           (let ((_g20036_
                                                  (gx#syntax-split-splice
                                                   _hd1164511679_
                                                   '0)))
                                             (begin
                                               (let ((_g20037_
                                                      (values-count _g20036_)))
                                                 (if (not (fx= _g20037_ 2))
                                                     (error "Context expects 2 values"
                                                            _g20037_)))
                                               (let ((_target1164711684_
                                                      (values-ref _g20036_ 0))
                                                     (_tl1164911686_
                                                      (values-ref _g20036_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1164911686_)
                                                     (letrec ((_loop1165011689_
                                                               (lambda (_hd1164811692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1165411694_)
                         (if (gx#stx-pair? _hd1164811692_)
                             (let ((_e1165111697_ (gx#stx-e _hd1164811692_)))
                               (let ((_lp-hd1165211700_ (##car _e1165111697_))
                                     (_lp-tl1165311702_ (##cdr _e1165111697_)))
                                 (_loop1165011689_
                                  _lp-tl1165311702_
                                  (cons _lp-hd1165211700_ _id1165411694_))))
                             (let ((_id1165511705_ (reverse _id1165411694_)))
                               (if (gx#stx-pair? _tl1164611681_)
                                   (let ((_e1165611708_
                                          (gx#stx-e _tl1164611681_)))
                                     (let ((_hd1165711711_
                                            (##car _e1165611708_))
                                           (_tl1165811713_
                                            (##cdr _e1165611708_)))
                                       (if (gx#stx-null? _tl1165811713_)
                                           ((lambda (_L11716_)
                                              (let ((_types11742_
                                                     (map _generate-e11622_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1173411737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1173511739_)
                              (cons _g1173411737_ _g1173511739_))
                            '()
                            _L11716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11742_)))
                                            _id1165511705_)
                                           (_g1162511663_ _g1162611666_))))
                                   (_g1162511663_ _g1162611666_)))))))
               (_loop1165011689_ _target1164711684_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1162511663_
                                                      _g1162611666_)))))
                                           (_g1162511663_ _g1162611666_))
                                       (_g1162511663_ _g1162611666_))))
                               (_g1162511663_ _g1162611666_))))
                       (_g1162511663_ _g1162611666_)))))
            (let ((_g1162311796_
                   (lambda (_g1162611747_)
                     (if (gx#stx-pair? _g1162611747_)
                         (let ((_e1162811749_ (gx#stx-e _g1162611747_)))
                           (let ((_hd1162911752_ (##car _e1162811749_))
                                 (_tl1163011754_ (##cdr _e1162811749_)))
                             (if (gx#stx-pair? _tl1163011754_)
                                 (let ((_e1163111757_
                                        (gx#stx-e _tl1163011754_)))
                                   (let ((_hd1163211760_ (##car _e1163111757_))
                                         (_tl1163311762_
                                          (##cdr _e1163111757_)))
                                     (if (gx#stx-pair? _hd1163211760_)
                                         (let ((_e1163411765_
                                                (gx#stx-e _hd1163211760_)))
                                           (let ((_hd1163511768_
                                                  (##car _e1163411765_))
                                                 (_tl1163611770_
                                                  (##cdr _e1163411765_)))
                                             (if (gx#stx-null? _tl1163611770_)
                                                 (if (gx#stx-pair?
                                                      _tl1163311762_)
                                                     (let ((_e1163711773_
                                                            (gx#stx-e
                                                             _tl1163311762_)))
                                                       (let ((_hd1163811776_
                                                              (##car _e1163711773_))
                                                             (_tl1163911778_
                                                              (##cdr _e1163711773_)))
                                                         (if (gx#stx-null?
                                                              _tl1163911778_)
                                                             ((lambda (_L11781_)
                                                                (_generate-e11622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11781_))
                      _hd1163511768_)
                     (_g1162411744_ _g1162611747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1162411744_
                                                      _g1162611747_))
                                                 (_g1162411744_
                                                  _g1162611747_))))
                                         (_g1162411744_ _g1162611747_))))
                                 (_g1162411744_ _g1162611747_))))
                         (_g1162411744_ _g1162611747_)))))
              (_g1162311796_ _stx11620_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11174_)
      (let ((_g1117811280_
             (lambda (_g1117911277_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1117911277_))))
        (let ((_g1117711287_ (lambda (_g1117911283_) ((lambda () '(begin))))))
          (let ((_g1117611437_
                 (lambda (_g1117911290_)
                   (if (gx#stx-pair? _g1117911290_)
                       (let ((_e1123711292_ (gx#stx-e _g1117911290_)))
                         (let ((_hd1123811295_ (##car _e1123711292_))
                               (_tl1123911297_ (##cdr _e1123711292_)))
                           (if (gx#stx-pair? _tl1123911297_)
                               (let ((_e1124011300_ (gx#stx-e _tl1123911297_)))
                                 (let ((_hd1124111303_ (##car _e1124011300_))
                                       (_tl1124211305_ (##cdr _e1124011300_)))
                                   (if (gx#stx-pair? _hd1124111303_)
                                       (let ((_e1124311308_
                                              (gx#stx-e _hd1124111303_)))
                                         (let ((_hd1124411311_
                                                (##car _e1124311308_))
                                               (_tl1124511313_
                                                (##cdr _e1124311308_)))
                                           (if (gx#identifier? _hd1124411311_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1124411311_)
                                                   (if (gx#stx-pair?
                                                        _tl1124511313_)
                                                       (let ((_e1124611316_
                                                              (gx#stx-e
                                                               _tl1124511313_)))
                                                         (let ((_hd1124711319_
                                                                (##car _e1124611316_))
                                                               (_tl1124811321_
                                                                (##cdr _e1124611316_)))
                                                           (if (gx#stx-null?
                                                                _tl1124811321_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1124211305_)
                           (let ((_e1124911324_ (gx#stx-e _tl1124211305_)))
                             (let ((_hd1125011327_ (##car _e1124911324_))
                                   (_tl1125111329_ (##cdr _e1124911324_)))
                               (if (gx#stx-pair? _hd1125011327_)
                                   (let ((_e1125211332_
                                          (gx#stx-e _hd1125011327_)))
                                     (let ((_hd1125311335_
                                            (##car _e1125211332_))
                                           (_tl1125411337_
                                            (##cdr _e1125211332_)))
                                       (if (gx#identifier? _hd1125311335_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1125311335_)
                                               (if (gx#stx-pair?
                                                    _tl1125411337_)
                                                   (let ((_e1125511340_
                                                          (gx#stx-e
                                                           _tl1125411337_)))
                                                     (let ((_hd1125611343_
                                                            (##car _e1125511340_))
                                                           (_tl1125711345_
                                                            (##cdr _e1125511340_)))
                                                       (if (gx#stx-null?
                                                            _tl1125711345_)
                                                           (if (gx#stx-pair?
                                                                _tl1125111329_)
                                                               (let ((_e1125811348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1125111329_)))
                         (let ((_hd1125911351_ (##car _e1125811348_))
                               (_tl1126011353_ (##cdr _e1125811348_)))
                           (if (gx#stx-pair? _hd1125911351_)
                               (let ((_e1126111356_ (gx#stx-e _hd1125911351_)))
                                 (let ((_hd1126211359_ (##car _e1126111356_))
                                       (_tl1126311361_ (##cdr _e1126111356_)))
                                   (if (gx#identifier? _hd1126211359_)
                                       (if (gx#stx-eq? '%#quote _hd1126211359_)
                                           (if (gx#stx-pair? _tl1126311361_)
                                               (let ((_e1126411364_
                                                      (gx#stx-e
                                                       _tl1126311361_)))
                                                 (let ((_hd1126511367_
                                                        (##car _e1126411364_))
                                                       (_tl1126611369_
                                                        (##cdr _e1126411364_)))
                                                   (if (gx#stx-null?
                                                        _tl1126611369_)
                                                       (if (gx#stx-pair?
                                                            _tl1126011353_)
                                                           (let ((_e1126711372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1126011353_)))
                     (let ((_hd1126811375_ (##car _e1126711372_))
                           (_tl1126911377_ (##cdr _e1126711372_)))
                       (if (gx#stx-pair? _hd1126811375_)
                           (let ((_e1127011380_ (gx#stx-e _hd1126811375_)))
                             (let ((_hd1127111383_ (##car _e1127011380_))
                                   (_tl1127211385_ (##cdr _e1127011380_)))
                               (if (gx#identifier? _hd1127111383_)
                                   (if (gx#stx-eq? '%#ref _hd1127111383_)
                                       (if (gx#stx-pair? _tl1127211385_)
                                           (let ((_e1127311388_
                                                  (gx#stx-e _tl1127211385_)))
                                             (let ((_hd1127411391_
                                                    (##car _e1127311388_))
                                                   (_tl1127511393_
                                                    (##cdr _e1127311388_)))
                                               (if (gx#stx-null?
                                                    _tl1127511393_)
                                                   (if (gx#stx-null?
                                                        _tl1126911377_)
                                                       ((lambda (_L11396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11397_
                         _L11398_
                         _L11399_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L11398_)
                                  (cons (gx#stx-e _L11397_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L11396_)
                                              (cons '#f '())))))
                      (_g1117711287_ _g1117911290_)))
                _hd1127411391_
                _hd1126511367_
                _hd1125611343_
                _hd1124711319_)
               (_g1117711287_ _g1117911290_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117711287_
                                                    _g1117911290_))))
                                           (_g1117711287_ _g1117911290_))
                                       (_g1117711287_ _g1117911290_))
                                   (_g1117711287_ _g1117911290_))))
                           (_g1117711287_ _g1117911290_))))
                   (_g1117711287_ _g1117911290_))
               (_g1117711287_ _g1117911290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1117711287_ _g1117911290_))
                                           (_g1117711287_ _g1117911290_))
                                       (_g1117711287_ _g1117911290_))))
                               (_g1117711287_ _g1117911290_))))
                       (_g1117711287_ _g1117911290_))
                   (_g1117711287_ _g1117911290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117711287_
                                                    _g1117911290_))
                                               (_g1117711287_ _g1117911290_))
                                           (_g1117711287_ _g1117911290_))))
                                   (_g1117711287_ _g1117911290_))))
                           (_g1117711287_ _g1117911290_))
                       (_g1117711287_ _g1117911290_))))
               (_g1117711287_ _g1117911290_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117711287_
                                                    _g1117911290_))
                                               (_g1117711287_ _g1117911290_))))
                                       (_g1117711287_ _g1117911290_))))
                               (_g1117711287_ _g1117911290_))))
                       (_g1117711287_ _g1117911290_)))))
            (let ((_g1117511617_
                   (lambda (_g1117911440_)
                     (if (gx#stx-pair? _g1117911440_)
                         (let ((_e1118511442_ (gx#stx-e _g1117911440_)))
                           (let ((_hd1118611445_ (##car _e1118511442_))
                                 (_tl1118711447_ (##cdr _e1118511442_)))
                             (if (gx#stx-pair? _tl1118711447_)
                                 (let ((_e1118811450_
                                        (gx#stx-e _tl1118711447_)))
                                   (let ((_hd1118911453_ (##car _e1118811450_))
                                         (_tl1119011455_
                                          (##cdr _e1118811450_)))
                                     (if (gx#stx-pair? _hd1118911453_)
                                         (let ((_e1119111458_
                                                (gx#stx-e _hd1118911453_)))
                                           (let ((_hd1119211461_
                                                  (##car _e1119111458_))
                                                 (_tl1119311463_
                                                  (##cdr _e1119111458_)))
                                             (if (gx#identifier?
                                                  _hd1119211461_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1119211461_)
                                                     (if (gx#stx-pair?
                                                          _tl1119311463_)
                                                         (let ((_e1119411466_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1119311463_)))
                   (let ((_hd1119511469_ (##car _e1119411466_))
                         (_tl1119611471_ (##cdr _e1119411466_)))
                     (if (gx#stx-null? _tl1119611471_)
                         (if (gx#stx-pair? _tl1119011455_)
                             (let ((_e1119711474_ (gx#stx-e _tl1119011455_)))
                               (let ((_hd1119811477_ (##car _e1119711474_))
                                     (_tl1119911479_ (##cdr _e1119711474_)))
                                 (if (gx#stx-pair? _hd1119811477_)
                                     (let ((_e1120011482_
                                            (gx#stx-e _hd1119811477_)))
                                       (let ((_hd1120111485_
                                              (##car _e1120011482_))
                                             (_tl1120211487_
                                              (##cdr _e1120011482_)))
                                         (if (gx#identifier? _hd1120111485_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1120111485_)
                                                 (if (gx#stx-pair?
                                                      _tl1120211487_)
                                                     (let ((_e1120311490_
                                                            (gx#stx-e
                                                             _tl1120211487_)))
                                                       (let ((_hd1120411493_
                                                              (##car _e1120311490_))
                                                             (_tl1120511495_
                                                              (##cdr _e1120311490_)))
                                                         (if (gx#stx-null?
                                                              _tl1120511495_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1119911479_)
                         (let ((_e1120611498_ (gx#stx-e _tl1119911479_)))
                           (let ((_hd1120711501_ (##car _e1120611498_))
                                 (_tl1120811503_ (##cdr _e1120611498_)))
                             (if (gx#stx-pair? _hd1120711501_)
                                 (let ((_e1120911506_
                                        (gx#stx-e _hd1120711501_)))
                                   (let ((_hd1121011509_ (##car _e1120911506_))
                                         (_tl1121111511_
                                          (##cdr _e1120911506_)))
                                     (if (gx#identifier? _hd1121011509_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1121011509_)
                                             (if (gx#stx-pair? _tl1121111511_)
                                                 (let ((_e1121211514_
                                                        (gx#stx-e
                                                         _tl1121111511_)))
                                                   (let ((_hd1121311517_
                                                          (##car _e1121211514_))
                                                         (_tl1121411519_
                                                          (##cdr _e1121211514_)))
                                                     (if (gx#stx-null?
                                                          _tl1121411519_)
                                                         (if (gx#stx-pair?
                                                              _tl1120811503_)
                                                             (let ((_e1121511522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1120811503_)))
                       (let ((_hd1121611525_ (##car _e1121511522_))
                             (_tl1121711527_ (##cdr _e1121511522_)))
                         (if (gx#stx-pair? _hd1121611525_)
                             (let ((_e1121811530_ (gx#stx-e _hd1121611525_)))
                               (let ((_hd1121911533_ (##car _e1121811530_))
                                     (_tl1122011535_ (##cdr _e1121811530_)))
                                 (if (gx#identifier? _hd1121911533_)
                                     (if (gx#stx-eq? '%#ref _hd1121911533_)
                                         (if (gx#stx-pair? _tl1122011535_)
                                             (let ((_e1122111538_
                                                    (gx#stx-e _tl1122011535_)))
                                               (let ((_hd1122211541_
                                                      (##car _e1122111538_))
                                                     (_tl1122311543_
                                                      (##cdr _e1122111538_)))
                                                 (if (gx#stx-null?
                                                      _tl1122311543_)
                                                     (if (gx#stx-pair?
                                                          _tl1121711527_)
                                                         (let ((_e1122411546_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1121711527_)))
                   (let ((_hd1122511549_ (##car _e1122411546_))
                         (_tl1122611551_ (##cdr _e1122411546_)))
                     (if (gx#stx-pair? _hd1122511549_)
                         (let ((_e1122711554_ (gx#stx-e _hd1122511549_)))
                           (let ((_hd1122811557_ (##car _e1122711554_))
                                 (_tl1122911559_ (##cdr _e1122711554_)))
                             (if (gx#identifier? _hd1122811557_)
                                 (if (gx#stx-eq? '%#quote _hd1122811557_)
                                     (if (gx#stx-pair? _tl1122911559_)
                                         (let ((_e1123011562_
                                                (gx#stx-e _tl1122911559_)))
                                           (let ((_hd1123111565_
                                                  (##car _e1123011562_))
                                                 (_tl1123211567_
                                                  (##cdr _e1123011562_)))
                                             (if (gx#stx-null? _tl1123211567_)
                                                 (if (gx#stx-null?
                                                      _tl1122611551_)
                                                     ((lambda (_L11570_
                                                               _L11571_
                                                               _L11572_
                                                               _L11573_
                                                               _L11574_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11574_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11573_)
                                (cons (gx#stx-e _L11572_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11571_)
                                            (cons (gx#stx-e _L11570_) '())))))
                    (_g1117611437_ _g1117911440_)))
              _hd1123111565_
              _hd1122211541_
              _hd1121311517_
              _hd1120411493_
              _hd1119511469_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117611437_
                                                      _g1117911440_))
                                                 (_g1117611437_
                                                  _g1117911440_))))
                                         (_g1117611437_ _g1117911440_))
                                     (_g1117611437_ _g1117911440_))
                                 (_g1117611437_ _g1117911440_))))
                         (_g1117611437_ _g1117911440_))))
                 (_g1117611437_ _g1117911440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117611437_
                                                      _g1117911440_))))
                                             (_g1117611437_ _g1117911440_))
                                         (_g1117611437_ _g1117911440_))
                                     (_g1117611437_ _g1117911440_))))
                             (_g1117611437_ _g1117911440_))))
                     (_g1117611437_ _g1117911440_))
                 (_g1117611437_ _g1117911440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1117611437_ _g1117911440_))
                                             (_g1117611437_ _g1117911440_))
                                         (_g1117611437_ _g1117911440_))))
                                 (_g1117611437_ _g1117911440_))))
                         (_g1117611437_ _g1117911440_))
                     (_g1117611437_ _g1117911440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117611437_
                                                      _g1117911440_))
                                                 (_g1117611437_ _g1117911440_))
                                             (_g1117611437_ _g1117911440_))))
                                     (_g1117611437_ _g1117911440_))))
                             (_g1117611437_ _g1117911440_))
                         (_g1117611437_ _g1117911440_))))
                 (_g1117611437_ _g1117911440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117611437_
                                                      _g1117911440_))
                                                 (_g1117611437_
                                                  _g1117911440_))))
                                         (_g1117611437_ _g1117911440_))))
                                 (_g1117611437_ _g1117911440_))))
                         (_g1117611437_ _g1117911440_)))))
              (_g1117511617_ _stx11174_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self11150_)
      (let ((_self1115111157_ _self11150_))
        (let ((_E1115311161_
               (lambda () (error '"No clause matching" _self1115111157_))))
          (let ((_K1115411166_
                 (lambda (_alias-id11164_)
                   (cons '@alias (cons _alias-id11164_ '())))))
            (if (##structure-instance-of?
                 _self1115111157_
                 (##type-id gxc#!alias::t))
                (let ((_e1115511169_ (##vector-ref _self1115111157_ '1)))
                  (let ((_alias-id11172_ _e1115511169_))
                    (_K1115411166_ _alias-id11172_)))
                (_E1115311161_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11094_)
      (let ((_self1109511106_ _self11094_))
        (let ((_E1109711110_
               (lambda () (error '"No clause matching" _self1109511106_))))
          (let ((_K1109811119_
                 (lambda (_plist11113_
                          _ctor11114_
                          _fields11115_
                          _super11116_
                          _type-id11117_)
                   (cons '@struct-type
                         (cons _type-id11117_
                               (cons _super11116_
                                     (cons _fields11115_
                                           (cons _ctor11114_
                                                 (cons _plist11113_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1109511106_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1109911122_ (##vector-ref _self1109511106_ '1)))
                  (let ((_type-id11125_ _e1109911122_))
                    (let ((_e1110011127_ (##vector-ref _self1109511106_ '2)))
                      (let ((_super11130_ _e1110011127_))
                        (let ((_e1110111132_
                               (##vector-ref _self1109511106_ '3)))
                          (let ((_fields11135_ _e1110111132_))
                            (let ((_e1110211137_
                                   (##vector-ref _self1109511106_ '4)))
                              (let ((_e1110311140_
                                     (##vector-ref _self1109511106_ '5)))
                                (let ((_ctor11143_ _e1110311140_))
                                  (let ((_e1110411145_
                                         (##vector-ref _self1109511106_ '6)))
                                    (let ((_plist11148_ _e1110411145_))
                                      (_K1109811119_
                                       _plist11148_
                                       _ctor11143_
                                       _fields11135_
                                       _super11130_
                                       _type-id11125_))))))))))))
                (_E1109711110_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11070_)
      (let ((_self1107111077_ _self11070_))
        (let ((_E1107311081_
               (lambda () (error '"No clause matching" _self1107111077_))))
          (let ((_K1107411086_
                 (lambda (_struct-t11084_)
                   (cons '@struct-pred (cons _struct-t11084_ '())))))
            (if (##structure-instance-of?
                 _self1107111077_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1107511089_ (##vector-ref _self1107111077_ '1)))
                  (let ((_struct-t11092_ _e1107511089_))
                    (_K1107411086_ _struct-t11092_)))
                (_E1107311081_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11046_)
      (let ((_self1104711053_ _self11046_))
        (let ((_E1104911057_
               (lambda () (error '"No clause matching" _self1104711053_))))
          (let ((_K1105011062_
                 (lambda (_struct-t11060_)
                   (cons '@struct-cons (cons _struct-t11060_ '())))))
            (if (##structure-instance-of?
                 _self1104711053_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1105111065_ (##vector-ref _self1104711053_ '1)))
                  (let ((_struct-t11068_ _e1105111065_))
                    (_K1105011062_ _struct-t11068_)))
                (_E1104911057_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11008_)
      (let ((_self1100911017_ _self11008_))
        (let ((_E1101111021_
               (lambda () (error '"No clause matching" _self1100911017_))))
          (let ((_K1101211028_
                 (lambda (_unchecked?11024_ _off11025_ _struct-t11026_)
                   (cons '@struct-getf
                         (cons _struct-t11026_
                               (cons _off11025_
                                     (cons _unchecked?11024_ '())))))))
            (if (##structure-instance-of?
                 _self1100911017_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1101311031_ (##vector-ref _self1100911017_ '1)))
                  (let ((_struct-t11034_ _e1101311031_))
                    (let ((_e1101411036_ (##vector-ref _self1100911017_ '2)))
                      (let ((_off11039_ _e1101411036_))
                        (let ((_e1101511041_
                               (##vector-ref _self1100911017_ '3)))
                          (let ((_unchecked?11044_ _e1101511041_))
                            (_K1101211028_
                             _unchecked?11044_
                             _off11039_
                             _struct-t11034_)))))))
                (_E1101111021_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10970_)
      (let ((_self1097110979_ _self10970_))
        (let ((_E1097310983_
               (lambda () (error '"No clause matching" _self1097110979_))))
          (let ((_K1097410990_
                 (lambda (_unchecked?10986_ _off10987_ _struct-t10988_)
                   (cons '@struct-setf
                         (cons _struct-t10988_
                               (cons _off10987_
                                     (cons _unchecked?10986_ '())))))))
            (if (##structure-instance-of?
                 _self1097110979_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1097510993_ (##vector-ref _self1097110979_ '1)))
                  (let ((_struct-t10996_ _e1097510993_))
                    (let ((_e1097610998_ (##vector-ref _self1097110979_ '2)))
                      (let ((_off11001_ _e1097610998_))
                        (let ((_e1097711003_
                               (##vector-ref _self1097110979_ '3)))
                          (let ((_unchecked?11006_ _e1097711003_))
                            (_K1097410990_
                             _unchecked?11006_
                             _off11001_
                             _struct-t10996_)))))))
                (_E1097310983_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10918_)
      (let ((_self1091910929_ _self10918_))
        (let ((_E1092110933_
               (lambda () (error '"No clause matching" _self1091910929_))))
          (let ((_K1092210944_
                 (lambda (_typedecl10936_
                          _inline10937_
                          _dispatch10938_
                          _arity10939_)
                   (if _inline10937_
                       (let ((_$e10941_ _typedecl10936_))
                         (if _$e10941_
                             _$e10941_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10939_
                                   (cons _dispatch10938_ '())))))))
            (if (##structure-instance-of?
                 _self1091910929_
                 (##type-id gxc#!lambda::t))
                (let ((_e1092310947_ (##vector-ref _self1091910929_ '1)))
                  (let ((_e1092410950_ (##vector-ref _self1091910929_ '2)))
                    (let ((_arity10953_ _e1092410950_))
                      (let ((_e1092510955_ (##vector-ref _self1091910929_ '3)))
                        (let ((_dispatch10958_ _e1092510955_))
                          (let ((_e1092610960_
                                 (##vector-ref _self1091910929_ '4)))
                            (let ((_inline10963_ _e1092610960_))
                              (let ((_e1092710965_
                                     (##vector-ref _self1091910929_ '5)))
                                (let ((_typedecl10968_ _e1092710965_))
                                  (_K1092210944_
                                   _typedecl10968_
                                   _inline10963_
                                   _dispatch10958_
                                   _arity10953_))))))))))
                (_E1092110933_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10851_)
      (let ((_clause-e10853_
             (lambda (_clause10883_)
               (let ((_clause1088410892_ _clause10883_))
                 (let ((_E1088610896_
                        (lambda ()
                          (error '"No clause matching" _clause1088410892_))))
                   (let ((_K1088710902_
                          (lambda (_dispatch10899_ _arity10900_)
                            (cons _arity10900_ (cons _dispatch10899_ '())))))
                     (if (##structure-instance-of?
                          _clause1088410892_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1088810905_
                                (##vector-ref _clause1088410892_ '1)))
                           (let ((_e1088910908_
                                  (##vector-ref _clause1088410892_ '2)))
                             (let ((_arity10911_ _e1088910908_))
                               (let ((_e1089010913_
                                      (##vector-ref _clause1088410892_ '3)))
                                 (let ((_dispatch10916_ _e1089010913_))
                                   (_K1088710902_
                                    _dispatch10916_
                                    _arity10911_))))))
                         (_E1088610896_))))))))
        (let ((_self1085410861_ _self10851_))
          (let ((_E1085610865_
                 (lambda () (error '"No clause matching" _self1085410861_))))
            (let ((_K1085710872_
                   (lambda (_clauses10868_)
                     (let ((_clauses10870_
                            (map _clause-e10853_ _clauses10868_)))
                       (cons '@case-lambda _clauses10870_)))))
              (if (##structure-instance-of?
                   _self1085410861_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1085810875_ (##vector-ref _self1085410861_ '1)))
                    (let ((_e1085910878_ (##vector-ref _self1085410861_ '2)))
                      (let ((_clauses10881_ _e1085910878_))
                        (_K1085710872_ _clauses10881_))))
                  (_E1085610865_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10849_) (gxc#generate-runtime-binding-id _stx10849_))))
