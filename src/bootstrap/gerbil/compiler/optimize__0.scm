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
    (lambda _$args10885_
      (apply make-struct-instance gxc#optimizer-info::t _$args10885_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self10883_)
      (direct-struct-instance-init!
       _self10883_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (make-struct-instance gxc#optimizer-info::t)))))
  (define gxc#optimize!
    (lambda (_ctx10878_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx10878_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx10878_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code10880_
               (gxc#optimize-source
                (##structure-ref _ctx10878_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx10878_
           _code10880_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx10839_)
      ((letrec ((_lp10841_
                 (lambda (_rest10843_)
                   (let ((_rest1084410852_ _rest10843_))
                     (let ((_E1084710856_
                            (lambda ()
                              (error '"No clause matching" _rest1084410852_))))
                       (let ((_else1084610860_ (lambda () (void))))
                         (let ((_K1084810866_
                                (lambda (_rest10863_ _hd10864_)
                                  (if (##structure-instance-of?
                                       _hd10864_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd10864_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx10839_)
                                              (_lp10841_
                                               (##structure-ref
                                                _hd10864_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd10864_)))
                                        (_lp10841_ _rest10863_))
                                      (if (##structure-direct-instance-of?
                                           _hd10864_
                                           'gx#module-import::t)
                                          (_lp10841_
                                           (cons (##structure-ref
                                                  _hd10864_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest10863_))
                                          (if (##structure-direct-instance-of?
                                               _hd10864_
                                               'gx#module-export::t)
                                              (_lp10841_
                                               (cons (##structure-ref
                                                      _hd10864_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest10863_))
                                              (if (##structure-direct-instance-of?
                                                   _hd10864_
                                                   'gx#import-set::t)
                                                  (_lp10841_
                                                   (cons (##structure-ref
                                                          _hd10864_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest10863_))
                                                  (error '"Unexpected module import"
                                                         _hd10864_))))))))
                           (if (##pair? _rest1084410852_)
                               (let ((_hd1084910869_ (##car _rest1084410852_))
                                     (_tl1085010871_ (##cdr _rest1084410852_)))
                                 (let ((_hd10874_ _hd1084910869_))
                                   (let ((_rest10876_ _tl1085010871_))
                                     (_K1084810866_ _rest10876_ _hd10874_))))
                               (_else1084610860_)))))))))
         _lp10841_)
       (##structure-ref _ctx10839_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx10834_)
      (let ((_$e10836_ (gx#core-context-prelude _ctx10834_)))
        (if _$e10836_ (gxc#optimizer-load-ssxi _$e10836_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx10814_)
      (if (if (##structure-instance-of? _ctx10814_ 'gx#module-context::t)
              (list? (##structure-ref _ctx10814_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht10816_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id10818_
                   (##structure-ref _ctx10814_ '1 gx#expander-context::t '#f)))
              (let ((_mod10820_ (hash-get _ht10816_ _id10818_)))
                (let ()
                  (let ((_$e10823_ _mod10820_))
                    (if _$e10823_
                        _$e10823_
                        (let ((_mod10826_
                               (gxc#optimizer-import-ssxi _ctx10814_)))
                          (let ((_val10831_
                                 (let ((_$e10828_ _mod10826_))
                                   (if _$e10828_ _$e10828_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht10816_ _id10818_ _val10831_)
                                _val10831_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx10791_)
      (let ((_catch-e10793_
             (lambda (_exn10812_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx10791_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn10812_))
                     '#!void)
                 '#f))))
        (let ((_import-e10794_
               (lambda ()
                 (let ((_str-id10797_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx10791_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path10805_
                          (let ((_odir1079810800_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1079810800_
                                (let ((_odir10803_ _odir1079810800_))
                                  (path-expand
                                   (string-append _str-id10797_ '".ss")
                                   _odir10803_))
                                '#f))))
                     (let ((_library-path10807_
                            (string->symbol
                             (string-append '":" _str-id10797_))))
                       (let ((_ssxi-path10809_
                              (if (if _artefact-path10805_
                                      (file-exists? _artefact-path10805_)
                                      '#f)
                                  _artefact-path10805_
                                  _library-path10807_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path10809_)
                             (gx#import-module
                              _ssxi-path10809_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e10793_ _import-e10794_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args10788_
      (apply make-struct-instance gxc#!type::t _$args10788_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args10785_
      (apply make-struct-instance gxc#!alias::t _$args10785_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '5
     '!struct-type
     '()
     '#f))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args10782_
      (apply make-struct-instance gxc#!struct-type::t _$args10782_)))
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
  (define gxc#!procedure::t
    (make-struct-type 'gxc#!procedure::t gxc#!type::t '0 '!procedure '() '#f))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args10779_
      (apply make-struct-instance gxc#!procedure::t _$args10779_)))
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
    (lambda _$args10776_
      (apply make-struct-instance gxc#!struct-pred::t _$args10776_)))
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
    (lambda _$args10773_
      (apply make-struct-instance gxc#!struct-cons::t _$args10773_)))
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
    (lambda _$args10770_
      (apply make-struct-instance gxc#!struct-getf::t _$args10770_)))
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
    (lambda _$args10767_
      (apply make-struct-instance gxc#!struct-setf::t _$args10767_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#optimizer-declare-type!
    (lambda (_sym10764_ _type10765_)
      (begin
        (if (##structure-instance-of? _type10765_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym10764_ _type10765_))
        (gxc#verbose
         '"declare-type "
         _sym10764_
         '" "
         (##vector->list _type10765_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym10764_
         _type10765_))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym10762_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym10762_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym10754_)
      (let ((_type1075510757_ (gxc#optimizer-lookup-type _sym10754_)))
        (if _type1075510757_
            (let ((_type10760_ _type1075510757_))
              (if (##structure-instance-of? _type10760_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type10760_ '1 gxc#!type::t '#f))
                  _type10760_))
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx10750_)
      (let ((_stx10752_ (gxc#apply-lift-top-lambdas _stx10750_)))
        (begin
          (gxc#apply-collect-type-info _stx10752_)
          (gxc#apply-optimize-call _stx10752_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl10747_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10747_ '%#lambda false)
           (hash-put! _tbl10747_ '%#case-lambda false)
           (hash-put! _tbl10747_ '%#let-values false)
           (hash-put! _tbl10747_ '%#letrec-values false)
           (hash-put! _tbl10747_ '%#letrec*-values false)
           (hash-put! _tbl10747_ '%#quote false)
           (hash-put! _tbl10747_ '%#quote-syntax false)
           (hash-put! _tbl10747_ '%#call false)
           (hash-put! _tbl10747_ '%#if false)
           (hash-put! _tbl10747_ '%#ref false)
           (hash-put! _tbl10747_ '%#set! false)
           _tbl10747_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10743_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10743_ '%#begin false)
           (hash-put! _tbl10743_ '%#begin-syntax false)
           (hash-put! _tbl10743_ '%#begin-foreign false)
           (hash-put! _tbl10743_ '%#module false)
           (hash-put! _tbl10743_ '%#import false)
           (hash-put! _tbl10743_ '%#export false)
           (hash-put! _tbl10743_ '%#provide false)
           (hash-put! _tbl10743_ '%#extern false)
           (hash-put! _tbl10743_ '%#define-values false)
           (hash-put! _tbl10743_ '%#define-syntax false)
           (hash-put! _tbl10743_ '%#define-alias false)
           (hash-put! _tbl10743_ '%#declare false)
           _tbl10743_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10739_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10739_ (force gxc#&false-special-form))
           (hash-copy! _tbl10739_ (force gxc#&false-expression))
           _tbl10739_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl10735_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10735_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl10735_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl10735_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl10735_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl10735_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl10735_ '%#quote gxc#xform-identity)
           (hash-put! _tbl10735_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl10735_ '%#call gxc#xform-identity)
           (hash-put! _tbl10735_ '%#if gxc#xform-identity)
           (hash-put! _tbl10735_ '%#ref gxc#xform-identity)
           (hash-put! _tbl10735_ '%#set! gxc#xform-identity)
           _tbl10735_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10731_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10731_ '%#begin gxc#xform-identity)
           (hash-put! _tbl10731_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl10731_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl10731_ '%#module gxc#xform-identity)
           (hash-put! _tbl10731_ '%#import gxc#xform-identity)
           (hash-put! _tbl10731_ '%#export gxc#xform-identity)
           (hash-put! _tbl10731_ '%#provide gxc#xform-identity)
           (hash-put! _tbl10731_ '%#extern gxc#xform-identity)
           (hash-put! _tbl10731_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl10731_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl10731_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl10731_ '%#declare gxc#xform-identity)
           _tbl10731_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl10727_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10727_ (force gxc#&identity-special-form))
           (hash-copy! _tbl10727_ (force gxc#&identity-expression))
           _tbl10727_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl10723_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10723_ (force gxc#&identity))
           (hash-put! _tbl10723_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl10723_ '%#define-values gxc#xform-define-values%)
           (hash-put! _tbl10723_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl10723_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl10723_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl10723_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl10723_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl10723_ '%#call gxc#xform-call%)
           (hash-put! _tbl10723_ '%#if gxc#xform-if%)
           (hash-put! _tbl10723_ '%#set! gxc#xform-setq%)
           _tbl10723_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl10719_ (make-hash-table-eq)))
         (begin (hash-copy! _tbl10719_ (force gxc#&identity)) _tbl10719_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx10712_ . _args10714_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10712_ _args10714_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl10709_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10709_ (force gxc#&void-expression))
           (hash-copy! _tbl10709_ (force gxc#&void-special-form))
           (hash-put! _tbl10709_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl10709_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl10709_
            '%#define-values
            gxc#collect-type-define-values%)
           _tbl10709_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx10702_ . _args10704_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10702_ _args10704_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl10699_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10699_ (force gxc#&false))
           (hash-put! _tbl10699_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl10699_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl10699_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl10699_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl10699_ '%#ref gxc#basic-expression-type-ref%)
           _tbl10699_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx10692_ . _args10694_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10692_ _args10694_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl10689_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10689_ (force gxc#&basic-xform))
           (hash-put! _tbl10689_ '%#call gxc#optimize-call%)
           _tbl10689_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx10682_ . _args10684_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10682_ _args10684_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl10679_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10679_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl10679_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl10679_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           _tbl10679_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx10672_ . _args10674_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10672_ _args10674_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx10669_ . _args10670_) _stx10669_))
  (define gxc#xform-wrap-source
    (lambda (_stx10666_ _src-stx10667_)
      (gx#stx-wrap-source _stx10666_ (gx#stx-source _src-stx10667_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args10660_)
      (lambda (_g1066110663_)
        (apply gxc#compile-e _g1066110663_ _args10660_))))
  (define gxc#xform-begin%
    (lambda (_stx10619_ . _args10620_)
      (let ((_g1062210632_
             (lambda (_g1062310629_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1062310629_))))
        (let ((_g1062110657_
               (lambda (_g1062310635_)
                 (if (gx#stx-pair? _g1062310635_)
                     (let ((_e1062510637_ (gx#stx-e _g1062310635_)))
                       (let ((_hd1062610640_ (##car _e1062510637_))
                             (_tl1062710642_ (##cdr _e1062510637_)))
                         ((lambda (_L10645_)
                            (let ((_forms10655_
                                   (gx#stx-map
                                    (gxc#xform-apply-compile-e _args10620_)
                                    _L10645_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms10655_)
                               _stx10619_)))
                          _tl1062710642_)))
                     (_g1062210632_ _g1062310635_)))))
          (_g1062110657_ _stx10619_)))))
  (define gxc#xform-define-values%
    (lambda (_stx10549_ . _args10550_)
      (let ((_g1055210569_
             (lambda (_g1055310566_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1055310566_))))
        (let ((_g1055110616_
               (lambda (_g1055310572_)
                 (if (gx#stx-pair? _g1055310572_)
                     (let ((_e1055610574_ (gx#stx-e _g1055310572_)))
                       (let ((_hd1055710577_ (##car _e1055610574_))
                             (_tl1055810579_ (##cdr _e1055610574_)))
                         (if (gx#stx-pair? _tl1055810579_)
                             (let ((_e1055910582_ (gx#stx-e _tl1055810579_)))
                               (let ((_hd1056010585_ (##car _e1055910582_))
                                     (_tl1056110587_ (##cdr _e1055910582_)))
                                 (if (gx#stx-pair? _tl1056110587_)
                                     (let ((_e1056210590_
                                            (gx#stx-e _tl1056110587_)))
                                       (let ((_hd1056310593_
                                              (##car _e1056210590_))
                                             (_tl1056410595_
                                              (##cdr _e1056210590_)))
                                         (if (gx#stx-null? _tl1056410595_)
                                             ((lambda (_L10598_ _L10599_)
                                                (let ((_expr10614_
                                                       (apply gxc#compile-e
                                                              _L10598_
                                                              _args10550_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L10599_
                                                               (cons _expr10614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10549_)))
                                              _hd1056310593_
                                              _hd1056010585_)
                                             (_g1055210569_ _g1055310572_))))
                                     (_g1055210569_ _g1055310572_))))
                             (_g1055210569_ _g1055310572_))))
                     (_g1055210569_ _g1055310572_)))))
          (_g1055110616_ _stx10549_)))))
  (define gxc#xform-lambda%
    (lambda (_stx10492_ . _args10493_)
      (let ((_g1049510509_
             (lambda (_g1049610506_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1049610506_))))
        (let ((_g1049410546_
               (lambda (_g1049610512_)
                 (if (gx#stx-pair? _g1049610512_)
                     (let ((_e1049910514_ (gx#stx-e _g1049610512_)))
                       (let ((_hd1050010517_ (##car _e1049910514_))
                             (_tl1050110519_ (##cdr _e1049910514_)))
                         (if (gx#stx-pair? _tl1050110519_)
                             (let ((_e1050210522_ (gx#stx-e _tl1050110519_)))
                               (let ((_hd1050310525_ (##car _e1050210522_))
                                     (_tl1050410527_ (##cdr _e1050210522_)))
                                 ((lambda (_L10530_ _L10531_)
                                    (let ((_body10544_
                                           (gx#stx-map
                                            (gxc#xform-apply-compile-e
                                             _args10493_)
                                            _L10530_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L10531_ _body10544_))
                                       _stx10492_)))
                                  _tl1050410527_
                                  _hd1050310525_)))
                             (_g1049510509_ _g1049610512_))))
                     (_g1049510509_ _g1049610512_)))))
          (_g1049410546_ _stx10492_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx10405_ . _args10406_)
      (let ((_clause-e10408_
             (lambda (_clause10449_)
               (let ((_g1045110462_
                      (lambda (_g1045210459_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1045210459_))))
                 (let ((_g1045010489_
                        (lambda (_g1045210465_)
                          (if (gx#stx-pair? _g1045210465_)
                              (let ((_e1045510467_ (gx#stx-e _g1045210465_)))
                                (let ((_hd1045610470_ (##car _e1045510467_))
                                      (_tl1045710472_ (##cdr _e1045510467_)))
                                  ((lambda (_L10475_ _L10476_)
                                     (let ((_body10487_
                                            (gx#stx-map
                                             (gxc#xform-apply-compile-e
                                              _args10406_)
                                             _L10475_)))
                                       (cons _L10476_ _body10487_)))
                                   _tl1045710472_
                                   _hd1045610470_)))
                              (_g1045110462_ _g1045210465_)))))
                   (_g1045010489_ _clause10449_))))))
        (let ((_g1041010420_
               (lambda (_g1041110417_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1041110417_))))
          (let ((_g1040910446_
                 (lambda (_g1041110423_)
                   (if (gx#stx-pair? _g1041110423_)
                       (let ((_e1041310425_ (gx#stx-e _g1041110423_)))
                         (let ((_hd1041410428_ (##car _e1041310425_))
                               (_tl1041510430_ (##cdr _e1041310425_)))
                           ((lambda (_L10433_)
                              (let ((_clauses10444_
                                     (gx#stx-map _clause-e10408_ _L10433_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses10444_)
                                 _stx10405_)))
                            _tl1041510430_)))
                       (_g1041010420_ _g1041110423_)))))
            (_g1040910446_ _stx10405_))))))
  (define gxc#xform-let-values%
    (lambda (_stx10199_ . _args10200_)
      (let ((_g1020210235_
             (lambda (_g1020310232_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1020310232_))))
        (let ((_g1020110402_
               (lambda (_g1020310238_)
                 (if (gx#stx-pair? _g1020310238_)
                     (let ((_e1020810240_ (gx#stx-e _g1020310238_)))
                       (let ((_hd1020910243_ (##car _e1020810240_))
                             (_tl1021010245_ (##cdr _e1020810240_)))
                         (if (gx#stx-pair? _tl1021010245_)
                             (let ((_e1021110248_ (gx#stx-e _tl1021010245_)))
                               (let ((_hd1021210251_ (##car _e1021110248_))
                                     (_tl1021310253_ (##cdr _e1021110248_)))
                                 (if (gx#stx-pair/null? _hd1021210251_)
                                     (if (fx>= (gx#stx-length _hd1021210251_)
                                               '0)
                                         (let ((_g10887_
                                                (gx#syntax-split-splice
                                                 _hd1021210251_
                                                 '0)))
                                           (begin
                                             (let ((_g10888_
                                                    (values-count _g10887_)))
                                               (if (not (fx= _g10888_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10888_)))
                                             (let ((_target1021410256_
                                                    (values-ref _g10887_ 0))
                                                   (_tl1021610258_
                                                    (values-ref _g10887_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1021610258_)
                                                   (letrec ((_loop1021710261_
                                                             (lambda (_hd1021510264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1022110266_
                              _hd1022210268_)
                       (if (gx#stx-pair? _hd1021510264_)
                           (let ((_e1021810271_ (gx#stx-e _hd1021510264_)))
                             (let ((_lp-hd1021910274_ (##car _e1021810271_))
                                   (_lp-tl1022010276_ (##cdr _e1021810271_)))
                               (if (gx#stx-pair? _lp-hd1021910274_)
                                   (let ((_e1022510279_
                                          (gx#stx-e _lp-hd1021910274_)))
                                     (let ((_hd1022610282_
                                            (##car _e1022510279_))
                                           (_tl1022710284_
                                            (##cdr _e1022510279_)))
                                       (if (gx#stx-pair? _tl1022710284_)
                                           (let ((_e1022810287_
                                                  (gx#stx-e _tl1022710284_)))
                                             (let ((_hd1022910290_
                                                    (##car _e1022810287_))
                                                   (_tl1023010292_
                                                    (##cdr _e1022810287_)))
                                               (if (gx#stx-null?
                                                    _tl1023010292_)
                                                   (_loop1021710261_
                                                    _lp-tl1022010276_
                                                    (cons _hd1022910290_
                                                          _expr1022110266_)
                                                    (cons _hd1022610282_
                                                          _hd1022210268_))
                                                   (_g1020210235_
                                                    _g1020310238_))))
                                           (_g1020210235_ _g1020310238_))))
                                   (_g1020210235_ _g1020310238_))))
                           (let ((_expr1022310295_ (reverse _expr1022110266_))
                                 (_hd1022410297_ (reverse _hd1022210268_)))
                             ((lambda (_L10300_ _L10301_ _L10302_ _L10303_)
                                (let ((_g1032210338_
                                       (lambda (_g1032310335_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1032310335_))))
                                  (let ((_g1032110392_
                                         (lambda (_g1032310341_)
                                           (if (gx#stx-pair/null?
                                                _g1032310341_)
                                               (if (fx>= (gx#stx-length
                                                          _g1032310341_)
                                                         '0)
                                                   (let ((_g10889_
                                                          (gx#syntax-split-splice
                                                           _g1032310341_
                                                           '0)))
                                                     (begin
                                                       (let ((_g10890_
                                                              (values-count
                                                               _g10889_)))
                                                         (if (not (fx= _g10890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g10890_)))
               (let ((_target1032510343_ (values-ref _g10889_ 0))
                     (_tl1032710345_ (values-ref _g10889_ 1)))
                 (if (gx#stx-null? _tl1032710345_)
                     (letrec ((_loop1032810348_
                               (lambda (_hd1032610351_ _expr1033210353_)
                                 (if (gx#stx-pair? _hd1032610351_)
                                     (let ((_e1032910356_
                                            (gx#syntax-e _hd1032610351_)))
                                       (let ((_lp-hd1033010359_
                                              (##car _e1032910356_))
                                             (_lp-tl1033110361_
                                              (##cdr _e1032910356_)))
                                         (_loop1032810348_
                                          _lp-tl1033110361_
                                          (cons _lp-hd1033010359_
                                                _expr1033210353_))))
                                     (let ((_expr1033310364_
                                            (reverse _expr1033210353_)))
                                       ((lambda (_L10367_)
                                          (let ()
                                            (let ((_body10380_
                                                   (gx#stx-map
                                                    (gxc#xform-apply-compile-e
                                                     _args10200_)
                                                    _L10300_)))
                                              (gxc#xform-wrap-source
                                               (cons _L10303_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L10367_
                                                              _L10302_)
                                                             (foldr (lambda (_g1038110385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1038210387_
                                     _g1038310389_)
                              (cons (cons _g1038210387_
                                          (cons _g1038110385_ '()))
                                    _g1038310389_))
                            '()
                            _L10367_
                            _L10302_))
                   _body10380_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx10199_))))
                                        _expr1033310364_))))))
                       (_loop1032810348_ _target1032510343_ '()))
                     (_g1032210338_ _g1032310341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1032210338_
                                                    _g1032310341_))
                                               (_g1032210338_
                                                _g1032310341_)))))
                                    (_g1032110392_
                                     (gx#stx-map
                                      (gxc#xform-apply-compile-e _args10200_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1039410397_
                                                        _g1039510399_)
                                                 (cons _g1039410397_
                                                       _g1039510399_))
                                               '()
                                               _L10301_)))))))
                              _tl1021310253_
                              _expr1022310295_
                              _hd1022410297_
                              _hd1020910243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1021710261_
                                                      _target1021410256_
                                                      '()
                                                      '()))
                                                   (_g1020210235_
                                                    _g1020310238_)))))
                                         (_g1020210235_ _g1020310238_))
                                     (_g1020210235_ _g1020310238_))))
                             (_g1020210235_ _g1020310238_))))
                     (_g1020210235_ _g1020310238_)))))
          (_g1020110402_ _stx10199_)))))
  (define gxc#xform-call%
    (lambda (_stx10141_ . _args10142_)
      (let ((_g1014410158_
             (lambda (_g1014510155_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1014510155_))))
        (let ((_g1014310196_
               (lambda (_g1014510161_)
                 (if (gx#stx-pair? _g1014510161_)
                     (let ((_e1014810163_ (gx#stx-e _g1014510161_)))
                       (let ((_hd1014910166_ (##car _e1014810163_))
                             (_tl1015010168_ (##cdr _e1014810163_)))
                         (if (gx#stx-pair? _tl1015010168_)
                             (let ((_e1015110171_ (gx#stx-e _tl1015010168_)))
                               (let ((_hd1015210174_ (##car _e1015110171_))
                                     (_tl1015310176_ (##cdr _e1015110171_)))
                                 ((lambda (_L10179_ _L10180_)
                                    (let ((_rator10193_
                                           (apply gxc#compile-e
                                                  _L10180_
                                                  _args10142_))
                                          (_rands10194_
                                           (gx#stx-map
                                            (gxc#xform-apply-compile-e
                                             _args10142_)
                                            _L10179_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator10193_ _rands10194_))
                                       _stx10141_)))
                                  _tl1015310176_
                                  _hd1015210174_)))
                             (_g1014410158_ _g1014510161_))))
                     (_g1014410158_ _g1014510161_)))))
          (_g1014310196_ _stx10141_)))))
  (define gxc#xform-if%
    (lambda (_stx10100_ . _args10101_)
      (let ((_g1010310113_
             (lambda (_g1010410110_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1010410110_))))
        (let ((_g1010210138_
               (lambda (_g1010410116_)
                 (if (gx#stx-pair? _g1010410116_)
                     (let ((_e1010610118_ (gx#stx-e _g1010410116_)))
                       (let ((_hd1010710121_ (##car _e1010610118_))
                             (_tl1010810123_ (##cdr _e1010610118_)))
                         ((lambda (_L10126_)
                            (let ((_forms10136_
                                   (gx#stx-map
                                    (gxc#xform-apply-compile-e _args10101_)
                                    _L10126_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms10136_)
                               _stx10100_)))
                          _tl1010810123_)))
                     (_g1010310113_ _g1010410116_)))))
          (_g1010210138_ _stx10100_)))))
  (define gxc#xform-setq%
    (lambda (_stx10030_ . _args10031_)
      (let ((_g1003310050_
             (lambda (_g1003410047_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1003410047_))))
        (let ((_g1003210097_
               (lambda (_g1003410053_)
                 (if (gx#stx-pair? _g1003410053_)
                     (let ((_e1003710055_ (gx#stx-e _g1003410053_)))
                       (let ((_hd1003810058_ (##car _e1003710055_))
                             (_tl1003910060_ (##cdr _e1003710055_)))
                         (if (gx#stx-pair? _tl1003910060_)
                             (let ((_e1004010063_ (gx#stx-e _tl1003910060_)))
                               (let ((_hd1004110066_ (##car _e1004010063_))
                                     (_tl1004210068_ (##cdr _e1004010063_)))
                                 (if (gx#stx-pair? _tl1004210068_)
                                     (let ((_e1004310071_
                                            (gx#stx-e _tl1004210068_)))
                                       (let ((_hd1004410074_
                                              (##car _e1004310071_))
                                             (_tl1004510076_
                                              (##cdr _e1004310071_)))
                                         (if (gx#stx-null? _tl1004510076_)
                                             ((lambda (_L10079_ _L10080_)
                                                (let ((_expr10095_
                                                       (apply gxc#compile-e
                                                              _L10079_
                                                              _args10031_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L10080_
                                                               (cons _expr10095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10030_)))
                                              _hd1004410074_
                                              _hd1004110066_)
                                             (_g1003310050_ _g1003410053_))))
                                     (_g1003310050_ _g1003410053_))))
                             (_g1003310050_ _g1003410053_))))
                     (_g1003310050_ _g1003410053_)))))
          (_g1003210097_ _stx10030_)))))
  (define gxc#collect-type-define-values%
    (lambda (_stx9935_)
      (let ((_g99389958_
             (lambda (_g99399955_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99399955_))))
        (let ((_g99379965_ (lambda (_g99399961_) ((lambda () (void))))))
          (let ((_g993610027_
                 (lambda (_g99399968_)
                   (if (gx#stx-pair? _g99399968_)
                       (let ((_e99429970_ (gx#stx-e _g99399968_)))
                         (let ((_hd99439973_ (##car _e99429970_))
                               (_tl99449975_ (##cdr _e99429970_)))
                           (if (gx#stx-pair? _tl99449975_)
                               (let ((_e99459978_ (gx#stx-e _tl99449975_)))
                                 (let ((_hd99469981_ (##car _e99459978_))
                                       (_tl99479983_ (##cdr _e99459978_)))
                                   (if (gx#stx-pair? _hd99469981_)
                                       (let ((_e99489986_
                                              (gx#stx-e _hd99469981_)))
                                         (let ((_hd99499989_
                                                (##car _e99489986_))
                                               (_tl99509991_
                                                (##cdr _e99489986_)))
                                           (if (gx#stx-null? _tl99509991_)
                                               (if (gx#stx-pair? _tl99479983_)
                                                   (let ((_e99519994_
                                                          (gx#stx-e
                                                           _tl99479983_)))
                                                     (let ((_hd99529997_
                                                            (##car _e99519994_))
                                                           (_tl99539999_
                                                            (##cdr _e99519994_)))
                                                       (if (gx#stx-null?
                                                            _tl99539999_)
                                                           ((lambda (_L10002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L10003_)
                      (let ((_type1002010022_
                             (gxc#apply-basic-expression-type _L10002_)))
                        (if _type1002010022_
                            (let ((_type10025_ _type1002010022_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L10003_)
                               _type10025_))
                            '#f)))
                    _hd99529997_
                    _hd99499989_)
                   (_g99379965_ _g99399968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g99379965_ _g99399968_))
                                               (_g99379965_ _g99399968_))))
                                       (_g99379965_ _g99399968_))))
                               (_g99379965_ _g99399968_))))
                       (_g99379965_ _g99399968_)))))
            (_g993610027_ _stx9935_))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx9875_)
      (let ((_g98789891_
             (lambda (_g98799888_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98799888_))))
        (let ((_g98779898_ (lambda (_g98799894_) ((lambda () '#f)))))
          (let ((_g98769932_
                 (lambda (_g98799901_)
                   (if (gx#stx-pair? _g98799901_)
                       (let ((_e98819903_ (gx#stx-e _g98799901_)))
                         (let ((_hd98829906_ (##car _e98819903_))
                               (_tl98839908_ (##cdr _e98819903_)))
                           (if (gx#stx-pair? _tl98839908_)
                               (let ((_e98849911_ (gx#stx-e _tl98839908_)))
                                 (let ((_hd98859914_ (##car _e98849911_))
                                       (_tl98869916_ (##cdr _e98849911_)))
                                   (if (gx#stx-null? _tl98869916_)
                                       ((lambda (_L9919_)
                                          (gxc#compile-e _L9919_))
                                        _hd98859914_)
                                       (_g98779898_ _g98799901_))))
                               (_g98779898_ _g98799901_))))
                       (_g98779898_ _g98799901_)))))
            (_g98769932_ _stx9875_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx9327_)
      (let ((_g93319448_
             (lambda (_g93329445_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93329445_))))
        (let ((_g93309455_ (lambda (_g93329451_) ((lambda () '#f)))))
          (let ((_g93299687_
                 (lambda (_g93329458_)
                   (if (gx#stx-pair? _g93329458_)
                       (let ((_e93909460_ (gx#stx-e _g93329458_)))
                         (let ((_hd93919463_ (##car _e93909460_))
                               (_tl93929465_ (##cdr _e93909460_)))
                           (if (gx#stx-pair? _tl93929465_)
                               (let ((_e93939468_ (gx#stx-e _tl93929465_)))
                                 (let ((_hd93949471_ (##car _e93939468_))
                                       (_tl93959473_ (##cdr _e93939468_)))
                                   (if (gx#stx-pair/null? _hd93949471_)
                                       (if (fx>= (gx#stx-length _hd93949471_)
                                                 '0)
                                           (let ((_g10891_
                                                  (gx#syntax-split-splice
                                                   _hd93949471_
                                                   '0)))
                                             (begin
                                               (let ((_g10892_
                                                      (values-count _g10891_)))
                                                 (if (not (fx= _g10892_ 2))
                                                     (error "Context expects 2 values"
                                                            _g10892_)))
                                               (let ((_target93969476_
                                                      (values-ref _g10891_ 0))
                                                     (_tl93989478_
                                                      (values-ref _g10891_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl93989478_)
                                                     (letrec ((_loop93999481_
                                                               (lambda (_hd93979484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg94039486_)
                         (if (gx#stx-pair? _hd93979484_)
                             (let ((_e94009489_ (gx#stx-e _hd93979484_)))
                               (let ((_lp-hd94019492_ (##car _e94009489_))
                                     (_lp-tl94029494_ (##cdr _e94009489_)))
                                 (_loop93999481_
                                  _lp-tl94029494_
                                  (cons _lp-hd94019492_ _arg94039486_))))
                             (let ((_arg94049497_ (reverse _arg94039486_)))
                               (if (gx#stx-pair? _tl93959473_)
                                   (let ((_e94059500_ (gx#stx-e _tl93959473_)))
                                     (let ((_hd94069503_ (##car _e94059500_))
                                           (_tl94079505_ (##cdr _e94059500_)))
                                       (if (gx#stx-pair? _hd94069503_)
                                           (let ((_e94089508_
                                                  (gx#stx-e _hd94069503_)))
                                             (let ((_hd94099511_
                                                    (##car _e94089508_))
                                                   (_tl94109513_
                                                    (##cdr _e94089508_)))
                                               (if (gx#identifier?
                                                    _hd94099511_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd94099511_)
                                                       (if (gx#stx-pair?
                                                            _tl94109513_)
                                                           (let ((_e94119516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl94109513_)))
                     (let ((_hd94129519_ (##car _e94119516_))
                           (_tl94139521_ (##cdr _e94119516_)))
                       (if (gx#stx-pair? _hd94129519_)
                           (let ((_e94149524_ (gx#stx-e _hd94129519_)))
                             (let ((_hd94159527_ (##car _e94149524_))
                                   (_tl94169529_ (##cdr _e94149524_)))
                               (if (gx#identifier? _hd94159527_)
                                   (if (gx#stx-eq? '%#ref _hd94159527_)
                                       (if (gx#stx-pair? _tl94169529_)
                                           (let ((_e94179532_
                                                  (gx#stx-e _tl94169529_)))
                                             (let ((_hd94189535_
                                                    (##car _e94179532_))
                                                   (_tl94199537_
                                                    (##cdr _e94179532_)))
                                               (if (gx#stx-null? _tl94199537_)
                                                   (if (gx#stx-pair?
                                                        _tl94139521_)
                                                       (let ((_e94209540_
                                                              (gx#stx-e
                                                               _tl94139521_)))
                                                         (let ((_hd94219543_
                                                                (##car _e94209540_))
                                                               (_tl94229545_
                                                                (##cdr _e94209540_)))
                                                           (if (gx#stx-pair?
                                                                _hd94219543_)
                                                               (let ((_e94239548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd94219543_)))
                         (let ((_hd94249551_ (##car _e94239548_))
                               (_tl94259553_ (##cdr _e94239548_)))
                           (if (gx#identifier? _hd94249551_)
                               (if (gx#stx-eq? '%#ref _hd94249551_)
                                   (if (gx#stx-pair? _tl94259553_)
                                       (let ((_e94269556_
                                              (gx#stx-e _tl94259553_)))
                                         (let ((_hd94279559_
                                                (##car _e94269556_))
                                               (_tl94289561_
                                                (##cdr _e94269556_)))
                                           (if (gx#stx-null? _tl94289561_)
                                               (if (gx#stx-pair/null?
                                                    _tl94229545_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl94229545_)
                                                             '0)
                                                       (let ((_g10893_
                                                              (gx#syntax-split-splice
                                                               _tl94229545_
                                                               '0)))
                                                         (begin
                                                           (let ((_g10894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g10893_)))
                     (if (not (fx= _g10894_ 2))
                         (error "Context expects 2 values" _g10894_)))
                   (let ((_target94299564_ (values-ref _g10893_ 0))
                         (_tl94319566_ (values-ref _g10893_ 1)))
                     (if (gx#stx-null? _tl94319566_)
                         (letrec ((_loop94329569_
                                   (lambda (_hd94309572_ _xarg94369574_)
                                     (if (gx#stx-pair? _hd94309572_)
                                         (let ((_e94339577_
                                                (gx#stx-e _hd94309572_)))
                                           (let ((_lp-hd94349580_
                                                  (##car _e94339577_))
                                                 (_lp-tl94359582_
                                                  (##cdr _e94339577_)))
                                             (if (gx#stx-pair? _lp-hd94349580_)
                                                 (let ((_e94389585_
                                                        (gx#stx-e
                                                         _lp-hd94349580_)))
                                                   (let ((_hd94399588_
                                                          (##car _e94389585_))
                                                         (_tl94409590_
                                                          (##cdr _e94389585_)))
                                                     (if (gx#identifier?
                                                          _hd94399588_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd94399588_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl94409590_)
                         (let ((_e94419593_ (gx#stx-e _tl94409590_)))
                           (let ((_hd94429596_ (##car _e94419593_))
                                 (_tl94439598_ (##cdr _e94419593_)))
                             (if (gx#stx-null? _tl94439598_)
                                 (_loop94329569_
                                  _lp-tl94359582_
                                  (cons _hd94429596_ _xarg94369574_))
                                 (_g93309455_ _g93329458_))))
                         (_g93309455_ _g93329458_))
                     (_g93309455_ _g93329458_))
                 (_g93309455_ _g93329458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g93309455_ _g93329458_))))
                                         (let ((_xarg94379601_
                                                (reverse _xarg94369574_)))
                                           (if (gx#stx-null? _tl94079505_)
                                               ((lambda (_L9604_
                                                         _L9605_
                                                         _L9606_
                                                         _L9607_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g96469649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g96479651_)
                              (cons _g96469649_ _g96479651_))
                            '()
                            _L9607_)))
                  (if (eq? (gxc#identifier-symbol _L9606_)
                           'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr (lambda (_g96539656_
                                                         _g96549658_)
                                                  (cons _g96539656_
                                                        _g96549658_))
                                                '()
                                                _L9607_)))
                               (length (begin
                                         '#!void
                                         (foldr (lambda (_g96609663_
                                                         _g96619665_)
                                                  (cons _g96609663_
                                                        _g96619665_))
                                                '()
                                                _L9604_))))
                          (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g96679670_ _g96689672_)
                                             (cons _g96679670_ _g96689672_))
                                           '()
                                           _L9607_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g96749677_ _g96759679_)
                                             (cons _g96749677_ _g96759679_))
                                           '()
                                           _L9604_)))
                          '#f)
                      '#f)
                  '#f)
              (let ((_type-t9682_ (gxc#identifier-symbol _L9605_)))
                (let ((_type9684_ (gxc#optimizer-resolve-type _type-t9682_)))
                  (let ()
                    (if (##structure-instance-of?
                         _type9684_
                         'gxc#!struct-type::t)
                        (##structure gxc#!struct-cons::t _type-t9682_)
                        '#f))))
              (_g93309455_ _g93329458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg94379601_
                                                _hd94279559_
                                                _hd94189535_
                                                _arg94049497_)
                                               (_g93309455_ _g93329458_)))))))
                           (_loop94329569_ _target94299564_ '()))
                         (_g93309455_ _g93329458_)))))
               (_g93309455_ _g93329458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93309455_ _g93329458_))
                                               (_g93309455_ _g93329458_))))
                                       (_g93309455_ _g93329458_))
                                   (_g93309455_ _g93329458_))
                               (_g93309455_ _g93329458_))))
                       (_g93309455_ _g93329458_))))
               (_g93309455_ _g93329458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93309455_ _g93329458_))))
                                           (_g93309455_ _g93329458_))
                                       (_g93309455_ _g93329458_))
                                   (_g93309455_ _g93329458_))))
                           (_g93309455_ _g93329458_))))
                   (_g93309455_ _g93329458_))
               (_g93309455_ _g93329458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93309455_ _g93329458_))))
                                           (_g93309455_ _g93329458_))))
                                   (_g93309455_ _g93329458_)))))))
               (_loop93999481_ _target93969476_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93309455_
                                                      _g93329458_)))))
                                           (_g93309455_ _g93329458_))
                                       (_g93309455_ _g93329458_))))
                               (_g93309455_ _g93329458_))))
                       (_g93309455_ _g93329458_)))))
            (let ((_g93289872_
                   (lambda (_g93329690_)
                     (if (gx#stx-pair? _g93329690_)
                         (let ((_e93389692_ (gx#stx-e _g93329690_)))
                           (let ((_hd93399695_ (##car _e93389692_))
                                 (_tl93409697_ (##cdr _e93389692_)))
                             (if (gx#stx-pair? _tl93409697_)
                                 (let ((_e93419700_ (gx#stx-e _tl93409697_)))
                                   (let ((_hd93429703_ (##car _e93419700_))
                                         (_tl93439705_ (##cdr _e93419700_)))
                                     (if (gx#stx-pair? _tl93439705_)
                                         (let ((_e93449708_
                                                (gx#stx-e _tl93439705_)))
                                           (let ((_hd93459711_
                                                  (##car _e93449708_))
                                                 (_tl93469713_
                                                  (##cdr _e93449708_)))
                                             (if (gx#stx-pair? _hd93459711_)
                                                 (let ((_e93479716_
                                                        (gx#stx-e
                                                         _hd93459711_)))
                                                   (let ((_hd93489719_
                                                          (##car _e93479716_))
                                                         (_tl93499721_
                                                          (##cdr _e93479716_)))
                                                     (if (gx#identifier?
                                                          _hd93489719_)
                                                         (if (gx#stx-eq?
                                                              '%#call
                                                              _hd93489719_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl93499721_)
                         (let ((_e93509724_ (gx#stx-e _tl93499721_)))
                           (let ((_hd93519727_ (##car _e93509724_))
                                 (_tl93529729_ (##cdr _e93509724_)))
                             (if (gx#stx-pair? _hd93519727_)
                                 (let ((_e93539732_ (gx#stx-e _hd93519727_)))
                                   (let ((_hd93549735_ (##car _e93539732_))
                                         (_tl93559737_ (##cdr _e93539732_)))
                                     (if (gx#identifier? _hd93549735_)
                                         (if (gx#stx-eq? '%#ref _hd93549735_)
                                             (if (gx#stx-pair? _tl93559737_)
                                                 (let ((_e93569740_
                                                        (gx#stx-e
                                                         _tl93559737_)))
                                                   (let ((_hd93579743_
                                                          (##car _e93569740_))
                                                         (_tl93589745_
                                                          (##cdr _e93569740_)))
                                                     (if (gx#stx-null?
                                                          _tl93589745_)
                                                         (if (gx#stx-pair?
                                                              _tl93529729_)
                                                             (let ((_e93599748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl93529729_)))
                       (let ((_hd93609751_ (##car _e93599748_))
                             (_tl93619753_ (##cdr _e93599748_)))
                         (if (gx#stx-pair? _hd93609751_)
                             (let ((_e93629756_ (gx#stx-e _hd93609751_)))
                               (let ((_hd93639759_ (##car _e93629756_))
                                     (_tl93649761_ (##cdr _e93629756_)))
                                 (if (gx#identifier? _hd93639759_)
                                     (if (gx#stx-eq? '%#ref _hd93639759_)
                                         (if (gx#stx-pair? _tl93649761_)
                                             (let ((_e93659764_
                                                    (gx#stx-e _tl93649761_)))
                                               (let ((_hd93669767_
                                                      (##car _e93659764_))
                                                     (_tl93679769_
                                                      (##cdr _e93659764_)))
                                                 (if (gx#stx-null?
                                                      _tl93679769_)
                                                     (if (gx#stx-pair?
                                                          _tl93619753_)
                                                         (let ((_e93689772_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93619753_)))
                   (let ((_hd93699775_ (##car _e93689772_))
                         (_tl93709777_ (##cdr _e93689772_)))
                     (if (gx#stx-pair? _hd93699775_)
                         (let ((_e93719780_ (gx#stx-e _hd93699775_)))
                           (let ((_hd93729783_ (##car _e93719780_))
                                 (_tl93739785_ (##cdr _e93719780_)))
                             (if (gx#identifier? _hd93729783_)
                                 (if (gx#stx-eq? '%#ref _hd93729783_)
                                     (if (gx#stx-pair? _tl93739785_)
                                         (let ((_e93749788_
                                                (gx#stx-e _tl93739785_)))
                                           (let ((_hd93759791_
                                                  (##car _e93749788_))
                                                 (_tl93769793_
                                                  (##cdr _e93749788_)))
                                             (if (gx#stx-null? _tl93769793_)
                                                 (if (gx#stx-pair?
                                                      _tl93709777_)
                                                     (let ((_e93779796_
                                                            (gx#stx-e
                                                             _tl93709777_)))
                                                       (let ((_hd93789799_
                                                              (##car _e93779796_))
                                                             (_tl93799801_
                                                              (##cdr _e93779796_)))
                                                         (if (gx#stx-pair?
                                                              _hd93789799_)
                                                             (let ((_e93809804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd93789799_)))
                       (let ((_hd93819807_ (##car _e93809804_))
                             (_tl93829809_ (##cdr _e93809804_)))
                         (if (gx#identifier? _hd93819807_)
                             (if (gx#stx-eq? '%#ref _hd93819807_)
                                 (if (gx#stx-pair? _tl93829809_)
                                     (let ((_e93839812_
                                            (gx#stx-e _tl93829809_)))
                                       (let ((_hd93849815_ (##car _e93839812_))
                                             (_tl93859817_
                                              (##cdr _e93839812_)))
                                         (if (gx#stx-null? _tl93859817_)
                                             (if (gx#stx-null? _tl93799801_)
                                                 (if (gx#stx-null?
                                                      _tl93469713_)
                                                     ((lambda (_L9820_
                                                               _L9821_
                                                               _L9822_
                                                               _L9823_
                                                               _L9824_)
                                                        (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9824_)
                        (if (eq? (gxc#identifier-symbol _L9823_) 'apply)
                            (if (eq? (gxc#identifier-symbol _L9822_)
                                     'make-struct-instance)
                                (gx#free-identifier=? _L9824_ _L9820_)
                                '#f)
                            '#f)
                        '#f)
                    (let ((_type-t9867_ (gxc#identifier-symbol _L9821_)))
                      (let ((_type9869_
                             (gxc#optimizer-resolve-type _type-t9867_)))
                        (let ()
                          (if (##structure-instance-of?
                               _type9869_
                               'gxc#!struct-type::t)
                              (##structure gxc#!struct-cons::t _type-t9867_)
                              '#f))))
                    (_g93299687_ _g93329690_)))
              _hd93849815_
              _hd93759791_
              _hd93669767_
              _hd93579743_
              _hd93429703_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93299687_ _g93329690_))
                                                 (_g93299687_ _g93329690_))
                                             (_g93299687_ _g93329690_))))
                                     (_g93299687_ _g93329690_))
                                 (_g93299687_ _g93329690_))
                             (_g93299687_ _g93329690_))))
                     (_g93299687_ _g93329690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93299687_ _g93329690_))
                                                 (_g93299687_ _g93329690_))))
                                         (_g93299687_ _g93329690_))
                                     (_g93299687_ _g93329690_))
                                 (_g93299687_ _g93329690_))))
                         (_g93299687_ _g93329690_))))
                 (_g93299687_ _g93329690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93299687_
                                                      _g93329690_))))
                                             (_g93299687_ _g93329690_))
                                         (_g93299687_ _g93329690_))
                                     (_g93299687_ _g93329690_))))
                             (_g93299687_ _g93329690_))))
                     (_g93299687_ _g93329690_))
                 (_g93299687_ _g93329690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g93299687_ _g93329690_))
                                             (_g93299687_ _g93329690_))
                                         (_g93299687_ _g93329690_))))
                                 (_g93299687_ _g93329690_))))
                         (_g93299687_ _g93329690_))
                     (_g93299687_ _g93329690_))
                 (_g93299687_ _g93329690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g93299687_ _g93329690_))))
                                         (_g93299687_ _g93329690_))))
                                 (_g93299687_ _g93329690_))))
                         (_g93299687_ _g93329690_)))))
              (_g93289872_ _stx9327_)))))))
  (define gxc#basic-expression-type-case-lambda% (lambda (_stx9325_) '#f))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx9230_)
      (let ((_g92339253_
             (lambda (_g92349250_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92349250_))))
        (let ((_g92329260_ (lambda (_g92349256_) ((lambda () '#f)))))
          (let ((_g92319322_
                 (lambda (_g92349263_)
                   (if (gx#stx-pair? _g92349263_)
                       (let ((_e92379265_ (gx#stx-e _g92349263_)))
                         (let ((_hd92389268_ (##car _e92379265_))
                               (_tl92399270_ (##cdr _e92379265_)))
                           (if (gx#stx-pair? _tl92399270_)
                               (let ((_e92409273_ (gx#stx-e _tl92399270_)))
                                 (let ((_hd92419276_ (##car _e92409273_))
                                       (_tl92429278_ (##cdr _e92409273_)))
                                   (if (gx#stx-pair? _hd92419276_)
                                       (let ((_e92439281_
                                              (gx#stx-e _hd92419276_)))
                                         (let ((_hd92449284_
                                                (##car _e92439281_))
                                               (_tl92459286_
                                                (##cdr _e92439281_)))
                                           (if (gx#identifier? _hd92449284_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd92449284_)
                                                   (if (gx#stx-pair?
                                                        _tl92459286_)
                                                       (let ((_e92469289_
                                                              (gx#stx-e
                                                               _tl92459286_)))
                                                         (let ((_hd92479292_
                                                                (##car _e92469289_))
                                                               (_tl92489294_
                                                                (##cdr _e92469289_)))
                                                           (if (gx#stx-null?
                                                                _tl92489294_)
                                                               ((lambda (_L9297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L9298_)
                          (let ((_type-e93159317_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L9298_))))
                            (if _type-e93159317_
                                (let ((_type-e9320_ _type-e93159317_))
                                  (_type-e9320_ _stx9230_ _L9297_))
                                '#f)))
                        _tl92429278_
                        _hd92479292_)
                       (_g92329260_ _g92349263_))))
               (_g92329260_ _g92349263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92329260_ _g92349263_))
                                               (_g92329260_ _g92349263_))))
                                       (_g92329260_ _g92349263_))))
                               (_g92329260_ _g92349263_))))
                       (_g92329260_ _g92349263_)))))
            (_g92319322_ _stx9230_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx8715_ _args8716_)
      (let ((_g87208833_
             (lambda (_g87218830_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87218830_))))
        (let ((_g87198840_
               (lambda (_g87218836_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx8715_))
                      '#f))))))
          (let ((_g87189047_
                 (lambda (_g87218843_)
                   (if (gx#stx-pair? _g87218843_)
                       (let ((_e87818845_ (gx#stx-e _g87218843_)))
                         (let ((_hd87828848_ (##car _e87818845_))
                               (_tl87838850_ (##cdr _e87818845_)))
                           (if (gx#stx-pair? _hd87828848_)
                               (let ((_e87848853_ (gx#stx-e _hd87828848_)))
                                 (let ((_hd87858856_ (##car _e87848853_))
                                       (_tl87868858_ (##cdr _e87848853_)))
                                   (if (gx#identifier? _hd87858856_)
                                       (if (gx#stx-eq? '%#quote _hd87858856_)
                                           (if (gx#stx-pair? _tl87868858_)
                                               (let ((_e87878861_
                                                      (gx#stx-e _tl87868858_)))
                                                 (let ((_hd87888864_
                                                        (##car _e87878861_))
                                                       (_tl87898866_
                                                        (##cdr _e87878861_)))
                                                   (if (gx#stx-null?
                                                        _tl87898866_)
                                                       (if (gx#stx-pair?
                                                            _tl87838850_)
                                                           (let ((_e87908869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl87838850_)))
                     (let ((_hd87918872_ (##car _e87908869_))
                           (_tl87928874_ (##cdr _e87908869_)))
                       (if (gx#stx-pair? _hd87918872_)
                           (let ((_e87938877_ (gx#stx-e _hd87918872_)))
                             (let ((_hd87948880_ (##car _e87938877_))
                                   (_tl87958882_ (##cdr _e87938877_)))
                               (if (gx#identifier? _hd87948880_)
                                   (if (gx#stx-eq? '%#ref _hd87948880_)
                                       (if (gx#stx-pair? _tl87958882_)
                                           (let ((_e87968885_
                                                  (gx#stx-e _tl87958882_)))
                                             (let ((_hd87978888_
                                                    (##car _e87968885_))
                                                   (_tl87988890_
                                                    (##cdr _e87968885_)))
                                               (if (gx#stx-null? _tl87988890_)
                                                   (if (gx#stx-pair?
                                                        _tl87928874_)
                                                       (let ((_e87998893_
                                                              (gx#stx-e
                                                               _tl87928874_)))
                                                         (let ((_hd88008896_
                                                                (##car _e87998893_))
                                                               (_tl88018898_
                                                                (##cdr _e87998893_)))
                                                           (if (gx#stx-pair?
                                                                _hd88008896_)
                                                               (let ((_e88028901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd88008896_)))
                         (let ((_hd88038904_ (##car _e88028901_))
                               (_tl88048906_ (##cdr _e88028901_)))
                           (if (gx#identifier? _hd88038904_)
                               (if (gx#stx-eq? '%#quote _hd88038904_)
                                   (if (gx#stx-pair? _tl88048906_)
                                       (let ((_e88058909_
                                              (gx#stx-e _tl88048906_)))
                                         (let ((_hd88068912_
                                                (##car _e88058909_))
                                               (_tl88078914_
                                                (##cdr _e88058909_)))
                                           (if (gx#stx-null? _tl88078914_)
                                               (if (gx#stx-pair? _tl88018898_)
                                                   (let ((_e88088917_
                                                          (gx#stx-e
                                                           _tl88018898_)))
                                                     (let ((_hd88098920_
                                                            (##car _e88088917_))
                                                           (_tl88108922_
                                                            (##cdr _e88088917_)))
                                                       (if (gx#stx-pair?
                                                            _tl88108922_)
                                                           (let ((_e88118925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl88108922_)))
                     (let ((_hd88128928_ (##car _e88118925_))
                           (_tl88138930_ (##cdr _e88118925_)))
                       (if (gx#stx-pair? _hd88128928_)
                           (let ((_e88148933_ (gx#stx-e _hd88128928_)))
                             (let ((_hd88158936_ (##car _e88148933_))
                                   (_tl88168938_ (##cdr _e88148933_)))
                               (if (gx#identifier? _hd88158936_)
                                   (if (gx#stx-eq? '%#quote _hd88158936_)
                                       (if (gx#stx-pair? _tl88168938_)
                                           (let ((_e88178941_
                                                  (gx#stx-e _tl88168938_)))
                                             (let ((_hd88188944_
                                                    (##car _e88178941_))
                                                   (_tl88198946_
                                                    (##cdr _e88178941_)))
                                               (if (gx#stx-null? _tl88198946_)
                                                   (if (gx#stx-pair?
                                                        _tl88138930_)
                                                       (let ((_e88208949_
                                                              (gx#stx-e
                                                               _tl88138930_)))
                                                         (let ((_hd88218952_
                                                                (##car _e88208949_))
                                                               (_tl88228954_
                                                                (##cdr _e88208949_)))
                                                           (if (gx#stx-pair?
                                                                _hd88218952_)
                                                               (let ((_e88238957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd88218952_)))
                         (let ((_hd88248960_ (##car _e88238957_))
                               (_tl88258962_ (##cdr _e88238957_)))
                           (if (gx#identifier? _hd88248960_)
                               (if (gx#stx-eq? '%#quote _hd88248960_)
                                   (if (gx#stx-pair? _tl88258962_)
                                       (let ((_e88268965_
                                              (gx#stx-e _tl88258962_)))
                                         (let ((_hd88278968_
                                                (##car _e88268965_))
                                               (_tl88288970_
                                                (##cdr _e88268965_)))
                                           (if (gx#stx-null? _tl88288970_)
                                               (if (gx#stx-null? _tl88228954_)
                                                   ((lambda (_L8973_
                                                             _L8974_
                                                             _L8975_
                                                             _L8976_
                                                             _L8977_
                                                             _L8978_)
                                                      (let ((_super-t9024_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8977_)
                         (gxc#identifier-symbol _L8977_)
                         '#f)))
                (let ((_super-type9026_
                       (if _super-t9024_
                           (gxc#optimizer-resolve-type _super-t9024_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type9026_
                              (not (##structure-instance-of?
                                    _super-type9026_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx8715_
                           _L8977_)
                          '#!void)
                      (let ((_fields9042_ (gx#stx-e _L8976_))
                            (_xfields9043_
                             (if _super-type9026_
                                 (let ((_super-fields90289031_
                                        (##structure-ref
                                         _super-type9026_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields90299033_
                                        (##structure-ref
                                         _super-type9026_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields90289031_
                                       (if _super-xfields90299033_
                                           (let ((_super-fields9036_
                                                  _super-fields90289031_)
                                                 (_super-xfields9037_
                                                  _super-xfields90299033_))
                                             (fx+ _super-fields9036_
                                                  _super-xfields9037_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist9044_ (gx#stx-e _L8974_))
                            (_ctor9045_
                             (let ((_$e9039_ (gx#stx-e _L8973_)))
                               (if _$e9039_
                                   (values _$e9039_)
                                   (if _super-type9026_
                                       (##structure-ref
                                        _super-type9026_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t9024_ '#!void '#f))))))
                        (##structure
                         gxc#!struct-type::t
                         (gx#stx-e _L8978_)
                         _super-t9024_
                         _fields9042_
                         _xfields9043_
                         _ctor9045_
                         _plist9044_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd88278968_
                                                    _hd88188944_
                                                    _hd88098920_
                                                    _hd88068912_
                                                    _hd87978888_
                                                    _hd87888864_)
                                                   (_g87198840_ _g87218843_))
                                               (_g87198840_ _g87218843_))))
                                       (_g87198840_ _g87218843_))
                                   (_g87198840_ _g87218843_))
                               (_g87198840_ _g87218843_))))
                       (_g87198840_ _g87218843_))))
               (_g87198840_ _g87218843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g87198840_ _g87218843_))))
                                           (_g87198840_ _g87218843_))
                                       (_g87198840_ _g87218843_))
                                   (_g87198840_ _g87218843_))))
                           (_g87198840_ _g87218843_))))
                   (_g87198840_ _g87218843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g87198840_ _g87218843_))
                                               (_g87198840_ _g87218843_))))
                                       (_g87198840_ _g87218843_))
                                   (_g87198840_ _g87218843_))
                               (_g87198840_ _g87218843_))))
                       (_g87198840_ _g87218843_))))
               (_g87198840_ _g87218843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g87198840_ _g87218843_))))
                                           (_g87198840_ _g87218843_))
                                       (_g87198840_ _g87218843_))
                                   (_g87198840_ _g87218843_))))
                           (_g87198840_ _g87218843_))))
                   (_g87198840_ _g87218843_))
               (_g87198840_ _g87218843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g87198840_ _g87218843_))
                                           (_g87198840_ _g87218843_))
                                       (_g87198840_ _g87218843_))))
                               (_g87198840_ _g87218843_))))
                       (_g87198840_ _g87218843_)))))
            (let ((_g87179227_
                   (lambda (_g87219050_)
                     (if (gx#stx-pair? _g87219050_)
                         (let ((_e87279052_ (gx#stx-e _g87219050_)))
                           (let ((_hd87289055_ (##car _e87279052_))
                                 (_tl87299057_ (##cdr _e87279052_)))
                             (if (gx#stx-pair? _hd87289055_)
                                 (let ((_e87309060_ (gx#stx-e _hd87289055_)))
                                   (let ((_hd87319063_ (##car _e87309060_))
                                         (_tl87329065_ (##cdr _e87309060_)))
                                     (if (gx#identifier? _hd87319063_)
                                         (if (gx#stx-eq? '%#quote _hd87319063_)
                                             (if (gx#stx-pair? _tl87329065_)
                                                 (let ((_e87339068_
                                                        (gx#stx-e
                                                         _tl87329065_)))
                                                   (let ((_hd87349071_
                                                          (##car _e87339068_))
                                                         (_tl87359073_
                                                          (##cdr _e87339068_)))
                                                     (if (gx#stx-null?
                                                          _tl87359073_)
                                                         (if (gx#stx-pair?
                                                              _tl87299057_)
                                                             (let ((_e87369076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl87299057_)))
                       (let ((_hd87379079_ (##car _e87369076_))
                             (_tl87389081_ (##cdr _e87369076_)))
                         (if (gx#stx-pair? _hd87379079_)
                             (let ((_e87399084_ (gx#stx-e _hd87379079_)))
                               (let ((_hd87409087_ (##car _e87399084_))
                                     (_tl87419089_ (##cdr _e87399084_)))
                                 (if (gx#identifier? _hd87409087_)
                                     (if (gx#stx-eq? '%#quote _hd87409087_)
                                         (if (gx#stx-pair? _tl87419089_)
                                             (let ((_e87429092_
                                                    (gx#stx-e _tl87419089_)))
                                               (let ((_hd87439095_
                                                      (##car _e87429092_))
                                                     (_tl87449097_
                                                      (##cdr _e87429092_)))
                                                 (if (gx#stx-datum?
                                                      _hd87439095_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd87439095_)
                         '#f)
                 (if (gx#stx-null? _tl87449097_)
                     (if (gx#stx-pair? _tl87389081_)
                         (let ((_e87459100_ (gx#stx-e _tl87389081_)))
                           (let ((_hd87469103_ (##car _e87459100_))
                                 (_tl87479105_ (##cdr _e87459100_)))
                             (if (gx#stx-pair? _hd87469103_)
                                 (let ((_e87489108_ (gx#stx-e _hd87469103_)))
                                   (let ((_hd87499111_ (##car _e87489108_))
                                         (_tl87509113_ (##cdr _e87489108_)))
                                     (if (gx#identifier? _hd87499111_)
                                         (if (gx#stx-eq? '%#quote _hd87499111_)
                                             (if (gx#stx-pair? _tl87509113_)
                                                 (let ((_e87519116_
                                                        (gx#stx-e
                                                         _tl87509113_)))
                                                   (let ((_hd87529119_
                                                          (##car _e87519116_))
                                                         (_tl87539121_
                                                          (##cdr _e87519116_)))
                                                     (if (gx#stx-null?
                                                          _tl87539121_)
                                                         (if (gx#stx-pair?
                                                              _tl87479105_)
                                                             (let ((_e87549124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl87479105_)))
                       (let ((_hd87559127_ (##car _e87549124_))
                             (_tl87569129_ (##cdr _e87549124_)))
                         (if (gx#stx-pair? _tl87569129_)
                             (let ((_e87579132_ (gx#stx-e _tl87569129_)))
                               (let ((_hd87589135_ (##car _e87579132_))
                                     (_tl87599137_ (##cdr _e87579132_)))
                                 (if (gx#stx-pair? _hd87589135_)
                                     (let ((_e87609140_
                                            (gx#stx-e _hd87589135_)))
                                       (let ((_hd87619143_ (##car _e87609140_))
                                             (_tl87629145_
                                              (##cdr _e87609140_)))
                                         (if (gx#identifier? _hd87619143_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd87619143_)
                                                 (if (gx#stx-pair?
                                                      _tl87629145_)
                                                     (let ((_e87639148_
                                                            (gx#stx-e
                                                             _tl87629145_)))
                                                       (let ((_hd87649151_
                                                              (##car _e87639148_))
                                                             (_tl87659153_
                                                              (##cdr _e87639148_)))
                                                         (if (gx#stx-null?
                                                              _tl87659153_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl87599137_)
                         (let ((_e87669156_ (gx#stx-e _tl87599137_)))
                           (let ((_hd87679159_ (##car _e87669156_))
                                 (_tl87689161_ (##cdr _e87669156_)))
                             (if (gx#stx-pair? _hd87679159_)
                                 (let ((_e87699164_ (gx#stx-e _hd87679159_)))
                                   (let ((_hd87709167_ (##car _e87699164_))
                                         (_tl87719169_ (##cdr _e87699164_)))
                                     (if (gx#identifier? _hd87709167_)
                                         (if (gx#stx-eq? '%#quote _hd87709167_)
                                             (if (gx#stx-pair? _tl87719169_)
                                                 (let ((_e87729172_
                                                        (gx#stx-e
                                                         _tl87719169_)))
                                                   (let ((_hd87739175_
                                                          (##car _e87729172_))
                                                         (_tl87749177_
                                                          (##cdr _e87729172_)))
                                                     (if (gx#stx-null?
                                                          _tl87749177_)
                                                         (if (gx#stx-null?
                                                              _tl87689161_)
                                                             ((lambda (_L9180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9181_
                               _L9182_
                               _L9183_
                               _L9184_)
                        (##structure
                         gxc#!struct-type::t
                         (gx#stx-e _L9184_)
                         '#f
                         (gx#stx-e _L9183_)
                         '0
                         (gx#stx-e _L9180_)
                         (gx#stx-e _L9181_)))
                      _hd87739175_
                      _hd87649151_
                      _hd87559127_
                      _hd87529119_
                      _hd87349071_)
                     (_g87189047_ _g87219050_))
                 (_g87189047_ _g87219050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g87189047_ _g87219050_))
                                             (_g87189047_ _g87219050_))
                                         (_g87189047_ _g87219050_))))
                                 (_g87189047_ _g87219050_))))
                         (_g87189047_ _g87219050_))
                     (_g87189047_ _g87219050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g87189047_ _g87219050_))
                                                 (_g87189047_ _g87219050_))
                                             (_g87189047_ _g87219050_))))
                                     (_g87189047_ _g87219050_))))
                             (_g87189047_ _g87219050_))))
                     (_g87189047_ _g87219050_))
                 (_g87189047_ _g87219050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g87189047_ _g87219050_))
                                             (_g87189047_ _g87219050_))
                                         (_g87189047_ _g87219050_))))
                                 (_g87189047_ _g87219050_))))
                         (_g87189047_ _g87219050_))
                     (_g87189047_ _g87219050_))
                 (_g87189047_ _g87219050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g87189047_
                                                      _g87219050_))))
                                             (_g87189047_ _g87219050_))
                                         (_g87189047_ _g87219050_))
                                     (_g87189047_ _g87219050_))))
                             (_g87189047_ _g87219050_))))
                     (_g87189047_ _g87219050_))
                 (_g87189047_ _g87219050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g87189047_ _g87219050_))
                                             (_g87189047_ _g87219050_))
                                         (_g87189047_ _g87219050_))))
                                 (_g87189047_ _g87219050_))))
                         (_g87189047_ _g87219050_)))))
              (_g87179227_ _args8716_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx8641_ _args8642_)
      (let ((_g86458661_
             (lambda (_g86468658_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86468658_))))
        (let ((_g86448668_ (lambda (_g86468664_) ((lambda () '#f)))))
          (let ((_g86438712_
                 (lambda (_g86468671_)
                   (if (gx#stx-pair? _g86468671_)
                       (let ((_e86488673_ (gx#stx-e _g86468671_)))
                         (let ((_hd86498676_ (##car _e86488673_))
                               (_tl86508678_ (##cdr _e86488673_)))
                           (if (gx#stx-pair? _hd86498676_)
                               (let ((_e86518681_ (gx#stx-e _hd86498676_)))
                                 (let ((_hd86528684_ (##car _e86518681_))
                                       (_tl86538686_ (##cdr _e86518681_)))
                                   (if (gx#identifier? _hd86528684_)
                                       (if (gx#stx-eq? '%#ref _hd86528684_)
                                           (if (gx#stx-pair? _tl86538686_)
                                               (let ((_e86548689_
                                                      (gx#stx-e _tl86538686_)))
                                                 (let ((_hd86558692_
                                                        (##car _e86548689_))
                                                       (_tl86568694_
                                                        (##cdr _e86548689_)))
                                                   (if (gx#stx-null?
                                                        _tl86568694_)
                                                       (if (gx#stx-null?
                                                            _tl86508678_)
                                                           ((lambda (_L8697_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L8697_)))
                                                            _hd86558692_)
                                                           (_g86448668_
                                                            _g86468671_))
                                                       (_g86448668_
                                                        _g86468671_))))
                                               (_g86448668_ _g86468671_))
                                           (_g86448668_ _g86468671_))
                                       (_g86448668_ _g86468671_))))
                               (_g86448668_ _g86468671_))))
                       (_g86448668_ _g86468671_)))))
            (_g86438712_ _args8642_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx8525_ _args8526_)
      (let ((_g85298555_
             (lambda (_g85308552_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85308552_))))
        (let ((_g85288562_ (lambda (_g85308558_) ((lambda () '#f)))))
          (let ((_g85278638_
                 (lambda (_g85308565_)
                   (if (gx#stx-pair? _g85308565_)
                       (let ((_e85338567_ (gx#stx-e _g85308565_)))
                         (let ((_hd85348570_ (##car _e85338567_))
                               (_tl85358572_ (##cdr _e85338567_)))
                           (if (gx#stx-pair? _hd85348570_)
                               (let ((_e85368575_ (gx#stx-e _hd85348570_)))
                                 (let ((_hd85378578_ (##car _e85368575_))
                                       (_tl85388580_ (##cdr _e85368575_)))
                                   (if (gx#identifier? _hd85378578_)
                                       (if (gx#stx-eq? '%#ref _hd85378578_)
                                           (if (gx#stx-pair? _tl85388580_)
                                               (let ((_e85398583_
                                                      (gx#stx-e _tl85388580_)))
                                                 (let ((_hd85408586_
                                                        (##car _e85398583_))
                                                       (_tl85418588_
                                                        (##cdr _e85398583_)))
                                                   (if (gx#stx-null?
                                                        _tl85418588_)
                                                       (if (gx#stx-pair?
                                                            _tl85358572_)
                                                           (let ((_e85428591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl85358572_)))
                     (let ((_hd85438594_ (##car _e85428591_))
                           (_tl85448596_ (##cdr _e85428591_)))
                       (if (gx#stx-pair? _hd85438594_)
                           (let ((_e85458599_ (gx#stx-e _hd85438594_)))
                             (let ((_hd85468602_ (##car _e85458599_))
                                   (_tl85478604_ (##cdr _e85458599_)))
                               (if (gx#identifier? _hd85468602_)
                                   (if (gx#stx-eq? '%#quote _hd85468602_)
                                       (if (gx#stx-pair? _tl85478604_)
                                           (let ((_e85488607_
                                                  (gx#stx-e _tl85478604_)))
                                             (let ((_hd85498610_
                                                    (##car _e85488607_))
                                                   (_tl85508612_
                                                    (##cdr _e85488607_)))
                                               (if (gx#stx-null? _tl85508612_)
                                                   (if (gx#stx-null?
                                                        _tl85448596_)
                                                       ((lambda (_L8615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8616_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L8616_)
                   (gx#stx-e _L8615_)))
                _hd85498610_
                _hd85408586_)
               (_g85288562_ _g85308565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85288562_ _g85308565_))))
                                           (_g85288562_ _g85308565_))
                                       (_g85288562_ _g85308565_))
                                   (_g85288562_ _g85308565_))))
                           (_g85288562_ _g85308565_))))
                   (_g85288562_ _g85308565_))
               (_g85288562_ _g85308565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g85288562_ _g85308565_))
                                           (_g85288562_ _g85308565_))
                                       (_g85288562_ _g85308565_))))
                               (_g85288562_ _g85308565_))))
                       (_g85288562_ _g85308565_)))))
            (_g85278638_ _args8526_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx8409_ _args8410_)
      (let ((_g84138439_
             (lambda (_g84148436_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84148436_))))
        (let ((_g84128446_ (lambda (_g84148442_) ((lambda () '#f)))))
          (let ((_g84118522_
                 (lambda (_g84148449_)
                   (if (gx#stx-pair? _g84148449_)
                       (let ((_e84178451_ (gx#stx-e _g84148449_)))
                         (let ((_hd84188454_ (##car _e84178451_))
                               (_tl84198456_ (##cdr _e84178451_)))
                           (if (gx#stx-pair? _hd84188454_)
                               (let ((_e84208459_ (gx#stx-e _hd84188454_)))
                                 (let ((_hd84218462_ (##car _e84208459_))
                                       (_tl84228464_ (##cdr _e84208459_)))
                                   (if (gx#identifier? _hd84218462_)
                                       (if (gx#stx-eq? '%#ref _hd84218462_)
                                           (if (gx#stx-pair? _tl84228464_)
                                               (let ((_e84238467_
                                                      (gx#stx-e _tl84228464_)))
                                                 (let ((_hd84248470_
                                                        (##car _e84238467_))
                                                       (_tl84258472_
                                                        (##cdr _e84238467_)))
                                                   (if (gx#stx-null?
                                                        _tl84258472_)
                                                       (if (gx#stx-pair?
                                                            _tl84198456_)
                                                           (let ((_e84268475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl84198456_)))
                     (let ((_hd84278478_ (##car _e84268475_))
                           (_tl84288480_ (##cdr _e84268475_)))
                       (if (gx#stx-pair? _hd84278478_)
                           (let ((_e84298483_ (gx#stx-e _hd84278478_)))
                             (let ((_hd84308486_ (##car _e84298483_))
                                   (_tl84318488_ (##cdr _e84298483_)))
                               (if (gx#identifier? _hd84308486_)
                                   (if (gx#stx-eq? '%#quote _hd84308486_)
                                       (if (gx#stx-pair? _tl84318488_)
                                           (let ((_e84328491_
                                                  (gx#stx-e _tl84318488_)))
                                             (let ((_hd84338494_
                                                    (##car _e84328491_))
                                                   (_tl84348496_
                                                    (##cdr _e84328491_)))
                                               (if (gx#stx-null? _tl84348496_)
                                                   (if (gx#stx-null?
                                                        _tl84288480_)
                                                       ((lambda (_L8499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8500_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L8500_)
                   (gx#stx-e _L8499_)))
                _hd84338494_
                _hd84248470_)
               (_g84128446_ _g84148449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g84128446_ _g84148449_))))
                                           (_g84128446_ _g84148449_))
                                       (_g84128446_ _g84148449_))
                                   (_g84128446_ _g84148449_))))
                           (_g84128446_ _g84148449_))))
                   (_g84128446_ _g84148449_))
               (_g84128446_ _g84148449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g84128446_ _g84148449_))
                                           (_g84128446_ _g84148449_))
                                       (_g84128446_ _g84148449_))))
                               (_g84128446_ _g84148449_))))
                       (_g84128446_ _g84148449_)))))
            (_g84118522_ _args8410_))))))
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
    (lambda (_stx8358_)
      (let ((_g83608373_
             (lambda (_g83618370_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g83618370_))))
        (let ((_g83598406_
               (lambda (_g83618376_)
                 (if (gx#stx-pair? _g83618376_)
                     (let ((_e83638378_ (gx#stx-e _g83618376_)))
                       (let ((_hd83648381_ (##car _e83638378_))
                             (_tl83658383_ (##cdr _e83638378_)))
                         (if (gx#stx-pair? _tl83658383_)
                             (let ((_e83668386_ (gx#stx-e _tl83658383_)))
                               (let ((_hd83678389_ (##car _e83668386_))
                                     (_tl83688391_ (##cdr _e83668386_)))
                                 (if (gx#stx-null? _tl83688391_)
                                     ((lambda (_L8394_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L8394_)))
                                      _hd83678389_)
                                     (_g83608373_ _g83618376_))))
                             (_g83608373_ _g83618376_))))
                     (_g83608373_ _g83618376_)))))
          (_g83598406_ _stx8358_)))))
  (define gxc#optimize-call%
    (lambda (_stx8264_)
      (let ((_g82678287_
             (lambda (_g82688284_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g82688284_))))
        (let ((_g82668294_
               (lambda (_g82688290_)
                 ((lambda () (gxc#xform-call% _stx8264_))))))
          (let ((_g82658355_
                 (lambda (_g82688297_)
                   (if (gx#stx-pair? _g82688297_)
                       (let ((_e82718299_ (gx#stx-e _g82688297_)))
                         (let ((_hd82728302_ (##car _e82718299_))
                               (_tl82738304_ (##cdr _e82718299_)))
                           (if (gx#stx-pair? _tl82738304_)
                               (let ((_e82748307_ (gx#stx-e _tl82738304_)))
                                 (let ((_hd82758310_ (##car _e82748307_))
                                       (_tl82768312_ (##cdr _e82748307_)))
                                   (if (gx#stx-pair? _hd82758310_)
                                       (let ((_e82778315_
                                              (gx#stx-e _hd82758310_)))
                                         (let ((_hd82788318_
                                                (##car _e82778315_))
                                               (_tl82798320_
                                                (##cdr _e82778315_)))
                                           (if (gx#identifier? _hd82788318_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd82788318_)
                                                   (if (gx#stx-pair?
                                                        _tl82798320_)
                                                       (let ((_e82808323_
                                                              (gx#stx-e
                                                               _tl82798320_)))
                                                         (let ((_hd82818326_
                                                                (##car _e82808323_))
                                                               (_tl82828328_
                                                                (##cdr _e82808323_)))
                                                           (if (gx#stx-null?
                                                                _tl82828328_)
                                                               ((lambda (_L8331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L8332_)
                          (let ((_rator-id8350_
                                 (gxc#identifier-symbol _L8332_)))
                            (let ((_rator-type8352_
                                   (gxc#optimizer-lookup-type _rator-id8350_)))
                              (let ()
                                (if _rator-type8352_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id8350_
                                       '" => "
                                       _rator-type8352_
                                       '" "
                                       (##structure-ref
                                        _rator-type8352_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type8352_
                                       'optimize-call
                                       _stx8264_
                                       _L8331_))
                                    (gxc#xform-call% _stx8264_))))))
                        _tl82768312_
                        _hd82818326_)
                       (_g82668294_ _g82688297_))))
               (_g82668294_ _g82688297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g82668294_ _g82688297_))
                                               (_g82668294_ _g82688297_))))
                                       (_g82668294_ _g82688297_))))
                               (_g82668294_ _g82688297_))))
                       (_g82668294_ _g82688297_)))))
            (_g82658355_ _stx8264_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self8234_ _stx8235_ _args8236_)
      (let ((_self82378243_ _self8234_))
        (let ((_E82398247_
               (lambda () (error '"No clause matching" _self82378243_))))
          (let ((_K82408256_
                 (lambda (_alias-id8250_)
                   (let ((_alias-type8252_
                          (gxc#optimizer-lookup-type _alias-id8250_)))
                     (if (##structure-instance-of?
                          _alias-type8252_
                          'gxc#!type::t)
                         (call-method
                          _alias-type8252_
                          'optimize-call
                          _stx8235_
                          _args8236_)
                         (let ((_args8254_
                                (gx#stx-map gxc#compile-e _args8236_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref (cons _alias-id8250_ '()))
                                        _args8254_))
                            _stx8235_)))))))
            (if (struct-instance? gxc#!alias::t _self82378243_)
                (let ((_e82418259_ (##vector-ref _self82378243_ '1)))
                  (let ((_alias-id8262_ _e82418259_))
                    (_K82408256_ _alias-id8262_)))
                (_E82398247_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self8089_ _stx8090_ _args8091_)
      (let ((_self80928098_ _self8089_))
        (let ((_E80948102_
               (lambda () (error '"No clause matching" _self80928098_))))
          (let ((_K80958226_
                 (lambda (_struct-t8105_)
                   (let ((_struct-type8107_
                          (gxc#optimizer-resolve-type _struct-t8105_)))
                     (let ((_struct-type81088122_ _struct-type8107_))
                       (let ((_E81128126_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type81088122_))))
                         (let ((_else81118130_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8090_
                                   _struct-t8105_
                                   _struct-type8107_))))
                           (let ((_try-match81108138_
                                  (lambda ()
                                    (let ((_K81138135_
                                           (lambda ()
                                             (gxc#xform-call% _stx8090_))))
                                      (if (##eq? _struct-type81088122_ '#f)
                                          (_K81138135_)
                                          (_else81118130_))))))
                             (let ((_K81148201_
                                    (lambda (_plist8141_ _struct-type-id8142_)
                                      (let ((_g81458155_
                                             (lambda (_g81468152_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g81468152_))))
                                        (let ((_g81448162_
                                               (lambda (_g81468158_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx8090_))))))
                                          (let ((_g81438198_
                                                 (lambda (_g81468165_)
                                                   (if (gx#stx-pair?
                                                        _g81468165_)
                                                       (let ((_e81488167_
                                                              (gx#stx-e
                                                               _g81468165_)))
                                                         (let ((_hd81498170_
                                                                (##car _e81488167_))
                                                               (_tl81508172_
                                                                (##cdr _e81488167_)))
                                                           (if (gx#stx-null?
                                                                _tl81508172_)
                                                               ((lambda (_L8175_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr8195_ (gxc#compile-e _L8175_))
                                (_op8196_
                                 (if (if _plist8141_
                                         (assgetq 'final: _plist8141_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op8196_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id8142_ '()))
                                         (cons _expr8195_ '())))
                             _stx8090_)))
                        _hd81498170_)
                       (_g81448162_ _g81468165_))))
               (_g81448162_ _g81468165_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g81438198_ _args8091_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type81088122_)
                                   (let ((_e81158204_
                                          (##vector-ref
                                           _struct-type81088122_
                                           '1)))
                                     (let ((_struct-type-id8207_ _e81158204_))
                                       (let ((_e81168209_
                                              (##vector-ref
                                               _struct-type81088122_
                                               '2)))
                                         (let ((_e81178212_
                                                (##vector-ref
                                                 _struct-type81088122_
                                                 '3)))
                                           (let ((_e81188215_
                                                  (##vector-ref
                                                   _struct-type81088122_
                                                   '4)))
                                             (let ((_e81198218_
                                                    (##vector-ref
                                                     _struct-type81088122_
                                                     '5)))
                                               (let ((_e81208221_
                                                      (##vector-ref
                                                       _struct-type81088122_
                                                       '6)))
                                                 (let ((_plist8224_
                                                        _e81208221_))
                                                   (_K81148201_
                                                    _plist8224_
                                                    _struct-type-id8207_)))))))))
                                   (_try-match81108138_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self80928098_)
                (let ((_e80968229_ (##vector-ref _self80928098_ '1)))
                  (let ((_struct-t8232_ _e80968229_))
                    (_K80958226_ _struct-t8232_)))
                (_E80948102_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self7992_ _stx7993_ _args7994_)
      (let ((_self79958001_ _self7992_))
        (let ((_E79978005_
               (lambda () (error '"No clause matching" _self79958001_))))
          (let ((_K79988081_
                 (lambda (_struct-t8008_)
                   (let ((_struct-type8010_
                          (gxc#optimizer-resolve-type _struct-t8008_)))
                     (let ((_struct-type80118024_ _struct-type8010_))
                       (let ((_E80158028_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type80118024_))))
                         (let ((_else80148032_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx7993_
                                   _struct-t8008_
                                   _struct-type8010_))))
                           (let ((_try-match80138040_
                                  (lambda ()
                                    (let ((_K80168037_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t8008_)
                                               (gxc#xform-call% _stx7993_)))))
                                      (if (##eq? _struct-type80118024_ '#f)
                                          (_K80168037_)
                                          (_else80148032_))))))
                             (let ((_K80178055_
                                    (lambda (_ctor8043_
                                             _xfields8044_
                                             _fields8045_
                                             _type-id8046_)
                                      (let ((_args8048_
                                             (gx#stx-map
                                              gxc#compile-e
                                              _args7994_)))
                                        (if (let ((_$e8050_ _ctor8043_))
                                              (if _$e8050_
                                                  _$e8050_
                                                  (not _xfields8044_)))
                                            (gxc#xform-wrap-source
                                             (cons '%#call
                                                   (cons (cons '%#ref
                                                               (cons 'make-struct-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#ref (cons _struct-t8008_ '())) _args8048_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx7993_)
                                            (let ((_arity8053_
                                                   (fx+ _fields8045_
                                                        _xfields8044_)))
                                              (if (fx= _arity8053_
                                                       (length _args8048_))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '##structure '()))
                       (cons (cons '%#ref (cons _struct-t8008_ '()))
                             _args8048_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx7993_)
                                                  (gxc#raise-compile-error
                                                   '"Illegal struct constructor application; arity mismatch"
                                                   _stx7993_
                                                   _struct-t8008_
                                                   _arity8053_))))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type80118024_)
                                   (let ((_e80188058_
                                          (##vector-ref
                                           _struct-type80118024_
                                           '1)))
                                     (let ((_type-id8061_ _e80188058_))
                                       (let ((_e80198063_
                                              (##vector-ref
                                               _struct-type80118024_
                                               '2)))
                                         (let ((_e80208066_
                                                (##vector-ref
                                                 _struct-type80118024_
                                                 '3)))
                                           (let ((_fields8069_ _e80208066_))
                                             (let ((_e80218071_
                                                    (##vector-ref
                                                     _struct-type80118024_
                                                     '4)))
                                               (let ((_xfields8074_
                                                      _e80218071_))
                                                 (let ((_e80228076_
                                                        (##vector-ref
                                                         _struct-type80118024_
                                                         '5)))
                                                   (let ((_ctor8079_
                                                          _e80228076_))
                                                     (_K80178055_
                                                      _ctor8079_
                                                      _xfields8074_
                                                      _fields8069_
                                                      _type-id8061_))))))))))
                                   (_try-match80138040_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self79958001_)
                (let ((_e79998084_ (##vector-ref _self79958001_ '1)))
                  (let ((_struct-t8087_ _e79998084_))
                    (_K79988081_ _struct-t8087_)))
                (_E79978005_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self7845_ _stx7846_ _args7847_)
      (let ((_self78487855_ _self7845_))
        (let ((_E78507859_
               (lambda () (error '"No clause matching" _self78487855_))))
          (let ((_K78517979_
                 (lambda (_off7862_ _struct-t7863_)
                   (let ((_struct-type7865_
                          (gxc#optimizer-resolve-type _struct-t7863_)))
                     (let ((_struct-type78667878_ _struct-type7865_))
                       (let ((_E78707882_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type78667878_))))
                         (let ((_else78697886_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx7846_
                                   _struct-t7863_
                                   _struct-type7865_))))
                           (let ((_try-match78687894_
                                  (lambda ()
                                    (let ((_K78717891_
                                           (lambda ()
                                             (gxc#xform-call% _stx7846_))))
                                      (if (##eq? _struct-type78667878_ '#f)
                                          (_K78717891_)
                                          (_else78697886_))))))
                             (let ((_K78727958_
                                    (lambda (_xfields7897_
                                             _fields7898_
                                             _struct-type-id7899_)
                                      (if _xfields7897_
                                          (let ((_g79027912_
                                                 (lambda (_g79037909_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g79037909_))))
                                            (let ((_g79017919_
                                                   (lambda (_g79037915_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx7846_))))))
                                              (let ((_g79007955_
                                                     (lambda (_g79037922_)
                                                       (if (gx#stx-pair?
                                                            _g79037922_)
                                                           (let ((_e79057924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g79037922_)))
                     (let ((_hd79067927_ (##car _e79057924_))
                           (_tl79077929_ (##cdr _e79057924_)))
                       (if (gx#stx-null? _tl79077929_)
                           ((lambda (_L7932_)
                              (let ((_expr7952_ (gxc#compile-e _L7932_))
                                    (_off7953_
                                     (fx+ _off7862_ _xfields7897_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t7863_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off7953_ '()))
                                                   (cons _expr7952_ '()))))
                                 _stx7846_)))
                            _hd79067927_)
                           (_g79017919_ _g79037922_))))
                   (_g79017919_ _g79037922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79007955_ _args7847_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id7899_)
                                            (gxc#xform-call% _stx7846_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type78667878_)
                                   (let ((_e78737961_
                                          (##vector-ref
                                           _struct-type78667878_
                                           '1)))
                                     (let ((_struct-type-id7964_ _e78737961_))
                                       (let ((_e78747966_
                                              (##vector-ref
                                               _struct-type78667878_
                                               '2)))
                                         (let ((_e78757969_
                                                (##vector-ref
                                                 _struct-type78667878_
                                                 '3)))
                                           (let ((_fields7972_ _e78757969_))
                                             (let ((_e78767974_
                                                    (##vector-ref
                                                     _struct-type78667878_
                                                     '4)))
                                               (let ((_xfields7977_
                                                      _e78767974_))
                                                 (_K78727958_
                                                  _xfields7977_
                                                  _fields7972_
                                                  _struct-type-id7964_))))))))
                                   (_try-match78687894_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self78487855_)
                (let ((_e78527982_ (##vector-ref _self78487855_ '1)))
                  (let ((_struct-t7985_ _e78527982_))
                    (let ((_e78537987_ (##vector-ref _self78487855_ '2)))
                      (let ((_off7990_ _e78537987_))
                        (_K78517979_ _off7990_ _struct-t7985_)))))
                (_E78507859_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self7681_ _stx7682_ _args7683_)
      (let ((_self76847691_ _self7681_))
        (let ((_E76867695_
               (lambda () (error '"No clause matching" _self76847691_))))
          (let ((_K76877832_
                 (lambda (_off7698_ _struct-t7699_)
                   (let ((_struct-type7701_
                          (gxc#optimizer-resolve-type _struct-t7699_)))
                     (let ((_struct-type77027714_ _struct-type7701_))
                       (let ((_E77067718_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type77027714_))))
                         (let ((_else77057722_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx7682_
                                   _struct-t7699_
                                   _struct-type7701_))))
                           (let ((_try-match77047730_
                                  (lambda ()
                                    (let ((_K77077727_
                                           (lambda ()
                                             (gxc#xform-call% _stx7682_))))
                                      (if (##eq? _struct-type77027714_ '#f)
                                          (_K77077727_)
                                          (_else77057722_))))))
                             (let ((_K77087811_
                                    (lambda (_xfields7733_
                                             _fields7734_
                                             _struct-type-id7735_)
                                      (if _xfields7733_
                                          (let ((_g77387752_
                                                 (lambda (_g77397749_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g77397749_))))
                                            (let ((_g77377759_
                                                   (lambda (_g77397755_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx7682_))))))
                                              (let ((_g77367808_
                                                     (lambda (_g77397762_)
                                                       (if (gx#stx-pair?
                                                            _g77397762_)
                                                           (let ((_e77427764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g77397762_)))
                     (let ((_hd77437767_ (##car _e77427764_))
                           (_tl77447769_ (##cdr _e77427764_)))
                       (if (gx#stx-pair? _tl77447769_)
                           (let ((_e77457772_ (gx#stx-e _tl77447769_)))
                             (let ((_hd77467775_ (##car _e77457772_))
                                   (_tl77477777_ (##cdr _e77457772_)))
                               (if (gx#stx-null? _tl77477777_)
                                   ((lambda (_L7780_ _L7781_)
                                      (let ((_expr7804_
                                             (gxc#compile-e _L7781_))
                                            (_val7805_ (gxc#compile-e _L7780_))
                                            (_off7806_
                                             (fx+ _off7698_ _xfields7733_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t7699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off7806_ '()))
                   (cons _expr7804_ (cons _val7805_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx7682_)))
                                    _hd77467775_
                                    _hd77437767_)
                                   (_g77377759_ _g77397762_))))
                           (_g77377759_ _g77397762_))))
                   (_g77377759_ _g77397762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77367808_ _args7683_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id7735_)
                                            (gxc#xform-call% _stx7682_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type77027714_)
                                   (let ((_e77097814_
                                          (##vector-ref
                                           _struct-type77027714_
                                           '1)))
                                     (let ((_struct-type-id7817_ _e77097814_))
                                       (let ((_e77107819_
                                              (##vector-ref
                                               _struct-type77027714_
                                               '2)))
                                         (let ((_e77117822_
                                                (##vector-ref
                                                 _struct-type77027714_
                                                 '3)))
                                           (let ((_fields7825_ _e77117822_))
                                             (let ((_e77127827_
                                                    (##vector-ref
                                                     _struct-type77027714_
                                                     '4)))
                                               (let ((_xfields7830_
                                                      _e77127827_))
                                                 (_K77087811_
                                                  _xfields7830_
                                                  _fields7825_
                                                  _struct-type-id7817_))))))))
                                   (_try-match77047730_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self76847691_)
                (let ((_e76887835_ (##vector-ref _self76847691_ '1)))
                  (let ((_struct-t7838_ _e76887835_))
                    (let ((_e76897840_ (##vector-ref _self76847691_ '2)))
                      (let ((_off7843_ _e76897840_))
                        (_K76877832_ _off7843_ _struct-t7838_)))))
                (_E76867695_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx7488_)
      (let ((_generate-e7490_
             (lambda (_id7670_)
               (let ((_sym7672_ (gxc#identifier-symbol _id7670_)))
                 (let ((_$e7674_ (gxc#optimizer-lookup-type _sym7672_)))
                   (if _$e7674_
                       ((lambda (_type7677_)
                          (let ((_typedecl7679_
                                 (call-method _type7677_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym7672_ (cons _typedecl7679_ '())))))
                        _$e7674_)
                       '(begin)))))))
        (let ((_g74937531_
               (lambda (_g74947528_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g74947528_))))
          (let ((_g74927615_
                 (lambda (_g74947534_)
                   (if (gx#stx-pair? _g74947534_)
                       (let ((_e75097536_ (gx#stx-e _g74947534_)))
                         (let ((_hd75107539_ (##car _e75097536_))
                               (_tl75117541_ (##cdr _e75097536_)))
                           (if (gx#stx-pair? _tl75117541_)
                               (let ((_e75127544_ (gx#stx-e _tl75117541_)))
                                 (let ((_hd75137547_ (##car _e75127544_))
                                       (_tl75147549_ (##cdr _e75127544_)))
                                   (if (gx#stx-pair/null? _hd75137547_)
                                       (if (fx>= (gx#stx-length _hd75137547_)
                                                 '0)
                                           (let ((_g10895_
                                                  (gx#syntax-split-splice
                                                   _hd75137547_
                                                   '0)))
                                             (begin
                                               (let ((_g10896_
                                                      (values-count _g10895_)))
                                                 (if (not (fx= _g10896_ 2))
                                                     (error "Context expects 2 values"
                                                            _g10896_)))
                                               (let ((_target75157552_
                                                      (values-ref _g10895_ 0))
                                                     (_tl75177554_
                                                      (values-ref _g10895_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl75177554_)
                                                     (letrec ((_loop75187557_
                                                               (lambda (_hd75167560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id75227562_)
                         (if (gx#stx-pair? _hd75167560_)
                             (let ((_e75197565_ (gx#stx-e _hd75167560_)))
                               (let ((_lp-hd75207568_ (##car _e75197565_))
                                     (_lp-tl75217570_ (##cdr _e75197565_)))
                                 (_loop75187557_
                                  _lp-tl75217570_
                                  (cons _lp-hd75207568_ _id75227562_))))
                             (let ((_id75237573_ (reverse _id75227562_)))
                               (if (gx#stx-pair? _tl75147549_)
                                   (let ((_e75247576_ (gx#stx-e _tl75147549_)))
                                     (let ((_hd75257579_ (##car _e75247576_))
                                           (_tl75267581_ (##cdr _e75247576_)))
                                       (if (gx#stx-null? _tl75267581_)
                                           ((lambda (_L7584_)
                                              (let ((_ids7610_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g76027605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g76037607_)
                                (cons _g76027605_ _g76037607_))
                              '()
                              _L7584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types7612_
                                                       (map _generate-e7490_
                                                            _ids7610_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types7612_)))))
                                            _id75237573_)
                                           (_g74937531_ _g74947534_))))
                                   (_g74937531_ _g74947534_)))))))
               (_loop75187557_ _target75157552_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74937531_
                                                      _g74947534_)))))
                                           (_g74937531_ _g74947534_))
                                       (_g74937531_ _g74947534_))))
                               (_g74937531_ _g74947534_))))
                       (_g74937531_ _g74947534_)))))
            (let ((_g74917667_
                   (lambda (_g74947618_)
                     (if (gx#stx-pair? _g74947618_)
                         (let ((_e74967620_ (gx#stx-e _g74947618_)))
                           (let ((_hd74977623_ (##car _e74967620_))
                                 (_tl74987625_ (##cdr _e74967620_)))
                             (if (gx#stx-pair? _tl74987625_)
                                 (let ((_e74997628_ (gx#stx-e _tl74987625_)))
                                   (let ((_hd75007631_ (##car _e74997628_))
                                         (_tl75017633_ (##cdr _e74997628_)))
                                     (if (gx#stx-pair? _hd75007631_)
                                         (let ((_e75027636_
                                                (gx#stx-e _hd75007631_)))
                                           (let ((_hd75037639_
                                                  (##car _e75027636_))
                                                 (_tl75047641_
                                                  (##cdr _e75027636_)))
                                             (if (gx#stx-null? _tl75047641_)
                                                 (if (gx#stx-pair?
                                                      _tl75017633_)
                                                     (let ((_e75057644_
                                                            (gx#stx-e
                                                             _tl75017633_)))
                                                       (let ((_hd75067647_
                                                              (##car _e75057644_))
                                                             (_tl75077649_
                                                              (##cdr _e75057644_)))
                                                         (if (gx#stx-null?
                                                              _tl75077649_)
                                                             ((lambda (_L7652_)
                                                                (_generate-e7490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7652_))
                      _hd75037639_)
                     (_g74927615_ _g74947618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74927615_ _g74947618_))
                                                 (_g74927615_ _g74947618_))))
                                         (_g74927615_ _g74947618_))))
                                 (_g74927615_ _g74947618_))))
                         (_g74927615_ _g74947618_)))))
              (_g74917667_ _stx7488_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self7464_)
      (let ((_self74657471_ _self7464_))
        (let ((_E74677475_
               (lambda () (error '"No clause matching" _self74657471_))))
          (let ((_K74687480_
                 (lambda (_alias-id7478_)
                   (cons '@alias (cons _alias-id7478_ '())))))
            (if (struct-instance? gxc#!alias::t _self74657471_)
                (let ((_e74697483_ (##vector-ref _self74657471_ '1)))
                  (let ((_alias-id7486_ _e74697483_))
                    (_K74687480_ _alias-id7486_)))
                (_E74677475_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self7408_)
      (let ((_self74097420_ _self7408_))
        (let ((_E74117424_
               (lambda () (error '"No clause matching" _self74097420_))))
          (let ((_K74127433_
                 (lambda (_plist7427_
                          _ctor7428_
                          _fields7429_
                          _super7430_
                          _type-id7431_)
                   (cons '@struct-type
                         (cons _type-id7431_
                               (cons _super7430_
                                     (cons _fields7429_
                                           (cons _ctor7428_
                                                 (cons _plist7427_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self74097420_)
                (let ((_e74137436_ (##vector-ref _self74097420_ '1)))
                  (let ((_type-id7439_ _e74137436_))
                    (let ((_e74147441_ (##vector-ref _self74097420_ '2)))
                      (let ((_super7444_ _e74147441_))
                        (let ((_e74157446_ (##vector-ref _self74097420_ '3)))
                          (let ((_fields7449_ _e74157446_))
                            (let ((_e74167451_
                                   (##vector-ref _self74097420_ '4)))
                              (let ((_e74177454_
                                     (##vector-ref _self74097420_ '5)))
                                (let ((_ctor7457_ _e74177454_))
                                  (let ((_e74187459_
                                         (##vector-ref _self74097420_ '6)))
                                    (let ((_plist7462_ _e74187459_))
                                      (_K74127433_
                                       _plist7462_
                                       _ctor7457_
                                       _fields7449_
                                       _super7444_
                                       _type-id7439_))))))))))))
                (_E74117424_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self7384_)
      (let ((_self73857391_ _self7384_))
        (let ((_E73877395_
               (lambda () (error '"No clause matching" _self73857391_))))
          (let ((_K73887400_
                 (lambda (_struct-t7398_)
                   (cons '@struct-pred (cons _struct-t7398_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self73857391_)
                (let ((_e73897403_ (##vector-ref _self73857391_ '1)))
                  (let ((_struct-t7406_ _e73897403_))
                    (_K73887400_ _struct-t7406_)))
                (_E73877395_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self7360_)
      (let ((_self73617367_ _self7360_))
        (let ((_E73637371_
               (lambda () (error '"No clause matching" _self73617367_))))
          (let ((_K73647376_
                 (lambda (_struct-t7374_)
                   (cons '@struct-cons (cons _struct-t7374_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self73617367_)
                (let ((_e73657379_ (##vector-ref _self73617367_ '1)))
                  (let ((_struct-t7382_ _e73657379_))
                    (_K73647376_ _struct-t7382_)))
                (_E73637371_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self7329_)
      (let ((_self73307337_ _self7329_))
        (let ((_E73327341_
               (lambda () (error '"No clause matching" _self73307337_))))
          (let ((_K73337347_
                 (lambda (_off7344_ _struct-t7345_)
                   (cons '@struct-getf
                         (cons _struct-t7345_ (cons _off7344_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self73307337_)
                (let ((_e73347350_ (##vector-ref _self73307337_ '1)))
                  (let ((_struct-t7353_ _e73347350_))
                    (let ((_e73357355_ (##vector-ref _self73307337_ '2)))
                      (let ((_off7358_ _e73357355_))
                        (_K73337347_ _off7358_ _struct-t7353_)))))
                (_E73327341_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self7298_)
      (let ((_self72997306_ _self7298_))
        (let ((_E73017310_
               (lambda () (error '"No clause matching" _self72997306_))))
          (let ((_K73027316_
                 (lambda (_off7313_ _struct-t7314_)
                   (cons '@struct-setf
                         (cons _struct-t7314_ (cons _off7313_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self72997306_)
                (let ((_e73037319_ (##vector-ref _self72997306_ '1)))
                  (let ((_struct-t7322_ _e73037319_))
                    (let ((_e73047324_ (##vector-ref _self72997306_ '2)))
                      (let ((_off7327_ _e73047324_))
                        (_K73027316_ _off7327_ _struct-t7322_)))))
                (_E73017310_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx7293_)
      (let ((_$e7295_ (gx#resolve-identifier _stx7293_)))
        (if _$e7295_
            (##structure-ref _$e7295_ '1 gx#binding::t '#f)
            (gx#stx-e _stx7293_))))))
