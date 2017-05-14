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
    (lambda _$args17710_
      (apply make-struct-instance gxc#optimizer-info::t _$args17710_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self17708_)
      (direct-struct-instance-init!
       _self17708_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj17712 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj17712) __obj17712))))))
  (define gxc#optimize!
    (lambda (_ctx17702_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-prelude-ssxi _ctx17702_)
           (gxc#optimizer-load-ssxi-deps _ctx17702_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx17702_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code17705_
                  (gxc#optimize-source
                   (##structure-ref _ctx17702_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx17702_
              _code17705_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx17663_)
      ((letrec ((_lp17665_
                 (lambda (_rest17667_)
                   (let ((_rest1766817676_ _rest17667_))
                     (let ((_E1767117680_
                            (lambda ()
                              (error '"No clause matching" _rest1766817676_))))
                       (let ((_else1767017684_ (lambda () '#!void)))
                         (let ((_K1767217690_
                                (lambda (_rest17687_ _hd17688_)
                                  (if (##structure-instance-of?
                                       _hd17688_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd17688_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx17663_)
                                              (_lp17665_
                                               (##structure-ref
                                                _hd17688_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd17688_)))
                                        (_lp17665_ _rest17687_))
                                      (if (##structure-direct-instance-of?
                                           _hd17688_
                                           'gx#module-import::t)
                                          (_lp17665_
                                           (cons (##structure-ref
                                                  _hd17688_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest17687_))
                                          (if (##structure-direct-instance-of?
                                               _hd17688_
                                               'gx#module-export::t)
                                              (_lp17665_
                                               (cons (##structure-ref
                                                      _hd17688_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest17687_))
                                              (if (##structure-direct-instance-of?
                                                   _hd17688_
                                                   'gx#import-set::t)
                                                  (_lp17665_
                                                   (cons (##structure-ref
                                                          _hd17688_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest17687_))
                                                  (error '"Unexpected module import"
                                                         _hd17688_))))))))
                           (if (##pair? _rest1766817676_)
                               (let ((_hd1767317693_ (##car _rest1766817676_))
                                     (_tl1767417695_ (##cdr _rest1766817676_)))
                                 (let ((_hd17698_ _hd1767317693_))
                                   (let ((_rest17700_ _tl1767417695_))
                                     (_K1767217690_ _rest17700_ _hd17698_))))
                               (_else1767017684_)))))))))
         _lp17665_)
       (##structure-ref _ctx17663_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx17658_)
      (let ((_$e17660_ (gx#core-context-prelude__opt-lambda10896 _ctx17658_)))
        (if _$e17660_ (gxc#optimizer-load-ssxi _$e17660_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx17638_)
      (if (if (##structure-instance-of? _ctx17638_ 'gx#module-context::t)
              (list? (##structure-ref _ctx17638_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht17640_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id17642_
                   (##structure-ref _ctx17638_ '1 gx#expander-context::t '#f)))
              (let ((_mod17644_ (table-ref _ht17640_ _id17642_ '#f)))
                (let ()
                  (let ((_$e17647_ _mod17644_))
                    (if _$e17647_
                        _$e17647_
                        (let ((_mod17650_
                               (gxc#optimizer-import-ssxi _ctx17638_)))
                          (let ((_val17655_
                                 (let ((_$e17652_ _mod17650_))
                                   (if _$e17652_ _$e17652_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht17640_ _id17642_ _val17655_)
                                _val17655_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx17615_)
      (let ((_catch-e17617_
             (lambda (_exn17636_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx17615_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn17636_))
                     '#!void)
                 '#f))))
        (let ((_import-e17618_
               (lambda ()
                 (let ((_str-id17621_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx17615_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path17629_
                          (let ((_odir1762217624_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1762217624_
                                (let ((_odir17627_ _odir1762217624_))
                                  (path-expand
                                   (string-append _str-id17621_ '".ss")
                                   _odir17627_))
                                '#f))))
                     (let ((_library-path17631_
                            (string->symbol
                             (string-append '":" _str-id17621_))))
                       (let ((_ssxi-path17633_
                              (if (if _artefact-path17629_
                                      (file-exists? _artefact-path17629_)
                                      '#f)
                                  _artefact-path17629_
                                  _library-path17631_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path17633_)
                             (gx#import-module__opt-lambda10931
                              _ssxi-path17633_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx17615_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e17617_ _import-e17618_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args17612_
      (apply make-struct-instance gxc#!type::t _$args17612_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args17609_
      (apply make-struct-instance gxc#!alias::t _$args17609_)))
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
    (lambda _$args17606_
      (apply make-struct-instance gxc#!struct-type::t _$args17606_)))
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
    (lambda _$args17603_
      (apply make-struct-instance gxc#!procedure::t _$args17603_)))
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
    (lambda _$args17600_
      (apply make-struct-instance gxc#!struct-pred::t _$args17600_)))
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
    (lambda _$args17597_
      (apply make-struct-instance gxc#!struct-cons::t _$args17597_)))
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
    (lambda _$args17594_
      (apply make-struct-instance gxc#!struct-getf::t _$args17594_)))
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
    (lambda _$args17591_
      (apply make-struct-instance gxc#!struct-setf::t _$args17591_)))
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
    (lambda _$args17588_
      (apply make-struct-instance gxc#!lambda::t _$args17588_)))
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
    (lambda _$args17585_
      (apply make-struct-instance gxc#!case-lambda::t _$args17585_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self17577_
             _id17578_
             _super17579_
             _fields17580_
             _xfields17581_
             _ctor17582_
             _plist17583_)
      (direct-struct-instance-init!
       _self17577_
       _id17578_
       _super17579_
       _fields17580_
       _xfields17581_
       _ctor17582_
       _plist17583_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda17541
      (lambda (_self17543_
               _id17544_
               _arity17545_
               _dispatch17546_
               _inline17547_
               _typedecl17548_)
        (direct-struct-instance-init!
         _self17543_
         _id17544_
         _arity17545_
         _dispatch17546_
         _inline17547_
         _typedecl17548_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self17553_ _id17554_ _arity17555_ _dispatch17556_)
          (let ((_inline17558_ '#f))
            (let ((_typedecl17560_ '#f))
              (direct-struct-instance-init!
               _self17553_
               _id17554_
               _arity17555_
               _dispatch17556_
               _inline17558_
               _typedecl17560_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self17562_
                 _id17563_
                 _arity17564_
                 _dispatch17565_
                 _inline17566_)
          (let ((_typedecl17568_ '#f))
            (direct-struct-instance-init!
             _self17562_
             _id17563_
             _arity17564_
             _dispatch17565_
             _inline17566_
             _typedecl17568_))))
      (define gxc#!lambda:::init!
        (lambda _g17718_
          (let ((_g17717_ (length _g17718_)))
            (cond ((fx= _g17717_ 4) (apply gxc#!lambda:::init!__0 _g17718_))
                  ((fx= _g17717_ 5) (apply gxc#!lambda:::init!__1 _g17718_))
                  ((fx= _g17717_ 6)
                   (apply direct-struct-instance-init! _g17718_))
                  (else (error "No clause matching arguments" _g17718_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type17535_)
      (let ((_$e17537_
             (##structure-ref _type17535_ '7 gxc#!struct-type::t '#f)))
        (if _$e17537_
            (values _$e17537_)
            (let ((_vtab17540_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type17535_
                 _vtab17540_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab17540_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type17526_ _method17527_)
      (let ((_vtab1752817530_
             (##structure-ref _type17526_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1752817530_
            (let ((_vtab17533_ _vtab1752817530_))
              (table-ref _vtab17533_ _method17527_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda17508
      (lambda (_sym17510_ _type17511_ _local?17512_)
        (begin
          (if (##structure-instance-of? _type17511_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym17510_
                     _type17511_))
          (gxc#verbose
           '"declare-type "
           _sym17510_
           '" "
           (##vector->list _type17511_))
          (table-set!
           (if _local?17512_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym17510_
           _type17511_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym17517_ _type17518_)
          (let ((_local?17520_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda17508
             _sym17517_
             _type17518_
             _local?17520_))))
      (define gxc#optimizer-declare-type!
        (lambda _g17720_
          (let ((_g17719_ (length _g17720_)))
            (cond ((fx= _g17719_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g17720_))
                  ((fx= _g17719_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda17508
                          _g17720_))
                  (else (error "No clause matching arguments" _g17720_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda17484
      (lambda (_type-t17486_ _method17487_ _sym17488_ _rebind?17489_)
        (let ((_type17491_ (gxc#optimizer-resolve-type _type-t17486_)))
          (if (##structure-instance-of? _type17491_ 'gxc#!struct-type::t)
              (let ((_vtab17493_ (gxc#!struct-type-vtab _type17491_)))
                (if _rebind?17489_
                    (if (hash-key? _vtab17493_ _method17487_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t17486_
                         '" "
                         _method17487_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t17486_
                         '" "
                         _method17487_))
                    (if (hash-key? _vtab17493_ _method17487_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t17486_
                           '" "
                           _method17487_
                           '" => "
                           _sym17488_)
                          (table-set! _vtab17493_ _method17487_ _sym17488_)))))
              (if (not _type17491_)
                  (gxc#verbose '"declare-method: unknown type " _type-t17486_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t17486_
                         _type17491_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t17498_ _method17499_ _sym17500_)
          (let ((_rebind?17502_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda17484
             _type-t17498_
             _method17499_
             _sym17500_
             _rebind?17502_))))
      (define gxc#optimizer-declare-method!
        (lambda _g17722_
          (let ((_g17721_ (length _g17722_)))
            (cond ((fx= _g17721_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g17722_))
                  ((fx= _g17721_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda17484
                          _g17722_))
                  (else (error "No clause matching arguments" _g17722_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym17474_)
      (let ((_$e17482_
             (let ((_ht1747517477_ (gxc#current-compile-local-type)))
               (if _ht1747517477_
                   (let ((_ht17480_ _ht1747517477_))
                     (table-ref _ht17480_ _sym17474_ '#f))
                   '#f))))
        (if _$e17482_
            _$e17482_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym17474_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym17466_)
      (let ((_type1746717469_ (gxc#optimizer-lookup-type _sym17466_)))
        (if _type1746717469_
            (let ((_type17472_ _type1746717469_))
              (if (##structure-instance-of? _type17472_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type17472_ '1 gxc#!type::t '#f))
                  _type17472_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t17461_ _method17462_)
      (let ((_type17464_ (gxc#optimizer-resolve-type _type-t17461_)))
        (if (##structure-instance-of? _type17464_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type17464_ _method17462_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx17457_)
      (begin
        (gxc#apply-collect-mutators _stx17457_)
        (let ((_stx17459_ (gxc#apply-lift-top-lambdas _stx17457_)))
          (begin
            (gxc#apply-collect-type-info _stx17459_)
            (gxc#apply-optimize-call _stx17459_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl17454_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17454_ '%#lambda false)
           (table-set! _tbl17454_ '%#case-lambda false)
           (table-set! _tbl17454_ '%#let-values false)
           (table-set! _tbl17454_ '%#letrec-values false)
           (table-set! _tbl17454_ '%#letrec*-values false)
           (table-set! _tbl17454_ '%#quote false)
           (table-set! _tbl17454_ '%#quote-syntax false)
           (table-set! _tbl17454_ '%#call false)
           (table-set! _tbl17454_ '%#if false)
           (table-set! _tbl17454_ '%#ref false)
           (table-set! _tbl17454_ '%#set! false)
           (table-set! _tbl17454_ '%#struct-instance? false)
           (table-set! _tbl17454_ '%#struct-direct-instance? false)
           (table-set! _tbl17454_ '%#struct-ref false)
           (table-set! _tbl17454_ '%#struct-set! false)
           _tbl17454_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17450_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17450_ '%#begin false)
           (table-set! _tbl17450_ '%#begin-syntax false)
           (table-set! _tbl17450_ '%#begin-foreign false)
           (table-set! _tbl17450_ '%#module false)
           (table-set! _tbl17450_ '%#import false)
           (table-set! _tbl17450_ '%#export false)
           (table-set! _tbl17450_ '%#provide false)
           (table-set! _tbl17450_ '%#extern false)
           (table-set! _tbl17450_ '%#define-values false)
           (table-set! _tbl17450_ '%#define-syntax false)
           (table-set! _tbl17450_ '%#define-alias false)
           (table-set! _tbl17450_ '%#declare false)
           _tbl17450_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl17446_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17446_ (force gxc#&false-special-form))
           (hash-copy! _tbl17446_ (force gxc#&false-expression))
           _tbl17446_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl17442_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17442_ '%#lambda gxc#xform-identity)
           (table-set! _tbl17442_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl17442_ '%#let-values gxc#xform-identity)
           (table-set! _tbl17442_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl17442_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl17442_ '%#quote gxc#xform-identity)
           (table-set! _tbl17442_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17442_ '%#call gxc#xform-identity)
           (table-set! _tbl17442_ '%#if gxc#xform-identity)
           (table-set! _tbl17442_ '%#ref gxc#xform-identity)
           (table-set! _tbl17442_ '%#set! gxc#xform-identity)
           (table-set! _tbl17442_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl17442_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl17442_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl17442_ '%#struct-set! gxc#xform-identity)
           _tbl17442_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17438_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17438_ '%#begin gxc#xform-identity)
           (table-set! _tbl17438_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl17438_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl17438_ '%#module gxc#xform-identity)
           (table-set! _tbl17438_ '%#import gxc#xform-identity)
           (table-set! _tbl17438_ '%#export gxc#xform-identity)
           (table-set! _tbl17438_ '%#provide gxc#xform-identity)
           (table-set! _tbl17438_ '%#extern gxc#xform-identity)
           (table-set! _tbl17438_ '%#define-values gxc#xform-identity)
           (table-set! _tbl17438_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl17438_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl17438_ '%#declare gxc#xform-identity)
           _tbl17438_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl17434_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17434_ (force gxc#&identity-special-form))
           (hash-copy! _tbl17434_ (force gxc#&identity-expression))
           _tbl17434_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl17430_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17430_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl17430_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl17430_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl17430_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl17430_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl17430_ '%#quote gxc#xform-identity)
           (table-set! _tbl17430_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17430_ '%#call gxc#xform-operands)
           (table-set! _tbl17430_ '%#if gxc#xform-operands)
           (table-set! _tbl17430_ '%#ref gxc#xform-identity)
           (table-set! _tbl17430_ '%#set! gxc#xform-setq%)
           (table-set! _tbl17430_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl17430_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl17430_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl17430_ '%#struct-set! gxc#xform-operands)
           _tbl17430_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl17426_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17426_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl17426_ (force gxc#&identity))
           (table-set! _tbl17426_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17426_ '%#module gxc#xform-module%)
           (table-set! _tbl17426_ '%#define-values gxc#xform-define-values%)
           _tbl17426_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl17422_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17422_ (force gxc#&void))
           (table-set! _tbl17422_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17422_ '%#module gxc#collect-module%)
           (table-set! _tbl17422_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17422_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17422_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl17422_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl17422_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl17422_ '%#call gxc#collect-operands)
           (table-set! _tbl17422_ '%#if gxc#collect-operands)
           (table-set! _tbl17422_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl17422_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl17422_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl17422_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl17422_ '%#struct-set! gxc#collect-operands)
           _tbl17422_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx17415_ . _args17417_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17415_ _args17417_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl17412_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17412_ (force gxc#&identity))
           (table-set! _tbl17412_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17412_ '%#module gxc#xform-module%)
           (table-set!
            _tbl17412_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl17412_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx17405_ . _args17407_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17405_ _args17407_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl17402_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17402_ (force gxc#&basic-xform-expression))
           (table-set! _tbl17402_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17402_ '%#ref gxc#expression-subst-ref%)
           _tbl17402_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx17395_ . _args17397_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17395_ _args17397_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl17392_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17392_ (force gxc#&void))
           (table-set! _tbl17392_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17392_ '%#module gxc#collect-module%)
           (table-set!
            _tbl17392_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl17392_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17392_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17392_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl17392_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl17392_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl17392_ '%#call gxc#collect-type-call%)
           (table-set! _tbl17392_ '%#if gxc#collect-operands)
           (table-set! _tbl17392_ '%#set! gxc#collect-body-setq%)
           _tbl17392_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx17385_ . _args17387_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17385_ _args17387_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl17382_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17382_ (force gxc#&false))
           (table-set! _tbl17382_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl17382_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl17382_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl17382_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl17382_ '%#ref gxc#basic-expression-type-ref%)
           _tbl17382_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx17375_ . _args17377_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17375_ _args17377_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl17372_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17372_ (force gxc#&basic-xform))
           (table-set! _tbl17372_ '%#call gxc#optimize-call%)
           _tbl17372_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx17365_ . _args17367_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17365_ _args17367_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl17362_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17362_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl17362_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl17362_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl17362_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl17362_ '%#call gxc#generate-ssxi-call%)
           _tbl17362_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx17355_ . _args17357_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17355_ _args17357_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx17352_ . _args17353_) _stx17352_))
  (define gxc#xform-wrap-source
    (lambda (_stx17349_ _src-stx17350_)
      (gx#stx-wrap-source _stx17349_ (gx#stx-source _src-stx17350_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args17343_)
      (lambda (_g1734417346_)
        (apply gxc#compile-e _g1734417346_ _args17343_))))
  (define gxc#xform-begin%
    (lambda (_stx17302_ . _args17303_)
      (let ((_g1730517315_
             (lambda (_g1730617312_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1730617312_))))
        (let ((_g1730417340_
               (lambda (_g1730617318_)
                 (if (gx#stx-pair? _g1730617318_)
                     (let ((_e1730817320_ (gx#stx-e _g1730617318_)))
                       (let ((_hd1730917323_ (##car _e1730817320_))
                             (_tl1731017325_ (##cdr _e1730817320_)))
                         ((lambda (_L17328_)
                            (let ((_forms17338_
                                   (map (gxc#xform-apply-compile-e _args17303_)
                                        _L17328_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms17338_)
                               _stx17302_)))
                          _tl1731017325_)))
                     (_g1730517315_ _g1730617318_)))))
          (_g1730417340_ _stx17302_)))))
  (define gxc#xform-module%
    (lambda (_stx17239_ . _args17240_)
      (let ((_g1724217256_
             (lambda (_g1724317253_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1724317253_))))
        (let ((_g1724117299_
               (lambda (_g1724317259_)
                 (if (gx#stx-pair? _g1724317259_)
                     (let ((_e1724617261_ (gx#stx-e _g1724317259_)))
                       (let ((_hd1724717264_ (##car _e1724617261_))
                             (_tl1724817266_ (##cdr _e1724617261_)))
                         (if (gx#stx-pair? _tl1724817266_)
                             (let ((_e1724917269_ (gx#stx-e _tl1724817266_)))
                               (let ((_hd1725017272_ (##car _e1724917269_))
                                     (_tl1725117274_ (##cdr _e1724917269_)))
                                 ((lambda (_L17277_ _L17278_)
                                    (let ((_ctx17291_
                                           (gx#syntax-local-e__0 _L17278_)))
                                      (let ((_code17293_
                                             (##structure-ref
                                              _ctx17291_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code17296_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code17293_
                                                         _args17240_))
                                                gx#current-expander-context
                                                _ctx17291_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx17291_
                                               _code17296_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L17278_
                                                           (cons _code17296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx17239_)))))))
                                  _tl1725117274_
                                  _hd1725017272_)))
                             (_g1724217256_ _g1724317259_))))
                     (_g1724217256_ _g1724317259_)))))
          (_g1724117299_ _stx17239_)))))
  (define gxc#xform-define-values%
    (lambda (_stx17169_ . _args17170_)
      (let ((_g1717217189_
             (lambda (_g1717317186_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1717317186_))))
        (let ((_g1717117236_
               (lambda (_g1717317192_)
                 (if (gx#stx-pair? _g1717317192_)
                     (let ((_e1717617194_ (gx#stx-e _g1717317192_)))
                       (let ((_hd1717717197_ (##car _e1717617194_))
                             (_tl1717817199_ (##cdr _e1717617194_)))
                         (if (gx#stx-pair? _tl1717817199_)
                             (let ((_e1717917202_ (gx#stx-e _tl1717817199_)))
                               (let ((_hd1718017205_ (##car _e1717917202_))
                                     (_tl1718117207_ (##cdr _e1717917202_)))
                                 (if (gx#stx-pair? _tl1718117207_)
                                     (let ((_e1718217210_
                                            (gx#stx-e _tl1718117207_)))
                                       (let ((_hd1718317213_
                                              (##car _e1718217210_))
                                             (_tl1718417215_
                                              (##cdr _e1718217210_)))
                                         (if (gx#stx-null? _tl1718417215_)
                                             ((lambda (_L17218_ _L17219_)
                                                (let ((_expr17234_
                                                       (apply gxc#compile-e
                                                              _L17218_
                                                              _args17170_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L17219_
                                                               (cons _expr17234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx17169_)))
                                              _hd1718317213_
                                              _hd1718017205_)
                                             (_g1717217189_ _g1717317192_))))
                                     (_g1717217189_ _g1717317192_))))
                             (_g1717217189_ _g1717317192_))))
                     (_g1717217189_ _g1717317192_)))))
          (_g1717117236_ _stx17169_)))))
  (define gxc#xform-lambda%
    (lambda (_stx17112_ . _args17113_)
      (let ((_g1711517129_
             (lambda (_g1711617126_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1711617126_))))
        (let ((_g1711417166_
               (lambda (_g1711617132_)
                 (if (gx#stx-pair? _g1711617132_)
                     (let ((_e1711917134_ (gx#stx-e _g1711617132_)))
                       (let ((_hd1712017137_ (##car _e1711917134_))
                             (_tl1712117139_ (##cdr _e1711917134_)))
                         (if (gx#stx-pair? _tl1712117139_)
                             (let ((_e1712217142_ (gx#stx-e _tl1712117139_)))
                               (let ((_hd1712317145_ (##car _e1712217142_))
                                     (_tl1712417147_ (##cdr _e1712217142_)))
                                 ((lambda (_L17150_ _L17151_)
                                    (let ((_body17164_
                                           (map (gxc#xform-apply-compile-e
                                                 _args17113_)
                                                _L17150_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L17151_ _body17164_))
                                       _stx17112_)))
                                  _tl1712417147_
                                  _hd1712317145_)))
                             (_g1711517129_ _g1711617132_))))
                     (_g1711517129_ _g1711617132_)))))
          (_g1711417166_ _stx17112_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17025_ . _args17026_)
      (let ((_clause-e17028_
             (lambda (_clause17069_)
               (let ((_g1707117082_
                      (lambda (_g1707217079_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1707217079_))))
                 (let ((_g1707017109_
                        (lambda (_g1707217085_)
                          (if (gx#stx-pair? _g1707217085_)
                              (let ((_e1707517087_ (gx#stx-e _g1707217085_)))
                                (let ((_hd1707617090_ (##car _e1707517087_))
                                      (_tl1707717092_ (##cdr _e1707517087_)))
                                  ((lambda (_L17095_ _L17096_)
                                     (let ((_body17107_
                                            (map (gxc#xform-apply-compile-e
                                                  _args17026_)
                                                 _L17095_)))
                                       (cons _L17096_ _body17107_)))
                                   _tl1707717092_
                                   _hd1707617090_)))
                              (_g1707117082_ _g1707217085_)))))
                   (_g1707017109_ _clause17069_))))))
        (let ((_g1703017040_
               (lambda (_g1703117037_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1703117037_))))
          (let ((_g1702917066_
                 (lambda (_g1703117043_)
                   (if (gx#stx-pair? _g1703117043_)
                       (let ((_e1703317045_ (gx#stx-e _g1703117043_)))
                         (let ((_hd1703417048_ (##car _e1703317045_))
                               (_tl1703517050_ (##cdr _e1703317045_)))
                           ((lambda (_L17053_)
                              (let ((_clauses17064_
                                     (map _clause-e17028_ _L17053_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses17064_)
                                 _stx17025_)))
                            _tl1703517050_)))
                       (_g1703017040_ _g1703117043_)))))
            (_g1702917066_ _stx17025_))))))
  (define gxc#xform-let-values%
    (lambda (_stx16819_ . _args16820_)
      (let ((_g1682216855_
             (lambda (_g1682316852_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1682316852_))))
        (let ((_g1682117022_
               (lambda (_g1682316858_)
                 (if (gx#stx-pair? _g1682316858_)
                     (let ((_e1682816860_ (gx#stx-e _g1682316858_)))
                       (let ((_hd1682916863_ (##car _e1682816860_))
                             (_tl1683016865_ (##cdr _e1682816860_)))
                         (if (gx#stx-pair? _tl1683016865_)
                             (let ((_e1683116868_ (gx#stx-e _tl1683016865_)))
                               (let ((_hd1683216871_ (##car _e1683116868_))
                                     (_tl1683316873_ (##cdr _e1683116868_)))
                                 (if (gx#stx-pair/null? _hd1683216871_)
                                     (if (fx>= (gx#stx-length _hd1683216871_)
                                               '0)
                                         (let ((_g17723_
                                                (gx#syntax-split-splice
                                                 _hd1683216871_
                                                 '0)))
                                           (begin
                                             (let ((_g17724_
                                                    (values-count _g17723_)))
                                               (if (not (fx= _g17724_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17724_)))
                                             (let ((_target1683416876_
                                                    (values-ref _g17723_ 0))
                                                   (_tl1683616878_
                                                    (values-ref _g17723_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1683616878_)
                                                   (letrec ((_loop1683716881_
                                                             (lambda (_hd1683516884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1684116886_
                              _hd1684216888_)
                       (if (gx#stx-pair? _hd1683516884_)
                           (let ((_e1683816891_ (gx#stx-e _hd1683516884_)))
                             (let ((_lp-hd1683916894_ (##car _e1683816891_))
                                   (_lp-tl1684016896_ (##cdr _e1683816891_)))
                               (if (gx#stx-pair? _lp-hd1683916894_)
                                   (let ((_e1684516899_
                                          (gx#stx-e _lp-hd1683916894_)))
                                     (let ((_hd1684616902_
                                            (##car _e1684516899_))
                                           (_tl1684716904_
                                            (##cdr _e1684516899_)))
                                       (if (gx#stx-pair? _tl1684716904_)
                                           (let ((_e1684816907_
                                                  (gx#stx-e _tl1684716904_)))
                                             (let ((_hd1684916910_
                                                    (##car _e1684816907_))
                                                   (_tl1685016912_
                                                    (##cdr _e1684816907_)))
                                               (if (gx#stx-null?
                                                    _tl1685016912_)
                                                   (_loop1683716881_
                                                    _lp-tl1684016896_
                                                    (cons _hd1684916910_
                                                          _expr1684116886_)
                                                    (cons _hd1684616902_
                                                          _hd1684216888_))
                                                   (_g1682216855_
                                                    _g1682316858_))))
                                           (_g1682216855_ _g1682316858_))))
                                   (_g1682216855_ _g1682316858_))))
                           (let ((_expr1684316915_ (reverse _expr1684116886_))
                                 (_hd1684416917_ (reverse _hd1684216888_)))
                             ((lambda (_L16920_ _L16921_ _L16922_ _L16923_)
                                (let ((_g1694216958_
                                       (lambda (_g1694316955_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1694316955_))))
                                  (let ((_g1694117012_
                                         (lambda (_g1694316961_)
                                           (if (gx#stx-pair/null?
                                                _g1694316961_)
                                               (if (fx>= (gx#stx-length
                                                          _g1694316961_)
                                                         '0)
                                                   (let ((_g17725_
                                                          (gx#syntax-split-splice
                                                           _g1694316961_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17726_
                                                              (values-count
                                                               _g17725_)))
                                                         (if (not (fx= _g17726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g17726_)))
               (let ((_target1694516963_ (values-ref _g17725_ 0))
                     (_tl1694716965_ (values-ref _g17725_ 1)))
                 (if (gx#stx-null? _tl1694716965_)
                     (letrec ((_loop1694816968_
                               (lambda (_hd1694616971_ _expr1695216973_)
                                 (if (gx#stx-pair? _hd1694616971_)
                                     (let ((_e1694916976_
                                            (gx#syntax-e _hd1694616971_)))
                                       (let ((_lp-hd1695016979_
                                              (##car _e1694916976_))
                                             (_lp-tl1695116981_
                                              (##cdr _e1694916976_)))
                                         (_loop1694816968_
                                          _lp-tl1695116981_
                                          (cons _lp-hd1695016979_
                                                _expr1695216973_))))
                                     (let ((_expr1695316984_
                                            (reverse _expr1695216973_)))
                                       ((lambda (_L16987_)
                                          (let ()
                                            (let ((_body17000_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args16820_)
                                                        _L16920_)))
                                              (gxc#xform-wrap-source
                                               (cons _L16923_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L16987_
                                                              _L16922_)
                                                             (foldr (lambda (_g1700117005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1700217007_
                                     _g1700317009_)
                              (cons (cons _g1700217007_
                                          (cons _g1700117005_ '()))
                                    _g1700317009_))
                            '()
                            _L16987_
                            _L16922_))
                   _body17000_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16819_))))
                                        _expr1695316984_))))))
                       (_loop1694816968_ _target1694516963_ '()))
                     (_g1694216958_ _g1694316961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1694216958_
                                                    _g1694316961_))
                                               (_g1694216958_
                                                _g1694316961_)))))
                                    (_g1694117012_
                                     (map (gxc#xform-apply-compile-e
                                           _args16820_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1701417017_
                                                             _g1701517019_)
                                                      (cons _g1701417017_
                                                            _g1701517019_))
                                                    '()
                                                    _L16921_)))))))
                              _tl1683316873_
                              _expr1684316915_
                              _hd1684416917_
                              _hd1682916863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1683716881_
                                                      _target1683416876_
                                                      '()
                                                      '()))
                                                   (_g1682216855_
                                                    _g1682316858_)))))
                                         (_g1682216855_ _g1682316858_))
                                     (_g1682216855_ _g1682316858_))))
                             (_g1682216855_ _g1682316858_))))
                     (_g1682216855_ _g1682316858_)))))
          (_g1682117022_ _stx16819_)))))
  (define gxc#xform-operands
    (lambda (_stx16775_ . _args16776_)
      (let ((_g1677816789_
             (lambda (_g1677916786_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1677916786_))))
        (let ((_g1677716816_
               (lambda (_g1677916792_)
                 (if (gx#stx-pair? _g1677916792_)
                     (let ((_e1678216794_ (gx#stx-e _g1677916792_)))
                       (let ((_hd1678316797_ (##car _e1678216794_))
                             (_tl1678416799_ (##cdr _e1678216794_)))
                         ((lambda (_L16802_ _L16803_)
                            (let ((_rands16814_
                                   (map (gxc#xform-apply-compile-e _args16776_)
                                        _L16802_)))
                              (gxc#xform-wrap-source
                               (cons _L16803_ _rands16814_)
                               _stx16775_)))
                          _tl1678416799_
                          _hd1678316797_)))
                     (_g1677816789_ _g1677916792_)))))
          (_g1677716816_ _stx16775_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx16705_ . _args16706_)
      (let ((_g1670816725_
             (lambda (_g1670916722_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1670916722_))))
        (let ((_g1670716772_
               (lambda (_g1670916728_)
                 (if (gx#stx-pair? _g1670916728_)
                     (let ((_e1671216730_ (gx#stx-e _g1670916728_)))
                       (let ((_hd1671316733_ (##car _e1671216730_))
                             (_tl1671416735_ (##cdr _e1671216730_)))
                         (if (gx#stx-pair? _tl1671416735_)
                             (let ((_e1671516738_ (gx#stx-e _tl1671416735_)))
                               (let ((_hd1671616741_ (##car _e1671516738_))
                                     (_tl1671716743_ (##cdr _e1671516738_)))
                                 (if (gx#stx-pair? _tl1671716743_)
                                     (let ((_e1671816746_
                                            (gx#stx-e _tl1671716743_)))
                                       (let ((_hd1671916749_
                                              (##car _e1671816746_))
                                             (_tl1672016751_
                                              (##cdr _e1671816746_)))
                                         (if (gx#stx-null? _tl1672016751_)
                                             ((lambda (_L16754_ _L16755_)
                                                (let ((_expr16770_
                                                       (apply gxc#compile-e
                                                              _L16754_
                                                              _args16706_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L16755_
                                                               (cons _expr16770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16705_)))
                                              _hd1671916749_
                                              _hd1671616741_)
                                             (_g1670816725_ _g1670916728_))))
                                     (_g1670816725_ _g1670916728_))))
                             (_g1670816725_ _g1670916728_))))
                     (_g1670816725_ _g1670916728_)))))
          (_g1670716772_ _stx16705_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16636_)
      (let ((_g1663816655_
             (lambda (_g1663916652_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1663916652_))))
        (let ((_g1663716702_
               (lambda (_g1663916658_)
                 (if (gx#stx-pair? _g1663916658_)
                     (let ((_e1664216660_ (gx#stx-e _g1663916658_)))
                       (let ((_hd1664316663_ (##car _e1664216660_))
                             (_tl1664416665_ (##cdr _e1664216660_)))
                         (if (gx#stx-pair? _tl1664416665_)
                             (let ((_e1664516668_ (gx#stx-e _tl1664416665_)))
                               (let ((_hd1664616671_ (##car _e1664516668_))
                                     (_tl1664716673_ (##cdr _e1664516668_)))
                                 (if (gx#stx-pair? _tl1664716673_)
                                     (let ((_e1664816676_
                                            (gx#stx-e _tl1664716673_)))
                                       (let ((_hd1664916679_
                                              (##car _e1664816676_))
                                             (_tl1665016681_
                                              (##cdr _e1664816676_)))
                                         (if (gx#stx-null? _tl1665016681_)
                                             ((lambda (_L16684_ _L16685_)
                                                (let ((_sym16700_
                                                       (gxc#generate-runtime-binding-id
                                                        _L16685_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym16700_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym16700_
                                                     '#t)
                                                    (gxc#compile-e _L16684_))))
                                              _hd1664916679_
                                              _hd1664616671_)
                                             (_g1663816655_ _g1663916658_))))
                                     (_g1663816655_ _g1663916658_))))
                             (_g1663816655_ _g1663916658_))))
                     (_g1663816655_ _g1663916658_)))))
          (_g1663716702_ _stx16636_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form15870_)
      (let ((_g1587516032_
             (lambda (_g1587616029_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1587616029_))))
        (let ((_g1587416039_ (lambda (_g1587616035_) ((lambda () '#f)))))
          (let ((_g1587316179_
                 (lambda (_g1587616042_)
                   (if (gx#stx-pair? _g1587616042_)
                       (let ((_e1599216044_ (gx#stx-e _g1587616042_)))
                         (let ((_hd1599316047_ (##car _e1599216044_))
                               (_tl1599416049_ (##cdr _e1599216044_)))
                           (if (gx#stx-pair? _tl1599416049_)
                               (let ((_e1599516052_ (gx#stx-e _tl1599416049_)))
                                 (let ((_hd1599616055_ (##car _e1599516052_))
                                       (_tl1599716057_ (##cdr _e1599516052_)))
                                   (if (gx#stx-pair? _hd1599616055_)
                                       (let ((_e1599816060_
                                              (gx#stx-e _hd1599616055_)))
                                         (let ((_hd1599916063_
                                                (##car _e1599816060_))
                                               (_tl1600016065_
                                                (##cdr _e1599816060_)))
                                           (if (gx#identifier? _hd1599916063_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1599916063_)
                                                   (if (gx#stx-pair?
                                                        _tl1600016065_)
                                                       (let ((_e1600116068_
                                                              (gx#stx-e
                                                               _tl1600016065_)))
                                                         (let ((_hd1600216071_
                                                                (##car _e1600116068_))
                                                               (_tl1600316073_
                                                                (##cdr _e1600116068_)))
                                                           (if (gx#stx-pair?
                                                                _hd1600216071_)
                                                               (let ((_e1600416076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1600216071_)))
                         (let ((_hd1600516079_ (##car _e1600416076_))
                               (_tl1600616081_ (##cdr _e1600416076_)))
                           (if (gx#identifier? _hd1600516079_)
                               (if (gx#stx-eq? '%#ref _hd1600516079_)
                                   (if (gx#stx-pair? _tl1600616081_)
                                       (let ((_e1600716084_
                                              (gx#stx-e _tl1600616081_)))
                                         (let ((_hd1600816087_
                                                (##car _e1600716084_))
                                               (_tl1600916089_
                                                (##cdr _e1600716084_)))
                                           (if (gx#stx-null? _tl1600916089_)
                                               (if (gx#stx-pair?
                                                    _tl1600316073_)
                                                   (let ((_e1601016092_
                                                          (gx#stx-e
                                                           _tl1600316073_)))
                                                     (let ((_hd1601116095_
                                                            (##car _e1601016092_))
                                                           (_tl1601216097_
                                                            (##cdr _e1601016092_)))
                                                       (if (gx#stx-pair?
                                                            _hd1601116095_)
                                                           (let ((_e1601316100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1601116095_)))
                     (let ((_hd1601416103_ (##car _e1601316100_))
                           (_tl1601516105_ (##cdr _e1601316100_)))
                       (if (gx#identifier? _hd1601416103_)
                           (if (gx#stx-eq? '%#ref _hd1601416103_)
                               (if (gx#stx-pair? _tl1601516105_)
                                   (let ((_e1601616108_
                                          (gx#stx-e _tl1601516105_)))
                                     (let ((_hd1601716111_
                                            (##car _e1601616108_))
                                           (_tl1601816113_
                                            (##cdr _e1601616108_)))
                                       (if (gx#stx-null? _tl1601816113_)
                                           (if (gx#stx-pair? _tl1601216097_)
                                               (let ((_e1601916116_
                                                      (gx#stx-e
                                                       _tl1601216097_)))
                                                 (let ((_hd1602016119_
                                                        (##car _e1601916116_))
                                                       (_tl1602116121_
                                                        (##cdr _e1601916116_)))
                                                   (if (gx#stx-pair?
                                                        _hd1602016119_)
                                                       (let ((_e1602216124_
                                                              (gx#stx-e
                                                               _hd1602016119_)))
                                                         (let ((_hd1602316127_
                                                                (##car _e1602216124_))
                                                               (_tl1602416129_
                                                                (##cdr _e1602216124_)))
                                                           (if (gx#identifier?
                                                                _hd1602316127_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1602316127_)
                           (if (gx#stx-pair? _tl1602416129_)
                               (let ((_e1602516132_ (gx#stx-e _tl1602416129_)))
                                 (let ((_hd1602616135_ (##car _e1602516132_))
                                       (_tl1602716137_ (##cdr _e1602516132_)))
                                   (if (gx#stx-null? _tl1602716137_)
                                       (if (gx#stx-null? _tl1602116121_)
                                           (if (gx#stx-null? _tl1599716057_)
                                               ((lambda (_L16140_
                                                         _L16141_
                                                         _L16142_
                                                         _L16143_)
                                                  (if (if (gx#identifier?
                                                           _L16143_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16142_)
                           'apply)
                      (if (gx#free-identifier=? _L16143_ _L16140_)
                          (not (gx#free-identifier=? _L16141_ _L16143_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1587416039_ _g1587616042_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1602616135_
                                                _hd1601716111_
                                                _hd1600816087_
                                                _hd1599316047_)
                                               (_g1587416039_ _g1587616042_))
                                           (_g1587416039_ _g1587616042_))
                                       (_g1587416039_ _g1587616042_))))
                               (_g1587416039_ _g1587616042_))
                           (_g1587416039_ _g1587616042_))
                       (_g1587416039_ _g1587616042_))))
               (_g1587416039_ _g1587616042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1587416039_ _g1587616042_))
                                           (_g1587416039_ _g1587616042_))))
                                   (_g1587416039_ _g1587616042_))
                               (_g1587416039_ _g1587616042_))
                           (_g1587416039_ _g1587616042_))))
                   (_g1587416039_ _g1587616042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1587416039_
                                                    _g1587616042_))
                                               (_g1587416039_ _g1587616042_))))
                                       (_g1587416039_ _g1587616042_))
                                   (_g1587416039_ _g1587616042_))
                               (_g1587416039_ _g1587616042_))))
                       (_g1587416039_ _g1587616042_))))
               (_g1587416039_ _g1587616042_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1587416039_
                                                    _g1587616042_))
                                               (_g1587416039_ _g1587616042_))))
                                       (_g1587416039_ _g1587616042_))))
                               (_g1587416039_ _g1587616042_))))
                       (_g1587416039_ _g1587616042_)))))
            (let ((_g1587216439_
                   (lambda (_g1587616182_)
                     (if (gx#stx-pair? _g1587616182_)
                         (let ((_e1592816184_ (gx#stx-e _g1587616182_)))
                           (let ((_hd1592916187_ (##car _e1592816184_))
                                 (_tl1593016189_ (##cdr _e1592816184_)))
                             (if (gx#stx-pair/null? _hd1592916187_)
                                 (if (fx>= (gx#stx-length _hd1592916187_) '0)
                                     (let ((_g17727_
                                            (gx#syntax-split-splice
                                             _hd1592916187_
                                             '0)))
                                       (begin
                                         (let ((_g17728_
                                                (values-count _g17727_)))
                                           (if (not (fx= _g17728_ 2))
                                               (error "Context expects 2 values"
                                                      _g17728_)))
                                         (let ((_target1593116192_
                                                (values-ref _g17727_ 0))
                                               (_tl1593316194_
                                                (values-ref _g17727_ 1)))
                                           (letrec ((_loop1593416197_
                                                     (lambda (_hd1593216200_
                                                              _arg1593816202_)
                                                       (if (gx#stx-pair?
                                                            _hd1593216200_)
                                                           (let ((_e1593516205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1593216200_)))
                     (let ((_lp-hd1593616208_ (##car _e1593516205_))
                           (_lp-tl1593716210_ (##cdr _e1593516205_)))
                       (_loop1593416197_
                        _lp-tl1593716210_
                        (cons _lp-hd1593616208_ _arg1593816202_))))
                   (let ((_arg1593916213_ (reverse _arg1593816202_)))
                     (if (gx#stx-pair? _tl1593016189_)
                         (let ((_e1594016216_ (gx#stx-e _tl1593016189_)))
                           (let ((_hd1594116219_ (##car _e1594016216_))
                                 (_tl1594216221_ (##cdr _e1594016216_)))
                             (if (gx#stx-pair? _hd1594116219_)
                                 (let ((_e1594316224_
                                        (gx#stx-e _hd1594116219_)))
                                   (let ((_hd1594416227_ (##car _e1594316224_))
                                         (_tl1594516229_
                                          (##cdr _e1594316224_)))
                                     (if (gx#identifier? _hd1594416227_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1594416227_)
                                             (if (gx#stx-pair? _tl1594516229_)
                                                 (let ((_e1594616232_
                                                        (gx#stx-e
                                                         _tl1594516229_)))
                                                   (let ((_hd1594716235_
                                                          (##car _e1594616232_))
                                                         (_tl1594816237_
                                                          (##cdr _e1594616232_)))
                                                     (if (gx#stx-pair?
                                                          _hd1594716235_)
                                                         (let ((_e1594916240_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1594716235_)))
                   (let ((_hd1595016243_ (##car _e1594916240_))
                         (_tl1595116245_ (##cdr _e1594916240_)))
                     (if (gx#identifier? _hd1595016243_)
                         (if (gx#stx-eq? '%#ref _hd1595016243_)
                             (if (gx#stx-pair? _tl1595116245_)
                                 (let ((_e1595216248_
                                        (gx#stx-e _tl1595116245_)))
                                   (let ((_hd1595316251_ (##car _e1595216248_))
                                         (_tl1595416253_
                                          (##cdr _e1595216248_)))
                                     (if (gx#stx-null? _tl1595416253_)
                                         (if (gx#stx-pair? _tl1594816237_)
                                             (let ((_e1595516256_
                                                    (gx#stx-e _tl1594816237_)))
                                               (let ((_hd1595616259_
                                                      (##car _e1595516256_))
                                                     (_tl1595716261_
                                                      (##cdr _e1595516256_)))
                                                 (if (gx#stx-pair?
                                                      _hd1595616259_)
                                                     (let ((_e1595816264_
                                                            (gx#stx-e
                                                             _hd1595616259_)))
                                                       (let ((_hd1595916267_
                                                              (##car _e1595816264_))
                                                             (_tl1596016269_
                                                              (##cdr _e1595816264_)))
                                                         (if (gx#identifier?
                                                              _hd1595916267_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1595916267_)
                         (if (gx#stx-pair? _tl1596016269_)
                             (let ((_e1596116272_ (gx#stx-e _tl1596016269_)))
                               (let ((_hd1596216275_ (##car _e1596116272_))
                                     (_tl1596316277_ (##cdr _e1596116272_)))
                                 (if (gx#stx-null? _tl1596316277_)
                                     (if (gx#stx-pair/null? _tl1595716261_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1595716261_)
                                                   '1)
                                             (let ((_g17729_
                                                    (gx#syntax-split-splice
                                                     _tl1595716261_
                                                     '1)))
                                               (begin
                                                 (let ((_g17730_
                                                        (values-count
                                                         _g17729_)))
                                                   (if (not (fx= _g17730_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17730_)))
                                                 (let ((_target1596416280_
                                                        (values-ref
                                                         _g17729_
                                                         0))
                                                       (_tl1596616282_
                                                        (values-ref
                                                         _g17729_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1596616282_)
                                                       (let ((_e1597316285_
                                                              (gx#stx-e
                                                               _tl1596616282_)))
                                                         (let ((_hd1597416288_
                                                                (##car _e1597316285_))
                                                               (_tl1597516290_
                                                                (##cdr _e1597316285_)))
                                                           (if (gx#stx-pair?
                                                                _hd1597416288_)
                                                               (let ((_e1597616293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1597416288_)))
                         (let ((_hd1597716296_ (##car _e1597616293_))
                               (_tl1597816298_ (##cdr _e1597616293_)))
                           (if (gx#identifier? _hd1597716296_)
                               (if (gx#stx-eq? '%#ref _hd1597716296_)
                                   (if (gx#stx-pair? _tl1597816298_)
                                       (let ((_e1597916301_
                                              (gx#stx-e _tl1597816298_)))
                                         (let ((_hd1598016304_
                                                (##car _e1597916301_))
                                               (_tl1598116306_
                                                (##cdr _e1597916301_)))
                                           (if (gx#stx-null? _tl1598116306_)
                                               (if (gx#stx-null?
                                                    _tl1597516290_)
                                                   (letrec ((_loop1596716309_
                                                             (lambda (_hd1596516312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1597116314_)
                       (if (gx#stx-pair? _hd1596516312_)
                           (let ((_e1596816317_ (gx#stx-e _hd1596516312_)))
                             (let ((_lp-hd1596916320_ (##car _e1596816317_))
                                   (_lp-tl1597016322_ (##cdr _e1596816317_)))
                               (if (gx#stx-pair? _lp-hd1596916320_)
                                   (let ((_e1598216325_
                                          (gx#stx-e _lp-hd1596916320_)))
                                     (let ((_hd1598316328_
                                            (##car _e1598216325_))
                                           (_tl1598416330_
                                            (##cdr _e1598216325_)))
                                       (if (gx#identifier? _hd1598316328_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1598316328_)
                                               (if (gx#stx-pair?
                                                    _tl1598416330_)
                                                   (let ((_e1598516333_
                                                          (gx#stx-e
                                                           _tl1598416330_)))
                                                     (let ((_hd1598616336_
                                                            (##car _e1598516333_))
                                                           (_tl1598716338_
                                                            (##cdr _e1598516333_)))
                                                       (if (gx#stx-null?
                                                            _tl1598716338_)
                                                           (_loop1596716309_
                                                            _lp-tl1597016322_
                                                            (cons _hd1598616336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1597116314_))
                   (_g1587316179_ _g1587616182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1587316179_
                                                    _g1587616182_))
                                               (_g1587316179_ _g1587616182_))
                                           (_g1587316179_ _g1587616182_))))
                                   (_g1587316179_ _g1587616182_))))
                           (let ((_xarg1597216341_ (reverse _xarg1597116314_)))
                             (if (gx#stx-null? _tl1594216221_)
                                 ((lambda (_L16344_
                                           _L16345_
                                           _L16346_
                                           _L16347_
                                           _L16348_
                                           _L16349_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1639216395_
                                                                _g1639316397_)
                                                         (cons _g1639216395_
                                                               _g1639316397_))
                                                       '()
                                                       _L16349_)))
                                            (if (gx#identifier? _L16348_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L16347_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1639916402_ _g1640016404_)
                                         (cons _g1639916402_ _g1640016404_))
                                       '()
                                       _L16349_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1640616409_ _g1640716411_)
                                         (cons _g1640616409_ _g1640716411_))
                                       '()
                                       _L16345_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1641316416_ _g1641416418_)
                                        (cons _g1641316416_ _g1641416418_))
                                      '()
                                      _L16349_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1642016423_ _g1642116425_)
                                        (cons _g1642016423_ _g1642116425_))
                                      '()
                                      _L16345_)))
                    (if (gx#free-identifier=? _L16348_ _L16344_)
                        (not (find (lambda (_g1642716429_)
                                     (gx#free-identifier=?
                                      _g1642716429_
                                      _L16346_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1643116434_
                                                      _g1643216436_)
                                               (cons _g1643116434_
                                                     _g1643216436_))
                                             (cons _L16348_ '())
                                             _L16349_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1587316179_ _g1587616182_)))
                                  _hd1598016304_
                                  _xarg1597216341_
                                  _hd1596216275_
                                  _hd1595316251_
                                  _tl1593316194_
                                  _arg1593916213_)
                                 (_g1587316179_ _g1587616182_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1596716309_
                                                      _target1596416280_
                                                      '()))
                                                   (_g1587316179_
                                                    _g1587616182_))
                                               (_g1587316179_ _g1587616182_))))
                                       (_g1587316179_ _g1587616182_))
                                   (_g1587316179_ _g1587616182_))
                               (_g1587316179_ _g1587616182_))))
                       (_g1587316179_ _g1587616182_))))
               (_g1587316179_ _g1587616182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1587316179_ _g1587616182_))
                                         (_g1587316179_ _g1587616182_))
                                     (_g1587316179_ _g1587616182_))))
                             (_g1587316179_ _g1587616182_))
                         (_g1587316179_ _g1587616182_))
                     (_g1587316179_ _g1587616182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1587316179_
                                                      _g1587616182_))))
                                             (_g1587316179_ _g1587616182_))
                                         (_g1587316179_ _g1587616182_))))
                                 (_g1587316179_ _g1587616182_))
                             (_g1587316179_ _g1587616182_))
                         (_g1587316179_ _g1587616182_))))
                 (_g1587316179_ _g1587616182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1587316179_ _g1587616182_))
                                             (_g1587316179_ _g1587616182_))
                                         (_g1587316179_ _g1587616182_))))
                                 (_g1587316179_ _g1587616182_))))
                         (_g1587316179_ _g1587616182_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1593416197_
                                              _target1593116192_
                                              '())))))
                                     (_g1587316179_ _g1587616182_))
                                 (_g1587316179_ _g1587616182_))))
                         (_g1587316179_ _g1587616182_)))))
              (let ((_g1587116633_
                     (lambda (_g1587616442_)
                       (if (gx#stx-pair? _g1587616442_)
                           (let ((_e1588016444_ (gx#stx-e _g1587616442_)))
                             (let ((_hd1588116447_ (##car _e1588016444_))
                                   (_tl1588216449_ (##cdr _e1588016444_)))
                               (if (gx#stx-pair/null? _hd1588116447_)
                                   (if (fx>= (gx#stx-length _hd1588116447_) '0)
                                       (let ((_g17731_
                                              (gx#syntax-split-splice
                                               _hd1588116447_
                                               '0)))
                                         (begin
                                           (let ((_g17732_
                                                  (values-count _g17731_)))
                                             (if (not (fx= _g17732_ 2))
                                                 (error "Context expects 2 values"
                                                        _g17732_)))
                                           (let ((_target1588316452_
                                                  (values-ref _g17731_ 0))
                                                 (_tl1588516454_
                                                  (values-ref _g17731_ 1)))
                                             (if (gx#stx-null? _tl1588516454_)
                                                 (letrec ((_loop1588616457_
                                                           (lambda (_hd1588416460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1589016462_)
                     (if (gx#stx-pair? _hd1588416460_)
                         (let ((_e1588716465_ (gx#stx-e _hd1588416460_)))
                           (let ((_lp-hd1588816468_ (##car _e1588716465_))
                                 (_lp-tl1588916470_ (##cdr _e1588716465_)))
                             (_loop1588616457_
                              _lp-tl1588916470_
                              (cons _lp-hd1588816468_ _arg1589016462_))))
                         (let ((_arg1589116473_ (reverse _arg1589016462_)))
                           (if (gx#stx-pair? _tl1588216449_)
                               (let ((_e1589216476_ (gx#stx-e _tl1588216449_)))
                                 (let ((_hd1589316479_ (##car _e1589216476_))
                                       (_tl1589416481_ (##cdr _e1589216476_)))
                                   (if (gx#stx-pair? _hd1589316479_)
                                       (let ((_e1589516484_
                                              (gx#stx-e _hd1589316479_)))
                                         (let ((_hd1589616487_
                                                (##car _e1589516484_))
                                               (_tl1589716489_
                                                (##cdr _e1589516484_)))
                                           (if (gx#identifier? _hd1589616487_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1589616487_)
                                                   (if (gx#stx-pair?
                                                        _tl1589716489_)
                                                       (let ((_e1589816492_
                                                              (gx#stx-e
                                                               _tl1589716489_)))
                                                         (let ((_hd1589916495_
                                                                (##car _e1589816492_))
                                                               (_tl1590016497_
                                                                (##cdr _e1589816492_)))
                                                           (if (gx#stx-pair?
                                                                _hd1589916495_)
                                                               (let ((_e1590116500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1589916495_)))
                         (let ((_hd1590216503_ (##car _e1590116500_))
                               (_tl1590316505_ (##cdr _e1590116500_)))
                           (if (gx#identifier? _hd1590216503_)
                               (if (gx#stx-eq? '%#ref _hd1590216503_)
                                   (if (gx#stx-pair? _tl1590316505_)
                                       (let ((_e1590416508_
                                              (gx#stx-e _tl1590316505_)))
                                         (let ((_hd1590516511_
                                                (##car _e1590416508_))
                                               (_tl1590616513_
                                                (##cdr _e1590416508_)))
                                           (if (gx#stx-null? _tl1590616513_)
                                               (if (gx#stx-pair/null?
                                                    _tl1590016497_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1590016497_)
                                                             '0)
                                                       (let ((_g17733_
                                                              (gx#syntax-split-splice
                                                               _tl1590016497_
                                                               '0)))
                                                         (begin
                                                           (let ((_g17734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g17733_)))
                     (if (not (fx= _g17734_ 2))
                         (error "Context expects 2 values" _g17734_)))
                   (let ((_target1590716516_ (values-ref _g17733_ 0))
                         (_tl1590916518_ (values-ref _g17733_ 1)))
                     (if (gx#stx-null? _tl1590916518_)
                         (letrec ((_loop1591016521_
                                   (lambda (_hd1590816524_ _xarg1591416526_)
                                     (if (gx#stx-pair? _hd1590816524_)
                                         (let ((_e1591116529_
                                                (gx#stx-e _hd1590816524_)))
                                           (let ((_lp-hd1591216532_
                                                  (##car _e1591116529_))
                                                 (_lp-tl1591316534_
                                                  (##cdr _e1591116529_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1591216532_)
                                                 (let ((_e1591616537_
                                                        (gx#stx-e
                                                         _lp-hd1591216532_)))
                                                   (let ((_hd1591716540_
                                                          (##car _e1591616537_))
                                                         (_tl1591816542_
                                                          (##cdr _e1591616537_)))
                                                     (if (gx#identifier?
                                                          _hd1591716540_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1591716540_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1591816542_)
                         (let ((_e1591916545_ (gx#stx-e _tl1591816542_)))
                           (let ((_hd1592016548_ (##car _e1591916545_))
                                 (_tl1592116550_ (##cdr _e1591916545_)))
                             (if (gx#stx-null? _tl1592116550_)
                                 (_loop1591016521_
                                  _lp-tl1591316534_
                                  (cons _hd1592016548_ _xarg1591416526_))
                                 (_g1587216439_ _g1587616442_))))
                         (_g1587216439_ _g1587616442_))
                     (_g1587216439_ _g1587616442_))
                 (_g1587216439_ _g1587616442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1587216439_
                                                  _g1587616442_))))
                                         (let ((_xarg1591516553_
                                                (reverse _xarg1591416526_)))
                                           (if (gx#stx-null? _tl1589416481_)
                                               ((lambda (_L16556_
                                                         _L16557_
                                                         _L16558_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1658616589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1658716591_)
                               (cons _g1658616589_ _g1658716591_))
                             '()
                             _L16558_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1659316596_
                                                      _g1659416598_)
                                               (cons _g1659316596_
                                                     _g1659416598_))
                                             '()
                                             _L16558_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1660016603_
                                                      _g1660116605_)
                                               (cons _g1660016603_
                                                     _g1660116605_))
                                             '()
                                             _L16556_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1660716610_
                                                     _g1660816612_)
                                              (cons _g1660716610_
                                                    _g1660816612_))
                                            '()
                                            _L16558_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1661416617_
                                                     _g1661516619_)
                                              (cons _g1661416617_
                                                    _g1661516619_))
                                            '()
                                            _L16556_)))
                          (not (find (lambda (_g1662116623_)
                                       (gx#free-identifier=?
                                        _g1662116623_
                                        _L16557_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1662516628_
                                                        _g1662616630_)
                                                 (cons _g1662516628_
                                                       _g1662616630_))
                                               '()
                                               _L16558_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1587216439_ _g1587616442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1591516553_
                                                _hd1590516511_
                                                _arg1589116473_)
                                               (_g1587216439_
                                                _g1587616442_)))))))
                           (_loop1591016521_ _target1590716516_ '()))
                         (_g1587216439_ _g1587616442_)))))
               (_g1587216439_ _g1587616442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1587216439_
                                                    _g1587616442_))
                                               (_g1587216439_ _g1587616442_))))
                                       (_g1587216439_ _g1587616442_))
                                   (_g1587216439_ _g1587616442_))
                               (_g1587216439_ _g1587616442_))))
                       (_g1587216439_ _g1587616442_))))
               (_g1587216439_ _g1587616442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1587216439_
                                                    _g1587616442_))
                                               (_g1587216439_ _g1587616442_))))
                                       (_g1587216439_ _g1587616442_))))
                               (_g1587216439_ _g1587616442_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1588616457_
                                                    _target1588316452_
                                                    '()))
                                                 (_g1587216439_
                                                  _g1587616442_)))))
                                       (_g1587216439_ _g1587616442_))
                                   (_g1587216439_ _g1587616442_))))
                           (_g1587216439_ _g1587616442_)))))
                (_g1587116633_ _form15870_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form15338_)
      (let ((_g1534215466_
             (lambda (_g1534315463_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1534315463_))))
        (let ((_g1534115583_
               (lambda (_g1534315469_)
                 (if (gx#stx-pair? _g1534315469_)
                     (let ((_e1543215471_ (gx#stx-e _g1534315469_)))
                       (let ((_hd1543315474_ (##car _e1543215471_))
                             (_tl1543415476_ (##cdr _e1543215471_)))
                         (if (gx#stx-pair? _tl1543415476_)
                             (let ((_e1543515479_ (gx#stx-e _tl1543415476_)))
                               (let ((_hd1543615482_ (##car _e1543515479_))
                                     (_tl1543715484_ (##cdr _e1543515479_)))
                                 (if (gx#stx-pair? _hd1543615482_)
                                     (let ((_e1543815487_
                                            (gx#stx-e _hd1543615482_)))
                                       (let ((_hd1543915490_
                                              (##car _e1543815487_))
                                             (_tl1544015492_
                                              (##cdr _e1543815487_)))
                                         (if (gx#identifier? _hd1543915490_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1543915490_)
                                                 (if (gx#stx-pair?
                                                      _tl1544015492_)
                                                     (let ((_e1544115495_
                                                            (gx#stx-e
                                                             _tl1544015492_)))
                                                       (let ((_hd1544215498_
                                                              (##car _e1544115495_))
                                                             (_tl1544315500_
                                                              (##cdr _e1544115495_)))
                                                         (if (gx#stx-pair?
                                                              _hd1544215498_)
                                                             (let ((_e1544415503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1544215498_)))
                       (let ((_hd1544515506_ (##car _e1544415503_))
                             (_tl1544615508_ (##cdr _e1544415503_)))
                         (if (gx#identifier? _hd1544515506_)
                             (if (gx#stx-eq? '%#ref _hd1544515506_)
                                 (if (gx#stx-pair? _tl1544615508_)
                                     (let ((_e1544715511_
                                            (gx#stx-e _tl1544615508_)))
                                       (let ((_hd1544815514_
                                              (##car _e1544715511_))
                                             (_tl1544915516_
                                              (##cdr _e1544715511_)))
                                         (if (gx#stx-null? _tl1544915516_)
                                             (if (gx#stx-pair? _tl1544315500_)
                                                 (let ((_e1545015519_
                                                        (gx#stx-e
                                                         _tl1544315500_)))
                                                   (let ((_hd1545115522_
                                                          (##car _e1545015519_))
                                                         (_tl1545215524_
                                                          (##cdr _e1545015519_)))
                                                     (if (gx#stx-pair?
                                                          _hd1545115522_)
                                                         (let ((_e1545315527_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1545115522_)))
                   (let ((_hd1545415530_ (##car _e1545315527_))
                         (_tl1545515532_ (##cdr _e1545315527_)))
                     (if (gx#identifier? _hd1545415530_)
                         (if (gx#stx-eq? '%#ref _hd1545415530_)
                             (if (gx#stx-pair? _tl1545515532_)
                                 (let ((_e1545615535_
                                        (gx#stx-e _tl1545515532_)))
                                   (let ((_hd1545715538_ (##car _e1545615535_))
                                         (_tl1545815540_
                                          (##cdr _e1545615535_)))
                                     (if (gx#stx-null? _tl1545815540_)
                                         (if (gx#stx-pair? _tl1545215524_)
                                             (let ((_e1545915543_
                                                    (gx#stx-e _tl1545215524_)))
                                               (let ((_hd1546015546_
                                                      (##car _e1545915543_))
                                                     (_tl1546115548_
                                                      (##cdr _e1545915543_)))
                                                 (if (gx#stx-null?
                                                      _tl1546115548_)
                                                     (if (gx#stx-null?
                                                          _tl1543715484_)
                                                         ((lambda (_L15551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15552_
                           _L15553_)
                    (gxc#generate-runtime-binding-id _L15551_))
                  _hd1545715538_
                  _hd1544815514_
                  _hd1543315474_)
                 (_g1534215466_ _g1534315469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1534215466_
                                                      _g1534315469_))))
                                             (_g1534215466_ _g1534315469_))
                                         (_g1534215466_ _g1534315469_))))
                                 (_g1534215466_ _g1534315469_))
                             (_g1534215466_ _g1534315469_))
                         (_g1534215466_ _g1534315469_))))
                 (_g1534215466_ _g1534315469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1534215466_ _g1534315469_))
                                             (_g1534215466_ _g1534315469_))))
                                     (_g1534215466_ _g1534315469_))
                                 (_g1534215466_ _g1534315469_))
                             (_g1534215466_ _g1534315469_))))
                     (_g1534215466_ _g1534315469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1534215466_
                                                      _g1534315469_))
                                                 (_g1534215466_ _g1534315469_))
                                             (_g1534215466_ _g1534315469_))))
                                     (_g1534215466_ _g1534315469_))))
                             (_g1534215466_ _g1534315469_))))
                     (_g1534215466_ _g1534315469_)))))
          (let ((_g1534015719_
                 (lambda (_g1534315586_)
                   (if (gx#stx-pair? _g1534315586_)
                       (let ((_e1539315588_ (gx#stx-e _g1534315586_)))
                         (let ((_hd1539415591_ (##car _e1539315588_))
                               (_tl1539515593_ (##cdr _e1539315588_)))
                           (if (gx#stx-pair/null? _hd1539415591_)
                               (if (fx>= (gx#stx-length _hd1539415591_) '0)
                                   (let ((_g17735_
                                          (gx#syntax-split-splice
                                           _hd1539415591_
                                           '0)))
                                     (begin
                                       (let ((_g17736_
                                              (values-count _g17735_)))
                                         (if (not (fx= _g17736_ 2))
                                             (error "Context expects 2 values"
                                                    _g17736_)))
                                       (let ((_target1539615596_
                                              (values-ref _g17735_ 0))
                                             (_tl1539815598_
                                              (values-ref _g17735_ 1)))
                                         (letrec ((_loop1539915601_
                                                   (lambda (_hd1539715604_
                                                            _arg1540315606_)
                                                     (if (gx#stx-pair?
                                                          _hd1539715604_)
                                                         (let ((_e1540015609_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1539715604_)))
                   (let ((_lp-hd1540115612_ (##car _e1540015609_))
                         (_lp-tl1540215614_ (##cdr _e1540015609_)))
                     (_loop1539915601_
                      _lp-tl1540215614_
                      (cons _lp-hd1540115612_ _arg1540315606_))))
                 (let ((_arg1540415617_ (reverse _arg1540315606_)))
                   (if (gx#stx-pair? _tl1539515593_)
                       (let ((_e1540515620_ (gx#stx-e _tl1539515593_)))
                         (let ((_hd1540615623_ (##car _e1540515620_))
                               (_tl1540715625_ (##cdr _e1540515620_)))
                           (if (gx#stx-pair? _hd1540615623_)
                               (let ((_e1540815628_ (gx#stx-e _hd1540615623_)))
                                 (let ((_hd1540915631_ (##car _e1540815628_))
                                       (_tl1541015633_ (##cdr _e1540815628_)))
                                   (if (gx#identifier? _hd1540915631_)
                                       (if (gx#stx-eq? '%#call _hd1540915631_)
                                           (if (gx#stx-pair? _tl1541015633_)
                                               (let ((_e1541115636_
                                                      (gx#stx-e
                                                       _tl1541015633_)))
                                                 (let ((_hd1541215639_
                                                        (##car _e1541115636_))
                                                       (_tl1541315641_
                                                        (##cdr _e1541115636_)))
                                                   (if (gx#stx-pair?
                                                        _hd1541215639_)
                                                       (let ((_e1541415644_
                                                              (gx#stx-e
                                                               _hd1541215639_)))
                                                         (let ((_hd1541515647_
                                                                (##car _e1541415644_))
                                                               (_tl1541615649_
                                                                (##cdr _e1541415644_)))
                                                           (if (gx#identifier?
                                                                _hd1541515647_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1541515647_)
                           (if (gx#stx-pair? _tl1541615649_)
                               (let ((_e1541715652_ (gx#stx-e _tl1541615649_)))
                                 (let ((_hd1541815655_ (##car _e1541715652_))
                                       (_tl1541915657_ (##cdr _e1541715652_)))
                                   (if (gx#stx-null? _tl1541915657_)
                                       (if (gx#stx-pair? _tl1541315641_)
                                           (let ((_e1542015660_
                                                  (gx#stx-e _tl1541315641_)))
                                             (let ((_hd1542115663_
                                                    (##car _e1542015660_))
                                                   (_tl1542215665_
                                                    (##cdr _e1542015660_)))
                                               (if (gx#stx-pair?
                                                    _hd1542115663_)
                                                   (let ((_e1542315668_
                                                          (gx#stx-e
                                                           _hd1542115663_)))
                                                     (let ((_hd1542415671_
                                                            (##car _e1542315668_))
                                                           (_tl1542515673_
                                                            (##cdr _e1542315668_)))
                                                       (if (gx#identifier?
                                                            _hd1542415671_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1542415671_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1542515673_)
                           (let ((_e1542615676_ (gx#stx-e _tl1542515673_)))
                             (let ((_hd1542715679_ (##car _e1542615676_))
                                   (_tl1542815681_ (##cdr _e1542615676_)))
                               (if (gx#stx-null? _tl1542815681_)
                                   (if (gx#stx-null? _tl1540715625_)
                                       ((lambda (_L15684_
                                                 _L15685_
                                                 _L15686_
                                                 _L15687_)
                                          (gxc#generate-runtime-binding-id
                                           _L15684_))
                                        _hd1542715679_
                                        _hd1541815655_
                                        _tl1539815598_
                                        _arg1540415617_)
                                       (_g1534115583_ _g1534315586_))
                                   (_g1534115583_ _g1534315586_))))
                           (_g1534115583_ _g1534315586_))
                       (_g1534115583_ _g1534315586_))
                   (_g1534115583_ _g1534315586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1534115583_
                                                    _g1534315586_))))
                                           (_g1534115583_ _g1534315586_))
                                       (_g1534115583_ _g1534315586_))))
                               (_g1534115583_ _g1534315586_))
                           (_g1534115583_ _g1534315586_))
                       (_g1534115583_ _g1534315586_))))
               (_g1534115583_ _g1534315586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1534115583_ _g1534315586_))
                                           (_g1534115583_ _g1534315586_))
                                       (_g1534115583_ _g1534315586_))))
                               (_g1534115583_ _g1534315586_))))
                       (_g1534115583_ _g1534315586_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1539915601_
                                            _target1539615596_
                                            '())))))
                                   (_g1534115583_ _g1534315586_))
                               (_g1534115583_ _g1534315586_))))
                       (_g1534115583_ _g1534315586_)))))
            (let ((_g1533915867_
                   (lambda (_g1534315722_)
                     (if (gx#stx-pair? _g1534315722_)
                         (let ((_e1534715724_ (gx#stx-e _g1534315722_)))
                           (let ((_hd1534815727_ (##car _e1534715724_))
                                 (_tl1534915729_ (##cdr _e1534715724_)))
                             (if (gx#stx-pair/null? _hd1534815727_)
                                 (if (fx>= (gx#stx-length _hd1534815727_) '0)
                                     (let ((_g17737_
                                            (gx#syntax-split-splice
                                             _hd1534815727_
                                             '0)))
                                       (begin
                                         (let ((_g17738_
                                                (values-count _g17737_)))
                                           (if (not (fx= _g17738_ 2))
                                               (error "Context expects 2 values"
                                                      _g17738_)))
                                         (let ((_target1535015732_
                                                (values-ref _g17737_ 0))
                                               (_tl1535215734_
                                                (values-ref _g17737_ 1)))
                                           (if (gx#stx-null? _tl1535215734_)
                                               (letrec ((_loop1535315737_
                                                         (lambda (_hd1535115740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1535715742_)
                   (if (gx#stx-pair? _hd1535115740_)
                       (let ((_e1535415745_ (gx#stx-e _hd1535115740_)))
                         (let ((_lp-hd1535515748_ (##car _e1535415745_))
                               (_lp-tl1535615750_ (##cdr _e1535415745_)))
                           (_loop1535315737_
                            _lp-tl1535615750_
                            (cons _lp-hd1535515748_ _arg1535715742_))))
                       (let ((_arg1535815753_ (reverse _arg1535715742_)))
                         (if (gx#stx-pair? _tl1534915729_)
                             (let ((_e1535915756_ (gx#stx-e _tl1534915729_)))
                               (let ((_hd1536015759_ (##car _e1535915756_))
                                     (_tl1536115761_ (##cdr _e1535915756_)))
                                 (if (gx#stx-pair? _hd1536015759_)
                                     (let ((_e1536215764_
                                            (gx#stx-e _hd1536015759_)))
                                       (let ((_hd1536315767_
                                              (##car _e1536215764_))
                                             (_tl1536415769_
                                              (##cdr _e1536215764_)))
                                         (if (gx#identifier? _hd1536315767_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1536315767_)
                                                 (if (gx#stx-pair?
                                                      _tl1536415769_)
                                                     (let ((_e1536515772_
                                                            (gx#stx-e
                                                             _tl1536415769_)))
                                                       (let ((_hd1536615775_
                                                              (##car _e1536515772_))
                                                             (_tl1536715777_
                                                              (##cdr _e1536515772_)))
                                                         (if (gx#stx-pair?
                                                              _hd1536615775_)
                                                             (let ((_e1536815780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1536615775_)))
                       (let ((_hd1536915783_ (##car _e1536815780_))
                             (_tl1537015785_ (##cdr _e1536815780_)))
                         (if (gx#identifier? _hd1536915783_)
                             (if (gx#stx-eq? '%#ref _hd1536915783_)
                                 (if (gx#stx-pair? _tl1537015785_)
                                     (let ((_e1537115788_
                                            (gx#stx-e _tl1537015785_)))
                                       (let ((_hd1537215791_
                                              (##car _e1537115788_))
                                             (_tl1537315793_
                                              (##cdr _e1537115788_)))
                                         (if (gx#stx-null? _tl1537315793_)
                                             (if (gx#stx-pair/null?
                                                  _tl1536715777_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1536715777_)
                                                           '0)
                                                     (let ((_g17739_
                                                            (gx#syntax-split-splice
                                                             _tl1536715777_
                                                             '0)))
                                                       (begin
                                                         (let ((_g17740_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g17739_)))
                   (if (not (fx= _g17740_ 2))
                       (error "Context expects 2 values" _g17740_)))
                 (let ((_target1537415796_ (values-ref _g17739_ 0))
                       (_tl1537615798_ (values-ref _g17739_ 1)))
                   (if (gx#stx-null? _tl1537615798_)
                       (letrec ((_loop1537715801_
                                 (lambda (_hd1537515804_ _xarg1538115806_)
                                   (if (gx#stx-pair? _hd1537515804_)
                                       (let ((_e1537815809_
                                              (gx#stx-e _hd1537515804_)))
                                         (let ((_lp-hd1537915812_
                                                (##car _e1537815809_))
                                               (_lp-tl1538015814_
                                                (##cdr _e1537815809_)))
                                           (if (gx#stx-pair? _lp-hd1537915812_)
                                               (let ((_e1538315817_
                                                      (gx#stx-e
                                                       _lp-hd1537915812_)))
                                                 (let ((_hd1538415820_
                                                        (##car _e1538315817_))
                                                       (_tl1538515822_
                                                        (##cdr _e1538315817_)))
                                                   (if (gx#identifier?
                                                        _hd1538415820_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1538415820_)
                                                           (if (gx#stx-pair?
                                                                _tl1538515822_)
                                                               (let ((_e1538615825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1538515822_)))
                         (let ((_hd1538715828_ (##car _e1538615825_))
                               (_tl1538815830_ (##cdr _e1538615825_)))
                           (if (gx#stx-null? _tl1538815830_)
                               (_loop1537715801_
                                _lp-tl1538015814_
                                (cons _hd1538715828_ _xarg1538115806_))
                               (_g1534015719_ _g1534315722_))))
                       (_g1534015719_ _g1534315722_))
                   (_g1534015719_ _g1534315722_))
               (_g1534015719_ _g1534315722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1534015719_ _g1534315722_))))
                                       (let ((_xarg1538215833_
                                              (reverse _xarg1538115806_)))
                                         (if (gx#stx-null? _tl1536115761_)
                                             ((lambda (_L15836_
                                                       _L15837_
                                                       _L15838_)
                                                (gxc#generate-runtime-binding-id
                                                 _L15837_))
                                              _xarg1538215833_
                                              _hd1537215791_
                                              _arg1535815753_)
                                             (_g1534015719_
                                              _g1534315722_)))))))
                         (_loop1537715801_ _target1537415796_ '()))
                       (_g1534015719_ _g1534315722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1534015719_
                                                      _g1534315722_))
                                                 (_g1534015719_ _g1534315722_))
                                             (_g1534015719_ _g1534315722_))))
                                     (_g1534015719_ _g1534315722_))
                                 (_g1534015719_ _g1534315722_))
                             (_g1534015719_ _g1534315722_))))
                     (_g1534015719_ _g1534315722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1534015719_
                                                      _g1534315722_))
                                                 (_g1534015719_ _g1534315722_))
                                             (_g1534015719_ _g1534315722_))))
                                     (_g1534015719_ _g1534315722_))))
                             (_g1534015719_ _g1534315722_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1535315737_
                                                  _target1535015732_
                                                  '()))
                                               (_g1534015719_
                                                _g1534315722_)))))
                                     (_g1534015719_ _g1534315722_))
                                 (_g1534015719_ _g1534315722_))))
                         (_g1534015719_ _g1534315722_)))))
              (_g1533915867_ _form15338_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form15142_)
      (let ((_g1514415158_
             (lambda (_g1514515155_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1514515155_))))
        (let ((_g1514315335_
               (lambda (_g1514515161_)
                 (if (gx#stx-pair? _g1514515161_)
                     (let ((_e1514815163_ (gx#stx-e _g1514515161_)))
                       (let ((_hd1514915166_ (##car _e1514815163_))
                             (_tl1515015168_ (##cdr _e1514815163_)))
                         (if (gx#stx-pair? _tl1515015168_)
                             (let ((_e1515115171_ (gx#stx-e _tl1515015168_)))
                               (let ((_hd1515215174_ (##car _e1515115171_))
                                     (_tl1515315176_ (##cdr _e1515115171_)))
                                 (if (gx#stx-null? _tl1515315176_)
                                     ((lambda (_L15179_ _L15180_)
                                        (let ((_g1519515223_
                                               (lambda (_g1519615220_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1519615220_))))
                                          (let ((_g1519415236_
                                                 (lambda (_g1519615226_)
                                                   ((lambda (_L15228_)
                                                      (cons '0 '()))
                                                    _g1519615226_))))
                                            (let ((_g1519315285_
                                                   (lambda (_g1519615239_)
                                                     (if (gx#stx-pair/null?
                                                          _g1519615239_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1519615239_)
                           '0)
                     (let ((_g17741_
                            (gx#syntax-split-splice _g1519615239_ '0)))
                       (begin
                         (let ((_g17742_ (values-count _g17741_)))
                           (if (not (fx= _g17742_ 2))
                               (error "Context expects 2 values" _g17742_)))
                         (let ((_target1520915241_ (values-ref _g17741_ 0))
                               (_tl1521115243_ (values-ref _g17741_ 1)))
                           (letrec ((_loop1521215246_
                                     (lambda (_hd1521015249_ _arg1521615251_)
                                       (if (gx#stx-pair? _hd1521015249_)
                                           (let ((_e1521315254_
                                                  (gx#stx-e _hd1521015249_)))
                                             (let ((_lp-hd1521415257_
                                                    (##car _e1521315254_))
                                                   (_lp-tl1521515259_
                                                    (##cdr _e1521315254_)))
                                               (_loop1521215246_
                                                _lp-tl1521515259_
                                                (cons _lp-hd1521415257_
                                                      _arg1521615251_))))
                                           (let ((_arg1521715262_
                                                  (reverse _arg1521615251_)))
                                             ((lambda (_L15265_ _L15266_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1527715280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1527815282_)
                                  (cons _g1527715280_ _g1527815282_))
                                '()
                                _L15266_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1521115243_
                                              _arg1521715262_))))))
                             (_loop1521215246_ _target1520915241_ '())))))
                     (_g1519415236_ _g1519615239_))
                 (_g1519415236_ _g1519615239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1519215332_
                                                     (lambda (_g1519615288_)
                                                       (if (gx#stx-pair/null?
                                                            _g1519615288_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1519615288_)
                             '0)
                       (let ((_g17743_
                              (gx#syntax-split-splice _g1519615288_ '0)))
                         (begin
                           (let ((_g17744_ (values-count _g17743_)))
                             (if (not (fx= _g17744_ 2))
                                 (error "Context expects 2 values" _g17744_)))
                           (let ((_target1519815290_ (values-ref _g17743_ 0))
                                 (_tl1520015292_ (values-ref _g17743_ 1)))
                             (if (gx#stx-null? _tl1520015292_)
                                 (letrec ((_loop1520115295_
                                           (lambda (_hd1519915298_
                                                    _arg1520515300_)
                                             (if (gx#stx-pair? _hd1519915298_)
                                                 (let ((_e1520215303_
                                                        (gx#stx-e
                                                         _hd1519915298_)))
                                                   (let ((_lp-hd1520315306_
                                                          (##car _e1520215303_))
                                                         (_lp-tl1520415308_
                                                          (##cdr _e1520215303_)))
                                                     (_loop1520115295_
                                                      _lp-tl1520415308_
                                                      (cons _lp-hd1520315306_
                                                            _arg1520515300_))))
                                                 (let ((_arg1520615311_
                                                        (reverse _arg1520515300_)))
                                                   ((lambda (_L15314_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1532415327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1532515329_)
                                  (cons _g1532415327_ _g1532515329_))
                                '()
                                _L15314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1520615311_))))))
                                   (_loop1520115295_ _target1519815290_ '()))
                                 (_g1519315285_ _g1519615288_)))))
                       (_g1519315285_ _g1519615288_))
                   (_g1519315285_ _g1519615288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1519215332_ _L15180_))))))
                                      _hd1515215174_
                                      _hd1514915166_)
                                     (_g1514415158_ _g1514515161_))))
                             (_g1514415158_ _g1514515161_))))
                     (_g1514415158_ _g1514515161_)))))
          (_g1514315335_ _form15142_)))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx14415_)
      (let ((_lambda-expr?14417_
             (lambda (_expr15095_)
               (let ((_g1509815108_
                      (lambda (_g1509915105_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1509915105_))))
                 (let ((_g1509715115_
                        (lambda (_g1509915111_) ((lambda () '#f)))))
                   (let ((_g1509615139_
                          (lambda (_g1509915118_)
                            (if (gx#stx-pair? _g1509915118_)
                                (let ((_e1510115120_ (gx#stx-e _g1509915118_)))
                                  (let ((_hd1510215123_ (##car _e1510115120_))
                                        (_tl1510315125_ (##cdr _e1510115120_)))
                                    (if (gx#identifier? _hd1510215123_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1510215123_)
                                            ((lambda (_L15128_) '#t)
                                             _tl1510315125_)
                                            (_g1509715115_ _g1509915118_))
                                        (_g1509715115_ _g1509915118_))))
                                (_g1509715115_ _g1509915118_)))))
                     (_g1509615139_ _expr15095_)))))))
        (let ((_case-lambda-expr?14418_
               (lambda (_expr15048_)
                 (let ((_g1505115061_
                        (lambda (_g1505215058_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1505215058_))))
                   (let ((_g1505015068_
                          (lambda (_g1505215064_) ((lambda () '#f)))))
                     (let ((_g1504915092_
                            (lambda (_g1505215071_)
                              (if (gx#stx-pair? _g1505215071_)
                                  (let ((_e1505415073_
                                         (gx#stx-e _g1505215071_)))
                                    (let ((_hd1505515076_
                                           (##car _e1505415073_))
                                          (_tl1505615078_
                                           (##cdr _e1505415073_)))
                                      (if (gx#identifier? _hd1505515076_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1505515076_)
                                              ((lambda (_L15081_) '#t)
                                               _tl1505615078_)
                                              (_g1505015068_ _g1505215071_))
                                          (_g1505015068_ _g1505215071_))))
                                  (_g1505015068_ _g1505215071_)))))
                       (_g1504915092_ _expr15048_)))))))
          (let ((_lift-case-lambda-clauses14419_
                 (lambda (_id14809_ _clauses14810_)
                   ((letrec ((_lp14812_
                              (lambda (_rest14814_
                                       _ids14815_
                                       _impls14816_
                                       _clauses14817_)
                                (let ((_rest1481814826_ _rest14814_))
                                  (let ((_E1482114830_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1481814826_))))
                                    (let ((_else1482014834_
                                           (lambda ()
                                             (values (reverse _ids14815_)
                                                     (reverse _impls14816_)
                                                     (reverse _clauses14817_)))))
                                      (let ((_K1482215036_
                                             (lambda (_rest14837_
                                                      _clause14838_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause14838_)
                                                   (_lp14812_
                                                    _rest14837_
                                                    _ids14815_
                                                    _impls14816_
                                                    (cons _clause14838_
                                                          _clauses14817_))
                                                   (let ((_g1484014851_
                                                          (lambda (_g1484114848_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1484114848_))))
                                                     (let ((_g1483915033_
                                                            (lambda (_g1484114854_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1484114854_)
                          (let ((_e1484414856_ (gx#stx-e _g1484114854_)))
                            (let ((_hd1484514859_ (##car _e1484414856_))
                                  (_tl1484614861_ (##cdr _e1484414856_)))
                              ((lambda (_L14864_ _L14865_)
                                 (let ((_id14882_
                                        (make-symbol
                                         (gx#stx-e _id14809_)
                                         '"__"
                                         (length _clauses14817_))))
                                   (let ((_impl14884_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L14865_ _L14864_))
                                           _stx14415_)))
                                     (let ((_clause15030_
                                            (let ((_g1488814916_
                                                   (lambda (_g1488914913_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1488914913_))))
                                              (let ((_g1488714931_
                                                     (lambda (_g1488914919_)
                                                       ((lambda (_L14921_)
                                                          (cons _L14865_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id14882_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L14921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx14415_)
                              '())))
                _g1488914919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1488614980_
                                                       (lambda (_g1488914934_)
                                                         (if (gx#stx-pair/null?
                                                              _g1488914934_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1488914934_)
                               '0)
                         (let ((_g17747_
                                (gx#syntax-split-splice _g1488914934_ '0)))
                           (begin
                             (let ((_g17748_ (values-count _g17747_)))
                               (if (not (fx= _g17748_ 2))
                                   (error "Context expects 2 values"
                                          _g17748_)))
                             (let ((_target1490214936_ (values-ref _g17747_ 0))
                                   (_tl1490414938_ (values-ref _g17747_ 1)))
                               (letrec ((_loop1490514941_
                                         (lambda (_hd1490314944_
                                                  _arg1490914946_)
                                           (if (gx#stx-pair? _hd1490314944_)
                                               (let ((_e1490614949_
                                                      (gx#stx-e
                                                       _hd1490314944_)))
                                                 (let ((_lp-hd1490714952_
                                                        (##car _e1490614949_))
                                                       (_lp-tl1490814954_
                                                        (##cdr _e1490614949_)))
                                                   (_loop1490514941_
                                                    _lp-tl1490814954_
                                                    (cons _lp-hd1490714952_
                                                          _arg1490914946_))))
                                               (let ((_arg1491014957_
                                                      (reverse _arg1490914946_)))
                                                 ((lambda (_L14960_ _L14961_)
                                                    (cons _L14865_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id14882_ '()))
                                           (foldr1 cons
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L14960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1497214975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1497314977_)
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _g1497214975_ '()))
                             _g1497314977_))
                     '()
                     _L14961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx14415_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1490414938_
                                                  _arg1491014957_))))))
                                 (_loop1490514941_ _target1490214936_ '())))))
                         (_g1488714931_ _g1488914934_))
                     (_g1488714931_ _g1488914934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1488515027_
                                                         (lambda (_g1488914983_)
                                                           (if (gx#stx-pair/null?
                                                                _g1488914983_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1488914983_)
                                 '0)
                           (let ((_g17749_
                                  (gx#syntax-split-splice _g1488914983_ '0)))
                             (begin
                               (let ((_g17750_ (values-count _g17749_)))
                                 (if (not (fx= _g17750_ 2))
                                     (error "Context expects 2 values"
                                            _g17750_)))
                               (let ((_target1489114985_
                                      (values-ref _g17749_ 0))
                                     (_tl1489314987_ (values-ref _g17749_ 1)))
                                 (if (gx#stx-null? _tl1489314987_)
                                     (letrec ((_loop1489414990_
                                               (lambda (_hd1489214993_
                                                        _arg1489814995_)
                                                 (if (gx#stx-pair?
                                                      _hd1489214993_)
                                                     (let ((_e1489514998_
                                                            (gx#stx-e
                                                             _hd1489214993_)))
                                                       (let ((_lp-hd1489615001_
                                                              (##car _e1489514998_))
                                                             (_lp-tl1489715003_
                                                              (##cdr _e1489514998_)))
                                                         (_loop1489414990_
                                                          _lp-tl1489715003_
                                                          (cons _lp-hd1489615001_
                                                                _arg1489814995_))))
                                                     (let ((_arg1489915006_
                                                            (reverse _arg1489814995_)))
                                                       ((lambda (_L15009_)
                                                          (cons _L14865_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id14882_ '()))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1501915022_
                                                              _g1502015024_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#ref)
                           (cons _g1501915022_ '()))
                     _g1502015024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L15009_))))
                               _stx14415_)
                              '())))
                _arg1489915006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1489414990_
                                        _target1489114985_
                                        '()))
                                     (_g1488614980_ _g1488914983_)))))
                           (_g1488614980_ _g1488914983_))
                       (_g1488614980_ _g1488914983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1488515027_
                                                     _L14865_)))))))
                                       (let ()
                                         (_lp14812_
                                          _rest14837_
                                          (cons _id14882_ _ids14815_)
                                          (cons _impl14884_ _impls14816_)
                                          (cons _clause15030_
                                                _clauses14817_)))))))
                               _tl1484614861_
                               _hd1484514859_)))
                          (_g1484014851_ _g1484114854_)))))
               (_g1483915033_ _clause14838_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1481814826_)
                                            (let ((_hd1482315039_
                                                   (##car _rest1481814826_))
                                                  (_tl1482415041_
                                                   (##cdr _rest1481814826_)))
                                              (let ((_clause15044_
                                                     _hd1482315039_))
                                                (let ((_rest15046_
                                                       _tl1482415041_))
                                                  (_K1482215036_
                                                   _rest15046_
                                                   _clause15044_))))
                                            (_else1482014834_)))))))))
                      _lp14812_)
                    _clauses14810_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def14420_
                   (lambda (_id14806_ _impl14807_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id14806_ '()) (cons _impl14807_ '())))
                      _stx14415_))))
              (let ((_g1442514499_
                     (lambda (_g1442614496_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1442614496_))))
                (let ((_g1442414506_
                       (lambda (_g1442614502_) ((lambda () _stx14415_)))))
                  (let ((_g1442314642_
                         (lambda (_g1442614509_)
                           (if (gx#stx-pair? _g1442614509_)
                               (let ((_e1446214511_ (gx#stx-e _g1442614509_)))
                                 (let ((_hd1446314514_ (##car _e1446214511_))
                                       (_tl1446414516_ (##cdr _e1446214511_)))
                                   (if (gx#stx-pair? _tl1446414516_)
                                       (let ((_e1446514519_
                                              (gx#stx-e _tl1446414516_)))
                                         (let ((_hd1446614522_
                                                (##car _e1446514519_))
                                               (_tl1446714524_
                                                (##cdr _e1446514519_)))
                                           (if (gx#stx-pair? _hd1446614522_)
                                               (let ((_e1446814527_
                                                      (gx#stx-e
                                                       _hd1446614522_)))
                                                 (let ((_hd1446914530_
                                                        (##car _e1446814527_))
                                                       (_tl1447014532_
                                                        (##cdr _e1446814527_)))
                                                   (if (gx#stx-null?
                                                        _tl1447014532_)
                                                       (if (gx#stx-pair?
                                                            _tl1446714524_)
                                                           (let ((_e1447114535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1446714524_)))
                     (let ((_hd1447214538_ (##car _e1447114535_))
                           (_tl1447314540_ (##cdr _e1447114535_)))
                       (if (gx#stx-pair? _hd1447214538_)
                           (let ((_e1447414543_ (gx#stx-e _hd1447214538_)))
                             (let ((_hd1447514546_ (##car _e1447414543_))
                                   (_tl1447614548_ (##cdr _e1447414543_)))
                               (if (gx#identifier? _hd1447514546_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1447514546_)
                                       (if (gx#stx-pair? _tl1447614548_)
                                           (let ((_e1447714551_
                                                  (gx#stx-e _tl1447614548_)))
                                             (let ((_hd1447814554_
                                                    (##car _e1447714551_))
                                                   (_tl1447914556_
                                                    (##cdr _e1447714551_)))
                                               (if (gx#stx-pair?
                                                    _hd1447814554_)
                                                   (let ((_e1448014559_
                                                          (gx#stx-e
                                                           _hd1447814554_)))
                                                     (let ((_hd1448114562_
                                                            (##car _e1448014559_))
                                                           (_tl1448214564_
                                                            (##cdr _e1448014559_)))
                                                       (if (gx#stx-pair?
                                                            _hd1448114562_)
                                                           (let ((_e1448314567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1448114562_)))
                     (let ((_hd1448414570_ (##car _e1448314567_))
                           (_tl1448514572_ (##cdr _e1448314567_)))
                       (if (gx#stx-pair? _hd1448414570_)
                           (let ((_e1448614575_ (gx#stx-e _hd1448414570_)))
                             (let ((_hd1448714578_ (##car _e1448614575_))
                                   (_tl1448814580_ (##cdr _e1448614575_)))
                               (if (gx#stx-null? _tl1448814580_)
                                   (if (gx#stx-pair? _tl1448514572_)
                                       (let ((_e1448914583_
                                              (gx#stx-e _tl1448514572_)))
                                         (let ((_hd1449014586_
                                                (##car _e1448914583_))
                                               (_tl1449114588_
                                                (##cdr _e1448914583_)))
                                           (if (gx#stx-null? _tl1449114588_)
                                               (if (gx#stx-null?
                                                    _tl1448214564_)
                                                   (if (gx#stx-pair?
                                                        _tl1447914556_)
                                                       (let ((_e1449214591_
                                                              (gx#stx-e
                                                               _tl1447914556_)))
                                                         (let ((_hd1449314594_
                                                                (##car _e1449214591_))
                                                               (_tl1449414596_
                                                                (##cdr _e1449214591_)))
                                                           (if (gx#stx-null?
                                                                _tl1449414596_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1447314540_)
                           ((lambda (_L14599_ _L14600_ _L14601_ _L14602_)
                              (if (if (gx#identifier? _L14602_)
                                      (if (gx#identifier? _L14601_)
                                          (if (_lambda-expr?14417_ _L14600_)
                                              (_case-lambda-expr?14418_
                                               _L14599_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id14637_
                                         (make-symbol
                                          (gx#stx-e _L14602_)
                                          '"__"
                                          (gx#stx-e _L14601_))))
                                    (let ((_new-case-lambda-expr14639_
                                           (gxc#apply-expression-subst
                                            _L14599_
                                            _L14601_
                                            _lambda-id14637_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#generate-runtime-binding-id
                                            _L14602_)
                                           '" => "
                                           _lambda-id14637_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id14637_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id14637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L14600_ '())))
                _stx14415_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L14602_ '())
                                   (cons _new-case-lambda-expr14639_ '())))
                       _stx14415_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx14415_)))))
                                  (_g1442414506_ _g1442614509_)))
                            _hd1449314594_
                            _hd1449014586_
                            _hd1448714578_
                            _hd1446914530_)
                           (_g1442414506_ _g1442614509_))
                       (_g1442414506_ _g1442614509_))))
               (_g1442414506_ _g1442614509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1442414506_
                                                    _g1442614509_))
                                               (_g1442414506_ _g1442614509_))))
                                       (_g1442414506_ _g1442614509_))
                                   (_g1442414506_ _g1442614509_))))
                           (_g1442414506_ _g1442614509_))))
                   (_g1442414506_ _g1442614509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1442414506_
                                                    _g1442614509_))))
                                           (_g1442414506_ _g1442614509_))
                                       (_g1442414506_ _g1442614509_))
                                   (_g1442414506_ _g1442614509_))))
                           (_g1442414506_ _g1442614509_))))
                   (_g1442414506_ _g1442614509_))
               (_g1442414506_ _g1442614509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1442414506_ _g1442614509_))))
                                       (_g1442414506_ _g1442614509_))))
                               (_g1442414506_ _g1442614509_)))))
                    (let ((_g1442214739_
                           (lambda (_g1442614645_)
                             (if (gx#stx-pair? _g1442614645_)
                                 (let ((_e1444614647_
                                        (gx#stx-e _g1442614645_)))
                                   (let ((_hd1444714650_ (##car _e1444614647_))
                                         (_tl1444814652_
                                          (##cdr _e1444614647_)))
                                     (if (gx#stx-pair? _tl1444814652_)
                                         (let ((_e1444914655_
                                                (gx#stx-e _tl1444814652_)))
                                           (let ((_hd1445014658_
                                                  (##car _e1444914655_))
                                                 (_tl1445114660_
                                                  (##cdr _e1444914655_)))
                                             (if (gx#stx-pair? _hd1445014658_)
                                                 (let ((_e1445214663_
                                                        (gx#stx-e
                                                         _hd1445014658_)))
                                                   (let ((_hd1445314666_
                                                          (##car _e1445214663_))
                                                         (_tl1445414668_
                                                          (##cdr _e1445214663_)))
                                                     (if (gx#stx-null?
                                                          _tl1445414668_)
                                                         (if (gx#stx-pair?
                                                              _tl1445114660_)
                                                             (let ((_e1445514671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1445114660_)))
                       (let ((_hd1445614674_ (##car _e1445514671_))
                             (_tl1445714676_ (##cdr _e1445514671_)))
                         (if (gx#stx-null? _tl1445714676_)
                             ((lambda (_L14679_ _L14680_)
                                (if (if (gx#identifier? _L14680_)
                                        (_case-lambda-expr?14418_ _L14679_)
                                        '#f)
                                    (let ((_g1469614706_
                                           (lambda (_g1469714703_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1469714703_))))
                                      (let ((_g1469514736_
                                             (lambda (_g1469714709_)
                                               (if (gx#stx-pair? _g1469714709_)
                                                   (let ((_e1469914711_
                                                          (gx#stx-e
                                                           _g1469714709_)))
                                                     (let ((_hd1470014714_
                                                            (##car _e1469914711_))
                                                           (_tl1470114716_
                                                            (##cdr _e1469914711_)))
                                                       ((lambda (_L14719_)
                                                          (let ((_g17745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses14419_ _L14680_ _L14719_)))
                    (begin
                      (let ((_g17746_ (values-count _g17745_)))
                        (if (not (fx= _g17746_ 3))
                            (error "Context expects 3 values" _g17746_)))
                      (let ((_ids14729_ (values-ref _g17745_ 0))
                            (_impls14730_ (values-ref _g17745_ 1))
                            (_clauses14731_ (values-ref _g17745_ 2)))
                        (let ((_defs14733_
                               (map _case-lambda-clause-def14420_
                                    _ids14729_
                                    _impls14730_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#generate-runtime-binding-id _L14680_)
                               '" => "
                               _ids14729_)
                              (for-each gx#core-bind-runtime! _ids14729_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr1 cons
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L14680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (gxc#xform-wrap-source
                               (cons '%#case-lambda _clauses14731_)
                               _L14679_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx14415_)
                                                   '())
                                             _defs14733_))
                               _stx14415_))))))))
                _tl1470114716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1469614706_
                                                    _g1469714709_)))))
                                        (_g1469514736_ _L14679_)))
                                    (_g1442314642_ _g1442614645_)))
                              _hd1445614674_
                              _hd1445314666_)
                             (_g1442314642_ _g1442614645_))))
                     (_g1442314642_ _g1442614645_))
                 (_g1442314642_ _g1442614645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1442314642_
                                                  _g1442614645_))))
                                         (_g1442314642_ _g1442614645_))))
                                 (_g1442314642_ _g1442614645_)))))
                      (let ((_g1442114803_
                             (lambda (_g1442614742_)
                               (if (gx#stx-pair? _g1442614742_)
                                   (let ((_e1442914744_
                                          (gx#stx-e _g1442614742_)))
                                     (let ((_hd1443014747_
                                            (##car _e1442914744_))
                                           (_tl1443114749_
                                            (##cdr _e1442914744_)))
                                       (if (gx#stx-pair? _tl1443114749_)
                                           (let ((_e1443214752_
                                                  (gx#stx-e _tl1443114749_)))
                                             (let ((_hd1443314755_
                                                    (##car _e1443214752_))
                                                   (_tl1443414757_
                                                    (##cdr _e1443214752_)))
                                               (if (gx#stx-pair?
                                                    _hd1443314755_)
                                                   (let ((_e1443514760_
                                                          (gx#stx-e
                                                           _hd1443314755_)))
                                                     (let ((_hd1443614763_
                                                            (##car _e1443514760_))
                                                           (_tl1443714765_
                                                            (##cdr _e1443514760_)))
                                                       (if (gx#stx-null?
                                                            _tl1443714765_)
                                                           (if (gx#stx-pair?
                                                                _tl1443414757_)
                                                               (let ((_e1443814768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1443414757_)))
                         (let ((_hd1443914771_ (##car _e1443814768_))
                               (_tl1444014773_ (##cdr _e1443814768_)))
                           (if (gx#stx-pair? _hd1443914771_)
                               (let ((_e1444114776_ (gx#stx-e _hd1443914771_)))
                                 (let ((_hd1444214779_ (##car _e1444114776_))
                                       (_tl1444314781_ (##cdr _e1444114776_)))
                                   (if (gx#identifier? _hd1444214779_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1444214779_)
                                           (if (gx#stx-null? _tl1444014773_)
                                               ((lambda (_L14784_ _L14785_)
                                                  (if (if (gx#identifier?
                                                           _L14785_)
                                                          (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L14784_)
                  '#f)
              _stx14415_
              (_g1442214739_ _g1442614742_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1444314781_
                                                _hd1443614763_)
                                               (_g1442214739_ _g1442614742_))
                                           (_g1442214739_ _g1442614742_))
                                       (_g1442214739_ _g1442614742_))))
                               (_g1442214739_ _g1442614742_))))
                       (_g1442214739_ _g1442614742_))
                   (_g1442214739_ _g1442614742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1442214739_
                                                    _g1442614742_))))
                                           (_g1442214739_ _g1442614742_))))
                                   (_g1442214739_ _g1442614742_)))))
                        (_g1442114803_ _stx14415_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14353_ _id14354_ _new-id14355_)
      (let ((_g1435814371_
             (lambda (_g1435914368_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1435914368_))))
        (let ((_g1435714378_
               (lambda (_g1435914374_) ((lambda () _stx14353_)))))
          (let ((_g1435614412_
                 (lambda (_g1435914381_)
                   (if (gx#stx-pair? _g1435914381_)
                       (let ((_e1436114383_ (gx#stx-e _g1435914381_)))
                         (let ((_hd1436214386_ (##car _e1436114383_))
                               (_tl1436314388_ (##cdr _e1436114383_)))
                           (if (gx#stx-pair? _tl1436314388_)
                               (let ((_e1436414391_ (gx#stx-e _tl1436314388_)))
                                 (let ((_hd1436514394_ (##car _e1436414391_))
                                       (_tl1436614396_ (##cdr _e1436414391_)))
                                   (if (gx#stx-null? _tl1436614396_)
                                       ((lambda (_L14399_)
                                          (if (gx#free-identifier=?
                                               _L14399_
                                               _id14354_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14355_ '()))
                                               _stx14353_)
                                              (_g1435714378_ _g1435914381_)))
                                        _hd1436514394_)
                                       (_g1435714378_ _g1435914381_))))
                               (_g1435714378_ _g1435914381_))))
                       (_g1435714378_ _g1435914381_)))))
            (_g1435614412_ _stx14353_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14209_)
      (let ((_g1421214243_
             (lambda (_g1421314240_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1421314240_))))
        (let ((_g1421114288_
               (lambda (_g1421314246_)
                 (if (gx#stx-pair? _g1421314246_)
                     (let ((_e1423014248_ (gx#stx-e _g1421314246_)))
                       (let ((_hd1423114251_ (##car _e1423014248_))
                             (_tl1423214253_ (##cdr _e1423014248_)))
                         (if (gx#stx-pair? _tl1423214253_)
                             (let ((_e1423314256_ (gx#stx-e _tl1423214253_)))
                               (let ((_hd1423414259_ (##car _e1423314256_))
                                     (_tl1423514261_ (##cdr _e1423314256_)))
                                 (if (gx#stx-pair? _tl1423514261_)
                                     (let ((_e1423614264_
                                            (gx#stx-e _tl1423514261_)))
                                       (let ((_hd1423714267_
                                              (##car _e1423614264_))
                                             (_tl1423814269_
                                              (##cdr _e1423614264_)))
                                         (if (gx#stx-null? _tl1423814269_)
                                             ((lambda (_L14272_ _L14273_)
                                                (gxc#compile-e _L14272_))
                                              _hd1423714267_
                                              _hd1423414259_)
                                             (_g1421214243_ _g1421314246_))))
                                     (_g1421214243_ _g1421314246_))))
                             (_g1421214243_ _g1421314246_))))
                     (_g1421214243_ _g1421314246_)))))
          (let ((_g1421014350_
                 (lambda (_g1421314291_)
                   (if (gx#stx-pair? _g1421314291_)
                       (let ((_e1421614293_ (gx#stx-e _g1421314291_)))
                         (let ((_hd1421714296_ (##car _e1421614293_))
                               (_tl1421814298_ (##cdr _e1421614293_)))
                           (if (gx#stx-pair? _tl1421814298_)
                               (let ((_e1421914301_ (gx#stx-e _tl1421814298_)))
                                 (let ((_hd1422014304_ (##car _e1421914301_))
                                       (_tl1422114306_ (##cdr _e1421914301_)))
                                   (if (gx#stx-pair? _hd1422014304_)
                                       (let ((_e1422214309_
                                              (gx#stx-e _hd1422014304_)))
                                         (let ((_hd1422314312_
                                                (##car _e1422214309_))
                                               (_tl1422414314_
                                                (##cdr _e1422214309_)))
                                           (if (gx#stx-null? _tl1422414314_)
                                               (if (gx#stx-pair?
                                                    _tl1422114306_)
                                                   (let ((_e1422514317_
                                                          (gx#stx-e
                                                           _tl1422114306_)))
                                                     (let ((_hd1422614320_
                                                            (##car _e1422514317_))
                                                           (_tl1422714322_
                                                            (##cdr _e1422514317_)))
                                                       (if (gx#stx-null?
                                                            _tl1422714322_)
                                                           ((lambda (_L14325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14326_)
                      (if (gx#identifier? _L14326_)
                          (let ((_sym14342_
                                 (gxc#generate-runtime-binding-id _L14326_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14342_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14342_)
                                  (let ((_type1434314345_
                                         (gxc#apply-basic-expression-type
                                          _L14325_)))
                                    (if _type1434314345_
                                        (let ((_type14348_ _type1434314345_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14342_
                                           _type14348_))
                                        '#f)))
                              (gxc#compile-e _L14325_)))
                          (_g1421114288_ _g1421314291_)))
                    _hd1422614320_
                    _hd1422314312_)
                   (_g1421114288_ _g1421314291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421114288_
                                                    _g1421314291_))
                                               (_g1421114288_ _g1421314291_))))
                                       (_g1421114288_ _g1421314291_))))
                               (_g1421114288_ _g1421314291_))))
                       (_g1421114288_ _g1421314291_)))))
            (_g1421014350_ _stx14209_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx13994_)
      (let ((_collect-e13996_
             (lambda (_hd14153_ _expr14154_)
               (let ((_g1415714167_
                      (lambda (_g1415814164_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1415814164_))))
                 (let ((_g1415614174_
                        (lambda (_g1415814170_) ((lambda () '#!void)))))
                   (let ((_g1415514206_
                          (lambda (_g1415814177_)
                            (if (gx#stx-pair? _g1415814177_)
                                (let ((_e1416014179_ (gx#stx-e _g1415814177_)))
                                  (let ((_hd1416114182_ (##car _e1416014179_))
                                        (_tl1416214184_ (##cdr _e1416014179_)))
                                    (if (gx#stx-null? _tl1416214184_)
                                        ((lambda (_L14187_)
                                           (if (gx#identifier? _L14187_)
                                               (let ((_sym14198_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14187_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14198_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14198_)
                                                     (let ((_type1419914201_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14154_)))
                                                       (if _type1419914201_
                                                           (let ((_type14204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1419914201_))
                     (gxc#optimizer-declare-type!__opt-lambda17508
                      _sym14198_
                      _type14204_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1415614174_ _g1415814177_)))
                                         _hd1416114182_)
                                        (_g1415614174_ _g1415814177_))))
                                (_g1415614174_ _g1415814177_)))))
                     (_g1415514206_ _hd14153_)))))))
        (let ((_g1399814033_
               (lambda (_g1399914030_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1399914030_))))
          (let ((_g1399714150_
                 (lambda (_g1399914036_)
                   (if (gx#stx-pair? _g1399914036_)
                       (let ((_e1400314038_ (gx#stx-e _g1399914036_)))
                         (let ((_hd1400414041_ (##car _e1400314038_))
                               (_tl1400514043_ (##cdr _e1400314038_)))
                           (if (gx#stx-pair? _tl1400514043_)
                               (let ((_e1400614046_ (gx#stx-e _tl1400514043_)))
                                 (let ((_hd1400714049_ (##car _e1400614046_))
                                       (_tl1400814051_ (##cdr _e1400614046_)))
                                   (if (gx#stx-pair/null? _hd1400714049_)
                                       (if (fx>= (gx#stx-length _hd1400714049_)
                                                 '0)
                                           (let ((_g17751_
                                                  (gx#syntax-split-splice
                                                   _hd1400714049_
                                                   '0)))
                                             (begin
                                               (let ((_g17752_
                                                      (values-count _g17751_)))
                                                 (if (not (fx= _g17752_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17752_)))
                                               (let ((_target1400914054_
                                                      (values-ref _g17751_ 0))
                                                     (_tl1401114056_
                                                      (values-ref _g17751_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1401114056_)
                                                     (letrec ((_loop1401214059_
                                                               (lambda (_hd1401014062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1401614064_
                                _hd1401714066_)
                         (if (gx#stx-pair? _hd1401014062_)
                             (let ((_e1401314069_ (gx#stx-e _hd1401014062_)))
                               (let ((_lp-hd1401414072_ (##car _e1401314069_))
                                     (_lp-tl1401514074_ (##cdr _e1401314069_)))
                                 (if (gx#stx-pair? _lp-hd1401414072_)
                                     (let ((_e1402014077_
                                            (gx#stx-e _lp-hd1401414072_)))
                                       (let ((_hd1402114080_
                                              (##car _e1402014077_))
                                             (_tl1402214082_
                                              (##cdr _e1402014077_)))
                                         (if (gx#stx-pair? _tl1402214082_)
                                             (let ((_e1402314085_
                                                    (gx#stx-e _tl1402214082_)))
                                               (let ((_hd1402414088_
                                                      (##car _e1402314085_))
                                                     (_tl1402514090_
                                                      (##cdr _e1402314085_)))
                                                 (if (gx#stx-null?
                                                      _tl1402514090_)
                                                     (_loop1401214059_
                                                      _lp-tl1401514074_
                                                      (cons _hd1402414088_
                                                            _expr1401614064_)
                                                      (cons _hd1402114080_
                                                            _hd1401714066_))
                                                     (_g1399814033_
                                                      _g1399914036_))))
                                             (_g1399814033_ _g1399914036_))))
                                     (_g1399814033_ _g1399914036_))))
                             (let ((_expr1401814093_
                                    (reverse _expr1401614064_))
                                   (_hd1401914095_ (reverse _hd1401714066_)))
                               (if (gx#stx-pair? _tl1400814051_)
                                   (let ((_e1402614098_
                                          (gx#stx-e _tl1400814051_)))
                                     (let ((_hd1402714101_
                                            (##car _e1402614098_))
                                           (_tl1402814103_
                                            (##cdr _e1402614098_)))
                                       (if (gx#stx-null? _tl1402814103_)
                                           ((lambda (_L14106_
                                                     _L14107_
                                                     _L14108_)
                                              (begin
                                                (for-each
                                                 _collect-e13996_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1412814131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1412914133_)
                     (cons _g1412814131_ _g1412914133_))
                   '()
                   _L14108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1413514138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1413614140_)
                     (cons _g1413514138_ _g1413614140_))
                   '()
                   _L14107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1414214145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1414314147_)
                     (cons _g1414214145_ _g1414314147_))
                   '()
                   _L14107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14106_)))
                                            _hd1402714101_
                                            _expr1401814093_
                                            _hd1401914095_)
                                           (_g1399814033_ _g1399914036_))))
                                   (_g1399814033_ _g1399914036_)))))))
               (_loop1401214059_ _target1400914054_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1399814033_
                                                      _g1399914036_)))))
                                           (_g1399814033_ _g1399914036_))
                                       (_g1399814033_ _g1399914036_))))
                               (_g1399814033_ _g1399914036_))))
                       (_g1399814033_ _g1399914036_)))))
            (_g1399714150_ _stx13994_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13548_)
      (let ((_g1355213654_
             (lambda (_g1355313651_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1355313651_))))
        (let ((_g1355113661_ (lambda (_g1355313657_) ((lambda () '#!void)))))
          (let ((_g1355013811_
                 (lambda (_g1355313664_)
                   (if (gx#stx-pair? _g1355313664_)
                       (let ((_e1361113666_ (gx#stx-e _g1355313664_)))
                         (let ((_hd1361213669_ (##car _e1361113666_))
                               (_tl1361313671_ (##cdr _e1361113666_)))
                           (if (gx#stx-pair? _tl1361313671_)
                               (let ((_e1361413674_ (gx#stx-e _tl1361313671_)))
                                 (let ((_hd1361513677_ (##car _e1361413674_))
                                       (_tl1361613679_ (##cdr _e1361413674_)))
                                   (if (gx#stx-pair? _hd1361513677_)
                                       (let ((_e1361713682_
                                              (gx#stx-e _hd1361513677_)))
                                         (let ((_hd1361813685_
                                                (##car _e1361713682_))
                                               (_tl1361913687_
                                                (##cdr _e1361713682_)))
                                           (if (gx#identifier? _hd1361813685_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1361813685_)
                                                   (if (gx#stx-pair?
                                                        _tl1361913687_)
                                                       (let ((_e1362013690_
                                                              (gx#stx-e
                                                               _tl1361913687_)))
                                                         (let ((_hd1362113693_
                                                                (##car _e1362013690_))
                                                               (_tl1362213695_
                                                                (##cdr _e1362013690_)))
                                                           (if (gx#stx-null?
                                                                _tl1362213695_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1361613679_)
                           (let ((_e1362313698_ (gx#stx-e _tl1361613679_)))
                             (let ((_hd1362413701_ (##car _e1362313698_))
                                   (_tl1362513703_ (##cdr _e1362313698_)))
                               (if (gx#stx-pair? _hd1362413701_)
                                   (let ((_e1362613706_
                                          (gx#stx-e _hd1362413701_)))
                                     (let ((_hd1362713709_
                                            (##car _e1362613706_))
                                           (_tl1362813711_
                                            (##cdr _e1362613706_)))
                                       (if (gx#identifier? _hd1362713709_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1362713709_)
                                               (if (gx#stx-pair?
                                                    _tl1362813711_)
                                                   (let ((_e1362913714_
                                                          (gx#stx-e
                                                           _tl1362813711_)))
                                                     (let ((_hd1363013717_
                                                            (##car _e1362913714_))
                                                           (_tl1363113719_
                                                            (##cdr _e1362913714_)))
                                                       (if (gx#stx-null?
                                                            _tl1363113719_)
                                                           (if (gx#stx-pair?
                                                                _tl1362513703_)
                                                               (let ((_e1363213722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1362513703_)))
                         (let ((_hd1363313725_ (##car _e1363213722_))
                               (_tl1363413727_ (##cdr _e1363213722_)))
                           (if (gx#stx-pair? _hd1363313725_)
                               (let ((_e1363513730_ (gx#stx-e _hd1363313725_)))
                                 (let ((_hd1363613733_ (##car _e1363513730_))
                                       (_tl1363713735_ (##cdr _e1363513730_)))
                                   (if (gx#identifier? _hd1363613733_)
                                       (if (gx#stx-eq? '%#quote _hd1363613733_)
                                           (if (gx#stx-pair? _tl1363713735_)
                                               (let ((_e1363813738_
                                                      (gx#stx-e
                                                       _tl1363713735_)))
                                                 (let ((_hd1363913741_
                                                        (##car _e1363813738_))
                                                       (_tl1364013743_
                                                        (##cdr _e1363813738_)))
                                                   (if (gx#stx-null?
                                                        _tl1364013743_)
                                                       (if (gx#stx-pair?
                                                            _tl1363413727_)
                                                           (let ((_e1364113746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1363413727_)))
                     (let ((_hd1364213749_ (##car _e1364113746_))
                           (_tl1364313751_ (##cdr _e1364113746_)))
                       (if (gx#stx-pair? _hd1364213749_)
                           (let ((_e1364413754_ (gx#stx-e _hd1364213749_)))
                             (let ((_hd1364513757_ (##car _e1364413754_))
                                   (_tl1364613759_ (##cdr _e1364413754_)))
                               (if (gx#identifier? _hd1364513757_)
                                   (if (gx#stx-eq? '%#ref _hd1364513757_)
                                       (if (gx#stx-pair? _tl1364613759_)
                                           (let ((_e1364713762_
                                                  (gx#stx-e _tl1364613759_)))
                                             (let ((_hd1364813765_
                                                    (##car _e1364713762_))
                                                   (_tl1364913767_
                                                    (##cdr _e1364713762_)))
                                               (if (gx#stx-null?
                                                    _tl1364913767_)
                                                   (if (gx#stx-null?
                                                        _tl1364313751_)
                                                       ((lambda (_L13770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13771_
                         _L13772_
                         _L13773_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda17484
                       (gxc#generate-runtime-binding-id _L13772_)
                       (gx#stx-e _L13771_)
                       (gxc#generate-runtime-binding-id _L13770_)
                       '#f)
                      (_g1355113661_ _g1355313664_)))
                _hd1364813765_
                _hd1363913741_
                _hd1363013717_
                _hd1362113693_)
               (_g1355113661_ _g1355313664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1355113661_
                                                    _g1355313664_))))
                                           (_g1355113661_ _g1355313664_))
                                       (_g1355113661_ _g1355313664_))
                                   (_g1355113661_ _g1355313664_))))
                           (_g1355113661_ _g1355313664_))))
                   (_g1355113661_ _g1355313664_))
               (_g1355113661_ _g1355313664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1355113661_ _g1355313664_))
                                           (_g1355113661_ _g1355313664_))
                                       (_g1355113661_ _g1355313664_))))
                               (_g1355113661_ _g1355313664_))))
                       (_g1355113661_ _g1355313664_))
                   (_g1355113661_ _g1355313664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1355113661_
                                                    _g1355313664_))
                                               (_g1355113661_ _g1355313664_))
                                           (_g1355113661_ _g1355313664_))))
                                   (_g1355113661_ _g1355313664_))))
                           (_g1355113661_ _g1355313664_))
                       (_g1355113661_ _g1355313664_))))
               (_g1355113661_ _g1355313664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1355113661_
                                                    _g1355313664_))
                                               (_g1355113661_ _g1355313664_))))
                                       (_g1355113661_ _g1355313664_))))
                               (_g1355113661_ _g1355313664_))))
                       (_g1355113661_ _g1355313664_)))))
            (let ((_g1354913991_
                   (lambda (_g1355313814_)
                     (if (gx#stx-pair? _g1355313814_)
                         (let ((_e1355913816_ (gx#stx-e _g1355313814_)))
                           (let ((_hd1356013819_ (##car _e1355913816_))
                                 (_tl1356113821_ (##cdr _e1355913816_)))
                             (if (gx#stx-pair? _tl1356113821_)
                                 (let ((_e1356213824_
                                        (gx#stx-e _tl1356113821_)))
                                   (let ((_hd1356313827_ (##car _e1356213824_))
                                         (_tl1356413829_
                                          (##cdr _e1356213824_)))
                                     (if (gx#stx-pair? _hd1356313827_)
                                         (let ((_e1356513832_
                                                (gx#stx-e _hd1356313827_)))
                                           (let ((_hd1356613835_
                                                  (##car _e1356513832_))
                                                 (_tl1356713837_
                                                  (##cdr _e1356513832_)))
                                             (if (gx#identifier?
                                                  _hd1356613835_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1356613835_)
                                                     (if (gx#stx-pair?
                                                          _tl1356713837_)
                                                         (let ((_e1356813840_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1356713837_)))
                   (let ((_hd1356913843_ (##car _e1356813840_))
                         (_tl1357013845_ (##cdr _e1356813840_)))
                     (if (gx#stx-null? _tl1357013845_)
                         (if (gx#stx-pair? _tl1356413829_)
                             (let ((_e1357113848_ (gx#stx-e _tl1356413829_)))
                               (let ((_hd1357213851_ (##car _e1357113848_))
                                     (_tl1357313853_ (##cdr _e1357113848_)))
                                 (if (gx#stx-pair? _hd1357213851_)
                                     (let ((_e1357413856_
                                            (gx#stx-e _hd1357213851_)))
                                       (let ((_hd1357513859_
                                              (##car _e1357413856_))
                                             (_tl1357613861_
                                              (##cdr _e1357413856_)))
                                         (if (gx#identifier? _hd1357513859_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1357513859_)
                                                 (if (gx#stx-pair?
                                                      _tl1357613861_)
                                                     (let ((_e1357713864_
                                                            (gx#stx-e
                                                             _tl1357613861_)))
                                                       (let ((_hd1357813867_
                                                              (##car _e1357713864_))
                                                             (_tl1357913869_
                                                              (##cdr _e1357713864_)))
                                                         (if (gx#stx-null?
                                                              _tl1357913869_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1357313853_)
                         (let ((_e1358013872_ (gx#stx-e _tl1357313853_)))
                           (let ((_hd1358113875_ (##car _e1358013872_))
                                 (_tl1358213877_ (##cdr _e1358013872_)))
                             (if (gx#stx-pair? _hd1358113875_)
                                 (let ((_e1358313880_
                                        (gx#stx-e _hd1358113875_)))
                                   (let ((_hd1358413883_ (##car _e1358313880_))
                                         (_tl1358513885_
                                          (##cdr _e1358313880_)))
                                     (if (gx#identifier? _hd1358413883_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1358413883_)
                                             (if (gx#stx-pair? _tl1358513885_)
                                                 (let ((_e1358613888_
                                                        (gx#stx-e
                                                         _tl1358513885_)))
                                                   (let ((_hd1358713891_
                                                          (##car _e1358613888_))
                                                         (_tl1358813893_
                                                          (##cdr _e1358613888_)))
                                                     (if (gx#stx-null?
                                                          _tl1358813893_)
                                                         (if (gx#stx-pair?
                                                              _tl1358213877_)
                                                             (let ((_e1358913896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1358213877_)))
                       (let ((_hd1359013899_ (##car _e1358913896_))
                             (_tl1359113901_ (##cdr _e1358913896_)))
                         (if (gx#stx-pair? _hd1359013899_)
                             (let ((_e1359213904_ (gx#stx-e _hd1359013899_)))
                               (let ((_hd1359313907_ (##car _e1359213904_))
                                     (_tl1359413909_ (##cdr _e1359213904_)))
                                 (if (gx#identifier? _hd1359313907_)
                                     (if (gx#stx-eq? '%#ref _hd1359313907_)
                                         (if (gx#stx-pair? _tl1359413909_)
                                             (let ((_e1359513912_
                                                    (gx#stx-e _tl1359413909_)))
                                               (let ((_hd1359613915_
                                                      (##car _e1359513912_))
                                                     (_tl1359713917_
                                                      (##cdr _e1359513912_)))
                                                 (if (gx#stx-null?
                                                      _tl1359713917_)
                                                     (if (gx#stx-pair?
                                                          _tl1359113901_)
                                                         (let ((_e1359813920_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1359113901_)))
                   (let ((_hd1359913923_ (##car _e1359813920_))
                         (_tl1360013925_ (##cdr _e1359813920_)))
                     (if (gx#stx-pair? _hd1359913923_)
                         (let ((_e1360113928_ (gx#stx-e _hd1359913923_)))
                           (let ((_hd1360213931_ (##car _e1360113928_))
                                 (_tl1360313933_ (##cdr _e1360113928_)))
                             (if (gx#identifier? _hd1360213931_)
                                 (if (gx#stx-eq? '%#quote _hd1360213931_)
                                     (if (gx#stx-pair? _tl1360313933_)
                                         (let ((_e1360413936_
                                                (gx#stx-e _tl1360313933_)))
                                           (let ((_hd1360513939_
                                                  (##car _e1360413936_))
                                                 (_tl1360613941_
                                                  (##cdr _e1360413936_)))
                                             (if (gx#stx-null? _tl1360613941_)
                                                 (if (gx#stx-null?
                                                      _tl1360013925_)
                                                     ((lambda (_L13944_
                                                               _L13945_
                                                               _L13946_
                                                               _L13947_
                                                               _L13948_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13948_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda17484
                     (gxc#generate-runtime-binding-id _L13947_)
                     (gx#stx-e _L13946_)
                     (gxc#generate-runtime-binding-id _L13945_)
                     (gx#stx-e _L13944_))
                    (_g1355013811_ _g1355313814_)))
              _hd1360513939_
              _hd1359613915_
              _hd1358713891_
              _hd1357813867_
              _hd1356913843_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))
                                                 (_g1355013811_
                                                  _g1355313814_))))
                                         (_g1355013811_ _g1355313814_))
                                     (_g1355013811_ _g1355313814_))
                                 (_g1355013811_ _g1355313814_))))
                         (_g1355013811_ _g1355313814_))))
                 (_g1355013811_ _g1355313814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))))
                                             (_g1355013811_ _g1355313814_))
                                         (_g1355013811_ _g1355313814_))
                                     (_g1355013811_ _g1355313814_))))
                             (_g1355013811_ _g1355313814_))))
                     (_g1355013811_ _g1355313814_))
                 (_g1355013811_ _g1355313814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1355013811_ _g1355313814_))
                                             (_g1355013811_ _g1355313814_))
                                         (_g1355013811_ _g1355313814_))))
                                 (_g1355013811_ _g1355313814_))))
                         (_g1355013811_ _g1355313814_))
                     (_g1355013811_ _g1355313814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))
                                                 (_g1355013811_ _g1355313814_))
                                             (_g1355013811_ _g1355313814_))))
                                     (_g1355013811_ _g1355313814_))))
                             (_g1355013811_ _g1355313814_))
                         (_g1355013811_ _g1355313814_))))
                 (_g1355013811_ _g1355313814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))
                                                 (_g1355013811_
                                                  _g1355313814_))))
                                         (_g1355013811_ _g1355313814_))))
                                 (_g1355013811_ _g1355313814_))))
                         (_g1355013811_ _g1355313814_)))))
              (_g1354913991_ _stx13548_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13488_)
      (let ((_g1349113504_
             (lambda (_g1349213501_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1349213501_))))
        (let ((_g1349013511_ (lambda (_g1349213507_) ((lambda () '#f)))))
          (let ((_g1348913545_
                 (lambda (_g1349213514_)
                   (if (gx#stx-pair? _g1349213514_)
                       (let ((_e1349413516_ (gx#stx-e _g1349213514_)))
                         (let ((_hd1349513519_ (##car _e1349413516_))
                               (_tl1349613521_ (##cdr _e1349413516_)))
                           (if (gx#stx-pair? _tl1349613521_)
                               (let ((_e1349713524_ (gx#stx-e _tl1349613521_)))
                                 (let ((_hd1349813527_ (##car _e1349713524_))
                                       (_tl1349913529_ (##cdr _e1349713524_)))
                                   (if (gx#stx-null? _tl1349913529_)
                                       ((lambda (_L13532_)
                                          (gxc#compile-e _L13532_))
                                        _hd1349813527_)
                                       (_g1349013511_ _g1349213514_))))
                               (_g1349013511_ _g1349213514_))))
                       (_g1349013511_ _g1349213514_)))))
            (_g1348913545_ _stx13488_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12913_)
      (let ((_g1291813039_
             (lambda (_g1291913036_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1291913036_))))
        (let ((_g1291713046_ (lambda (_g1291913042_) ((lambda () '#f)))))
          (let ((_g1291613070_
                 (lambda (_g1291913049_)
                   (if (gx#stx-pair? _g1291913049_)
                       (let ((_e1303213051_ (gx#stx-e _g1291913049_)))
                         (let ((_hd1303313054_ (##car _e1303213051_))
                               (_tl1303413056_ (##cdr _e1303213051_)))
                           ((lambda (_L13059_)
                              (if (gxc#dispatch-lambda-form? _L13059_)
                                  (let ((__obj17713
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj17713
                                       'lambda
                                       (gxc#lambda-form-arity _L13059_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13059_))
                                      __obj17713))
                                  (_g1291713046_ _g1291913049_)))
                            _tl1303413056_)))
                       (_g1291713046_ _g1291913049_)))))
            (let ((_g1291513300_
                   (lambda (_g1291913073_)
                     (if (gx#stx-pair? _g1291913073_)
                         (let ((_e1297713075_ (gx#stx-e _g1291913073_)))
                           (let ((_hd1297813078_ (##car _e1297713075_))
                                 (_tl1297913080_ (##cdr _e1297713075_)))
                             (if (gx#stx-pair? _tl1297913080_)
                                 (let ((_e1298013083_
                                        (gx#stx-e _tl1297913080_)))
                                   (let ((_hd1298113086_ (##car _e1298013083_))
                                         (_tl1298213088_
                                          (##cdr _e1298013083_)))
                                     (if (gx#stx-pair/null? _hd1298113086_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1298113086_)
                                                   '0)
                                             (let ((_g17753_
                                                    (gx#syntax-split-splice
                                                     _hd1298113086_
                                                     '0)))
                                               (begin
                                                 (let ((_g17754_
                                                        (values-count
                                                         _g17753_)))
                                                   (if (not (fx= _g17754_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17754_)))
                                                 (let ((_target1298313091_
                                                        (values-ref
                                                         _g17753_
                                                         0))
                                                       (_tl1298513093_
                                                        (values-ref
                                                         _g17753_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1298513093_)
                                                       (letrec ((_loop1298613096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1298413099_ _arg1299013101_)
                           (if (gx#stx-pair? _hd1298413099_)
                               (let ((_e1298713104_ (gx#stx-e _hd1298413099_)))
                                 (let ((_lp-hd1298813107_
                                        (##car _e1298713104_))
                                       (_lp-tl1298913109_
                                        (##cdr _e1298713104_)))
                                   (_loop1298613096_
                                    _lp-tl1298913109_
                                    (cons _lp-hd1298813107_ _arg1299013101_))))
                               (let ((_arg1299113112_
                                      (reverse _arg1299013101_)))
                                 (if (gx#stx-pair? _tl1298213088_)
                                     (let ((_e1299213115_
                                            (gx#stx-e _tl1298213088_)))
                                       (let ((_hd1299313118_
                                              (##car _e1299213115_))
                                             (_tl1299413120_
                                              (##cdr _e1299213115_)))
                                         (if (gx#stx-pair? _hd1299313118_)
                                             (let ((_e1299513123_
                                                    (gx#stx-e _hd1299313118_)))
                                               (let ((_hd1299613126_
                                                      (##car _e1299513123_))
                                                     (_tl1299713128_
                                                      (##cdr _e1299513123_)))
                                                 (if (gx#identifier?
                                                      _hd1299613126_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1299613126_)
                                                         (if (gx#stx-pair?
                                                              _tl1299713128_)
                                                             (let ((_e1299813131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1299713128_)))
                       (let ((_hd1299913134_ (##car _e1299813131_))
                             (_tl1300013136_ (##cdr _e1299813131_)))
                         (if (gx#stx-pair? _hd1299913134_)
                             (let ((_e1300113139_ (gx#stx-e _hd1299913134_)))
                               (let ((_hd1300213142_ (##car _e1300113139_))
                                     (_tl1300313144_ (##cdr _e1300113139_)))
                                 (if (gx#identifier? _hd1300213142_)
                                     (if (gx#stx-eq? '%#ref _hd1300213142_)
                                         (if (gx#stx-pair? _tl1300313144_)
                                             (let ((_e1300413147_
                                                    (gx#stx-e _tl1300313144_)))
                                               (let ((_hd1300513150_
                                                      (##car _e1300413147_))
                                                     (_tl1300613152_
                                                      (##cdr _e1300413147_)))
                                                 (if (gx#stx-null?
                                                      _tl1300613152_)
                                                     (if (gx#stx-pair?
                                                          _tl1300013136_)
                                                         (let ((_e1300713155_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1300013136_)))
                   (let ((_hd1300813158_ (##car _e1300713155_))
                         (_tl1300913160_ (##cdr _e1300713155_)))
                     (if (gx#stx-pair? _hd1300813158_)
                         (let ((_e1301013163_ (gx#stx-e _hd1300813158_)))
                           (let ((_hd1301113166_ (##car _e1301013163_))
                                 (_tl1301213168_ (##cdr _e1301013163_)))
                             (if (gx#identifier? _hd1301113166_)
                                 (if (gx#stx-eq? '%#ref _hd1301113166_)
                                     (if (gx#stx-pair? _tl1301213168_)
                                         (let ((_e1301313171_
                                                (gx#stx-e _tl1301213168_)))
                                           (let ((_hd1301413174_
                                                  (##car _e1301313171_))
                                                 (_tl1301513176_
                                                  (##cdr _e1301313171_)))
                                             (if (gx#stx-null? _tl1301513176_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1300913160_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1300913160_)
                                                               '0)
                                                         (let ((_g17755_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1300913160_
                         '0)))
                   (begin
                     (let ((_g17756_ (values-count _g17755_)))
                       (if (not (fx= _g17756_ 2))
                           (error "Context expects 2 values" _g17756_)))
                     (let ((_target1301613179_ (values-ref _g17755_ 0))
                           (_tl1301813181_ (values-ref _g17755_ 1)))
                       (if (gx#stx-null? _tl1301813181_)
                           (letrec ((_loop1301913184_
                                     (lambda (_hd1301713187_ _xarg1302313189_)
                                       (if (gx#stx-pair? _hd1301713187_)
                                           (let ((_e1302013192_
                                                  (gx#stx-e _hd1301713187_)))
                                             (let ((_lp-hd1302113195_
                                                    (##car _e1302013192_))
                                                   (_lp-tl1302213197_
                                                    (##cdr _e1302013192_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1302113195_)
                                                   (let ((_e1302513200_
                                                          (gx#stx-e
                                                           _lp-hd1302113195_)))
                                                     (let ((_hd1302613203_
                                                            (##car _e1302513200_))
                                                           (_tl1302713205_
                                                            (##cdr _e1302513200_)))
                                                       (if (gx#identifier?
                                                            _hd1302613203_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1302613203_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1302713205_)
                           (let ((_e1302813208_ (gx#stx-e _tl1302713205_)))
                             (let ((_hd1302913211_ (##car _e1302813208_))
                                   (_tl1303013213_ (##cdr _e1302813208_)))
                               (if (gx#stx-null? _tl1303013213_)
                                   (_loop1301913184_
                                    _lp-tl1302213197_
                                    (cons _hd1302913211_ _xarg1302313189_))
                                   (_g1291613070_ _g1291913073_))))
                           (_g1291613070_ _g1291913073_))
                       (_g1291613070_ _g1291913073_))
                   (_g1291613070_ _g1291913073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291613070_
                                                    _g1291913073_))))
                                           (let ((_xarg1302413216_
                                                  (reverse _xarg1302313189_)))
                                             (if (gx#stx-null? _tl1299413120_)
                                                 ((lambda (_L13219_
                                                           _L13220_
                                                           _L13221_
                                                           _L13222_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1325913262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1326013264_)
                                 (cons _g1325913262_ _g1326013264_))
                               '()
                               _L13222_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13221_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1326613269_
                                                            _g1326713271_)
                                                     (cons _g1326613269_
                                                           _g1326713271_))
                                                   '()
                                                   _L13222_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1327313276_
                                                            _g1327413278_)
                                                     (cons _g1327313276_
                                                           _g1327413278_))
                                                   '()
                                                   _L13219_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1328013283_
                                                       _g1328113285_)
                                                (cons _g1328013283_
                                                      _g1328113285_))
                                              '()
                                              _L13222_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1328713290_
                                                       _g1328813292_)
                                                (cons _g1328713290_
                                                      _g1328813292_))
                                              '()
                                              _L13219_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13295_
                       (gxc#generate-runtime-binding-id _L13220_)))
                  (let ((_type13297_
                         (gxc#optimizer-resolve-type _type-t13295_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13297_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13295_)
                          '#f))))
                (_g1291613070_ _g1291913073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1302413216_
                                                  _hd1301413174_
                                                  _hd1300513150_
                                                  _arg1299113112_)
                                                 (_g1291613070_
                                                  _g1291913073_)))))))
                             (_loop1301913184_ _target1301613179_ '()))
                           (_g1291613070_ _g1291913073_)))))
                 (_g1291613070_ _g1291913073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1291613070_
                                                      _g1291913073_))
                                                 (_g1291613070_
                                                  _g1291913073_))))
                                         (_g1291613070_ _g1291913073_))
                                     (_g1291613070_ _g1291913073_))
                                 (_g1291613070_ _g1291913073_))))
                         (_g1291613070_ _g1291913073_))))
                 (_g1291613070_ _g1291913073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1291613070_
                                                      _g1291913073_))))
                                             (_g1291613070_ _g1291913073_))
                                         (_g1291613070_ _g1291913073_))
                                     (_g1291613070_ _g1291913073_))))
                             (_g1291613070_ _g1291913073_))))
                     (_g1291613070_ _g1291913073_))
                 (_g1291613070_ _g1291913073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1291613070_
                                                      _g1291913073_))))
                                             (_g1291613070_ _g1291913073_))))
                                     (_g1291613070_ _g1291913073_)))))))
                 (_loop1298613096_ _target1298313091_ '()))
               (_g1291613070_ _g1291913073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1291613070_ _g1291913073_))
                                         (_g1291613070_ _g1291913073_))))
                                 (_g1291613070_ _g1291913073_))))
                         (_g1291613070_ _g1291913073_)))))
              (let ((_g1291413485_
                     (lambda (_g1291913303_)
                       (if (gx#stx-pair? _g1291913303_)
                           (let ((_e1292513305_ (gx#stx-e _g1291913303_)))
                             (let ((_hd1292613308_ (##car _e1292513305_))
                                   (_tl1292713310_ (##cdr _e1292513305_)))
                               (if (gx#stx-pair? _tl1292713310_)
                                   (let ((_e1292813313_
                                          (gx#stx-e _tl1292713310_)))
                                     (let ((_hd1292913316_
                                            (##car _e1292813313_))
                                           (_tl1293013318_
                                            (##cdr _e1292813313_)))
                                       (if (gx#stx-pair? _tl1293013318_)
                                           (let ((_e1293113321_
                                                  (gx#stx-e _tl1293013318_)))
                                             (let ((_hd1293213324_
                                                    (##car _e1293113321_))
                                                   (_tl1293313326_
                                                    (##cdr _e1293113321_)))
                                               (if (gx#stx-pair?
                                                    _hd1293213324_)
                                                   (let ((_e1293413329_
                                                          (gx#stx-e
                                                           _hd1293213324_)))
                                                     (let ((_hd1293513332_
                                                            (##car _e1293413329_))
                                                           (_tl1293613334_
                                                            (##cdr _e1293413329_)))
                                                       (if (gx#identifier?
                                                            _hd1293513332_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1293513332_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1293613334_)
                           (let ((_e1293713337_ (gx#stx-e _tl1293613334_)))
                             (let ((_hd1293813340_ (##car _e1293713337_))
                                   (_tl1293913342_ (##cdr _e1293713337_)))
                               (if (gx#stx-pair? _hd1293813340_)
                                   (let ((_e1294013345_
                                          (gx#stx-e _hd1293813340_)))
                                     (let ((_hd1294113348_
                                            (##car _e1294013345_))
                                           (_tl1294213350_
                                            (##cdr _e1294013345_)))
                                       (if (gx#identifier? _hd1294113348_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1294113348_)
                                               (if (gx#stx-pair?
                                                    _tl1294213350_)
                                                   (let ((_e1294313353_
                                                          (gx#stx-e
                                                           _tl1294213350_)))
                                                     (let ((_hd1294413356_
                                                            (##car _e1294313353_))
                                                           (_tl1294513358_
                                                            (##cdr _e1294313353_)))
                                                       (if (gx#stx-null?
                                                            _tl1294513358_)
                                                           (if (gx#stx-pair?
                                                                _tl1293913342_)
                                                               (let ((_e1294613361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1293913342_)))
                         (let ((_hd1294713364_ (##car _e1294613361_))
                               (_tl1294813366_ (##cdr _e1294613361_)))
                           (if (gx#stx-pair? _hd1294713364_)
                               (let ((_e1294913369_ (gx#stx-e _hd1294713364_)))
                                 (let ((_hd1295013372_ (##car _e1294913369_))
                                       (_tl1295113374_ (##cdr _e1294913369_)))
                                   (if (gx#identifier? _hd1295013372_)
                                       (if (gx#stx-eq? '%#ref _hd1295013372_)
                                           (if (gx#stx-pair? _tl1295113374_)
                                               (let ((_e1295213377_
                                                      (gx#stx-e
                                                       _tl1295113374_)))
                                                 (let ((_hd1295313380_
                                                        (##car _e1295213377_))
                                                       (_tl1295413382_
                                                        (##cdr _e1295213377_)))
                                                   (if (gx#stx-null?
                                                        _tl1295413382_)
                                                       (if (gx#stx-pair?
                                                            _tl1294813366_)
                                                           (let ((_e1295513385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1294813366_)))
                     (let ((_hd1295613388_ (##car _e1295513385_))
                           (_tl1295713390_ (##cdr _e1295513385_)))
                       (if (gx#stx-pair? _hd1295613388_)
                           (let ((_e1295813393_ (gx#stx-e _hd1295613388_)))
                             (let ((_hd1295913396_ (##car _e1295813393_))
                                   (_tl1296013398_ (##cdr _e1295813393_)))
                               (if (gx#identifier? _hd1295913396_)
                                   (if (gx#stx-eq? '%#ref _hd1295913396_)
                                       (if (gx#stx-pair? _tl1296013398_)
                                           (let ((_e1296113401_
                                                  (gx#stx-e _tl1296013398_)))
                                             (let ((_hd1296213404_
                                                    (##car _e1296113401_))
                                                   (_tl1296313406_
                                                    (##cdr _e1296113401_)))
                                               (if (gx#stx-null?
                                                    _tl1296313406_)
                                                   (if (gx#stx-pair?
                                                        _tl1295713390_)
                                                       (let ((_e1296413409_
                                                              (gx#stx-e
                                                               _tl1295713390_)))
                                                         (let ((_hd1296513412_
                                                                (##car _e1296413409_))
                                                               (_tl1296613414_
                                                                (##cdr _e1296413409_)))
                                                           (if (gx#stx-pair?
                                                                _hd1296513412_)
                                                               (let ((_e1296713417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1296513412_)))
                         (let ((_hd1296813420_ (##car _e1296713417_))
                               (_tl1296913422_ (##cdr _e1296713417_)))
                           (if (gx#identifier? _hd1296813420_)
                               (if (gx#stx-eq? '%#ref _hd1296813420_)
                                   (if (gx#stx-pair? _tl1296913422_)
                                       (let ((_e1297013425_
                                              (gx#stx-e _tl1296913422_)))
                                         (let ((_hd1297113428_
                                                (##car _e1297013425_))
                                               (_tl1297213430_
                                                (##cdr _e1297013425_)))
                                           (if (gx#stx-null? _tl1297213430_)
                                               (if (gx#stx-null?
                                                    _tl1296613414_)
                                                   (if (gx#stx-null?
                                                        _tl1293313326_)
                                                       ((lambda (_L13433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13434_
                         _L13435_
                         _L13436_
                         _L13437_)
                  (if (if (gx#identifier? _L13437_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13436_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13435_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13437_ _L13433_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13480_
                             (gxc#generate-runtime-binding-id _L13434_)))
                        (let ((_type13482_
                               (gxc#optimizer-resolve-type _type-t13480_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13482_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13480_)
                                '#f))))
                      (_g1291513300_ _g1291913303_)))
                _hd1297113428_
                _hd1296213404_
                _hd1295313380_
                _hd1294413356_
                _hd1292913316_)
               (_g1291513300_ _g1291913303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))
                                               (_g1291513300_ _g1291913303_))))
                                       (_g1291513300_ _g1291913303_))
                                   (_g1291513300_ _g1291913303_))
                               (_g1291513300_ _g1291913303_))))
                       (_g1291513300_ _g1291913303_))))
               (_g1291513300_ _g1291913303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))))
                                           (_g1291513300_ _g1291913303_))
                                       (_g1291513300_ _g1291913303_))
                                   (_g1291513300_ _g1291913303_))))
                           (_g1291513300_ _g1291913303_))))
                   (_g1291513300_ _g1291913303_))
               (_g1291513300_ _g1291913303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1291513300_ _g1291913303_))
                                           (_g1291513300_ _g1291913303_))
                                       (_g1291513300_ _g1291913303_))))
                               (_g1291513300_ _g1291913303_))))
                       (_g1291513300_ _g1291913303_))
                   (_g1291513300_ _g1291913303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))
                                               (_g1291513300_ _g1291913303_))
                                           (_g1291513300_ _g1291913303_))))
                                   (_g1291513300_ _g1291913303_))))
                           (_g1291513300_ _g1291913303_))
                       (_g1291513300_ _g1291913303_))
                   (_g1291513300_ _g1291913303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))))
                                           (_g1291513300_ _g1291913303_))))
                                   (_g1291513300_ _g1291913303_))))
                           (_g1291513300_ _g1291913303_)))))
                (_g1291413485_ _stx12913_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12859_)
      (let ((_clause-e12861_
             (lambda (_form12911_)
               (let ((__obj17714 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj17714
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12911_)
                    (gxc#dispatch-lambda-form-delegate _form12911_))
                   __obj17714)))))
        (let ((_g1286412874_
               (lambda (_g1286512871_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286512871_))))
          (let ((_g1286312881_ (lambda (_g1286512877_) ((lambda () '#f)))))
            (let ((_g1286212908_
                   (lambda (_g1286512884_)
                     (if (gx#stx-pair? _g1286512884_)
                         (let ((_e1286712886_ (gx#stx-e _g1286512884_)))
                           (let ((_hd1286812889_ (##car _e1286712886_))
                                 (_tl1286912891_ (##cdr _e1286712886_)))
                             ((lambda (_L12894_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L12894_)
                                    (let ((_clauses12906_
                                           (map _clause-e12861_ _L12894_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12906_))
                                    (_g1286312881_ _g1286512884_)))
                              _tl1286912891_)))
                         (_g1286312881_ _g1286512884_)))))
              (_g1286212908_ _stx12859_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12764_)
      (let ((_g1276712787_
             (lambda (_g1276812784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1276812784_))))
        (let ((_g1276612794_ (lambda (_g1276812790_) ((lambda () '#f)))))
          (let ((_g1276512856_
                 (lambda (_g1276812797_)
                   (if (gx#stx-pair? _g1276812797_)
                       (let ((_e1277112799_ (gx#stx-e _g1276812797_)))
                         (let ((_hd1277212802_ (##car _e1277112799_))
                               (_tl1277312804_ (##cdr _e1277112799_)))
                           (if (gx#stx-pair? _tl1277312804_)
                               (let ((_e1277412807_ (gx#stx-e _tl1277312804_)))
                                 (let ((_hd1277512810_ (##car _e1277412807_))
                                       (_tl1277612812_ (##cdr _e1277412807_)))
                                   (if (gx#stx-pair? _hd1277512810_)
                                       (let ((_e1277712815_
                                              (gx#stx-e _hd1277512810_)))
                                         (let ((_hd1277812818_
                                                (##car _e1277712815_))
                                               (_tl1277912820_
                                                (##cdr _e1277712815_)))
                                           (if (gx#identifier? _hd1277812818_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1277812818_)
                                                   (if (gx#stx-pair?
                                                        _tl1277912820_)
                                                       (let ((_e1278012823_
                                                              (gx#stx-e
                                                               _tl1277912820_)))
                                                         (let ((_hd1278112826_
                                                                (##car _e1278012823_))
                                                               (_tl1278212828_
                                                                (##cdr _e1278012823_)))
                                                           (if (gx#stx-null?
                                                                _tl1278212828_)
                                                               ((lambda (_L12831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12832_)
                          (let ((_type-e1284912851_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12832_)
                                  '#f)))
                            (if _type-e1284912851_
                                (let ((_type-e12854_ _type-e1284912851_))
                                  (_type-e12854_ _stx12764_ _L12831_))
                                '#f)))
                        _tl1277612812_
                        _hd1278112826_)
                       (_g1276612794_ _g1276812797_))))
               (_g1276612794_ _g1276812797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1276612794_
                                                    _g1276812797_))
                                               (_g1276612794_ _g1276812797_))))
                                       (_g1276612794_ _g1276812797_))))
                               (_g1276612794_ _g1276812797_))))
                       (_g1276612794_ _g1276812797_)))))
            (_g1276512856_ _stx12764_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12249_ _args12250_)
      (let ((_g1225412367_
             (lambda (_g1225512364_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1225512364_))))
        (let ((_g1225312374_
               (lambda (_g1225512370_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12249_))
                      '#f))))))
          (let ((_g1225212581_
                 (lambda (_g1225512377_)
                   (if (gx#stx-pair? _g1225512377_)
                       (let ((_e1231512379_ (gx#stx-e _g1225512377_)))
                         (let ((_hd1231612382_ (##car _e1231512379_))
                               (_tl1231712384_ (##cdr _e1231512379_)))
                           (if (gx#stx-pair? _hd1231612382_)
                               (let ((_e1231812387_ (gx#stx-e _hd1231612382_)))
                                 (let ((_hd1231912390_ (##car _e1231812387_))
                                       (_tl1232012392_ (##cdr _e1231812387_)))
                                   (if (gx#identifier? _hd1231912390_)
                                       (if (gx#stx-eq? '%#quote _hd1231912390_)
                                           (if (gx#stx-pair? _tl1232012392_)
                                               (let ((_e1232112395_
                                                      (gx#stx-e
                                                       _tl1232012392_)))
                                                 (let ((_hd1232212398_
                                                        (##car _e1232112395_))
                                                       (_tl1232312400_
                                                        (##cdr _e1232112395_)))
                                                   (if (gx#stx-null?
                                                        _tl1232312400_)
                                                       (if (gx#stx-pair?
                                                            _tl1231712384_)
                                                           (let ((_e1232412403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1231712384_)))
                     (let ((_hd1232512406_ (##car _e1232412403_))
                           (_tl1232612408_ (##cdr _e1232412403_)))
                       (if (gx#stx-pair? _hd1232512406_)
                           (let ((_e1232712411_ (gx#stx-e _hd1232512406_)))
                             (let ((_hd1232812414_ (##car _e1232712411_))
                                   (_tl1232912416_ (##cdr _e1232712411_)))
                               (if (gx#identifier? _hd1232812414_)
                                   (if (gx#stx-eq? '%#ref _hd1232812414_)
                                       (if (gx#stx-pair? _tl1232912416_)
                                           (let ((_e1233012419_
                                                  (gx#stx-e _tl1232912416_)))
                                             (let ((_hd1233112422_
                                                    (##car _e1233012419_))
                                                   (_tl1233212424_
                                                    (##cdr _e1233012419_)))
                                               (if (gx#stx-null?
                                                    _tl1233212424_)
                                                   (if (gx#stx-pair?
                                                        _tl1232612408_)
                                                       (let ((_e1233312427_
                                                              (gx#stx-e
                                                               _tl1232612408_)))
                                                         (let ((_hd1233412430_
                                                                (##car _e1233312427_))
                                                               (_tl1233512432_
                                                                (##cdr _e1233312427_)))
                                                           (if (gx#stx-pair?
                                                                _hd1233412430_)
                                                               (let ((_e1233612435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1233412430_)))
                         (let ((_hd1233712438_ (##car _e1233612435_))
                               (_tl1233812440_ (##cdr _e1233612435_)))
                           (if (gx#identifier? _hd1233712438_)
                               (if (gx#stx-eq? '%#quote _hd1233712438_)
                                   (if (gx#stx-pair? _tl1233812440_)
                                       (let ((_e1233912443_
                                              (gx#stx-e _tl1233812440_)))
                                         (let ((_hd1234012446_
                                                (##car _e1233912443_))
                                               (_tl1234112448_
                                                (##cdr _e1233912443_)))
                                           (if (gx#stx-null? _tl1234112448_)
                                               (if (gx#stx-pair?
                                                    _tl1233512432_)
                                                   (let ((_e1234212451_
                                                          (gx#stx-e
                                                           _tl1233512432_)))
                                                     (let ((_hd1234312454_
                                                            (##car _e1234212451_))
                                                           (_tl1234412456_
                                                            (##cdr _e1234212451_)))
                                                       (if (gx#stx-pair?
                                                            _tl1234412456_)
                                                           (let ((_e1234512459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1234412456_)))
                     (let ((_hd1234612462_ (##car _e1234512459_))
                           (_tl1234712464_ (##cdr _e1234512459_)))
                       (if (gx#stx-pair? _hd1234612462_)
                           (let ((_e1234812467_ (gx#stx-e _hd1234612462_)))
                             (let ((_hd1234912470_ (##car _e1234812467_))
                                   (_tl1235012472_ (##cdr _e1234812467_)))
                               (if (gx#identifier? _hd1234912470_)
                                   (if (gx#stx-eq? '%#quote _hd1234912470_)
                                       (if (gx#stx-pair? _tl1235012472_)
                                           (let ((_e1235112475_
                                                  (gx#stx-e _tl1235012472_)))
                                             (let ((_hd1235212478_
                                                    (##car _e1235112475_))
                                                   (_tl1235312480_
                                                    (##cdr _e1235112475_)))
                                               (if (gx#stx-null?
                                                    _tl1235312480_)
                                                   (if (gx#stx-pair?
                                                        _tl1234712464_)
                                                       (let ((_e1235412483_
                                                              (gx#stx-e
                                                               _tl1234712464_)))
                                                         (let ((_hd1235512486_
                                                                (##car _e1235412483_))
                                                               (_tl1235612488_
                                                                (##cdr _e1235412483_)))
                                                           (if (gx#stx-pair?
                                                                _hd1235512486_)
                                                               (let ((_e1235712491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1235512486_)))
                         (let ((_hd1235812494_ (##car _e1235712491_))
                               (_tl1235912496_ (##cdr _e1235712491_)))
                           (if (gx#identifier? _hd1235812494_)
                               (if (gx#stx-eq? '%#quote _hd1235812494_)
                                   (if (gx#stx-pair? _tl1235912496_)
                                       (let ((_e1236012499_
                                              (gx#stx-e _tl1235912496_)))
                                         (let ((_hd1236112502_
                                                (##car _e1236012499_))
                                               (_tl1236212504_
                                                (##cdr _e1236012499_)))
                                           (if (gx#stx-null? _tl1236212504_)
                                               (if (gx#stx-null?
                                                    _tl1235612488_)
                                                   ((lambda (_L12507_
                                                             _L12508_
                                                             _L12509_
                                                             _L12510_
                                                             _L12511_
                                                             _L12512_)
                                                      (let ((_super-t12558_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12511_)
                         (gxc#generate-runtime-binding-id _L12511_)
                         '#f)))
                (let ((_super-type12560_
                       (if _super-t12558_
                           (gxc#optimizer-resolve-type _super-t12558_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12560_
                              (not (##structure-instance-of?
                                    _super-type12560_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12249_
                           _L12511_)
                          '#!void)
                      (let ((_fields12576_ (gx#stx-e _L12510_))
                            (_xfields12577_
                             (if _super-type12560_
                                 (let ((_super-fields1256212565_
                                        (##structure-ref
                                         _super-type12560_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1256312567_
                                        (##structure-ref
                                         _super-type12560_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1256212565_
                                       (if _super-xfields1256312567_
                                           (let ((_super-fields12570_
                                                  _super-fields1256212565_)
                                                 (_super-xfields12571_
                                                  _super-xfields1256312567_))
                                             (fx+ _super-fields12570_
                                                  _super-xfields12571_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12578_ (gx#stx-e _L12508_))
                            (_ctor12579_
                             (let ((_$e12573_ (gx#stx-e _L12507_)))
                               (if _$e12573_
                                   (values _$e12573_)
                                   (if _super-type12560_
                                       (##structure-ref
                                        _super-type12560_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12558_ '#!void '#f))))))
                        (let ((__obj17715
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17715
                             (gx#stx-e _L12512_)
                             _super-t12558_
                             _fields12576_
                             _xfields12577_
                             _ctor12579_
                             _plist12578_)
                            __obj17715))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1236112502_
                                                    _hd1235212478_
                                                    _hd1234312454_
                                                    _hd1234012446_
                                                    _hd1233112422_
                                                    _hd1232212398_)
                                                   (_g1225312374_
                                                    _g1225512377_))
                                               (_g1225312374_ _g1225512377_))))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))
                               (_g1225312374_ _g1225512377_))))
                       (_g1225312374_ _g1225512377_))))
               (_g1225312374_ _g1225512377_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225312374_
                                                    _g1225512377_))))
                                           (_g1225312374_ _g1225512377_))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))))
                           (_g1225312374_ _g1225512377_))))
                   (_g1225312374_ _g1225512377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225312374_
                                                    _g1225512377_))
                                               (_g1225312374_ _g1225512377_))))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))
                               (_g1225312374_ _g1225512377_))))
                       (_g1225312374_ _g1225512377_))))
               (_g1225312374_ _g1225512377_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225312374_
                                                    _g1225512377_))))
                                           (_g1225312374_ _g1225512377_))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))))
                           (_g1225312374_ _g1225512377_))))
                   (_g1225312374_ _g1225512377_))
               (_g1225312374_ _g1225512377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1225312374_ _g1225512377_))
                                           (_g1225312374_ _g1225512377_))
                                       (_g1225312374_ _g1225512377_))))
                               (_g1225312374_ _g1225512377_))))
                       (_g1225312374_ _g1225512377_)))))
            (let ((_g1225112761_
                   (lambda (_g1225512584_)
                     (if (gx#stx-pair? _g1225512584_)
                         (let ((_e1226112586_ (gx#stx-e _g1225512584_)))
                           (let ((_hd1226212589_ (##car _e1226112586_))
                                 (_tl1226312591_ (##cdr _e1226112586_)))
                             (if (gx#stx-pair? _hd1226212589_)
                                 (let ((_e1226412594_
                                        (gx#stx-e _hd1226212589_)))
                                   (let ((_hd1226512597_ (##car _e1226412594_))
                                         (_tl1226612599_
                                          (##cdr _e1226412594_)))
                                     (if (gx#identifier? _hd1226512597_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1226512597_)
                                             (if (gx#stx-pair? _tl1226612599_)
                                                 (let ((_e1226712602_
                                                        (gx#stx-e
                                                         _tl1226612599_)))
                                                   (let ((_hd1226812605_
                                                          (##car _e1226712602_))
                                                         (_tl1226912607_
                                                          (##cdr _e1226712602_)))
                                                     (if (gx#stx-null?
                                                          _tl1226912607_)
                                                         (if (gx#stx-pair?
                                                              _tl1226312591_)
                                                             (let ((_e1227012610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1226312591_)))
                       (let ((_hd1227112613_ (##car _e1227012610_))
                             (_tl1227212615_ (##cdr _e1227012610_)))
                         (if (gx#stx-pair? _hd1227112613_)
                             (let ((_e1227312618_ (gx#stx-e _hd1227112613_)))
                               (let ((_hd1227412621_ (##car _e1227312618_))
                                     (_tl1227512623_ (##cdr _e1227312618_)))
                                 (if (gx#identifier? _hd1227412621_)
                                     (if (gx#stx-eq? '%#quote _hd1227412621_)
                                         (if (gx#stx-pair? _tl1227512623_)
                                             (let ((_e1227612626_
                                                    (gx#stx-e _tl1227512623_)))
                                               (let ((_hd1227712629_
                                                      (##car _e1227612626_))
                                                     (_tl1227812631_
                                                      (##cdr _e1227612626_)))
                                                 (if (gx#stx-datum?
                                                      _hd1227712629_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1227712629_)
                         '#f)
                 (if (gx#stx-null? _tl1227812631_)
                     (if (gx#stx-pair? _tl1227212615_)
                         (let ((_e1227912634_ (gx#stx-e _tl1227212615_)))
                           (let ((_hd1228012637_ (##car _e1227912634_))
                                 (_tl1228112639_ (##cdr _e1227912634_)))
                             (if (gx#stx-pair? _hd1228012637_)
                                 (let ((_e1228212642_
                                        (gx#stx-e _hd1228012637_)))
                                   (let ((_hd1228312645_ (##car _e1228212642_))
                                         (_tl1228412647_
                                          (##cdr _e1228212642_)))
                                     (if (gx#identifier? _hd1228312645_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1228312645_)
                                             (if (gx#stx-pair? _tl1228412647_)
                                                 (let ((_e1228512650_
                                                        (gx#stx-e
                                                         _tl1228412647_)))
                                                   (let ((_hd1228612653_
                                                          (##car _e1228512650_))
                                                         (_tl1228712655_
                                                          (##cdr _e1228512650_)))
                                                     (if (gx#stx-null?
                                                          _tl1228712655_)
                                                         (if (gx#stx-pair?
                                                              _tl1228112639_)
                                                             (let ((_e1228812658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1228112639_)))
                       (let ((_hd1228912661_ (##car _e1228812658_))
                             (_tl1229012663_ (##cdr _e1228812658_)))
                         (if (gx#stx-pair? _tl1229012663_)
                             (let ((_e1229112666_ (gx#stx-e _tl1229012663_)))
                               (let ((_hd1229212669_ (##car _e1229112666_))
                                     (_tl1229312671_ (##cdr _e1229112666_)))
                                 (if (gx#stx-pair? _hd1229212669_)
                                     (let ((_e1229412674_
                                            (gx#stx-e _hd1229212669_)))
                                       (let ((_hd1229512677_
                                              (##car _e1229412674_))
                                             (_tl1229612679_
                                              (##cdr _e1229412674_)))
                                         (if (gx#identifier? _hd1229512677_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1229512677_)
                                                 (if (gx#stx-pair?
                                                      _tl1229612679_)
                                                     (let ((_e1229712682_
                                                            (gx#stx-e
                                                             _tl1229612679_)))
                                                       (let ((_hd1229812685_
                                                              (##car _e1229712682_))
                                                             (_tl1229912687_
                                                              (##cdr _e1229712682_)))
                                                         (if (gx#stx-null?
                                                              _tl1229912687_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1229312671_)
                         (let ((_e1230012690_ (gx#stx-e _tl1229312671_)))
                           (let ((_hd1230112693_ (##car _e1230012690_))
                                 (_tl1230212695_ (##cdr _e1230012690_)))
                             (if (gx#stx-pair? _hd1230112693_)
                                 (let ((_e1230312698_
                                        (gx#stx-e _hd1230112693_)))
                                   (let ((_hd1230412701_ (##car _e1230312698_))
                                         (_tl1230512703_
                                          (##cdr _e1230312698_)))
                                     (if (gx#identifier? _hd1230412701_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1230412701_)
                                             (if (gx#stx-pair? _tl1230512703_)
                                                 (let ((_e1230612706_
                                                        (gx#stx-e
                                                         _tl1230512703_)))
                                                   (let ((_hd1230712709_
                                                          (##car _e1230612706_))
                                                         (_tl1230812711_
                                                          (##cdr _e1230612706_)))
                                                     (if (gx#stx-null?
                                                          _tl1230812711_)
                                                         (if (gx#stx-null?
                                                              _tl1230212695_)
                                                             ((lambda (_L12714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12715_
                               _L12716_
                               _L12717_
                               _L12718_)
                        (let ((__obj17716
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17716
                             (gx#stx-e _L12718_)
                             '#f
                             (gx#stx-e _L12717_)
                             '0
                             (gx#stx-e _L12714_)
                             (gx#stx-e _L12715_))
                            __obj17716)))
                      _hd1230712709_
                      _hd1229812685_
                      _hd1228912661_
                      _hd1228612653_
                      _hd1226812605_)
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))))
                                 (_g1225212581_ _g1225512584_))))
                         (_g1225212581_ _g1225512584_))
                     (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1225212581_
                                                      _g1225512584_))
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))))
                                     (_g1225212581_ _g1225512584_))))
                             (_g1225212581_ _g1225512584_))))
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))))
                                 (_g1225212581_ _g1225512584_))))
                         (_g1225212581_ _g1225512584_))
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1225212581_
                                                      _g1225512584_))))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))
                                     (_g1225212581_ _g1225512584_))))
                             (_g1225212581_ _g1225512584_))))
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))))
                                 (_g1225212581_ _g1225512584_))))
                         (_g1225212581_ _g1225512584_)))))
              (_g1225112761_ _args12250_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12175_ _args12176_)
      (let ((_g1217912195_
             (lambda (_g1218012192_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1218012192_))))
        (let ((_g1217812202_ (lambda (_g1218012198_) ((lambda () '#f)))))
          (let ((_g1217712246_
                 (lambda (_g1218012205_)
                   (if (gx#stx-pair? _g1218012205_)
                       (let ((_e1218212207_ (gx#stx-e _g1218012205_)))
                         (let ((_hd1218312210_ (##car _e1218212207_))
                               (_tl1218412212_ (##cdr _e1218212207_)))
                           (if (gx#stx-pair? _hd1218312210_)
                               (let ((_e1218512215_ (gx#stx-e _hd1218312210_)))
                                 (let ((_hd1218612218_ (##car _e1218512215_))
                                       (_tl1218712220_ (##cdr _e1218512215_)))
                                   (if (gx#identifier? _hd1218612218_)
                                       (if (gx#stx-eq? '%#ref _hd1218612218_)
                                           (if (gx#stx-pair? _tl1218712220_)
                                               (let ((_e1218812223_
                                                      (gx#stx-e
                                                       _tl1218712220_)))
                                                 (let ((_hd1218912226_
                                                        (##car _e1218812223_))
                                                       (_tl1219012228_
                                                        (##cdr _e1218812223_)))
                                                   (if (gx#stx-null?
                                                        _tl1219012228_)
                                                       (if (gx#stx-null?
                                                            _tl1218412212_)
                                                           ((lambda (_L12231_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12231_)))
                                                            _hd1218912226_)
                                                           (_g1217812202_
                                                            _g1218012205_))
                                                       (_g1217812202_
                                                        _g1218012205_))))
                                               (_g1217812202_ _g1218012205_))
                                           (_g1217812202_ _g1218012205_))
                                       (_g1217812202_ _g1218012205_))))
                               (_g1217812202_ _g1218012205_))))
                       (_g1217812202_ _g1218012205_)))))
            (_g1217712246_ _args12176_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12059_ _args12060_)
      (let ((_g1206312089_
             (lambda (_g1206412086_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1206412086_))))
        (let ((_g1206212096_ (lambda (_g1206412092_) ((lambda () '#f)))))
          (let ((_g1206112172_
                 (lambda (_g1206412099_)
                   (if (gx#stx-pair? _g1206412099_)
                       (let ((_e1206712101_ (gx#stx-e _g1206412099_)))
                         (let ((_hd1206812104_ (##car _e1206712101_))
                               (_tl1206912106_ (##cdr _e1206712101_)))
                           (if (gx#stx-pair? _hd1206812104_)
                               (let ((_e1207012109_ (gx#stx-e _hd1206812104_)))
                                 (let ((_hd1207112112_ (##car _e1207012109_))
                                       (_tl1207212114_ (##cdr _e1207012109_)))
                                   (if (gx#identifier? _hd1207112112_)
                                       (if (gx#stx-eq? '%#ref _hd1207112112_)
                                           (if (gx#stx-pair? _tl1207212114_)
                                               (let ((_e1207312117_
                                                      (gx#stx-e
                                                       _tl1207212114_)))
                                                 (let ((_hd1207412120_
                                                        (##car _e1207312117_))
                                                       (_tl1207512122_
                                                        (##cdr _e1207312117_)))
                                                   (if (gx#stx-null?
                                                        _tl1207512122_)
                                                       (if (gx#stx-pair?
                                                            _tl1206912106_)
                                                           (let ((_e1207612125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1206912106_)))
                     (let ((_hd1207712128_ (##car _e1207612125_))
                           (_tl1207812130_ (##cdr _e1207612125_)))
                       (if (gx#stx-pair? _hd1207712128_)
                           (let ((_e1207912133_ (gx#stx-e _hd1207712128_)))
                             (let ((_hd1208012136_ (##car _e1207912133_))
                                   (_tl1208112138_ (##cdr _e1207912133_)))
                               (if (gx#identifier? _hd1208012136_)
                                   (if (gx#stx-eq? '%#quote _hd1208012136_)
                                       (if (gx#stx-pair? _tl1208112138_)
                                           (let ((_e1208212141_
                                                  (gx#stx-e _tl1208112138_)))
                                             (let ((_hd1208312144_
                                                    (##car _e1208212141_))
                                                   (_tl1208412146_
                                                    (##cdr _e1208212141_)))
                                               (if (gx#stx-null?
                                                    _tl1208412146_)
                                                   (if (gx#stx-null?
                                                        _tl1207812130_)
                                                       ((lambda (_L12149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12150_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12150_)
                   (gx#stx-e _L12149_)))
                _hd1208312144_
                _hd1207412120_)
               (_g1206212096_ _g1206412099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1206212096_
                                                    _g1206412099_))))
                                           (_g1206212096_ _g1206412099_))
                                       (_g1206212096_ _g1206412099_))
                                   (_g1206212096_ _g1206412099_))))
                           (_g1206212096_ _g1206412099_))))
                   (_g1206212096_ _g1206412099_))
               (_g1206212096_ _g1206412099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1206212096_ _g1206412099_))
                                           (_g1206212096_ _g1206412099_))
                                       (_g1206212096_ _g1206412099_))))
                               (_g1206212096_ _g1206412099_))))
                       (_g1206212096_ _g1206412099_)))))
            (_g1206112172_ _args12060_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11943_ _args11944_)
      (let ((_g1194711973_
             (lambda (_g1194811970_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1194811970_))))
        (let ((_g1194611980_ (lambda (_g1194811976_) ((lambda () '#f)))))
          (let ((_g1194512056_
                 (lambda (_g1194811983_)
                   (if (gx#stx-pair? _g1194811983_)
                       (let ((_e1195111985_ (gx#stx-e _g1194811983_)))
                         (let ((_hd1195211988_ (##car _e1195111985_))
                               (_tl1195311990_ (##cdr _e1195111985_)))
                           (if (gx#stx-pair? _hd1195211988_)
                               (let ((_e1195411993_ (gx#stx-e _hd1195211988_)))
                                 (let ((_hd1195511996_ (##car _e1195411993_))
                                       (_tl1195611998_ (##cdr _e1195411993_)))
                                   (if (gx#identifier? _hd1195511996_)
                                       (if (gx#stx-eq? '%#ref _hd1195511996_)
                                           (if (gx#stx-pair? _tl1195611998_)
                                               (let ((_e1195712001_
                                                      (gx#stx-e
                                                       _tl1195611998_)))
                                                 (let ((_hd1195812004_
                                                        (##car _e1195712001_))
                                                       (_tl1195912006_
                                                        (##cdr _e1195712001_)))
                                                   (if (gx#stx-null?
                                                        _tl1195912006_)
                                                       (if (gx#stx-pair?
                                                            _tl1195311990_)
                                                           (let ((_e1196012009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1195311990_)))
                     (let ((_hd1196112012_ (##car _e1196012009_))
                           (_tl1196212014_ (##cdr _e1196012009_)))
                       (if (gx#stx-pair? _hd1196112012_)
                           (let ((_e1196312017_ (gx#stx-e _hd1196112012_)))
                             (let ((_hd1196412020_ (##car _e1196312017_))
                                   (_tl1196512022_ (##cdr _e1196312017_)))
                               (if (gx#identifier? _hd1196412020_)
                                   (if (gx#stx-eq? '%#quote _hd1196412020_)
                                       (if (gx#stx-pair? _tl1196512022_)
                                           (let ((_e1196612025_
                                                  (gx#stx-e _tl1196512022_)))
                                             (let ((_hd1196712028_
                                                    (##car _e1196612025_))
                                                   (_tl1196812030_
                                                    (##cdr _e1196612025_)))
                                               (if (gx#stx-null?
                                                    _tl1196812030_)
                                                   (if (gx#stx-null?
                                                        _tl1196212014_)
                                                       ((lambda (_L12033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12034_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12034_)
                   (gx#stx-e _L12033_)))
                _hd1196712028_
                _hd1195812004_)
               (_g1194611980_ _g1194811983_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1194611980_
                                                    _g1194811983_))))
                                           (_g1194611980_ _g1194811983_))
                                       (_g1194611980_ _g1194811983_))
                                   (_g1194611980_ _g1194811983_))))
                           (_g1194611980_ _g1194811983_))))
                   (_g1194611980_ _g1194811983_))
               (_g1194611980_ _g1194811983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1194611980_ _g1194811983_))
                                           (_g1194611980_ _g1194811983_))
                                       (_g1194611980_ _g1194811983_))))
                               (_g1194611980_ _g1194811983_))))
                       (_g1194611980_ _g1194811983_)))))
            (_g1194512056_ _args11944_))))))
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
  (define gxc#basic-expression-type-ref%
    (lambda (_stx11892_)
      (let ((_g1189411907_
             (lambda (_g1189511904_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1189511904_))))
        (let ((_g1189311940_
               (lambda (_g1189511910_)
                 (if (gx#stx-pair? _g1189511910_)
                     (let ((_e1189711912_ (gx#stx-e _g1189511910_)))
                       (let ((_hd1189811915_ (##car _e1189711912_))
                             (_tl1189911917_ (##cdr _e1189711912_)))
                         (if (gx#stx-pair? _tl1189911917_)
                             (let ((_e1190011920_ (gx#stx-e _tl1189911917_)))
                               (let ((_hd1190111923_ (##car _e1190011920_))
                                     (_tl1190211925_ (##cdr _e1190011920_)))
                                 (if (gx#stx-null? _tl1190211925_)
                                     ((lambda (_L11928_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L11928_)))
                                      _hd1190111923_)
                                     (_g1189411907_ _g1189511910_))))
                             (_g1189411907_ _g1189511910_))))
                     (_g1189411907_ _g1189511910_)))))
          (_g1189311940_ _stx11892_)))))
  (define gxc#optimize-call%
    (lambda (_stx11798_)
      (let ((_g1180111821_
             (lambda (_g1180211818_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1180211818_))))
        (let ((_g1180011828_
               (lambda (_g1180211824_)
                 ((lambda () (gxc#xform-call% _stx11798_))))))
          (let ((_g1179911889_
                 (lambda (_g1180211831_)
                   (if (gx#stx-pair? _g1180211831_)
                       (let ((_e1180511833_ (gx#stx-e _g1180211831_)))
                         (let ((_hd1180611836_ (##car _e1180511833_))
                               (_tl1180711838_ (##cdr _e1180511833_)))
                           (if (gx#stx-pair? _tl1180711838_)
                               (let ((_e1180811841_ (gx#stx-e _tl1180711838_)))
                                 (let ((_hd1180911844_ (##car _e1180811841_))
                                       (_tl1181011846_ (##cdr _e1180811841_)))
                                   (if (gx#stx-pair? _hd1180911844_)
                                       (let ((_e1181111849_
                                              (gx#stx-e _hd1180911844_)))
                                         (let ((_hd1181211852_
                                                (##car _e1181111849_))
                                               (_tl1181311854_
                                                (##cdr _e1181111849_)))
                                           (if (gx#identifier? _hd1181211852_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1181211852_)
                                                   (if (gx#stx-pair?
                                                        _tl1181311854_)
                                                       (let ((_e1181411857_
                                                              (gx#stx-e
                                                               _tl1181311854_)))
                                                         (let ((_hd1181511860_
                                                                (##car _e1181411857_))
                                                               (_tl1181611862_
                                                                (##cdr _e1181411857_)))
                                                           (if (gx#stx-null?
                                                                _tl1181611862_)
                                                               ((lambda (_L11865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11866_)
                          (let ((_rator-id11884_
                                 (gxc#generate-runtime-binding-id _L11866_)))
                            (let ((_rator-type11886_
                                   (gxc#optimizer-resolve-type
                                    _rator-id11884_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type11886_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11884_
                                       '" => "
                                       _rator-type11886_
                                       '" "
                                       (##structure-ref
                                        _rator-type11886_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11886_
                                       'optimize-call
                                       _stx11798_
                                       _L11865_))
                                    (if (not _rator-type11886_)
                                        (gxc#xform-call% _stx11798_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx11798_
                                         _rator-type11886_)))))))
                        _tl1181011846_
                        _hd1181511860_)
                       (_g1180011828_ _g1180211831_))))
               (_g1180011828_ _g1180211831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1180011828_
                                                    _g1180211831_))
                                               (_g1180011828_ _g1180211831_))))
                                       (_g1180011828_ _g1180211831_))))
                               (_g1180011828_ _g1180211831_))))
                       (_g1180011828_ _g1180211831_)))))
            (_g1179911889_ _stx11798_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11653_ _stx11654_ _args11655_)
      (let ((_self1165611662_ _self11653_))
        (let ((_E1165811666_
               (lambda () (error '"No clause matching" _self1165611662_))))
          (let ((_K1165911790_
                 (lambda (_struct-t11669_)
                   (let ((_struct-type11671_
                          (gxc#optimizer-resolve-type _struct-t11669_)))
                     (let ((_struct-type1167211686_ _struct-type11671_))
                       (let ((_E1167611690_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1167211686_))))
                         (let ((_else1167511694_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11654_
                                   _struct-t11669_
                                   _struct-type11671_))))
                           (let ((_try-match1167411702_
                                  (lambda ()
                                    (let ((_K1167711699_
                                           (lambda ()
                                             (gxc#xform-call% _stx11654_))))
                                      (if (##eq? _struct-type1167211686_ '#f)
                                          (_K1167711699_)
                                          (_else1167511694_))))))
                             (let ((_K1167811765_
                                    (lambda (_plist11705_
                                             _struct-type-id11706_)
                                      (let ((_g1170911719_
                                             (lambda (_g1171011716_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1171011716_))))
                                        (let ((_g1170811726_
                                               (lambda (_g1171011722_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11654_))))))
                                          (let ((_g1170711762_
                                                 (lambda (_g1171011729_)
                                                   (if (gx#stx-pair?
                                                        _g1171011729_)
                                                       (let ((_e1171211731_
                                                              (gx#stx-e
                                                               _g1171011729_)))
                                                         (let ((_hd1171311734_
                                                                (##car _e1171211731_))
                                                               (_tl1171411736_
                                                                (##cdr _e1171211731_)))
                                                           (if (gx#stx-null?
                                                                _tl1171411736_)
                                                               ((lambda (_L11739_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11759_ (gxc#compile-e _L11739_))
                                (_op11760_
                                 (if (if _plist11705_
                                         (assgetq 'final: _plist11705_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11760_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11706_
                                                     '()))
                                         (cons _expr11759_ '())))
                             _stx11654_)))
                        _hd1171311734_)
                       (_g1170811726_ _g1171011729_))))
               (_g1170811726_ _g1171011729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1170711762_ _args11655_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1167211686_)
                                   (let ((_e1167911768_
                                          (##vector-ref
                                           _struct-type1167211686_
                                           '1)))
                                     (let ((_struct-type-id11771_
                                            _e1167911768_))
                                       (let ((_e1168011773_
                                              (##vector-ref
                                               _struct-type1167211686_
                                               '2)))
                                         (let ((_e1168111776_
                                                (##vector-ref
                                                 _struct-type1167211686_
                                                 '3)))
                                           (let ((_e1168211779_
                                                  (##vector-ref
                                                   _struct-type1167211686_
                                                   '4)))
                                             (let ((_e1168311782_
                                                    (##vector-ref
                                                     _struct-type1167211686_
                                                     '5)))
                                               (let ((_e1168411785_
                                                      (##vector-ref
                                                       _struct-type1167211686_
                                                       '6)))
                                                 (let ((_plist11788_
                                                        _e1168411785_))
                                                   (_K1167811765_
                                                    _plist11788_
                                                    _struct-type-id11771_)))))))))
                                   (_try-match1167411702_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1165611662_)
                (let ((_e1166011793_ (##vector-ref _self1165611662_ '1)))
                  (let ((_struct-t11796_ _e1166011793_))
                    (_K1165911790_ _struct-t11796_)))
                (_E1165811666_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11549_ _stx11550_ _args11551_)
      (let ((_self1155211558_ _self11549_))
        (let ((_E1155411562_
               (lambda () (error '"No clause matching" _self1155211558_))))
          (let ((_K1155511645_
                 (lambda (_struct-t11565_)
                   (let ((_struct-type11567_
                          (gxc#optimizer-resolve-type _struct-t11565_)))
                     (let ((_struct-type1156811581_ _struct-type11567_))
                       (let ((_E1157211585_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1156811581_))))
                         (let ((_else1157111589_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11550_
                                   _struct-t11565_
                                   _struct-type11567_))))
                           (let ((_try-match1157011597_
                                  (lambda ()
                                    (let ((_K1157311594_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11565_)
                                               (gxc#xform-call% _stx11550_)))))
                                      (if (##eq? _struct-type1156811581_ '#f)
                                          (_K1157311594_)
                                          (_else1157111589_))))))
                             (let ((_K1157411619_
                                    (lambda (_ctor11600_
                                             _xfields11601_
                                             _fields11602_
                                             _type-id11603_)
                                      (let ((_args11605_
                                             (map gxc#compile-e _args11551_)))
                                        (let ((_$e11607_
                                               (if _ctor11600_
                                                   (if _xfields11601_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11567_
                                                        _ctor11600_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11607_
                                              ((lambda (_kons11610_)
                                                 (let ((_$obj11612_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11565_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11602_ _xfields11601_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11612_ '())) _args11605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11550_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11612_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11550_)))
                                               _$e11607_)
                                              (if (let ((_$e11614_
                                                         _ctor11600_))
                                                    (if _$e11614_
                                                        _$e11614_
                                                        (not _xfields11601_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11565_ '()))
                             _args11605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11550_)
                                                  (let ((_arity11617_
                                                         (fx+ _fields11602_
                                                              _xfields11601_)))
                                                    (if (fx= _arity11617_
                                                             (length _args11605_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11565_ '()))
                                   _args11605_)))
                 _stx11550_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11550_
                 _struct-t11565_
                 _arity11617_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1156811581_)
                                   (let ((_e1157511622_
                                          (##vector-ref
                                           _struct-type1156811581_
                                           '1)))
                                     (let ((_type-id11625_ _e1157511622_))
                                       (let ((_e1157611627_
                                              (##vector-ref
                                               _struct-type1156811581_
                                               '2)))
                                         (let ((_e1157711630_
                                                (##vector-ref
                                                 _struct-type1156811581_
                                                 '3)))
                                           (let ((_fields11633_ _e1157711630_))
                                             (let ((_e1157811635_
                                                    (##vector-ref
                                                     _struct-type1156811581_
                                                     '4)))
                                               (let ((_xfields11638_
                                                      _e1157811635_))
                                                 (let ((_e1157911640_
                                                        (##vector-ref
                                                         _struct-type1156811581_
                                                         '5)))
                                                   (let ((_ctor11643_
                                                          _e1157911640_))
                                                     (_K1157411619_
                                                      _ctor11643_
                                                      _xfields11638_
                                                      _fields11633_
                                                      _type-id11625_))))))))))
                                   (_try-match1157011597_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1155211558_)
                (let ((_e1155611648_ (##vector-ref _self1155211558_ '1)))
                  (let ((_struct-t11651_ _e1155611648_))
                    (_K1155511645_ _struct-t11651_)))
                (_E1155411562_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11402_ _stx11403_ _args11404_)
      (let ((_self1140511412_ _self11402_))
        (let ((_E1140711416_
               (lambda () (error '"No clause matching" _self1140511412_))))
          (let ((_K1140811536_
                 (lambda (_off11419_ _struct-t11420_)
                   (let ((_struct-type11422_
                          (gxc#optimizer-resolve-type _struct-t11420_)))
                     (let ((_struct-type1142311435_ _struct-type11422_))
                       (let ((_E1142711439_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1142311435_))))
                         (let ((_else1142611443_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11403_
                                   _struct-t11420_
                                   _struct-type11422_))))
                           (let ((_try-match1142511451_
                                  (lambda ()
                                    (let ((_K1142811448_
                                           (lambda ()
                                             (gxc#xform-call% _stx11403_))))
                                      (if (##eq? _struct-type1142311435_ '#f)
                                          (_K1142811448_)
                                          (_else1142611443_))))))
                             (let ((_K1142911515_
                                    (lambda (_xfields11454_
                                             _fields11455_
                                             _struct-type-id11456_)
                                      (if _xfields11454_
                                          (let ((_g1145911469_
                                                 (lambda (_g1146011466_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1146011466_))))
                                            (let ((_g1145811476_
                                                   (lambda (_g1146011472_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11403_))))))
                                              (let ((_g1145711512_
                                                     (lambda (_g1146011479_)
                                                       (if (gx#stx-pair?
                                                            _g1146011479_)
                                                           (let ((_e1146211481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1146011479_)))
                     (let ((_hd1146311484_ (##car _e1146211481_))
                           (_tl1146411486_ (##cdr _e1146211481_)))
                       (if (gx#stx-null? _tl1146411486_)
                           ((lambda (_L11489_)
                              (let ((_expr11509_ (gxc#compile-e _L11489_))
                                    (_off11510_
                                     (fx+ _off11419_ _xfields11454_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11420_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11510_ '()))
                                                   (cons _expr11509_ '()))))
                                 _stx11403_)))
                            _hd1146311484_)
                           (_g1145811476_ _g1146011479_))))
                   (_g1145811476_ _g1146011479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1145711512_ _args11404_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11456_)
                                            (gxc#xform-call% _stx11403_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1142311435_)
                                   (let ((_e1143011518_
                                          (##vector-ref
                                           _struct-type1142311435_
                                           '1)))
                                     (let ((_struct-type-id11521_
                                            _e1143011518_))
                                       (let ((_e1143111523_
                                              (##vector-ref
                                               _struct-type1142311435_
                                               '2)))
                                         (let ((_e1143211526_
                                                (##vector-ref
                                                 _struct-type1142311435_
                                                 '3)))
                                           (let ((_fields11529_ _e1143211526_))
                                             (let ((_e1143311531_
                                                    (##vector-ref
                                                     _struct-type1142311435_
                                                     '4)))
                                               (let ((_xfields11534_
                                                      _e1143311531_))
                                                 (_K1142911515_
                                                  _xfields11534_
                                                  _fields11529_
                                                  _struct-type-id11521_))))))))
                                   (_try-match1142511451_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1140511412_)
                (let ((_e1140911539_ (##vector-ref _self1140511412_ '1)))
                  (let ((_struct-t11542_ _e1140911539_))
                    (let ((_e1141011544_ (##vector-ref _self1140511412_ '2)))
                      (let ((_off11547_ _e1141011544_))
                        (_K1140811536_ _off11547_ _struct-t11542_)))))
                (_E1140711416_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11238_ _stx11239_ _args11240_)
      (let ((_self1124111248_ _self11238_))
        (let ((_E1124311252_
               (lambda () (error '"No clause matching" _self1124111248_))))
          (let ((_K1124411389_
                 (lambda (_off11255_ _struct-t11256_)
                   (let ((_struct-type11258_
                          (gxc#optimizer-resolve-type _struct-t11256_)))
                     (let ((_struct-type1125911271_ _struct-type11258_))
                       (let ((_E1126311275_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1125911271_))))
                         (let ((_else1126211279_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11239_
                                   _struct-t11256_
                                   _struct-type11258_))))
                           (let ((_try-match1126111287_
                                  (lambda ()
                                    (let ((_K1126411284_
                                           (lambda ()
                                             (gxc#xform-call% _stx11239_))))
                                      (if (##eq? _struct-type1125911271_ '#f)
                                          (_K1126411284_)
                                          (_else1126211279_))))))
                             (let ((_K1126511368_
                                    (lambda (_xfields11290_
                                             _fields11291_
                                             _struct-type-id11292_)
                                      (if _xfields11290_
                                          (let ((_g1129511309_
                                                 (lambda (_g1129611306_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1129611306_))))
                                            (let ((_g1129411316_
                                                   (lambda (_g1129611312_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11239_))))))
                                              (let ((_g1129311365_
                                                     (lambda (_g1129611319_)
                                                       (if (gx#stx-pair?
                                                            _g1129611319_)
                                                           (let ((_e1129911321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1129611319_)))
                     (let ((_hd1130011324_ (##car _e1129911321_))
                           (_tl1130111326_ (##cdr _e1129911321_)))
                       (if (gx#stx-pair? _tl1130111326_)
                           (let ((_e1130211329_ (gx#stx-e _tl1130111326_)))
                             (let ((_hd1130311332_ (##car _e1130211329_))
                                   (_tl1130411334_ (##cdr _e1130211329_)))
                               (if (gx#stx-null? _tl1130411334_)
                                   ((lambda (_L11337_ _L11338_)
                                      (let ((_expr11361_
                                             (gxc#compile-e _L11338_))
                                            (_val11362_
                                             (gxc#compile-e _L11337_))
                                            (_off11363_
                                             (fx+ _off11255_
                                                  _xfields11290_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11363_ '()))
                   (cons _expr11361_ (cons _val11362_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11239_)))
                                    _hd1130311332_
                                    _hd1130011324_)
                                   (_g1129411316_ _g1129611319_))))
                           (_g1129411316_ _g1129611319_))))
                   (_g1129411316_ _g1129611319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1129311365_ _args11240_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11292_)
                                            (gxc#xform-call% _stx11239_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1125911271_)
                                   (let ((_e1126611371_
                                          (##vector-ref
                                           _struct-type1125911271_
                                           '1)))
                                     (let ((_struct-type-id11374_
                                            _e1126611371_))
                                       (let ((_e1126711376_
                                              (##vector-ref
                                               _struct-type1125911271_
                                               '2)))
                                         (let ((_e1126811379_
                                                (##vector-ref
                                                 _struct-type1125911271_
                                                 '3)))
                                           (let ((_fields11382_ _e1126811379_))
                                             (let ((_e1126911384_
                                                    (##vector-ref
                                                     _struct-type1125911271_
                                                     '4)))
                                               (let ((_xfields11387_
                                                      _e1126911384_))
                                                 (_K1126511368_
                                                  _xfields11387_
                                                  _fields11382_
                                                  _struct-type-id11374_))))))))
                                   (_try-match1126111287_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1124111248_)
                (let ((_e1124511392_ (##vector-ref _self1124111248_ '1)))
                  (let ((_struct-t11395_ _e1124511392_))
                    (let ((_e1124611397_ (##vector-ref _self1124111248_ '2)))
                      (let ((_off11400_ _e1124611397_))
                        (_K1124411389_ _off11400_ _struct-t11395_)))))
                (_E1124311252_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11194_ _stx11195_ _args11196_)
      (let ((_self1119711206_ _self11194_))
        (let ((_E1119911210_
               (lambda () (error '"No clause matching" _self1119711206_))))
          (let ((_K1120011217_
                 (lambda (_inline11213_ _dispatch11214_ _arity11215_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11194_ _args11196_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11195_
                          _arity11215_))
                     (if _inline11213_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11213_ _stx11195_)
                             _stx11195_)))
                         (if _dispatch11214_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11214_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11214_ '()))
                                             _args11196_))
                                 _stx11195_)))
                             (gxc#xform-call% _stx11195_)))))))
            (if (struct-instance? gxc#!lambda::t _self1119711206_)
                (let ((_e1120111220_ (##vector-ref _self1119711206_ '1)))
                  (let ((_e1120211223_ (##vector-ref _self1119711206_ '2)))
                    (let ((_arity11226_ _e1120211223_))
                      (let ((_e1120311228_ (##vector-ref _self1119711206_ '3)))
                        (let ((_dispatch11231_ _e1120311228_))
                          (let ((_e1120411233_
                                 (##vector-ref _self1119711206_ '4)))
                            (let ((_inline11236_ _e1120411233_))
                              (_K1120011217_
                               _inline11236_
                               _dispatch11231_
                               _arity11226_))))))))
                (_E1119911210_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11154_ _stx11155_ _args11156_)
      (let ((_self1115711164_ _self11154_))
        (let ((_E1115911168_
               (lambda () (error '"No clause matching" _self1115711164_))))
          (let ((_K1116011183_
                 (lambda (_clauses11171_)
                   (let ((_$e11177_
                          (find (lambda (_g1117211174_)
                                  (gxc#!lambda-arity-match?
                                   _g1117211174_
                                   _args11156_))
                                _clauses11171_)))
                     (if _$e11177_
                         ((lambda (_clause11180_)
                            (call-method
                             _clause11180_
                             'optimize-call
                             _stx11155_
                             _args11156_))
                          _$e11177_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11155_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11171_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11171_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1115711164_)
                (let ((_e1116111186_ (##vector-ref _self1115711164_ '1)))
                  (let ((_e1116211189_ (##vector-ref _self1115711164_ '2)))
                    (let ((_clauses11192_ _e1116211189_))
                      (_K1116011183_ _clauses11192_))))
                (_E1115911168_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11090_ _args11091_)
      (let ((_self1109211099_ _self11090_))
        (let ((_E1109411103_
               (lambda () (error '"No clause matching" _self1109211099_))))
          (let ((_K1109511143_
                 (lambda (_arity11106_)
                   (let ((_arity1110711116_ _arity11106_))
                     (let ((_E1111011120_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1110711116_))))
                       (let ((_try-match1110911136_
                              (lambda ()
                                (let ((_K1111111126_
                                       (lambda (_arity11124_)
                                         (fx>= (length _args11091_)
                                               _arity11124_))))
                                  (if (##pair? _arity1110711116_)
                                      (let ((_hd1111211129_
                                             (##car _arity1110711116_))
                                            (_tl1111311131_
                                             (##cdr _arity1110711116_)))
                                        (let ((_arity11134_ _hd1111211129_))
                                          (if (##null? _tl1111311131_)
                                              (_K1111111126_ _arity11134_)
                                              (_E1111011120_))))
                                      (_E1111011120_))))))
                         (let ((_K1111411140_
                                (lambda ()
                                  (fx= (length _args11091_) _arity11106_))))
                           (if (fixnum? _arity1110711116_)
                               (_K1111411140_)
                               (_try-match1110911136_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1109211099_)
                (let ((_e1109611146_ (##vector-ref _self1109211099_ '1)))
                  (let ((_e1109711149_ (##vector-ref _self1109211099_ '2)))
                    (let ((_arity11152_ _e1109711149_))
                      (_K1109511143_ _arity11152_))))
                (_E1109411103_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11030_)
      (let ((_g1103211046_
             (lambda (_g1103311043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1103311043_))))
        (let ((_g1103111087_
               (lambda (_g1103311049_)
                 (if (gx#stx-pair? _g1103311049_)
                     (let ((_e1103611051_ (gx#stx-e _g1103311049_)))
                       (let ((_hd1103711054_ (##car _e1103611051_))
                             (_tl1103811056_ (##cdr _e1103611051_)))
                         (if (gx#stx-pair? _tl1103811056_)
                             (let ((_e1103911059_ (gx#stx-e _tl1103811056_)))
                               (let ((_hd1104011062_ (##car _e1103911059_))
                                     (_tl1104111064_ (##cdr _e1103911059_)))
                                 ((lambda (_L11067_ _L11068_)
                                    (let ((_ctx11081_
                                           (gx#syntax-local-e__0 _L11068_)))
                                      (let ((_code11083_
                                             (##structure-ref
                                              _ctx11081_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11083_))
                                           gx#current-expander-context
                                           _ctx11081_)))))
                                  _tl1104111064_
                                  _hd1104011062_)))
                             (_g1103211046_ _g1103311049_))))
                     (_g1103211046_ _g1103311049_)))))
          (_g1103111087_ _stx11030_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10840_)
      (let ((_generate-e10842_
             (lambda (_id11019_)
               (let ((_sym11021_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11019_)
                          '#f)))
                 (let ((_$e11023_
                        (if _sym11021_
                            (gxc#optimizer-lookup-type _sym11021_)
                            '#f)))
                   (if _$e11023_
                       ((lambda (_type11026_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11021_)
                            (let ((_typedecl11028_
                                   (call-method _type11026_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11021_
                                          (cons _typedecl11028_ '()))))))
                        _$e11023_)
                       '(begin)))))))
        (let ((_g1084510883_
               (lambda (_g1084610880_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1084610880_))))
          (let ((_g1084410964_
                 (lambda (_g1084610886_)
                   (if (gx#stx-pair? _g1084610886_)
                       (let ((_e1086110888_ (gx#stx-e _g1084610886_)))
                         (let ((_hd1086210891_ (##car _e1086110888_))
                               (_tl1086310893_ (##cdr _e1086110888_)))
                           (if (gx#stx-pair? _tl1086310893_)
                               (let ((_e1086410896_ (gx#stx-e _tl1086310893_)))
                                 (let ((_hd1086510899_ (##car _e1086410896_))
                                       (_tl1086610901_ (##cdr _e1086410896_)))
                                   (if (gx#stx-pair/null? _hd1086510899_)
                                       (if (fx>= (gx#stx-length _hd1086510899_)
                                                 '0)
                                           (let ((_g17757_
                                                  (gx#syntax-split-splice
                                                   _hd1086510899_
                                                   '0)))
                                             (begin
                                               (let ((_g17758_
                                                      (values-count _g17757_)))
                                                 (if (not (fx= _g17758_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17758_)))
                                               (let ((_target1086710904_
                                                      (values-ref _g17757_ 0))
                                                     (_tl1086910906_
                                                      (values-ref _g17757_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1086910906_)
                                                     (letrec ((_loop1087010909_
                                                               (lambda (_hd1086810912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1087410914_)
                         (if (gx#stx-pair? _hd1086810912_)
                             (let ((_e1087110917_ (gx#stx-e _hd1086810912_)))
                               (let ((_lp-hd1087210920_ (##car _e1087110917_))
                                     (_lp-tl1087310922_ (##cdr _e1087110917_)))
                                 (_loop1087010909_
                                  _lp-tl1087310922_
                                  (cons _lp-hd1087210920_ _id1087410914_))))
                             (let ((_id1087510925_ (reverse _id1087410914_)))
                               (if (gx#stx-pair? _tl1086610901_)
                                   (let ((_e1087610928_
                                          (gx#stx-e _tl1086610901_)))
                                     (let ((_hd1087710931_
                                            (##car _e1087610928_))
                                           (_tl1087810933_
                                            (##cdr _e1087610928_)))
                                       (if (gx#stx-null? _tl1087810933_)
                                           ((lambda (_L10936_)
                                              (let ((_types10962_
                                                     (map _generate-e10842_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1095410957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1095510959_)
                              (cons _g1095410957_ _g1095510959_))
                            '()
                            _L10936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types10962_)))
                                            _id1087510925_)
                                           (_g1084510883_ _g1084610886_))))
                                   (_g1084510883_ _g1084610886_)))))))
               (_loop1087010909_ _target1086710904_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084510883_
                                                      _g1084610886_)))))
                                           (_g1084510883_ _g1084610886_))
                                       (_g1084510883_ _g1084610886_))))
                               (_g1084510883_ _g1084610886_))))
                       (_g1084510883_ _g1084610886_)))))
            (let ((_g1084311016_
                   (lambda (_g1084610967_)
                     (if (gx#stx-pair? _g1084610967_)
                         (let ((_e1084810969_ (gx#stx-e _g1084610967_)))
                           (let ((_hd1084910972_ (##car _e1084810969_))
                                 (_tl1085010974_ (##cdr _e1084810969_)))
                             (if (gx#stx-pair? _tl1085010974_)
                                 (let ((_e1085110977_
                                        (gx#stx-e _tl1085010974_)))
                                   (let ((_hd1085210980_ (##car _e1085110977_))
                                         (_tl1085310982_
                                          (##cdr _e1085110977_)))
                                     (if (gx#stx-pair? _hd1085210980_)
                                         (let ((_e1085410985_
                                                (gx#stx-e _hd1085210980_)))
                                           (let ((_hd1085510988_
                                                  (##car _e1085410985_))
                                                 (_tl1085610990_
                                                  (##cdr _e1085410985_)))
                                             (if (gx#stx-null? _tl1085610990_)
                                                 (if (gx#stx-pair?
                                                      _tl1085310982_)
                                                     (let ((_e1085710993_
                                                            (gx#stx-e
                                                             _tl1085310982_)))
                                                       (let ((_hd1085810996_
                                                              (##car _e1085710993_))
                                                             (_tl1085910998_
                                                              (##cdr _e1085710993_)))
                                                         (if (gx#stx-null?
                                                              _tl1085910998_)
                                                             ((lambda (_L11001_)
                                                                (_generate-e10842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11001_))
                      _hd1085510988_)
                     (_g1084410964_ _g1084610967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084410964_
                                                      _g1084610967_))
                                                 (_g1084410964_
                                                  _g1084610967_))))
                                         (_g1084410964_ _g1084610967_))))
                                 (_g1084410964_ _g1084610967_))))
                         (_g1084410964_ _g1084610967_)))))
              (_g1084311016_ _stx10840_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10394_)
      (let ((_g1039810500_
             (lambda (_g1039910497_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1039910497_))))
        (let ((_g1039710507_ (lambda (_g1039910503_) ((lambda () '(begin))))))
          (let ((_g1039610657_
                 (lambda (_g1039910510_)
                   (if (gx#stx-pair? _g1039910510_)
                       (let ((_e1045710512_ (gx#stx-e _g1039910510_)))
                         (let ((_hd1045810515_ (##car _e1045710512_))
                               (_tl1045910517_ (##cdr _e1045710512_)))
                           (if (gx#stx-pair? _tl1045910517_)
                               (let ((_e1046010520_ (gx#stx-e _tl1045910517_)))
                                 (let ((_hd1046110523_ (##car _e1046010520_))
                                       (_tl1046210525_ (##cdr _e1046010520_)))
                                   (if (gx#stx-pair? _hd1046110523_)
                                       (let ((_e1046310528_
                                              (gx#stx-e _hd1046110523_)))
                                         (let ((_hd1046410531_
                                                (##car _e1046310528_))
                                               (_tl1046510533_
                                                (##cdr _e1046310528_)))
                                           (if (gx#identifier? _hd1046410531_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1046410531_)
                                                   (if (gx#stx-pair?
                                                        _tl1046510533_)
                                                       (let ((_e1046610536_
                                                              (gx#stx-e
                                                               _tl1046510533_)))
                                                         (let ((_hd1046710539_
                                                                (##car _e1046610536_))
                                                               (_tl1046810541_
                                                                (##cdr _e1046610536_)))
                                                           (if (gx#stx-null?
                                                                _tl1046810541_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1046210525_)
                           (let ((_e1046910544_ (gx#stx-e _tl1046210525_)))
                             (let ((_hd1047010547_ (##car _e1046910544_))
                                   (_tl1047110549_ (##cdr _e1046910544_)))
                               (if (gx#stx-pair? _hd1047010547_)
                                   (let ((_e1047210552_
                                          (gx#stx-e _hd1047010547_)))
                                     (let ((_hd1047310555_
                                            (##car _e1047210552_))
                                           (_tl1047410557_
                                            (##cdr _e1047210552_)))
                                       (if (gx#identifier? _hd1047310555_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1047310555_)
                                               (if (gx#stx-pair?
                                                    _tl1047410557_)
                                                   (let ((_e1047510560_
                                                          (gx#stx-e
                                                           _tl1047410557_)))
                                                     (let ((_hd1047610563_
                                                            (##car _e1047510560_))
                                                           (_tl1047710565_
                                                            (##cdr _e1047510560_)))
                                                       (if (gx#stx-null?
                                                            _tl1047710565_)
                                                           (if (gx#stx-pair?
                                                                _tl1047110549_)
                                                               (let ((_e1047810568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1047110549_)))
                         (let ((_hd1047910571_ (##car _e1047810568_))
                               (_tl1048010573_ (##cdr _e1047810568_)))
                           (if (gx#stx-pair? _hd1047910571_)
                               (let ((_e1048110576_ (gx#stx-e _hd1047910571_)))
                                 (let ((_hd1048210579_ (##car _e1048110576_))
                                       (_tl1048310581_ (##cdr _e1048110576_)))
                                   (if (gx#identifier? _hd1048210579_)
                                       (if (gx#stx-eq? '%#quote _hd1048210579_)
                                           (if (gx#stx-pair? _tl1048310581_)
                                               (let ((_e1048410584_
                                                      (gx#stx-e
                                                       _tl1048310581_)))
                                                 (let ((_hd1048510587_
                                                        (##car _e1048410584_))
                                                       (_tl1048610589_
                                                        (##cdr _e1048410584_)))
                                                   (if (gx#stx-null?
                                                        _tl1048610589_)
                                                       (if (gx#stx-pair?
                                                            _tl1048010573_)
                                                           (let ((_e1048710592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1048010573_)))
                     (let ((_hd1048810595_ (##car _e1048710592_))
                           (_tl1048910597_ (##cdr _e1048710592_)))
                       (if (gx#stx-pair? _hd1048810595_)
                           (let ((_e1049010600_ (gx#stx-e _hd1048810595_)))
                             (let ((_hd1049110603_ (##car _e1049010600_))
                                   (_tl1049210605_ (##cdr _e1049010600_)))
                               (if (gx#identifier? _hd1049110603_)
                                   (if (gx#stx-eq? '%#ref _hd1049110603_)
                                       (if (gx#stx-pair? _tl1049210605_)
                                           (let ((_e1049310608_
                                                  (gx#stx-e _tl1049210605_)))
                                             (let ((_hd1049410611_
                                                    (##car _e1049310608_))
                                                   (_tl1049510613_
                                                    (##cdr _e1049310608_)))
                                               (if (gx#stx-null?
                                                    _tl1049510613_)
                                                   (if (gx#stx-null?
                                                        _tl1048910597_)
                                                       ((lambda (_L10616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10617_
                         _L10618_
                         _L10619_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10618_)
                                  (cons (gx#stx-e _L10617_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10616_)
                                              (cons '#f '())))))
                      (_g1039710507_ _g1039910510_)))
                _hd1049410611_
                _hd1048510587_
                _hd1047610563_
                _hd1046710539_)
               (_g1039710507_ _g1039910510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1039710507_
                                                    _g1039910510_))))
                                           (_g1039710507_ _g1039910510_))
                                       (_g1039710507_ _g1039910510_))
                                   (_g1039710507_ _g1039910510_))))
                           (_g1039710507_ _g1039910510_))))
                   (_g1039710507_ _g1039910510_))
               (_g1039710507_ _g1039910510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1039710507_ _g1039910510_))
                                           (_g1039710507_ _g1039910510_))
                                       (_g1039710507_ _g1039910510_))))
                               (_g1039710507_ _g1039910510_))))
                       (_g1039710507_ _g1039910510_))
                   (_g1039710507_ _g1039910510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1039710507_
                                                    _g1039910510_))
                                               (_g1039710507_ _g1039910510_))
                                           (_g1039710507_ _g1039910510_))))
                                   (_g1039710507_ _g1039910510_))))
                           (_g1039710507_ _g1039910510_))
                       (_g1039710507_ _g1039910510_))))
               (_g1039710507_ _g1039910510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1039710507_
                                                    _g1039910510_))
                                               (_g1039710507_ _g1039910510_))))
                                       (_g1039710507_ _g1039910510_))))
                               (_g1039710507_ _g1039910510_))))
                       (_g1039710507_ _g1039910510_)))))
            (let ((_g1039510837_
                   (lambda (_g1039910660_)
                     (if (gx#stx-pair? _g1039910660_)
                         (let ((_e1040510662_ (gx#stx-e _g1039910660_)))
                           (let ((_hd1040610665_ (##car _e1040510662_))
                                 (_tl1040710667_ (##cdr _e1040510662_)))
                             (if (gx#stx-pair? _tl1040710667_)
                                 (let ((_e1040810670_
                                        (gx#stx-e _tl1040710667_)))
                                   (let ((_hd1040910673_ (##car _e1040810670_))
                                         (_tl1041010675_
                                          (##cdr _e1040810670_)))
                                     (if (gx#stx-pair? _hd1040910673_)
                                         (let ((_e1041110678_
                                                (gx#stx-e _hd1040910673_)))
                                           (let ((_hd1041210681_
                                                  (##car _e1041110678_))
                                                 (_tl1041310683_
                                                  (##cdr _e1041110678_)))
                                             (if (gx#identifier?
                                                  _hd1041210681_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1041210681_)
                                                     (if (gx#stx-pair?
                                                          _tl1041310683_)
                                                         (let ((_e1041410686_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1041310683_)))
                   (let ((_hd1041510689_ (##car _e1041410686_))
                         (_tl1041610691_ (##cdr _e1041410686_)))
                     (if (gx#stx-null? _tl1041610691_)
                         (if (gx#stx-pair? _tl1041010675_)
                             (let ((_e1041710694_ (gx#stx-e _tl1041010675_)))
                               (let ((_hd1041810697_ (##car _e1041710694_))
                                     (_tl1041910699_ (##cdr _e1041710694_)))
                                 (if (gx#stx-pair? _hd1041810697_)
                                     (let ((_e1042010702_
                                            (gx#stx-e _hd1041810697_)))
                                       (let ((_hd1042110705_
                                              (##car _e1042010702_))
                                             (_tl1042210707_
                                              (##cdr _e1042010702_)))
                                         (if (gx#identifier? _hd1042110705_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1042110705_)
                                                 (if (gx#stx-pair?
                                                      _tl1042210707_)
                                                     (let ((_e1042310710_
                                                            (gx#stx-e
                                                             _tl1042210707_)))
                                                       (let ((_hd1042410713_
                                                              (##car _e1042310710_))
                                                             (_tl1042510715_
                                                              (##cdr _e1042310710_)))
                                                         (if (gx#stx-null?
                                                              _tl1042510715_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1041910699_)
                         (let ((_e1042610718_ (gx#stx-e _tl1041910699_)))
                           (let ((_hd1042710721_ (##car _e1042610718_))
                                 (_tl1042810723_ (##cdr _e1042610718_)))
                             (if (gx#stx-pair? _hd1042710721_)
                                 (let ((_e1042910726_
                                        (gx#stx-e _hd1042710721_)))
                                   (let ((_hd1043010729_ (##car _e1042910726_))
                                         (_tl1043110731_
                                          (##cdr _e1042910726_)))
                                     (if (gx#identifier? _hd1043010729_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1043010729_)
                                             (if (gx#stx-pair? _tl1043110731_)
                                                 (let ((_e1043210734_
                                                        (gx#stx-e
                                                         _tl1043110731_)))
                                                   (let ((_hd1043310737_
                                                          (##car _e1043210734_))
                                                         (_tl1043410739_
                                                          (##cdr _e1043210734_)))
                                                     (if (gx#stx-null?
                                                          _tl1043410739_)
                                                         (if (gx#stx-pair?
                                                              _tl1042810723_)
                                                             (let ((_e1043510742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1042810723_)))
                       (let ((_hd1043610745_ (##car _e1043510742_))
                             (_tl1043710747_ (##cdr _e1043510742_)))
                         (if (gx#stx-pair? _hd1043610745_)
                             (let ((_e1043810750_ (gx#stx-e _hd1043610745_)))
                               (let ((_hd1043910753_ (##car _e1043810750_))
                                     (_tl1044010755_ (##cdr _e1043810750_)))
                                 (if (gx#identifier? _hd1043910753_)
                                     (if (gx#stx-eq? '%#ref _hd1043910753_)
                                         (if (gx#stx-pair? _tl1044010755_)
                                             (let ((_e1044110758_
                                                    (gx#stx-e _tl1044010755_)))
                                               (let ((_hd1044210761_
                                                      (##car _e1044110758_))
                                                     (_tl1044310763_
                                                      (##cdr _e1044110758_)))
                                                 (if (gx#stx-null?
                                                      _tl1044310763_)
                                                     (if (gx#stx-pair?
                                                          _tl1043710747_)
                                                         (let ((_e1044410766_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1043710747_)))
                   (let ((_hd1044510769_ (##car _e1044410766_))
                         (_tl1044610771_ (##cdr _e1044410766_)))
                     (if (gx#stx-pair? _hd1044510769_)
                         (let ((_e1044710774_ (gx#stx-e _hd1044510769_)))
                           (let ((_hd1044810777_ (##car _e1044710774_))
                                 (_tl1044910779_ (##cdr _e1044710774_)))
                             (if (gx#identifier? _hd1044810777_)
                                 (if (gx#stx-eq? '%#quote _hd1044810777_)
                                     (if (gx#stx-pair? _tl1044910779_)
                                         (let ((_e1045010782_
                                                (gx#stx-e _tl1044910779_)))
                                           (let ((_hd1045110785_
                                                  (##car _e1045010782_))
                                                 (_tl1045210787_
                                                  (##cdr _e1045010782_)))
                                             (if (gx#stx-null? _tl1045210787_)
                                                 (if (gx#stx-null?
                                                      _tl1044610771_)
                                                     ((lambda (_L10790_
                                                               _L10791_
                                                               _L10792_
                                                               _L10793_
                                                               _L10794_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10794_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L10793_)
                                (cons (gx#stx-e _L10792_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L10791_)
                                            (cons (gx#stx-e _L10790_) '())))))
                    (_g1039610657_ _g1039910660_)))
              _hd1045110785_
              _hd1044210761_
              _hd1043310737_
              _hd1042410713_
              _hd1041510689_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))
                                                 (_g1039610657_
                                                  _g1039910660_))))
                                         (_g1039610657_ _g1039910660_))
                                     (_g1039610657_ _g1039910660_))
                                 (_g1039610657_ _g1039910660_))))
                         (_g1039610657_ _g1039910660_))))
                 (_g1039610657_ _g1039910660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))))
                                             (_g1039610657_ _g1039910660_))
                                         (_g1039610657_ _g1039910660_))
                                     (_g1039610657_ _g1039910660_))))
                             (_g1039610657_ _g1039910660_))))
                     (_g1039610657_ _g1039910660_))
                 (_g1039610657_ _g1039910660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1039610657_ _g1039910660_))
                                             (_g1039610657_ _g1039910660_))
                                         (_g1039610657_ _g1039910660_))))
                                 (_g1039610657_ _g1039910660_))))
                         (_g1039610657_ _g1039910660_))
                     (_g1039610657_ _g1039910660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))
                                                 (_g1039610657_ _g1039910660_))
                                             (_g1039610657_ _g1039910660_))))
                                     (_g1039610657_ _g1039910660_))))
                             (_g1039610657_ _g1039910660_))
                         (_g1039610657_ _g1039910660_))))
                 (_g1039610657_ _g1039910660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))
                                                 (_g1039610657_
                                                  _g1039910660_))))
                                         (_g1039610657_ _g1039910660_))))
                                 (_g1039610657_ _g1039910660_))))
                         (_g1039610657_ _g1039910660_)))))
              (_g1039510837_ _stx10394_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10370_)
      (let ((_self1037110377_ _self10370_))
        (let ((_E1037310381_
               (lambda () (error '"No clause matching" _self1037110377_))))
          (let ((_K1037410386_
                 (lambda (_alias-id10384_)
                   (cons '@alias (cons _alias-id10384_ '())))))
            (if (struct-instance? gxc#!alias::t _self1037110377_)
                (let ((_e1037510389_ (##vector-ref _self1037110377_ '1)))
                  (let ((_alias-id10392_ _e1037510389_))
                    (_K1037410386_ _alias-id10392_)))
                (_E1037310381_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10314_)
      (let ((_self1031510326_ _self10314_))
        (let ((_E1031710330_
               (lambda () (error '"No clause matching" _self1031510326_))))
          (let ((_K1031810339_
                 (lambda (_plist10333_
                          _ctor10334_
                          _fields10335_
                          _super10336_
                          _type-id10337_)
                   (cons '@struct-type
                         (cons _type-id10337_
                               (cons _super10336_
                                     (cons _fields10335_
                                           (cons _ctor10334_
                                                 (cons _plist10333_
                                                       '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self1031510326_)
                (let ((_e1031910342_ (##vector-ref _self1031510326_ '1)))
                  (let ((_type-id10345_ _e1031910342_))
                    (let ((_e1032010347_ (##vector-ref _self1031510326_ '2)))
                      (let ((_super10350_ _e1032010347_))
                        (let ((_e1032110352_
                               (##vector-ref _self1031510326_ '3)))
                          (let ((_fields10355_ _e1032110352_))
                            (let ((_e1032210357_
                                   (##vector-ref _self1031510326_ '4)))
                              (let ((_e1032310360_
                                     (##vector-ref _self1031510326_ '5)))
                                (let ((_ctor10363_ _e1032310360_))
                                  (let ((_e1032410365_
                                         (##vector-ref _self1031510326_ '6)))
                                    (let ((_plist10368_ _e1032410365_))
                                      (_K1031810339_
                                       _plist10368_
                                       _ctor10363_
                                       _fields10355_
                                       _super10350_
                                       _type-id10345_))))))))))))
                (_E1031710330_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10290_)
      (let ((_self1029110297_ _self10290_))
        (let ((_E1029310301_
               (lambda () (error '"No clause matching" _self1029110297_))))
          (let ((_K1029410306_
                 (lambda (_struct-t10304_)
                   (cons '@struct-pred (cons _struct-t10304_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self1029110297_)
                (let ((_e1029510309_ (##vector-ref _self1029110297_ '1)))
                  (let ((_struct-t10312_ _e1029510309_))
                    (_K1029410306_ _struct-t10312_)))
                (_E1029310301_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10266_)
      (let ((_self1026710273_ _self10266_))
        (let ((_E1026910277_
               (lambda () (error '"No clause matching" _self1026710273_))))
          (let ((_K1027010282_
                 (lambda (_struct-t10280_)
                   (cons '@struct-cons (cons _struct-t10280_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self1026710273_)
                (let ((_e1027110285_ (##vector-ref _self1026710273_ '1)))
                  (let ((_struct-t10288_ _e1027110285_))
                    (_K1027010282_ _struct-t10288_)))
                (_E1026910277_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10235_)
      (let ((_self1023610243_ _self10235_))
        (let ((_E1023810247_
               (lambda () (error '"No clause matching" _self1023610243_))))
          (let ((_K1023910253_
                 (lambda (_off10250_ _struct-t10251_)
                   (cons '@struct-getf
                         (cons _struct-t10251_ (cons _off10250_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self1023610243_)
                (let ((_e1024010256_ (##vector-ref _self1023610243_ '1)))
                  (let ((_struct-t10259_ _e1024010256_))
                    (let ((_e1024110261_ (##vector-ref _self1023610243_ '2)))
                      (let ((_off10264_ _e1024110261_))
                        (_K1023910253_ _off10264_ _struct-t10259_)))))
                (_E1023810247_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10204_)
      (let ((_self1020510212_ _self10204_))
        (let ((_E1020710216_
               (lambda () (error '"No clause matching" _self1020510212_))))
          (let ((_K1020810222_
                 (lambda (_off10219_ _struct-t10220_)
                   (cons '@struct-setf
                         (cons _struct-t10220_ (cons _off10219_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self1020510212_)
                (let ((_e1020910225_ (##vector-ref _self1020510212_ '1)))
                  (let ((_struct-t10228_ _e1020910225_))
                    (let ((_e1021010230_ (##vector-ref _self1020510212_ '2)))
                      (let ((_off10233_ _e1021010230_))
                        (_K1020810222_ _off10233_ _struct-t10228_)))))
                (_E1020710216_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10152_)
      (let ((_self1015310163_ _self10152_))
        (let ((_E1015510167_
               (lambda () (error '"No clause matching" _self1015310163_))))
          (let ((_K1015610178_
                 (lambda (_typedecl10170_
                          _inline10171_
                          _dispatch10172_
                          _arity10173_)
                   (if _inline10171_
                       (let ((_$e10175_ _typedecl10170_))
                         (if _$e10175_
                             _$e10175_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10173_
                                   (cons _dispatch10172_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self1015310163_)
                (let ((_e1015710181_ (##vector-ref _self1015310163_ '1)))
                  (let ((_e1015810184_ (##vector-ref _self1015310163_ '2)))
                    (let ((_arity10187_ _e1015810184_))
                      (let ((_e1015910189_ (##vector-ref _self1015310163_ '3)))
                        (let ((_dispatch10192_ _e1015910189_))
                          (let ((_e1016010194_
                                 (##vector-ref _self1015310163_ '4)))
                            (let ((_inline10197_ _e1016010194_))
                              (let ((_e1016110199_
                                     (##vector-ref _self1015310163_ '5)))
                                (let ((_typedecl10202_ _e1016110199_))
                                  (_K1015610178_
                                   _typedecl10202_
                                   _inline10197_
                                   _dispatch10192_
                                   _arity10187_))))))))))
                (_E1015510167_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10085_)
      (let ((_clause-e10087_
             (lambda (_clause10117_)
               (let ((_clause1011810126_ _clause10117_))
                 (let ((_E1012010130_
                        (lambda ()
                          (error '"No clause matching" _clause1011810126_))))
                   (let ((_K1012110136_
                          (lambda (_dispatch10133_ _arity10134_)
                            (cons _arity10134_ (cons _dispatch10133_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause1011810126_)
                         (let ((_e1012210139_
                                (##vector-ref _clause1011810126_ '1)))
                           (let ((_e1012310142_
                                  (##vector-ref _clause1011810126_ '2)))
                             (let ((_arity10145_ _e1012310142_))
                               (let ((_e1012410147_
                                      (##vector-ref _clause1011810126_ '3)))
                                 (let ((_dispatch10150_ _e1012410147_))
                                   (_K1012110136_
                                    _dispatch10150_
                                    _arity10145_))))))
                         (_E1012010130_))))))))
        (let ((_self1008810095_ _self10085_))
          (let ((_E1009010099_
                 (lambda () (error '"No clause matching" _self1008810095_))))
            (let ((_K1009110106_
                   (lambda (_clauses10102_)
                     (let ((_clauses10104_
                            (map _clause-e10087_ _clauses10102_)))
                       (cons '@case-lambda _clauses10104_)))))
              (if (struct-instance? gxc#!case-lambda::t _self1008810095_)
                  (let ((_e1009210109_ (##vector-ref _self1008810095_ '1)))
                    (let ((_e1009310112_ (##vector-ref _self1008810095_ '2)))
                      (let ((_clauses10115_ _e1009310112_))
                        (_K1009110106_ _clauses10115_))))
                  (_E1009010099_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10083_) (gxc#generate-runtime-binding-id _stx10083_))))
