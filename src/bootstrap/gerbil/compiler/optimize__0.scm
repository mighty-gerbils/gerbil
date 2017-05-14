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
    (lambda _$args17800_
      (apply make-struct-instance gxc#optimizer-info::t _$args17800_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self17798_)
      (direct-struct-instance-init!
       _self17798_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj17802 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj17802) __obj17802))))))
  (define gxc#optimize!
    (lambda (_ctx17792_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-prelude-ssxi _ctx17792_)
           (gxc#optimizer-load-ssxi-deps _ctx17792_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx17792_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code17795_
                  (gxc#optimize-source
                   (##structure-ref _ctx17792_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx17792_
              _code17795_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx17753_)
      ((letrec ((_lp17755_
                 (lambda (_rest17757_)
                   (let ((_rest1775817766_ _rest17757_))
                     (let ((_E1776117770_
                            (lambda ()
                              (error '"No clause matching" _rest1775817766_))))
                       (let ((_else1776017774_ (lambda () '#!void)))
                         (let ((_K1776217780_
                                (lambda (_rest17777_ _hd17778_)
                                  (if (##structure-instance-of?
                                       _hd17778_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd17778_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx17753_)
                                              (_lp17755_
                                               (##structure-ref
                                                _hd17778_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd17778_)))
                                        (_lp17755_ _rest17777_))
                                      (if (##structure-direct-instance-of?
                                           _hd17778_
                                           'gx#module-import::t)
                                          (_lp17755_
                                           (cons (##structure-ref
                                                  _hd17778_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest17777_))
                                          (if (##structure-direct-instance-of?
                                               _hd17778_
                                               'gx#module-export::t)
                                              (_lp17755_
                                               (cons (##structure-ref
                                                      _hd17778_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest17777_))
                                              (if (##structure-direct-instance-of?
                                                   _hd17778_
                                                   'gx#import-set::t)
                                                  (_lp17755_
                                                   (cons (##structure-ref
                                                          _hd17778_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest17777_))
                                                  (error '"Unexpected module import"
                                                         _hd17778_))))))))
                           (if (##pair? _rest1775817766_)
                               (let ((_hd1776317783_ (##car _rest1775817766_))
                                     (_tl1776417785_ (##cdr _rest1775817766_)))
                                 (let ((_hd17788_ _hd1776317783_))
                                   (let ((_rest17790_ _tl1776417785_))
                                     (_K1776217780_ _rest17790_ _hd17788_))))
                               (_else1776017774_)))))))))
         _lp17755_)
       (##structure-ref _ctx17753_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx17748_)
      (let ((_$e17750_ (gx#core-context-prelude__opt-lambda10896 _ctx17748_)))
        (if _$e17750_ (gxc#optimizer-load-ssxi _$e17750_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx17728_)
      (if (if (##structure-instance-of? _ctx17728_ 'gx#module-context::t)
              (list? (##structure-ref _ctx17728_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht17730_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id17732_
                   (##structure-ref _ctx17728_ '1 gx#expander-context::t '#f)))
              (let ((_mod17734_ (table-ref _ht17730_ _id17732_ '#f)))
                (let ()
                  (let ((_$e17737_ _mod17734_))
                    (if _$e17737_
                        _$e17737_
                        (let ((_mod17740_
                               (gxc#optimizer-import-ssxi _ctx17728_)))
                          (let ((_val17745_
                                 (let ((_$e17742_ _mod17740_))
                                   (if _$e17742_ _$e17742_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht17730_ _id17732_ _val17745_)
                                _val17745_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx17705_)
      (let ((_catch-e17707_
             (lambda (_exn17726_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx17705_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn17726_))
                     '#!void)
                 '#f))))
        (let ((_import-e17708_
               (lambda ()
                 (let ((_str-id17711_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx17705_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path17719_
                          (let ((_odir1771217714_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1771217714_
                                (let ((_odir17717_ _odir1771217714_))
                                  (path-expand
                                   (string-append _str-id17711_ '".ss")
                                   _odir17717_))
                                '#f))))
                     (let ((_library-path17721_
                            (string->symbol
                             (string-append '":" _str-id17711_))))
                       (let ((_ssxi-path17723_
                              (if (if _artefact-path17719_
                                      (file-exists? _artefact-path17719_)
                                      '#f)
                                  _artefact-path17719_
                                  _library-path17721_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path17723_)
                             (gx#import-module__opt-lambda10931
                              _ssxi-path17723_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx17705_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e17707_ _import-e17708_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args17702_
      (apply make-struct-instance gxc#!type::t _$args17702_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args17699_
      (apply make-struct-instance gxc#!alias::t _$args17699_)))
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
    (lambda _$args17696_
      (apply make-struct-instance gxc#!struct-type::t _$args17696_)))
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
    (lambda _$args17693_
      (apply make-struct-instance gxc#!procedure::t _$args17693_)))
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
    (lambda _$args17690_
      (apply make-struct-instance gxc#!struct-pred::t _$args17690_)))
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
    (lambda _$args17687_
      (apply make-struct-instance gxc#!struct-cons::t _$args17687_)))
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
    (lambda _$args17684_
      (apply make-struct-instance gxc#!struct-getf::t _$args17684_)))
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
    (lambda _$args17681_
      (apply make-struct-instance gxc#!struct-setf::t _$args17681_)))
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
    (lambda _$args17678_
      (apply make-struct-instance gxc#!lambda::t _$args17678_)))
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
    (lambda _$args17675_
      (apply make-struct-instance gxc#!case-lambda::t _$args17675_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self17667_
             _id17668_
             _super17669_
             _fields17670_
             _xfields17671_
             _ctor17672_
             _plist17673_)
      (direct-struct-instance-init!
       _self17667_
       _id17668_
       _super17669_
       _fields17670_
       _xfields17671_
       _ctor17672_
       _plist17673_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda17631
      (lambda (_self17633_
               _id17634_
               _arity17635_
               _dispatch17636_
               _inline17637_
               _typedecl17638_)
        (direct-struct-instance-init!
         _self17633_
         _id17634_
         _arity17635_
         _dispatch17636_
         _inline17637_
         _typedecl17638_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self17643_ _id17644_ _arity17645_ _dispatch17646_)
          (let ((_inline17648_ '#f))
            (let ((_typedecl17650_ '#f))
              (direct-struct-instance-init!
               _self17643_
               _id17644_
               _arity17645_
               _dispatch17646_
               _inline17648_
               _typedecl17650_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self17652_
                 _id17653_
                 _arity17654_
                 _dispatch17655_
                 _inline17656_)
          (let ((_typedecl17658_ '#f))
            (direct-struct-instance-init!
             _self17652_
             _id17653_
             _arity17654_
             _dispatch17655_
             _inline17656_
             _typedecl17658_))))
      (define gxc#!lambda:::init!
        (lambda _g17808_
          (let ((_g17807_ (length _g17808_)))
            (cond ((fx= _g17807_ 4) (apply gxc#!lambda:::init!__0 _g17808_))
                  ((fx= _g17807_ 5) (apply gxc#!lambda:::init!__1 _g17808_))
                  ((fx= _g17807_ 6)
                   (apply direct-struct-instance-init! _g17808_))
                  (else (error "No clause matching arguments" _g17808_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type17625_)
      (let ((_$e17627_
             (##structure-ref _type17625_ '7 gxc#!struct-type::t '#f)))
        (if _$e17627_
            (values _$e17627_)
            (let ((_vtab17630_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type17625_
                 _vtab17630_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab17630_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type17616_ _method17617_)
      (let ((_vtab1761817620_
             (##structure-ref _type17616_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1761817620_
            (let ((_vtab17623_ _vtab1761817620_))
              (table-ref _vtab17623_ _method17617_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda17598
      (lambda (_sym17600_ _type17601_ _local?17602_)
        (begin
          (if (##structure-instance-of? _type17601_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym17600_
                     _type17601_))
          (gxc#verbose
           '"declare-type "
           _sym17600_
           '" "
           (##vector->list _type17601_))
          (table-set!
           (if _local?17602_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym17600_
           _type17601_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym17607_ _type17608_)
          (let ((_local?17610_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda17598
             _sym17607_
             _type17608_
             _local?17610_))))
      (define gxc#optimizer-declare-type!
        (lambda _g17810_
          (let ((_g17809_ (length _g17810_)))
            (cond ((fx= _g17809_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g17810_))
                  ((fx= _g17809_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda17598
                          _g17810_))
                  (else (error "No clause matching arguments" _g17810_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda17574
      (lambda (_type-t17576_ _method17577_ _sym17578_ _rebind?17579_)
        (let ((_type17581_ (gxc#optimizer-resolve-type _type-t17576_)))
          (if (##structure-instance-of? _type17581_ 'gxc#!struct-type::t)
              (let ((_vtab17583_ (gxc#!struct-type-vtab _type17581_)))
                (if _rebind?17579_
                    (if (hash-key? _vtab17583_ _method17577_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t17576_
                         '" "
                         _method17577_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t17576_
                         '" "
                         _method17577_))
                    (if (hash-key? _vtab17583_ _method17577_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t17576_
                           '" "
                           _method17577_
                           '" => "
                           _sym17578_)
                          (table-set! _vtab17583_ _method17577_ _sym17578_)))))
              (if (not _type17581_)
                  (gxc#verbose '"declare-method: unknown type " _type-t17576_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t17576_
                         _type17581_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t17588_ _method17589_ _sym17590_)
          (let ((_rebind?17592_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda17574
             _type-t17588_
             _method17589_
             _sym17590_
             _rebind?17592_))))
      (define gxc#optimizer-declare-method!
        (lambda _g17812_
          (let ((_g17811_ (length _g17812_)))
            (cond ((fx= _g17811_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g17812_))
                  ((fx= _g17811_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda17574
                          _g17812_))
                  (else (error "No clause matching arguments" _g17812_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym17564_)
      (let ((_$e17572_
             (let ((_ht1756517567_ (gxc#current-compile-local-type)))
               (if _ht1756517567_
                   (let ((_ht17570_ _ht1756517567_))
                     (table-ref _ht17570_ _sym17564_ '#f))
                   '#f))))
        (if _$e17572_
            _$e17572_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym17564_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym17556_)
      (let ((_type1755717559_ (gxc#optimizer-lookup-type _sym17556_)))
        (if _type1755717559_
            (let ((_type17562_ _type1755717559_))
              (if (##structure-instance-of? _type17562_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type17562_ '1 gxc#!type::t '#f))
                  _type17562_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t17551_ _method17552_)
      (let ((_type17554_ (gxc#optimizer-resolve-type _type-t17551_)))
        (if (##structure-instance-of? _type17554_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type17554_ _method17552_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx17547_)
      (begin
        (gxc#apply-collect-mutators _stx17547_)
        (let ((_stx17549_ (gxc#apply-lift-top-lambdas _stx17547_)))
          (begin
            (gxc#apply-collect-type-info _stx17549_)
            (gxc#apply-optimize-call _stx17549_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl17544_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17544_ '%#lambda false)
           (table-set! _tbl17544_ '%#case-lambda false)
           (table-set! _tbl17544_ '%#let-values false)
           (table-set! _tbl17544_ '%#letrec-values false)
           (table-set! _tbl17544_ '%#letrec*-values false)
           (table-set! _tbl17544_ '%#quote false)
           (table-set! _tbl17544_ '%#quote-syntax false)
           (table-set! _tbl17544_ '%#call false)
           (table-set! _tbl17544_ '%#if false)
           (table-set! _tbl17544_ '%#ref false)
           (table-set! _tbl17544_ '%#set! false)
           (table-set! _tbl17544_ '%#struct-instance? false)
           (table-set! _tbl17544_ '%#struct-direct-instance? false)
           (table-set! _tbl17544_ '%#struct-ref false)
           (table-set! _tbl17544_ '%#struct-set! false)
           _tbl17544_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17540_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17540_ '%#begin false)
           (table-set! _tbl17540_ '%#begin-syntax false)
           (table-set! _tbl17540_ '%#begin-foreign false)
           (table-set! _tbl17540_ '%#module false)
           (table-set! _tbl17540_ '%#import false)
           (table-set! _tbl17540_ '%#export false)
           (table-set! _tbl17540_ '%#provide false)
           (table-set! _tbl17540_ '%#extern false)
           (table-set! _tbl17540_ '%#define-values false)
           (table-set! _tbl17540_ '%#define-syntax false)
           (table-set! _tbl17540_ '%#define-alias false)
           (table-set! _tbl17540_ '%#declare false)
           _tbl17540_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl17536_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17536_ (force gxc#&false-special-form))
           (hash-copy! _tbl17536_ (force gxc#&false-expression))
           _tbl17536_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl17532_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17532_ '%#lambda gxc#xform-identity)
           (table-set! _tbl17532_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl17532_ '%#let-values gxc#xform-identity)
           (table-set! _tbl17532_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl17532_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl17532_ '%#quote gxc#xform-identity)
           (table-set! _tbl17532_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17532_ '%#call gxc#xform-identity)
           (table-set! _tbl17532_ '%#if gxc#xform-identity)
           (table-set! _tbl17532_ '%#ref gxc#xform-identity)
           (table-set! _tbl17532_ '%#set! gxc#xform-identity)
           (table-set! _tbl17532_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl17532_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl17532_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl17532_ '%#struct-set! gxc#xform-identity)
           _tbl17532_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17528_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17528_ '%#begin gxc#xform-identity)
           (table-set! _tbl17528_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl17528_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl17528_ '%#module gxc#xform-identity)
           (table-set! _tbl17528_ '%#import gxc#xform-identity)
           (table-set! _tbl17528_ '%#export gxc#xform-identity)
           (table-set! _tbl17528_ '%#provide gxc#xform-identity)
           (table-set! _tbl17528_ '%#extern gxc#xform-identity)
           (table-set! _tbl17528_ '%#define-values gxc#xform-identity)
           (table-set! _tbl17528_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl17528_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl17528_ '%#declare gxc#xform-identity)
           _tbl17528_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl17524_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17524_ (force gxc#&identity-special-form))
           (hash-copy! _tbl17524_ (force gxc#&identity-expression))
           _tbl17524_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl17520_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17520_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl17520_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl17520_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl17520_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl17520_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl17520_ '%#quote gxc#xform-identity)
           (table-set! _tbl17520_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17520_ '%#call gxc#xform-call%)
           (table-set! _tbl17520_ '%#if gxc#xform-if%)
           (table-set! _tbl17520_ '%#ref gxc#xform-identity)
           (table-set! _tbl17520_ '%#set! gxc#xform-setq%)
           (table-set! _tbl17520_ '%#struct-instance? gxc#xform-struct-op%)
           (table-set!
            _tbl17520_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (table-set! _tbl17520_ '%#struct-ref gxc#xform-struct-op%)
           (table-set! _tbl17520_ '%#struct-set! gxc#xform-struct-op%)
           _tbl17520_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl17516_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17516_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl17516_ (force gxc#&identity))
           (table-set! _tbl17516_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17516_ '%#module gxc#xform-module%)
           (table-set! _tbl17516_ '%#define-values gxc#xform-define-values%)
           _tbl17516_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl17512_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17512_ (force gxc#&void))
           (table-set! _tbl17512_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17512_ '%#module gxc#collect-module%)
           (table-set! _tbl17512_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17512_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17512_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl17512_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl17512_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl17512_ '%#call gxc#collect-operands)
           (table-set! _tbl17512_ '%#if gxc#collect-operands)
           (table-set! _tbl17512_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl17512_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl17512_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl17512_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl17512_ '%#struct-set! gxc#collect-operands)
           _tbl17512_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx17505_ . _args17507_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17505_ _args17507_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl17502_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17502_ (force gxc#&identity))
           (table-set! _tbl17502_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17502_ '%#module gxc#xform-module%)
           (table-set!
            _tbl17502_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl17502_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx17495_ . _args17497_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17495_ _args17497_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl17492_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17492_ (force gxc#&basic-xform-expression))
           (table-set! _tbl17492_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17492_ '%#ref gxc#expression-subst-ref%)
           _tbl17492_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx17485_ . _args17487_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17485_ _args17487_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl17482_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17482_ (force gxc#&void))
           (table-set! _tbl17482_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17482_ '%#module gxc#collect-module%)
           (table-set!
            _tbl17482_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl17482_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17482_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17482_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl17482_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl17482_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl17482_ '%#call gxc#collect-type-call%)
           (table-set! _tbl17482_ '%#if gxc#collect-operands)
           (table-set! _tbl17482_ '%#set! gxc#collect-body-setq%)
           _tbl17482_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx17475_ . _args17477_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17475_ _args17477_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl17472_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17472_ (force gxc#&false))
           (table-set! _tbl17472_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl17472_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl17472_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl17472_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl17472_ '%#ref gxc#basic-expression-type-ref%)
           _tbl17472_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx17465_ . _args17467_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17465_ _args17467_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl17462_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17462_ (force gxc#&basic-xform))
           (table-set! _tbl17462_ '%#call gxc#optimize-call%)
           _tbl17462_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx17455_ . _args17457_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17455_ _args17457_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl17452_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17452_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl17452_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl17452_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl17452_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl17452_ '%#call gxc#generate-ssxi-call%)
           _tbl17452_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx17445_ . _args17447_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17445_ _args17447_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx17442_ . _args17443_) _stx17442_))
  (define gxc#xform-wrap-source
    (lambda (_stx17439_ _src-stx17440_)
      (gx#stx-wrap-source _stx17439_ (gx#stx-source _src-stx17440_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args17433_)
      (lambda (_g1743417436_)
        (apply gxc#compile-e _g1743417436_ _args17433_))))
  (define gxc#xform-begin%
    (lambda (_stx17392_ . _args17393_)
      (let ((_g1739517405_
             (lambda (_g1739617402_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1739617402_))))
        (let ((_g1739417430_
               (lambda (_g1739617408_)
                 (if (gx#stx-pair? _g1739617408_)
                     (let ((_e1739817410_ (gx#stx-e _g1739617408_)))
                       (let ((_hd1739917413_ (##car _e1739817410_))
                             (_tl1740017415_ (##cdr _e1739817410_)))
                         ((lambda (_L17418_)
                            (let ((_forms17428_
                                   (map (gxc#xform-apply-compile-e _args17393_)
                                        _L17418_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms17428_)
                               _stx17392_)))
                          _tl1740017415_)))
                     (_g1739517405_ _g1739617408_)))))
          (_g1739417430_ _stx17392_)))))
  (define gxc#xform-module%
    (lambda (_stx17329_ . _args17330_)
      (let ((_g1733217346_
             (lambda (_g1733317343_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1733317343_))))
        (let ((_g1733117389_
               (lambda (_g1733317349_)
                 (if (gx#stx-pair? _g1733317349_)
                     (let ((_e1733617351_ (gx#stx-e _g1733317349_)))
                       (let ((_hd1733717354_ (##car _e1733617351_))
                             (_tl1733817356_ (##cdr _e1733617351_)))
                         (if (gx#stx-pair? _tl1733817356_)
                             (let ((_e1733917359_ (gx#stx-e _tl1733817356_)))
                               (let ((_hd1734017362_ (##car _e1733917359_))
                                     (_tl1734117364_ (##cdr _e1733917359_)))
                                 ((lambda (_L17367_ _L17368_)
                                    (let ((_ctx17381_
                                           (gx#syntax-local-e__0 _L17368_)))
                                      (let ((_code17383_
                                             (##structure-ref
                                              _ctx17381_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code17386_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code17383_
                                                         _args17330_))
                                                gx#current-expander-context
                                                _ctx17381_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx17381_
                                               _code17386_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L17368_
                                                           (cons _code17386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx17329_)))))))
                                  _tl1734117364_
                                  _hd1734017362_)))
                             (_g1733217346_ _g1733317349_))))
                     (_g1733217346_ _g1733317349_)))))
          (_g1733117389_ _stx17329_)))))
  (define gxc#xform-define-values%
    (lambda (_stx17259_ . _args17260_)
      (let ((_g1726217279_
             (lambda (_g1726317276_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1726317276_))))
        (let ((_g1726117326_
               (lambda (_g1726317282_)
                 (if (gx#stx-pair? _g1726317282_)
                     (let ((_e1726617284_ (gx#stx-e _g1726317282_)))
                       (let ((_hd1726717287_ (##car _e1726617284_))
                             (_tl1726817289_ (##cdr _e1726617284_)))
                         (if (gx#stx-pair? _tl1726817289_)
                             (let ((_e1726917292_ (gx#stx-e _tl1726817289_)))
                               (let ((_hd1727017295_ (##car _e1726917292_))
                                     (_tl1727117297_ (##cdr _e1726917292_)))
                                 (if (gx#stx-pair? _tl1727117297_)
                                     (let ((_e1727217300_
                                            (gx#stx-e _tl1727117297_)))
                                       (let ((_hd1727317303_
                                              (##car _e1727217300_))
                                             (_tl1727417305_
                                              (##cdr _e1727217300_)))
                                         (if (gx#stx-null? _tl1727417305_)
                                             ((lambda (_L17308_ _L17309_)
                                                (let ((_expr17324_
                                                       (apply gxc#compile-e
                                                              _L17308_
                                                              _args17260_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L17309_
                                                               (cons _expr17324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx17259_)))
                                              _hd1727317303_
                                              _hd1727017295_)
                                             (_g1726217279_ _g1726317282_))))
                                     (_g1726217279_ _g1726317282_))))
                             (_g1726217279_ _g1726317282_))))
                     (_g1726217279_ _g1726317282_)))))
          (_g1726117326_ _stx17259_)))))
  (define gxc#xform-lambda%
    (lambda (_stx17202_ . _args17203_)
      (let ((_g1720517219_
             (lambda (_g1720617216_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1720617216_))))
        (let ((_g1720417256_
               (lambda (_g1720617222_)
                 (if (gx#stx-pair? _g1720617222_)
                     (let ((_e1720917224_ (gx#stx-e _g1720617222_)))
                       (let ((_hd1721017227_ (##car _e1720917224_))
                             (_tl1721117229_ (##cdr _e1720917224_)))
                         (if (gx#stx-pair? _tl1721117229_)
                             (let ((_e1721217232_ (gx#stx-e _tl1721117229_)))
                               (let ((_hd1721317235_ (##car _e1721217232_))
                                     (_tl1721417237_ (##cdr _e1721217232_)))
                                 ((lambda (_L17240_ _L17241_)
                                    (let ((_body17254_
                                           (map (gxc#xform-apply-compile-e
                                                 _args17203_)
                                                _L17240_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L17241_ _body17254_))
                                       _stx17202_)))
                                  _tl1721417237_
                                  _hd1721317235_)))
                             (_g1720517219_ _g1720617222_))))
                     (_g1720517219_ _g1720617222_)))))
          (_g1720417256_ _stx17202_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17115_ . _args17116_)
      (let ((_clause-e17118_
             (lambda (_clause17159_)
               (let ((_g1716117172_
                      (lambda (_g1716217169_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1716217169_))))
                 (let ((_g1716017199_
                        (lambda (_g1716217175_)
                          (if (gx#stx-pair? _g1716217175_)
                              (let ((_e1716517177_ (gx#stx-e _g1716217175_)))
                                (let ((_hd1716617180_ (##car _e1716517177_))
                                      (_tl1716717182_ (##cdr _e1716517177_)))
                                  ((lambda (_L17185_ _L17186_)
                                     (let ((_body17197_
                                            (map (gxc#xform-apply-compile-e
                                                  _args17116_)
                                                 _L17185_)))
                                       (cons _L17186_ _body17197_)))
                                   _tl1716717182_
                                   _hd1716617180_)))
                              (_g1716117172_ _g1716217175_)))))
                   (_g1716017199_ _clause17159_))))))
        (let ((_g1712017130_
               (lambda (_g1712117127_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1712117127_))))
          (let ((_g1711917156_
                 (lambda (_g1712117133_)
                   (if (gx#stx-pair? _g1712117133_)
                       (let ((_e1712317135_ (gx#stx-e _g1712117133_)))
                         (let ((_hd1712417138_ (##car _e1712317135_))
                               (_tl1712517140_ (##cdr _e1712317135_)))
                           ((lambda (_L17143_)
                              (let ((_clauses17154_
                                     (map _clause-e17118_ _L17143_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses17154_)
                                 _stx17115_)))
                            _tl1712517140_)))
                       (_g1712017130_ _g1712117133_)))))
            (_g1711917156_ _stx17115_))))))
  (define gxc#xform-let-values%
    (lambda (_stx16909_ . _args16910_)
      (let ((_g1691216945_
             (lambda (_g1691316942_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1691316942_))))
        (let ((_g1691117112_
               (lambda (_g1691316948_)
                 (if (gx#stx-pair? _g1691316948_)
                     (let ((_e1691816950_ (gx#stx-e _g1691316948_)))
                       (let ((_hd1691916953_ (##car _e1691816950_))
                             (_tl1692016955_ (##cdr _e1691816950_)))
                         (if (gx#stx-pair? _tl1692016955_)
                             (let ((_e1692116958_ (gx#stx-e _tl1692016955_)))
                               (let ((_hd1692216961_ (##car _e1692116958_))
                                     (_tl1692316963_ (##cdr _e1692116958_)))
                                 (if (gx#stx-pair/null? _hd1692216961_)
                                     (if (fx>= (gx#stx-length _hd1692216961_)
                                               '0)
                                         (let ((_g17813_
                                                (gx#syntax-split-splice
                                                 _hd1692216961_
                                                 '0)))
                                           (begin
                                             (let ((_g17814_
                                                    (values-count _g17813_)))
                                               (if (not (fx= _g17814_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17814_)))
                                             (let ((_target1692416966_
                                                    (values-ref _g17813_ 0))
                                                   (_tl1692616968_
                                                    (values-ref _g17813_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1692616968_)
                                                   (letrec ((_loop1692716971_
                                                             (lambda (_hd1692516974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1693116976_
                              _hd1693216978_)
                       (if (gx#stx-pair? _hd1692516974_)
                           (let ((_e1692816981_ (gx#stx-e _hd1692516974_)))
                             (let ((_lp-hd1692916984_ (##car _e1692816981_))
                                   (_lp-tl1693016986_ (##cdr _e1692816981_)))
                               (if (gx#stx-pair? _lp-hd1692916984_)
                                   (let ((_e1693516989_
                                          (gx#stx-e _lp-hd1692916984_)))
                                     (let ((_hd1693616992_
                                            (##car _e1693516989_))
                                           (_tl1693716994_
                                            (##cdr _e1693516989_)))
                                       (if (gx#stx-pair? _tl1693716994_)
                                           (let ((_e1693816997_
                                                  (gx#stx-e _tl1693716994_)))
                                             (let ((_hd1693917000_
                                                    (##car _e1693816997_))
                                                   (_tl1694017002_
                                                    (##cdr _e1693816997_)))
                                               (if (gx#stx-null?
                                                    _tl1694017002_)
                                                   (_loop1692716971_
                                                    _lp-tl1693016986_
                                                    (cons _hd1693917000_
                                                          _expr1693116976_)
                                                    (cons _hd1693616992_
                                                          _hd1693216978_))
                                                   (_g1691216945_
                                                    _g1691316948_))))
                                           (_g1691216945_ _g1691316948_))))
                                   (_g1691216945_ _g1691316948_))))
                           (let ((_expr1693317005_ (reverse _expr1693116976_))
                                 (_hd1693417007_ (reverse _hd1693216978_)))
                             ((lambda (_L17010_ _L17011_ _L17012_ _L17013_)
                                (let ((_g1703217048_
                                       (lambda (_g1703317045_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1703317045_))))
                                  (let ((_g1703117102_
                                         (lambda (_g1703317051_)
                                           (if (gx#stx-pair/null?
                                                _g1703317051_)
                                               (if (fx>= (gx#stx-length
                                                          _g1703317051_)
                                                         '0)
                                                   (let ((_g17815_
                                                          (gx#syntax-split-splice
                                                           _g1703317051_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17816_
                                                              (values-count
                                                               _g17815_)))
                                                         (if (not (fx= _g17816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g17816_)))
               (let ((_target1703517053_ (values-ref _g17815_ 0))
                     (_tl1703717055_ (values-ref _g17815_ 1)))
                 (if (gx#stx-null? _tl1703717055_)
                     (letrec ((_loop1703817058_
                               (lambda (_hd1703617061_ _expr1704217063_)
                                 (if (gx#stx-pair? _hd1703617061_)
                                     (let ((_e1703917066_
                                            (gx#syntax-e _hd1703617061_)))
                                       (let ((_lp-hd1704017069_
                                              (##car _e1703917066_))
                                             (_lp-tl1704117071_
                                              (##cdr _e1703917066_)))
                                         (_loop1703817058_
                                          _lp-tl1704117071_
                                          (cons _lp-hd1704017069_
                                                _expr1704217063_))))
                                     (let ((_expr1704317074_
                                            (reverse _expr1704217063_)))
                                       ((lambda (_L17077_)
                                          (let ()
                                            (let ((_body17090_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args16910_)
                                                        _L17010_)))
                                              (gxc#xform-wrap-source
                                               (cons _L17013_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L17077_
                                                              _L17012_)
                                                             (foldr (lambda (_g1709117095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1709217097_
                                     _g1709317099_)
                              (cons (cons _g1709217097_
                                          (cons _g1709117095_ '()))
                                    _g1709317099_))
                            '()
                            _L17077_
                            _L17012_))
                   _body17090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16909_))))
                                        _expr1704317074_))))))
                       (_loop1703817058_ _target1703517053_ '()))
                     (_g1703217048_ _g1703317051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1703217048_
                                                    _g1703317051_))
                                               (_g1703217048_
                                                _g1703317051_)))))
                                    (_g1703117102_
                                     (map (gxc#xform-apply-compile-e
                                           _args16910_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1710417107_
                                                             _g1710517109_)
                                                      (cons _g1710417107_
                                                            _g1710517109_))
                                                    '()
                                                    _L17011_)))))))
                              _tl1692316963_
                              _expr1693317005_
                              _hd1693417007_
                              _hd1691916953_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1692716971_
                                                      _target1692416966_
                                                      '()
                                                      '()))
                                                   (_g1691216945_
                                                    _g1691316948_)))))
                                         (_g1691216945_ _g1691316948_))
                                     (_g1691216945_ _g1691316948_))))
                             (_g1691216945_ _g1691316948_))))
                     (_g1691216945_ _g1691316948_)))))
          (_g1691117112_ _stx16909_)))))
  (define gxc#xform-call%
    (lambda (_stx16851_ . _args16852_)
      (let ((_g1685416868_
             (lambda (_g1685516865_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1685516865_))))
        (let ((_g1685316906_
               (lambda (_g1685516871_)
                 (if (gx#stx-pair? _g1685516871_)
                     (let ((_e1685816873_ (gx#stx-e _g1685516871_)))
                       (let ((_hd1685916876_ (##car _e1685816873_))
                             (_tl1686016878_ (##cdr _e1685816873_)))
                         (if (gx#stx-pair? _tl1686016878_)
                             (let ((_e1686116881_ (gx#stx-e _tl1686016878_)))
                               (let ((_hd1686216884_ (##car _e1686116881_))
                                     (_tl1686316886_ (##cdr _e1686116881_)))
                                 ((lambda (_L16889_ _L16890_)
                                    (let ((_rator16903_
                                           (apply gxc#compile-e
                                                  _L16890_
                                                  _args16852_))
                                          (_rands16904_
                                           (map (gxc#xform-apply-compile-e
                                                 _args16852_)
                                                _L16889_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator16903_ _rands16904_))
                                       _stx16851_)))
                                  _tl1686316886_
                                  _hd1686216884_)))
                             (_g1685416868_ _g1685516871_))))
                     (_g1685416868_ _g1685516871_)))))
          (_g1685316906_ _stx16851_)))))
  (define gxc#xform-if%
    (lambda (_stx16810_ . _args16811_)
      (let ((_g1681316823_
             (lambda (_g1681416820_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1681416820_))))
        (let ((_g1681216848_
               (lambda (_g1681416826_)
                 (if (gx#stx-pair? _g1681416826_)
                     (let ((_e1681616828_ (gx#stx-e _g1681416826_)))
                       (let ((_hd1681716831_ (##car _e1681616828_))
                             (_tl1681816833_ (##cdr _e1681616828_)))
                         ((lambda (_L16836_)
                            (let ((_forms16846_
                                   (map (gxc#xform-apply-compile-e _args16811_)
                                        _L16836_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms16846_)
                               _stx16810_)))
                          _tl1681816833_)))
                     (_g1681316823_ _g1681416826_)))))
          (_g1681216848_ _stx16810_)))))
  (define gxc#xform-setq%
    (lambda (_stx16740_ . _args16741_)
      (let ((_g1674316760_
             (lambda (_g1674416757_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1674416757_))))
        (let ((_g1674216807_
               (lambda (_g1674416763_)
                 (if (gx#stx-pair? _g1674416763_)
                     (let ((_e1674716765_ (gx#stx-e _g1674416763_)))
                       (let ((_hd1674816768_ (##car _e1674716765_))
                             (_tl1674916770_ (##cdr _e1674716765_)))
                         (if (gx#stx-pair? _tl1674916770_)
                             (let ((_e1675016773_ (gx#stx-e _tl1674916770_)))
                               (let ((_hd1675116776_ (##car _e1675016773_))
                                     (_tl1675216778_ (##cdr _e1675016773_)))
                                 (if (gx#stx-pair? _tl1675216778_)
                                     (let ((_e1675316781_
                                            (gx#stx-e _tl1675216778_)))
                                       (let ((_hd1675416784_
                                              (##car _e1675316781_))
                                             (_tl1675516786_
                                              (##cdr _e1675316781_)))
                                         (if (gx#stx-null? _tl1675516786_)
                                             ((lambda (_L16789_ _L16790_)
                                                (let ((_expr16805_
                                                       (apply gxc#compile-e
                                                              _L16789_
                                                              _args16741_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L16790_
                                                               (cons _expr16805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16740_)))
                                              _hd1675416784_
                                              _hd1675116776_)
                                             (_g1674316760_ _g1674416763_))))
                                     (_g1674316760_ _g1674416763_))))
                             (_g1674316760_ _g1674416763_))))
                     (_g1674316760_ _g1674416763_)))))
          (_g1674216807_ _stx16740_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx16696_ . _args16697_)
      (let ((_g1669916710_
             (lambda (_g1670016707_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1670016707_))))
        (let ((_g1669816737_
               (lambda (_g1670016713_)
                 (if (gx#stx-pair? _g1670016713_)
                     (let ((_e1670316715_ (gx#stx-e _g1670016713_)))
                       (let ((_hd1670416718_ (##car _e1670316715_))
                             (_tl1670516720_ (##cdr _e1670316715_)))
                         ((lambda (_L16723_ _L16724_)
                            (let ((_op-args16735_
                                   (map (gxc#xform-apply-compile-e _args16697_)
                                        _L16723_)))
                              (gxc#xform-wrap-source
                               (cons _L16724_ _op-args16735_)
                               _stx16696_)))
                          _tl1670516720_
                          _hd1670416718_)))
                     (_g1669916710_ _g1670016713_)))))
          (_g1669816737_ _stx16696_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16627_)
      (let ((_g1662916646_
             (lambda (_g1663016643_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1663016643_))))
        (let ((_g1662816693_
               (lambda (_g1663016649_)
                 (if (gx#stx-pair? _g1663016649_)
                     (let ((_e1663316651_ (gx#stx-e _g1663016649_)))
                       (let ((_hd1663416654_ (##car _e1663316651_))
                             (_tl1663516656_ (##cdr _e1663316651_)))
                         (if (gx#stx-pair? _tl1663516656_)
                             (let ((_e1663616659_ (gx#stx-e _tl1663516656_)))
                               (let ((_hd1663716662_ (##car _e1663616659_))
                                     (_tl1663816664_ (##cdr _e1663616659_)))
                                 (if (gx#stx-pair? _tl1663816664_)
                                     (let ((_e1663916667_
                                            (gx#stx-e _tl1663816664_)))
                                       (let ((_hd1664016670_
                                              (##car _e1663916667_))
                                             (_tl1664116672_
                                              (##cdr _e1663916667_)))
                                         (if (gx#stx-null? _tl1664116672_)
                                             ((lambda (_L16675_ _L16676_)
                                                (let ((_sym16691_
                                                       (gxc#generate-runtime-binding-id
                                                        _L16676_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym16691_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym16691_
                                                     '#t)
                                                    (gxc#compile-e _L16675_))))
                                              _hd1664016670_
                                              _hd1663716662_)
                                             (_g1662916646_ _g1663016649_))))
                                     (_g1662916646_ _g1663016649_))))
                             (_g1662916646_ _g1663016649_))))
                     (_g1662916646_ _g1663016649_)))))
          (_g1662816693_ _stx16627_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form15861_)
      (let ((_g1586616023_
             (lambda (_g1586716020_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1586716020_))))
        (let ((_g1586516030_ (lambda (_g1586716026_) ((lambda () '#f)))))
          (let ((_g1586416170_
                 (lambda (_g1586716033_)
                   (if (gx#stx-pair? _g1586716033_)
                       (let ((_e1598316035_ (gx#stx-e _g1586716033_)))
                         (let ((_hd1598416038_ (##car _e1598316035_))
                               (_tl1598516040_ (##cdr _e1598316035_)))
                           (if (gx#stx-pair? _tl1598516040_)
                               (let ((_e1598616043_ (gx#stx-e _tl1598516040_)))
                                 (let ((_hd1598716046_ (##car _e1598616043_))
                                       (_tl1598816048_ (##cdr _e1598616043_)))
                                   (if (gx#stx-pair? _hd1598716046_)
                                       (let ((_e1598916051_
                                              (gx#stx-e _hd1598716046_)))
                                         (let ((_hd1599016054_
                                                (##car _e1598916051_))
                                               (_tl1599116056_
                                                (##cdr _e1598916051_)))
                                           (if (gx#identifier? _hd1599016054_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1599016054_)
                                                   (if (gx#stx-pair?
                                                        _tl1599116056_)
                                                       (let ((_e1599216059_
                                                              (gx#stx-e
                                                               _tl1599116056_)))
                                                         (let ((_hd1599316062_
                                                                (##car _e1599216059_))
                                                               (_tl1599416064_
                                                                (##cdr _e1599216059_)))
                                                           (if (gx#stx-pair?
                                                                _hd1599316062_)
                                                               (let ((_e1599516067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1599316062_)))
                         (let ((_hd1599616070_ (##car _e1599516067_))
                               (_tl1599716072_ (##cdr _e1599516067_)))
                           (if (gx#identifier? _hd1599616070_)
                               (if (gx#stx-eq? '%#ref _hd1599616070_)
                                   (if (gx#stx-pair? _tl1599716072_)
                                       (let ((_e1599816075_
                                              (gx#stx-e _tl1599716072_)))
                                         (let ((_hd1599916078_
                                                (##car _e1599816075_))
                                               (_tl1600016080_
                                                (##cdr _e1599816075_)))
                                           (if (gx#stx-null? _tl1600016080_)
                                               (if (gx#stx-pair?
                                                    _tl1599416064_)
                                                   (let ((_e1600116083_
                                                          (gx#stx-e
                                                           _tl1599416064_)))
                                                     (let ((_hd1600216086_
                                                            (##car _e1600116083_))
                                                           (_tl1600316088_
                                                            (##cdr _e1600116083_)))
                                                       (if (gx#stx-pair?
                                                            _hd1600216086_)
                                                           (let ((_e1600416091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1600216086_)))
                     (let ((_hd1600516094_ (##car _e1600416091_))
                           (_tl1600616096_ (##cdr _e1600416091_)))
                       (if (gx#identifier? _hd1600516094_)
                           (if (gx#stx-eq? '%#ref _hd1600516094_)
                               (if (gx#stx-pair? _tl1600616096_)
                                   (let ((_e1600716099_
                                          (gx#stx-e _tl1600616096_)))
                                     (let ((_hd1600816102_
                                            (##car _e1600716099_))
                                           (_tl1600916104_
                                            (##cdr _e1600716099_)))
                                       (if (gx#stx-null? _tl1600916104_)
                                           (if (gx#stx-pair? _tl1600316088_)
                                               (let ((_e1601016107_
                                                      (gx#stx-e
                                                       _tl1600316088_)))
                                                 (let ((_hd1601116110_
                                                        (##car _e1601016107_))
                                                       (_tl1601216112_
                                                        (##cdr _e1601016107_)))
                                                   (if (gx#stx-pair?
                                                        _hd1601116110_)
                                                       (let ((_e1601316115_
                                                              (gx#stx-e
                                                               _hd1601116110_)))
                                                         (let ((_hd1601416118_
                                                                (##car _e1601316115_))
                                                               (_tl1601516120_
                                                                (##cdr _e1601316115_)))
                                                           (if (gx#identifier?
                                                                _hd1601416118_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1601416118_)
                           (if (gx#stx-pair? _tl1601516120_)
                               (let ((_e1601616123_ (gx#stx-e _tl1601516120_)))
                                 (let ((_hd1601716126_ (##car _e1601616123_))
                                       (_tl1601816128_ (##cdr _e1601616123_)))
                                   (if (gx#stx-null? _tl1601816128_)
                                       (if (gx#stx-null? _tl1601216112_)
                                           (if (gx#stx-null? _tl1598816048_)
                                               ((lambda (_L16131_
                                                         _L16132_
                                                         _L16133_
                                                         _L16134_)
                                                  (if (if (gx#identifier?
                                                           _L16134_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16133_)
                           'apply)
                      (if (gx#free-identifier=? _L16134_ _L16131_)
                          (not (gx#free-identifier=? _L16132_ _L16134_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1586516030_ _g1586716033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1601716126_
                                                _hd1600816102_
                                                _hd1599916078_
                                                _hd1598416038_)
                                               (_g1586516030_ _g1586716033_))
                                           (_g1586516030_ _g1586716033_))
                                       (_g1586516030_ _g1586716033_))))
                               (_g1586516030_ _g1586716033_))
                           (_g1586516030_ _g1586716033_))
                       (_g1586516030_ _g1586716033_))))
               (_g1586516030_ _g1586716033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1586516030_ _g1586716033_))
                                           (_g1586516030_ _g1586716033_))))
                                   (_g1586516030_ _g1586716033_))
                               (_g1586516030_ _g1586716033_))
                           (_g1586516030_ _g1586716033_))))
                   (_g1586516030_ _g1586716033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586516030_
                                                    _g1586716033_))
                                               (_g1586516030_ _g1586716033_))))
                                       (_g1586516030_ _g1586716033_))
                                   (_g1586516030_ _g1586716033_))
                               (_g1586516030_ _g1586716033_))))
                       (_g1586516030_ _g1586716033_))))
               (_g1586516030_ _g1586716033_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586516030_
                                                    _g1586716033_))
                                               (_g1586516030_ _g1586716033_))))
                                       (_g1586516030_ _g1586716033_))))
                               (_g1586516030_ _g1586716033_))))
                       (_g1586516030_ _g1586716033_)))))
            (let ((_g1586316430_
                   (lambda (_g1586716173_)
                     (if (gx#stx-pair? _g1586716173_)
                         (let ((_e1591916175_ (gx#stx-e _g1586716173_)))
                           (let ((_hd1592016178_ (##car _e1591916175_))
                                 (_tl1592116180_ (##cdr _e1591916175_)))
                             (if (gx#stx-pair/null? _hd1592016178_)
                                 (if (fx>= (gx#stx-length _hd1592016178_) '0)
                                     (let ((_g17817_
                                            (gx#syntax-split-splice
                                             _hd1592016178_
                                             '0)))
                                       (begin
                                         (let ((_g17818_
                                                (values-count _g17817_)))
                                           (if (not (fx= _g17818_ 2))
                                               (error "Context expects 2 values"
                                                      _g17818_)))
                                         (let ((_target1592216183_
                                                (values-ref _g17817_ 0))
                                               (_tl1592416185_
                                                (values-ref _g17817_ 1)))
                                           (letrec ((_loop1592516188_
                                                     (lambda (_hd1592316191_
                                                              _arg1592916193_)
                                                       (if (gx#stx-pair?
                                                            _hd1592316191_)
                                                           (let ((_e1592616196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1592316191_)))
                     (let ((_lp-hd1592716199_ (##car _e1592616196_))
                           (_lp-tl1592816201_ (##cdr _e1592616196_)))
                       (_loop1592516188_
                        _lp-tl1592816201_
                        (cons _lp-hd1592716199_ _arg1592916193_))))
                   (let ((_arg1593016204_ (reverse _arg1592916193_)))
                     (if (gx#stx-pair? _tl1592116180_)
                         (let ((_e1593116207_ (gx#stx-e _tl1592116180_)))
                           (let ((_hd1593216210_ (##car _e1593116207_))
                                 (_tl1593316212_ (##cdr _e1593116207_)))
                             (if (gx#stx-pair? _hd1593216210_)
                                 (let ((_e1593416215_
                                        (gx#stx-e _hd1593216210_)))
                                   (let ((_hd1593516218_ (##car _e1593416215_))
                                         (_tl1593616220_
                                          (##cdr _e1593416215_)))
                                     (if (gx#identifier? _hd1593516218_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1593516218_)
                                             (if (gx#stx-pair? _tl1593616220_)
                                                 (let ((_e1593716223_
                                                        (gx#stx-e
                                                         _tl1593616220_)))
                                                   (let ((_hd1593816226_
                                                          (##car _e1593716223_))
                                                         (_tl1593916228_
                                                          (##cdr _e1593716223_)))
                                                     (if (gx#stx-pair?
                                                          _hd1593816226_)
                                                         (let ((_e1594016231_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1593816226_)))
                   (let ((_hd1594116234_ (##car _e1594016231_))
                         (_tl1594216236_ (##cdr _e1594016231_)))
                     (if (gx#identifier? _hd1594116234_)
                         (if (gx#stx-eq? '%#ref _hd1594116234_)
                             (if (gx#stx-pair? _tl1594216236_)
                                 (let ((_e1594316239_
                                        (gx#stx-e _tl1594216236_)))
                                   (let ((_hd1594416242_ (##car _e1594316239_))
                                         (_tl1594516244_
                                          (##cdr _e1594316239_)))
                                     (if (gx#stx-null? _tl1594516244_)
                                         (if (gx#stx-pair? _tl1593916228_)
                                             (let ((_e1594616247_
                                                    (gx#stx-e _tl1593916228_)))
                                               (let ((_hd1594716250_
                                                      (##car _e1594616247_))
                                                     (_tl1594816252_
                                                      (##cdr _e1594616247_)))
                                                 (if (gx#stx-pair?
                                                      _hd1594716250_)
                                                     (let ((_e1594916255_
                                                            (gx#stx-e
                                                             _hd1594716250_)))
                                                       (let ((_hd1595016258_
                                                              (##car _e1594916255_))
                                                             (_tl1595116260_
                                                              (##cdr _e1594916255_)))
                                                         (if (gx#identifier?
                                                              _hd1595016258_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1595016258_)
                         (if (gx#stx-pair? _tl1595116260_)
                             (let ((_e1595216263_ (gx#stx-e _tl1595116260_)))
                               (let ((_hd1595316266_ (##car _e1595216263_))
                                     (_tl1595416268_ (##cdr _e1595216263_)))
                                 (if (gx#stx-null? _tl1595416268_)
                                     (if (gx#stx-pair/null? _tl1594816252_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1594816252_)
                                                   '1)
                                             (let ((_g17819_
                                                    (gx#syntax-split-splice
                                                     _tl1594816252_
                                                     '1)))
                                               (begin
                                                 (let ((_g17820_
                                                        (values-count
                                                         _g17819_)))
                                                   (if (not (fx= _g17820_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17820_)))
                                                 (let ((_target1595516271_
                                                        (values-ref
                                                         _g17819_
                                                         0))
                                                       (_tl1595716273_
                                                        (values-ref
                                                         _g17819_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1595716273_)
                                                       (let ((_e1596416276_
                                                              (gx#stx-e
                                                               _tl1595716273_)))
                                                         (let ((_hd1596516279_
                                                                (##car _e1596416276_))
                                                               (_tl1596616281_
                                                                (##cdr _e1596416276_)))
                                                           (if (gx#stx-pair?
                                                                _hd1596516279_)
                                                               (let ((_e1596716284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1596516279_)))
                         (let ((_hd1596816287_ (##car _e1596716284_))
                               (_tl1596916289_ (##cdr _e1596716284_)))
                           (if (gx#identifier? _hd1596816287_)
                               (if (gx#stx-eq? '%#ref _hd1596816287_)
                                   (if (gx#stx-pair? _tl1596916289_)
                                       (let ((_e1597016292_
                                              (gx#stx-e _tl1596916289_)))
                                         (let ((_hd1597116295_
                                                (##car _e1597016292_))
                                               (_tl1597216297_
                                                (##cdr _e1597016292_)))
                                           (if (gx#stx-null? _tl1597216297_)
                                               (if (gx#stx-null?
                                                    _tl1596616281_)
                                                   (letrec ((_loop1595816300_
                                                             (lambda (_hd1595616303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1596216305_)
                       (if (gx#stx-pair? _hd1595616303_)
                           (let ((_e1595916308_ (gx#stx-e _hd1595616303_)))
                             (let ((_lp-hd1596016311_ (##car _e1595916308_))
                                   (_lp-tl1596116313_ (##cdr _e1595916308_)))
                               (if (gx#stx-pair? _lp-hd1596016311_)
                                   (let ((_e1597316316_
                                          (gx#stx-e _lp-hd1596016311_)))
                                     (let ((_hd1597416319_
                                            (##car _e1597316316_))
                                           (_tl1597516321_
                                            (##cdr _e1597316316_)))
                                       (if (gx#identifier? _hd1597416319_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1597416319_)
                                               (if (gx#stx-pair?
                                                    _tl1597516321_)
                                                   (let ((_e1597616324_
                                                          (gx#stx-e
                                                           _tl1597516321_)))
                                                     (let ((_hd1597716327_
                                                            (##car _e1597616324_))
                                                           (_tl1597816329_
                                                            (##cdr _e1597616324_)))
                                                       (if (gx#stx-null?
                                                            _tl1597816329_)
                                                           (_loop1595816300_
                                                            _lp-tl1596116313_
                                                            (cons _hd1597716327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1596216305_))
                   (_g1586416170_ _g1586716173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586416170_
                                                    _g1586716173_))
                                               (_g1586416170_ _g1586716173_))
                                           (_g1586416170_ _g1586716173_))))
                                   (_g1586416170_ _g1586716173_))))
                           (let ((_xarg1596316332_ (reverse _xarg1596216305_)))
                             (if (gx#stx-null? _tl1593316212_)
                                 ((lambda (_L16335_
                                           _L16336_
                                           _L16337_
                                           _L16338_
                                           _L16339_
                                           _L16340_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1638316386_
                                                                _g1638416388_)
                                                         (cons _g1638316386_
                                                               _g1638416388_))
                                                       '()
                                                       _L16340_)))
                                            (if (gx#identifier? _L16339_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L16338_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1639016393_ _g1639116395_)
                                         (cons _g1639016393_ _g1639116395_))
                                       '()
                                       _L16340_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1639716400_ _g1639816402_)
                                         (cons _g1639716400_ _g1639816402_))
                                       '()
                                       _L16336_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1640416407_ _g1640516409_)
                                        (cons _g1640416407_ _g1640516409_))
                                      '()
                                      _L16340_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1641116414_ _g1641216416_)
                                        (cons _g1641116414_ _g1641216416_))
                                      '()
                                      _L16336_)))
                    (if (gx#free-identifier=? _L16339_ _L16335_)
                        (not (find (lambda (_g1641816420_)
                                     (gx#free-identifier=?
                                      _g1641816420_
                                      _L16337_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1642216425_
                                                      _g1642316427_)
                                               (cons _g1642216425_
                                                     _g1642316427_))
                                             (cons _L16339_ '())
                                             _L16340_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1586416170_ _g1586716173_)))
                                  _hd1597116295_
                                  _xarg1596316332_
                                  _hd1595316266_
                                  _hd1594416242_
                                  _tl1592416185_
                                  _arg1593016204_)
                                 (_g1586416170_ _g1586716173_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1595816300_
                                                      _target1595516271_
                                                      '()))
                                                   (_g1586416170_
                                                    _g1586716173_))
                                               (_g1586416170_ _g1586716173_))))
                                       (_g1586416170_ _g1586716173_))
                                   (_g1586416170_ _g1586716173_))
                               (_g1586416170_ _g1586716173_))))
                       (_g1586416170_ _g1586716173_))))
               (_g1586416170_ _g1586716173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1586416170_ _g1586716173_))
                                         (_g1586416170_ _g1586716173_))
                                     (_g1586416170_ _g1586716173_))))
                             (_g1586416170_ _g1586716173_))
                         (_g1586416170_ _g1586716173_))
                     (_g1586416170_ _g1586716173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1586416170_
                                                      _g1586716173_))))
                                             (_g1586416170_ _g1586716173_))
                                         (_g1586416170_ _g1586716173_))))
                                 (_g1586416170_ _g1586716173_))
                             (_g1586416170_ _g1586716173_))
                         (_g1586416170_ _g1586716173_))))
                 (_g1586416170_ _g1586716173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1586416170_ _g1586716173_))
                                             (_g1586416170_ _g1586716173_))
                                         (_g1586416170_ _g1586716173_))))
                                 (_g1586416170_ _g1586716173_))))
                         (_g1586416170_ _g1586716173_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1592516188_
                                              _target1592216183_
                                              '())))))
                                     (_g1586416170_ _g1586716173_))
                                 (_g1586416170_ _g1586716173_))))
                         (_g1586416170_ _g1586716173_)))))
              (let ((_g1586216624_
                     (lambda (_g1586716433_)
                       (if (gx#stx-pair? _g1586716433_)
                           (let ((_e1587116435_ (gx#stx-e _g1586716433_)))
                             (let ((_hd1587216438_ (##car _e1587116435_))
                                   (_tl1587316440_ (##cdr _e1587116435_)))
                               (if (gx#stx-pair/null? _hd1587216438_)
                                   (if (fx>= (gx#stx-length _hd1587216438_) '0)
                                       (let ((_g17821_
                                              (gx#syntax-split-splice
                                               _hd1587216438_
                                               '0)))
                                         (begin
                                           (let ((_g17822_
                                                  (values-count _g17821_)))
                                             (if (not (fx= _g17822_ 2))
                                                 (error "Context expects 2 values"
                                                        _g17822_)))
                                           (let ((_target1587416443_
                                                  (values-ref _g17821_ 0))
                                                 (_tl1587616445_
                                                  (values-ref _g17821_ 1)))
                                             (if (gx#stx-null? _tl1587616445_)
                                                 (letrec ((_loop1587716448_
                                                           (lambda (_hd1587516451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1588116453_)
                     (if (gx#stx-pair? _hd1587516451_)
                         (let ((_e1587816456_ (gx#stx-e _hd1587516451_)))
                           (let ((_lp-hd1587916459_ (##car _e1587816456_))
                                 (_lp-tl1588016461_ (##cdr _e1587816456_)))
                             (_loop1587716448_
                              _lp-tl1588016461_
                              (cons _lp-hd1587916459_ _arg1588116453_))))
                         (let ((_arg1588216464_ (reverse _arg1588116453_)))
                           (if (gx#stx-pair? _tl1587316440_)
                               (let ((_e1588316467_ (gx#stx-e _tl1587316440_)))
                                 (let ((_hd1588416470_ (##car _e1588316467_))
                                       (_tl1588516472_ (##cdr _e1588316467_)))
                                   (if (gx#stx-pair? _hd1588416470_)
                                       (let ((_e1588616475_
                                              (gx#stx-e _hd1588416470_)))
                                         (let ((_hd1588716478_
                                                (##car _e1588616475_))
                                               (_tl1588816480_
                                                (##cdr _e1588616475_)))
                                           (if (gx#identifier? _hd1588716478_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1588716478_)
                                                   (if (gx#stx-pair?
                                                        _tl1588816480_)
                                                       (let ((_e1588916483_
                                                              (gx#stx-e
                                                               _tl1588816480_)))
                                                         (let ((_hd1589016486_
                                                                (##car _e1588916483_))
                                                               (_tl1589116488_
                                                                (##cdr _e1588916483_)))
                                                           (if (gx#stx-pair?
                                                                _hd1589016486_)
                                                               (let ((_e1589216491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1589016486_)))
                         (let ((_hd1589316494_ (##car _e1589216491_))
                               (_tl1589416496_ (##cdr _e1589216491_)))
                           (if (gx#identifier? _hd1589316494_)
                               (if (gx#stx-eq? '%#ref _hd1589316494_)
                                   (if (gx#stx-pair? _tl1589416496_)
                                       (let ((_e1589516499_
                                              (gx#stx-e _tl1589416496_)))
                                         (let ((_hd1589616502_
                                                (##car _e1589516499_))
                                               (_tl1589716504_
                                                (##cdr _e1589516499_)))
                                           (if (gx#stx-null? _tl1589716504_)
                                               (if (gx#stx-pair/null?
                                                    _tl1589116488_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1589116488_)
                                                             '0)
                                                       (let ((_g17823_
                                                              (gx#syntax-split-splice
                                                               _tl1589116488_
                                                               '0)))
                                                         (begin
                                                           (let ((_g17824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g17823_)))
                     (if (not (fx= _g17824_ 2))
                         (error "Context expects 2 values" _g17824_)))
                   (let ((_target1589816507_ (values-ref _g17823_ 0))
                         (_tl1590016509_ (values-ref _g17823_ 1)))
                     (if (gx#stx-null? _tl1590016509_)
                         (letrec ((_loop1590116512_
                                   (lambda (_hd1589916515_ _xarg1590516517_)
                                     (if (gx#stx-pair? _hd1589916515_)
                                         (let ((_e1590216520_
                                                (gx#stx-e _hd1589916515_)))
                                           (let ((_lp-hd1590316523_
                                                  (##car _e1590216520_))
                                                 (_lp-tl1590416525_
                                                  (##cdr _e1590216520_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1590316523_)
                                                 (let ((_e1590716528_
                                                        (gx#stx-e
                                                         _lp-hd1590316523_)))
                                                   (let ((_hd1590816531_
                                                          (##car _e1590716528_))
                                                         (_tl1590916533_
                                                          (##cdr _e1590716528_)))
                                                     (if (gx#identifier?
                                                          _hd1590816531_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1590816531_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1590916533_)
                         (let ((_e1591016536_ (gx#stx-e _tl1590916533_)))
                           (let ((_hd1591116539_ (##car _e1591016536_))
                                 (_tl1591216541_ (##cdr _e1591016536_)))
                             (if (gx#stx-null? _tl1591216541_)
                                 (_loop1590116512_
                                  _lp-tl1590416525_
                                  (cons _hd1591116539_ _xarg1590516517_))
                                 (_g1586316430_ _g1586716433_))))
                         (_g1586316430_ _g1586716433_))
                     (_g1586316430_ _g1586716433_))
                 (_g1586316430_ _g1586716433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1586316430_
                                                  _g1586716433_))))
                                         (let ((_xarg1590616544_
                                                (reverse _xarg1590516517_)))
                                           (if (gx#stx-null? _tl1588516472_)
                                               ((lambda (_L16547_
                                                         _L16548_
                                                         _L16549_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1657716580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1657816582_)
                               (cons _g1657716580_ _g1657816582_))
                             '()
                             _L16549_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1658416587_
                                                      _g1658516589_)
                                               (cons _g1658416587_
                                                     _g1658516589_))
                                             '()
                                             _L16549_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1659116594_
                                                      _g1659216596_)
                                               (cons _g1659116594_
                                                     _g1659216596_))
                                             '()
                                             _L16547_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1659816601_
                                                     _g1659916603_)
                                              (cons _g1659816601_
                                                    _g1659916603_))
                                            '()
                                            _L16549_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1660516608_
                                                     _g1660616610_)
                                              (cons _g1660516608_
                                                    _g1660616610_))
                                            '()
                                            _L16547_)))
                          (not (find (lambda (_g1661216614_)
                                       (gx#free-identifier=?
                                        _g1661216614_
                                        _L16548_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1661616619_
                                                        _g1661716621_)
                                                 (cons _g1661616619_
                                                       _g1661716621_))
                                               '()
                                               _L16549_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1586316430_ _g1586716433_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1590616544_
                                                _hd1589616502_
                                                _arg1588216464_)
                                               (_g1586316430_
                                                _g1586716433_)))))))
                           (_loop1590116512_ _target1589816507_ '()))
                         (_g1586316430_ _g1586716433_)))))
               (_g1586316430_ _g1586716433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586316430_
                                                    _g1586716433_))
                                               (_g1586316430_ _g1586716433_))))
                                       (_g1586316430_ _g1586716433_))
                                   (_g1586316430_ _g1586716433_))
                               (_g1586316430_ _g1586716433_))))
                       (_g1586316430_ _g1586716433_))))
               (_g1586316430_ _g1586716433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1586316430_
                                                    _g1586716433_))
                                               (_g1586316430_ _g1586716433_))))
                                       (_g1586316430_ _g1586716433_))))
                               (_g1586316430_ _g1586716433_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1587716448_
                                                    _target1587416443_
                                                    '()))
                                                 (_g1586316430_
                                                  _g1586716433_)))))
                                       (_g1586316430_ _g1586716433_))
                                   (_g1586316430_ _g1586716433_))))
                           (_g1586316430_ _g1586716433_)))))
                (_g1586216624_ _form15861_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form15329_)
      (let ((_g1533315457_
             (lambda (_g1533415454_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1533415454_))))
        (let ((_g1533215574_
               (lambda (_g1533415460_)
                 (if (gx#stx-pair? _g1533415460_)
                     (let ((_e1542315462_ (gx#stx-e _g1533415460_)))
                       (let ((_hd1542415465_ (##car _e1542315462_))
                             (_tl1542515467_ (##cdr _e1542315462_)))
                         (if (gx#stx-pair? _tl1542515467_)
                             (let ((_e1542615470_ (gx#stx-e _tl1542515467_)))
                               (let ((_hd1542715473_ (##car _e1542615470_))
                                     (_tl1542815475_ (##cdr _e1542615470_)))
                                 (if (gx#stx-pair? _hd1542715473_)
                                     (let ((_e1542915478_
                                            (gx#stx-e _hd1542715473_)))
                                       (let ((_hd1543015481_
                                              (##car _e1542915478_))
                                             (_tl1543115483_
                                              (##cdr _e1542915478_)))
                                         (if (gx#identifier? _hd1543015481_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1543015481_)
                                                 (if (gx#stx-pair?
                                                      _tl1543115483_)
                                                     (let ((_e1543215486_
                                                            (gx#stx-e
                                                             _tl1543115483_)))
                                                       (let ((_hd1543315489_
                                                              (##car _e1543215486_))
                                                             (_tl1543415491_
                                                              (##cdr _e1543215486_)))
                                                         (if (gx#stx-pair?
                                                              _hd1543315489_)
                                                             (let ((_e1543515494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1543315489_)))
                       (let ((_hd1543615497_ (##car _e1543515494_))
                             (_tl1543715499_ (##cdr _e1543515494_)))
                         (if (gx#identifier? _hd1543615497_)
                             (if (gx#stx-eq? '%#ref _hd1543615497_)
                                 (if (gx#stx-pair? _tl1543715499_)
                                     (let ((_e1543815502_
                                            (gx#stx-e _tl1543715499_)))
                                       (let ((_hd1543915505_
                                              (##car _e1543815502_))
                                             (_tl1544015507_
                                              (##cdr _e1543815502_)))
                                         (if (gx#stx-null? _tl1544015507_)
                                             (if (gx#stx-pair? _tl1543415491_)
                                                 (let ((_e1544115510_
                                                        (gx#stx-e
                                                         _tl1543415491_)))
                                                   (let ((_hd1544215513_
                                                          (##car _e1544115510_))
                                                         (_tl1544315515_
                                                          (##cdr _e1544115510_)))
                                                     (if (gx#stx-pair?
                                                          _hd1544215513_)
                                                         (let ((_e1544415518_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1544215513_)))
                   (let ((_hd1544515521_ (##car _e1544415518_))
                         (_tl1544615523_ (##cdr _e1544415518_)))
                     (if (gx#identifier? _hd1544515521_)
                         (if (gx#stx-eq? '%#ref _hd1544515521_)
                             (if (gx#stx-pair? _tl1544615523_)
                                 (let ((_e1544715526_
                                        (gx#stx-e _tl1544615523_)))
                                   (let ((_hd1544815529_ (##car _e1544715526_))
                                         (_tl1544915531_
                                          (##cdr _e1544715526_)))
                                     (if (gx#stx-null? _tl1544915531_)
                                         (if (gx#stx-pair? _tl1544315515_)
                                             (let ((_e1545015534_
                                                    (gx#stx-e _tl1544315515_)))
                                               (let ((_hd1545115537_
                                                      (##car _e1545015534_))
                                                     (_tl1545215539_
                                                      (##cdr _e1545015534_)))
                                                 (if (gx#stx-null?
                                                      _tl1545215539_)
                                                     (if (gx#stx-null?
                                                          _tl1542815475_)
                                                         ((lambda (_L15542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15543_
                           _L15544_)
                    (gxc#generate-runtime-binding-id _L15542_))
                  _hd1544815529_
                  _hd1543915505_
                  _hd1542415465_)
                 (_g1533315457_ _g1533415460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533315457_
                                                      _g1533415460_))))
                                             (_g1533315457_ _g1533415460_))
                                         (_g1533315457_ _g1533415460_))))
                                 (_g1533315457_ _g1533415460_))
                             (_g1533315457_ _g1533415460_))
                         (_g1533315457_ _g1533415460_))))
                 (_g1533315457_ _g1533415460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1533315457_ _g1533415460_))
                                             (_g1533315457_ _g1533415460_))))
                                     (_g1533315457_ _g1533415460_))
                                 (_g1533315457_ _g1533415460_))
                             (_g1533315457_ _g1533415460_))))
                     (_g1533315457_ _g1533415460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533315457_
                                                      _g1533415460_))
                                                 (_g1533315457_ _g1533415460_))
                                             (_g1533315457_ _g1533415460_))))
                                     (_g1533315457_ _g1533415460_))))
                             (_g1533315457_ _g1533415460_))))
                     (_g1533315457_ _g1533415460_)))))
          (let ((_g1533115710_
                 (lambda (_g1533415577_)
                   (if (gx#stx-pair? _g1533415577_)
                       (let ((_e1538415579_ (gx#stx-e _g1533415577_)))
                         (let ((_hd1538515582_ (##car _e1538415579_))
                               (_tl1538615584_ (##cdr _e1538415579_)))
                           (if (gx#stx-pair/null? _hd1538515582_)
                               (if (fx>= (gx#stx-length _hd1538515582_) '0)
                                   (let ((_g17825_
                                          (gx#syntax-split-splice
                                           _hd1538515582_
                                           '0)))
                                     (begin
                                       (let ((_g17826_
                                              (values-count _g17825_)))
                                         (if (not (fx= _g17826_ 2))
                                             (error "Context expects 2 values"
                                                    _g17826_)))
                                       (let ((_target1538715587_
                                              (values-ref _g17825_ 0))
                                             (_tl1538915589_
                                              (values-ref _g17825_ 1)))
                                         (letrec ((_loop1539015592_
                                                   (lambda (_hd1538815595_
                                                            _arg1539415597_)
                                                     (if (gx#stx-pair?
                                                          _hd1538815595_)
                                                         (let ((_e1539115600_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1538815595_)))
                   (let ((_lp-hd1539215603_ (##car _e1539115600_))
                         (_lp-tl1539315605_ (##cdr _e1539115600_)))
                     (_loop1539015592_
                      _lp-tl1539315605_
                      (cons _lp-hd1539215603_ _arg1539415597_))))
                 (let ((_arg1539515608_ (reverse _arg1539415597_)))
                   (if (gx#stx-pair? _tl1538615584_)
                       (let ((_e1539615611_ (gx#stx-e _tl1538615584_)))
                         (let ((_hd1539715614_ (##car _e1539615611_))
                               (_tl1539815616_ (##cdr _e1539615611_)))
                           (if (gx#stx-pair? _hd1539715614_)
                               (let ((_e1539915619_ (gx#stx-e _hd1539715614_)))
                                 (let ((_hd1540015622_ (##car _e1539915619_))
                                       (_tl1540115624_ (##cdr _e1539915619_)))
                                   (if (gx#identifier? _hd1540015622_)
                                       (if (gx#stx-eq? '%#call _hd1540015622_)
                                           (if (gx#stx-pair? _tl1540115624_)
                                               (let ((_e1540215627_
                                                      (gx#stx-e
                                                       _tl1540115624_)))
                                                 (let ((_hd1540315630_
                                                        (##car _e1540215627_))
                                                       (_tl1540415632_
                                                        (##cdr _e1540215627_)))
                                                   (if (gx#stx-pair?
                                                        _hd1540315630_)
                                                       (let ((_e1540515635_
                                                              (gx#stx-e
                                                               _hd1540315630_)))
                                                         (let ((_hd1540615638_
                                                                (##car _e1540515635_))
                                                               (_tl1540715640_
                                                                (##cdr _e1540515635_)))
                                                           (if (gx#identifier?
                                                                _hd1540615638_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1540615638_)
                           (if (gx#stx-pair? _tl1540715640_)
                               (let ((_e1540815643_ (gx#stx-e _tl1540715640_)))
                                 (let ((_hd1540915646_ (##car _e1540815643_))
                                       (_tl1541015648_ (##cdr _e1540815643_)))
                                   (if (gx#stx-null? _tl1541015648_)
                                       (if (gx#stx-pair? _tl1540415632_)
                                           (let ((_e1541115651_
                                                  (gx#stx-e _tl1540415632_)))
                                             (let ((_hd1541215654_
                                                    (##car _e1541115651_))
                                                   (_tl1541315656_
                                                    (##cdr _e1541115651_)))
                                               (if (gx#stx-pair?
                                                    _hd1541215654_)
                                                   (let ((_e1541415659_
                                                          (gx#stx-e
                                                           _hd1541215654_)))
                                                     (let ((_hd1541515662_
                                                            (##car _e1541415659_))
                                                           (_tl1541615664_
                                                            (##cdr _e1541415659_)))
                                                       (if (gx#identifier?
                                                            _hd1541515662_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1541515662_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1541615664_)
                           (let ((_e1541715667_ (gx#stx-e _tl1541615664_)))
                             (let ((_hd1541815670_ (##car _e1541715667_))
                                   (_tl1541915672_ (##cdr _e1541715667_)))
                               (if (gx#stx-null? _tl1541915672_)
                                   (if (gx#stx-null? _tl1539815616_)
                                       ((lambda (_L15675_
                                                 _L15676_
                                                 _L15677_
                                                 _L15678_)
                                          (gxc#generate-runtime-binding-id
                                           _L15675_))
                                        _hd1541815670_
                                        _hd1540915646_
                                        _tl1538915589_
                                        _arg1539515608_)
                                       (_g1533215574_ _g1533415577_))
                                   (_g1533215574_ _g1533415577_))))
                           (_g1533215574_ _g1533415577_))
                       (_g1533215574_ _g1533415577_))
                   (_g1533215574_ _g1533415577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1533215574_
                                                    _g1533415577_))))
                                           (_g1533215574_ _g1533415577_))
                                       (_g1533215574_ _g1533415577_))))
                               (_g1533215574_ _g1533415577_))
                           (_g1533215574_ _g1533415577_))
                       (_g1533215574_ _g1533415577_))))
               (_g1533215574_ _g1533415577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1533215574_ _g1533415577_))
                                           (_g1533215574_ _g1533415577_))
                                       (_g1533215574_ _g1533415577_))))
                               (_g1533215574_ _g1533415577_))))
                       (_g1533215574_ _g1533415577_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1539015592_
                                            _target1538715587_
                                            '())))))
                                   (_g1533215574_ _g1533415577_))
                               (_g1533215574_ _g1533415577_))))
                       (_g1533215574_ _g1533415577_)))))
            (let ((_g1533015858_
                   (lambda (_g1533415713_)
                     (if (gx#stx-pair? _g1533415713_)
                         (let ((_e1533815715_ (gx#stx-e _g1533415713_)))
                           (let ((_hd1533915718_ (##car _e1533815715_))
                                 (_tl1534015720_ (##cdr _e1533815715_)))
                             (if (gx#stx-pair/null? _hd1533915718_)
                                 (if (fx>= (gx#stx-length _hd1533915718_) '0)
                                     (let ((_g17827_
                                            (gx#syntax-split-splice
                                             _hd1533915718_
                                             '0)))
                                       (begin
                                         (let ((_g17828_
                                                (values-count _g17827_)))
                                           (if (not (fx= _g17828_ 2))
                                               (error "Context expects 2 values"
                                                      _g17828_)))
                                         (let ((_target1534115723_
                                                (values-ref _g17827_ 0))
                                               (_tl1534315725_
                                                (values-ref _g17827_ 1)))
                                           (if (gx#stx-null? _tl1534315725_)
                                               (letrec ((_loop1534415728_
                                                         (lambda (_hd1534215731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1534815733_)
                   (if (gx#stx-pair? _hd1534215731_)
                       (let ((_e1534515736_ (gx#stx-e _hd1534215731_)))
                         (let ((_lp-hd1534615739_ (##car _e1534515736_))
                               (_lp-tl1534715741_ (##cdr _e1534515736_)))
                           (_loop1534415728_
                            _lp-tl1534715741_
                            (cons _lp-hd1534615739_ _arg1534815733_))))
                       (let ((_arg1534915744_ (reverse _arg1534815733_)))
                         (if (gx#stx-pair? _tl1534015720_)
                             (let ((_e1535015747_ (gx#stx-e _tl1534015720_)))
                               (let ((_hd1535115750_ (##car _e1535015747_))
                                     (_tl1535215752_ (##cdr _e1535015747_)))
                                 (if (gx#stx-pair? _hd1535115750_)
                                     (let ((_e1535315755_
                                            (gx#stx-e _hd1535115750_)))
                                       (let ((_hd1535415758_
                                              (##car _e1535315755_))
                                             (_tl1535515760_
                                              (##cdr _e1535315755_)))
                                         (if (gx#identifier? _hd1535415758_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1535415758_)
                                                 (if (gx#stx-pair?
                                                      _tl1535515760_)
                                                     (let ((_e1535615763_
                                                            (gx#stx-e
                                                             _tl1535515760_)))
                                                       (let ((_hd1535715766_
                                                              (##car _e1535615763_))
                                                             (_tl1535815768_
                                                              (##cdr _e1535615763_)))
                                                         (if (gx#stx-pair?
                                                              _hd1535715766_)
                                                             (let ((_e1535915771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1535715766_)))
                       (let ((_hd1536015774_ (##car _e1535915771_))
                             (_tl1536115776_ (##cdr _e1535915771_)))
                         (if (gx#identifier? _hd1536015774_)
                             (if (gx#stx-eq? '%#ref _hd1536015774_)
                                 (if (gx#stx-pair? _tl1536115776_)
                                     (let ((_e1536215779_
                                            (gx#stx-e _tl1536115776_)))
                                       (let ((_hd1536315782_
                                              (##car _e1536215779_))
                                             (_tl1536415784_
                                              (##cdr _e1536215779_)))
                                         (if (gx#stx-null? _tl1536415784_)
                                             (if (gx#stx-pair/null?
                                                  _tl1535815768_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1535815768_)
                                                           '0)
                                                     (let ((_g17829_
                                                            (gx#syntax-split-splice
                                                             _tl1535815768_
                                                             '0)))
                                                       (begin
                                                         (let ((_g17830_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g17829_)))
                   (if (not (fx= _g17830_ 2))
                       (error "Context expects 2 values" _g17830_)))
                 (let ((_target1536515787_ (values-ref _g17829_ 0))
                       (_tl1536715789_ (values-ref _g17829_ 1)))
                   (if (gx#stx-null? _tl1536715789_)
                       (letrec ((_loop1536815792_
                                 (lambda (_hd1536615795_ _xarg1537215797_)
                                   (if (gx#stx-pair? _hd1536615795_)
                                       (let ((_e1536915800_
                                              (gx#stx-e _hd1536615795_)))
                                         (let ((_lp-hd1537015803_
                                                (##car _e1536915800_))
                                               (_lp-tl1537115805_
                                                (##cdr _e1536915800_)))
                                           (if (gx#stx-pair? _lp-hd1537015803_)
                                               (let ((_e1537415808_
                                                      (gx#stx-e
                                                       _lp-hd1537015803_)))
                                                 (let ((_hd1537515811_
                                                        (##car _e1537415808_))
                                                       (_tl1537615813_
                                                        (##cdr _e1537415808_)))
                                                   (if (gx#identifier?
                                                        _hd1537515811_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1537515811_)
                                                           (if (gx#stx-pair?
                                                                _tl1537615813_)
                                                               (let ((_e1537715816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1537615813_)))
                         (let ((_hd1537815819_ (##car _e1537715816_))
                               (_tl1537915821_ (##cdr _e1537715816_)))
                           (if (gx#stx-null? _tl1537915821_)
                               (_loop1536815792_
                                _lp-tl1537115805_
                                (cons _hd1537815819_ _xarg1537215797_))
                               (_g1533115710_ _g1533415713_))))
                       (_g1533115710_ _g1533415713_))
                   (_g1533115710_ _g1533415713_))
               (_g1533115710_ _g1533415713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1533115710_ _g1533415713_))))
                                       (let ((_xarg1537315824_
                                              (reverse _xarg1537215797_)))
                                         (if (gx#stx-null? _tl1535215752_)
                                             ((lambda (_L15827_
                                                       _L15828_
                                                       _L15829_)
                                                (gxc#generate-runtime-binding-id
                                                 _L15828_))
                                              _xarg1537315824_
                                              _hd1536315782_
                                              _arg1534915744_)
                                             (_g1533115710_
                                              _g1533415713_)))))))
                         (_loop1536815792_ _target1536515787_ '()))
                       (_g1533115710_ _g1533415713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533115710_
                                                      _g1533415713_))
                                                 (_g1533115710_ _g1533415713_))
                                             (_g1533115710_ _g1533415713_))))
                                     (_g1533115710_ _g1533415713_))
                                 (_g1533115710_ _g1533415713_))
                             (_g1533115710_ _g1533415713_))))
                     (_g1533115710_ _g1533415713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1533115710_
                                                      _g1533415713_))
                                                 (_g1533115710_ _g1533415713_))
                                             (_g1533115710_ _g1533415713_))))
                                     (_g1533115710_ _g1533415713_))))
                             (_g1533115710_ _g1533415713_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1534415728_
                                                  _target1534115723_
                                                  '()))
                                               (_g1533115710_
                                                _g1533415713_)))))
                                     (_g1533115710_ _g1533415713_))
                                 (_g1533115710_ _g1533415713_))))
                         (_g1533115710_ _g1533415713_)))))
              (_g1533015858_ _form15329_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form15172_)
      (let ((_g1517615207_
             (lambda (_g1517715204_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1517715204_))))
        (let ((_g1517515220_
               (lambda (_g1517715210_)
                 ((lambda (_L15212_) (cons '0 '())) _g1517715210_))))
          (let ((_g1517415269_
                 (lambda (_g1517715223_)
                   (if (gx#stx-pair/null? _g1517715223_)
                       (if (fx>= (gx#stx-length _g1517715223_) '0)
                           (let ((_g17831_
                                  (gx#syntax-split-splice _g1517715223_ '0)))
                             (begin
                               (let ((_g17832_ (values-count _g17831_)))
                                 (if (not (fx= _g17832_ 2))
                                     (error "Context expects 2 values"
                                            _g17832_)))
                               (let ((_target1519315225_
                                      (values-ref _g17831_ 0))
                                     (_tl1519515227_ (values-ref _g17831_ 1)))
                                 (letrec ((_loop1519615230_
                                           (lambda (_hd1519415233_
                                                    _arg1520015235_)
                                             (if (gx#stx-pair? _hd1519415233_)
                                                 (let ((_e1519715238_
                                                        (gx#stx-e
                                                         _hd1519415233_)))
                                                   (let ((_lp-hd1519815241_
                                                          (##car _e1519715238_))
                                                         (_lp-tl1519915243_
                                                          (##cdr _e1519715238_)))
                                                     (_loop1519615230_
                                                      _lp-tl1519915243_
                                                      (cons _lp-hd1519815241_
                                                            _arg1520015235_))))
                                                 (let ((_arg1520115246_
                                                        (reverse _arg1520015235_)))
                                                   ((lambda (_L15249_ _L15250_)
                                                      (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g1526115264_ _g1526215266_)
                                        (cons _g1526115264_ _g1526215266_))
                                      '()
                                      _L15250_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1519515227_
                                                    _arg1520115246_))))))
                                   (_loop1519615230_
                                    _target1519315225_
                                    '())))))
                           (_g1517515220_ _g1517715223_))
                       (_g1517515220_ _g1517715223_)))))
            (let ((_g1517315326_
                   (lambda (_g1517715272_)
                     (if (gx#stx-pair? _g1517715272_)
                         (let ((_e1517915274_ (gx#stx-e _g1517715272_)))
                           (let ((_hd1518015277_ (##car _e1517915274_))
                                 (_tl1518115279_ (##cdr _e1517915274_)))
                             (if (gx#stx-pair/null? _hd1518015277_)
                                 (if (fx>= (gx#stx-length _hd1518015277_) '0)
                                     (let ((_g17833_
                                            (gx#syntax-split-splice
                                             _hd1518015277_
                                             '0)))
                                       (begin
                                         (let ((_g17834_
                                                (values-count _g17833_)))
                                           (if (not (fx= _g17834_ 2))
                                               (error "Context expects 2 values"
                                                      _g17834_)))
                                         (let ((_target1518215282_
                                                (values-ref _g17833_ 0))
                                               (_tl1518415284_
                                                (values-ref _g17833_ 1)))
                                           (if (gx#stx-null? _tl1518415284_)
                                               (letrec ((_loop1518515287_
                                                         (lambda (_hd1518315290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1518915292_)
                   (if (gx#stx-pair? _hd1518315290_)
                       (let ((_e1518615295_ (gx#stx-e _hd1518315290_)))
                         (let ((_lp-hd1518715298_ (##car _e1518615295_))
                               (_lp-tl1518815300_ (##cdr _e1518615295_)))
                           (_loop1518515287_
                            _lp-tl1518815300_
                            (cons _lp-hd1518715298_ _arg1518915292_))))
                       (let ((_arg1519015303_ (reverse _arg1518915292_)))
                         ((lambda (_L15306_)
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1531815321_
                                                       _g1531915323_)
                                                (cons _g1531815321_
                                                      _g1531915323_))
                                              '()
                                              _L15306_))))
                          _arg1519015303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1518515287_
                                                  _target1518215282_
                                                  '()))
                                               (_g1517415269_
                                                _g1517715272_)))))
                                     (_g1517415269_ _g1517715272_))
                                 (_g1517415269_ _g1517715272_))))
                         (_g1517415269_ _g1517715272_)))))
              (_g1517315326_ _form15172_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx14445_)
      (let ((_lambda-expr?14447_
             (lambda (_expr15125_)
               (let ((_g1512815138_
                      (lambda (_g1512915135_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1512915135_))))
                 (let ((_g1512715145_
                        (lambda (_g1512915141_) ((lambda () '#f)))))
                   (let ((_g1512615169_
                          (lambda (_g1512915148_)
                            (if (gx#stx-pair? _g1512915148_)
                                (let ((_e1513115150_ (gx#stx-e _g1512915148_)))
                                  (let ((_hd1513215153_ (##car _e1513115150_))
                                        (_tl1513315155_ (##cdr _e1513115150_)))
                                    (if (gx#identifier? _hd1513215153_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1513215153_)
                                            ((lambda (_L15158_) '#t)
                                             _tl1513315155_)
                                            (_g1512715145_ _g1512915148_))
                                        (_g1512715145_ _g1512915148_))))
                                (_g1512715145_ _g1512915148_)))))
                     (_g1512615169_ _expr15125_)))))))
        (let ((_case-lambda-expr?14448_
               (lambda (_expr15078_)
                 (let ((_g1508115091_
                        (lambda (_g1508215088_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1508215088_))))
                   (let ((_g1508015098_
                          (lambda (_g1508215094_) ((lambda () '#f)))))
                     (let ((_g1507915122_
                            (lambda (_g1508215101_)
                              (if (gx#stx-pair? _g1508215101_)
                                  (let ((_e1508415103_
                                         (gx#stx-e _g1508215101_)))
                                    (let ((_hd1508515106_
                                           (##car _e1508415103_))
                                          (_tl1508615108_
                                           (##cdr _e1508415103_)))
                                      (if (gx#identifier? _hd1508515106_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1508515106_)
                                              ((lambda (_L15111_) '#t)
                                               _tl1508615108_)
                                              (_g1508015098_ _g1508215101_))
                                          (_g1508015098_ _g1508215101_))))
                                  (_g1508015098_ _g1508215101_)))))
                       (_g1507915122_ _expr15078_)))))))
          (let ((_lift-case-lambda-clauses14449_
                 (lambda (_id14839_ _clauses14840_)
                   ((letrec ((_lp14842_
                              (lambda (_rest14844_
                                       _ids14845_
                                       _impls14846_
                                       _clauses14847_)
                                (let ((_rest1484814856_ _rest14844_))
                                  (let ((_E1485114860_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1484814856_))))
                                    (let ((_else1485014864_
                                           (lambda ()
                                             (values (reverse _ids14845_)
                                                     (reverse _impls14846_)
                                                     (reverse _clauses14847_)))))
                                      (let ((_K1485215066_
                                             (lambda (_rest14867_
                                                      _clause14868_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause14868_)
                                                   (_lp14842_
                                                    _rest14867_
                                                    _ids14845_
                                                    _impls14846_
                                                    (cons _clause14868_
                                                          _clauses14847_))
                                                   (let ((_g1487014881_
                                                          (lambda (_g1487114878_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1487114878_))))
                                                     (let ((_g1486915063_
                                                            (lambda (_g1487114884_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1487114884_)
                          (let ((_e1487414886_ (gx#stx-e _g1487114884_)))
                            (let ((_hd1487514889_ (##car _e1487414886_))
                                  (_tl1487614891_ (##cdr _e1487414886_)))
                              ((lambda (_L14894_ _L14895_)
                                 (let ((_id14912_
                                        (make-symbol
                                         (gx#stx-e _id14839_)
                                         '"__"
                                         (length _clauses14847_))))
                                   (let ((_impl14914_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L14895_ _L14894_))
                                           _stx14445_)))
                                     (let ((_clause15060_
                                            (let ((_g1491814946_
                                                   (lambda (_g1491914943_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1491914943_))))
                                              (let ((_g1491714961_
                                                     (lambda (_g1491914949_)
                                                       ((lambda (_L14951_)
                                                          (cons _L14895_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id14912_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L14951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx14445_)
                              '())))
                _g1491914949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1491615010_
                                                       (lambda (_g1491914964_)
                                                         (if (gx#stx-pair/null?
                                                              _g1491914964_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1491914964_)
                               '0)
                         (let ((_g17837_
                                (gx#syntax-split-splice _g1491914964_ '0)))
                           (begin
                             (let ((_g17838_ (values-count _g17837_)))
                               (if (not (fx= _g17838_ 2))
                                   (error "Context expects 2 values"
                                          _g17838_)))
                             (let ((_target1493214966_ (values-ref _g17837_ 0))
                                   (_tl1493414968_ (values-ref _g17837_ 1)))
                               (letrec ((_loop1493514971_
                                         (lambda (_hd1493314974_
                                                  _arg1493914976_)
                                           (if (gx#stx-pair? _hd1493314974_)
                                               (let ((_e1493614979_
                                                      (gx#stx-e
                                                       _hd1493314974_)))
                                                 (let ((_lp-hd1493714982_
                                                        (##car _e1493614979_))
                                                       (_lp-tl1493814984_
                                                        (##cdr _e1493614979_)))
                                                   (_loop1493514971_
                                                    _lp-tl1493814984_
                                                    (cons _lp-hd1493714982_
                                                          _arg1493914976_))))
                                               (let ((_arg1494014987_
                                                      (reverse _arg1493914976_)))
                                                 ((lambda (_L14990_ _L14991_)
                                                    (cons _L14895_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id14912_ '()))
                                           (foldr1 cons
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L14990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1500215005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1500315007_)
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _g1500215005_ '()))
                             _g1500315007_))
                     '()
                     _L14991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx14445_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1493414968_
                                                  _arg1494014987_))))))
                                 (_loop1493514971_ _target1493214966_ '())))))
                         (_g1491714961_ _g1491914964_))
                     (_g1491714961_ _g1491914964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1491515057_
                                                         (lambda (_g1491915013_)
                                                           (if (gx#stx-pair/null?
                                                                _g1491915013_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1491915013_)
                                 '0)
                           (let ((_g17839_
                                  (gx#syntax-split-splice _g1491915013_ '0)))
                             (begin
                               (let ((_g17840_ (values-count _g17839_)))
                                 (if (not (fx= _g17840_ 2))
                                     (error "Context expects 2 values"
                                            _g17840_)))
                               (let ((_target1492115015_
                                      (values-ref _g17839_ 0))
                                     (_tl1492315017_ (values-ref _g17839_ 1)))
                                 (if (gx#stx-null? _tl1492315017_)
                                     (letrec ((_loop1492415020_
                                               (lambda (_hd1492215023_
                                                        _arg1492815025_)
                                                 (if (gx#stx-pair?
                                                      _hd1492215023_)
                                                     (let ((_e1492515028_
                                                            (gx#stx-e
                                                             _hd1492215023_)))
                                                       (let ((_lp-hd1492615031_
                                                              (##car _e1492515028_))
                                                             (_lp-tl1492715033_
                                                              (##cdr _e1492515028_)))
                                                         (_loop1492415020_
                                                          _lp-tl1492715033_
                                                          (cons _lp-hd1492615031_
                                                                _arg1492815025_))))
                                                     (let ((_arg1492915036_
                                                            (reverse _arg1492815025_)))
                                                       ((lambda (_L15039_)
                                                          (cons _L14895_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id14912_ '()))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1504915052_
                                                              _g1505015054_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#ref)
                           (cons _g1504915052_ '()))
                     _g1505015054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L15039_))))
                               _stx14445_)
                              '())))
                _arg1492915036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1492415020_
                                        _target1492115015_
                                        '()))
                                     (_g1491615010_ _g1491915013_)))))
                           (_g1491615010_ _g1491915013_))
                       (_g1491615010_ _g1491915013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1491515057_
                                                     _L14895_)))))))
                                       (let ()
                                         (_lp14842_
                                          _rest14867_
                                          (cons _id14912_ _ids14845_)
                                          (cons _impl14914_ _impls14846_)
                                          (cons _clause15060_
                                                _clauses14847_)))))))
                               _tl1487614891_
                               _hd1487514889_)))
                          (_g1487014881_ _g1487114884_)))))
               (_g1486915063_ _clause14868_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1484814856_)
                                            (let ((_hd1485315069_
                                                   (##car _rest1484814856_))
                                                  (_tl1485415071_
                                                   (##cdr _rest1484814856_)))
                                              (let ((_clause15074_
                                                     _hd1485315069_))
                                                (let ((_rest15076_
                                                       _tl1485415071_))
                                                  (_K1485215066_
                                                   _rest15076_
                                                   _clause15074_))))
                                            (_else1485014864_)))))))))
                      _lp14842_)
                    _clauses14840_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def14450_
                   (lambda (_id14836_ _impl14837_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id14836_ '()) (cons _impl14837_ '())))
                      _stx14445_))))
              (let ((_g1445514529_
                     (lambda (_g1445614526_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1445614526_))))
                (let ((_g1445414536_
                       (lambda (_g1445614532_) ((lambda () _stx14445_)))))
                  (let ((_g1445314672_
                         (lambda (_g1445614539_)
                           (if (gx#stx-pair? _g1445614539_)
                               (let ((_e1449214541_ (gx#stx-e _g1445614539_)))
                                 (let ((_hd1449314544_ (##car _e1449214541_))
                                       (_tl1449414546_ (##cdr _e1449214541_)))
                                   (if (gx#stx-pair? _tl1449414546_)
                                       (let ((_e1449514549_
                                              (gx#stx-e _tl1449414546_)))
                                         (let ((_hd1449614552_
                                                (##car _e1449514549_))
                                               (_tl1449714554_
                                                (##cdr _e1449514549_)))
                                           (if (gx#stx-pair? _hd1449614552_)
                                               (let ((_e1449814557_
                                                      (gx#stx-e
                                                       _hd1449614552_)))
                                                 (let ((_hd1449914560_
                                                        (##car _e1449814557_))
                                                       (_tl1450014562_
                                                        (##cdr _e1449814557_)))
                                                   (if (gx#stx-null?
                                                        _tl1450014562_)
                                                       (if (gx#stx-pair?
                                                            _tl1449714554_)
                                                           (let ((_e1450114565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1449714554_)))
                     (let ((_hd1450214568_ (##car _e1450114565_))
                           (_tl1450314570_ (##cdr _e1450114565_)))
                       (if (gx#stx-pair? _hd1450214568_)
                           (let ((_e1450414573_ (gx#stx-e _hd1450214568_)))
                             (let ((_hd1450514576_ (##car _e1450414573_))
                                   (_tl1450614578_ (##cdr _e1450414573_)))
                               (if (gx#identifier? _hd1450514576_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1450514576_)
                                       (if (gx#stx-pair? _tl1450614578_)
                                           (let ((_e1450714581_
                                                  (gx#stx-e _tl1450614578_)))
                                             (let ((_hd1450814584_
                                                    (##car _e1450714581_))
                                                   (_tl1450914586_
                                                    (##cdr _e1450714581_)))
                                               (if (gx#stx-pair?
                                                    _hd1450814584_)
                                                   (let ((_e1451014589_
                                                          (gx#stx-e
                                                           _hd1450814584_)))
                                                     (let ((_hd1451114592_
                                                            (##car _e1451014589_))
                                                           (_tl1451214594_
                                                            (##cdr _e1451014589_)))
                                                       (if (gx#stx-pair?
                                                            _hd1451114592_)
                                                           (let ((_e1451314597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1451114592_)))
                     (let ((_hd1451414600_ (##car _e1451314597_))
                           (_tl1451514602_ (##cdr _e1451314597_)))
                       (if (gx#stx-pair? _hd1451414600_)
                           (let ((_e1451614605_ (gx#stx-e _hd1451414600_)))
                             (let ((_hd1451714608_ (##car _e1451614605_))
                                   (_tl1451814610_ (##cdr _e1451614605_)))
                               (if (gx#stx-null? _tl1451814610_)
                                   (if (gx#stx-pair? _tl1451514602_)
                                       (let ((_e1451914613_
                                              (gx#stx-e _tl1451514602_)))
                                         (let ((_hd1452014616_
                                                (##car _e1451914613_))
                                               (_tl1452114618_
                                                (##cdr _e1451914613_)))
                                           (if (gx#stx-null? _tl1452114618_)
                                               (if (gx#stx-null?
                                                    _tl1451214594_)
                                                   (if (gx#stx-pair?
                                                        _tl1450914586_)
                                                       (let ((_e1452214621_
                                                              (gx#stx-e
                                                               _tl1450914586_)))
                                                         (let ((_hd1452314624_
                                                                (##car _e1452214621_))
                                                               (_tl1452414626_
                                                                (##cdr _e1452214621_)))
                                                           (if (gx#stx-null?
                                                                _tl1452414626_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1450314570_)
                           ((lambda (_L14629_ _L14630_ _L14631_ _L14632_)
                              (if (if (gx#identifier? _L14632_)
                                      (if (gx#identifier? _L14631_)
                                          (if (_lambda-expr?14447_ _L14630_)
                                              (_case-lambda-expr?14448_
                                               _L14629_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id14667_
                                         (make-symbol
                                          (gx#stx-e _L14632_)
                                          '"__"
                                          (gx#stx-e _L14631_))))
                                    (let ((_new-case-lambda-expr14669_
                                           (gxc#apply-expression-subst
                                            _L14629_
                                            _L14631_
                                            _lambda-id14667_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#generate-runtime-binding-id
                                            _L14632_)
                                           '" => "
                                           _lambda-id14667_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id14667_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id14667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L14630_ '())))
                _stx14445_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L14632_ '())
                                   (cons _new-case-lambda-expr14669_ '())))
                       _stx14445_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx14445_)))))
                                  (_g1445414536_ _g1445614539_)))
                            _hd1452314624_
                            _hd1452014616_
                            _hd1451714608_
                            _hd1449914560_)
                           (_g1445414536_ _g1445614539_))
                       (_g1445414536_ _g1445614539_))))
               (_g1445414536_ _g1445614539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445414536_
                                                    _g1445614539_))
                                               (_g1445414536_ _g1445614539_))))
                                       (_g1445414536_ _g1445614539_))
                                   (_g1445414536_ _g1445614539_))))
                           (_g1445414536_ _g1445614539_))))
                   (_g1445414536_ _g1445614539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445414536_
                                                    _g1445614539_))))
                                           (_g1445414536_ _g1445614539_))
                                       (_g1445414536_ _g1445614539_))
                                   (_g1445414536_ _g1445614539_))))
                           (_g1445414536_ _g1445614539_))))
                   (_g1445414536_ _g1445614539_))
               (_g1445414536_ _g1445614539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1445414536_ _g1445614539_))))
                                       (_g1445414536_ _g1445614539_))))
                               (_g1445414536_ _g1445614539_)))))
                    (let ((_g1445214769_
                           (lambda (_g1445614675_)
                             (if (gx#stx-pair? _g1445614675_)
                                 (let ((_e1447614677_
                                        (gx#stx-e _g1445614675_)))
                                   (let ((_hd1447714680_ (##car _e1447614677_))
                                         (_tl1447814682_
                                          (##cdr _e1447614677_)))
                                     (if (gx#stx-pair? _tl1447814682_)
                                         (let ((_e1447914685_
                                                (gx#stx-e _tl1447814682_)))
                                           (let ((_hd1448014688_
                                                  (##car _e1447914685_))
                                                 (_tl1448114690_
                                                  (##cdr _e1447914685_)))
                                             (if (gx#stx-pair? _hd1448014688_)
                                                 (let ((_e1448214693_
                                                        (gx#stx-e
                                                         _hd1448014688_)))
                                                   (let ((_hd1448314696_
                                                          (##car _e1448214693_))
                                                         (_tl1448414698_
                                                          (##cdr _e1448214693_)))
                                                     (if (gx#stx-null?
                                                          _tl1448414698_)
                                                         (if (gx#stx-pair?
                                                              _tl1448114690_)
                                                             (let ((_e1448514701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1448114690_)))
                       (let ((_hd1448614704_ (##car _e1448514701_))
                             (_tl1448714706_ (##cdr _e1448514701_)))
                         (if (gx#stx-null? _tl1448714706_)
                             ((lambda (_L14709_ _L14710_)
                                (if (if (gx#identifier? _L14710_)
                                        (_case-lambda-expr?14448_ _L14709_)
                                        '#f)
                                    (let ((_g1472614736_
                                           (lambda (_g1472714733_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1472714733_))))
                                      (let ((_g1472514766_
                                             (lambda (_g1472714739_)
                                               (if (gx#stx-pair? _g1472714739_)
                                                   (let ((_e1472914741_
                                                          (gx#stx-e
                                                           _g1472714739_)))
                                                     (let ((_hd1473014744_
                                                            (##car _e1472914741_))
                                                           (_tl1473114746_
                                                            (##cdr _e1472914741_)))
                                                       ((lambda (_L14749_)
                                                          (let ((_g17835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses14449_ _L14710_ _L14749_)))
                    (begin
                      (let ((_g17836_ (values-count _g17835_)))
                        (if (not (fx= _g17836_ 3))
                            (error "Context expects 3 values" _g17836_)))
                      (let ((_ids14759_ (values-ref _g17835_ 0))
                            (_impls14760_ (values-ref _g17835_ 1))
                            (_clauses14761_ (values-ref _g17835_ 2)))
                        (let ((_defs14763_
                               (map _case-lambda-clause-def14450_
                                    _ids14759_
                                    _impls14760_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#generate-runtime-binding-id _L14710_)
                               '" => "
                               _ids14759_)
                              (for-each gx#core-bind-runtime! _ids14759_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr1 cons
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L14710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (gxc#xform-wrap-source
                               (cons '%#case-lambda _clauses14761_)
                               _L14709_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx14445_)
                                                   '())
                                             _defs14763_))
                               _stx14445_))))))))
                _tl1473114746_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1472614736_
                                                    _g1472714739_)))))
                                        (_g1472514766_ _L14709_)))
                                    (_g1445314672_ _g1445614675_)))
                              _hd1448614704_
                              _hd1448314696_)
                             (_g1445314672_ _g1445614675_))))
                     (_g1445314672_ _g1445614675_))
                 (_g1445314672_ _g1445614675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1445314672_
                                                  _g1445614675_))))
                                         (_g1445314672_ _g1445614675_))))
                                 (_g1445314672_ _g1445614675_)))))
                      (let ((_g1445114833_
                             (lambda (_g1445614772_)
                               (if (gx#stx-pair? _g1445614772_)
                                   (let ((_e1445914774_
                                          (gx#stx-e _g1445614772_)))
                                     (let ((_hd1446014777_
                                            (##car _e1445914774_))
                                           (_tl1446114779_
                                            (##cdr _e1445914774_)))
                                       (if (gx#stx-pair? _tl1446114779_)
                                           (let ((_e1446214782_
                                                  (gx#stx-e _tl1446114779_)))
                                             (let ((_hd1446314785_
                                                    (##car _e1446214782_))
                                                   (_tl1446414787_
                                                    (##cdr _e1446214782_)))
                                               (if (gx#stx-pair?
                                                    _hd1446314785_)
                                                   (let ((_e1446514790_
                                                          (gx#stx-e
                                                           _hd1446314785_)))
                                                     (let ((_hd1446614793_
                                                            (##car _e1446514790_))
                                                           (_tl1446714795_
                                                            (##cdr _e1446514790_)))
                                                       (if (gx#stx-null?
                                                            _tl1446714795_)
                                                           (if (gx#stx-pair?
                                                                _tl1446414787_)
                                                               (let ((_e1446814798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1446414787_)))
                         (let ((_hd1446914801_ (##car _e1446814798_))
                               (_tl1447014803_ (##cdr _e1446814798_)))
                           (if (gx#stx-pair? _hd1446914801_)
                               (let ((_e1447114806_ (gx#stx-e _hd1446914801_)))
                                 (let ((_hd1447214809_ (##car _e1447114806_))
                                       (_tl1447314811_ (##cdr _e1447114806_)))
                                   (if (gx#identifier? _hd1447214809_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1447214809_)
                                           (if (gx#stx-null? _tl1447014803_)
                                               ((lambda (_L14814_ _L14815_)
                                                  (if (if (gx#identifier?
                                                           _L14815_)
                                                          (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L14814_)
                  '#f)
              _stx14445_
              (_g1445214769_ _g1445614772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1447314811_
                                                _hd1446614793_)
                                               (_g1445214769_ _g1445614772_))
                                           (_g1445214769_ _g1445614772_))
                                       (_g1445214769_ _g1445614772_))))
                               (_g1445214769_ _g1445614772_))))
                       (_g1445214769_ _g1445614772_))
                   (_g1445214769_ _g1445614772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445214769_
                                                    _g1445614772_))))
                                           (_g1445214769_ _g1445614772_))))
                                   (_g1445214769_ _g1445614772_)))))
                        (_g1445114833_ _stx14445_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14383_ _id14384_ _new-id14385_)
      (let ((_g1438814401_
             (lambda (_g1438914398_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1438914398_))))
        (let ((_g1438714408_
               (lambda (_g1438914404_) ((lambda () _stx14383_)))))
          (let ((_g1438614442_
                 (lambda (_g1438914411_)
                   (if (gx#stx-pair? _g1438914411_)
                       (let ((_e1439114413_ (gx#stx-e _g1438914411_)))
                         (let ((_hd1439214416_ (##car _e1439114413_))
                               (_tl1439314418_ (##cdr _e1439114413_)))
                           (if (gx#stx-pair? _tl1439314418_)
                               (let ((_e1439414421_ (gx#stx-e _tl1439314418_)))
                                 (let ((_hd1439514424_ (##car _e1439414421_))
                                       (_tl1439614426_ (##cdr _e1439414421_)))
                                   (if (gx#stx-null? _tl1439614426_)
                                       ((lambda (_L14429_)
                                          (if (gx#free-identifier=?
                                               _L14429_
                                               _id14384_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14385_ '()))
                                               _stx14383_)
                                              (_g1438714408_ _g1438914411_)))
                                        _hd1439514424_)
                                       (_g1438714408_ _g1438914411_))))
                               (_g1438714408_ _g1438914411_))))
                       (_g1438714408_ _g1438914411_)))))
            (_g1438614442_ _stx14383_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14239_)
      (let ((_g1424214273_
             (lambda (_g1424314270_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1424314270_))))
        (let ((_g1424114318_
               (lambda (_g1424314276_)
                 (if (gx#stx-pair? _g1424314276_)
                     (let ((_e1426014278_ (gx#stx-e _g1424314276_)))
                       (let ((_hd1426114281_ (##car _e1426014278_))
                             (_tl1426214283_ (##cdr _e1426014278_)))
                         (if (gx#stx-pair? _tl1426214283_)
                             (let ((_e1426314286_ (gx#stx-e _tl1426214283_)))
                               (let ((_hd1426414289_ (##car _e1426314286_))
                                     (_tl1426514291_ (##cdr _e1426314286_)))
                                 (if (gx#stx-pair? _tl1426514291_)
                                     (let ((_e1426614294_
                                            (gx#stx-e _tl1426514291_)))
                                       (let ((_hd1426714297_
                                              (##car _e1426614294_))
                                             (_tl1426814299_
                                              (##cdr _e1426614294_)))
                                         (if (gx#stx-null? _tl1426814299_)
                                             ((lambda (_L14302_ _L14303_)
                                                (gxc#compile-e _L14302_))
                                              _hd1426714297_
                                              _hd1426414289_)
                                             (_g1424214273_ _g1424314276_))))
                                     (_g1424214273_ _g1424314276_))))
                             (_g1424214273_ _g1424314276_))))
                     (_g1424214273_ _g1424314276_)))))
          (let ((_g1424014380_
                 (lambda (_g1424314321_)
                   (if (gx#stx-pair? _g1424314321_)
                       (let ((_e1424614323_ (gx#stx-e _g1424314321_)))
                         (let ((_hd1424714326_ (##car _e1424614323_))
                               (_tl1424814328_ (##cdr _e1424614323_)))
                           (if (gx#stx-pair? _tl1424814328_)
                               (let ((_e1424914331_ (gx#stx-e _tl1424814328_)))
                                 (let ((_hd1425014334_ (##car _e1424914331_))
                                       (_tl1425114336_ (##cdr _e1424914331_)))
                                   (if (gx#stx-pair? _hd1425014334_)
                                       (let ((_e1425214339_
                                              (gx#stx-e _hd1425014334_)))
                                         (let ((_hd1425314342_
                                                (##car _e1425214339_))
                                               (_tl1425414344_
                                                (##cdr _e1425214339_)))
                                           (if (gx#stx-null? _tl1425414344_)
                                               (if (gx#stx-pair?
                                                    _tl1425114336_)
                                                   (let ((_e1425514347_
                                                          (gx#stx-e
                                                           _tl1425114336_)))
                                                     (let ((_hd1425614350_
                                                            (##car _e1425514347_))
                                                           (_tl1425714352_
                                                            (##cdr _e1425514347_)))
                                                       (if (gx#stx-null?
                                                            _tl1425714352_)
                                                           ((lambda (_L14355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14356_)
                      (if (gx#identifier? _L14356_)
                          (let ((_sym14372_
                                 (gxc#generate-runtime-binding-id _L14356_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14372_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14372_)
                                  (let ((_type1437314375_
                                         (gxc#apply-basic-expression-type
                                          _L14355_)))
                                    (if _type1437314375_
                                        (let ((_type14378_ _type1437314375_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14372_
                                           _type14378_))
                                        '#f)))
                              (gxc#compile-e _L14355_)))
                          (_g1424114318_ _g1424314321_)))
                    _hd1425614350_
                    _hd1425314342_)
                   (_g1424114318_ _g1424314321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1424114318_
                                                    _g1424314321_))
                                               (_g1424114318_ _g1424314321_))))
                                       (_g1424114318_ _g1424314321_))))
                               (_g1424114318_ _g1424314321_))))
                       (_g1424114318_ _g1424314321_)))))
            (_g1424014380_ _stx14239_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14024_)
      (let ((_collect-e14026_
             (lambda (_hd14183_ _expr14184_)
               (let ((_g1418714197_
                      (lambda (_g1418814194_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1418814194_))))
                 (let ((_g1418614204_
                        (lambda (_g1418814200_) ((lambda () '#!void)))))
                   (let ((_g1418514236_
                          (lambda (_g1418814207_)
                            (if (gx#stx-pair? _g1418814207_)
                                (let ((_e1419014209_ (gx#stx-e _g1418814207_)))
                                  (let ((_hd1419114212_ (##car _e1419014209_))
                                        (_tl1419214214_ (##cdr _e1419014209_)))
                                    (if (gx#stx-null? _tl1419214214_)
                                        ((lambda (_L14217_)
                                           (if (gx#identifier? _L14217_)
                                               (let ((_sym14228_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14217_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14228_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14228_)
                                                     (let ((_type1422914231_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14184_)))
                                                       (if _type1422914231_
                                                           (let ((_type14234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1422914231_))
                     (gxc#optimizer-declare-type!__opt-lambda17598
                      _sym14228_
                      _type14234_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1418614204_ _g1418814207_)))
                                         _hd1419114212_)
                                        (_g1418614204_ _g1418814207_))))
                                (_g1418614204_ _g1418814207_)))))
                     (_g1418514236_ _hd14183_)))))))
        (let ((_g1402814063_
               (lambda (_g1402914060_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1402914060_))))
          (let ((_g1402714180_
                 (lambda (_g1402914066_)
                   (if (gx#stx-pair? _g1402914066_)
                       (let ((_e1403314068_ (gx#stx-e _g1402914066_)))
                         (let ((_hd1403414071_ (##car _e1403314068_))
                               (_tl1403514073_ (##cdr _e1403314068_)))
                           (if (gx#stx-pair? _tl1403514073_)
                               (let ((_e1403614076_ (gx#stx-e _tl1403514073_)))
                                 (let ((_hd1403714079_ (##car _e1403614076_))
                                       (_tl1403814081_ (##cdr _e1403614076_)))
                                   (if (gx#stx-pair/null? _hd1403714079_)
                                       (if (fx>= (gx#stx-length _hd1403714079_)
                                                 '0)
                                           (let ((_g17841_
                                                  (gx#syntax-split-splice
                                                   _hd1403714079_
                                                   '0)))
                                             (begin
                                               (let ((_g17842_
                                                      (values-count _g17841_)))
                                                 (if (not (fx= _g17842_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17842_)))
                                               (let ((_target1403914084_
                                                      (values-ref _g17841_ 0))
                                                     (_tl1404114086_
                                                      (values-ref _g17841_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1404114086_)
                                                     (letrec ((_loop1404214089_
                                                               (lambda (_hd1404014092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1404614094_
                                _hd1404714096_)
                         (if (gx#stx-pair? _hd1404014092_)
                             (let ((_e1404314099_ (gx#stx-e _hd1404014092_)))
                               (let ((_lp-hd1404414102_ (##car _e1404314099_))
                                     (_lp-tl1404514104_ (##cdr _e1404314099_)))
                                 (if (gx#stx-pair? _lp-hd1404414102_)
                                     (let ((_e1405014107_
                                            (gx#stx-e _lp-hd1404414102_)))
                                       (let ((_hd1405114110_
                                              (##car _e1405014107_))
                                             (_tl1405214112_
                                              (##cdr _e1405014107_)))
                                         (if (gx#stx-pair? _tl1405214112_)
                                             (let ((_e1405314115_
                                                    (gx#stx-e _tl1405214112_)))
                                               (let ((_hd1405414118_
                                                      (##car _e1405314115_))
                                                     (_tl1405514120_
                                                      (##cdr _e1405314115_)))
                                                 (if (gx#stx-null?
                                                      _tl1405514120_)
                                                     (_loop1404214089_
                                                      _lp-tl1404514104_
                                                      (cons _hd1405414118_
                                                            _expr1404614094_)
                                                      (cons _hd1405114110_
                                                            _hd1404714096_))
                                                     (_g1402814063_
                                                      _g1402914066_))))
                                             (_g1402814063_ _g1402914066_))))
                                     (_g1402814063_ _g1402914066_))))
                             (let ((_expr1404814123_
                                    (reverse _expr1404614094_))
                                   (_hd1404914125_ (reverse _hd1404714096_)))
                               (if (gx#stx-pair? _tl1403814081_)
                                   (let ((_e1405614128_
                                          (gx#stx-e _tl1403814081_)))
                                     (let ((_hd1405714131_
                                            (##car _e1405614128_))
                                           (_tl1405814133_
                                            (##cdr _e1405614128_)))
                                       (if (gx#stx-null? _tl1405814133_)
                                           ((lambda (_L14136_
                                                     _L14137_
                                                     _L14138_)
                                              (begin
                                                (for-each
                                                 _collect-e14026_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1415814161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1415914163_)
                     (cons _g1415814161_ _g1415914163_))
                   '()
                   _L14138_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1416514168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1416614170_)
                     (cons _g1416514168_ _g1416614170_))
                   '()
                   _L14137_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1417214175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1417314177_)
                     (cons _g1417214175_ _g1417314177_))
                   '()
                   _L14137_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14136_)))
                                            _hd1405714131_
                                            _expr1404814123_
                                            _hd1404914125_)
                                           (_g1402814063_ _g1402914066_))))
                                   (_g1402814063_ _g1402914066_)))))))
               (_loop1404214089_ _target1403914084_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1402814063_
                                                      _g1402914066_)))))
                                           (_g1402814063_ _g1402914066_))
                                       (_g1402814063_ _g1402914066_))))
                               (_g1402814063_ _g1402914066_))))
                       (_g1402814063_ _g1402914066_)))))
            (_g1402714180_ _stx14024_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13578_)
      (let ((_g1358213684_
             (lambda (_g1358313681_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1358313681_))))
        (let ((_g1358113691_ (lambda (_g1358313687_) ((lambda () '#!void)))))
          (let ((_g1358013841_
                 (lambda (_g1358313694_)
                   (if (gx#stx-pair? _g1358313694_)
                       (let ((_e1364113696_ (gx#stx-e _g1358313694_)))
                         (let ((_hd1364213699_ (##car _e1364113696_))
                               (_tl1364313701_ (##cdr _e1364113696_)))
                           (if (gx#stx-pair? _tl1364313701_)
                               (let ((_e1364413704_ (gx#stx-e _tl1364313701_)))
                                 (let ((_hd1364513707_ (##car _e1364413704_))
                                       (_tl1364613709_ (##cdr _e1364413704_)))
                                   (if (gx#stx-pair? _hd1364513707_)
                                       (let ((_e1364713712_
                                              (gx#stx-e _hd1364513707_)))
                                         (let ((_hd1364813715_
                                                (##car _e1364713712_))
                                               (_tl1364913717_
                                                (##cdr _e1364713712_)))
                                           (if (gx#identifier? _hd1364813715_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1364813715_)
                                                   (if (gx#stx-pair?
                                                        _tl1364913717_)
                                                       (let ((_e1365013720_
                                                              (gx#stx-e
                                                               _tl1364913717_)))
                                                         (let ((_hd1365113723_
                                                                (##car _e1365013720_))
                                                               (_tl1365213725_
                                                                (##cdr _e1365013720_)))
                                                           (if (gx#stx-null?
                                                                _tl1365213725_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1364613709_)
                           (let ((_e1365313728_ (gx#stx-e _tl1364613709_)))
                             (let ((_hd1365413731_ (##car _e1365313728_))
                                   (_tl1365513733_ (##cdr _e1365313728_)))
                               (if (gx#stx-pair? _hd1365413731_)
                                   (let ((_e1365613736_
                                          (gx#stx-e _hd1365413731_)))
                                     (let ((_hd1365713739_
                                            (##car _e1365613736_))
                                           (_tl1365813741_
                                            (##cdr _e1365613736_)))
                                       (if (gx#identifier? _hd1365713739_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1365713739_)
                                               (if (gx#stx-pair?
                                                    _tl1365813741_)
                                                   (let ((_e1365913744_
                                                          (gx#stx-e
                                                           _tl1365813741_)))
                                                     (let ((_hd1366013747_
                                                            (##car _e1365913744_))
                                                           (_tl1366113749_
                                                            (##cdr _e1365913744_)))
                                                       (if (gx#stx-null?
                                                            _tl1366113749_)
                                                           (if (gx#stx-pair?
                                                                _tl1365513733_)
                                                               (let ((_e1366213752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1365513733_)))
                         (let ((_hd1366313755_ (##car _e1366213752_))
                               (_tl1366413757_ (##cdr _e1366213752_)))
                           (if (gx#stx-pair? _hd1366313755_)
                               (let ((_e1366513760_ (gx#stx-e _hd1366313755_)))
                                 (let ((_hd1366613763_ (##car _e1366513760_))
                                       (_tl1366713765_ (##cdr _e1366513760_)))
                                   (if (gx#identifier? _hd1366613763_)
                                       (if (gx#stx-eq? '%#quote _hd1366613763_)
                                           (if (gx#stx-pair? _tl1366713765_)
                                               (let ((_e1366813768_
                                                      (gx#stx-e
                                                       _tl1366713765_)))
                                                 (let ((_hd1366913771_
                                                        (##car _e1366813768_))
                                                       (_tl1367013773_
                                                        (##cdr _e1366813768_)))
                                                   (if (gx#stx-null?
                                                        _tl1367013773_)
                                                       (if (gx#stx-pair?
                                                            _tl1366413757_)
                                                           (let ((_e1367113776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1366413757_)))
                     (let ((_hd1367213779_ (##car _e1367113776_))
                           (_tl1367313781_ (##cdr _e1367113776_)))
                       (if (gx#stx-pair? _hd1367213779_)
                           (let ((_e1367413784_ (gx#stx-e _hd1367213779_)))
                             (let ((_hd1367513787_ (##car _e1367413784_))
                                   (_tl1367613789_ (##cdr _e1367413784_)))
                               (if (gx#identifier? _hd1367513787_)
                                   (if (gx#stx-eq? '%#ref _hd1367513787_)
                                       (if (gx#stx-pair? _tl1367613789_)
                                           (let ((_e1367713792_
                                                  (gx#stx-e _tl1367613789_)))
                                             (let ((_hd1367813795_
                                                    (##car _e1367713792_))
                                                   (_tl1367913797_
                                                    (##cdr _e1367713792_)))
                                               (if (gx#stx-null?
                                                    _tl1367913797_)
                                                   (if (gx#stx-null?
                                                        _tl1367313781_)
                                                       ((lambda (_L13800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13801_
                         _L13802_
                         _L13803_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda17574
                       (gxc#generate-runtime-binding-id _L13802_)
                       (gx#stx-e _L13801_)
                       (gxc#generate-runtime-binding-id _L13800_)
                       '#f)
                      (_g1358113691_ _g1358313694_)))
                _hd1367813795_
                _hd1366913771_
                _hd1366013747_
                _hd1365113723_)
               (_g1358113691_ _g1358313694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1358113691_
                                                    _g1358313694_))))
                                           (_g1358113691_ _g1358313694_))
                                       (_g1358113691_ _g1358313694_))
                                   (_g1358113691_ _g1358313694_))))
                           (_g1358113691_ _g1358313694_))))
                   (_g1358113691_ _g1358313694_))
               (_g1358113691_ _g1358313694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1358113691_ _g1358313694_))
                                           (_g1358113691_ _g1358313694_))
                                       (_g1358113691_ _g1358313694_))))
                               (_g1358113691_ _g1358313694_))))
                       (_g1358113691_ _g1358313694_))
                   (_g1358113691_ _g1358313694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1358113691_
                                                    _g1358313694_))
                                               (_g1358113691_ _g1358313694_))
                                           (_g1358113691_ _g1358313694_))))
                                   (_g1358113691_ _g1358313694_))))
                           (_g1358113691_ _g1358313694_))
                       (_g1358113691_ _g1358313694_))))
               (_g1358113691_ _g1358313694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1358113691_
                                                    _g1358313694_))
                                               (_g1358113691_ _g1358313694_))))
                                       (_g1358113691_ _g1358313694_))))
                               (_g1358113691_ _g1358313694_))))
                       (_g1358113691_ _g1358313694_)))))
            (let ((_g1357914021_
                   (lambda (_g1358313844_)
                     (if (gx#stx-pair? _g1358313844_)
                         (let ((_e1358913846_ (gx#stx-e _g1358313844_)))
                           (let ((_hd1359013849_ (##car _e1358913846_))
                                 (_tl1359113851_ (##cdr _e1358913846_)))
                             (if (gx#stx-pair? _tl1359113851_)
                                 (let ((_e1359213854_
                                        (gx#stx-e _tl1359113851_)))
                                   (let ((_hd1359313857_ (##car _e1359213854_))
                                         (_tl1359413859_
                                          (##cdr _e1359213854_)))
                                     (if (gx#stx-pair? _hd1359313857_)
                                         (let ((_e1359513862_
                                                (gx#stx-e _hd1359313857_)))
                                           (let ((_hd1359613865_
                                                  (##car _e1359513862_))
                                                 (_tl1359713867_
                                                  (##cdr _e1359513862_)))
                                             (if (gx#identifier?
                                                  _hd1359613865_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1359613865_)
                                                     (if (gx#stx-pair?
                                                          _tl1359713867_)
                                                         (let ((_e1359813870_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1359713867_)))
                   (let ((_hd1359913873_ (##car _e1359813870_))
                         (_tl1360013875_ (##cdr _e1359813870_)))
                     (if (gx#stx-null? _tl1360013875_)
                         (if (gx#stx-pair? _tl1359413859_)
                             (let ((_e1360113878_ (gx#stx-e _tl1359413859_)))
                               (let ((_hd1360213881_ (##car _e1360113878_))
                                     (_tl1360313883_ (##cdr _e1360113878_)))
                                 (if (gx#stx-pair? _hd1360213881_)
                                     (let ((_e1360413886_
                                            (gx#stx-e _hd1360213881_)))
                                       (let ((_hd1360513889_
                                              (##car _e1360413886_))
                                             (_tl1360613891_
                                              (##cdr _e1360413886_)))
                                         (if (gx#identifier? _hd1360513889_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1360513889_)
                                                 (if (gx#stx-pair?
                                                      _tl1360613891_)
                                                     (let ((_e1360713894_
                                                            (gx#stx-e
                                                             _tl1360613891_)))
                                                       (let ((_hd1360813897_
                                                              (##car _e1360713894_))
                                                             (_tl1360913899_
                                                              (##cdr _e1360713894_)))
                                                         (if (gx#stx-null?
                                                              _tl1360913899_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1360313883_)
                         (let ((_e1361013902_ (gx#stx-e _tl1360313883_)))
                           (let ((_hd1361113905_ (##car _e1361013902_))
                                 (_tl1361213907_ (##cdr _e1361013902_)))
                             (if (gx#stx-pair? _hd1361113905_)
                                 (let ((_e1361313910_
                                        (gx#stx-e _hd1361113905_)))
                                   (let ((_hd1361413913_ (##car _e1361313910_))
                                         (_tl1361513915_
                                          (##cdr _e1361313910_)))
                                     (if (gx#identifier? _hd1361413913_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1361413913_)
                                             (if (gx#stx-pair? _tl1361513915_)
                                                 (let ((_e1361613918_
                                                        (gx#stx-e
                                                         _tl1361513915_)))
                                                   (let ((_hd1361713921_
                                                          (##car _e1361613918_))
                                                         (_tl1361813923_
                                                          (##cdr _e1361613918_)))
                                                     (if (gx#stx-null?
                                                          _tl1361813923_)
                                                         (if (gx#stx-pair?
                                                              _tl1361213907_)
                                                             (let ((_e1361913926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1361213907_)))
                       (let ((_hd1362013929_ (##car _e1361913926_))
                             (_tl1362113931_ (##cdr _e1361913926_)))
                         (if (gx#stx-pair? _hd1362013929_)
                             (let ((_e1362213934_ (gx#stx-e _hd1362013929_)))
                               (let ((_hd1362313937_ (##car _e1362213934_))
                                     (_tl1362413939_ (##cdr _e1362213934_)))
                                 (if (gx#identifier? _hd1362313937_)
                                     (if (gx#stx-eq? '%#ref _hd1362313937_)
                                         (if (gx#stx-pair? _tl1362413939_)
                                             (let ((_e1362513942_
                                                    (gx#stx-e _tl1362413939_)))
                                               (let ((_hd1362613945_
                                                      (##car _e1362513942_))
                                                     (_tl1362713947_
                                                      (##cdr _e1362513942_)))
                                                 (if (gx#stx-null?
                                                      _tl1362713947_)
                                                     (if (gx#stx-pair?
                                                          _tl1362113931_)
                                                         (let ((_e1362813950_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1362113931_)))
                   (let ((_hd1362913953_ (##car _e1362813950_))
                         (_tl1363013955_ (##cdr _e1362813950_)))
                     (if (gx#stx-pair? _hd1362913953_)
                         (let ((_e1363113958_ (gx#stx-e _hd1362913953_)))
                           (let ((_hd1363213961_ (##car _e1363113958_))
                                 (_tl1363313963_ (##cdr _e1363113958_)))
                             (if (gx#identifier? _hd1363213961_)
                                 (if (gx#stx-eq? '%#quote _hd1363213961_)
                                     (if (gx#stx-pair? _tl1363313963_)
                                         (let ((_e1363413966_
                                                (gx#stx-e _tl1363313963_)))
                                           (let ((_hd1363513969_
                                                  (##car _e1363413966_))
                                                 (_tl1363613971_
                                                  (##cdr _e1363413966_)))
                                             (if (gx#stx-null? _tl1363613971_)
                                                 (if (gx#stx-null?
                                                      _tl1363013955_)
                                                     ((lambda (_L13974_
                                                               _L13975_
                                                               _L13976_
                                                               _L13977_
                                                               _L13978_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13978_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda17574
                     (gxc#generate-runtime-binding-id _L13977_)
                     (gx#stx-e _L13976_)
                     (gxc#generate-runtime-binding-id _L13975_)
                     (gx#stx-e _L13974_))
                    (_g1358013841_ _g1358313844_)))
              _hd1363513969_
              _hd1362613945_
              _hd1361713921_
              _hd1360813897_
              _hd1359913873_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358013841_
                                                      _g1358313844_))
                                                 (_g1358013841_
                                                  _g1358313844_))))
                                         (_g1358013841_ _g1358313844_))
                                     (_g1358013841_ _g1358313844_))
                                 (_g1358013841_ _g1358313844_))))
                         (_g1358013841_ _g1358313844_))))
                 (_g1358013841_ _g1358313844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358013841_
                                                      _g1358313844_))))
                                             (_g1358013841_ _g1358313844_))
                                         (_g1358013841_ _g1358313844_))
                                     (_g1358013841_ _g1358313844_))))
                             (_g1358013841_ _g1358313844_))))
                     (_g1358013841_ _g1358313844_))
                 (_g1358013841_ _g1358313844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1358013841_ _g1358313844_))
                                             (_g1358013841_ _g1358313844_))
                                         (_g1358013841_ _g1358313844_))))
                                 (_g1358013841_ _g1358313844_))))
                         (_g1358013841_ _g1358313844_))
                     (_g1358013841_ _g1358313844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358013841_
                                                      _g1358313844_))
                                                 (_g1358013841_ _g1358313844_))
                                             (_g1358013841_ _g1358313844_))))
                                     (_g1358013841_ _g1358313844_))))
                             (_g1358013841_ _g1358313844_))
                         (_g1358013841_ _g1358313844_))))
                 (_g1358013841_ _g1358313844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358013841_
                                                      _g1358313844_))
                                                 (_g1358013841_
                                                  _g1358313844_))))
                                         (_g1358013841_ _g1358313844_))))
                                 (_g1358013841_ _g1358313844_))))
                         (_g1358013841_ _g1358313844_)))))
              (_g1357914021_ _stx13578_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13518_)
      (let ((_g1352113534_
             (lambda (_g1352213531_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1352213531_))))
        (let ((_g1352013541_ (lambda (_g1352213537_) ((lambda () '#f)))))
          (let ((_g1351913575_
                 (lambda (_g1352213544_)
                   (if (gx#stx-pair? _g1352213544_)
                       (let ((_e1352413546_ (gx#stx-e _g1352213544_)))
                         (let ((_hd1352513549_ (##car _e1352413546_))
                               (_tl1352613551_ (##cdr _e1352413546_)))
                           (if (gx#stx-pair? _tl1352613551_)
                               (let ((_e1352713554_ (gx#stx-e _tl1352613551_)))
                                 (let ((_hd1352813557_ (##car _e1352713554_))
                                       (_tl1352913559_ (##cdr _e1352713554_)))
                                   (if (gx#stx-null? _tl1352913559_)
                                       ((lambda (_L13562_)
                                          (gxc#compile-e _L13562_))
                                        _hd1352813557_)
                                       (_g1352013541_ _g1352213544_))))
                               (_g1352013541_ _g1352213544_))))
                       (_g1352013541_ _g1352213544_)))))
            (_g1351913575_ _stx13518_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12943_)
      (let ((_g1294813069_
             (lambda (_g1294913066_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1294913066_))))
        (let ((_g1294713076_ (lambda (_g1294913072_) ((lambda () '#f)))))
          (let ((_g1294613100_
                 (lambda (_g1294913079_)
                   (if (gx#stx-pair? _g1294913079_)
                       (let ((_e1306213081_ (gx#stx-e _g1294913079_)))
                         (let ((_hd1306313084_ (##car _e1306213081_))
                               (_tl1306413086_ (##cdr _e1306213081_)))
                           ((lambda (_L13089_)
                              (if (gxc#dispatch-lambda-form? _L13089_)
                                  (let ((__obj17803
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj17803
                                       'lambda
                                       (gxc#lambda-form-arity _L13089_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13089_))
                                      __obj17803))
                                  (_g1294713076_ _g1294913079_)))
                            _tl1306413086_)))
                       (_g1294713076_ _g1294913079_)))))
            (let ((_g1294513330_
                   (lambda (_g1294913103_)
                     (if (gx#stx-pair? _g1294913103_)
                         (let ((_e1300713105_ (gx#stx-e _g1294913103_)))
                           (let ((_hd1300813108_ (##car _e1300713105_))
                                 (_tl1300913110_ (##cdr _e1300713105_)))
                             (if (gx#stx-pair? _tl1300913110_)
                                 (let ((_e1301013113_
                                        (gx#stx-e _tl1300913110_)))
                                   (let ((_hd1301113116_ (##car _e1301013113_))
                                         (_tl1301213118_
                                          (##cdr _e1301013113_)))
                                     (if (gx#stx-pair/null? _hd1301113116_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1301113116_)
                                                   '0)
                                             (let ((_g17843_
                                                    (gx#syntax-split-splice
                                                     _hd1301113116_
                                                     '0)))
                                               (begin
                                                 (let ((_g17844_
                                                        (values-count
                                                         _g17843_)))
                                                   (if (not (fx= _g17844_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17844_)))
                                                 (let ((_target1301313121_
                                                        (values-ref
                                                         _g17843_
                                                         0))
                                                       (_tl1301513123_
                                                        (values-ref
                                                         _g17843_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1301513123_)
                                                       (letrec ((_loop1301613126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1301413129_ _arg1302013131_)
                           (if (gx#stx-pair? _hd1301413129_)
                               (let ((_e1301713134_ (gx#stx-e _hd1301413129_)))
                                 (let ((_lp-hd1301813137_
                                        (##car _e1301713134_))
                                       (_lp-tl1301913139_
                                        (##cdr _e1301713134_)))
                                   (_loop1301613126_
                                    _lp-tl1301913139_
                                    (cons _lp-hd1301813137_ _arg1302013131_))))
                               (let ((_arg1302113142_
                                      (reverse _arg1302013131_)))
                                 (if (gx#stx-pair? _tl1301213118_)
                                     (let ((_e1302213145_
                                            (gx#stx-e _tl1301213118_)))
                                       (let ((_hd1302313148_
                                              (##car _e1302213145_))
                                             (_tl1302413150_
                                              (##cdr _e1302213145_)))
                                         (if (gx#stx-pair? _hd1302313148_)
                                             (let ((_e1302513153_
                                                    (gx#stx-e _hd1302313148_)))
                                               (let ((_hd1302613156_
                                                      (##car _e1302513153_))
                                                     (_tl1302713158_
                                                      (##cdr _e1302513153_)))
                                                 (if (gx#identifier?
                                                      _hd1302613156_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1302613156_)
                                                         (if (gx#stx-pair?
                                                              _tl1302713158_)
                                                             (let ((_e1302813161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1302713158_)))
                       (let ((_hd1302913164_ (##car _e1302813161_))
                             (_tl1303013166_ (##cdr _e1302813161_)))
                         (if (gx#stx-pair? _hd1302913164_)
                             (let ((_e1303113169_ (gx#stx-e _hd1302913164_)))
                               (let ((_hd1303213172_ (##car _e1303113169_))
                                     (_tl1303313174_ (##cdr _e1303113169_)))
                                 (if (gx#identifier? _hd1303213172_)
                                     (if (gx#stx-eq? '%#ref _hd1303213172_)
                                         (if (gx#stx-pair? _tl1303313174_)
                                             (let ((_e1303413177_
                                                    (gx#stx-e _tl1303313174_)))
                                               (let ((_hd1303513180_
                                                      (##car _e1303413177_))
                                                     (_tl1303613182_
                                                      (##cdr _e1303413177_)))
                                                 (if (gx#stx-null?
                                                      _tl1303613182_)
                                                     (if (gx#stx-pair?
                                                          _tl1303013166_)
                                                         (let ((_e1303713185_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1303013166_)))
                   (let ((_hd1303813188_ (##car _e1303713185_))
                         (_tl1303913190_ (##cdr _e1303713185_)))
                     (if (gx#stx-pair? _hd1303813188_)
                         (let ((_e1304013193_ (gx#stx-e _hd1303813188_)))
                           (let ((_hd1304113196_ (##car _e1304013193_))
                                 (_tl1304213198_ (##cdr _e1304013193_)))
                             (if (gx#identifier? _hd1304113196_)
                                 (if (gx#stx-eq? '%#ref _hd1304113196_)
                                     (if (gx#stx-pair? _tl1304213198_)
                                         (let ((_e1304313201_
                                                (gx#stx-e _tl1304213198_)))
                                           (let ((_hd1304413204_
                                                  (##car _e1304313201_))
                                                 (_tl1304513206_
                                                  (##cdr _e1304313201_)))
                                             (if (gx#stx-null? _tl1304513206_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1303913190_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1303913190_)
                                                               '0)
                                                         (let ((_g17845_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1303913190_
                         '0)))
                   (begin
                     (let ((_g17846_ (values-count _g17845_)))
                       (if (not (fx= _g17846_ 2))
                           (error "Context expects 2 values" _g17846_)))
                     (let ((_target1304613209_ (values-ref _g17845_ 0))
                           (_tl1304813211_ (values-ref _g17845_ 1)))
                       (if (gx#stx-null? _tl1304813211_)
                           (letrec ((_loop1304913214_
                                     (lambda (_hd1304713217_ _xarg1305313219_)
                                       (if (gx#stx-pair? _hd1304713217_)
                                           (let ((_e1305013222_
                                                  (gx#stx-e _hd1304713217_)))
                                             (let ((_lp-hd1305113225_
                                                    (##car _e1305013222_))
                                                   (_lp-tl1305213227_
                                                    (##cdr _e1305013222_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1305113225_)
                                                   (let ((_e1305513230_
                                                          (gx#stx-e
                                                           _lp-hd1305113225_)))
                                                     (let ((_hd1305613233_
                                                            (##car _e1305513230_))
                                                           (_tl1305713235_
                                                            (##cdr _e1305513230_)))
                                                       (if (gx#identifier?
                                                            _hd1305613233_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1305613233_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1305713235_)
                           (let ((_e1305813238_ (gx#stx-e _tl1305713235_)))
                             (let ((_hd1305913241_ (##car _e1305813238_))
                                   (_tl1306013243_ (##cdr _e1305813238_)))
                               (if (gx#stx-null? _tl1306013243_)
                                   (_loop1304913214_
                                    _lp-tl1305213227_
                                    (cons _hd1305913241_ _xarg1305313219_))
                                   (_g1294613100_ _g1294913103_))))
                           (_g1294613100_ _g1294913103_))
                       (_g1294613100_ _g1294913103_))
                   (_g1294613100_ _g1294913103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294613100_
                                                    _g1294913103_))))
                                           (let ((_xarg1305413246_
                                                  (reverse _xarg1305313219_)))
                                             (if (gx#stx-null? _tl1302413150_)
                                                 ((lambda (_L13249_
                                                           _L13250_
                                                           _L13251_
                                                           _L13252_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1328913292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1329013294_)
                                 (cons _g1328913292_ _g1329013294_))
                               '()
                               _L13252_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13251_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1329613299_
                                                            _g1329713301_)
                                                     (cons _g1329613299_
                                                           _g1329713301_))
                                                   '()
                                                   _L13252_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1330313306_
                                                            _g1330413308_)
                                                     (cons _g1330313306_
                                                           _g1330413308_))
                                                   '()
                                                   _L13249_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1331013313_
                                                       _g1331113315_)
                                                (cons _g1331013313_
                                                      _g1331113315_))
                                              '()
                                              _L13252_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1331713320_
                                                       _g1331813322_)
                                                (cons _g1331713320_
                                                      _g1331813322_))
                                              '()
                                              _L13249_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13325_
                       (gxc#generate-runtime-binding-id _L13250_)))
                  (let ((_type13327_
                         (gxc#optimizer-resolve-type _type-t13325_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13327_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13325_)
                          '#f))))
                (_g1294613100_ _g1294913103_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1305413246_
                                                  _hd1304413204_
                                                  _hd1303513180_
                                                  _arg1302113142_)
                                                 (_g1294613100_
                                                  _g1294913103_)))))))
                             (_loop1304913214_ _target1304613209_ '()))
                           (_g1294613100_ _g1294913103_)))))
                 (_g1294613100_ _g1294913103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294613100_
                                                      _g1294913103_))
                                                 (_g1294613100_
                                                  _g1294913103_))))
                                         (_g1294613100_ _g1294913103_))
                                     (_g1294613100_ _g1294913103_))
                                 (_g1294613100_ _g1294913103_))))
                         (_g1294613100_ _g1294913103_))))
                 (_g1294613100_ _g1294913103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294613100_
                                                      _g1294913103_))))
                                             (_g1294613100_ _g1294913103_))
                                         (_g1294613100_ _g1294913103_))
                                     (_g1294613100_ _g1294913103_))))
                             (_g1294613100_ _g1294913103_))))
                     (_g1294613100_ _g1294913103_))
                 (_g1294613100_ _g1294913103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294613100_
                                                      _g1294913103_))))
                                             (_g1294613100_ _g1294913103_))))
                                     (_g1294613100_ _g1294913103_)))))))
                 (_loop1301613126_ _target1301313121_ '()))
               (_g1294613100_ _g1294913103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1294613100_ _g1294913103_))
                                         (_g1294613100_ _g1294913103_))))
                                 (_g1294613100_ _g1294913103_))))
                         (_g1294613100_ _g1294913103_)))))
              (let ((_g1294413515_
                     (lambda (_g1294913333_)
                       (if (gx#stx-pair? _g1294913333_)
                           (let ((_e1295513335_ (gx#stx-e _g1294913333_)))
                             (let ((_hd1295613338_ (##car _e1295513335_))
                                   (_tl1295713340_ (##cdr _e1295513335_)))
                               (if (gx#stx-pair? _tl1295713340_)
                                   (let ((_e1295813343_
                                          (gx#stx-e _tl1295713340_)))
                                     (let ((_hd1295913346_
                                            (##car _e1295813343_))
                                           (_tl1296013348_
                                            (##cdr _e1295813343_)))
                                       (if (gx#stx-pair? _tl1296013348_)
                                           (let ((_e1296113351_
                                                  (gx#stx-e _tl1296013348_)))
                                             (let ((_hd1296213354_
                                                    (##car _e1296113351_))
                                                   (_tl1296313356_
                                                    (##cdr _e1296113351_)))
                                               (if (gx#stx-pair?
                                                    _hd1296213354_)
                                                   (let ((_e1296413359_
                                                          (gx#stx-e
                                                           _hd1296213354_)))
                                                     (let ((_hd1296513362_
                                                            (##car _e1296413359_))
                                                           (_tl1296613364_
                                                            (##cdr _e1296413359_)))
                                                       (if (gx#identifier?
                                                            _hd1296513362_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1296513362_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1296613364_)
                           (let ((_e1296713367_ (gx#stx-e _tl1296613364_)))
                             (let ((_hd1296813370_ (##car _e1296713367_))
                                   (_tl1296913372_ (##cdr _e1296713367_)))
                               (if (gx#stx-pair? _hd1296813370_)
                                   (let ((_e1297013375_
                                          (gx#stx-e _hd1296813370_)))
                                     (let ((_hd1297113378_
                                            (##car _e1297013375_))
                                           (_tl1297213380_
                                            (##cdr _e1297013375_)))
                                       (if (gx#identifier? _hd1297113378_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1297113378_)
                                               (if (gx#stx-pair?
                                                    _tl1297213380_)
                                                   (let ((_e1297313383_
                                                          (gx#stx-e
                                                           _tl1297213380_)))
                                                     (let ((_hd1297413386_
                                                            (##car _e1297313383_))
                                                           (_tl1297513388_
                                                            (##cdr _e1297313383_)))
                                                       (if (gx#stx-null?
                                                            _tl1297513388_)
                                                           (if (gx#stx-pair?
                                                                _tl1296913372_)
                                                               (let ((_e1297613391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1296913372_)))
                         (let ((_hd1297713394_ (##car _e1297613391_))
                               (_tl1297813396_ (##cdr _e1297613391_)))
                           (if (gx#stx-pair? _hd1297713394_)
                               (let ((_e1297913399_ (gx#stx-e _hd1297713394_)))
                                 (let ((_hd1298013402_ (##car _e1297913399_))
                                       (_tl1298113404_ (##cdr _e1297913399_)))
                                   (if (gx#identifier? _hd1298013402_)
                                       (if (gx#stx-eq? '%#ref _hd1298013402_)
                                           (if (gx#stx-pair? _tl1298113404_)
                                               (let ((_e1298213407_
                                                      (gx#stx-e
                                                       _tl1298113404_)))
                                                 (let ((_hd1298313410_
                                                        (##car _e1298213407_))
                                                       (_tl1298413412_
                                                        (##cdr _e1298213407_)))
                                                   (if (gx#stx-null?
                                                        _tl1298413412_)
                                                       (if (gx#stx-pair?
                                                            _tl1297813396_)
                                                           (let ((_e1298513415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1297813396_)))
                     (let ((_hd1298613418_ (##car _e1298513415_))
                           (_tl1298713420_ (##cdr _e1298513415_)))
                       (if (gx#stx-pair? _hd1298613418_)
                           (let ((_e1298813423_ (gx#stx-e _hd1298613418_)))
                             (let ((_hd1298913426_ (##car _e1298813423_))
                                   (_tl1299013428_ (##cdr _e1298813423_)))
                               (if (gx#identifier? _hd1298913426_)
                                   (if (gx#stx-eq? '%#ref _hd1298913426_)
                                       (if (gx#stx-pair? _tl1299013428_)
                                           (let ((_e1299113431_
                                                  (gx#stx-e _tl1299013428_)))
                                             (let ((_hd1299213434_
                                                    (##car _e1299113431_))
                                                   (_tl1299313436_
                                                    (##cdr _e1299113431_)))
                                               (if (gx#stx-null?
                                                    _tl1299313436_)
                                                   (if (gx#stx-pair?
                                                        _tl1298713420_)
                                                       (let ((_e1299413439_
                                                              (gx#stx-e
                                                               _tl1298713420_)))
                                                         (let ((_hd1299513442_
                                                                (##car _e1299413439_))
                                                               (_tl1299613444_
                                                                (##cdr _e1299413439_)))
                                                           (if (gx#stx-pair?
                                                                _hd1299513442_)
                                                               (let ((_e1299713447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1299513442_)))
                         (let ((_hd1299813450_ (##car _e1299713447_))
                               (_tl1299913452_ (##cdr _e1299713447_)))
                           (if (gx#identifier? _hd1299813450_)
                               (if (gx#stx-eq? '%#ref _hd1299813450_)
                                   (if (gx#stx-pair? _tl1299913452_)
                                       (let ((_e1300013455_
                                              (gx#stx-e _tl1299913452_)))
                                         (let ((_hd1300113458_
                                                (##car _e1300013455_))
                                               (_tl1300213460_
                                                (##cdr _e1300013455_)))
                                           (if (gx#stx-null? _tl1300213460_)
                                               (if (gx#stx-null?
                                                    _tl1299613444_)
                                                   (if (gx#stx-null?
                                                        _tl1296313356_)
                                                       ((lambda (_L13463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13464_
                         _L13465_
                         _L13466_
                         _L13467_)
                  (if (if (gx#identifier? _L13467_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13466_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13465_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13467_ _L13463_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13510_
                             (gxc#generate-runtime-binding-id _L13464_)))
                        (let ((_type13512_
                               (gxc#optimizer-resolve-type _type-t13510_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13512_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13510_)
                                '#f))))
                      (_g1294513330_ _g1294913333_)))
                _hd1300113458_
                _hd1299213434_
                _hd1298313410_
                _hd1297413386_
                _hd1295913346_)
               (_g1294513330_ _g1294913333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294513330_
                                                    _g1294913333_))
                                               (_g1294513330_ _g1294913333_))))
                                       (_g1294513330_ _g1294913333_))
                                   (_g1294513330_ _g1294913333_))
                               (_g1294513330_ _g1294913333_))))
                       (_g1294513330_ _g1294913333_))))
               (_g1294513330_ _g1294913333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294513330_
                                                    _g1294913333_))))
                                           (_g1294513330_ _g1294913333_))
                                       (_g1294513330_ _g1294913333_))
                                   (_g1294513330_ _g1294913333_))))
                           (_g1294513330_ _g1294913333_))))
                   (_g1294513330_ _g1294913333_))
               (_g1294513330_ _g1294913333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1294513330_ _g1294913333_))
                                           (_g1294513330_ _g1294913333_))
                                       (_g1294513330_ _g1294913333_))))
                               (_g1294513330_ _g1294913333_))))
                       (_g1294513330_ _g1294913333_))
                   (_g1294513330_ _g1294913333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294513330_
                                                    _g1294913333_))
                                               (_g1294513330_ _g1294913333_))
                                           (_g1294513330_ _g1294913333_))))
                                   (_g1294513330_ _g1294913333_))))
                           (_g1294513330_ _g1294913333_))
                       (_g1294513330_ _g1294913333_))
                   (_g1294513330_ _g1294913333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294513330_
                                                    _g1294913333_))))
                                           (_g1294513330_ _g1294913333_))))
                                   (_g1294513330_ _g1294913333_))))
                           (_g1294513330_ _g1294913333_)))))
                (_g1294413515_ _stx12943_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12889_)
      (let ((_clause-e12891_
             (lambda (_form12941_)
               (let ((__obj17804 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj17804
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12941_)
                    (gxc#dispatch-lambda-form-delegate _form12941_))
                   __obj17804)))))
        (let ((_g1289412904_
               (lambda (_g1289512901_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1289512901_))))
          (let ((_g1289312911_ (lambda (_g1289512907_) ((lambda () '#f)))))
            (let ((_g1289212938_
                   (lambda (_g1289512914_)
                     (if (gx#stx-pair? _g1289512914_)
                         (let ((_e1289712916_ (gx#stx-e _g1289512914_)))
                           (let ((_hd1289812919_ (##car _e1289712916_))
                                 (_tl1289912921_ (##cdr _e1289712916_)))
                             ((lambda (_L12924_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L12924_)
                                    (let ((_clauses12936_
                                           (map _clause-e12891_ _L12924_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12936_))
                                    (_g1289312911_ _g1289512914_)))
                              _tl1289912921_)))
                         (_g1289312911_ _g1289512914_)))))
              (_g1289212938_ _stx12889_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12794_)
      (let ((_g1279712817_
             (lambda (_g1279812814_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1279812814_))))
        (let ((_g1279612824_ (lambda (_g1279812820_) ((lambda () '#f)))))
          (let ((_g1279512886_
                 (lambda (_g1279812827_)
                   (if (gx#stx-pair? _g1279812827_)
                       (let ((_e1280112829_ (gx#stx-e _g1279812827_)))
                         (let ((_hd1280212832_ (##car _e1280112829_))
                               (_tl1280312834_ (##cdr _e1280112829_)))
                           (if (gx#stx-pair? _tl1280312834_)
                               (let ((_e1280412837_ (gx#stx-e _tl1280312834_)))
                                 (let ((_hd1280512840_ (##car _e1280412837_))
                                       (_tl1280612842_ (##cdr _e1280412837_)))
                                   (if (gx#stx-pair? _hd1280512840_)
                                       (let ((_e1280712845_
                                              (gx#stx-e _hd1280512840_)))
                                         (let ((_hd1280812848_
                                                (##car _e1280712845_))
                                               (_tl1280912850_
                                                (##cdr _e1280712845_)))
                                           (if (gx#identifier? _hd1280812848_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1280812848_)
                                                   (if (gx#stx-pair?
                                                        _tl1280912850_)
                                                       (let ((_e1281012853_
                                                              (gx#stx-e
                                                               _tl1280912850_)))
                                                         (let ((_hd1281112856_
                                                                (##car _e1281012853_))
                                                               (_tl1281212858_
                                                                (##cdr _e1281012853_)))
                                                           (if (gx#stx-null?
                                                                _tl1281212858_)
                                                               ((lambda (_L12861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12862_)
                          (let ((_type-e1287912881_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12862_)
                                  '#f)))
                            (if _type-e1287912881_
                                (let ((_type-e12884_ _type-e1287912881_))
                                  (_type-e12884_ _stx12794_ _L12861_))
                                '#f)))
                        _tl1280612842_
                        _hd1281112856_)
                       (_g1279612824_ _g1279812827_))))
               (_g1279612824_ _g1279812827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279612824_
                                                    _g1279812827_))
                                               (_g1279612824_ _g1279812827_))))
                                       (_g1279612824_ _g1279812827_))))
                               (_g1279612824_ _g1279812827_))))
                       (_g1279612824_ _g1279812827_)))))
            (_g1279512886_ _stx12794_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12279_ _args12280_)
      (let ((_g1228412397_
             (lambda (_g1228512394_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1228512394_))))
        (let ((_g1228312404_
               (lambda (_g1228512400_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12279_))
                      '#f))))))
          (let ((_g1228212611_
                 (lambda (_g1228512407_)
                   (if (gx#stx-pair? _g1228512407_)
                       (let ((_e1234512409_ (gx#stx-e _g1228512407_)))
                         (let ((_hd1234612412_ (##car _e1234512409_))
                               (_tl1234712414_ (##cdr _e1234512409_)))
                           (if (gx#stx-pair? _hd1234612412_)
                               (let ((_e1234812417_ (gx#stx-e _hd1234612412_)))
                                 (let ((_hd1234912420_ (##car _e1234812417_))
                                       (_tl1235012422_ (##cdr _e1234812417_)))
                                   (if (gx#identifier? _hd1234912420_)
                                       (if (gx#stx-eq? '%#quote _hd1234912420_)
                                           (if (gx#stx-pair? _tl1235012422_)
                                               (let ((_e1235112425_
                                                      (gx#stx-e
                                                       _tl1235012422_)))
                                                 (let ((_hd1235212428_
                                                        (##car _e1235112425_))
                                                       (_tl1235312430_
                                                        (##cdr _e1235112425_)))
                                                   (if (gx#stx-null?
                                                        _tl1235312430_)
                                                       (if (gx#stx-pair?
                                                            _tl1234712414_)
                                                           (let ((_e1235412433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1234712414_)))
                     (let ((_hd1235512436_ (##car _e1235412433_))
                           (_tl1235612438_ (##cdr _e1235412433_)))
                       (if (gx#stx-pair? _hd1235512436_)
                           (let ((_e1235712441_ (gx#stx-e _hd1235512436_)))
                             (let ((_hd1235812444_ (##car _e1235712441_))
                                   (_tl1235912446_ (##cdr _e1235712441_)))
                               (if (gx#identifier? _hd1235812444_)
                                   (if (gx#stx-eq? '%#ref _hd1235812444_)
                                       (if (gx#stx-pair? _tl1235912446_)
                                           (let ((_e1236012449_
                                                  (gx#stx-e _tl1235912446_)))
                                             (let ((_hd1236112452_
                                                    (##car _e1236012449_))
                                                   (_tl1236212454_
                                                    (##cdr _e1236012449_)))
                                               (if (gx#stx-null?
                                                    _tl1236212454_)
                                                   (if (gx#stx-pair?
                                                        _tl1235612438_)
                                                       (let ((_e1236312457_
                                                              (gx#stx-e
                                                               _tl1235612438_)))
                                                         (let ((_hd1236412460_
                                                                (##car _e1236312457_))
                                                               (_tl1236512462_
                                                                (##cdr _e1236312457_)))
                                                           (if (gx#stx-pair?
                                                                _hd1236412460_)
                                                               (let ((_e1236612465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1236412460_)))
                         (let ((_hd1236712468_ (##car _e1236612465_))
                               (_tl1236812470_ (##cdr _e1236612465_)))
                           (if (gx#identifier? _hd1236712468_)
                               (if (gx#stx-eq? '%#quote _hd1236712468_)
                                   (if (gx#stx-pair? _tl1236812470_)
                                       (let ((_e1236912473_
                                              (gx#stx-e _tl1236812470_)))
                                         (let ((_hd1237012476_
                                                (##car _e1236912473_))
                                               (_tl1237112478_
                                                (##cdr _e1236912473_)))
                                           (if (gx#stx-null? _tl1237112478_)
                                               (if (gx#stx-pair?
                                                    _tl1236512462_)
                                                   (let ((_e1237212481_
                                                          (gx#stx-e
                                                           _tl1236512462_)))
                                                     (let ((_hd1237312484_
                                                            (##car _e1237212481_))
                                                           (_tl1237412486_
                                                            (##cdr _e1237212481_)))
                                                       (if (gx#stx-pair?
                                                            _tl1237412486_)
                                                           (let ((_e1237512489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1237412486_)))
                     (let ((_hd1237612492_ (##car _e1237512489_))
                           (_tl1237712494_ (##cdr _e1237512489_)))
                       (if (gx#stx-pair? _hd1237612492_)
                           (let ((_e1237812497_ (gx#stx-e _hd1237612492_)))
                             (let ((_hd1237912500_ (##car _e1237812497_))
                                   (_tl1238012502_ (##cdr _e1237812497_)))
                               (if (gx#identifier? _hd1237912500_)
                                   (if (gx#stx-eq? '%#quote _hd1237912500_)
                                       (if (gx#stx-pair? _tl1238012502_)
                                           (let ((_e1238112505_
                                                  (gx#stx-e _tl1238012502_)))
                                             (let ((_hd1238212508_
                                                    (##car _e1238112505_))
                                                   (_tl1238312510_
                                                    (##cdr _e1238112505_)))
                                               (if (gx#stx-null?
                                                    _tl1238312510_)
                                                   (if (gx#stx-pair?
                                                        _tl1237712494_)
                                                       (let ((_e1238412513_
                                                              (gx#stx-e
                                                               _tl1237712494_)))
                                                         (let ((_hd1238512516_
                                                                (##car _e1238412513_))
                                                               (_tl1238612518_
                                                                (##cdr _e1238412513_)))
                                                           (if (gx#stx-pair?
                                                                _hd1238512516_)
                                                               (let ((_e1238712521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1238512516_)))
                         (let ((_hd1238812524_ (##car _e1238712521_))
                               (_tl1238912526_ (##cdr _e1238712521_)))
                           (if (gx#identifier? _hd1238812524_)
                               (if (gx#stx-eq? '%#quote _hd1238812524_)
                                   (if (gx#stx-pair? _tl1238912526_)
                                       (let ((_e1239012529_
                                              (gx#stx-e _tl1238912526_)))
                                         (let ((_hd1239112532_
                                                (##car _e1239012529_))
                                               (_tl1239212534_
                                                (##cdr _e1239012529_)))
                                           (if (gx#stx-null? _tl1239212534_)
                                               (if (gx#stx-null?
                                                    _tl1238612518_)
                                                   ((lambda (_L12537_
                                                             _L12538_
                                                             _L12539_
                                                             _L12540_
                                                             _L12541_
                                                             _L12542_)
                                                      (let ((_super-t12588_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12541_)
                         (gxc#generate-runtime-binding-id _L12541_)
                         '#f)))
                (let ((_super-type12590_
                       (if _super-t12588_
                           (gxc#optimizer-resolve-type _super-t12588_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12590_
                              (not (##structure-instance-of?
                                    _super-type12590_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12279_
                           _L12541_)
                          '#!void)
                      (let ((_fields12606_ (gx#stx-e _L12540_))
                            (_xfields12607_
                             (if _super-type12590_
                                 (let ((_super-fields1259212595_
                                        (##structure-ref
                                         _super-type12590_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1259312597_
                                        (##structure-ref
                                         _super-type12590_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1259212595_
                                       (if _super-xfields1259312597_
                                           (let ((_super-fields12600_
                                                  _super-fields1259212595_)
                                                 (_super-xfields12601_
                                                  _super-xfields1259312597_))
                                             (fx+ _super-fields12600_
                                                  _super-xfields12601_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12608_ (gx#stx-e _L12538_))
                            (_ctor12609_
                             (let ((_$e12603_ (gx#stx-e _L12537_)))
                               (if _$e12603_
                                   (values _$e12603_)
                                   (if _super-type12590_
                                       (##structure-ref
                                        _super-type12590_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12588_ '#!void '#f))))))
                        (let ((__obj17805
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17805
                             (gx#stx-e _L12542_)
                             _super-t12588_
                             _fields12606_
                             _xfields12607_
                             _ctor12609_
                             _plist12608_)
                            __obj17805))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1239112532_
                                                    _hd1238212508_
                                                    _hd1237312484_
                                                    _hd1237012476_
                                                    _hd1236112452_
                                                    _hd1235212428_)
                                                   (_g1228312404_
                                                    _g1228512407_))
                                               (_g1228312404_ _g1228512407_))))
                                       (_g1228312404_ _g1228512407_))
                                   (_g1228312404_ _g1228512407_))
                               (_g1228312404_ _g1228512407_))))
                       (_g1228312404_ _g1228512407_))))
               (_g1228312404_ _g1228512407_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1228312404_
                                                    _g1228512407_))))
                                           (_g1228312404_ _g1228512407_))
                                       (_g1228312404_ _g1228512407_))
                                   (_g1228312404_ _g1228512407_))))
                           (_g1228312404_ _g1228512407_))))
                   (_g1228312404_ _g1228512407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1228312404_
                                                    _g1228512407_))
                                               (_g1228312404_ _g1228512407_))))
                                       (_g1228312404_ _g1228512407_))
                                   (_g1228312404_ _g1228512407_))
                               (_g1228312404_ _g1228512407_))))
                       (_g1228312404_ _g1228512407_))))
               (_g1228312404_ _g1228512407_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1228312404_
                                                    _g1228512407_))))
                                           (_g1228312404_ _g1228512407_))
                                       (_g1228312404_ _g1228512407_))
                                   (_g1228312404_ _g1228512407_))))
                           (_g1228312404_ _g1228512407_))))
                   (_g1228312404_ _g1228512407_))
               (_g1228312404_ _g1228512407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1228312404_ _g1228512407_))
                                           (_g1228312404_ _g1228512407_))
                                       (_g1228312404_ _g1228512407_))))
                               (_g1228312404_ _g1228512407_))))
                       (_g1228312404_ _g1228512407_)))))
            (let ((_g1228112791_
                   (lambda (_g1228512614_)
                     (if (gx#stx-pair? _g1228512614_)
                         (let ((_e1229112616_ (gx#stx-e _g1228512614_)))
                           (let ((_hd1229212619_ (##car _e1229112616_))
                                 (_tl1229312621_ (##cdr _e1229112616_)))
                             (if (gx#stx-pair? _hd1229212619_)
                                 (let ((_e1229412624_
                                        (gx#stx-e _hd1229212619_)))
                                   (let ((_hd1229512627_ (##car _e1229412624_))
                                         (_tl1229612629_
                                          (##cdr _e1229412624_)))
                                     (if (gx#identifier? _hd1229512627_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1229512627_)
                                             (if (gx#stx-pair? _tl1229612629_)
                                                 (let ((_e1229712632_
                                                        (gx#stx-e
                                                         _tl1229612629_)))
                                                   (let ((_hd1229812635_
                                                          (##car _e1229712632_))
                                                         (_tl1229912637_
                                                          (##cdr _e1229712632_)))
                                                     (if (gx#stx-null?
                                                          _tl1229912637_)
                                                         (if (gx#stx-pair?
                                                              _tl1229312621_)
                                                             (let ((_e1230012640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1229312621_)))
                       (let ((_hd1230112643_ (##car _e1230012640_))
                             (_tl1230212645_ (##cdr _e1230012640_)))
                         (if (gx#stx-pair? _hd1230112643_)
                             (let ((_e1230312648_ (gx#stx-e _hd1230112643_)))
                               (let ((_hd1230412651_ (##car _e1230312648_))
                                     (_tl1230512653_ (##cdr _e1230312648_)))
                                 (if (gx#identifier? _hd1230412651_)
                                     (if (gx#stx-eq? '%#quote _hd1230412651_)
                                         (if (gx#stx-pair? _tl1230512653_)
                                             (let ((_e1230612656_
                                                    (gx#stx-e _tl1230512653_)))
                                               (let ((_hd1230712659_
                                                      (##car _e1230612656_))
                                                     (_tl1230812661_
                                                      (##cdr _e1230612656_)))
                                                 (if (gx#stx-datum?
                                                      _hd1230712659_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1230712659_)
                         '#f)
                 (if (gx#stx-null? _tl1230812661_)
                     (if (gx#stx-pair? _tl1230212645_)
                         (let ((_e1230912664_ (gx#stx-e _tl1230212645_)))
                           (let ((_hd1231012667_ (##car _e1230912664_))
                                 (_tl1231112669_ (##cdr _e1230912664_)))
                             (if (gx#stx-pair? _hd1231012667_)
                                 (let ((_e1231212672_
                                        (gx#stx-e _hd1231012667_)))
                                   (let ((_hd1231312675_ (##car _e1231212672_))
                                         (_tl1231412677_
                                          (##cdr _e1231212672_)))
                                     (if (gx#identifier? _hd1231312675_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1231312675_)
                                             (if (gx#stx-pair? _tl1231412677_)
                                                 (let ((_e1231512680_
                                                        (gx#stx-e
                                                         _tl1231412677_)))
                                                   (let ((_hd1231612683_
                                                          (##car _e1231512680_))
                                                         (_tl1231712685_
                                                          (##cdr _e1231512680_)))
                                                     (if (gx#stx-null?
                                                          _tl1231712685_)
                                                         (if (gx#stx-pair?
                                                              _tl1231112669_)
                                                             (let ((_e1231812688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1231112669_)))
                       (let ((_hd1231912691_ (##car _e1231812688_))
                             (_tl1232012693_ (##cdr _e1231812688_)))
                         (if (gx#stx-pair? _tl1232012693_)
                             (let ((_e1232112696_ (gx#stx-e _tl1232012693_)))
                               (let ((_hd1232212699_ (##car _e1232112696_))
                                     (_tl1232312701_ (##cdr _e1232112696_)))
                                 (if (gx#stx-pair? _hd1232212699_)
                                     (let ((_e1232412704_
                                            (gx#stx-e _hd1232212699_)))
                                       (let ((_hd1232512707_
                                              (##car _e1232412704_))
                                             (_tl1232612709_
                                              (##cdr _e1232412704_)))
                                         (if (gx#identifier? _hd1232512707_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1232512707_)
                                                 (if (gx#stx-pair?
                                                      _tl1232612709_)
                                                     (let ((_e1232712712_
                                                            (gx#stx-e
                                                             _tl1232612709_)))
                                                       (let ((_hd1232812715_
                                                              (##car _e1232712712_))
                                                             (_tl1232912717_
                                                              (##cdr _e1232712712_)))
                                                         (if (gx#stx-null?
                                                              _tl1232912717_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1232312701_)
                         (let ((_e1233012720_ (gx#stx-e _tl1232312701_)))
                           (let ((_hd1233112723_ (##car _e1233012720_))
                                 (_tl1233212725_ (##cdr _e1233012720_)))
                             (if (gx#stx-pair? _hd1233112723_)
                                 (let ((_e1233312728_
                                        (gx#stx-e _hd1233112723_)))
                                   (let ((_hd1233412731_ (##car _e1233312728_))
                                         (_tl1233512733_
                                          (##cdr _e1233312728_)))
                                     (if (gx#identifier? _hd1233412731_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1233412731_)
                                             (if (gx#stx-pair? _tl1233512733_)
                                                 (let ((_e1233612736_
                                                        (gx#stx-e
                                                         _tl1233512733_)))
                                                   (let ((_hd1233712739_
                                                          (##car _e1233612736_))
                                                         (_tl1233812741_
                                                          (##cdr _e1233612736_)))
                                                     (if (gx#stx-null?
                                                          _tl1233812741_)
                                                         (if (gx#stx-null?
                                                              _tl1233212725_)
                                                             ((lambda (_L12744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12745_
                               _L12746_
                               _L12747_
                               _L12748_)
                        (let ((__obj17806
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17806
                             (gx#stx-e _L12748_)
                             '#f
                             (gx#stx-e _L12747_)
                             '0
                             (gx#stx-e _L12744_)
                             (gx#stx-e _L12745_))
                            __obj17806)))
                      _hd1233712739_
                      _hd1232812715_
                      _hd1231912691_
                      _hd1231612683_
                      _hd1229812635_)
                     (_g1228212611_ _g1228512614_))
                 (_g1228212611_ _g1228512614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1228212611_ _g1228512614_))
                                             (_g1228212611_ _g1228512614_))
                                         (_g1228212611_ _g1228512614_))))
                                 (_g1228212611_ _g1228512614_))))
                         (_g1228212611_ _g1228512614_))
                     (_g1228212611_ _g1228512614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1228212611_
                                                      _g1228512614_))
                                                 (_g1228212611_ _g1228512614_))
                                             (_g1228212611_ _g1228512614_))))
                                     (_g1228212611_ _g1228512614_))))
                             (_g1228212611_ _g1228512614_))))
                     (_g1228212611_ _g1228512614_))
                 (_g1228212611_ _g1228512614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1228212611_ _g1228512614_))
                                             (_g1228212611_ _g1228512614_))
                                         (_g1228212611_ _g1228512614_))))
                                 (_g1228212611_ _g1228512614_))))
                         (_g1228212611_ _g1228512614_))
                     (_g1228212611_ _g1228512614_))
                 (_g1228212611_ _g1228512614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1228212611_
                                                      _g1228512614_))))
                                             (_g1228212611_ _g1228512614_))
                                         (_g1228212611_ _g1228512614_))
                                     (_g1228212611_ _g1228512614_))))
                             (_g1228212611_ _g1228512614_))))
                     (_g1228212611_ _g1228512614_))
                 (_g1228212611_ _g1228512614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1228212611_ _g1228512614_))
                                             (_g1228212611_ _g1228512614_))
                                         (_g1228212611_ _g1228512614_))))
                                 (_g1228212611_ _g1228512614_))))
                         (_g1228212611_ _g1228512614_)))))
              (_g1228112791_ _args12280_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12205_ _args12206_)
      (let ((_g1220912225_
             (lambda (_g1221012222_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1221012222_))))
        (let ((_g1220812232_ (lambda (_g1221012228_) ((lambda () '#f)))))
          (let ((_g1220712276_
                 (lambda (_g1221012235_)
                   (if (gx#stx-pair? _g1221012235_)
                       (let ((_e1221212237_ (gx#stx-e _g1221012235_)))
                         (let ((_hd1221312240_ (##car _e1221212237_))
                               (_tl1221412242_ (##cdr _e1221212237_)))
                           (if (gx#stx-pair? _hd1221312240_)
                               (let ((_e1221512245_ (gx#stx-e _hd1221312240_)))
                                 (let ((_hd1221612248_ (##car _e1221512245_))
                                       (_tl1221712250_ (##cdr _e1221512245_)))
                                   (if (gx#identifier? _hd1221612248_)
                                       (if (gx#stx-eq? '%#ref _hd1221612248_)
                                           (if (gx#stx-pair? _tl1221712250_)
                                               (let ((_e1221812253_
                                                      (gx#stx-e
                                                       _tl1221712250_)))
                                                 (let ((_hd1221912256_
                                                        (##car _e1221812253_))
                                                       (_tl1222012258_
                                                        (##cdr _e1221812253_)))
                                                   (if (gx#stx-null?
                                                        _tl1222012258_)
                                                       (if (gx#stx-null?
                                                            _tl1221412242_)
                                                           ((lambda (_L12261_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12261_)))
                                                            _hd1221912256_)
                                                           (_g1220812232_
                                                            _g1221012235_))
                                                       (_g1220812232_
                                                        _g1221012235_))))
                                               (_g1220812232_ _g1221012235_))
                                           (_g1220812232_ _g1221012235_))
                                       (_g1220812232_ _g1221012235_))))
                               (_g1220812232_ _g1221012235_))))
                       (_g1220812232_ _g1221012235_)))))
            (_g1220712276_ _args12206_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12089_ _args12090_)
      (let ((_g1209312119_
             (lambda (_g1209412116_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1209412116_))))
        (let ((_g1209212126_ (lambda (_g1209412122_) ((lambda () '#f)))))
          (let ((_g1209112202_
                 (lambda (_g1209412129_)
                   (if (gx#stx-pair? _g1209412129_)
                       (let ((_e1209712131_ (gx#stx-e _g1209412129_)))
                         (let ((_hd1209812134_ (##car _e1209712131_))
                               (_tl1209912136_ (##cdr _e1209712131_)))
                           (if (gx#stx-pair? _hd1209812134_)
                               (let ((_e1210012139_ (gx#stx-e _hd1209812134_)))
                                 (let ((_hd1210112142_ (##car _e1210012139_))
                                       (_tl1210212144_ (##cdr _e1210012139_)))
                                   (if (gx#identifier? _hd1210112142_)
                                       (if (gx#stx-eq? '%#ref _hd1210112142_)
                                           (if (gx#stx-pair? _tl1210212144_)
                                               (let ((_e1210312147_
                                                      (gx#stx-e
                                                       _tl1210212144_)))
                                                 (let ((_hd1210412150_
                                                        (##car _e1210312147_))
                                                       (_tl1210512152_
                                                        (##cdr _e1210312147_)))
                                                   (if (gx#stx-null?
                                                        _tl1210512152_)
                                                       (if (gx#stx-pair?
                                                            _tl1209912136_)
                                                           (let ((_e1210612155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1209912136_)))
                     (let ((_hd1210712158_ (##car _e1210612155_))
                           (_tl1210812160_ (##cdr _e1210612155_)))
                       (if (gx#stx-pair? _hd1210712158_)
                           (let ((_e1210912163_ (gx#stx-e _hd1210712158_)))
                             (let ((_hd1211012166_ (##car _e1210912163_))
                                   (_tl1211112168_ (##cdr _e1210912163_)))
                               (if (gx#identifier? _hd1211012166_)
                                   (if (gx#stx-eq? '%#quote _hd1211012166_)
                                       (if (gx#stx-pair? _tl1211112168_)
                                           (let ((_e1211212171_
                                                  (gx#stx-e _tl1211112168_)))
                                             (let ((_hd1211312174_
                                                    (##car _e1211212171_))
                                                   (_tl1211412176_
                                                    (##cdr _e1211212171_)))
                                               (if (gx#stx-null?
                                                    _tl1211412176_)
                                                   (if (gx#stx-null?
                                                        _tl1210812160_)
                                                       ((lambda (_L12179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12180_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12180_)
                   (gx#stx-e _L12179_)))
                _hd1211312174_
                _hd1210412150_)
               (_g1209212126_ _g1209412129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1209212126_
                                                    _g1209412129_))))
                                           (_g1209212126_ _g1209412129_))
                                       (_g1209212126_ _g1209412129_))
                                   (_g1209212126_ _g1209412129_))))
                           (_g1209212126_ _g1209412129_))))
                   (_g1209212126_ _g1209412129_))
               (_g1209212126_ _g1209412129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1209212126_ _g1209412129_))
                                           (_g1209212126_ _g1209412129_))
                                       (_g1209212126_ _g1209412129_))))
                               (_g1209212126_ _g1209412129_))))
                       (_g1209212126_ _g1209412129_)))))
            (_g1209112202_ _args12090_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11973_ _args11974_)
      (let ((_g1197712003_
             (lambda (_g1197812000_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1197812000_))))
        (let ((_g1197612010_ (lambda (_g1197812006_) ((lambda () '#f)))))
          (let ((_g1197512086_
                 (lambda (_g1197812013_)
                   (if (gx#stx-pair? _g1197812013_)
                       (let ((_e1198112015_ (gx#stx-e _g1197812013_)))
                         (let ((_hd1198212018_ (##car _e1198112015_))
                               (_tl1198312020_ (##cdr _e1198112015_)))
                           (if (gx#stx-pair? _hd1198212018_)
                               (let ((_e1198412023_ (gx#stx-e _hd1198212018_)))
                                 (let ((_hd1198512026_ (##car _e1198412023_))
                                       (_tl1198612028_ (##cdr _e1198412023_)))
                                   (if (gx#identifier? _hd1198512026_)
                                       (if (gx#stx-eq? '%#ref _hd1198512026_)
                                           (if (gx#stx-pair? _tl1198612028_)
                                               (let ((_e1198712031_
                                                      (gx#stx-e
                                                       _tl1198612028_)))
                                                 (let ((_hd1198812034_
                                                        (##car _e1198712031_))
                                                       (_tl1198912036_
                                                        (##cdr _e1198712031_)))
                                                   (if (gx#stx-null?
                                                        _tl1198912036_)
                                                       (if (gx#stx-pair?
                                                            _tl1198312020_)
                                                           (let ((_e1199012039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1198312020_)))
                     (let ((_hd1199112042_ (##car _e1199012039_))
                           (_tl1199212044_ (##cdr _e1199012039_)))
                       (if (gx#stx-pair? _hd1199112042_)
                           (let ((_e1199312047_ (gx#stx-e _hd1199112042_)))
                             (let ((_hd1199412050_ (##car _e1199312047_))
                                   (_tl1199512052_ (##cdr _e1199312047_)))
                               (if (gx#identifier? _hd1199412050_)
                                   (if (gx#stx-eq? '%#quote _hd1199412050_)
                                       (if (gx#stx-pair? _tl1199512052_)
                                           (let ((_e1199612055_
                                                  (gx#stx-e _tl1199512052_)))
                                             (let ((_hd1199712058_
                                                    (##car _e1199612055_))
                                                   (_tl1199812060_
                                                    (##cdr _e1199612055_)))
                                               (if (gx#stx-null?
                                                    _tl1199812060_)
                                                   (if (gx#stx-null?
                                                        _tl1199212044_)
                                                       ((lambda (_L12063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12064_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12064_)
                   (gx#stx-e _L12063_)))
                _hd1199712058_
                _hd1198812034_)
               (_g1197612010_ _g1197812013_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1197612010_
                                                    _g1197812013_))))
                                           (_g1197612010_ _g1197812013_))
                                       (_g1197612010_ _g1197812013_))
                                   (_g1197612010_ _g1197812013_))))
                           (_g1197612010_ _g1197812013_))))
                   (_g1197612010_ _g1197812013_))
               (_g1197612010_ _g1197812013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1197612010_ _g1197812013_))
                                           (_g1197612010_ _g1197812013_))
                                       (_g1197612010_ _g1197812013_))))
                               (_g1197612010_ _g1197812013_))))
                       (_g1197612010_ _g1197812013_)))))
            (_g1197512086_ _args11974_))))))
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
    (lambda (_stx11922_)
      (let ((_g1192411937_
             (lambda (_g1192511934_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1192511934_))))
        (let ((_g1192311970_
               (lambda (_g1192511940_)
                 (if (gx#stx-pair? _g1192511940_)
                     (let ((_e1192711942_ (gx#stx-e _g1192511940_)))
                       (let ((_hd1192811945_ (##car _e1192711942_))
                             (_tl1192911947_ (##cdr _e1192711942_)))
                         (if (gx#stx-pair? _tl1192911947_)
                             (let ((_e1193011950_ (gx#stx-e _tl1192911947_)))
                               (let ((_hd1193111953_ (##car _e1193011950_))
                                     (_tl1193211955_ (##cdr _e1193011950_)))
                                 (if (gx#stx-null? _tl1193211955_)
                                     ((lambda (_L11958_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L11958_)))
                                      _hd1193111953_)
                                     (_g1192411937_ _g1192511940_))))
                             (_g1192411937_ _g1192511940_))))
                     (_g1192411937_ _g1192511940_)))))
          (_g1192311970_ _stx11922_)))))
  (define gxc#optimize-call%
    (lambda (_stx11828_)
      (let ((_g1183111851_
             (lambda (_g1183211848_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1183211848_))))
        (let ((_g1183011858_
               (lambda (_g1183211854_)
                 ((lambda () (gxc#xform-call% _stx11828_))))))
          (let ((_g1182911919_
                 (lambda (_g1183211861_)
                   (if (gx#stx-pair? _g1183211861_)
                       (let ((_e1183511863_ (gx#stx-e _g1183211861_)))
                         (let ((_hd1183611866_ (##car _e1183511863_))
                               (_tl1183711868_ (##cdr _e1183511863_)))
                           (if (gx#stx-pair? _tl1183711868_)
                               (let ((_e1183811871_ (gx#stx-e _tl1183711868_)))
                                 (let ((_hd1183911874_ (##car _e1183811871_))
                                       (_tl1184011876_ (##cdr _e1183811871_)))
                                   (if (gx#stx-pair? _hd1183911874_)
                                       (let ((_e1184111879_
                                              (gx#stx-e _hd1183911874_)))
                                         (let ((_hd1184211882_
                                                (##car _e1184111879_))
                                               (_tl1184311884_
                                                (##cdr _e1184111879_)))
                                           (if (gx#identifier? _hd1184211882_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1184211882_)
                                                   (if (gx#stx-pair?
                                                        _tl1184311884_)
                                                       (let ((_e1184411887_
                                                              (gx#stx-e
                                                               _tl1184311884_)))
                                                         (let ((_hd1184511890_
                                                                (##car _e1184411887_))
                                                               (_tl1184611892_
                                                                (##cdr _e1184411887_)))
                                                           (if (gx#stx-null?
                                                                _tl1184611892_)
                                                               ((lambda (_L11895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11896_)
                          (let ((_rator-id11914_
                                 (gxc#generate-runtime-binding-id _L11896_)))
                            (let ((_rator-type11916_
                                   (gxc#optimizer-lookup-type
                                    _rator-id11914_)))
                              (let ()
                                (if _rator-type11916_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11914_
                                       '" => "
                                       _rator-type11916_
                                       '" "
                                       (##structure-ref
                                        _rator-type11916_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11916_
                                       'optimize-call
                                       _stx11828_
                                       _L11895_))
                                    (gxc#xform-call% _stx11828_))))))
                        _tl1184011876_
                        _hd1184511890_)
                       (_g1183011858_ _g1183211861_))))
               (_g1183011858_ _g1183211861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1183011858_
                                                    _g1183211861_))
                                               (_g1183011858_ _g1183211861_))))
                                       (_g1183011858_ _g1183211861_))))
                               (_g1183011858_ _g1183211861_))))
                       (_g1183011858_ _g1183211861_)))))
            (_g1182911919_ _stx11828_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self11798_ _stx11799_ _args11800_)
      (let ((_self1180111807_ _self11798_))
        (let ((_E1180311811_
               (lambda () (error '"No clause matching" _self1180111807_))))
          (let ((_K1180411820_
                 (lambda (_alias-id11814_)
                   (let ((_alias-type11816_
                          (gxc#optimizer-lookup-type _alias-id11814_)))
                     (if (##structure-instance-of?
                          _alias-type11816_
                          'gxc#!type::t)
                         (call-method
                          _alias-type11816_
                          'optimize-call
                          _stx11799_
                          _args11800_)
                         (let ((_args11818_ (map gxc#compile-e _args11800_)))
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _alias-id11814_ '()))
                                         _args11818_))
                             _stx11799_))))))))
            (if (struct-instance? gxc#!alias::t _self1180111807_)
                (let ((_e1180511823_ (##vector-ref _self1180111807_ '1)))
                  (let ((_alias-id11826_ _e1180511823_))
                    (_K1180411820_ _alias-id11826_)))
                (_E1180311811_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
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
                                           (let ((_g17847_
                                                  (gx#syntax-split-splice
                                                   _hd1086510899_
                                                   '0)))
                                             (begin
                                               (let ((_g17848_
                                                      (values-count _g17847_)))
                                                 (if (not (fx= _g17848_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17848_)))
                                               (let ((_target1086710904_
                                                      (values-ref _g17847_ 0))
                                                     (_tl1086910906_
                                                      (values-ref _g17847_ 1)))
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
