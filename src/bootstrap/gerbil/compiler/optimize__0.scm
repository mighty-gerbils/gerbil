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
    (lambda _$args17802_
      (apply make-struct-instance gxc#optimizer-info::t _$args17802_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self17800_)
      (direct-struct-instance-init!
       _self17800_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj17804 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj17804) __obj17804))))))
  (define gxc#optimize!
    (lambda (_ctx17794_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-prelude-ssxi _ctx17794_)
           (gxc#optimizer-load-ssxi-deps _ctx17794_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx17794_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code17797_
                  (gxc#optimize-source
                   (##structure-ref _ctx17794_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx17794_
              _code17797_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx17755_)
      ((letrec ((_lp17757_
                 (lambda (_rest17759_)
                   (let ((_rest1776017768_ _rest17759_))
                     (let ((_E1776317772_
                            (lambda ()
                              (error '"No clause matching" _rest1776017768_))))
                       (let ((_else1776217776_ (lambda () '#!void)))
                         (let ((_K1776417782_
                                (lambda (_rest17779_ _hd17780_)
                                  (if (##structure-instance-of?
                                       _hd17780_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd17780_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx17755_)
                                              (_lp17757_
                                               (##structure-ref
                                                _hd17780_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd17780_)))
                                        (_lp17757_ _rest17779_))
                                      (if (##structure-direct-instance-of?
                                           _hd17780_
                                           'gx#module-import::t)
                                          (_lp17757_
                                           (cons (##structure-ref
                                                  _hd17780_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest17779_))
                                          (if (##structure-direct-instance-of?
                                               _hd17780_
                                               'gx#module-export::t)
                                              (_lp17757_
                                               (cons (##structure-ref
                                                      _hd17780_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest17779_))
                                              (if (##structure-direct-instance-of?
                                                   _hd17780_
                                                   'gx#import-set::t)
                                                  (_lp17757_
                                                   (cons (##structure-ref
                                                          _hd17780_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest17779_))
                                                  (error '"Unexpected module import"
                                                         _hd17780_))))))))
                           (if (##pair? _rest1776017768_)
                               (let ((_hd1776517785_ (##car _rest1776017768_))
                                     (_tl1776617787_ (##cdr _rest1776017768_)))
                                 (let ((_hd17790_ _hd1776517785_))
                                   (let ((_rest17792_ _tl1776617787_))
                                     (_K1776417782_ _rest17792_ _hd17790_))))
                               (_else1776217776_)))))))))
         _lp17757_)
       (##structure-ref _ctx17755_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx17750_)
      (let ((_$e17752_ (gx#core-context-prelude__opt-lambda10896 _ctx17750_)))
        (if _$e17752_ (gxc#optimizer-load-ssxi _$e17752_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx17730_)
      (if (if (##structure-instance-of? _ctx17730_ 'gx#module-context::t)
              (list? (##structure-ref _ctx17730_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht17732_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id17734_
                   (##structure-ref _ctx17730_ '1 gx#expander-context::t '#f)))
              (let ((_mod17736_ (table-ref _ht17732_ _id17734_ '#f)))
                (let ()
                  (let ((_$e17739_ _mod17736_))
                    (if _$e17739_
                        _$e17739_
                        (let ((_mod17742_
                               (gxc#optimizer-import-ssxi _ctx17730_)))
                          (let ((_val17747_
                                 (let ((_$e17744_ _mod17742_))
                                   (if _$e17744_ _$e17744_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht17732_ _id17734_ _val17747_)
                                _val17747_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx17707_)
      (let ((_catch-e17709_
             (lambda (_exn17728_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx17707_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn17728_))
                     '#!void)
                 '#f))))
        (let ((_import-e17710_
               (lambda ()
                 (let ((_str-id17713_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx17707_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path17721_
                          (let ((_odir1771417716_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1771417716_
                                (let ((_odir17719_ _odir1771417716_))
                                  (path-expand
                                   (string-append _str-id17713_ '".ss")
                                   _odir17719_))
                                '#f))))
                     (let ((_library-path17723_
                            (string->symbol
                             (string-append '":" _str-id17713_))))
                       (let ((_ssxi-path17725_
                              (if (if _artefact-path17721_
                                      (file-exists? _artefact-path17721_)
                                      '#f)
                                  _artefact-path17721_
                                  _library-path17723_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path17725_)
                             (gx#import-module__opt-lambda10931
                              _ssxi-path17725_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx17707_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e17709_ _import-e17710_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args17704_
      (apply make-struct-instance gxc#!type::t _$args17704_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args17701_
      (apply make-struct-instance gxc#!alias::t _$args17701_)))
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
    (lambda _$args17698_
      (apply make-struct-instance gxc#!struct-type::t _$args17698_)))
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
    (lambda _$args17695_
      (apply make-struct-instance gxc#!procedure::t _$args17695_)))
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
    (lambda _$args17692_
      (apply make-struct-instance gxc#!struct-pred::t _$args17692_)))
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
    (lambda _$args17689_
      (apply make-struct-instance gxc#!struct-cons::t _$args17689_)))
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
    (lambda _$args17686_
      (apply make-struct-instance gxc#!struct-getf::t _$args17686_)))
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
    (lambda _$args17683_
      (apply make-struct-instance gxc#!struct-setf::t _$args17683_)))
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
    (lambda _$args17680_
      (apply make-struct-instance gxc#!lambda::t _$args17680_)))
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
    (lambda _$args17677_
      (apply make-struct-instance gxc#!case-lambda::t _$args17677_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self17669_
             _id17670_
             _super17671_
             _fields17672_
             _xfields17673_
             _ctor17674_
             _plist17675_)
      (direct-struct-instance-init!
       _self17669_
       _id17670_
       _super17671_
       _fields17672_
       _xfields17673_
       _ctor17674_
       _plist17675_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda17633
      (lambda (_self17635_
               _id17636_
               _arity17637_
               _dispatch17638_
               _inline17639_
               _typedecl17640_)
        (direct-struct-instance-init!
         _self17635_
         _id17636_
         _arity17637_
         _dispatch17638_
         _inline17639_
         _typedecl17640_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self17645_ _id17646_ _arity17647_ _dispatch17648_)
          (let ((_inline17650_ '#f))
            (let ((_typedecl17652_ '#f))
              (direct-struct-instance-init!
               _self17645_
               _id17646_
               _arity17647_
               _dispatch17648_
               _inline17650_
               _typedecl17652_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self17654_
                 _id17655_
                 _arity17656_
                 _dispatch17657_
                 _inline17658_)
          (let ((_typedecl17660_ '#f))
            (direct-struct-instance-init!
             _self17654_
             _id17655_
             _arity17656_
             _dispatch17657_
             _inline17658_
             _typedecl17660_))))
      (define gxc#!lambda:::init!
        (lambda _g17810_
          (let ((_g17809_ (length _g17810_)))
            (cond ((fx= _g17809_ 4) (apply gxc#!lambda:::init!__0 _g17810_))
                  ((fx= _g17809_ 5) (apply gxc#!lambda:::init!__1 _g17810_))
                  ((fx= _g17809_ 6)
                   (apply direct-struct-instance-init! _g17810_))
                  (else (error "No clause matching arguments" _g17810_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type17627_)
      (let ((_$e17629_
             (##structure-ref _type17627_ '7 gxc#!struct-type::t '#f)))
        (if _$e17629_
            (values _$e17629_)
            (let ((_vtab17632_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type17627_
                 _vtab17632_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab17632_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type17618_ _method17619_)
      (let ((_vtab1762017622_
             (##structure-ref _type17618_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1762017622_
            (let ((_vtab17625_ _vtab1762017622_))
              (table-ref _vtab17625_ _method17619_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda17600
      (lambda (_sym17602_ _type17603_ _local?17604_)
        (begin
          (if (##structure-instance-of? _type17603_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym17602_
                     _type17603_))
          (gxc#verbose
           '"declare-type "
           _sym17602_
           '" "
           (##vector->list _type17603_))
          (table-set!
           (if _local?17604_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym17602_
           _type17603_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym17609_ _type17610_)
          (let ((_local?17612_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda17600
             _sym17609_
             _type17610_
             _local?17612_))))
      (define gxc#optimizer-declare-type!
        (lambda _g17812_
          (let ((_g17811_ (length _g17812_)))
            (cond ((fx= _g17811_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g17812_))
                  ((fx= _g17811_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda17600
                          _g17812_))
                  (else (error "No clause matching arguments" _g17812_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda17576
      (lambda (_type-t17578_ _method17579_ _sym17580_ _rebind?17581_)
        (let ((_type17583_ (gxc#optimizer-resolve-type _type-t17578_)))
          (if (##structure-instance-of? _type17583_ 'gxc#!struct-type::t)
              (let ((_vtab17585_ (gxc#!struct-type-vtab _type17583_)))
                (if _rebind?17581_
                    (if (hash-key? _vtab17585_ _method17579_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t17578_
                         '" "
                         _method17579_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t17578_
                         '" "
                         _method17579_))
                    (if (hash-key? _vtab17585_ _method17579_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t17578_
                           '" "
                           _method17579_
                           '" => "
                           _sym17580_)
                          (table-set! _vtab17585_ _method17579_ _sym17580_)))))
              (if (not _type17583_)
                  (gxc#verbose '"declare-method: unknown type " _type-t17578_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t17578_
                         _type17583_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t17590_ _method17591_ _sym17592_)
          (let ((_rebind?17594_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda17576
             _type-t17590_
             _method17591_
             _sym17592_
             _rebind?17594_))))
      (define gxc#optimizer-declare-method!
        (lambda _g17814_
          (let ((_g17813_ (length _g17814_)))
            (cond ((fx= _g17813_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g17814_))
                  ((fx= _g17813_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda17576
                          _g17814_))
                  (else (error "No clause matching arguments" _g17814_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym17566_)
      (let ((_$e17574_
             (let ((_ht1756717569_ (gxc#current-compile-local-type)))
               (if _ht1756717569_
                   (let ((_ht17572_ _ht1756717569_))
                     (table-ref _ht17572_ _sym17566_ '#f))
                   '#f))))
        (if _$e17574_
            _$e17574_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym17566_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym17558_)
      (let ((_type1755917561_ (gxc#optimizer-lookup-type _sym17558_)))
        (if _type1755917561_
            (let ((_type17564_ _type1755917561_))
              (if (##structure-instance-of? _type17564_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type17564_ '1 gxc#!type::t '#f))
                  _type17564_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t17553_ _method17554_)
      (let ((_type17556_ (gxc#optimizer-resolve-type _type-t17553_)))
        (if (##structure-instance-of? _type17556_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type17556_ _method17554_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx17549_)
      (begin
        (gxc#apply-collect-mutators _stx17549_)
        (let ((_stx17551_ (gxc#apply-lift-top-lambdas _stx17549_)))
          (begin
            (gxc#apply-collect-type-info _stx17551_)
            (gxc#apply-optimize-call _stx17551_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl17546_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17546_ '%#lambda false)
           (table-set! _tbl17546_ '%#case-lambda false)
           (table-set! _tbl17546_ '%#let-values false)
           (table-set! _tbl17546_ '%#letrec-values false)
           (table-set! _tbl17546_ '%#letrec*-values false)
           (table-set! _tbl17546_ '%#quote false)
           (table-set! _tbl17546_ '%#quote-syntax false)
           (table-set! _tbl17546_ '%#call false)
           (table-set! _tbl17546_ '%#if false)
           (table-set! _tbl17546_ '%#ref false)
           (table-set! _tbl17546_ '%#set! false)
           (table-set! _tbl17546_ '%#struct-instance? false)
           (table-set! _tbl17546_ '%#struct-direct-instance? false)
           (table-set! _tbl17546_ '%#struct-ref false)
           (table-set! _tbl17546_ '%#struct-set! false)
           _tbl17546_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17542_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17542_ '%#begin false)
           (table-set! _tbl17542_ '%#begin-syntax false)
           (table-set! _tbl17542_ '%#begin-foreign false)
           (table-set! _tbl17542_ '%#module false)
           (table-set! _tbl17542_ '%#import false)
           (table-set! _tbl17542_ '%#export false)
           (table-set! _tbl17542_ '%#provide false)
           (table-set! _tbl17542_ '%#extern false)
           (table-set! _tbl17542_ '%#define-values false)
           (table-set! _tbl17542_ '%#define-syntax false)
           (table-set! _tbl17542_ '%#define-alias false)
           (table-set! _tbl17542_ '%#declare false)
           _tbl17542_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl17538_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17538_ (force gxc#&false-special-form))
           (hash-copy! _tbl17538_ (force gxc#&false-expression))
           _tbl17538_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl17534_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17534_ '%#lambda gxc#xform-identity)
           (table-set! _tbl17534_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl17534_ '%#let-values gxc#xform-identity)
           (table-set! _tbl17534_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl17534_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl17534_ '%#quote gxc#xform-identity)
           (table-set! _tbl17534_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17534_ '%#call gxc#xform-identity)
           (table-set! _tbl17534_ '%#if gxc#xform-identity)
           (table-set! _tbl17534_ '%#ref gxc#xform-identity)
           (table-set! _tbl17534_ '%#set! gxc#xform-identity)
           (table-set! _tbl17534_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl17534_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl17534_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl17534_ '%#struct-set! gxc#xform-identity)
           _tbl17534_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17530_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17530_ '%#begin gxc#xform-identity)
           (table-set! _tbl17530_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl17530_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl17530_ '%#module gxc#xform-identity)
           (table-set! _tbl17530_ '%#import gxc#xform-identity)
           (table-set! _tbl17530_ '%#export gxc#xform-identity)
           (table-set! _tbl17530_ '%#provide gxc#xform-identity)
           (table-set! _tbl17530_ '%#extern gxc#xform-identity)
           (table-set! _tbl17530_ '%#define-values gxc#xform-identity)
           (table-set! _tbl17530_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl17530_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl17530_ '%#declare gxc#xform-identity)
           _tbl17530_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl17526_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17526_ (force gxc#&identity-special-form))
           (hash-copy! _tbl17526_ (force gxc#&identity-expression))
           _tbl17526_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl17522_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17522_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl17522_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl17522_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl17522_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl17522_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl17522_ '%#quote gxc#xform-identity)
           (table-set! _tbl17522_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17522_ '%#call gxc#xform-call%)
           (table-set! _tbl17522_ '%#if gxc#xform-if%)
           (table-set! _tbl17522_ '%#ref gxc#xform-identity)
           (table-set! _tbl17522_ '%#set! gxc#xform-setq%)
           (table-set! _tbl17522_ '%#struct-instance? gxc#xform-struct-op%)
           (table-set!
            _tbl17522_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (table-set! _tbl17522_ '%#struct-ref gxc#xform-struct-op%)
           (table-set! _tbl17522_ '%#struct-set! gxc#xform-struct-op%)
           _tbl17522_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl17518_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17518_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl17518_ (force gxc#&identity))
           (table-set! _tbl17518_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17518_ '%#module gxc#xform-module%)
           (table-set! _tbl17518_ '%#define-values gxc#xform-define-values%)
           _tbl17518_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl17514_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17514_ (force gxc#&void))
           (table-set! _tbl17514_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17514_ '%#module gxc#collect-module%)
           (table-set! _tbl17514_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17514_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17514_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl17514_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl17514_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl17514_ '%#call gxc#collect-operands)
           (table-set! _tbl17514_ '%#if gxc#collect-operands)
           (table-set! _tbl17514_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl17514_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl17514_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl17514_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl17514_ '%#struct-set! gxc#collect-operands)
           _tbl17514_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx17507_ . _args17509_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17507_ _args17509_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl17504_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17504_ (force gxc#&identity))
           (table-set! _tbl17504_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17504_ '%#module gxc#xform-module%)
           (table-set!
            _tbl17504_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl17504_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx17497_ . _args17499_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17497_ _args17499_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl17494_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17494_ (force gxc#&basic-xform-expression))
           (table-set! _tbl17494_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17494_ '%#ref gxc#expression-subst-ref%)
           _tbl17494_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx17487_ . _args17489_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17487_ _args17489_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl17484_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17484_ (force gxc#&void))
           (table-set! _tbl17484_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17484_ '%#module gxc#collect-module%)
           (table-set!
            _tbl17484_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl17484_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17484_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17484_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl17484_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl17484_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl17484_ '%#call gxc#collect-type-call%)
           (table-set! _tbl17484_ '%#if gxc#collect-operands)
           (table-set! _tbl17484_ '%#set! gxc#collect-body-setq%)
           _tbl17484_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx17477_ . _args17479_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17477_ _args17479_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl17474_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17474_ (force gxc#&false))
           (table-set! _tbl17474_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl17474_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl17474_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl17474_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl17474_ '%#ref gxc#basic-expression-type-ref%)
           _tbl17474_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx17467_ . _args17469_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17467_ _args17469_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl17464_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17464_ (force gxc#&basic-xform))
           (table-set! _tbl17464_ '%#call gxc#optimize-call%)
           _tbl17464_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx17457_ . _args17459_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17457_ _args17459_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl17454_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17454_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl17454_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl17454_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl17454_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl17454_ '%#call gxc#generate-ssxi-call%)
           _tbl17454_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx17447_ . _args17449_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17447_ _args17449_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx17444_ . _args17445_) _stx17444_))
  (define gxc#xform-wrap-source
    (lambda (_stx17441_ _src-stx17442_)
      (gx#stx-wrap-source _stx17441_ (gx#stx-source _src-stx17442_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args17435_)
      (lambda (_g1743617438_)
        (apply gxc#compile-e _g1743617438_ _args17435_))))
  (define gxc#xform-begin%
    (lambda (_stx17394_ . _args17395_)
      (let ((_g1739717407_
             (lambda (_g1739817404_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1739817404_))))
        (let ((_g1739617432_
               (lambda (_g1739817410_)
                 (if (gx#stx-pair? _g1739817410_)
                     (let ((_e1740017412_ (gx#stx-e _g1739817410_)))
                       (let ((_hd1740117415_ (##car _e1740017412_))
                             (_tl1740217417_ (##cdr _e1740017412_)))
                         ((lambda (_L17420_)
                            (let ((_forms17430_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args17395_)
                                    _L17420_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms17430_)
                               _stx17394_)))
                          _tl1740217417_)))
                     (_g1739717407_ _g1739817410_)))))
          (_g1739617432_ _stx17394_)))))
  (define gxc#xform-module%
    (lambda (_stx17331_ . _args17332_)
      (let ((_g1733417348_
             (lambda (_g1733517345_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1733517345_))))
        (let ((_g1733317391_
               (lambda (_g1733517351_)
                 (if (gx#stx-pair? _g1733517351_)
                     (let ((_e1733817353_ (gx#stx-e _g1733517351_)))
                       (let ((_hd1733917356_ (##car _e1733817353_))
                             (_tl1734017358_ (##cdr _e1733817353_)))
                         (if (gx#stx-pair? _tl1734017358_)
                             (let ((_e1734117361_ (gx#stx-e _tl1734017358_)))
                               (let ((_hd1734217364_ (##car _e1734117361_))
                                     (_tl1734317366_ (##cdr _e1734117361_)))
                                 ((lambda (_L17369_ _L17370_)
                                    (let ((_ctx17383_
                                           (gx#syntax-local-e__0 _L17370_)))
                                      (let ((_code17385_
                                             (##structure-ref
                                              _ctx17383_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code17388_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code17385_
                                                         _args17332_))
                                                gx#current-expander-context
                                                _ctx17383_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx17383_
                                               _code17388_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L17370_
                                                           (cons _code17388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx17331_)))))))
                                  _tl1734317366_
                                  _hd1734217364_)))
                             (_g1733417348_ _g1733517351_))))
                     (_g1733417348_ _g1733517351_)))))
          (_g1733317391_ _stx17331_)))))
  (define gxc#xform-define-values%
    (lambda (_stx17261_ . _args17262_)
      (let ((_g1726417281_
             (lambda (_g1726517278_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1726517278_))))
        (let ((_g1726317328_
               (lambda (_g1726517284_)
                 (if (gx#stx-pair? _g1726517284_)
                     (let ((_e1726817286_ (gx#stx-e _g1726517284_)))
                       (let ((_hd1726917289_ (##car _e1726817286_))
                             (_tl1727017291_ (##cdr _e1726817286_)))
                         (if (gx#stx-pair? _tl1727017291_)
                             (let ((_e1727117294_ (gx#stx-e _tl1727017291_)))
                               (let ((_hd1727217297_ (##car _e1727117294_))
                                     (_tl1727317299_ (##cdr _e1727117294_)))
                                 (if (gx#stx-pair? _tl1727317299_)
                                     (let ((_e1727417302_
                                            (gx#stx-e _tl1727317299_)))
                                       (let ((_hd1727517305_
                                              (##car _e1727417302_))
                                             (_tl1727617307_
                                              (##cdr _e1727417302_)))
                                         (if (gx#stx-null? _tl1727617307_)
                                             ((lambda (_L17310_ _L17311_)
                                                (let ((_expr17326_
                                                       (apply gxc#compile-e
                                                              _L17310_
                                                              _args17262_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L17311_
                                                               (cons _expr17326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx17261_)))
                                              _hd1727517305_
                                              _hd1727217297_)
                                             (_g1726417281_ _g1726517284_))))
                                     (_g1726417281_ _g1726517284_))))
                             (_g1726417281_ _g1726517284_))))
                     (_g1726417281_ _g1726517284_)))))
          (_g1726317328_ _stx17261_)))))
  (define gxc#xform-lambda%
    (lambda (_stx17204_ . _args17205_)
      (let ((_g1720717221_
             (lambda (_g1720817218_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1720817218_))))
        (let ((_g1720617258_
               (lambda (_g1720817224_)
                 (if (gx#stx-pair? _g1720817224_)
                     (let ((_e1721117226_ (gx#stx-e _g1720817224_)))
                       (let ((_hd1721217229_ (##car _e1721117226_))
                             (_tl1721317231_ (##cdr _e1721117226_)))
                         (if (gx#stx-pair? _tl1721317231_)
                             (let ((_e1721417234_ (gx#stx-e _tl1721317231_)))
                               (let ((_hd1721517237_ (##car _e1721417234_))
                                     (_tl1721617239_ (##cdr _e1721417234_)))
                                 ((lambda (_L17242_ _L17243_)
                                    (let ((_body17256_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args17205_)
                                            _L17242_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L17243_ _body17256_))
                                       _stx17204_)))
                                  _tl1721617239_
                                  _hd1721517237_)))
                             (_g1720717221_ _g1720817224_))))
                     (_g1720717221_ _g1720817224_)))))
          (_g1720617258_ _stx17204_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17117_ . _args17118_)
      (let ((_clause-e17120_
             (lambda (_clause17161_)
               (let ((_g1716317174_
                      (lambda (_g1716417171_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1716417171_))))
                 (let ((_g1716217201_
                        (lambda (_g1716417177_)
                          (if (gx#stx-pair? _g1716417177_)
                              (let ((_e1716717179_ (gx#stx-e _g1716417177_)))
                                (let ((_hd1716817182_ (##car _e1716717179_))
                                      (_tl1716917184_ (##cdr _e1716717179_)))
                                  ((lambda (_L17187_ _L17188_)
                                     (let ((_body17199_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args17118_)
                                             _L17187_)))
                                       (cons _L17188_ _body17199_)))
                                   _tl1716917184_
                                   _hd1716817182_)))
                              (_g1716317174_ _g1716417177_)))))
                   (_g1716217201_ _clause17161_))))))
        (let ((_g1712217132_
               (lambda (_g1712317129_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1712317129_))))
          (let ((_g1712117158_
                 (lambda (_g1712317135_)
                   (if (gx#stx-pair? _g1712317135_)
                       (let ((_e1712517137_ (gx#stx-e _g1712317135_)))
                         (let ((_hd1712617140_ (##car _e1712517137_))
                               (_tl1712717142_ (##cdr _e1712517137_)))
                           ((lambda (_L17145_)
                              (let ((_clauses17156_
                                     (gx#stx-map1 _clause-e17120_ _L17145_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses17156_)
                                 _stx17117_)))
                            _tl1712717142_)))
                       (_g1712217132_ _g1712317135_)))))
            (_g1712117158_ _stx17117_))))))
  (define gxc#xform-let-values%
    (lambda (_stx16911_ . _args16912_)
      (let ((_g1691416947_
             (lambda (_g1691516944_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1691516944_))))
        (let ((_g1691317114_
               (lambda (_g1691516950_)
                 (if (gx#stx-pair? _g1691516950_)
                     (let ((_e1692016952_ (gx#stx-e _g1691516950_)))
                       (let ((_hd1692116955_ (##car _e1692016952_))
                             (_tl1692216957_ (##cdr _e1692016952_)))
                         (if (gx#stx-pair? _tl1692216957_)
                             (let ((_e1692316960_ (gx#stx-e _tl1692216957_)))
                               (let ((_hd1692416963_ (##car _e1692316960_))
                                     (_tl1692516965_ (##cdr _e1692316960_)))
                                 (if (gx#stx-pair/null? _hd1692416963_)
                                     (if (fx>= (gx#stx-length _hd1692416963_)
                                               '0)
                                         (let ((_g17815_
                                                (gx#syntax-split-splice
                                                 _hd1692416963_
                                                 '0)))
                                           (begin
                                             (let ((_g17816_
                                                    (values-count _g17815_)))
                                               (if (not (fx= _g17816_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17816_)))
                                             (let ((_target1692616968_
                                                    (values-ref _g17815_ 0))
                                                   (_tl1692816970_
                                                    (values-ref _g17815_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1692816970_)
                                                   (letrec ((_loop1692916973_
                                                             (lambda (_hd1692716976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1693316978_
                              _hd1693416980_)
                       (if (gx#stx-pair? _hd1692716976_)
                           (let ((_e1693016983_ (gx#stx-e _hd1692716976_)))
                             (let ((_lp-hd1693116986_ (##car _e1693016983_))
                                   (_lp-tl1693216988_ (##cdr _e1693016983_)))
                               (if (gx#stx-pair? _lp-hd1693116986_)
                                   (let ((_e1693716991_
                                          (gx#stx-e _lp-hd1693116986_)))
                                     (let ((_hd1693816994_
                                            (##car _e1693716991_))
                                           (_tl1693916996_
                                            (##cdr _e1693716991_)))
                                       (if (gx#stx-pair? _tl1693916996_)
                                           (let ((_e1694016999_
                                                  (gx#stx-e _tl1693916996_)))
                                             (let ((_hd1694117002_
                                                    (##car _e1694016999_))
                                                   (_tl1694217004_
                                                    (##cdr _e1694016999_)))
                                               (if (gx#stx-null?
                                                    _tl1694217004_)
                                                   (_loop1692916973_
                                                    _lp-tl1693216988_
                                                    (cons _hd1694117002_
                                                          _expr1693316978_)
                                                    (cons _hd1693816994_
                                                          _hd1693416980_))
                                                   (_g1691416947_
                                                    _g1691516950_))))
                                           (_g1691416947_ _g1691516950_))))
                                   (_g1691416947_ _g1691516950_))))
                           (let ((_expr1693517007_ (reverse _expr1693316978_))
                                 (_hd1693617009_ (reverse _hd1693416980_)))
                             ((lambda (_L17012_ _L17013_ _L17014_ _L17015_)
                                (let ((_g1703417050_
                                       (lambda (_g1703517047_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1703517047_))))
                                  (let ((_g1703317104_
                                         (lambda (_g1703517053_)
                                           (if (gx#stx-pair/null?
                                                _g1703517053_)
                                               (if (fx>= (gx#stx-length
                                                          _g1703517053_)
                                                         '0)
                                                   (let ((_g17817_
                                                          (gx#syntax-split-splice
                                                           _g1703517053_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17818_
                                                              (values-count
                                                               _g17817_)))
                                                         (if (not (fx= _g17818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g17818_)))
               (let ((_target1703717055_ (values-ref _g17817_ 0))
                     (_tl1703917057_ (values-ref _g17817_ 1)))
                 (if (gx#stx-null? _tl1703917057_)
                     (letrec ((_loop1704017060_
                               (lambda (_hd1703817063_ _expr1704417065_)
                                 (if (gx#stx-pair? _hd1703817063_)
                                     (let ((_e1704117068_
                                            (gx#syntax-e _hd1703817063_)))
                                       (let ((_lp-hd1704217071_
                                              (##car _e1704117068_))
                                             (_lp-tl1704317073_
                                              (##cdr _e1704117068_)))
                                         (_loop1704017060_
                                          _lp-tl1704317073_
                                          (cons _lp-hd1704217071_
                                                _expr1704417065_))))
                                     (let ((_expr1704517076_
                                            (reverse _expr1704417065_)))
                                       ((lambda (_L17079_)
                                          (let ()
                                            (let ((_body17092_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args16912_)
                                                    _L17012_)))
                                              (gxc#xform-wrap-source
                                               (cons _L17015_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L17079_
                                                              _L17014_)
                                                             (foldr (lambda (_g1709317097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1709417099_
                                     _g1709517101_)
                              (cons (cons _g1709417099_
                                          (cons _g1709317097_ '()))
                                    _g1709517101_))
                            '()
                            _L17079_
                            _L17014_))
                   _body17092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16911_))))
                                        _expr1704517076_))))))
                       (_loop1704017060_ _target1703717055_ '()))
                     (_g1703417050_ _g1703517053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1703417050_
                                                    _g1703517053_))
                                               (_g1703417050_
                                                _g1703517053_)))))
                                    (_g1703317104_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args16912_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1710617109_
                                                        _g1710717111_)
                                                 (cons _g1710617109_
                                                       _g1710717111_))
                                               '()
                                               _L17013_)))))))
                              _tl1692516965_
                              _expr1693517007_
                              _hd1693617009_
                              _hd1692116955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1692916973_
                                                      _target1692616968_
                                                      '()
                                                      '()))
                                                   (_g1691416947_
                                                    _g1691516950_)))))
                                         (_g1691416947_ _g1691516950_))
                                     (_g1691416947_ _g1691516950_))))
                             (_g1691416947_ _g1691516950_))))
                     (_g1691416947_ _g1691516950_)))))
          (_g1691317114_ _stx16911_)))))
  (define gxc#xform-call%
    (lambda (_stx16853_ . _args16854_)
      (let ((_g1685616870_
             (lambda (_g1685716867_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1685716867_))))
        (let ((_g1685516908_
               (lambda (_g1685716873_)
                 (if (gx#stx-pair? _g1685716873_)
                     (let ((_e1686016875_ (gx#stx-e _g1685716873_)))
                       (let ((_hd1686116878_ (##car _e1686016875_))
                             (_tl1686216880_ (##cdr _e1686016875_)))
                         (if (gx#stx-pair? _tl1686216880_)
                             (let ((_e1686316883_ (gx#stx-e _tl1686216880_)))
                               (let ((_hd1686416886_ (##car _e1686316883_))
                                     (_tl1686516888_ (##cdr _e1686316883_)))
                                 ((lambda (_L16891_ _L16892_)
                                    (let ((_rator16905_
                                           (apply gxc#compile-e
                                                  _L16892_
                                                  _args16854_))
                                          (_rands16906_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16854_)
                                            _L16891_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator16905_ _rands16906_))
                                       _stx16853_)))
                                  _tl1686516888_
                                  _hd1686416886_)))
                             (_g1685616870_ _g1685716873_))))
                     (_g1685616870_ _g1685716873_)))))
          (_g1685516908_ _stx16853_)))))
  (define gxc#xform-if%
    (lambda (_stx16812_ . _args16813_)
      (let ((_g1681516825_
             (lambda (_g1681616822_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1681616822_))))
        (let ((_g1681416850_
               (lambda (_g1681616828_)
                 (if (gx#stx-pair? _g1681616828_)
                     (let ((_e1681816830_ (gx#stx-e _g1681616828_)))
                       (let ((_hd1681916833_ (##car _e1681816830_))
                             (_tl1682016835_ (##cdr _e1681816830_)))
                         ((lambda (_L16838_)
                            (let ((_forms16848_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16813_)
                                    _L16838_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms16848_)
                               _stx16812_)))
                          _tl1682016835_)))
                     (_g1681516825_ _g1681616828_)))))
          (_g1681416850_ _stx16812_)))))
  (define gxc#xform-setq%
    (lambda (_stx16742_ . _args16743_)
      (let ((_g1674516762_
             (lambda (_g1674616759_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1674616759_))))
        (let ((_g1674416809_
               (lambda (_g1674616765_)
                 (if (gx#stx-pair? _g1674616765_)
                     (let ((_e1674916767_ (gx#stx-e _g1674616765_)))
                       (let ((_hd1675016770_ (##car _e1674916767_))
                             (_tl1675116772_ (##cdr _e1674916767_)))
                         (if (gx#stx-pair? _tl1675116772_)
                             (let ((_e1675216775_ (gx#stx-e _tl1675116772_)))
                               (let ((_hd1675316778_ (##car _e1675216775_))
                                     (_tl1675416780_ (##cdr _e1675216775_)))
                                 (if (gx#stx-pair? _tl1675416780_)
                                     (let ((_e1675516783_
                                            (gx#stx-e _tl1675416780_)))
                                       (let ((_hd1675616786_
                                              (##car _e1675516783_))
                                             (_tl1675716788_
                                              (##cdr _e1675516783_)))
                                         (if (gx#stx-null? _tl1675716788_)
                                             ((lambda (_L16791_ _L16792_)
                                                (let ((_expr16807_
                                                       (apply gxc#compile-e
                                                              _L16791_
                                                              _args16743_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L16792_
                                                               (cons _expr16807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16742_)))
                                              _hd1675616786_
                                              _hd1675316778_)
                                             (_g1674516762_ _g1674616765_))))
                                     (_g1674516762_ _g1674616765_))))
                             (_g1674516762_ _g1674616765_))))
                     (_g1674516762_ _g1674616765_)))))
          (_g1674416809_ _stx16742_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx16698_ . _args16699_)
      (let ((_g1670116712_
             (lambda (_g1670216709_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1670216709_))))
        (let ((_g1670016739_
               (lambda (_g1670216715_)
                 (if (gx#stx-pair? _g1670216715_)
                     (let ((_e1670516717_ (gx#stx-e _g1670216715_)))
                       (let ((_hd1670616720_ (##car _e1670516717_))
                             (_tl1670716722_ (##cdr _e1670516717_)))
                         ((lambda (_L16725_ _L16726_)
                            (let ((_op-args16737_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16699_)
                                    _L16725_)))
                              (gxc#xform-wrap-source
                               (cons _L16726_ _op-args16737_)
                               _stx16698_)))
                          _tl1670716722_
                          _hd1670616720_)))
                     (_g1670116712_ _g1670216715_)))))
          (_g1670016739_ _stx16698_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16629_)
      (let ((_g1663116648_
             (lambda (_g1663216645_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1663216645_))))
        (let ((_g1663016695_
               (lambda (_g1663216651_)
                 (if (gx#stx-pair? _g1663216651_)
                     (let ((_e1663516653_ (gx#stx-e _g1663216651_)))
                       (let ((_hd1663616656_ (##car _e1663516653_))
                             (_tl1663716658_ (##cdr _e1663516653_)))
                         (if (gx#stx-pair? _tl1663716658_)
                             (let ((_e1663816661_ (gx#stx-e _tl1663716658_)))
                               (let ((_hd1663916664_ (##car _e1663816661_))
                                     (_tl1664016666_ (##cdr _e1663816661_)))
                                 (if (gx#stx-pair? _tl1664016666_)
                                     (let ((_e1664116669_
                                            (gx#stx-e _tl1664016666_)))
                                       (let ((_hd1664216672_
                                              (##car _e1664116669_))
                                             (_tl1664316674_
                                              (##cdr _e1664116669_)))
                                         (if (gx#stx-null? _tl1664316674_)
                                             ((lambda (_L16677_ _L16678_)
                                                (let ((_sym16693_
                                                       (gxc#generate-runtime-binding-id
                                                        _L16678_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym16693_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym16693_
                                                     '#t)
                                                    (gxc#compile-e _L16677_))))
                                              _hd1664216672_
                                              _hd1663916664_)
                                             (_g1663116648_ _g1663216651_))))
                                     (_g1663116648_ _g1663216651_))))
                             (_g1663116648_ _g1663216651_))))
                     (_g1663116648_ _g1663216651_)))))
          (_g1663016695_ _stx16629_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form15863_)
      (let ((_g1586816025_
             (lambda (_g1586916022_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1586916022_))))
        (let ((_g1586716032_ (lambda (_g1586916028_) ((lambda () '#f)))))
          (let ((_g1586616172_
                 (lambda (_g1586916035_)
                   (if (gx#stx-pair? _g1586916035_)
                       (let ((_e1598516037_ (gx#stx-e _g1586916035_)))
                         (let ((_hd1598616040_ (##car _e1598516037_))
                               (_tl1598716042_ (##cdr _e1598516037_)))
                           (if (gx#stx-pair? _tl1598716042_)
                               (let ((_e1598816045_ (gx#stx-e _tl1598716042_)))
                                 (let ((_hd1598916048_ (##car _e1598816045_))
                                       (_tl1599016050_ (##cdr _e1598816045_)))
                                   (if (gx#stx-pair? _hd1598916048_)
                                       (let ((_e1599116053_
                                              (gx#stx-e _hd1598916048_)))
                                         (let ((_hd1599216056_
                                                (##car _e1599116053_))
                                               (_tl1599316058_
                                                (##cdr _e1599116053_)))
                                           (if (gx#identifier? _hd1599216056_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1599216056_)
                                                   (if (gx#stx-pair?
                                                        _tl1599316058_)
                                                       (let ((_e1599416061_
                                                              (gx#stx-e
                                                               _tl1599316058_)))
                                                         (let ((_hd1599516064_
                                                                (##car _e1599416061_))
                                                               (_tl1599616066_
                                                                (##cdr _e1599416061_)))
                                                           (if (gx#stx-pair?
                                                                _hd1599516064_)
                                                               (let ((_e1599716069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1599516064_)))
                         (let ((_hd1599816072_ (##car _e1599716069_))
                               (_tl1599916074_ (##cdr _e1599716069_)))
                           (if (gx#identifier? _hd1599816072_)
                               (if (gx#stx-eq? '%#ref _hd1599816072_)
                                   (if (gx#stx-pair? _tl1599916074_)
                                       (let ((_e1600016077_
                                              (gx#stx-e _tl1599916074_)))
                                         (let ((_hd1600116080_
                                                (##car _e1600016077_))
                                               (_tl1600216082_
                                                (##cdr _e1600016077_)))
                                           (if (gx#stx-null? _tl1600216082_)
                                               (if (gx#stx-pair?
                                                    _tl1599616066_)
                                                   (let ((_e1600316085_
                                                          (gx#stx-e
                                                           _tl1599616066_)))
                                                     (let ((_hd1600416088_
                                                            (##car _e1600316085_))
                                                           (_tl1600516090_
                                                            (##cdr _e1600316085_)))
                                                       (if (gx#stx-pair?
                                                            _hd1600416088_)
                                                           (let ((_e1600616093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1600416088_)))
                     (let ((_hd1600716096_ (##car _e1600616093_))
                           (_tl1600816098_ (##cdr _e1600616093_)))
                       (if (gx#identifier? _hd1600716096_)
                           (if (gx#stx-eq? '%#ref _hd1600716096_)
                               (if (gx#stx-pair? _tl1600816098_)
                                   (let ((_e1600916101_
                                          (gx#stx-e _tl1600816098_)))
                                     (let ((_hd1601016104_
                                            (##car _e1600916101_))
                                           (_tl1601116106_
                                            (##cdr _e1600916101_)))
                                       (if (gx#stx-null? _tl1601116106_)
                                           (if (gx#stx-pair? _tl1600516090_)
                                               (let ((_e1601216109_
                                                      (gx#stx-e
                                                       _tl1600516090_)))
                                                 (let ((_hd1601316112_
                                                        (##car _e1601216109_))
                                                       (_tl1601416114_
                                                        (##cdr _e1601216109_)))
                                                   (if (gx#stx-pair?
                                                        _hd1601316112_)
                                                       (let ((_e1601516117_
                                                              (gx#stx-e
                                                               _hd1601316112_)))
                                                         (let ((_hd1601616120_
                                                                (##car _e1601516117_))
                                                               (_tl1601716122_
                                                                (##cdr _e1601516117_)))
                                                           (if (gx#identifier?
                                                                _hd1601616120_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1601616120_)
                           (if (gx#stx-pair? _tl1601716122_)
                               (let ((_e1601816125_ (gx#stx-e _tl1601716122_)))
                                 (let ((_hd1601916128_ (##car _e1601816125_))
                                       (_tl1602016130_ (##cdr _e1601816125_)))
                                   (if (gx#stx-null? _tl1602016130_)
                                       (if (gx#stx-null? _tl1601416114_)
                                           (if (gx#stx-null? _tl1599016050_)
                                               ((lambda (_L16133_
                                                         _L16134_
                                                         _L16135_
                                                         _L16136_)
                                                  (if (if (gx#identifier?
                                                           _L16136_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16135_)
                           'apply)
                      (if (gx#free-identifier=? _L16136_ _L16133_)
                          (not (gx#free-identifier=? _L16134_ _L16136_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1586716032_ _g1586916035_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1601916128_
                                                _hd1601016104_
                                                _hd1600116080_
                                                _hd1598616040_)
                                               (_g1586716032_ _g1586916035_))
                                           (_g1586716032_ _g1586916035_))
                                       (_g1586716032_ _g1586916035_))))
                               (_g1586716032_ _g1586916035_))
                           (_g1586716032_ _g1586916035_))
                       (_g1586716032_ _g1586916035_))))
               (_g1586716032_ _g1586916035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1586716032_ _g1586916035_))
                                           (_g1586716032_ _g1586916035_))))
                                   (_g1586716032_ _g1586916035_))
                               (_g1586716032_ _g1586916035_))
                           (_g1586716032_ _g1586916035_))))
                   (_g1586716032_ _g1586916035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586716032_
                                                    _g1586916035_))
                                               (_g1586716032_ _g1586916035_))))
                                       (_g1586716032_ _g1586916035_))
                                   (_g1586716032_ _g1586916035_))
                               (_g1586716032_ _g1586916035_))))
                       (_g1586716032_ _g1586916035_))))
               (_g1586716032_ _g1586916035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586716032_
                                                    _g1586916035_))
                                               (_g1586716032_ _g1586916035_))))
                                       (_g1586716032_ _g1586916035_))))
                               (_g1586716032_ _g1586916035_))))
                       (_g1586716032_ _g1586916035_)))))
            (let ((_g1586516432_
                   (lambda (_g1586916175_)
                     (if (gx#stx-pair? _g1586916175_)
                         (let ((_e1592116177_ (gx#stx-e _g1586916175_)))
                           (let ((_hd1592216180_ (##car _e1592116177_))
                                 (_tl1592316182_ (##cdr _e1592116177_)))
                             (if (gx#stx-pair/null? _hd1592216180_)
                                 (if (fx>= (gx#stx-length _hd1592216180_) '0)
                                     (let ((_g17819_
                                            (gx#syntax-split-splice
                                             _hd1592216180_
                                             '0)))
                                       (begin
                                         (let ((_g17820_
                                                (values-count _g17819_)))
                                           (if (not (fx= _g17820_ 2))
                                               (error "Context expects 2 values"
                                                      _g17820_)))
                                         (let ((_target1592416185_
                                                (values-ref _g17819_ 0))
                                               (_tl1592616187_
                                                (values-ref _g17819_ 1)))
                                           (letrec ((_loop1592716190_
                                                     (lambda (_hd1592516193_
                                                              _arg1593116195_)
                                                       (if (gx#stx-pair?
                                                            _hd1592516193_)
                                                           (let ((_e1592816198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1592516193_)))
                     (let ((_lp-hd1592916201_ (##car _e1592816198_))
                           (_lp-tl1593016203_ (##cdr _e1592816198_)))
                       (_loop1592716190_
                        _lp-tl1593016203_
                        (cons _lp-hd1592916201_ _arg1593116195_))))
                   (let ((_arg1593216206_ (reverse _arg1593116195_)))
                     (if (gx#stx-pair? _tl1592316182_)
                         (let ((_e1593316209_ (gx#stx-e _tl1592316182_)))
                           (let ((_hd1593416212_ (##car _e1593316209_))
                                 (_tl1593516214_ (##cdr _e1593316209_)))
                             (if (gx#stx-pair? _hd1593416212_)
                                 (let ((_e1593616217_
                                        (gx#stx-e _hd1593416212_)))
                                   (let ((_hd1593716220_ (##car _e1593616217_))
                                         (_tl1593816222_
                                          (##cdr _e1593616217_)))
                                     (if (gx#identifier? _hd1593716220_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1593716220_)
                                             (if (gx#stx-pair? _tl1593816222_)
                                                 (let ((_e1593916225_
                                                        (gx#stx-e
                                                         _tl1593816222_)))
                                                   (let ((_hd1594016228_
                                                          (##car _e1593916225_))
                                                         (_tl1594116230_
                                                          (##cdr _e1593916225_)))
                                                     (if (gx#stx-pair?
                                                          _hd1594016228_)
                                                         (let ((_e1594216233_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1594016228_)))
                   (let ((_hd1594316236_ (##car _e1594216233_))
                         (_tl1594416238_ (##cdr _e1594216233_)))
                     (if (gx#identifier? _hd1594316236_)
                         (if (gx#stx-eq? '%#ref _hd1594316236_)
                             (if (gx#stx-pair? _tl1594416238_)
                                 (let ((_e1594516241_
                                        (gx#stx-e _tl1594416238_)))
                                   (let ((_hd1594616244_ (##car _e1594516241_))
                                         (_tl1594716246_
                                          (##cdr _e1594516241_)))
                                     (if (gx#stx-null? _tl1594716246_)
                                         (if (gx#stx-pair? _tl1594116230_)
                                             (let ((_e1594816249_
                                                    (gx#stx-e _tl1594116230_)))
                                               (let ((_hd1594916252_
                                                      (##car _e1594816249_))
                                                     (_tl1595016254_
                                                      (##cdr _e1594816249_)))
                                                 (if (gx#stx-pair?
                                                      _hd1594916252_)
                                                     (let ((_e1595116257_
                                                            (gx#stx-e
                                                             _hd1594916252_)))
                                                       (let ((_hd1595216260_
                                                              (##car _e1595116257_))
                                                             (_tl1595316262_
                                                              (##cdr _e1595116257_)))
                                                         (if (gx#identifier?
                                                              _hd1595216260_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1595216260_)
                         (if (gx#stx-pair? _tl1595316262_)
                             (let ((_e1595416265_ (gx#stx-e _tl1595316262_)))
                               (let ((_hd1595516268_ (##car _e1595416265_))
                                     (_tl1595616270_ (##cdr _e1595416265_)))
                                 (if (gx#stx-null? _tl1595616270_)
                                     (if (gx#stx-pair/null? _tl1595016254_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1595016254_)
                                                   '1)
                                             (let ((_g17821_
                                                    (gx#syntax-split-splice
                                                     _tl1595016254_
                                                     '1)))
                                               (begin
                                                 (let ((_g17822_
                                                        (values-count
                                                         _g17821_)))
                                                   (if (not (fx= _g17822_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17822_)))
                                                 (let ((_target1595716273_
                                                        (values-ref
                                                         _g17821_
                                                         0))
                                                       (_tl1595916275_
                                                        (values-ref
                                                         _g17821_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1595916275_)
                                                       (let ((_e1596616278_
                                                              (gx#stx-e
                                                               _tl1595916275_)))
                                                         (let ((_hd1596716281_
                                                                (##car _e1596616278_))
                                                               (_tl1596816283_
                                                                (##cdr _e1596616278_)))
                                                           (if (gx#stx-pair?
                                                                _hd1596716281_)
                                                               (let ((_e1596916286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1596716281_)))
                         (let ((_hd1597016289_ (##car _e1596916286_))
                               (_tl1597116291_ (##cdr _e1596916286_)))
                           (if (gx#identifier? _hd1597016289_)
                               (if (gx#stx-eq? '%#ref _hd1597016289_)
                                   (if (gx#stx-pair? _tl1597116291_)
                                       (let ((_e1597216294_
                                              (gx#stx-e _tl1597116291_)))
                                         (let ((_hd1597316297_
                                                (##car _e1597216294_))
                                               (_tl1597416299_
                                                (##cdr _e1597216294_)))
                                           (if (gx#stx-null? _tl1597416299_)
                                               (if (gx#stx-null?
                                                    _tl1596816283_)
                                                   (letrec ((_loop1596016302_
                                                             (lambda (_hd1595816305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1596416307_)
                       (if (gx#stx-pair? _hd1595816305_)
                           (let ((_e1596116310_ (gx#stx-e _hd1595816305_)))
                             (let ((_lp-hd1596216313_ (##car _e1596116310_))
                                   (_lp-tl1596316315_ (##cdr _e1596116310_)))
                               (if (gx#stx-pair? _lp-hd1596216313_)
                                   (let ((_e1597516318_
                                          (gx#stx-e _lp-hd1596216313_)))
                                     (let ((_hd1597616321_
                                            (##car _e1597516318_))
                                           (_tl1597716323_
                                            (##cdr _e1597516318_)))
                                       (if (gx#identifier? _hd1597616321_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1597616321_)
                                               (if (gx#stx-pair?
                                                    _tl1597716323_)
                                                   (let ((_e1597816326_
                                                          (gx#stx-e
                                                           _tl1597716323_)))
                                                     (let ((_hd1597916329_
                                                            (##car _e1597816326_))
                                                           (_tl1598016331_
                                                            (##cdr _e1597816326_)))
                                                       (if (gx#stx-null?
                                                            _tl1598016331_)
                                                           (_loop1596016302_
                                                            _lp-tl1596316315_
                                                            (cons _hd1597916329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1596416307_))
                   (_g1586616172_ _g1586916175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586616172_
                                                    _g1586916175_))
                                               (_g1586616172_ _g1586916175_))
                                           (_g1586616172_ _g1586916175_))))
                                   (_g1586616172_ _g1586916175_))))
                           (let ((_xarg1596516334_ (reverse _xarg1596416307_)))
                             (if (gx#stx-null? _tl1593516214_)
                                 ((lambda (_L16337_
                                           _L16338_
                                           _L16339_
                                           _L16340_
                                           _L16341_
                                           _L16342_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1638516388_
                                                               _g1638616390_)
                                                        (cons _g1638516388_
                                                              _g1638616390_))
                                                      '()
                                                      _L16342_)))
                                            (if (gx#identifier? _L16341_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L16340_)
                                                         'apply)
                                                    (if (fx= (gx#stx-length
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1639216395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1639316397_)
                                 (cons _g1639216395_ _g1639316397_))
                               '()
                               _L16342_)))
                     (gx#stx-length
                      (begin
                        '#!void
                        (foldr (lambda (_g1639916402_ _g1640016404_)
                                 (cons _g1639916402_ _g1640016404_))
                               '()
                               _L16338_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr (lambda (_g1640616409_ _g1640716411_)
                                       (cons _g1640616409_ _g1640716411_))
                                     '()
                                     _L16342_))
                            (begin
                              '#!void
                              (foldr (lambda (_g1641316416_ _g1641416418_)
                                       (cons _g1641316416_ _g1641416418_))
                                     '()
                                     _L16338_)))
                    (if (gx#free-identifier=? _L16341_ _L16337_)
                        (not (find (lambda (_g1642016422_)
                                     (gx#free-identifier=?
                                      _g1642016422_
                                      _L16339_))
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1642416427_
                                                     _g1642516429_)
                                              (cons _g1642416427_
                                                    _g1642516429_))
                                            (cons _L16341_ '())
                                            _L16342_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1586616172_ _g1586916175_)))
                                  _hd1597316297_
                                  _xarg1596516334_
                                  _hd1595516268_
                                  _hd1594616244_
                                  _tl1592616187_
                                  _arg1593216206_)
                                 (_g1586616172_ _g1586916175_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1596016302_
                                                      _target1595716273_
                                                      '()))
                                                   (_g1586616172_
                                                    _g1586916175_))
                                               (_g1586616172_ _g1586916175_))))
                                       (_g1586616172_ _g1586916175_))
                                   (_g1586616172_ _g1586916175_))
                               (_g1586616172_ _g1586916175_))))
                       (_g1586616172_ _g1586916175_))))
               (_g1586616172_ _g1586916175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1586616172_ _g1586916175_))
                                         (_g1586616172_ _g1586916175_))
                                     (_g1586616172_ _g1586916175_))))
                             (_g1586616172_ _g1586916175_))
                         (_g1586616172_ _g1586916175_))
                     (_g1586616172_ _g1586916175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1586616172_
                                                      _g1586916175_))))
                                             (_g1586616172_ _g1586916175_))
                                         (_g1586616172_ _g1586916175_))))
                                 (_g1586616172_ _g1586916175_))
                             (_g1586616172_ _g1586916175_))
                         (_g1586616172_ _g1586916175_))))
                 (_g1586616172_ _g1586916175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1586616172_ _g1586916175_))
                                             (_g1586616172_ _g1586916175_))
                                         (_g1586616172_ _g1586916175_))))
                                 (_g1586616172_ _g1586916175_))))
                         (_g1586616172_ _g1586916175_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1592716190_
                                              _target1592416185_
                                              '())))))
                                     (_g1586616172_ _g1586916175_))
                                 (_g1586616172_ _g1586916175_))))
                         (_g1586616172_ _g1586916175_)))))
              (let ((_g1586416626_
                     (lambda (_g1586916435_)
                       (if (gx#stx-pair? _g1586916435_)
                           (let ((_e1587316437_ (gx#stx-e _g1586916435_)))
                             (let ((_hd1587416440_ (##car _e1587316437_))
                                   (_tl1587516442_ (##cdr _e1587316437_)))
                               (if (gx#stx-pair/null? _hd1587416440_)
                                   (if (fx>= (gx#stx-length _hd1587416440_) '0)
                                       (let ((_g17823_
                                              (gx#syntax-split-splice
                                               _hd1587416440_
                                               '0)))
                                         (begin
                                           (let ((_g17824_
                                                  (values-count _g17823_)))
                                             (if (not (fx= _g17824_ 2))
                                                 (error "Context expects 2 values"
                                                        _g17824_)))
                                           (let ((_target1587616445_
                                                  (values-ref _g17823_ 0))
                                                 (_tl1587816447_
                                                  (values-ref _g17823_ 1)))
                                             (if (gx#stx-null? _tl1587816447_)
                                                 (letrec ((_loop1587916450_
                                                           (lambda (_hd1587716453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1588316455_)
                     (if (gx#stx-pair? _hd1587716453_)
                         (let ((_e1588016458_ (gx#stx-e _hd1587716453_)))
                           (let ((_lp-hd1588116461_ (##car _e1588016458_))
                                 (_lp-tl1588216463_ (##cdr _e1588016458_)))
                             (_loop1587916450_
                              _lp-tl1588216463_
                              (cons _lp-hd1588116461_ _arg1588316455_))))
                         (let ((_arg1588416466_ (reverse _arg1588316455_)))
                           (if (gx#stx-pair? _tl1587516442_)
                               (let ((_e1588516469_ (gx#stx-e _tl1587516442_)))
                                 (let ((_hd1588616472_ (##car _e1588516469_))
                                       (_tl1588716474_ (##cdr _e1588516469_)))
                                   (if (gx#stx-pair? _hd1588616472_)
                                       (let ((_e1588816477_
                                              (gx#stx-e _hd1588616472_)))
                                         (let ((_hd1588916480_
                                                (##car _e1588816477_))
                                               (_tl1589016482_
                                                (##cdr _e1588816477_)))
                                           (if (gx#identifier? _hd1588916480_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1588916480_)
                                                   (if (gx#stx-pair?
                                                        _tl1589016482_)
                                                       (let ((_e1589116485_
                                                              (gx#stx-e
                                                               _tl1589016482_)))
                                                         (let ((_hd1589216488_
                                                                (##car _e1589116485_))
                                                               (_tl1589316490_
                                                                (##cdr _e1589116485_)))
                                                           (if (gx#stx-pair?
                                                                _hd1589216488_)
                                                               (let ((_e1589416493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1589216488_)))
                         (let ((_hd1589516496_ (##car _e1589416493_))
                               (_tl1589616498_ (##cdr _e1589416493_)))
                           (if (gx#identifier? _hd1589516496_)
                               (if (gx#stx-eq? '%#ref _hd1589516496_)
                                   (if (gx#stx-pair? _tl1589616498_)
                                       (let ((_e1589716501_
                                              (gx#stx-e _tl1589616498_)))
                                         (let ((_hd1589816504_
                                                (##car _e1589716501_))
                                               (_tl1589916506_
                                                (##cdr _e1589716501_)))
                                           (if (gx#stx-null? _tl1589916506_)
                                               (if (gx#stx-pair/null?
                                                    _tl1589316490_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1589316490_)
                                                             '0)
                                                       (let ((_g17825_
                                                              (gx#syntax-split-splice
                                                               _tl1589316490_
                                                               '0)))
                                                         (begin
                                                           (let ((_g17826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g17825_)))
                     (if (not (fx= _g17826_ 2))
                         (error "Context expects 2 values" _g17826_)))
                   (let ((_target1590016509_ (values-ref _g17825_ 0))
                         (_tl1590216511_ (values-ref _g17825_ 1)))
                     (if (gx#stx-null? _tl1590216511_)
                         (letrec ((_loop1590316514_
                                   (lambda (_hd1590116517_ _xarg1590716519_)
                                     (if (gx#stx-pair? _hd1590116517_)
                                         (let ((_e1590416522_
                                                (gx#stx-e _hd1590116517_)))
                                           (let ((_lp-hd1590516525_
                                                  (##car _e1590416522_))
                                                 (_lp-tl1590616527_
                                                  (##cdr _e1590416522_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1590516525_)
                                                 (let ((_e1590916530_
                                                        (gx#stx-e
                                                         _lp-hd1590516525_)))
                                                   (let ((_hd1591016533_
                                                          (##car _e1590916530_))
                                                         (_tl1591116535_
                                                          (##cdr _e1590916530_)))
                                                     (if (gx#identifier?
                                                          _hd1591016533_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1591016533_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1591116535_)
                         (let ((_e1591216538_ (gx#stx-e _tl1591116535_)))
                           (let ((_hd1591316541_ (##car _e1591216538_))
                                 (_tl1591416543_ (##cdr _e1591216538_)))
                             (if (gx#stx-null? _tl1591416543_)
                                 (_loop1590316514_
                                  _lp-tl1590616527_
                                  (cons _hd1591316541_ _xarg1590716519_))
                                 (_g1586516432_ _g1586916435_))))
                         (_g1586516432_ _g1586916435_))
                     (_g1586516432_ _g1586916435_))
                 (_g1586516432_ _g1586916435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1586516432_
                                                  _g1586916435_))))
                                         (let ((_xarg1590816546_
                                                (reverse _xarg1590716519_)))
                                           (if (gx#stx-null? _tl1588716474_)
                                               ((lambda (_L16549_
                                                         _L16550_
                                                         _L16551_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1657916582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1658016584_)
                              (cons _g1657916582_ _g1658016584_))
                            '()
                            _L16551_)))
                  (if (fx= (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1658616589_ _g1658716591_)
                                       (cons _g1658616589_ _g1658716591_))
                                     '()
                                     _L16551_)))
                           (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1659316596_ _g1659416598_)
                                       (cons _g1659316596_ _g1659416598_))
                                     '()
                                     _L16549_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1660016603_
                                                    _g1660116605_)
                                             (cons _g1660016603_
                                                   _g1660116605_))
                                           '()
                                           _L16551_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1660716610_
                                                    _g1660816612_)
                                             (cons _g1660716610_
                                                   _g1660816612_))
                                           '()
                                           _L16549_)))
                          (not (find (lambda (_g1661416616_)
                                       (gx#free-identifier=?
                                        _g1661416616_
                                        _L16550_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1661816621_
                                                       _g1661916623_)
                                                (cons _g1661816621_
                                                      _g1661916623_))
                                              '()
                                              _L16551_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1586516432_ _g1586916435_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1590816546_
                                                _hd1589816504_
                                                _arg1588416466_)
                                               (_g1586516432_
                                                _g1586916435_)))))))
                           (_loop1590316514_ _target1590016509_ '()))
                         (_g1586516432_ _g1586916435_)))))
               (_g1586516432_ _g1586916435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586516432_
                                                    _g1586916435_))
                                               (_g1586516432_ _g1586916435_))))
                                       (_g1586516432_ _g1586916435_))
                                   (_g1586516432_ _g1586916435_))
                               (_g1586516432_ _g1586916435_))))
                       (_g1586516432_ _g1586916435_))))
               (_g1586516432_ _g1586916435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586516432_
                                                    _g1586916435_))
                                               (_g1586516432_ _g1586916435_))))
                                       (_g1586516432_ _g1586916435_))))
                               (_g1586516432_ _g1586916435_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1587916450_
                                                    _target1587616445_
                                                    '()))
                                                 (_g1586516432_
                                                  _g1586916435_)))))
                                       (_g1586516432_ _g1586916435_))
                                   (_g1586516432_ _g1586916435_))))
                           (_g1586516432_ _g1586916435_)))))
                (_g1586416626_ _form15863_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form15331_)
      (let ((_g1533515459_
             (lambda (_g1533615456_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1533615456_))))
        (let ((_g1533415576_
               (lambda (_g1533615462_)
                 (if (gx#stx-pair? _g1533615462_)
                     (let ((_e1542515464_ (gx#stx-e _g1533615462_)))
                       (let ((_hd1542615467_ (##car _e1542515464_))
                             (_tl1542715469_ (##cdr _e1542515464_)))
                         (if (gx#stx-pair? _tl1542715469_)
                             (let ((_e1542815472_ (gx#stx-e _tl1542715469_)))
                               (let ((_hd1542915475_ (##car _e1542815472_))
                                     (_tl1543015477_ (##cdr _e1542815472_)))
                                 (if (gx#stx-pair? _hd1542915475_)
                                     (let ((_e1543115480_
                                            (gx#stx-e _hd1542915475_)))
                                       (let ((_hd1543215483_
                                              (##car _e1543115480_))
                                             (_tl1543315485_
                                              (##cdr _e1543115480_)))
                                         (if (gx#identifier? _hd1543215483_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1543215483_)
                                                 (if (gx#stx-pair?
                                                      _tl1543315485_)
                                                     (let ((_e1543415488_
                                                            (gx#stx-e
                                                             _tl1543315485_)))
                                                       (let ((_hd1543515491_
                                                              (##car _e1543415488_))
                                                             (_tl1543615493_
                                                              (##cdr _e1543415488_)))
                                                         (if (gx#stx-pair?
                                                              _hd1543515491_)
                                                             (let ((_e1543715496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1543515491_)))
                       (let ((_hd1543815499_ (##car _e1543715496_))
                             (_tl1543915501_ (##cdr _e1543715496_)))
                         (if (gx#identifier? _hd1543815499_)
                             (if (gx#stx-eq? '%#ref _hd1543815499_)
                                 (if (gx#stx-pair? _tl1543915501_)
                                     (let ((_e1544015504_
                                            (gx#stx-e _tl1543915501_)))
                                       (let ((_hd1544115507_
                                              (##car _e1544015504_))
                                             (_tl1544215509_
                                              (##cdr _e1544015504_)))
                                         (if (gx#stx-null? _tl1544215509_)
                                             (if (gx#stx-pair? _tl1543615493_)
                                                 (let ((_e1544315512_
                                                        (gx#stx-e
                                                         _tl1543615493_)))
                                                   (let ((_hd1544415515_
                                                          (##car _e1544315512_))
                                                         (_tl1544515517_
                                                          (##cdr _e1544315512_)))
                                                     (if (gx#stx-pair?
                                                          _hd1544415515_)
                                                         (let ((_e1544615520_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1544415515_)))
                   (let ((_hd1544715523_ (##car _e1544615520_))
                         (_tl1544815525_ (##cdr _e1544615520_)))
                     (if (gx#identifier? _hd1544715523_)
                         (if (gx#stx-eq? '%#ref _hd1544715523_)
                             (if (gx#stx-pair? _tl1544815525_)
                                 (let ((_e1544915528_
                                        (gx#stx-e _tl1544815525_)))
                                   (let ((_hd1545015531_ (##car _e1544915528_))
                                         (_tl1545115533_
                                          (##cdr _e1544915528_)))
                                     (if (gx#stx-null? _tl1545115533_)
                                         (if (gx#stx-pair? _tl1544515517_)
                                             (let ((_e1545215536_
                                                    (gx#stx-e _tl1544515517_)))
                                               (let ((_hd1545315539_
                                                      (##car _e1545215536_))
                                                     (_tl1545415541_
                                                      (##cdr _e1545215536_)))
                                                 (if (gx#stx-null?
                                                      _tl1545415541_)
                                                     (if (gx#stx-null?
                                                          _tl1543015477_)
                                                         ((lambda (_L15544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15545_
                           _L15546_)
                    (gxc#generate-runtime-binding-id _L15544_))
                  _hd1545015531_
                  _hd1544115507_
                  _hd1542615467_)
                 (_g1533515459_ _g1533615462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533515459_
                                                      _g1533615462_))))
                                             (_g1533515459_ _g1533615462_))
                                         (_g1533515459_ _g1533615462_))))
                                 (_g1533515459_ _g1533615462_))
                             (_g1533515459_ _g1533615462_))
                         (_g1533515459_ _g1533615462_))))
                 (_g1533515459_ _g1533615462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1533515459_ _g1533615462_))
                                             (_g1533515459_ _g1533615462_))))
                                     (_g1533515459_ _g1533615462_))
                                 (_g1533515459_ _g1533615462_))
                             (_g1533515459_ _g1533615462_))))
                     (_g1533515459_ _g1533615462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533515459_
                                                      _g1533615462_))
                                                 (_g1533515459_ _g1533615462_))
                                             (_g1533515459_ _g1533615462_))))
                                     (_g1533515459_ _g1533615462_))))
                             (_g1533515459_ _g1533615462_))))
                     (_g1533515459_ _g1533615462_)))))
          (let ((_g1533315712_
                 (lambda (_g1533615579_)
                   (if (gx#stx-pair? _g1533615579_)
                       (let ((_e1538615581_ (gx#stx-e _g1533615579_)))
                         (let ((_hd1538715584_ (##car _e1538615581_))
                               (_tl1538815586_ (##cdr _e1538615581_)))
                           (if (gx#stx-pair/null? _hd1538715584_)
                               (if (fx>= (gx#stx-length _hd1538715584_) '0)
                                   (let ((_g17827_
                                          (gx#syntax-split-splice
                                           _hd1538715584_
                                           '0)))
                                     (begin
                                       (let ((_g17828_
                                              (values-count _g17827_)))
                                         (if (not (fx= _g17828_ 2))
                                             (error "Context expects 2 values"
                                                    _g17828_)))
                                       (let ((_target1538915589_
                                              (values-ref _g17827_ 0))
                                             (_tl1539115591_
                                              (values-ref _g17827_ 1)))
                                         (letrec ((_loop1539215594_
                                                   (lambda (_hd1539015597_
                                                            _arg1539615599_)
                                                     (if (gx#stx-pair?
                                                          _hd1539015597_)
                                                         (let ((_e1539315602_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1539015597_)))
                   (let ((_lp-hd1539415605_ (##car _e1539315602_))
                         (_lp-tl1539515607_ (##cdr _e1539315602_)))
                     (_loop1539215594_
                      _lp-tl1539515607_
                      (cons _lp-hd1539415605_ _arg1539615599_))))
                 (let ((_arg1539715610_ (reverse _arg1539615599_)))
                   (if (gx#stx-pair? _tl1538815586_)
                       (let ((_e1539815613_ (gx#stx-e _tl1538815586_)))
                         (let ((_hd1539915616_ (##car _e1539815613_))
                               (_tl1540015618_ (##cdr _e1539815613_)))
                           (if (gx#stx-pair? _hd1539915616_)
                               (let ((_e1540115621_ (gx#stx-e _hd1539915616_)))
                                 (let ((_hd1540215624_ (##car _e1540115621_))
                                       (_tl1540315626_ (##cdr _e1540115621_)))
                                   (if (gx#identifier? _hd1540215624_)
                                       (if (gx#stx-eq? '%#call _hd1540215624_)
                                           (if (gx#stx-pair? _tl1540315626_)
                                               (let ((_e1540415629_
                                                      (gx#stx-e
                                                       _tl1540315626_)))
                                                 (let ((_hd1540515632_
                                                        (##car _e1540415629_))
                                                       (_tl1540615634_
                                                        (##cdr _e1540415629_)))
                                                   (if (gx#stx-pair?
                                                        _hd1540515632_)
                                                       (let ((_e1540715637_
                                                              (gx#stx-e
                                                               _hd1540515632_)))
                                                         (let ((_hd1540815640_
                                                                (##car _e1540715637_))
                                                               (_tl1540915642_
                                                                (##cdr _e1540715637_)))
                                                           (if (gx#identifier?
                                                                _hd1540815640_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1540815640_)
                           (if (gx#stx-pair? _tl1540915642_)
                               (let ((_e1541015645_ (gx#stx-e _tl1540915642_)))
                                 (let ((_hd1541115648_ (##car _e1541015645_))
                                       (_tl1541215650_ (##cdr _e1541015645_)))
                                   (if (gx#stx-null? _tl1541215650_)
                                       (if (gx#stx-pair? _tl1540615634_)
                                           (let ((_e1541315653_
                                                  (gx#stx-e _tl1540615634_)))
                                             (let ((_hd1541415656_
                                                    (##car _e1541315653_))
                                                   (_tl1541515658_
                                                    (##cdr _e1541315653_)))
                                               (if (gx#stx-pair?
                                                    _hd1541415656_)
                                                   (let ((_e1541615661_
                                                          (gx#stx-e
                                                           _hd1541415656_)))
                                                     (let ((_hd1541715664_
                                                            (##car _e1541615661_))
                                                           (_tl1541815666_
                                                            (##cdr _e1541615661_)))
                                                       (if (gx#identifier?
                                                            _hd1541715664_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1541715664_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1541815666_)
                           (let ((_e1541915669_ (gx#stx-e _tl1541815666_)))
                             (let ((_hd1542015672_ (##car _e1541915669_))
                                   (_tl1542115674_ (##cdr _e1541915669_)))
                               (if (gx#stx-null? _tl1542115674_)
                                   (if (gx#stx-null? _tl1540015618_)
                                       ((lambda (_L15677_
                                                 _L15678_
                                                 _L15679_
                                                 _L15680_)
                                          (gxc#generate-runtime-binding-id
                                           _L15677_))
                                        _hd1542015672_
                                        _hd1541115648_
                                        _tl1539115591_
                                        _arg1539715610_)
                                       (_g1533415576_ _g1533615579_))
                                   (_g1533415576_ _g1533615579_))))
                           (_g1533415576_ _g1533615579_))
                       (_g1533415576_ _g1533615579_))
                   (_g1533415576_ _g1533615579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1533415576_
                                                    _g1533615579_))))
                                           (_g1533415576_ _g1533615579_))
                                       (_g1533415576_ _g1533615579_))))
                               (_g1533415576_ _g1533615579_))
                           (_g1533415576_ _g1533615579_))
                       (_g1533415576_ _g1533615579_))))
               (_g1533415576_ _g1533615579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1533415576_ _g1533615579_))
                                           (_g1533415576_ _g1533615579_))
                                       (_g1533415576_ _g1533615579_))))
                               (_g1533415576_ _g1533615579_))))
                       (_g1533415576_ _g1533615579_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1539215594_
                                            _target1538915589_
                                            '())))))
                                   (_g1533415576_ _g1533615579_))
                               (_g1533415576_ _g1533615579_))))
                       (_g1533415576_ _g1533615579_)))))
            (let ((_g1533215860_
                   (lambda (_g1533615715_)
                     (if (gx#stx-pair? _g1533615715_)
                         (let ((_e1534015717_ (gx#stx-e _g1533615715_)))
                           (let ((_hd1534115720_ (##car _e1534015717_))
                                 (_tl1534215722_ (##cdr _e1534015717_)))
                             (if (gx#stx-pair/null? _hd1534115720_)
                                 (if (fx>= (gx#stx-length _hd1534115720_) '0)
                                     (let ((_g17829_
                                            (gx#syntax-split-splice
                                             _hd1534115720_
                                             '0)))
                                       (begin
                                         (let ((_g17830_
                                                (values-count _g17829_)))
                                           (if (not (fx= _g17830_ 2))
                                               (error "Context expects 2 values"
                                                      _g17830_)))
                                         (let ((_target1534315725_
                                                (values-ref _g17829_ 0))
                                               (_tl1534515727_
                                                (values-ref _g17829_ 1)))
                                           (if (gx#stx-null? _tl1534515727_)
                                               (letrec ((_loop1534615730_
                                                         (lambda (_hd1534415733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1535015735_)
                   (if (gx#stx-pair? _hd1534415733_)
                       (let ((_e1534715738_ (gx#stx-e _hd1534415733_)))
                         (let ((_lp-hd1534815741_ (##car _e1534715738_))
                               (_lp-tl1534915743_ (##cdr _e1534715738_)))
                           (_loop1534615730_
                            _lp-tl1534915743_
                            (cons _lp-hd1534815741_ _arg1535015735_))))
                       (let ((_arg1535115746_ (reverse _arg1535015735_)))
                         (if (gx#stx-pair? _tl1534215722_)
                             (let ((_e1535215749_ (gx#stx-e _tl1534215722_)))
                               (let ((_hd1535315752_ (##car _e1535215749_))
                                     (_tl1535415754_ (##cdr _e1535215749_)))
                                 (if (gx#stx-pair? _hd1535315752_)
                                     (let ((_e1535515757_
                                            (gx#stx-e _hd1535315752_)))
                                       (let ((_hd1535615760_
                                              (##car _e1535515757_))
                                             (_tl1535715762_
                                              (##cdr _e1535515757_)))
                                         (if (gx#identifier? _hd1535615760_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1535615760_)
                                                 (if (gx#stx-pair?
                                                      _tl1535715762_)
                                                     (let ((_e1535815765_
                                                            (gx#stx-e
                                                             _tl1535715762_)))
                                                       (let ((_hd1535915768_
                                                              (##car _e1535815765_))
                                                             (_tl1536015770_
                                                              (##cdr _e1535815765_)))
                                                         (if (gx#stx-pair?
                                                              _hd1535915768_)
                                                             (let ((_e1536115773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1535915768_)))
                       (let ((_hd1536215776_ (##car _e1536115773_))
                             (_tl1536315778_ (##cdr _e1536115773_)))
                         (if (gx#identifier? _hd1536215776_)
                             (if (gx#stx-eq? '%#ref _hd1536215776_)
                                 (if (gx#stx-pair? _tl1536315778_)
                                     (let ((_e1536415781_
                                            (gx#stx-e _tl1536315778_)))
                                       (let ((_hd1536515784_
                                              (##car _e1536415781_))
                                             (_tl1536615786_
                                              (##cdr _e1536415781_)))
                                         (if (gx#stx-null? _tl1536615786_)
                                             (if (gx#stx-pair/null?
                                                  _tl1536015770_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1536015770_)
                                                           '0)
                                                     (let ((_g17831_
                                                            (gx#syntax-split-splice
                                                             _tl1536015770_
                                                             '0)))
                                                       (begin
                                                         (let ((_g17832_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g17831_)))
                   (if (not (fx= _g17832_ 2))
                       (error "Context expects 2 values" _g17832_)))
                 (let ((_target1536715789_ (values-ref _g17831_ 0))
                       (_tl1536915791_ (values-ref _g17831_ 1)))
                   (if (gx#stx-null? _tl1536915791_)
                       (letrec ((_loop1537015794_
                                 (lambda (_hd1536815797_ _xarg1537415799_)
                                   (if (gx#stx-pair? _hd1536815797_)
                                       (let ((_e1537115802_
                                              (gx#stx-e _hd1536815797_)))
                                         (let ((_lp-hd1537215805_
                                                (##car _e1537115802_))
                                               (_lp-tl1537315807_
                                                (##cdr _e1537115802_)))
                                           (if (gx#stx-pair? _lp-hd1537215805_)
                                               (let ((_e1537615810_
                                                      (gx#stx-e
                                                       _lp-hd1537215805_)))
                                                 (let ((_hd1537715813_
                                                        (##car _e1537615810_))
                                                       (_tl1537815815_
                                                        (##cdr _e1537615810_)))
                                                   (if (gx#identifier?
                                                        _hd1537715813_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1537715813_)
                                                           (if (gx#stx-pair?
                                                                _tl1537815815_)
                                                               (let ((_e1537915818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1537815815_)))
                         (let ((_hd1538015821_ (##car _e1537915818_))
                               (_tl1538115823_ (##cdr _e1537915818_)))
                           (if (gx#stx-null? _tl1538115823_)
                               (_loop1537015794_
                                _lp-tl1537315807_
                                (cons _hd1538015821_ _xarg1537415799_))
                               (_g1533315712_ _g1533615715_))))
                       (_g1533315712_ _g1533615715_))
                   (_g1533315712_ _g1533615715_))
               (_g1533315712_ _g1533615715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1533315712_ _g1533615715_))))
                                       (let ((_xarg1537515826_
                                              (reverse _xarg1537415799_)))
                                         (if (gx#stx-null? _tl1535415754_)
                                             ((lambda (_L15829_
                                                       _L15830_
                                                       _L15831_)
                                                (gxc#generate-runtime-binding-id
                                                 _L15830_))
                                              _xarg1537515826_
                                              _hd1536515784_
                                              _arg1535115746_)
                                             (_g1533315712_
                                              _g1533615715_)))))))
                         (_loop1537015794_ _target1536715789_ '()))
                       (_g1533315712_ _g1533615715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533315712_
                                                      _g1533615715_))
                                                 (_g1533315712_ _g1533615715_))
                                             (_g1533315712_ _g1533615715_))))
                                     (_g1533315712_ _g1533615715_))
                                 (_g1533315712_ _g1533615715_))
                             (_g1533315712_ _g1533615715_))))
                     (_g1533315712_ _g1533615715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533315712_
                                                      _g1533615715_))
                                                 (_g1533315712_ _g1533615715_))
                                             (_g1533315712_ _g1533615715_))))
                                     (_g1533315712_ _g1533615715_))))
                             (_g1533315712_ _g1533615715_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1534615730_
                                                  _target1534315725_
                                                  '()))
                                               (_g1533315712_
                                                _g1533615715_)))))
                                     (_g1533315712_ _g1533615715_))
                                 (_g1533315712_ _g1533615715_))))
                         (_g1533315712_ _g1533615715_)))))
              (_g1533215860_ _form15331_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form15174_)
      (let ((_g1517815209_
             (lambda (_g1517915206_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1517915206_))))
        (let ((_g1517715222_
               (lambda (_g1517915212_)
                 ((lambda (_L15214_) (cons '0 '())) _g1517915212_))))
          (let ((_g1517615271_
                 (lambda (_g1517915225_)
                   (if (gx#stx-pair/null? _g1517915225_)
                       (if (fx>= (gx#stx-length _g1517915225_) '0)
                           (let ((_g17833_
                                  (gx#syntax-split-splice _g1517915225_ '0)))
                             (begin
                               (let ((_g17834_ (values-count _g17833_)))
                                 (if (not (fx= _g17834_ 2))
                                     (error "Context expects 2 values"
                                            _g17834_)))
                               (let ((_target1519515227_
                                      (values-ref _g17833_ 0))
                                     (_tl1519715229_ (values-ref _g17833_ 1)))
                                 (letrec ((_loop1519815232_
                                           (lambda (_hd1519615235_
                                                    _arg1520215237_)
                                             (if (gx#stx-pair? _hd1519615235_)
                                                 (let ((_e1519915240_
                                                        (gx#stx-e
                                                         _hd1519615235_)))
                                                   (let ((_lp-hd1520015243_
                                                          (##car _e1519915240_))
                                                         (_lp-tl1520115245_
                                                          (##cdr _e1519915240_)))
                                                     (_loop1519815232_
                                                      _lp-tl1520115245_
                                                      (cons _lp-hd1520015243_
                                                            _arg1520215237_))))
                                                 (let ((_arg1520315248_
                                                        (reverse _arg1520215237_)))
                                                   ((lambda (_L15251_ _L15252_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1526315266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1526415268_)
                                (cons _g1526315266_ _g1526415268_))
                              '()
                              _L15252_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1519715229_
                                                    _arg1520315248_))))))
                                   (_loop1519815232_
                                    _target1519515227_
                                    '())))))
                           (_g1517715222_ _g1517915225_))
                       (_g1517715222_ _g1517915225_)))))
            (let ((_g1517515328_
                   (lambda (_g1517915274_)
                     (if (gx#stx-pair? _g1517915274_)
                         (let ((_e1518115276_ (gx#stx-e _g1517915274_)))
                           (let ((_hd1518215279_ (##car _e1518115276_))
                                 (_tl1518315281_ (##cdr _e1518115276_)))
                             (if (gx#stx-pair/null? _hd1518215279_)
                                 (if (fx>= (gx#stx-length _hd1518215279_) '0)
                                     (let ((_g17835_
                                            (gx#syntax-split-splice
                                             _hd1518215279_
                                             '0)))
                                       (begin
                                         (let ((_g17836_
                                                (values-count _g17835_)))
                                           (if (not (fx= _g17836_ 2))
                                               (error "Context expects 2 values"
                                                      _g17836_)))
                                         (let ((_target1518415284_
                                                (values-ref _g17835_ 0))
                                               (_tl1518615286_
                                                (values-ref _g17835_ 1)))
                                           (if (gx#stx-null? _tl1518615286_)
                                               (letrec ((_loop1518715289_
                                                         (lambda (_hd1518515292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1519115294_)
                   (if (gx#stx-pair? _hd1518515292_)
                       (let ((_e1518815297_ (gx#stx-e _hd1518515292_)))
                         (let ((_lp-hd1518915300_ (##car _e1518815297_))
                               (_lp-tl1519015302_ (##cdr _e1518815297_)))
                           (_loop1518715289_
                            _lp-tl1519015302_
                            (cons _lp-hd1518915300_ _arg1519115294_))))
                       (let ((_arg1519215305_ (reverse _arg1519115294_)))
                         ((lambda (_L15308_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1532015323_ _g1532115325_)
                                        (cons _g1532015323_ _g1532115325_))
                                      '()
                                      _L15308_))))
                          _arg1519215305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1518715289_
                                                  _target1518415284_
                                                  '()))
                                               (_g1517615271_
                                                _g1517915274_)))))
                                     (_g1517615271_ _g1517915274_))
                                 (_g1517615271_ _g1517915274_))))
                         (_g1517615271_ _g1517915274_)))))
              (_g1517515328_ _form15174_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx14447_)
      (let ((_lambda-expr?14449_
             (lambda (_expr15127_)
               (let ((_g1513015140_
                      (lambda (_g1513115137_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1513115137_))))
                 (let ((_g1512915147_
                        (lambda (_g1513115143_) ((lambda () '#f)))))
                   (let ((_g1512815171_
                          (lambda (_g1513115150_)
                            (if (gx#stx-pair? _g1513115150_)
                                (let ((_e1513315152_ (gx#stx-e _g1513115150_)))
                                  (let ((_hd1513415155_ (##car _e1513315152_))
                                        (_tl1513515157_ (##cdr _e1513315152_)))
                                    (if (gx#identifier? _hd1513415155_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1513415155_)
                                            ((lambda (_L15160_) '#t)
                                             _tl1513515157_)
                                            (_g1512915147_ _g1513115150_))
                                        (_g1512915147_ _g1513115150_))))
                                (_g1512915147_ _g1513115150_)))))
                     (_g1512815171_ _expr15127_)))))))
        (let ((_case-lambda-expr?14450_
               (lambda (_expr15080_)
                 (let ((_g1508315093_
                        (lambda (_g1508415090_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1508415090_))))
                   (let ((_g1508215100_
                          (lambda (_g1508415096_) ((lambda () '#f)))))
                     (let ((_g1508115124_
                            (lambda (_g1508415103_)
                              (if (gx#stx-pair? _g1508415103_)
                                  (let ((_e1508615105_
                                         (gx#stx-e _g1508415103_)))
                                    (let ((_hd1508715108_
                                           (##car _e1508615105_))
                                          (_tl1508815110_
                                           (##cdr _e1508615105_)))
                                      (if (gx#identifier? _hd1508715108_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1508715108_)
                                              ((lambda (_L15113_) '#t)
                                               _tl1508815110_)
                                              (_g1508215100_ _g1508415103_))
                                          (_g1508215100_ _g1508415103_))))
                                  (_g1508215100_ _g1508415103_)))))
                       (_g1508115124_ _expr15080_)))))))
          (let ((_lift-case-lambda-clauses14451_
                 (lambda (_id14841_ _clauses14842_)
                   ((letrec ((_lp14844_
                              (lambda (_rest14846_
                                       _ids14847_
                                       _impls14848_
                                       _clauses14849_)
                                (let ((_rest1485014858_ _rest14846_))
                                  (let ((_E1485314862_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1485014858_))))
                                    (let ((_else1485214866_
                                           (lambda ()
                                             (values (reverse _ids14847_)
                                                     (reverse _impls14848_)
                                                     (reverse _clauses14849_)))))
                                      (let ((_K1485415068_
                                             (lambda (_rest14869_
                                                      _clause14870_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause14870_)
                                                   (_lp14844_
                                                    _rest14869_
                                                    _ids14847_
                                                    _impls14848_
                                                    (cons _clause14870_
                                                          _clauses14849_))
                                                   (let ((_g1487214883_
                                                          (lambda (_g1487314880_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1487314880_))))
                                                     (let ((_g1487115065_
                                                            (lambda (_g1487314886_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1487314886_)
                          (let ((_e1487614888_ (gx#stx-e _g1487314886_)))
                            (let ((_hd1487714891_ (##car _e1487614888_))
                                  (_tl1487814893_ (##cdr _e1487614888_)))
                              ((lambda (_L14896_ _L14897_)
                                 (let ((_id14914_
                                        (make-symbol
                                         (gx#stx-e _id14841_)
                                         '"__"
                                         (length _clauses14849_))))
                                   (let ((_impl14916_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L14897_ _L14896_))
                                           _stx14447_)))
                                     (let ((_clause15062_
                                            (let ((_g1492014948_
                                                   (lambda (_g1492114945_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1492114945_))))
                                              (let ((_g1491914963_
                                                     (lambda (_g1492114951_)
                                                       ((lambda (_L14953_)
                                                          (cons _L14897_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id14914_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L14953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx14447_)
                              '())))
                _g1492114951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1491815012_
                                                       (lambda (_g1492114966_)
                                                         (if (gx#stx-pair/null?
                                                              _g1492114966_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1492114966_)
                               '0)
                         (let ((_g17839_
                                (gx#syntax-split-splice _g1492114966_ '0)))
                           (begin
                             (let ((_g17840_ (values-count _g17839_)))
                               (if (not (fx= _g17840_ 2))
                                   (error "Context expects 2 values"
                                          _g17840_)))
                             (let ((_target1493414968_ (values-ref _g17839_ 0))
                                   (_tl1493614970_ (values-ref _g17839_ 1)))
                               (letrec ((_loop1493714973_
                                         (lambda (_hd1493514976_
                                                  _arg1494114978_)
                                           (if (gx#stx-pair? _hd1493514976_)
                                               (let ((_e1493814981_
                                                      (gx#stx-e
                                                       _hd1493514976_)))
                                                 (let ((_lp-hd1493914984_
                                                        (##car _e1493814981_))
                                                       (_lp-tl1494014986_
                                                        (##cdr _e1493814981_)))
                                                   (_loop1493714973_
                                                    _lp-tl1494014986_
                                                    (cons _lp-hd1493914984_
                                                          _arg1494114978_))))
                                               (let ((_arg1494214989_
                                                      (reverse _arg1494114978_)))
                                                 ((lambda (_L14992_ _L14993_)
                                                    (cons _L14897_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id14914_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L14992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1500415007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1500515009_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1500415007_ '()))
                           _g1500515009_))
                   '()
                   _L14993_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx14447_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1493614970_
                                                  _arg1494214989_))))))
                                 (_loop1493714973_ _target1493414968_ '())))))
                         (_g1491914963_ _g1492114966_))
                     (_g1491914963_ _g1492114966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1491715059_
                                                         (lambda (_g1492115015_)
                                                           (if (gx#stx-pair/null?
                                                                _g1492115015_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1492115015_)
                                 '0)
                           (let ((_g17841_
                                  (gx#syntax-split-splice _g1492115015_ '0)))
                             (begin
                               (let ((_g17842_ (values-count _g17841_)))
                                 (if (not (fx= _g17842_ 2))
                                     (error "Context expects 2 values"
                                            _g17842_)))
                               (let ((_target1492315017_
                                      (values-ref _g17841_ 0))
                                     (_tl1492515019_ (values-ref _g17841_ 1)))
                                 (if (gx#stx-null? _tl1492515019_)
                                     (letrec ((_loop1492615022_
                                               (lambda (_hd1492415025_
                                                        _arg1493015027_)
                                                 (if (gx#stx-pair?
                                                      _hd1492415025_)
                                                     (let ((_e1492715030_
                                                            (gx#stx-e
                                                             _hd1492415025_)))
                                                       (let ((_lp-hd1492815033_
                                                              (##car _e1492715030_))
                                                             (_lp-tl1492915035_
                                                              (##cdr _e1492715030_)))
                                                         (_loop1492615022_
                                                          _lp-tl1492915035_
                                                          (cons _lp-hd1492815033_
                                                                _arg1493015027_))))
                                                     (let ((_arg1493115038_
                                                            (reverse _arg1493015027_)))
                                                       ((lambda (_L15041_)
                                                          (cons _L14897_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id14914_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1505115054_
                                                             _g1505215056_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1505115054_ '()))
                    _g1505215056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15041_))))
                               _stx14447_)
                              '())))
                _arg1493115038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1492615022_
                                        _target1492315017_
                                        '()))
                                     (_g1491815012_ _g1492115015_)))))
                           (_g1491815012_ _g1492115015_))
                       (_g1491815012_ _g1492115015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1491715059_
                                                     _L14897_)))))))
                                       (let ()
                                         (_lp14844_
                                          _rest14869_
                                          (cons _id14914_ _ids14847_)
                                          (cons _impl14916_ _impls14848_)
                                          (cons _clause15062_
                                                _clauses14849_)))))))
                               _tl1487814893_
                               _hd1487714891_)))
                          (_g1487214883_ _g1487314886_)))))
               (_g1487115065_ _clause14870_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1485014858_)
                                            (let ((_hd1485515071_
                                                   (##car _rest1485014858_))
                                                  (_tl1485615073_
                                                   (##cdr _rest1485014858_)))
                                              (let ((_clause15076_
                                                     _hd1485515071_))
                                                (let ((_rest15078_
                                                       _tl1485615073_))
                                                  (_K1485415068_
                                                   _rest15078_
                                                   _clause15076_))))
                                            (_else1485214866_)))))))))
                      _lp14844_)
                    _clauses14842_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def14452_
                   (lambda (_id14838_ _impl14839_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id14838_ '()) (cons _impl14839_ '())))
                      _stx14447_))))
              (let ((_g1445714531_
                     (lambda (_g1445814528_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1445814528_))))
                (let ((_g1445614538_
                       (lambda (_g1445814534_) ((lambda () _stx14447_)))))
                  (let ((_g1445514674_
                         (lambda (_g1445814541_)
                           (if (gx#stx-pair? _g1445814541_)
                               (let ((_e1449414543_ (gx#stx-e _g1445814541_)))
                                 (let ((_hd1449514546_ (##car _e1449414543_))
                                       (_tl1449614548_ (##cdr _e1449414543_)))
                                   (if (gx#stx-pair? _tl1449614548_)
                                       (let ((_e1449714551_
                                              (gx#stx-e _tl1449614548_)))
                                         (let ((_hd1449814554_
                                                (##car _e1449714551_))
                                               (_tl1449914556_
                                                (##cdr _e1449714551_)))
                                           (if (gx#stx-pair? _hd1449814554_)
                                               (let ((_e1450014559_
                                                      (gx#stx-e
                                                       _hd1449814554_)))
                                                 (let ((_hd1450114562_
                                                        (##car _e1450014559_))
                                                       (_tl1450214564_
                                                        (##cdr _e1450014559_)))
                                                   (if (gx#stx-null?
                                                        _tl1450214564_)
                                                       (if (gx#stx-pair?
                                                            _tl1449914556_)
                                                           (let ((_e1450314567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1449914556_)))
                     (let ((_hd1450414570_ (##car _e1450314567_))
                           (_tl1450514572_ (##cdr _e1450314567_)))
                       (if (gx#stx-pair? _hd1450414570_)
                           (let ((_e1450614575_ (gx#stx-e _hd1450414570_)))
                             (let ((_hd1450714578_ (##car _e1450614575_))
                                   (_tl1450814580_ (##cdr _e1450614575_)))
                               (if (gx#identifier? _hd1450714578_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1450714578_)
                                       (if (gx#stx-pair? _tl1450814580_)
                                           (let ((_e1450914583_
                                                  (gx#stx-e _tl1450814580_)))
                                             (let ((_hd1451014586_
                                                    (##car _e1450914583_))
                                                   (_tl1451114588_
                                                    (##cdr _e1450914583_)))
                                               (if (gx#stx-pair?
                                                    _hd1451014586_)
                                                   (let ((_e1451214591_
                                                          (gx#stx-e
                                                           _hd1451014586_)))
                                                     (let ((_hd1451314594_
                                                            (##car _e1451214591_))
                                                           (_tl1451414596_
                                                            (##cdr _e1451214591_)))
                                                       (if (gx#stx-pair?
                                                            _hd1451314594_)
                                                           (let ((_e1451514599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1451314594_)))
                     (let ((_hd1451614602_ (##car _e1451514599_))
                           (_tl1451714604_ (##cdr _e1451514599_)))
                       (if (gx#stx-pair? _hd1451614602_)
                           (let ((_e1451814607_ (gx#stx-e _hd1451614602_)))
                             (let ((_hd1451914610_ (##car _e1451814607_))
                                   (_tl1452014612_ (##cdr _e1451814607_)))
                               (if (gx#stx-null? _tl1452014612_)
                                   (if (gx#stx-pair? _tl1451714604_)
                                       (let ((_e1452114615_
                                              (gx#stx-e _tl1451714604_)))
                                         (let ((_hd1452214618_
                                                (##car _e1452114615_))
                                               (_tl1452314620_
                                                (##cdr _e1452114615_)))
                                           (if (gx#stx-null? _tl1452314620_)
                                               (if (gx#stx-null?
                                                    _tl1451414596_)
                                                   (if (gx#stx-pair?
                                                        _tl1451114588_)
                                                       (let ((_e1452414623_
                                                              (gx#stx-e
                                                               _tl1451114588_)))
                                                         (let ((_hd1452514626_
                                                                (##car _e1452414623_))
                                                               (_tl1452614628_
                                                                (##cdr _e1452414623_)))
                                                           (if (gx#stx-null?
                                                                _tl1452614628_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1450514572_)
                           ((lambda (_L14631_ _L14632_ _L14633_ _L14634_)
                              (if (if (gx#identifier? _L14634_)
                                      (if (gx#identifier? _L14633_)
                                          (if (_lambda-expr?14449_ _L14632_)
                                              (_case-lambda-expr?14450_
                                               _L14631_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id14669_
                                         (make-symbol
                                          (gx#stx-e _L14634_)
                                          '"__"
                                          (gx#stx-e _L14633_))))
                                    (let ((_new-case-lambda-expr14671_
                                           (gxc#apply-expression-subst
                                            _L14631_
                                            _L14633_
                                            _lambda-id14669_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#generate-runtime-binding-id
                                            _L14634_)
                                           '" => "
                                           _lambda-id14669_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id14669_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id14669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L14632_ '())))
                _stx14447_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L14634_ '())
                                   (cons _new-case-lambda-expr14671_ '())))
                       _stx14447_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx14447_)))))
                                  (_g1445614538_ _g1445814541_)))
                            _hd1452514626_
                            _hd1452214618_
                            _hd1451914610_
                            _hd1450114562_)
                           (_g1445614538_ _g1445814541_))
                       (_g1445614538_ _g1445814541_))))
               (_g1445614538_ _g1445814541_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445614538_
                                                    _g1445814541_))
                                               (_g1445614538_ _g1445814541_))))
                                       (_g1445614538_ _g1445814541_))
                                   (_g1445614538_ _g1445814541_))))
                           (_g1445614538_ _g1445814541_))))
                   (_g1445614538_ _g1445814541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445614538_
                                                    _g1445814541_))))
                                           (_g1445614538_ _g1445814541_))
                                       (_g1445614538_ _g1445814541_))
                                   (_g1445614538_ _g1445814541_))))
                           (_g1445614538_ _g1445814541_))))
                   (_g1445614538_ _g1445814541_))
               (_g1445614538_ _g1445814541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1445614538_ _g1445814541_))))
                                       (_g1445614538_ _g1445814541_))))
                               (_g1445614538_ _g1445814541_)))))
                    (let ((_g1445414771_
                           (lambda (_g1445814677_)
                             (if (gx#stx-pair? _g1445814677_)
                                 (let ((_e1447814679_
                                        (gx#stx-e _g1445814677_)))
                                   (let ((_hd1447914682_ (##car _e1447814679_))
                                         (_tl1448014684_
                                          (##cdr _e1447814679_)))
                                     (if (gx#stx-pair? _tl1448014684_)
                                         (let ((_e1448114687_
                                                (gx#stx-e _tl1448014684_)))
                                           (let ((_hd1448214690_
                                                  (##car _e1448114687_))
                                                 (_tl1448314692_
                                                  (##cdr _e1448114687_)))
                                             (if (gx#stx-pair? _hd1448214690_)
                                                 (let ((_e1448414695_
                                                        (gx#stx-e
                                                         _hd1448214690_)))
                                                   (let ((_hd1448514698_
                                                          (##car _e1448414695_))
                                                         (_tl1448614700_
                                                          (##cdr _e1448414695_)))
                                                     (if (gx#stx-null?
                                                          _tl1448614700_)
                                                         (if (gx#stx-pair?
                                                              _tl1448314692_)
                                                             (let ((_e1448714703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1448314692_)))
                       (let ((_hd1448814706_ (##car _e1448714703_))
                             (_tl1448914708_ (##cdr _e1448714703_)))
                         (if (gx#stx-null? _tl1448914708_)
                             ((lambda (_L14711_ _L14712_)
                                (if (if (gx#identifier? _L14712_)
                                        (_case-lambda-expr?14450_ _L14711_)
                                        '#f)
                                    (let ((_g1472814738_
                                           (lambda (_g1472914735_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1472914735_))))
                                      (let ((_g1472714768_
                                             (lambda (_g1472914741_)
                                               (if (gx#stx-pair? _g1472914741_)
                                                   (let ((_e1473114743_
                                                          (gx#stx-e
                                                           _g1472914741_)))
                                                     (let ((_hd1473214746_
                                                            (##car _e1473114743_))
                                                           (_tl1473314748_
                                                            (##cdr _e1473114743_)))
                                                       ((lambda (_L14751_)
                                                          (let ((_g17837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses14451_ _L14712_ _L14751_)))
                    (begin
                      (let ((_g17838_ (values-count _g17837_)))
                        (if (not (fx= _g17838_ 3))
                            (error "Context expects 3 values" _g17838_)))
                      (let ((_ids14761_ (values-ref _g17837_ 0))
                            (_impls14762_ (values-ref _g17837_ 1))
                            (_clauses14763_ (values-ref _g17837_ 2)))
                        (let ((_defs14765_
                               (map _case-lambda-clause-def14452_
                                    _ids14761_
                                    _impls14762_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#generate-runtime-binding-id _L14712_)
                               '" => "
                               _ids14761_)
                              (for-each gx#core-bind-runtime! _ids14761_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L14712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses14763_)
                              _L14711_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx14447_)
                                                  '())
                                            _defs14765_))
                               _stx14447_))))))))
                _tl1473314748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1472814738_
                                                    _g1472914741_)))))
                                        (_g1472714768_ _L14711_)))
                                    (_g1445514674_ _g1445814677_)))
                              _hd1448814706_
                              _hd1448514698_)
                             (_g1445514674_ _g1445814677_))))
                     (_g1445514674_ _g1445814677_))
                 (_g1445514674_ _g1445814677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1445514674_
                                                  _g1445814677_))))
                                         (_g1445514674_ _g1445814677_))))
                                 (_g1445514674_ _g1445814677_)))))
                      (let ((_g1445314835_
                             (lambda (_g1445814774_)
                               (if (gx#stx-pair? _g1445814774_)
                                   (let ((_e1446114776_
                                          (gx#stx-e _g1445814774_)))
                                     (let ((_hd1446214779_
                                            (##car _e1446114776_))
                                           (_tl1446314781_
                                            (##cdr _e1446114776_)))
                                       (if (gx#stx-pair? _tl1446314781_)
                                           (let ((_e1446414784_
                                                  (gx#stx-e _tl1446314781_)))
                                             (let ((_hd1446514787_
                                                    (##car _e1446414784_))
                                                   (_tl1446614789_
                                                    (##cdr _e1446414784_)))
                                               (if (gx#stx-pair?
                                                    _hd1446514787_)
                                                   (let ((_e1446714792_
                                                          (gx#stx-e
                                                           _hd1446514787_)))
                                                     (let ((_hd1446814795_
                                                            (##car _e1446714792_))
                                                           (_tl1446914797_
                                                            (##cdr _e1446714792_)))
                                                       (if (gx#stx-null?
                                                            _tl1446914797_)
                                                           (if (gx#stx-pair?
                                                                _tl1446614789_)
                                                               (let ((_e1447014800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1446614789_)))
                         (let ((_hd1447114803_ (##car _e1447014800_))
                               (_tl1447214805_ (##cdr _e1447014800_)))
                           (if (gx#stx-pair? _hd1447114803_)
                               (let ((_e1447314808_ (gx#stx-e _hd1447114803_)))
                                 (let ((_hd1447414811_ (##car _e1447314808_))
                                       (_tl1447514813_ (##cdr _e1447314808_)))
                                   (if (gx#identifier? _hd1447414811_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1447414811_)
                                           (if (gx#stx-null? _tl1447214805_)
                                               ((lambda (_L14816_ _L14817_)
                                                  (if (if (gx#identifier?
                                                           _L14817_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14816_)
                  '#f)
              _stx14447_
              (_g1445414771_ _g1445814774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1447514813_
                                                _hd1446814795_)
                                               (_g1445414771_ _g1445814774_))
                                           (_g1445414771_ _g1445814774_))
                                       (_g1445414771_ _g1445814774_))))
                               (_g1445414771_ _g1445814774_))))
                       (_g1445414771_ _g1445814774_))
                   (_g1445414771_ _g1445814774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445414771_
                                                    _g1445814774_))))
                                           (_g1445414771_ _g1445814774_))))
                                   (_g1445414771_ _g1445814774_)))))
                        (_g1445314835_ _stx14447_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14385_ _id14386_ _new-id14387_)
      (let ((_g1439014403_
             (lambda (_g1439114400_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1439114400_))))
        (let ((_g1438914410_
               (lambda (_g1439114406_) ((lambda () _stx14385_)))))
          (let ((_g1438814444_
                 (lambda (_g1439114413_)
                   (if (gx#stx-pair? _g1439114413_)
                       (let ((_e1439314415_ (gx#stx-e _g1439114413_)))
                         (let ((_hd1439414418_ (##car _e1439314415_))
                               (_tl1439514420_ (##cdr _e1439314415_)))
                           (if (gx#stx-pair? _tl1439514420_)
                               (let ((_e1439614423_ (gx#stx-e _tl1439514420_)))
                                 (let ((_hd1439714426_ (##car _e1439614423_))
                                       (_tl1439814428_ (##cdr _e1439614423_)))
                                   (if (gx#stx-null? _tl1439814428_)
                                       ((lambda (_L14431_)
                                          (if (gx#free-identifier=?
                                               _L14431_
                                               _id14386_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14387_ '()))
                                               _stx14385_)
                                              (_g1438914410_ _g1439114413_)))
                                        _hd1439714426_)
                                       (_g1438914410_ _g1439114413_))))
                               (_g1438914410_ _g1439114413_))))
                       (_g1438914410_ _g1439114413_)))))
            (_g1438814444_ _stx14385_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14241_)
      (let ((_g1424414275_
             (lambda (_g1424514272_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1424514272_))))
        (let ((_g1424314320_
               (lambda (_g1424514278_)
                 (if (gx#stx-pair? _g1424514278_)
                     (let ((_e1426214280_ (gx#stx-e _g1424514278_)))
                       (let ((_hd1426314283_ (##car _e1426214280_))
                             (_tl1426414285_ (##cdr _e1426214280_)))
                         (if (gx#stx-pair? _tl1426414285_)
                             (let ((_e1426514288_ (gx#stx-e _tl1426414285_)))
                               (let ((_hd1426614291_ (##car _e1426514288_))
                                     (_tl1426714293_ (##cdr _e1426514288_)))
                                 (if (gx#stx-pair? _tl1426714293_)
                                     (let ((_e1426814296_
                                            (gx#stx-e _tl1426714293_)))
                                       (let ((_hd1426914299_
                                              (##car _e1426814296_))
                                             (_tl1427014301_
                                              (##cdr _e1426814296_)))
                                         (if (gx#stx-null? _tl1427014301_)
                                             ((lambda (_L14304_ _L14305_)
                                                (gxc#compile-e _L14304_))
                                              _hd1426914299_
                                              _hd1426614291_)
                                             (_g1424414275_ _g1424514278_))))
                                     (_g1424414275_ _g1424514278_))))
                             (_g1424414275_ _g1424514278_))))
                     (_g1424414275_ _g1424514278_)))))
          (let ((_g1424214382_
                 (lambda (_g1424514323_)
                   (if (gx#stx-pair? _g1424514323_)
                       (let ((_e1424814325_ (gx#stx-e _g1424514323_)))
                         (let ((_hd1424914328_ (##car _e1424814325_))
                               (_tl1425014330_ (##cdr _e1424814325_)))
                           (if (gx#stx-pair? _tl1425014330_)
                               (let ((_e1425114333_ (gx#stx-e _tl1425014330_)))
                                 (let ((_hd1425214336_ (##car _e1425114333_))
                                       (_tl1425314338_ (##cdr _e1425114333_)))
                                   (if (gx#stx-pair? _hd1425214336_)
                                       (let ((_e1425414341_
                                              (gx#stx-e _hd1425214336_)))
                                         (let ((_hd1425514344_
                                                (##car _e1425414341_))
                                               (_tl1425614346_
                                                (##cdr _e1425414341_)))
                                           (if (gx#stx-null? _tl1425614346_)
                                               (if (gx#stx-pair?
                                                    _tl1425314338_)
                                                   (let ((_e1425714349_
                                                          (gx#stx-e
                                                           _tl1425314338_)))
                                                     (let ((_hd1425814352_
                                                            (##car _e1425714349_))
                                                           (_tl1425914354_
                                                            (##cdr _e1425714349_)))
                                                       (if (gx#stx-null?
                                                            _tl1425914354_)
                                                           ((lambda (_L14357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14358_)
                      (if (gx#identifier? _L14358_)
                          (let ((_sym14374_
                                 (gxc#generate-runtime-binding-id _L14358_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14374_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14374_)
                                  (let ((_type1437514377_
                                         (gxc#apply-basic-expression-type
                                          _L14357_)))
                                    (if _type1437514377_
                                        (let ((_type14380_ _type1437514377_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14374_
                                           _type14380_))
                                        '#f)))
                              (gxc#compile-e _L14357_)))
                          (_g1424314320_ _g1424514323_)))
                    _hd1425814352_
                    _hd1425514344_)
                   (_g1424314320_ _g1424514323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1424314320_
                                                    _g1424514323_))
                                               (_g1424314320_ _g1424514323_))))
                                       (_g1424314320_ _g1424514323_))))
                               (_g1424314320_ _g1424514323_))))
                       (_g1424314320_ _g1424514323_)))))
            (_g1424214382_ _stx14241_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14026_)
      (let ((_collect-e14028_
             (lambda (_hd14185_ _expr14186_)
               (let ((_g1418914199_
                      (lambda (_g1419014196_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1419014196_))))
                 (let ((_g1418814206_
                        (lambda (_g1419014202_) ((lambda () '#!void)))))
                   (let ((_g1418714238_
                          (lambda (_g1419014209_)
                            (if (gx#stx-pair? _g1419014209_)
                                (let ((_e1419214211_ (gx#stx-e _g1419014209_)))
                                  (let ((_hd1419314214_ (##car _e1419214211_))
                                        (_tl1419414216_ (##cdr _e1419214211_)))
                                    (if (gx#stx-null? _tl1419414216_)
                                        ((lambda (_L14219_)
                                           (if (gx#identifier? _L14219_)
                                               (let ((_sym14230_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14219_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14230_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14230_)
                                                     (let ((_type1423114233_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14186_)))
                                                       (if _type1423114233_
                                                           (let ((_type14236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1423114233_))
                     (gxc#optimizer-declare-type!__opt-lambda17600
                      _sym14230_
                      _type14236_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1418814206_ _g1419014209_)))
                                         _hd1419314214_)
                                        (_g1418814206_ _g1419014209_))))
                                (_g1418814206_ _g1419014209_)))))
                     (_g1418714238_ _hd14185_)))))))
        (let ((_g1403014065_
               (lambda (_g1403114062_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1403114062_))))
          (let ((_g1402914182_
                 (lambda (_g1403114068_)
                   (if (gx#stx-pair? _g1403114068_)
                       (let ((_e1403514070_ (gx#stx-e _g1403114068_)))
                         (let ((_hd1403614073_ (##car _e1403514070_))
                               (_tl1403714075_ (##cdr _e1403514070_)))
                           (if (gx#stx-pair? _tl1403714075_)
                               (let ((_e1403814078_ (gx#stx-e _tl1403714075_)))
                                 (let ((_hd1403914081_ (##car _e1403814078_))
                                       (_tl1404014083_ (##cdr _e1403814078_)))
                                   (if (gx#stx-pair/null? _hd1403914081_)
                                       (if (fx>= (gx#stx-length _hd1403914081_)
                                                 '0)
                                           (let ((_g17843_
                                                  (gx#syntax-split-splice
                                                   _hd1403914081_
                                                   '0)))
                                             (begin
                                               (let ((_g17844_
                                                      (values-count _g17843_)))
                                                 (if (not (fx= _g17844_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17844_)))
                                               (let ((_target1404114086_
                                                      (values-ref _g17843_ 0))
                                                     (_tl1404314088_
                                                      (values-ref _g17843_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1404314088_)
                                                     (letrec ((_loop1404414091_
                                                               (lambda (_hd1404214094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1404814096_
                                _hd1404914098_)
                         (if (gx#stx-pair? _hd1404214094_)
                             (let ((_e1404514101_ (gx#stx-e _hd1404214094_)))
                               (let ((_lp-hd1404614104_ (##car _e1404514101_))
                                     (_lp-tl1404714106_ (##cdr _e1404514101_)))
                                 (if (gx#stx-pair? _lp-hd1404614104_)
                                     (let ((_e1405214109_
                                            (gx#stx-e _lp-hd1404614104_)))
                                       (let ((_hd1405314112_
                                              (##car _e1405214109_))
                                             (_tl1405414114_
                                              (##cdr _e1405214109_)))
                                         (if (gx#stx-pair? _tl1405414114_)
                                             (let ((_e1405514117_
                                                    (gx#stx-e _tl1405414114_)))
                                               (let ((_hd1405614120_
                                                      (##car _e1405514117_))
                                                     (_tl1405714122_
                                                      (##cdr _e1405514117_)))
                                                 (if (gx#stx-null?
                                                      _tl1405714122_)
                                                     (_loop1404414091_
                                                      _lp-tl1404714106_
                                                      (cons _hd1405614120_
                                                            _expr1404814096_)
                                                      (cons _hd1405314112_
                                                            _hd1404914098_))
                                                     (_g1403014065_
                                                      _g1403114068_))))
                                             (_g1403014065_ _g1403114068_))))
                                     (_g1403014065_ _g1403114068_))))
                             (let ((_expr1405014125_
                                    (reverse _expr1404814096_))
                                   (_hd1405114127_ (reverse _hd1404914098_)))
                               (if (gx#stx-pair? _tl1404014083_)
                                   (let ((_e1405814130_
                                          (gx#stx-e _tl1404014083_)))
                                     (let ((_hd1405914133_
                                            (##car _e1405814130_))
                                           (_tl1406014135_
                                            (##cdr _e1405814130_)))
                                       (if (gx#stx-null? _tl1406014135_)
                                           ((lambda (_L14138_
                                                     _L14139_
                                                     _L14140_)
                                              (begin
                                                (for-each
                                                 _collect-e14028_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1416014163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1416114165_)
                    (cons _g1416014163_ _g1416114165_))
                  '()
                  _L14140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1416714170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1416814172_)
                    (cons _g1416714170_ _g1416814172_))
                  '()
                  _L14139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1417414177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1417514179_)
                    (cons _g1417414177_ _g1417514179_))
                  '()
                  _L14139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14138_)))
                                            _hd1405914133_
                                            _expr1405014125_
                                            _hd1405114127_)
                                           (_g1403014065_ _g1403114068_))))
                                   (_g1403014065_ _g1403114068_)))))))
               (_loop1404414091_ _target1404114086_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1403014065_
                                                      _g1403114068_)))))
                                           (_g1403014065_ _g1403114068_))
                                       (_g1403014065_ _g1403114068_))))
                               (_g1403014065_ _g1403114068_))))
                       (_g1403014065_ _g1403114068_)))))
            (_g1402914182_ _stx14026_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13580_)
      (let ((_g1358413686_
             (lambda (_g1358513683_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1358513683_))))
        (let ((_g1358313693_ (lambda (_g1358513689_) ((lambda () '#!void)))))
          (let ((_g1358213843_
                 (lambda (_g1358513696_)
                   (if (gx#stx-pair? _g1358513696_)
                       (let ((_e1364313698_ (gx#stx-e _g1358513696_)))
                         (let ((_hd1364413701_ (##car _e1364313698_))
                               (_tl1364513703_ (##cdr _e1364313698_)))
                           (if (gx#stx-pair? _tl1364513703_)
                               (let ((_e1364613706_ (gx#stx-e _tl1364513703_)))
                                 (let ((_hd1364713709_ (##car _e1364613706_))
                                       (_tl1364813711_ (##cdr _e1364613706_)))
                                   (if (gx#stx-pair? _hd1364713709_)
                                       (let ((_e1364913714_
                                              (gx#stx-e _hd1364713709_)))
                                         (let ((_hd1365013717_
                                                (##car _e1364913714_))
                                               (_tl1365113719_
                                                (##cdr _e1364913714_)))
                                           (if (gx#identifier? _hd1365013717_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1365013717_)
                                                   (if (gx#stx-pair?
                                                        _tl1365113719_)
                                                       (let ((_e1365213722_
                                                              (gx#stx-e
                                                               _tl1365113719_)))
                                                         (let ((_hd1365313725_
                                                                (##car _e1365213722_))
                                                               (_tl1365413727_
                                                                (##cdr _e1365213722_)))
                                                           (if (gx#stx-null?
                                                                _tl1365413727_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1364813711_)
                           (let ((_e1365513730_ (gx#stx-e _tl1364813711_)))
                             (let ((_hd1365613733_ (##car _e1365513730_))
                                   (_tl1365713735_ (##cdr _e1365513730_)))
                               (if (gx#stx-pair? _hd1365613733_)
                                   (let ((_e1365813738_
                                          (gx#stx-e _hd1365613733_)))
                                     (let ((_hd1365913741_
                                            (##car _e1365813738_))
                                           (_tl1366013743_
                                            (##cdr _e1365813738_)))
                                       (if (gx#identifier? _hd1365913741_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1365913741_)
                                               (if (gx#stx-pair?
                                                    _tl1366013743_)
                                                   (let ((_e1366113746_
                                                          (gx#stx-e
                                                           _tl1366013743_)))
                                                     (let ((_hd1366213749_
                                                            (##car _e1366113746_))
                                                           (_tl1366313751_
                                                            (##cdr _e1366113746_)))
                                                       (if (gx#stx-null?
                                                            _tl1366313751_)
                                                           (if (gx#stx-pair?
                                                                _tl1365713735_)
                                                               (let ((_e1366413754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1365713735_)))
                         (let ((_hd1366513757_ (##car _e1366413754_))
                               (_tl1366613759_ (##cdr _e1366413754_)))
                           (if (gx#stx-pair? _hd1366513757_)
                               (let ((_e1366713762_ (gx#stx-e _hd1366513757_)))
                                 (let ((_hd1366813765_ (##car _e1366713762_))
                                       (_tl1366913767_ (##cdr _e1366713762_)))
                                   (if (gx#identifier? _hd1366813765_)
                                       (if (gx#stx-eq? '%#quote _hd1366813765_)
                                           (if (gx#stx-pair? _tl1366913767_)
                                               (let ((_e1367013770_
                                                      (gx#stx-e
                                                       _tl1366913767_)))
                                                 (let ((_hd1367113773_
                                                        (##car _e1367013770_))
                                                       (_tl1367213775_
                                                        (##cdr _e1367013770_)))
                                                   (if (gx#stx-null?
                                                        _tl1367213775_)
                                                       (if (gx#stx-pair?
                                                            _tl1366613759_)
                                                           (let ((_e1367313778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1366613759_)))
                     (let ((_hd1367413781_ (##car _e1367313778_))
                           (_tl1367513783_ (##cdr _e1367313778_)))
                       (if (gx#stx-pair? _hd1367413781_)
                           (let ((_e1367613786_ (gx#stx-e _hd1367413781_)))
                             (let ((_hd1367713789_ (##car _e1367613786_))
                                   (_tl1367813791_ (##cdr _e1367613786_)))
                               (if (gx#identifier? _hd1367713789_)
                                   (if (gx#stx-eq? '%#ref _hd1367713789_)
                                       (if (gx#stx-pair? _tl1367813791_)
                                           (let ((_e1367913794_
                                                  (gx#stx-e _tl1367813791_)))
                                             (let ((_hd1368013797_
                                                    (##car _e1367913794_))
                                                   (_tl1368113799_
                                                    (##cdr _e1367913794_)))
                                               (if (gx#stx-null?
                                                    _tl1368113799_)
                                                   (if (gx#stx-null?
                                                        _tl1367513783_)
                                                       ((lambda (_L13802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13803_
                         _L13804_
                         _L13805_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda17576
                       (gxc#generate-runtime-binding-id _L13804_)
                       (gx#stx-e _L13803_)
                       (gxc#generate-runtime-binding-id _L13802_)
                       '#f)
                      (_g1358313693_ _g1358513696_)))
                _hd1368013797_
                _hd1367113773_
                _hd1366213749_
                _hd1365313725_)
               (_g1358313693_ _g1358513696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1358313693_
                                                    _g1358513696_))))
                                           (_g1358313693_ _g1358513696_))
                                       (_g1358313693_ _g1358513696_))
                                   (_g1358313693_ _g1358513696_))))
                           (_g1358313693_ _g1358513696_))))
                   (_g1358313693_ _g1358513696_))
               (_g1358313693_ _g1358513696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1358313693_ _g1358513696_))
                                           (_g1358313693_ _g1358513696_))
                                       (_g1358313693_ _g1358513696_))))
                               (_g1358313693_ _g1358513696_))))
                       (_g1358313693_ _g1358513696_))
                   (_g1358313693_ _g1358513696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1358313693_
                                                    _g1358513696_))
                                               (_g1358313693_ _g1358513696_))
                                           (_g1358313693_ _g1358513696_))))
                                   (_g1358313693_ _g1358513696_))))
                           (_g1358313693_ _g1358513696_))
                       (_g1358313693_ _g1358513696_))))
               (_g1358313693_ _g1358513696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1358313693_
                                                    _g1358513696_))
                                               (_g1358313693_ _g1358513696_))))
                                       (_g1358313693_ _g1358513696_))))
                               (_g1358313693_ _g1358513696_))))
                       (_g1358313693_ _g1358513696_)))))
            (let ((_g1358114023_
                   (lambda (_g1358513846_)
                     (if (gx#stx-pair? _g1358513846_)
                         (let ((_e1359113848_ (gx#stx-e _g1358513846_)))
                           (let ((_hd1359213851_ (##car _e1359113848_))
                                 (_tl1359313853_ (##cdr _e1359113848_)))
                             (if (gx#stx-pair? _tl1359313853_)
                                 (let ((_e1359413856_
                                        (gx#stx-e _tl1359313853_)))
                                   (let ((_hd1359513859_ (##car _e1359413856_))
                                         (_tl1359613861_
                                          (##cdr _e1359413856_)))
                                     (if (gx#stx-pair? _hd1359513859_)
                                         (let ((_e1359713864_
                                                (gx#stx-e _hd1359513859_)))
                                           (let ((_hd1359813867_
                                                  (##car _e1359713864_))
                                                 (_tl1359913869_
                                                  (##cdr _e1359713864_)))
                                             (if (gx#identifier?
                                                  _hd1359813867_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1359813867_)
                                                     (if (gx#stx-pair?
                                                          _tl1359913869_)
                                                         (let ((_e1360013872_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1359913869_)))
                   (let ((_hd1360113875_ (##car _e1360013872_))
                         (_tl1360213877_ (##cdr _e1360013872_)))
                     (if (gx#stx-null? _tl1360213877_)
                         (if (gx#stx-pair? _tl1359613861_)
                             (let ((_e1360313880_ (gx#stx-e _tl1359613861_)))
                               (let ((_hd1360413883_ (##car _e1360313880_))
                                     (_tl1360513885_ (##cdr _e1360313880_)))
                                 (if (gx#stx-pair? _hd1360413883_)
                                     (let ((_e1360613888_
                                            (gx#stx-e _hd1360413883_)))
                                       (let ((_hd1360713891_
                                              (##car _e1360613888_))
                                             (_tl1360813893_
                                              (##cdr _e1360613888_)))
                                         (if (gx#identifier? _hd1360713891_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1360713891_)
                                                 (if (gx#stx-pair?
                                                      _tl1360813893_)
                                                     (let ((_e1360913896_
                                                            (gx#stx-e
                                                             _tl1360813893_)))
                                                       (let ((_hd1361013899_
                                                              (##car _e1360913896_))
                                                             (_tl1361113901_
                                                              (##cdr _e1360913896_)))
                                                         (if (gx#stx-null?
                                                              _tl1361113901_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1360513885_)
                         (let ((_e1361213904_ (gx#stx-e _tl1360513885_)))
                           (let ((_hd1361313907_ (##car _e1361213904_))
                                 (_tl1361413909_ (##cdr _e1361213904_)))
                             (if (gx#stx-pair? _hd1361313907_)
                                 (let ((_e1361513912_
                                        (gx#stx-e _hd1361313907_)))
                                   (let ((_hd1361613915_ (##car _e1361513912_))
                                         (_tl1361713917_
                                          (##cdr _e1361513912_)))
                                     (if (gx#identifier? _hd1361613915_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1361613915_)
                                             (if (gx#stx-pair? _tl1361713917_)
                                                 (let ((_e1361813920_
                                                        (gx#stx-e
                                                         _tl1361713917_)))
                                                   (let ((_hd1361913923_
                                                          (##car _e1361813920_))
                                                         (_tl1362013925_
                                                          (##cdr _e1361813920_)))
                                                     (if (gx#stx-null?
                                                          _tl1362013925_)
                                                         (if (gx#stx-pair?
                                                              _tl1361413909_)
                                                             (let ((_e1362113928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1361413909_)))
                       (let ((_hd1362213931_ (##car _e1362113928_))
                             (_tl1362313933_ (##cdr _e1362113928_)))
                         (if (gx#stx-pair? _hd1362213931_)
                             (let ((_e1362413936_ (gx#stx-e _hd1362213931_)))
                               (let ((_hd1362513939_ (##car _e1362413936_))
                                     (_tl1362613941_ (##cdr _e1362413936_)))
                                 (if (gx#identifier? _hd1362513939_)
                                     (if (gx#stx-eq? '%#ref _hd1362513939_)
                                         (if (gx#stx-pair? _tl1362613941_)
                                             (let ((_e1362713944_
                                                    (gx#stx-e _tl1362613941_)))
                                               (let ((_hd1362813947_
                                                      (##car _e1362713944_))
                                                     (_tl1362913949_
                                                      (##cdr _e1362713944_)))
                                                 (if (gx#stx-null?
                                                      _tl1362913949_)
                                                     (if (gx#stx-pair?
                                                          _tl1362313933_)
                                                         (let ((_e1363013952_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1362313933_)))
                   (let ((_hd1363113955_ (##car _e1363013952_))
                         (_tl1363213957_ (##cdr _e1363013952_)))
                     (if (gx#stx-pair? _hd1363113955_)
                         (let ((_e1363313960_ (gx#stx-e _hd1363113955_)))
                           (let ((_hd1363413963_ (##car _e1363313960_))
                                 (_tl1363513965_ (##cdr _e1363313960_)))
                             (if (gx#identifier? _hd1363413963_)
                                 (if (gx#stx-eq? '%#quote _hd1363413963_)
                                     (if (gx#stx-pair? _tl1363513965_)
                                         (let ((_e1363613968_
                                                (gx#stx-e _tl1363513965_)))
                                           (let ((_hd1363713971_
                                                  (##car _e1363613968_))
                                                 (_tl1363813973_
                                                  (##cdr _e1363613968_)))
                                             (if (gx#stx-null? _tl1363813973_)
                                                 (if (gx#stx-null?
                                                      _tl1363213957_)
                                                     ((lambda (_L13976_
                                                               _L13977_
                                                               _L13978_
                                                               _L13979_
                                                               _L13980_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13980_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda17576
                     (gxc#generate-runtime-binding-id _L13979_)
                     (gx#stx-e _L13978_)
                     (gxc#generate-runtime-binding-id _L13977_)
                     (gx#stx-e _L13976_))
                    (_g1358213843_ _g1358513846_)))
              _hd1363713971_
              _hd1362813947_
              _hd1361913923_
              _hd1361013899_
              _hd1360113875_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358213843_
                                                      _g1358513846_))
                                                 (_g1358213843_
                                                  _g1358513846_))))
                                         (_g1358213843_ _g1358513846_))
                                     (_g1358213843_ _g1358513846_))
                                 (_g1358213843_ _g1358513846_))))
                         (_g1358213843_ _g1358513846_))))
                 (_g1358213843_ _g1358513846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358213843_
                                                      _g1358513846_))))
                                             (_g1358213843_ _g1358513846_))
                                         (_g1358213843_ _g1358513846_))
                                     (_g1358213843_ _g1358513846_))))
                             (_g1358213843_ _g1358513846_))))
                     (_g1358213843_ _g1358513846_))
                 (_g1358213843_ _g1358513846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1358213843_ _g1358513846_))
                                             (_g1358213843_ _g1358513846_))
                                         (_g1358213843_ _g1358513846_))))
                                 (_g1358213843_ _g1358513846_))))
                         (_g1358213843_ _g1358513846_))
                     (_g1358213843_ _g1358513846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358213843_
                                                      _g1358513846_))
                                                 (_g1358213843_ _g1358513846_))
                                             (_g1358213843_ _g1358513846_))))
                                     (_g1358213843_ _g1358513846_))))
                             (_g1358213843_ _g1358513846_))
                         (_g1358213843_ _g1358513846_))))
                 (_g1358213843_ _g1358513846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358213843_
                                                      _g1358513846_))
                                                 (_g1358213843_
                                                  _g1358513846_))))
                                         (_g1358213843_ _g1358513846_))))
                                 (_g1358213843_ _g1358513846_))))
                         (_g1358213843_ _g1358513846_)))))
              (_g1358114023_ _stx13580_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13520_)
      (let ((_g1352313536_
             (lambda (_g1352413533_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1352413533_))))
        (let ((_g1352213543_ (lambda (_g1352413539_) ((lambda () '#f)))))
          (let ((_g1352113577_
                 (lambda (_g1352413546_)
                   (if (gx#stx-pair? _g1352413546_)
                       (let ((_e1352613548_ (gx#stx-e _g1352413546_)))
                         (let ((_hd1352713551_ (##car _e1352613548_))
                               (_tl1352813553_ (##cdr _e1352613548_)))
                           (if (gx#stx-pair? _tl1352813553_)
                               (let ((_e1352913556_ (gx#stx-e _tl1352813553_)))
                                 (let ((_hd1353013559_ (##car _e1352913556_))
                                       (_tl1353113561_ (##cdr _e1352913556_)))
                                   (if (gx#stx-null? _tl1353113561_)
                                       ((lambda (_L13564_)
                                          (gxc#compile-e _L13564_))
                                        _hd1353013559_)
                                       (_g1352213543_ _g1352413546_))))
                               (_g1352213543_ _g1352413546_))))
                       (_g1352213543_ _g1352413546_)))))
            (_g1352113577_ _stx13520_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12945_)
      (let ((_g1295013071_
             (lambda (_g1295113068_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1295113068_))))
        (let ((_g1294913078_ (lambda (_g1295113074_) ((lambda () '#f)))))
          (let ((_g1294813102_
                 (lambda (_g1295113081_)
                   (if (gx#stx-pair? _g1295113081_)
                       (let ((_e1306413083_ (gx#stx-e _g1295113081_)))
                         (let ((_hd1306513086_ (##car _e1306413083_))
                               (_tl1306613088_ (##cdr _e1306413083_)))
                           ((lambda (_L13091_)
                              (if (gxc#dispatch-lambda-form? _L13091_)
                                  (let ((__obj17805
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj17805
                                       'lambda
                                       (gxc#lambda-form-arity _L13091_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13091_))
                                      __obj17805))
                                  (_g1294913078_ _g1295113081_)))
                            _tl1306613088_)))
                       (_g1294913078_ _g1295113081_)))))
            (let ((_g1294713332_
                   (lambda (_g1295113105_)
                     (if (gx#stx-pair? _g1295113105_)
                         (let ((_e1300913107_ (gx#stx-e _g1295113105_)))
                           (let ((_hd1301013110_ (##car _e1300913107_))
                                 (_tl1301113112_ (##cdr _e1300913107_)))
                             (if (gx#stx-pair? _tl1301113112_)
                                 (let ((_e1301213115_
                                        (gx#stx-e _tl1301113112_)))
                                   (let ((_hd1301313118_ (##car _e1301213115_))
                                         (_tl1301413120_
                                          (##cdr _e1301213115_)))
                                     (if (gx#stx-pair/null? _hd1301313118_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1301313118_)
                                                   '0)
                                             (let ((_g17845_
                                                    (gx#syntax-split-splice
                                                     _hd1301313118_
                                                     '0)))
                                               (begin
                                                 (let ((_g17846_
                                                        (values-count
                                                         _g17845_)))
                                                   (if (not (fx= _g17846_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17846_)))
                                                 (let ((_target1301513123_
                                                        (values-ref
                                                         _g17845_
                                                         0))
                                                       (_tl1301713125_
                                                        (values-ref
                                                         _g17845_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1301713125_)
                                                       (letrec ((_loop1301813128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1301613131_ _arg1302213133_)
                           (if (gx#stx-pair? _hd1301613131_)
                               (let ((_e1301913136_ (gx#stx-e _hd1301613131_)))
                                 (let ((_lp-hd1302013139_
                                        (##car _e1301913136_))
                                       (_lp-tl1302113141_
                                        (##cdr _e1301913136_)))
                                   (_loop1301813128_
                                    _lp-tl1302113141_
                                    (cons _lp-hd1302013139_ _arg1302213133_))))
                               (let ((_arg1302313144_
                                      (reverse _arg1302213133_)))
                                 (if (gx#stx-pair? _tl1301413120_)
                                     (let ((_e1302413147_
                                            (gx#stx-e _tl1301413120_)))
                                       (let ((_hd1302513150_
                                              (##car _e1302413147_))
                                             (_tl1302613152_
                                              (##cdr _e1302413147_)))
                                         (if (gx#stx-pair? _hd1302513150_)
                                             (let ((_e1302713155_
                                                    (gx#stx-e _hd1302513150_)))
                                               (let ((_hd1302813158_
                                                      (##car _e1302713155_))
                                                     (_tl1302913160_
                                                      (##cdr _e1302713155_)))
                                                 (if (gx#identifier?
                                                      _hd1302813158_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1302813158_)
                                                         (if (gx#stx-pair?
                                                              _tl1302913160_)
                                                             (let ((_e1303013163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1302913160_)))
                       (let ((_hd1303113166_ (##car _e1303013163_))
                             (_tl1303213168_ (##cdr _e1303013163_)))
                         (if (gx#stx-pair? _hd1303113166_)
                             (let ((_e1303313171_ (gx#stx-e _hd1303113166_)))
                               (let ((_hd1303413174_ (##car _e1303313171_))
                                     (_tl1303513176_ (##cdr _e1303313171_)))
                                 (if (gx#identifier? _hd1303413174_)
                                     (if (gx#stx-eq? '%#ref _hd1303413174_)
                                         (if (gx#stx-pair? _tl1303513176_)
                                             (let ((_e1303613179_
                                                    (gx#stx-e _tl1303513176_)))
                                               (let ((_hd1303713182_
                                                      (##car _e1303613179_))
                                                     (_tl1303813184_
                                                      (##cdr _e1303613179_)))
                                                 (if (gx#stx-null?
                                                      _tl1303813184_)
                                                     (if (gx#stx-pair?
                                                          _tl1303213168_)
                                                         (let ((_e1303913187_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1303213168_)))
                   (let ((_hd1304013190_ (##car _e1303913187_))
                         (_tl1304113192_ (##cdr _e1303913187_)))
                     (if (gx#stx-pair? _hd1304013190_)
                         (let ((_e1304213195_ (gx#stx-e _hd1304013190_)))
                           (let ((_hd1304313198_ (##car _e1304213195_))
                                 (_tl1304413200_ (##cdr _e1304213195_)))
                             (if (gx#identifier? _hd1304313198_)
                                 (if (gx#stx-eq? '%#ref _hd1304313198_)
                                     (if (gx#stx-pair? _tl1304413200_)
                                         (let ((_e1304513203_
                                                (gx#stx-e _tl1304413200_)))
                                           (let ((_hd1304613206_
                                                  (##car _e1304513203_))
                                                 (_tl1304713208_
                                                  (##cdr _e1304513203_)))
                                             (if (gx#stx-null? _tl1304713208_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1304113192_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1304113192_)
                                                               '0)
                                                         (let ((_g17847_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1304113192_
                         '0)))
                   (begin
                     (let ((_g17848_ (values-count _g17847_)))
                       (if (not (fx= _g17848_ 2))
                           (error "Context expects 2 values" _g17848_)))
                     (let ((_target1304813211_ (values-ref _g17847_ 0))
                           (_tl1305013213_ (values-ref _g17847_ 1)))
                       (if (gx#stx-null? _tl1305013213_)
                           (letrec ((_loop1305113216_
                                     (lambda (_hd1304913219_ _xarg1305513221_)
                                       (if (gx#stx-pair? _hd1304913219_)
                                           (let ((_e1305213224_
                                                  (gx#stx-e _hd1304913219_)))
                                             (let ((_lp-hd1305313227_
                                                    (##car _e1305213224_))
                                                   (_lp-tl1305413229_
                                                    (##cdr _e1305213224_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1305313227_)
                                                   (let ((_e1305713232_
                                                          (gx#stx-e
                                                           _lp-hd1305313227_)))
                                                     (let ((_hd1305813235_
                                                            (##car _e1305713232_))
                                                           (_tl1305913237_
                                                            (##cdr _e1305713232_)))
                                                       (if (gx#identifier?
                                                            _hd1305813235_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1305813235_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1305913237_)
                           (let ((_e1306013240_ (gx#stx-e _tl1305913237_)))
                             (let ((_hd1306113243_ (##car _e1306013240_))
                                   (_tl1306213245_ (##cdr _e1306013240_)))
                               (if (gx#stx-null? _tl1306213245_)
                                   (_loop1305113216_
                                    _lp-tl1305413229_
                                    (cons _hd1306113243_ _xarg1305513221_))
                                   (_g1294813102_ _g1295113105_))))
                           (_g1294813102_ _g1295113105_))
                       (_g1294813102_ _g1295113105_))
                   (_g1294813102_ _g1295113105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294813102_
                                                    _g1295113105_))))
                                           (let ((_xarg1305613248_
                                                  (reverse _xarg1305513221_)))
                                             (if (gx#stx-null? _tl1302613152_)
                                                 ((lambda (_L13251_
                                                           _L13252_
                                                           _L13253_
                                                           _L13254_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1329113294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1329213296_)
                                (cons _g1329113294_ _g1329213296_))
                              '()
                              _L13254_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13253_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1329813301_
                                                           _g1329913303_)
                                                    (cons _g1329813301_
                                                          _g1329913303_))
                                                  '()
                                                  _L13254_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1330513308_
                                                           _g1330613310_)
                                                    (cons _g1330513308_
                                                          _g1330613310_))
                                                  '()
                                                  _L13251_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1331213315_
                                                      _g1331313317_)
                                               (cons _g1331213315_
                                                     _g1331313317_))
                                             '()
                                             _L13254_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1331913322_
                                                      _g1332013324_)
                                               (cons _g1331913322_
                                                     _g1332013324_))
                                             '()
                                             _L13251_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13327_
                       (gxc#generate-runtime-binding-id _L13252_)))
                  (let ((_type13329_
                         (gxc#optimizer-resolve-type _type-t13327_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13329_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13327_)
                          '#f))))
                (_g1294813102_ _g1295113105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1305613248_
                                                  _hd1304613206_
                                                  _hd1303713182_
                                                  _arg1302313144_)
                                                 (_g1294813102_
                                                  _g1295113105_)))))))
                             (_loop1305113216_ _target1304813211_ '()))
                           (_g1294813102_ _g1295113105_)))))
                 (_g1294813102_ _g1295113105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294813102_
                                                      _g1295113105_))
                                                 (_g1294813102_
                                                  _g1295113105_))))
                                         (_g1294813102_ _g1295113105_))
                                     (_g1294813102_ _g1295113105_))
                                 (_g1294813102_ _g1295113105_))))
                         (_g1294813102_ _g1295113105_))))
                 (_g1294813102_ _g1295113105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294813102_
                                                      _g1295113105_))))
                                             (_g1294813102_ _g1295113105_))
                                         (_g1294813102_ _g1295113105_))
                                     (_g1294813102_ _g1295113105_))))
                             (_g1294813102_ _g1295113105_))))
                     (_g1294813102_ _g1295113105_))
                 (_g1294813102_ _g1295113105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294813102_
                                                      _g1295113105_))))
                                             (_g1294813102_ _g1295113105_))))
                                     (_g1294813102_ _g1295113105_)))))))
                 (_loop1301813128_ _target1301513123_ '()))
               (_g1294813102_ _g1295113105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1294813102_ _g1295113105_))
                                         (_g1294813102_ _g1295113105_))))
                                 (_g1294813102_ _g1295113105_))))
                         (_g1294813102_ _g1295113105_)))))
              (let ((_g1294613517_
                     (lambda (_g1295113335_)
                       (if (gx#stx-pair? _g1295113335_)
                           (let ((_e1295713337_ (gx#stx-e _g1295113335_)))
                             (let ((_hd1295813340_ (##car _e1295713337_))
                                   (_tl1295913342_ (##cdr _e1295713337_)))
                               (if (gx#stx-pair? _tl1295913342_)
                                   (let ((_e1296013345_
                                          (gx#stx-e _tl1295913342_)))
                                     (let ((_hd1296113348_
                                            (##car _e1296013345_))
                                           (_tl1296213350_
                                            (##cdr _e1296013345_)))
                                       (if (gx#stx-pair? _tl1296213350_)
                                           (let ((_e1296313353_
                                                  (gx#stx-e _tl1296213350_)))
                                             (let ((_hd1296413356_
                                                    (##car _e1296313353_))
                                                   (_tl1296513358_
                                                    (##cdr _e1296313353_)))
                                               (if (gx#stx-pair?
                                                    _hd1296413356_)
                                                   (let ((_e1296613361_
                                                          (gx#stx-e
                                                           _hd1296413356_)))
                                                     (let ((_hd1296713364_
                                                            (##car _e1296613361_))
                                                           (_tl1296813366_
                                                            (##cdr _e1296613361_)))
                                                       (if (gx#identifier?
                                                            _hd1296713364_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1296713364_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1296813366_)
                           (let ((_e1296913369_ (gx#stx-e _tl1296813366_)))
                             (let ((_hd1297013372_ (##car _e1296913369_))
                                   (_tl1297113374_ (##cdr _e1296913369_)))
                               (if (gx#stx-pair? _hd1297013372_)
                                   (let ((_e1297213377_
                                          (gx#stx-e _hd1297013372_)))
                                     (let ((_hd1297313380_
                                            (##car _e1297213377_))
                                           (_tl1297413382_
                                            (##cdr _e1297213377_)))
                                       (if (gx#identifier? _hd1297313380_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1297313380_)
                                               (if (gx#stx-pair?
                                                    _tl1297413382_)
                                                   (let ((_e1297513385_
                                                          (gx#stx-e
                                                           _tl1297413382_)))
                                                     (let ((_hd1297613388_
                                                            (##car _e1297513385_))
                                                           (_tl1297713390_
                                                            (##cdr _e1297513385_)))
                                                       (if (gx#stx-null?
                                                            _tl1297713390_)
                                                           (if (gx#stx-pair?
                                                                _tl1297113374_)
                                                               (let ((_e1297813393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1297113374_)))
                         (let ((_hd1297913396_ (##car _e1297813393_))
                               (_tl1298013398_ (##cdr _e1297813393_)))
                           (if (gx#stx-pair? _hd1297913396_)
                               (let ((_e1298113401_ (gx#stx-e _hd1297913396_)))
                                 (let ((_hd1298213404_ (##car _e1298113401_))
                                       (_tl1298313406_ (##cdr _e1298113401_)))
                                   (if (gx#identifier? _hd1298213404_)
                                       (if (gx#stx-eq? '%#ref _hd1298213404_)
                                           (if (gx#stx-pair? _tl1298313406_)
                                               (let ((_e1298413409_
                                                      (gx#stx-e
                                                       _tl1298313406_)))
                                                 (let ((_hd1298513412_
                                                        (##car _e1298413409_))
                                                       (_tl1298613414_
                                                        (##cdr _e1298413409_)))
                                                   (if (gx#stx-null?
                                                        _tl1298613414_)
                                                       (if (gx#stx-pair?
                                                            _tl1298013398_)
                                                           (let ((_e1298713417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1298013398_)))
                     (let ((_hd1298813420_ (##car _e1298713417_))
                           (_tl1298913422_ (##cdr _e1298713417_)))
                       (if (gx#stx-pair? _hd1298813420_)
                           (let ((_e1299013425_ (gx#stx-e _hd1298813420_)))
                             (let ((_hd1299113428_ (##car _e1299013425_))
                                   (_tl1299213430_ (##cdr _e1299013425_)))
                               (if (gx#identifier? _hd1299113428_)
                                   (if (gx#stx-eq? '%#ref _hd1299113428_)
                                       (if (gx#stx-pair? _tl1299213430_)
                                           (let ((_e1299313433_
                                                  (gx#stx-e _tl1299213430_)))
                                             (let ((_hd1299413436_
                                                    (##car _e1299313433_))
                                                   (_tl1299513438_
                                                    (##cdr _e1299313433_)))
                                               (if (gx#stx-null?
                                                    _tl1299513438_)
                                                   (if (gx#stx-pair?
                                                        _tl1298913422_)
                                                       (let ((_e1299613441_
                                                              (gx#stx-e
                                                               _tl1298913422_)))
                                                         (let ((_hd1299713444_
                                                                (##car _e1299613441_))
                                                               (_tl1299813446_
                                                                (##cdr _e1299613441_)))
                                                           (if (gx#stx-pair?
                                                                _hd1299713444_)
                                                               (let ((_e1299913449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1299713444_)))
                         (let ((_hd1300013452_ (##car _e1299913449_))
                               (_tl1300113454_ (##cdr _e1299913449_)))
                           (if (gx#identifier? _hd1300013452_)
                               (if (gx#stx-eq? '%#ref _hd1300013452_)
                                   (if (gx#stx-pair? _tl1300113454_)
                                       (let ((_e1300213457_
                                              (gx#stx-e _tl1300113454_)))
                                         (let ((_hd1300313460_
                                                (##car _e1300213457_))
                                               (_tl1300413462_
                                                (##cdr _e1300213457_)))
                                           (if (gx#stx-null? _tl1300413462_)
                                               (if (gx#stx-null?
                                                    _tl1299813446_)
                                                   (if (gx#stx-null?
                                                        _tl1296513358_)
                                                       ((lambda (_L13465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13466_
                         _L13467_
                         _L13468_
                         _L13469_)
                  (if (if (gx#identifier? _L13469_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13468_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13467_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13469_ _L13465_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13512_
                             (gxc#generate-runtime-binding-id _L13466_)))
                        (let ((_type13514_
                               (gxc#optimizer-resolve-type _type-t13512_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13514_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13512_)
                                '#f))))
                      (_g1294713332_ _g1295113335_)))
                _hd1300313460_
                _hd1299413436_
                _hd1298513412_
                _hd1297613388_
                _hd1296113348_)
               (_g1294713332_ _g1295113335_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294713332_
                                                    _g1295113335_))
                                               (_g1294713332_ _g1295113335_))))
                                       (_g1294713332_ _g1295113335_))
                                   (_g1294713332_ _g1295113335_))
                               (_g1294713332_ _g1295113335_))))
                       (_g1294713332_ _g1295113335_))))
               (_g1294713332_ _g1295113335_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294713332_
                                                    _g1295113335_))))
                                           (_g1294713332_ _g1295113335_))
                                       (_g1294713332_ _g1295113335_))
                                   (_g1294713332_ _g1295113335_))))
                           (_g1294713332_ _g1295113335_))))
                   (_g1294713332_ _g1295113335_))
               (_g1294713332_ _g1295113335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1294713332_ _g1295113335_))
                                           (_g1294713332_ _g1295113335_))
                                       (_g1294713332_ _g1295113335_))))
                               (_g1294713332_ _g1295113335_))))
                       (_g1294713332_ _g1295113335_))
                   (_g1294713332_ _g1295113335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294713332_
                                                    _g1295113335_))
                                               (_g1294713332_ _g1295113335_))
                                           (_g1294713332_ _g1295113335_))))
                                   (_g1294713332_ _g1295113335_))))
                           (_g1294713332_ _g1295113335_))
                       (_g1294713332_ _g1295113335_))
                   (_g1294713332_ _g1295113335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294713332_
                                                    _g1295113335_))))
                                           (_g1294713332_ _g1295113335_))))
                                   (_g1294713332_ _g1295113335_))))
                           (_g1294713332_ _g1295113335_)))))
                (_g1294613517_ _stx12945_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12891_)
      (let ((_clause-e12893_
             (lambda (_form12943_)
               (let ((__obj17806 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj17806
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12943_)
                    (gxc#dispatch-lambda-form-delegate _form12943_))
                   __obj17806)))))
        (let ((_g1289612906_
               (lambda (_g1289712903_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1289712903_))))
          (let ((_g1289512913_ (lambda (_g1289712909_) ((lambda () '#f)))))
            (let ((_g1289412940_
                   (lambda (_g1289712916_)
                     (if (gx#stx-pair? _g1289712916_)
                         (let ((_e1289912918_ (gx#stx-e _g1289712916_)))
                           (let ((_hd1290012921_ (##car _e1289912918_))
                                 (_tl1290112923_ (##cdr _e1289912918_)))
                             ((lambda (_L12926_)
                                (if (andmap gxc#dispatch-lambda-form? _L12926_)
                                    (let ((_clauses12938_
                                           (map _clause-e12893_ _L12926_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12938_))
                                    (_g1289512913_ _g1289712916_)))
                              _tl1290112923_)))
                         (_g1289512913_ _g1289712916_)))))
              (_g1289412940_ _stx12891_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12796_)
      (let ((_g1279912819_
             (lambda (_g1280012816_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1280012816_))))
        (let ((_g1279812826_ (lambda (_g1280012822_) ((lambda () '#f)))))
          (let ((_g1279712888_
                 (lambda (_g1280012829_)
                   (if (gx#stx-pair? _g1280012829_)
                       (let ((_e1280312831_ (gx#stx-e _g1280012829_)))
                         (let ((_hd1280412834_ (##car _e1280312831_))
                               (_tl1280512836_ (##cdr _e1280312831_)))
                           (if (gx#stx-pair? _tl1280512836_)
                               (let ((_e1280612839_ (gx#stx-e _tl1280512836_)))
                                 (let ((_hd1280712842_ (##car _e1280612839_))
                                       (_tl1280812844_ (##cdr _e1280612839_)))
                                   (if (gx#stx-pair? _hd1280712842_)
                                       (let ((_e1280912847_
                                              (gx#stx-e _hd1280712842_)))
                                         (let ((_hd1281012850_
                                                (##car _e1280912847_))
                                               (_tl1281112852_
                                                (##cdr _e1280912847_)))
                                           (if (gx#identifier? _hd1281012850_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1281012850_)
                                                   (if (gx#stx-pair?
                                                        _tl1281112852_)
                                                       (let ((_e1281212855_
                                                              (gx#stx-e
                                                               _tl1281112852_)))
                                                         (let ((_hd1281312858_
                                                                (##car _e1281212855_))
                                                               (_tl1281412860_
                                                                (##cdr _e1281212855_)))
                                                           (if (gx#stx-null?
                                                                _tl1281412860_)
                                                               ((lambda (_L12863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12864_)
                          (let ((_type-e1288112883_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12864_)
                                  '#f)))
                            (if _type-e1288112883_
                                (let ((_type-e12886_ _type-e1288112883_))
                                  (_type-e12886_ _stx12796_ _L12863_))
                                '#f)))
                        _tl1280812844_
                        _hd1281312858_)
                       (_g1279812826_ _g1280012829_))))
               (_g1279812826_ _g1280012829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279812826_
                                                    _g1280012829_))
                                               (_g1279812826_ _g1280012829_))))
                                       (_g1279812826_ _g1280012829_))))
                               (_g1279812826_ _g1280012829_))))
                       (_g1279812826_ _g1280012829_)))))
            (_g1279712888_ _stx12796_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12281_ _args12282_)
      (let ((_g1228612399_
             (lambda (_g1228712396_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1228712396_))))
        (let ((_g1228512406_
               (lambda (_g1228712402_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12281_))
                      '#f))))))
          (let ((_g1228412613_
                 (lambda (_g1228712409_)
                   (if (gx#stx-pair? _g1228712409_)
                       (let ((_e1234712411_ (gx#stx-e _g1228712409_)))
                         (let ((_hd1234812414_ (##car _e1234712411_))
                               (_tl1234912416_ (##cdr _e1234712411_)))
                           (if (gx#stx-pair? _hd1234812414_)
                               (let ((_e1235012419_ (gx#stx-e _hd1234812414_)))
                                 (let ((_hd1235112422_ (##car _e1235012419_))
                                       (_tl1235212424_ (##cdr _e1235012419_)))
                                   (if (gx#identifier? _hd1235112422_)
                                       (if (gx#stx-eq? '%#quote _hd1235112422_)
                                           (if (gx#stx-pair? _tl1235212424_)
                                               (let ((_e1235312427_
                                                      (gx#stx-e
                                                       _tl1235212424_)))
                                                 (let ((_hd1235412430_
                                                        (##car _e1235312427_))
                                                       (_tl1235512432_
                                                        (##cdr _e1235312427_)))
                                                   (if (gx#stx-null?
                                                        _tl1235512432_)
                                                       (if (gx#stx-pair?
                                                            _tl1234912416_)
                                                           (let ((_e1235612435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1234912416_)))
                     (let ((_hd1235712438_ (##car _e1235612435_))
                           (_tl1235812440_ (##cdr _e1235612435_)))
                       (if (gx#stx-pair? _hd1235712438_)
                           (let ((_e1235912443_ (gx#stx-e _hd1235712438_)))
                             (let ((_hd1236012446_ (##car _e1235912443_))
                                   (_tl1236112448_ (##cdr _e1235912443_)))
                               (if (gx#identifier? _hd1236012446_)
                                   (if (gx#stx-eq? '%#ref _hd1236012446_)
                                       (if (gx#stx-pair? _tl1236112448_)
                                           (let ((_e1236212451_
                                                  (gx#stx-e _tl1236112448_)))
                                             (let ((_hd1236312454_
                                                    (##car _e1236212451_))
                                                   (_tl1236412456_
                                                    (##cdr _e1236212451_)))
                                               (if (gx#stx-null?
                                                    _tl1236412456_)
                                                   (if (gx#stx-pair?
                                                        _tl1235812440_)
                                                       (let ((_e1236512459_
                                                              (gx#stx-e
                                                               _tl1235812440_)))
                                                         (let ((_hd1236612462_
                                                                (##car _e1236512459_))
                                                               (_tl1236712464_
                                                                (##cdr _e1236512459_)))
                                                           (if (gx#stx-pair?
                                                                _hd1236612462_)
                                                               (let ((_e1236812467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1236612462_)))
                         (let ((_hd1236912470_ (##car _e1236812467_))
                               (_tl1237012472_ (##cdr _e1236812467_)))
                           (if (gx#identifier? _hd1236912470_)
                               (if (gx#stx-eq? '%#quote _hd1236912470_)
                                   (if (gx#stx-pair? _tl1237012472_)
                                       (let ((_e1237112475_
                                              (gx#stx-e _tl1237012472_)))
                                         (let ((_hd1237212478_
                                                (##car _e1237112475_))
                                               (_tl1237312480_
                                                (##cdr _e1237112475_)))
                                           (if (gx#stx-null? _tl1237312480_)
                                               (if (gx#stx-pair?
                                                    _tl1236712464_)
                                                   (let ((_e1237412483_
                                                          (gx#stx-e
                                                           _tl1236712464_)))
                                                     (let ((_hd1237512486_
                                                            (##car _e1237412483_))
                                                           (_tl1237612488_
                                                            (##cdr _e1237412483_)))
                                                       (if (gx#stx-pair?
                                                            _tl1237612488_)
                                                           (let ((_e1237712491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1237612488_)))
                     (let ((_hd1237812494_ (##car _e1237712491_))
                           (_tl1237912496_ (##cdr _e1237712491_)))
                       (if (gx#stx-pair? _hd1237812494_)
                           (let ((_e1238012499_ (gx#stx-e _hd1237812494_)))
                             (let ((_hd1238112502_ (##car _e1238012499_))
                                   (_tl1238212504_ (##cdr _e1238012499_)))
                               (if (gx#identifier? _hd1238112502_)
                                   (if (gx#stx-eq? '%#quote _hd1238112502_)
                                       (if (gx#stx-pair? _tl1238212504_)
                                           (let ((_e1238312507_
                                                  (gx#stx-e _tl1238212504_)))
                                             (let ((_hd1238412510_
                                                    (##car _e1238312507_))
                                                   (_tl1238512512_
                                                    (##cdr _e1238312507_)))
                                               (if (gx#stx-null?
                                                    _tl1238512512_)
                                                   (if (gx#stx-pair?
                                                        _tl1237912496_)
                                                       (let ((_e1238612515_
                                                              (gx#stx-e
                                                               _tl1237912496_)))
                                                         (let ((_hd1238712518_
                                                                (##car _e1238612515_))
                                                               (_tl1238812520_
                                                                (##cdr _e1238612515_)))
                                                           (if (gx#stx-pair?
                                                                _hd1238712518_)
                                                               (let ((_e1238912523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1238712518_)))
                         (let ((_hd1239012526_ (##car _e1238912523_))
                               (_tl1239112528_ (##cdr _e1238912523_)))
                           (if (gx#identifier? _hd1239012526_)
                               (if (gx#stx-eq? '%#quote _hd1239012526_)
                                   (if (gx#stx-pair? _tl1239112528_)
                                       (let ((_e1239212531_
                                              (gx#stx-e _tl1239112528_)))
                                         (let ((_hd1239312534_
                                                (##car _e1239212531_))
                                               (_tl1239412536_
                                                (##cdr _e1239212531_)))
                                           (if (gx#stx-null? _tl1239412536_)
                                               (if (gx#stx-null?
                                                    _tl1238812520_)
                                                   ((lambda (_L12539_
                                                             _L12540_
                                                             _L12541_
                                                             _L12542_
                                                             _L12543_
                                                             _L12544_)
                                                      (let ((_super-t12590_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12543_)
                         (gxc#generate-runtime-binding-id _L12543_)
                         '#f)))
                (let ((_super-type12592_
                       (if _super-t12590_
                           (gxc#optimizer-resolve-type _super-t12590_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12592_
                              (not (##structure-instance-of?
                                    _super-type12592_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12281_
                           _L12543_)
                          '#!void)
                      (let ((_fields12608_ (gx#stx-e _L12542_))
                            (_xfields12609_
                             (if _super-type12592_
                                 (let ((_super-fields1259412597_
                                        (##structure-ref
                                         _super-type12592_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1259512599_
                                        (##structure-ref
                                         _super-type12592_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1259412597_
                                       (if _super-xfields1259512599_
                                           (let ((_super-fields12602_
                                                  _super-fields1259412597_)
                                                 (_super-xfields12603_
                                                  _super-xfields1259512599_))
                                             (fx+ _super-fields12602_
                                                  _super-xfields12603_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12610_ (gx#stx-e _L12540_))
                            (_ctor12611_
                             (let ((_$e12605_ (gx#stx-e _L12539_)))
                               (if _$e12605_
                                   (values _$e12605_)
                                   (if _super-type12592_
                                       (##structure-ref
                                        _super-type12592_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12590_ '#!void '#f))))))
                        (let ((__obj17807
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17807
                             (gx#stx-e _L12544_)
                             _super-t12590_
                             _fields12608_
                             _xfields12609_
                             _ctor12611_
                             _plist12610_)
                            __obj17807))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1239312534_
                                                    _hd1238412510_
                                                    _hd1237512486_
                                                    _hd1237212478_
                                                    _hd1236312454_
                                                    _hd1235412430_)
                                                   (_g1228512406_
                                                    _g1228712409_))
                                               (_g1228512406_ _g1228712409_))))
                                       (_g1228512406_ _g1228712409_))
                                   (_g1228512406_ _g1228712409_))
                               (_g1228512406_ _g1228712409_))))
                       (_g1228512406_ _g1228712409_))))
               (_g1228512406_ _g1228712409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1228512406_
                                                    _g1228712409_))))
                                           (_g1228512406_ _g1228712409_))
                                       (_g1228512406_ _g1228712409_))
                                   (_g1228512406_ _g1228712409_))))
                           (_g1228512406_ _g1228712409_))))
                   (_g1228512406_ _g1228712409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1228512406_
                                                    _g1228712409_))
                                               (_g1228512406_ _g1228712409_))))
                                       (_g1228512406_ _g1228712409_))
                                   (_g1228512406_ _g1228712409_))
                               (_g1228512406_ _g1228712409_))))
                       (_g1228512406_ _g1228712409_))))
               (_g1228512406_ _g1228712409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1228512406_
                                                    _g1228712409_))))
                                           (_g1228512406_ _g1228712409_))
                                       (_g1228512406_ _g1228712409_))
                                   (_g1228512406_ _g1228712409_))))
                           (_g1228512406_ _g1228712409_))))
                   (_g1228512406_ _g1228712409_))
               (_g1228512406_ _g1228712409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1228512406_ _g1228712409_))
                                           (_g1228512406_ _g1228712409_))
                                       (_g1228512406_ _g1228712409_))))
                               (_g1228512406_ _g1228712409_))))
                       (_g1228512406_ _g1228712409_)))))
            (let ((_g1228312793_
                   (lambda (_g1228712616_)
                     (if (gx#stx-pair? _g1228712616_)
                         (let ((_e1229312618_ (gx#stx-e _g1228712616_)))
                           (let ((_hd1229412621_ (##car _e1229312618_))
                                 (_tl1229512623_ (##cdr _e1229312618_)))
                             (if (gx#stx-pair? _hd1229412621_)
                                 (let ((_e1229612626_
                                        (gx#stx-e _hd1229412621_)))
                                   (let ((_hd1229712629_ (##car _e1229612626_))
                                         (_tl1229812631_
                                          (##cdr _e1229612626_)))
                                     (if (gx#identifier? _hd1229712629_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1229712629_)
                                             (if (gx#stx-pair? _tl1229812631_)
                                                 (let ((_e1229912634_
                                                        (gx#stx-e
                                                         _tl1229812631_)))
                                                   (let ((_hd1230012637_
                                                          (##car _e1229912634_))
                                                         (_tl1230112639_
                                                          (##cdr _e1229912634_)))
                                                     (if (gx#stx-null?
                                                          _tl1230112639_)
                                                         (if (gx#stx-pair?
                                                              _tl1229512623_)
                                                             (let ((_e1230212642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1229512623_)))
                       (let ((_hd1230312645_ (##car _e1230212642_))
                             (_tl1230412647_ (##cdr _e1230212642_)))
                         (if (gx#stx-pair? _hd1230312645_)
                             (let ((_e1230512650_ (gx#stx-e _hd1230312645_)))
                               (let ((_hd1230612653_ (##car _e1230512650_))
                                     (_tl1230712655_ (##cdr _e1230512650_)))
                                 (if (gx#identifier? _hd1230612653_)
                                     (if (gx#stx-eq? '%#quote _hd1230612653_)
                                         (if (gx#stx-pair? _tl1230712655_)
                                             (let ((_e1230812658_
                                                    (gx#stx-e _tl1230712655_)))
                                               (let ((_hd1230912661_
                                                      (##car _e1230812658_))
                                                     (_tl1231012663_
                                                      (##cdr _e1230812658_)))
                                                 (if (gx#stx-datum?
                                                      _hd1230912661_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1230912661_)
                         '#f)
                 (if (gx#stx-null? _tl1231012663_)
                     (if (gx#stx-pair? _tl1230412647_)
                         (let ((_e1231112666_ (gx#stx-e _tl1230412647_)))
                           (let ((_hd1231212669_ (##car _e1231112666_))
                                 (_tl1231312671_ (##cdr _e1231112666_)))
                             (if (gx#stx-pair? _hd1231212669_)
                                 (let ((_e1231412674_
                                        (gx#stx-e _hd1231212669_)))
                                   (let ((_hd1231512677_ (##car _e1231412674_))
                                         (_tl1231612679_
                                          (##cdr _e1231412674_)))
                                     (if (gx#identifier? _hd1231512677_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1231512677_)
                                             (if (gx#stx-pair? _tl1231612679_)
                                                 (let ((_e1231712682_
                                                        (gx#stx-e
                                                         _tl1231612679_)))
                                                   (let ((_hd1231812685_
                                                          (##car _e1231712682_))
                                                         (_tl1231912687_
                                                          (##cdr _e1231712682_)))
                                                     (if (gx#stx-null?
                                                          _tl1231912687_)
                                                         (if (gx#stx-pair?
                                                              _tl1231312671_)
                                                             (let ((_e1232012690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1231312671_)))
                       (let ((_hd1232112693_ (##car _e1232012690_))
                             (_tl1232212695_ (##cdr _e1232012690_)))
                         (if (gx#stx-pair? _tl1232212695_)
                             (let ((_e1232312698_ (gx#stx-e _tl1232212695_)))
                               (let ((_hd1232412701_ (##car _e1232312698_))
                                     (_tl1232512703_ (##cdr _e1232312698_)))
                                 (if (gx#stx-pair? _hd1232412701_)
                                     (let ((_e1232612706_
                                            (gx#stx-e _hd1232412701_)))
                                       (let ((_hd1232712709_
                                              (##car _e1232612706_))
                                             (_tl1232812711_
                                              (##cdr _e1232612706_)))
                                         (if (gx#identifier? _hd1232712709_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1232712709_)
                                                 (if (gx#stx-pair?
                                                      _tl1232812711_)
                                                     (let ((_e1232912714_
                                                            (gx#stx-e
                                                             _tl1232812711_)))
                                                       (let ((_hd1233012717_
                                                              (##car _e1232912714_))
                                                             (_tl1233112719_
                                                              (##cdr _e1232912714_)))
                                                         (if (gx#stx-null?
                                                              _tl1233112719_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1232512703_)
                         (let ((_e1233212722_ (gx#stx-e _tl1232512703_)))
                           (let ((_hd1233312725_ (##car _e1233212722_))
                                 (_tl1233412727_ (##cdr _e1233212722_)))
                             (if (gx#stx-pair? _hd1233312725_)
                                 (let ((_e1233512730_
                                        (gx#stx-e _hd1233312725_)))
                                   (let ((_hd1233612733_ (##car _e1233512730_))
                                         (_tl1233712735_
                                          (##cdr _e1233512730_)))
                                     (if (gx#identifier? _hd1233612733_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1233612733_)
                                             (if (gx#stx-pair? _tl1233712735_)
                                                 (let ((_e1233812738_
                                                        (gx#stx-e
                                                         _tl1233712735_)))
                                                   (let ((_hd1233912741_
                                                          (##car _e1233812738_))
                                                         (_tl1234012743_
                                                          (##cdr _e1233812738_)))
                                                     (if (gx#stx-null?
                                                          _tl1234012743_)
                                                         (if (gx#stx-null?
                                                              _tl1233412727_)
                                                             ((lambda (_L12746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12747_
                               _L12748_
                               _L12749_
                               _L12750_)
                        (let ((__obj17808
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17808
                             (gx#stx-e _L12750_)
                             '#f
                             (gx#stx-e _L12749_)
                             '0
                             (gx#stx-e _L12746_)
                             (gx#stx-e _L12747_))
                            __obj17808)))
                      _hd1233912741_
                      _hd1233012717_
                      _hd1232112693_
                      _hd1231812685_
                      _hd1230012637_)
                     (_g1228412613_ _g1228712616_))
                 (_g1228412613_ _g1228712616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1228412613_ _g1228712616_))
                                             (_g1228412613_ _g1228712616_))
                                         (_g1228412613_ _g1228712616_))))
                                 (_g1228412613_ _g1228712616_))))
                         (_g1228412613_ _g1228712616_))
                     (_g1228412613_ _g1228712616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1228412613_
                                                      _g1228712616_))
                                                 (_g1228412613_ _g1228712616_))
                                             (_g1228412613_ _g1228712616_))))
                                     (_g1228412613_ _g1228712616_))))
                             (_g1228412613_ _g1228712616_))))
                     (_g1228412613_ _g1228712616_))
                 (_g1228412613_ _g1228712616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1228412613_ _g1228712616_))
                                             (_g1228412613_ _g1228712616_))
                                         (_g1228412613_ _g1228712616_))))
                                 (_g1228412613_ _g1228712616_))))
                         (_g1228412613_ _g1228712616_))
                     (_g1228412613_ _g1228712616_))
                 (_g1228412613_ _g1228712616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1228412613_
                                                      _g1228712616_))))
                                             (_g1228412613_ _g1228712616_))
                                         (_g1228412613_ _g1228712616_))
                                     (_g1228412613_ _g1228712616_))))
                             (_g1228412613_ _g1228712616_))))
                     (_g1228412613_ _g1228712616_))
                 (_g1228412613_ _g1228712616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1228412613_ _g1228712616_))
                                             (_g1228412613_ _g1228712616_))
                                         (_g1228412613_ _g1228712616_))))
                                 (_g1228412613_ _g1228712616_))))
                         (_g1228412613_ _g1228712616_)))))
              (_g1228312793_ _args12282_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12207_ _args12208_)
      (let ((_g1221112227_
             (lambda (_g1221212224_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1221212224_))))
        (let ((_g1221012234_ (lambda (_g1221212230_) ((lambda () '#f)))))
          (let ((_g1220912278_
                 (lambda (_g1221212237_)
                   (if (gx#stx-pair? _g1221212237_)
                       (let ((_e1221412239_ (gx#stx-e _g1221212237_)))
                         (let ((_hd1221512242_ (##car _e1221412239_))
                               (_tl1221612244_ (##cdr _e1221412239_)))
                           (if (gx#stx-pair? _hd1221512242_)
                               (let ((_e1221712247_ (gx#stx-e _hd1221512242_)))
                                 (let ((_hd1221812250_ (##car _e1221712247_))
                                       (_tl1221912252_ (##cdr _e1221712247_)))
                                   (if (gx#identifier? _hd1221812250_)
                                       (if (gx#stx-eq? '%#ref _hd1221812250_)
                                           (if (gx#stx-pair? _tl1221912252_)
                                               (let ((_e1222012255_
                                                      (gx#stx-e
                                                       _tl1221912252_)))
                                                 (let ((_hd1222112258_
                                                        (##car _e1222012255_))
                                                       (_tl1222212260_
                                                        (##cdr _e1222012255_)))
                                                   (if (gx#stx-null?
                                                        _tl1222212260_)
                                                       (if (gx#stx-null?
                                                            _tl1221612244_)
                                                           ((lambda (_L12263_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12263_)))
                                                            _hd1222112258_)
                                                           (_g1221012234_
                                                            _g1221212237_))
                                                       (_g1221012234_
                                                        _g1221212237_))))
                                               (_g1221012234_ _g1221212237_))
                                           (_g1221012234_ _g1221212237_))
                                       (_g1221012234_ _g1221212237_))))
                               (_g1221012234_ _g1221212237_))))
                       (_g1221012234_ _g1221212237_)))))
            (_g1220912278_ _args12208_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12091_ _args12092_)
      (let ((_g1209512121_
             (lambda (_g1209612118_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1209612118_))))
        (let ((_g1209412128_ (lambda (_g1209612124_) ((lambda () '#f)))))
          (let ((_g1209312204_
                 (lambda (_g1209612131_)
                   (if (gx#stx-pair? _g1209612131_)
                       (let ((_e1209912133_ (gx#stx-e _g1209612131_)))
                         (let ((_hd1210012136_ (##car _e1209912133_))
                               (_tl1210112138_ (##cdr _e1209912133_)))
                           (if (gx#stx-pair? _hd1210012136_)
                               (let ((_e1210212141_ (gx#stx-e _hd1210012136_)))
                                 (let ((_hd1210312144_ (##car _e1210212141_))
                                       (_tl1210412146_ (##cdr _e1210212141_)))
                                   (if (gx#identifier? _hd1210312144_)
                                       (if (gx#stx-eq? '%#ref _hd1210312144_)
                                           (if (gx#stx-pair? _tl1210412146_)
                                               (let ((_e1210512149_
                                                      (gx#stx-e
                                                       _tl1210412146_)))
                                                 (let ((_hd1210612152_
                                                        (##car _e1210512149_))
                                                       (_tl1210712154_
                                                        (##cdr _e1210512149_)))
                                                   (if (gx#stx-null?
                                                        _tl1210712154_)
                                                       (if (gx#stx-pair?
                                                            _tl1210112138_)
                                                           (let ((_e1210812157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1210112138_)))
                     (let ((_hd1210912160_ (##car _e1210812157_))
                           (_tl1211012162_ (##cdr _e1210812157_)))
                       (if (gx#stx-pair? _hd1210912160_)
                           (let ((_e1211112165_ (gx#stx-e _hd1210912160_)))
                             (let ((_hd1211212168_ (##car _e1211112165_))
                                   (_tl1211312170_ (##cdr _e1211112165_)))
                               (if (gx#identifier? _hd1211212168_)
                                   (if (gx#stx-eq? '%#quote _hd1211212168_)
                                       (if (gx#stx-pair? _tl1211312170_)
                                           (let ((_e1211412173_
                                                  (gx#stx-e _tl1211312170_)))
                                             (let ((_hd1211512176_
                                                    (##car _e1211412173_))
                                                   (_tl1211612178_
                                                    (##cdr _e1211412173_)))
                                               (if (gx#stx-null?
                                                    _tl1211612178_)
                                                   (if (gx#stx-null?
                                                        _tl1211012162_)
                                                       ((lambda (_L12181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12182_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12182_)
                   (gx#stx-e _L12181_)))
                _hd1211512176_
                _hd1210612152_)
               (_g1209412128_ _g1209612131_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1209412128_
                                                    _g1209612131_))))
                                           (_g1209412128_ _g1209612131_))
                                       (_g1209412128_ _g1209612131_))
                                   (_g1209412128_ _g1209612131_))))
                           (_g1209412128_ _g1209612131_))))
                   (_g1209412128_ _g1209612131_))
               (_g1209412128_ _g1209612131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1209412128_ _g1209612131_))
                                           (_g1209412128_ _g1209612131_))
                                       (_g1209412128_ _g1209612131_))))
                               (_g1209412128_ _g1209612131_))))
                       (_g1209412128_ _g1209612131_)))))
            (_g1209312204_ _args12092_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11975_ _args11976_)
      (let ((_g1197912005_
             (lambda (_g1198012002_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1198012002_))))
        (let ((_g1197812012_ (lambda (_g1198012008_) ((lambda () '#f)))))
          (let ((_g1197712088_
                 (lambda (_g1198012015_)
                   (if (gx#stx-pair? _g1198012015_)
                       (let ((_e1198312017_ (gx#stx-e _g1198012015_)))
                         (let ((_hd1198412020_ (##car _e1198312017_))
                               (_tl1198512022_ (##cdr _e1198312017_)))
                           (if (gx#stx-pair? _hd1198412020_)
                               (let ((_e1198612025_ (gx#stx-e _hd1198412020_)))
                                 (let ((_hd1198712028_ (##car _e1198612025_))
                                       (_tl1198812030_ (##cdr _e1198612025_)))
                                   (if (gx#identifier? _hd1198712028_)
                                       (if (gx#stx-eq? '%#ref _hd1198712028_)
                                           (if (gx#stx-pair? _tl1198812030_)
                                               (let ((_e1198912033_
                                                      (gx#stx-e
                                                       _tl1198812030_)))
                                                 (let ((_hd1199012036_
                                                        (##car _e1198912033_))
                                                       (_tl1199112038_
                                                        (##cdr _e1198912033_)))
                                                   (if (gx#stx-null?
                                                        _tl1199112038_)
                                                       (if (gx#stx-pair?
                                                            _tl1198512022_)
                                                           (let ((_e1199212041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1198512022_)))
                     (let ((_hd1199312044_ (##car _e1199212041_))
                           (_tl1199412046_ (##cdr _e1199212041_)))
                       (if (gx#stx-pair? _hd1199312044_)
                           (let ((_e1199512049_ (gx#stx-e _hd1199312044_)))
                             (let ((_hd1199612052_ (##car _e1199512049_))
                                   (_tl1199712054_ (##cdr _e1199512049_)))
                               (if (gx#identifier? _hd1199612052_)
                                   (if (gx#stx-eq? '%#quote _hd1199612052_)
                                       (if (gx#stx-pair? _tl1199712054_)
                                           (let ((_e1199812057_
                                                  (gx#stx-e _tl1199712054_)))
                                             (let ((_hd1199912060_
                                                    (##car _e1199812057_))
                                                   (_tl1200012062_
                                                    (##cdr _e1199812057_)))
                                               (if (gx#stx-null?
                                                    _tl1200012062_)
                                                   (if (gx#stx-null?
                                                        _tl1199412046_)
                                                       ((lambda (_L12065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12066_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12066_)
                   (gx#stx-e _L12065_)))
                _hd1199912060_
                _hd1199012036_)
               (_g1197812012_ _g1198012015_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1197812012_
                                                    _g1198012015_))))
                                           (_g1197812012_ _g1198012015_))
                                       (_g1197812012_ _g1198012015_))
                                   (_g1197812012_ _g1198012015_))))
                           (_g1197812012_ _g1198012015_))))
                   (_g1197812012_ _g1198012015_))
               (_g1197812012_ _g1198012015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1197812012_ _g1198012015_))
                                           (_g1197812012_ _g1198012015_))
                                       (_g1197812012_ _g1198012015_))))
                               (_g1197812012_ _g1198012015_))))
                       (_g1197812012_ _g1198012015_)))))
            (_g1197712088_ _args11976_))))))
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
    (lambda (_stx11924_)
      (let ((_g1192611939_
             (lambda (_g1192711936_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1192711936_))))
        (let ((_g1192511972_
               (lambda (_g1192711942_)
                 (if (gx#stx-pair? _g1192711942_)
                     (let ((_e1192911944_ (gx#stx-e _g1192711942_)))
                       (let ((_hd1193011947_ (##car _e1192911944_))
                             (_tl1193111949_ (##cdr _e1192911944_)))
                         (if (gx#stx-pair? _tl1193111949_)
                             (let ((_e1193211952_ (gx#stx-e _tl1193111949_)))
                               (let ((_hd1193311955_ (##car _e1193211952_))
                                     (_tl1193411957_ (##cdr _e1193211952_)))
                                 (if (gx#stx-null? _tl1193411957_)
                                     ((lambda (_L11960_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L11960_)))
                                      _hd1193311955_)
                                     (_g1192611939_ _g1192711942_))))
                             (_g1192611939_ _g1192711942_))))
                     (_g1192611939_ _g1192711942_)))))
          (_g1192511972_ _stx11924_)))))
  (define gxc#optimize-call%
    (lambda (_stx11830_)
      (let ((_g1183311853_
             (lambda (_g1183411850_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1183411850_))))
        (let ((_g1183211860_
               (lambda (_g1183411856_)
                 ((lambda () (gxc#xform-call% _stx11830_))))))
          (let ((_g1183111921_
                 (lambda (_g1183411863_)
                   (if (gx#stx-pair? _g1183411863_)
                       (let ((_e1183711865_ (gx#stx-e _g1183411863_)))
                         (let ((_hd1183811868_ (##car _e1183711865_))
                               (_tl1183911870_ (##cdr _e1183711865_)))
                           (if (gx#stx-pair? _tl1183911870_)
                               (let ((_e1184011873_ (gx#stx-e _tl1183911870_)))
                                 (let ((_hd1184111876_ (##car _e1184011873_))
                                       (_tl1184211878_ (##cdr _e1184011873_)))
                                   (if (gx#stx-pair? _hd1184111876_)
                                       (let ((_e1184311881_
                                              (gx#stx-e _hd1184111876_)))
                                         (let ((_hd1184411884_
                                                (##car _e1184311881_))
                                               (_tl1184511886_
                                                (##cdr _e1184311881_)))
                                           (if (gx#identifier? _hd1184411884_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1184411884_)
                                                   (if (gx#stx-pair?
                                                        _tl1184511886_)
                                                       (let ((_e1184611889_
                                                              (gx#stx-e
                                                               _tl1184511886_)))
                                                         (let ((_hd1184711892_
                                                                (##car _e1184611889_))
                                                               (_tl1184811894_
                                                                (##cdr _e1184611889_)))
                                                           (if (gx#stx-null?
                                                                _tl1184811894_)
                                                               ((lambda (_L11897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11898_)
                          (let ((_rator-id11916_
                                 (gxc#generate-runtime-binding-id _L11898_)))
                            (let ((_rator-type11918_
                                   (gxc#optimizer-lookup-type
                                    _rator-id11916_)))
                              (let ()
                                (if _rator-type11918_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11916_
                                       '" => "
                                       _rator-type11918_
                                       '" "
                                       (##structure-ref
                                        _rator-type11918_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11918_
                                       'optimize-call
                                       _stx11830_
                                       _L11897_))
                                    (gxc#xform-call% _stx11830_))))))
                        _tl1184211878_
                        _hd1184711892_)
                       (_g1183211860_ _g1183411863_))))
               (_g1183211860_ _g1183411863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1183211860_
                                                    _g1183411863_))
                                               (_g1183211860_ _g1183411863_))))
                                       (_g1183211860_ _g1183411863_))))
                               (_g1183211860_ _g1183411863_))))
                       (_g1183211860_ _g1183411863_)))))
            (_g1183111921_ _stx11830_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self11800_ _stx11801_ _args11802_)
      (let ((_self1180311809_ _self11800_))
        (let ((_E1180511813_
               (lambda () (error '"No clause matching" _self1180311809_))))
          (let ((_K1180611822_
                 (lambda (_alias-id11816_)
                   (let ((_alias-type11818_
                          (gxc#optimizer-lookup-type _alias-id11816_)))
                     (if (##structure-instance-of?
                          _alias-type11818_
                          'gxc#!type::t)
                         (call-method
                          _alias-type11818_
                          'optimize-call
                          _stx11801_
                          _args11802_)
                         (let ((_args11820_
                                (gx#stx-map1 gxc#compile-e _args11802_)))
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _alias-id11816_ '()))
                                         _args11820_))
                             _stx11801_))))))))
            (if (struct-instance? gxc#!alias::t _self1180311809_)
                (let ((_e1180711825_ (##vector-ref _self1180311809_ '1)))
                  (let ((_alias-id11828_ _e1180711825_))
                    (_K1180611822_ _alias-id11828_)))
                (_E1180511813_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11655_ _stx11656_ _args11657_)
      (let ((_self1165811664_ _self11655_))
        (let ((_E1166011668_
               (lambda () (error '"No clause matching" _self1165811664_))))
          (let ((_K1166111792_
                 (lambda (_struct-t11671_)
                   (let ((_struct-type11673_
                          (gxc#optimizer-resolve-type _struct-t11671_)))
                     (let ((_struct-type1167411688_ _struct-type11673_))
                       (let ((_E1167811692_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1167411688_))))
                         (let ((_else1167711696_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11656_
                                   _struct-t11671_
                                   _struct-type11673_))))
                           (let ((_try-match1167611704_
                                  (lambda ()
                                    (let ((_K1167911701_
                                           (lambda ()
                                             (gxc#xform-call% _stx11656_))))
                                      (if (##eq? _struct-type1167411688_ '#f)
                                          (_K1167911701_)
                                          (_else1167711696_))))))
                             (let ((_K1168011767_
                                    (lambda (_plist11707_
                                             _struct-type-id11708_)
                                      (let ((_g1171111721_
                                             (lambda (_g1171211718_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1171211718_))))
                                        (let ((_g1171011728_
                                               (lambda (_g1171211724_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11656_))))))
                                          (let ((_g1170911764_
                                                 (lambda (_g1171211731_)
                                                   (if (gx#stx-pair?
                                                        _g1171211731_)
                                                       (let ((_e1171411733_
                                                              (gx#stx-e
                                                               _g1171211731_)))
                                                         (let ((_hd1171511736_
                                                                (##car _e1171411733_))
                                                               (_tl1171611738_
                                                                (##cdr _e1171411733_)))
                                                           (if (gx#stx-null?
                                                                _tl1171611738_)
                                                               ((lambda (_L11741_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11761_ (gxc#compile-e _L11741_))
                                (_op11762_
                                 (if (if _plist11707_
                                         (assgetq 'final: _plist11707_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11762_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11708_
                                                     '()))
                                         (cons _expr11761_ '())))
                             _stx11656_)))
                        _hd1171511736_)
                       (_g1171011728_ _g1171211731_))))
               (_g1171011728_ _g1171211731_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1170911764_ _args11657_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1167411688_)
                                   (let ((_e1168111770_
                                          (##vector-ref
                                           _struct-type1167411688_
                                           '1)))
                                     (let ((_struct-type-id11773_
                                            _e1168111770_))
                                       (let ((_e1168211775_
                                              (##vector-ref
                                               _struct-type1167411688_
                                               '2)))
                                         (let ((_e1168311778_
                                                (##vector-ref
                                                 _struct-type1167411688_
                                                 '3)))
                                           (let ((_e1168411781_
                                                  (##vector-ref
                                                   _struct-type1167411688_
                                                   '4)))
                                             (let ((_e1168511784_
                                                    (##vector-ref
                                                     _struct-type1167411688_
                                                     '5)))
                                               (let ((_e1168611787_
                                                      (##vector-ref
                                                       _struct-type1167411688_
                                                       '6)))
                                                 (let ((_plist11790_
                                                        _e1168611787_))
                                                   (_K1168011767_
                                                    _plist11790_
                                                    _struct-type-id11773_)))))))))
                                   (_try-match1167611704_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1165811664_)
                (let ((_e1166211795_ (##vector-ref _self1165811664_ '1)))
                  (let ((_struct-t11798_ _e1166211795_))
                    (_K1166111792_ _struct-t11798_)))
                (_E1166011668_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11551_ _stx11552_ _args11553_)
      (let ((_self1155411560_ _self11551_))
        (let ((_E1155611564_
               (lambda () (error '"No clause matching" _self1155411560_))))
          (let ((_K1155711647_
                 (lambda (_struct-t11567_)
                   (let ((_struct-type11569_
                          (gxc#optimizer-resolve-type _struct-t11567_)))
                     (let ((_struct-type1157011583_ _struct-type11569_))
                       (let ((_E1157411587_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1157011583_))))
                         (let ((_else1157311591_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11552_
                                   _struct-t11567_
                                   _struct-type11569_))))
                           (let ((_try-match1157211599_
                                  (lambda ()
                                    (let ((_K1157511596_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11567_)
                                               (gxc#xform-call% _stx11552_)))))
                                      (if (##eq? _struct-type1157011583_ '#f)
                                          (_K1157511596_)
                                          (_else1157311591_))))))
                             (let ((_K1157611621_
                                    (lambda (_ctor11602_
                                             _xfields11603_
                                             _fields11604_
                                             _type-id11605_)
                                      (let ((_args11607_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args11553_)))
                                        (let ((_$e11609_
                                               (if _ctor11602_
                                                   (if _xfields11603_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11569_
                                                        _ctor11602_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11609_
                                              ((lambda (_kons11612_)
                                                 (let ((_$obj11614_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11567_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11604_ _xfields11603_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11614_ '())) _args11607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11552_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11614_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11552_)))
                                               _$e11609_)
                                              (if (let ((_$e11616_
                                                         _ctor11602_))
                                                    (if _$e11616_
                                                        _$e11616_
                                                        (not _xfields11603_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11567_ '()))
                             _args11607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11552_)
                                                  (let ((_arity11619_
                                                         (fx+ _fields11604_
                                                              _xfields11603_)))
                                                    (if (fx= _arity11619_
                                                             (length _args11607_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11567_ '()))
                                   _args11607_)))
                 _stx11552_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11552_
                 _struct-t11567_
                 _arity11619_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1157011583_)
                                   (let ((_e1157711624_
                                          (##vector-ref
                                           _struct-type1157011583_
                                           '1)))
                                     (let ((_type-id11627_ _e1157711624_))
                                       (let ((_e1157811629_
                                              (##vector-ref
                                               _struct-type1157011583_
                                               '2)))
                                         (let ((_e1157911632_
                                                (##vector-ref
                                                 _struct-type1157011583_
                                                 '3)))
                                           (let ((_fields11635_ _e1157911632_))
                                             (let ((_e1158011637_
                                                    (##vector-ref
                                                     _struct-type1157011583_
                                                     '4)))
                                               (let ((_xfields11640_
                                                      _e1158011637_))
                                                 (let ((_e1158111642_
                                                        (##vector-ref
                                                         _struct-type1157011583_
                                                         '5)))
                                                   (let ((_ctor11645_
                                                          _e1158111642_))
                                                     (_K1157611621_
                                                      _ctor11645_
                                                      _xfields11640_
                                                      _fields11635_
                                                      _type-id11627_))))))))))
                                   (_try-match1157211599_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1155411560_)
                (let ((_e1155811650_ (##vector-ref _self1155411560_ '1)))
                  (let ((_struct-t11653_ _e1155811650_))
                    (_K1155711647_ _struct-t11653_)))
                (_E1155611564_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11404_ _stx11405_ _args11406_)
      (let ((_self1140711414_ _self11404_))
        (let ((_E1140911418_
               (lambda () (error '"No clause matching" _self1140711414_))))
          (let ((_K1141011538_
                 (lambda (_off11421_ _struct-t11422_)
                   (let ((_struct-type11424_
                          (gxc#optimizer-resolve-type _struct-t11422_)))
                     (let ((_struct-type1142511437_ _struct-type11424_))
                       (let ((_E1142911441_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1142511437_))))
                         (let ((_else1142811445_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11405_
                                   _struct-t11422_
                                   _struct-type11424_))))
                           (let ((_try-match1142711453_
                                  (lambda ()
                                    (let ((_K1143011450_
                                           (lambda ()
                                             (gxc#xform-call% _stx11405_))))
                                      (if (##eq? _struct-type1142511437_ '#f)
                                          (_K1143011450_)
                                          (_else1142811445_))))))
                             (let ((_K1143111517_
                                    (lambda (_xfields11456_
                                             _fields11457_
                                             _struct-type-id11458_)
                                      (if _xfields11456_
                                          (let ((_g1146111471_
                                                 (lambda (_g1146211468_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1146211468_))))
                                            (let ((_g1146011478_
                                                   (lambda (_g1146211474_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11405_))))))
                                              (let ((_g1145911514_
                                                     (lambda (_g1146211481_)
                                                       (if (gx#stx-pair?
                                                            _g1146211481_)
                                                           (let ((_e1146411483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1146211481_)))
                     (let ((_hd1146511486_ (##car _e1146411483_))
                           (_tl1146611488_ (##cdr _e1146411483_)))
                       (if (gx#stx-null? _tl1146611488_)
                           ((lambda (_L11491_)
                              (let ((_expr11511_ (gxc#compile-e _L11491_))
                                    (_off11512_
                                     (fx+ _off11421_ _xfields11456_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11422_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11512_ '()))
                                                   (cons _expr11511_ '()))))
                                 _stx11405_)))
                            _hd1146511486_)
                           (_g1146011478_ _g1146211481_))))
                   (_g1146011478_ _g1146211481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1145911514_ _args11406_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11458_)
                                            (gxc#xform-call% _stx11405_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1142511437_)
                                   (let ((_e1143211520_
                                          (##vector-ref
                                           _struct-type1142511437_
                                           '1)))
                                     (let ((_struct-type-id11523_
                                            _e1143211520_))
                                       (let ((_e1143311525_
                                              (##vector-ref
                                               _struct-type1142511437_
                                               '2)))
                                         (let ((_e1143411528_
                                                (##vector-ref
                                                 _struct-type1142511437_
                                                 '3)))
                                           (let ((_fields11531_ _e1143411528_))
                                             (let ((_e1143511533_
                                                    (##vector-ref
                                                     _struct-type1142511437_
                                                     '4)))
                                               (let ((_xfields11536_
                                                      _e1143511533_))
                                                 (_K1143111517_
                                                  _xfields11536_
                                                  _fields11531_
                                                  _struct-type-id11523_))))))))
                                   (_try-match1142711453_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1140711414_)
                (let ((_e1141111541_ (##vector-ref _self1140711414_ '1)))
                  (let ((_struct-t11544_ _e1141111541_))
                    (let ((_e1141211546_ (##vector-ref _self1140711414_ '2)))
                      (let ((_off11549_ _e1141211546_))
                        (_K1141011538_ _off11549_ _struct-t11544_)))))
                (_E1140911418_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11240_ _stx11241_ _args11242_)
      (let ((_self1124311250_ _self11240_))
        (let ((_E1124511254_
               (lambda () (error '"No clause matching" _self1124311250_))))
          (let ((_K1124611391_
                 (lambda (_off11257_ _struct-t11258_)
                   (let ((_struct-type11260_
                          (gxc#optimizer-resolve-type _struct-t11258_)))
                     (let ((_struct-type1126111273_ _struct-type11260_))
                       (let ((_E1126511277_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1126111273_))))
                         (let ((_else1126411281_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11241_
                                   _struct-t11258_
                                   _struct-type11260_))))
                           (let ((_try-match1126311289_
                                  (lambda ()
                                    (let ((_K1126611286_
                                           (lambda ()
                                             (gxc#xform-call% _stx11241_))))
                                      (if (##eq? _struct-type1126111273_ '#f)
                                          (_K1126611286_)
                                          (_else1126411281_))))))
                             (let ((_K1126711370_
                                    (lambda (_xfields11292_
                                             _fields11293_
                                             _struct-type-id11294_)
                                      (if _xfields11292_
                                          (let ((_g1129711311_
                                                 (lambda (_g1129811308_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1129811308_))))
                                            (let ((_g1129611318_
                                                   (lambda (_g1129811314_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11241_))))))
                                              (let ((_g1129511367_
                                                     (lambda (_g1129811321_)
                                                       (if (gx#stx-pair?
                                                            _g1129811321_)
                                                           (let ((_e1130111323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1129811321_)))
                     (let ((_hd1130211326_ (##car _e1130111323_))
                           (_tl1130311328_ (##cdr _e1130111323_)))
                       (if (gx#stx-pair? _tl1130311328_)
                           (let ((_e1130411331_ (gx#stx-e _tl1130311328_)))
                             (let ((_hd1130511334_ (##car _e1130411331_))
                                   (_tl1130611336_ (##cdr _e1130411331_)))
                               (if (gx#stx-null? _tl1130611336_)
                                   ((lambda (_L11339_ _L11340_)
                                      (let ((_expr11363_
                                             (gxc#compile-e _L11340_))
                                            (_val11364_
                                             (gxc#compile-e _L11339_))
                                            (_off11365_
                                             (fx+ _off11257_
                                                  _xfields11292_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11365_ '()))
                   (cons _expr11363_ (cons _val11364_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11241_)))
                                    _hd1130511334_
                                    _hd1130211326_)
                                   (_g1129611318_ _g1129811321_))))
                           (_g1129611318_ _g1129811321_))))
                   (_g1129611318_ _g1129811321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1129511367_ _args11242_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11294_)
                                            (gxc#xform-call% _stx11241_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1126111273_)
                                   (let ((_e1126811373_
                                          (##vector-ref
                                           _struct-type1126111273_
                                           '1)))
                                     (let ((_struct-type-id11376_
                                            _e1126811373_))
                                       (let ((_e1126911378_
                                              (##vector-ref
                                               _struct-type1126111273_
                                               '2)))
                                         (let ((_e1127011381_
                                                (##vector-ref
                                                 _struct-type1126111273_
                                                 '3)))
                                           (let ((_fields11384_ _e1127011381_))
                                             (let ((_e1127111386_
                                                    (##vector-ref
                                                     _struct-type1126111273_
                                                     '4)))
                                               (let ((_xfields11389_
                                                      _e1127111386_))
                                                 (_K1126711370_
                                                  _xfields11389_
                                                  _fields11384_
                                                  _struct-type-id11376_))))))))
                                   (_try-match1126311289_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1124311250_)
                (let ((_e1124711394_ (##vector-ref _self1124311250_ '1)))
                  (let ((_struct-t11397_ _e1124711394_))
                    (let ((_e1124811399_ (##vector-ref _self1124311250_ '2)))
                      (let ((_off11402_ _e1124811399_))
                        (_K1124611391_ _off11402_ _struct-t11397_)))))
                (_E1124511254_)))))))
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
          (let ((_K1120011219_
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
                             (let ((_args11217_
                                    (gx#stx-map1 gxc#compile-e _args11196_)))
                               (begin
                                 (gxc#verbose
                                  '"dispatch lambda => "
                                  _dispatch11214_)
                                 (gxc#compile-e
                                  (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _dispatch11214_
                                                           '()))
                                               _args11217_))
                                   _stx11195_))))
                             (gxc#xform-call% _stx11195_)))))))
            (if (struct-instance? gxc#!lambda::t _self1119711206_)
                (let ((_e1120111222_ (##vector-ref _self1119711206_ '1)))
                  (let ((_e1120211225_ (##vector-ref _self1119711206_ '2)))
                    (let ((_arity11228_ _e1120211225_))
                      (let ((_e1120311230_ (##vector-ref _self1119711206_ '3)))
                        (let ((_dispatch11233_ _e1120311230_))
                          (let ((_e1120411235_
                                 (##vector-ref _self1119711206_ '4)))
                            (let ((_inline11238_ _e1120411235_))
                              (_K1120011219_
                               _inline11238_
                               _dispatch11233_
                               _arity11228_))))))))
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
                                         (fx>= (gx#stx-length _args11091_)
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
                                  (fx= (gx#stx-length _args11091_)
                                       _arity11106_))))
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
                                           (let ((_g17849_
                                                  (gx#syntax-split-splice
                                                   _hd1086510899_
                                                   '0)))
                                             (begin
                                               (let ((_g17850_
                                                      (values-count _g17849_)))
                                                 (if (not (fx= _g17850_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17850_)))
                                               (let ((_target1086710904_
                                                      (values-ref _g17849_ 0))
                                                     (_tl1086910906_
                                                      (values-ref _g17849_ 1)))
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
                                                            (foldr (lambda (_g1095410957_
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
