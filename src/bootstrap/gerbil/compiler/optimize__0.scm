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
    (lambda _$args10596_
      (apply make-struct-instance gxc#optimizer-info::t _$args10596_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self10594_)
      (direct-struct-instance-init!
       _self10594_
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
    (lambda (_ctx10589_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx10589_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx10589_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code10591_
               (gxc#optimize-source
                (##structure-ref _ctx10589_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx10589_
           _code10591_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx10550_)
      ((letrec ((_lp10552_
                 (lambda (_rest10554_)
                   (let ((_rest1055510563_ _rest10554_))
                     (let ((_E1055810567_
                            (lambda ()
                              (error '"No clause matching" _rest1055510563_))))
                       (let ((_else1055710571_ (lambda () (void))))
                         (let ((_K1055910577_
                                (lambda (_rest10574_ _hd10575_)
                                  (if (##structure-instance-of?
                                       _hd10575_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd10575_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx10550_)
                                              (_lp10552_
                                               (##structure-ref
                                                _hd10575_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd10575_)))
                                        (_lp10552_ _rest10574_))
                                      (if (##structure-direct-instance-of?
                                           _hd10575_
                                           'gx#module-import::t)
                                          (_lp10552_
                                           (cons (##structure-ref
                                                  _hd10575_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest10574_))
                                          (if (##structure-direct-instance-of?
                                               _hd10575_
                                               'gx#module-export::t)
                                              (_lp10552_
                                               (cons (##structure-ref
                                                      _hd10575_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest10574_))
                                              (if (##structure-direct-instance-of?
                                                   _hd10575_
                                                   'gx#import-set::t)
                                                  (_lp10552_
                                                   (cons (##structure-ref
                                                          _hd10575_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest10574_))
                                                  (error '"Unexpected module import"
                                                         _hd10575_))))))))
                           (if (##pair? _rest1055510563_)
                               (let ((_hd1056010580_ (##car _rest1055510563_))
                                     (_tl1056110582_ (##cdr _rest1055510563_)))
                                 (let ((_hd10585_ _hd1056010580_))
                                   (let ((_rest10587_ _tl1056110582_))
                                     (_K1055910577_ _rest10587_ _hd10585_))))
                               (_else1055710571_)))))))))
         _lp10552_)
       (##structure-ref _ctx10550_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx10545_)
      (let ((_$e10547_ (gx#core-context-prelude _ctx10545_)))
        (if _$e10547_ (gxc#optimizer-load-ssxi _$e10547_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx10525_)
      (if (if (##structure-instance-of? _ctx10525_ 'gx#module-context::t)
              (list? (##structure-ref _ctx10525_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht10527_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id10529_
                   (##structure-ref _ctx10525_ '1 gx#expander-context::t '#f)))
              (let ((_mod10531_ (hash-get _ht10527_ _id10529_)))
                (let ()
                  (let ((_$e10534_ _mod10531_))
                    (if _$e10534_
                        _$e10534_
                        (let ((_mod10537_
                               (gxc#optimizer-import-ssxi _ctx10525_)))
                          (let ((_val10542_
                                 (let ((_$e10539_ _mod10537_))
                                   (if _$e10539_ _$e10539_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht10527_ _id10529_ _val10542_)
                                _val10542_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx10502_)
      (let ((_catch-e10504_
             (lambda (_exn10523_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx10502_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn10523_))
                     '#!void)
                 '#f))))
        (let ((_import-e10505_
               (lambda ()
                 (let ((_str-id10508_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx10502_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path10516_
                          (let ((_odir1050910511_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1050910511_
                                (let ((_odir10514_ _odir1050910511_))
                                  (path-expand
                                   (string-append _str-id10508_ '".ss")
                                   _odir10514_))
                                '#f))))
                     (let ((_library-path10518_
                            (string->symbol
                             (string-append '":" _str-id10508_))))
                       (let ((_ssxi-path10520_
                              (if (if _artefact-path10516_
                                      (file-exists? _artefact-path10516_)
                                      '#f)
                                  _artefact-path10516_
                                  _library-path10518_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path10520_)
                             (gx#import-module
                              _ssxi-path10520_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e10504_ _import-e10505_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args10499_
      (apply make-struct-instance gxc#!type::t _$args10499_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args10496_
      (apply make-struct-instance gxc#!alias::t _$args10496_)))
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
    (lambda _$args10493_
      (apply make-struct-instance gxc#!struct-type::t _$args10493_)))
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
    (lambda _$args10490_
      (apply make-struct-instance gxc#!procedure::t _$args10490_)))
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
    (lambda _$args10487_
      (apply make-struct-instance gxc#!struct-pred::t _$args10487_)))
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
    (lambda _$args10484_
      (apply make-struct-instance gxc#!struct-cons::t _$args10484_)))
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
    (lambda _$args10481_
      (apply make-struct-instance gxc#!struct-getf::t _$args10481_)))
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
    (lambda _$args10478_
      (apply make-struct-instance gxc#!struct-setf::t _$args10478_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#optimizer-declare-type!
    (lambda (_sym10475_ _type10476_)
      (begin
        (if (##structure-instance-of? _type10476_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym10475_ _type10476_))
        (gxc#verbose
         '"declare-type "
         _sym10475_
         '" "
         (##vector->list _type10476_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym10475_
         _type10476_))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym10473_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym10473_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym10465_)
      (let ((_type1046610468_ (gxc#optimizer-lookup-type _sym10465_)))
        (if _type1046610468_
            (let ((_type10471_ _type1046610468_))
              (if (##structure-instance-of? _type10471_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type10471_ '1 gxc#!type::t '#f))
                  _type10471_))
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx10461_)
      (let ((_stx10463_ (gxc#apply-lift-top-lambdas _stx10461_)))
        (begin
          (gxc#apply-collect-type-info _stx10463_)
          (gxc#apply-optimize-call _stx10463_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl10458_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10458_ '%#lambda false)
           (hash-put! _tbl10458_ '%#case-lambda false)
           (hash-put! _tbl10458_ '%#let-values false)
           (hash-put! _tbl10458_ '%#letrec-values false)
           (hash-put! _tbl10458_ '%#letrec*-values false)
           (hash-put! _tbl10458_ '%#quote false)
           (hash-put! _tbl10458_ '%#quote-syntax false)
           (hash-put! _tbl10458_ '%#call false)
           (hash-put! _tbl10458_ '%#if false)
           (hash-put! _tbl10458_ '%#ref false)
           (hash-put! _tbl10458_ '%#set! false)
           _tbl10458_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10454_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10454_ '%#begin false)
           (hash-put! _tbl10454_ '%#begin-syntax false)
           (hash-put! _tbl10454_ '%#begin-foreign false)
           (hash-put! _tbl10454_ '%#module false)
           (hash-put! _tbl10454_ '%#import false)
           (hash-put! _tbl10454_ '%#export false)
           (hash-put! _tbl10454_ '%#provide false)
           (hash-put! _tbl10454_ '%#extern false)
           (hash-put! _tbl10454_ '%#define-values false)
           (hash-put! _tbl10454_ '%#define-syntax false)
           (hash-put! _tbl10454_ '%#define-alias false)
           (hash-put! _tbl10454_ '%#declare false)
           _tbl10454_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10450_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10450_ (force gxc#&false-special-form))
           (hash-copy! _tbl10450_ (force gxc#&false-expression))
           _tbl10450_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl10446_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10446_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl10446_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl10446_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl10446_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl10446_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl10446_ '%#quote gxc#xform-identity)
           (hash-put! _tbl10446_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl10446_ '%#call gxc#xform-identity)
           (hash-put! _tbl10446_ '%#if gxc#xform-identity)
           (hash-put! _tbl10446_ '%#ref gxc#xform-identity)
           (hash-put! _tbl10446_ '%#set! gxc#xform-identity)
           _tbl10446_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10442_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl10442_ '%#begin gxc#xform-identity)
           (hash-put! _tbl10442_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl10442_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl10442_ '%#module gxc#xform-identity)
           (hash-put! _tbl10442_ '%#import gxc#xform-identity)
           (hash-put! _tbl10442_ '%#export gxc#xform-identity)
           (hash-put! _tbl10442_ '%#provide gxc#xform-identity)
           (hash-put! _tbl10442_ '%#extern gxc#xform-identity)
           (hash-put! _tbl10442_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl10442_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl10442_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl10442_ '%#declare gxc#xform-identity)
           _tbl10442_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl10438_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10438_ (force gxc#&identity-special-form))
           (hash-copy! _tbl10438_ (force gxc#&identity-expression))
           _tbl10438_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl10434_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10434_ (force gxc#&identity))
           (hash-put! _tbl10434_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl10434_ '%#define-values gxc#xform-define-values%)
           (hash-put! _tbl10434_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl10434_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl10434_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl10434_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl10434_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl10434_ '%#call gxc#xform-call%)
           (hash-put! _tbl10434_ '%#if gxc#xform-if%)
           (hash-put! _tbl10434_ '%#set! gxc#xform-setq%)
           _tbl10434_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl10430_ (make-hash-table-eq)))
         (begin (hash-copy! _tbl10430_ (force gxc#&identity)) _tbl10430_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx10423_ . _args10425_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10423_ _args10425_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl10420_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10420_ (force gxc#&void-expression))
           (hash-copy! _tbl10420_ (force gxc#&void-special-form))
           (hash-put! _tbl10420_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl10420_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl10420_
            '%#define-values
            gxc#collect-type-define-values%)
           _tbl10420_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx10413_ . _args10415_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10413_ _args10415_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl10410_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10410_ (force gxc#&false))
           (hash-put! _tbl10410_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl10410_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl10410_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl10410_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl10410_ '%#ref gxc#basic-expression-type-ref%)
           _tbl10410_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx10403_ . _args10405_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10403_ _args10405_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl10400_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10400_ (force gxc#&basic-xform))
           (hash-put! _tbl10400_ '%#call gxc#optimize-call%)
           _tbl10400_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx10393_ . _args10395_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10393_ _args10395_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl10390_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10390_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl10390_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl10390_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           _tbl10390_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx10383_ . _args10385_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10383_ _args10385_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx10380_ . _args10381_) _stx10380_))
  (define gxc#xform-wrap-source
    (lambda (_stx10377_ _src-stx10378_)
      (gx#stx-wrap-source _stx10377_ (gx#stx-source _src-stx10378_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args10371_)
      (lambda (_g1037210374_)
        (apply gxc#compile-e _g1037210374_ _args10371_))))
  (define gxc#xform-begin%
    (lambda (_stx10330_ . _args10331_)
      (let ((_g1033310343_
             (lambda (_g1033410340_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1033410340_))))
        (let ((_g1033210368_
               (lambda (_g1033410346_)
                 (if (gx#stx-pair? _g1033410346_)
                     (let ((_e1033610348_ (gx#stx-e _g1033410346_)))
                       (let ((_hd1033710351_ (##car _e1033610348_))
                             (_tl1033810353_ (##cdr _e1033610348_)))
                         ((lambda (_L10356_)
                            (let ((_forms10366_
                                   (gx#stx-map
                                    (gxc#xform-apply-compile-e _args10331_)
                                    _L10356_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms10366_)
                               _stx10330_)))
                          _tl1033810353_)))
                     (_g1033310343_ _g1033410346_)))))
          (_g1033210368_ _stx10330_)))))
  (define gxc#xform-define-values%
    (lambda (_stx10260_ . _args10261_)
      (let ((_g1026310280_
             (lambda (_g1026410277_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1026410277_))))
        (let ((_g1026210327_
               (lambda (_g1026410283_)
                 (if (gx#stx-pair? _g1026410283_)
                     (let ((_e1026710285_ (gx#stx-e _g1026410283_)))
                       (let ((_hd1026810288_ (##car _e1026710285_))
                             (_tl1026910290_ (##cdr _e1026710285_)))
                         (if (gx#stx-pair? _tl1026910290_)
                             (let ((_e1027010293_ (gx#stx-e _tl1026910290_)))
                               (let ((_hd1027110296_ (##car _e1027010293_))
                                     (_tl1027210298_ (##cdr _e1027010293_)))
                                 (if (gx#stx-pair? _tl1027210298_)
                                     (let ((_e1027310301_
                                            (gx#stx-e _tl1027210298_)))
                                       (let ((_hd1027410304_
                                              (##car _e1027310301_))
                                             (_tl1027510306_
                                              (##cdr _e1027310301_)))
                                         (if (gx#stx-null? _tl1027510306_)
                                             ((lambda (_L10309_ _L10310_)
                                                (let ((_expr10325_
                                                       (apply gxc#compile-e
                                                              _L10309_
                                                              _args10261_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L10310_
                                                               (cons _expr10325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10260_)))
                                              _hd1027410304_
                                              _hd1027110296_)
                                             (_g1026310280_ _g1026410283_))))
                                     (_g1026310280_ _g1026410283_))))
                             (_g1026310280_ _g1026410283_))))
                     (_g1026310280_ _g1026410283_)))))
          (_g1026210327_ _stx10260_)))))
  (define gxc#xform-lambda%
    (lambda (_stx10203_ . _args10204_)
      (let ((_g1020610220_
             (lambda (_g1020710217_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1020710217_))))
        (let ((_g1020510257_
               (lambda (_g1020710223_)
                 (if (gx#stx-pair? _g1020710223_)
                     (let ((_e1021010225_ (gx#stx-e _g1020710223_)))
                       (let ((_hd1021110228_ (##car _e1021010225_))
                             (_tl1021210230_ (##cdr _e1021010225_)))
                         (if (gx#stx-pair? _tl1021210230_)
                             (let ((_e1021310233_ (gx#stx-e _tl1021210230_)))
                               (let ((_hd1021410236_ (##car _e1021310233_))
                                     (_tl1021510238_ (##cdr _e1021310233_)))
                                 ((lambda (_L10241_ _L10242_)
                                    (let ((_body10255_
                                           (gx#stx-map
                                            (gxc#xform-apply-compile-e
                                             _args10204_)
                                            _L10241_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L10242_ _body10255_))
                                       _stx10203_)))
                                  _tl1021510238_
                                  _hd1021410236_)))
                             (_g1020610220_ _g1020710223_))))
                     (_g1020610220_ _g1020710223_)))))
          (_g1020510257_ _stx10203_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx10116_ . _args10117_)
      (let ((_clause-e10119_
             (lambda (_clause10160_)
               (let ((_g1016210173_
                      (lambda (_g1016310170_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1016310170_))))
                 (let ((_g1016110200_
                        (lambda (_g1016310176_)
                          (if (gx#stx-pair? _g1016310176_)
                              (let ((_e1016610178_ (gx#stx-e _g1016310176_)))
                                (let ((_hd1016710181_ (##car _e1016610178_))
                                      (_tl1016810183_ (##cdr _e1016610178_)))
                                  ((lambda (_L10186_ _L10187_)
                                     (let ((_body10198_
                                            (gx#stx-map
                                             (gxc#xform-apply-compile-e
                                              _args10117_)
                                             _L10186_)))
                                       (cons _L10187_ _body10198_)))
                                   _tl1016810183_
                                   _hd1016710181_)))
                              (_g1016210173_ _g1016310176_)))))
                   (_g1016110200_ _clause10160_))))))
        (let ((_g1012110131_
               (lambda (_g1012210128_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1012210128_))))
          (let ((_g1012010157_
                 (lambda (_g1012210134_)
                   (if (gx#stx-pair? _g1012210134_)
                       (let ((_e1012410136_ (gx#stx-e _g1012210134_)))
                         (let ((_hd1012510139_ (##car _e1012410136_))
                               (_tl1012610141_ (##cdr _e1012410136_)))
                           ((lambda (_L10144_)
                              (let ((_clauses10155_
                                     (gx#stx-map _clause-e10119_ _L10144_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses10155_)
                                 _stx10116_)))
                            _tl1012610141_)))
                       (_g1012110131_ _g1012210134_)))))
            (_g1012010157_ _stx10116_))))))
  (define gxc#xform-let-values%
    (lambda (_stx9910_ . _args9911_)
      (let ((_g99139946_
             (lambda (_g99149943_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99149943_))))
        (let ((_g991210113_
               (lambda (_g99149949_)
                 (if (gx#stx-pair? _g99149949_)
                     (let ((_e99199951_ (gx#stx-e _g99149949_)))
                       (let ((_hd99209954_ (##car _e99199951_))
                             (_tl99219956_ (##cdr _e99199951_)))
                         (if (gx#stx-pair? _tl99219956_)
                             (let ((_e99229959_ (gx#stx-e _tl99219956_)))
                               (let ((_hd99239962_ (##car _e99229959_))
                                     (_tl99249964_ (##cdr _e99229959_)))
                                 (if (gx#stx-pair/null? _hd99239962_)
                                     (if (fx>= (gx#stx-length _hd99239962_) '0)
                                         (let ((_g10598_
                                                (gx#syntax-split-splice
                                                 _hd99239962_
                                                 '0)))
                                           (begin
                                             (let ((_g10599_
                                                    (values-count _g10598_)))
                                               (if (not (fx= _g10599_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10599_)))
                                             (let ((_target99259967_
                                                    (values-ref _g10598_ 0))
                                                   (_tl99279969_
                                                    (values-ref _g10598_ 1)))
                                               (if (gx#stx-null? _tl99279969_)
                                                   (letrec ((_loop99289972_
                                                             (lambda (_hd99269975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr99329977_
                              _hd99339979_)
                       (if (gx#stx-pair? _hd99269975_)
                           (let ((_e99299982_ (gx#stx-e _hd99269975_)))
                             (let ((_lp-hd99309985_ (##car _e99299982_))
                                   (_lp-tl99319987_ (##cdr _e99299982_)))
                               (if (gx#stx-pair? _lp-hd99309985_)
                                   (let ((_e99369990_
                                          (gx#stx-e _lp-hd99309985_)))
                                     (let ((_hd99379993_ (##car _e99369990_))
                                           (_tl99389995_ (##cdr _e99369990_)))
                                       (if (gx#stx-pair? _tl99389995_)
                                           (let ((_e99399998_
                                                  (gx#stx-e _tl99389995_)))
                                             (let ((_hd994010001_
                                                    (##car _e99399998_))
                                                   (_tl994110003_
                                                    (##cdr _e99399998_)))
                                               (if (gx#stx-null? _tl994110003_)
                                                   (_loop99289972_
                                                    _lp-tl99319987_
                                                    (cons _hd994010001_
                                                          _expr99329977_)
                                                    (cons _hd99379993_
                                                          _hd99339979_))
                                                   (_g99139946_ _g99149949_))))
                                           (_g99139946_ _g99149949_))))
                                   (_g99139946_ _g99149949_))))
                           (let ((_expr993410006_ (reverse _expr99329977_))
                                 (_hd993510008_ (reverse _hd99339979_)))
                             ((lambda (_L10011_ _L10012_ _L10013_ _L10014_)
                                (let ((_g1003310049_
                                       (lambda (_g1003410046_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1003410046_))))
                                  (let ((_g1003210103_
                                         (lambda (_g1003410052_)
                                           (if (gx#stx-pair/null?
                                                _g1003410052_)
                                               (if (fx>= (gx#stx-length
                                                          _g1003410052_)
                                                         '0)
                                                   (let ((_g10600_
                                                          (gx#syntax-split-splice
                                                           _g1003410052_
                                                           '0)))
                                                     (begin
                                                       (let ((_g10601_
                                                              (values-count
                                                               _g10600_)))
                                                         (if (not (fx= _g10601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g10601_)))
               (let ((_target1003610054_ (values-ref _g10600_ 0))
                     (_tl1003810056_ (values-ref _g10600_ 1)))
                 (if (gx#stx-null? _tl1003810056_)
                     (letrec ((_loop1003910059_
                               (lambda (_hd1003710062_ _expr1004310064_)
                                 (if (gx#stx-pair? _hd1003710062_)
                                     (let ((_e1004010067_
                                            (gx#syntax-e _hd1003710062_)))
                                       (let ((_lp-hd1004110070_
                                              (##car _e1004010067_))
                                             (_lp-tl1004210072_
                                              (##cdr _e1004010067_)))
                                         (_loop1003910059_
                                          _lp-tl1004210072_
                                          (cons _lp-hd1004110070_
                                                _expr1004310064_))))
                                     (let ((_expr1004410075_
                                            (reverse _expr1004310064_)))
                                       ((lambda (_L10078_)
                                          (let ()
                                            (let ((_body10091_
                                                   (gx#stx-map
                                                    (gxc#xform-apply-compile-e
                                                     _args9911_)
                                                    _L10011_)))
                                              (gxc#xform-wrap-source
                                               (cons _L10014_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L10078_
                                                              _L10013_)
                                                             (foldr (lambda (_g1009210096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1009310098_
                                     _g1009410100_)
                              (cons (cons _g1009310098_
                                          (cons _g1009210096_ '()))
                                    _g1009410100_))
                            '()
                            _L10078_
                            _L10013_))
                   _body10091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx9910_))))
                                        _expr1004410075_))))))
                       (_loop1003910059_ _target1003610054_ '()))
                     (_g1003310049_ _g1003410052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1003310049_
                                                    _g1003410052_))
                                               (_g1003310049_
                                                _g1003410052_)))))
                                    (_g1003210103_
                                     (gx#stx-map
                                      (gxc#xform-apply-compile-e _args9911_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1010510108_
                                                        _g1010610110_)
                                                 (cons _g1010510108_
                                                       _g1010610110_))
                                               '()
                                               _L10012_)))))))
                              _tl99249964_
                              _expr993410006_
                              _hd993510008_
                              _hd99209954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop99289972_
                                                      _target99259967_
                                                      '()
                                                      '()))
                                                   (_g99139946_
                                                    _g99149949_)))))
                                         (_g99139946_ _g99149949_))
                                     (_g99139946_ _g99149949_))))
                             (_g99139946_ _g99149949_))))
                     (_g99139946_ _g99149949_)))))
          (_g991210113_ _stx9910_)))))
  (define gxc#xform-call%
    (lambda (_stx9852_ . _args9853_)
      (let ((_g98559869_
             (lambda (_g98569866_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98569866_))))
        (let ((_g98549907_
               (lambda (_g98569872_)
                 (if (gx#stx-pair? _g98569872_)
                     (let ((_e98599874_ (gx#stx-e _g98569872_)))
                       (let ((_hd98609877_ (##car _e98599874_))
                             (_tl98619879_ (##cdr _e98599874_)))
                         (if (gx#stx-pair? _tl98619879_)
                             (let ((_e98629882_ (gx#stx-e _tl98619879_)))
                               (let ((_hd98639885_ (##car _e98629882_))
                                     (_tl98649887_ (##cdr _e98629882_)))
                                 ((lambda (_L9890_ _L9891_)
                                    (let ((_rator9904_
                                           (apply gxc#compile-e
                                                  _L9891_
                                                  _args9853_))
                                          (_rands9905_
                                           (gx#stx-map
                                            (gxc#xform-apply-compile-e
                                             _args9853_)
                                            _L9890_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator9904_ _rands9905_))
                                       _stx9852_)))
                                  _tl98649887_
                                  _hd98639885_)))
                             (_g98559869_ _g98569872_))))
                     (_g98559869_ _g98569872_)))))
          (_g98549907_ _stx9852_)))))
  (define gxc#xform-if%
    (lambda (_stx9811_ . _args9812_)
      (let ((_g98149824_
             (lambda (_g98159821_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98159821_))))
        (let ((_g98139849_
               (lambda (_g98159827_)
                 (if (gx#stx-pair? _g98159827_)
                     (let ((_e98179829_ (gx#stx-e _g98159827_)))
                       (let ((_hd98189832_ (##car _e98179829_))
                             (_tl98199834_ (##cdr _e98179829_)))
                         ((lambda (_L9837_)
                            (let ((_forms9847_
                                   (gx#stx-map
                                    (gxc#xform-apply-compile-e _args9812_)
                                    _L9837_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms9847_)
                               _stx9811_)))
                          _tl98199834_)))
                     (_g98149824_ _g98159827_)))))
          (_g98139849_ _stx9811_)))))
  (define gxc#xform-setq%
    (lambda (_stx9741_ . _args9742_)
      (let ((_g97449761_
             (lambda (_g97459758_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97459758_))))
        (let ((_g97439808_
               (lambda (_g97459764_)
                 (if (gx#stx-pair? _g97459764_)
                     (let ((_e97489766_ (gx#stx-e _g97459764_)))
                       (let ((_hd97499769_ (##car _e97489766_))
                             (_tl97509771_ (##cdr _e97489766_)))
                         (if (gx#stx-pair? _tl97509771_)
                             (let ((_e97519774_ (gx#stx-e _tl97509771_)))
                               (let ((_hd97529777_ (##car _e97519774_))
                                     (_tl97539779_ (##cdr _e97519774_)))
                                 (if (gx#stx-pair? _tl97539779_)
                                     (let ((_e97549782_
                                            (gx#stx-e _tl97539779_)))
                                       (let ((_hd97559785_ (##car _e97549782_))
                                             (_tl97569787_
                                              (##cdr _e97549782_)))
                                         (if (gx#stx-null? _tl97569787_)
                                             ((lambda (_L9790_ _L9791_)
                                                (let ((_expr9806_
                                                       (apply gxc#compile-e
                                                              _L9790_
                                                              _args9742_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L9791_
                                                               (cons _expr9806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx9741_)))
                                              _hd97559785_
                                              _hd97529777_)
                                             (_g97449761_ _g97459764_))))
                                     (_g97449761_ _g97459764_))))
                             (_g97449761_ _g97459764_))))
                     (_g97449761_ _g97459764_)))))
          (_g97439808_ _stx9741_)))))
  (define gxc#collect-type-define-values%
    (lambda (_stx9646_)
      (let ((_g96499669_
             (lambda (_g96509666_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96509666_))))
        (let ((_g96489676_ (lambda (_g96509672_) ((lambda () (void))))))
          (let ((_g96479738_
                 (lambda (_g96509679_)
                   (if (gx#stx-pair? _g96509679_)
                       (let ((_e96539681_ (gx#stx-e _g96509679_)))
                         (let ((_hd96549684_ (##car _e96539681_))
                               (_tl96559686_ (##cdr _e96539681_)))
                           (if (gx#stx-pair? _tl96559686_)
                               (let ((_e96569689_ (gx#stx-e _tl96559686_)))
                                 (let ((_hd96579692_ (##car _e96569689_))
                                       (_tl96589694_ (##cdr _e96569689_)))
                                   (if (gx#stx-pair? _hd96579692_)
                                       (let ((_e96599697_
                                              (gx#stx-e _hd96579692_)))
                                         (let ((_hd96609700_
                                                (##car _e96599697_))
                                               (_tl96619702_
                                                (##cdr _e96599697_)))
                                           (if (gx#stx-null? _tl96619702_)
                                               (if (gx#stx-pair? _tl96589694_)
                                                   (let ((_e96629705_
                                                          (gx#stx-e
                                                           _tl96589694_)))
                                                     (let ((_hd96639708_
                                                            (##car _e96629705_))
                                                           (_tl96649710_
                                                            (##cdr _e96629705_)))
                                                       (if (gx#stx-null?
                                                            _tl96649710_)
                                                           ((lambda (_L9713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L9714_)
                      (let ((_type97319733_
                             (gxc#apply-basic-expression-type _L9713_)))
                        (if _type97319733_
                            (let ((_type9736_ _type97319733_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L9714_)
                               _type9736_))
                            '#f)))
                    _hd96639708_
                    _hd96609700_)
                   (_g96489676_ _g96509679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g96489676_ _g96509679_))
                                               (_g96489676_ _g96509679_))))
                                       (_g96489676_ _g96509679_))))
                               (_g96489676_ _g96509679_))))
                       (_g96489676_ _g96509679_)))))
            (_g96479738_ _stx9646_))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx9586_)
      (let ((_g95899602_
             (lambda (_g95909599_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95909599_))))
        (let ((_g95889609_ (lambda (_g95909605_) ((lambda () '#f)))))
          (let ((_g95879643_
                 (lambda (_g95909612_)
                   (if (gx#stx-pair? _g95909612_)
                       (let ((_e95929614_ (gx#stx-e _g95909612_)))
                         (let ((_hd95939617_ (##car _e95929614_))
                               (_tl95949619_ (##cdr _e95929614_)))
                           (if (gx#stx-pair? _tl95949619_)
                               (let ((_e95959622_ (gx#stx-e _tl95949619_)))
                                 (let ((_hd95969625_ (##car _e95959622_))
                                       (_tl95979627_ (##cdr _e95959622_)))
                                   (if (gx#stx-null? _tl95979627_)
                                       ((lambda (_L9630_)
                                          (gxc#compile-e _L9630_))
                                        _hd95969625_)
                                       (_g95889609_ _g95909612_))))
                               (_g95889609_ _g95909612_))))
                       (_g95889609_ _g95909612_)))))
            (_g95879643_ _stx9586_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx9327_)
      (let ((_g93309389_
             (lambda (_g93319386_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93319386_))))
        (let ((_g93299396_ (lambda (_g93319392_) ((lambda () '#f)))))
          (let ((_g93289583_
                 (lambda (_g93319399_)
                   (if (gx#stx-pair? _g93319399_)
                       (let ((_e93379401_ (gx#stx-e _g93319399_)))
                         (let ((_hd93389404_ (##car _e93379401_))
                               (_tl93399406_ (##cdr _e93379401_)))
                           (if (gx#stx-pair? _tl93399406_)
                               (let ((_e93409409_ (gx#stx-e _tl93399406_)))
                                 (let ((_hd93419412_ (##car _e93409409_))
                                       (_tl93429414_ (##cdr _e93409409_)))
                                   (if (gx#stx-pair? _tl93429414_)
                                       (let ((_e93439417_
                                              (gx#stx-e _tl93429414_)))
                                         (let ((_hd93449420_
                                                (##car _e93439417_))
                                               (_tl93459422_
                                                (##cdr _e93439417_)))
                                           (if (gx#stx-pair? _hd93449420_)
                                               (let ((_e93469425_
                                                      (gx#stx-e _hd93449420_)))
                                                 (let ((_hd93479428_
                                                        (##car _e93469425_))
                                                       (_tl93489430_
                                                        (##cdr _e93469425_)))
                                                   (if (gx#identifier?
                                                        _hd93479428_)
                                                       (if (gx#stx-eq?
                                                            '%#call
                                                            _hd93479428_)
                                                           (if (gx#stx-pair?
                                                                _tl93489430_)
                                                               (let ((_e93499433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl93489430_)))
                         (let ((_hd93509436_ (##car _e93499433_))
                               (_tl93519438_ (##cdr _e93499433_)))
                           (if (gx#stx-pair? _hd93509436_)
                               (let ((_e93529441_ (gx#stx-e _hd93509436_)))
                                 (let ((_hd93539444_ (##car _e93529441_))
                                       (_tl93549446_ (##cdr _e93529441_)))
                                   (if (gx#identifier? _hd93539444_)
                                       (if (gx#stx-eq? '%#ref _hd93539444_)
                                           (if (gx#stx-pair? _tl93549446_)
                                               (let ((_e93559449_
                                                      (gx#stx-e _tl93549446_)))
                                                 (let ((_hd93569452_
                                                        (##car _e93559449_))
                                                       (_tl93579454_
                                                        (##cdr _e93559449_)))
                                                   (if (gx#stx-null?
                                                        _tl93579454_)
                                                       (if (gx#stx-pair?
                                                            _tl93519438_)
                                                           (let ((_e93589457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl93519438_)))
                     (let ((_hd93599460_ (##car _e93589457_))
                           (_tl93609462_ (##cdr _e93589457_)))
                       (if (gx#stx-pair? _hd93599460_)
                           (let ((_e93619465_ (gx#stx-e _hd93599460_)))
                             (let ((_hd93629468_ (##car _e93619465_))
                                   (_tl93639470_ (##cdr _e93619465_)))
                               (if (gx#identifier? _hd93629468_)
                                   (if (gx#stx-eq? '%#ref _hd93629468_)
                                       (if (gx#stx-pair? _tl93639470_)
                                           (let ((_e93649473_
                                                  (gx#stx-e _tl93639470_)))
                                             (let ((_hd93659476_
                                                    (##car _e93649473_))
                                                   (_tl93669478_
                                                    (##cdr _e93649473_)))
                                               (if (gx#stx-null? _tl93669478_)
                                                   (if (gx#stx-pair?
                                                        _tl93609462_)
                                                       (let ((_e93679481_
                                                              (gx#stx-e
                                                               _tl93609462_)))
                                                         (let ((_hd93689484_
                                                                (##car _e93679481_))
                                                               (_tl93699486_
                                                                (##cdr _e93679481_)))
                                                           (if (gx#stx-pair?
                                                                _hd93689484_)
                                                               (let ((_e93709489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd93689484_)))
                         (let ((_hd93719492_ (##car _e93709489_))
                               (_tl93729494_ (##cdr _e93709489_)))
                           (if (gx#identifier? _hd93719492_)
                               (if (gx#stx-eq? '%#ref _hd93719492_)
                                   (if (gx#stx-pair? _tl93729494_)
                                       (let ((_e93739497_
                                              (gx#stx-e _tl93729494_)))
                                         (let ((_hd93749500_
                                                (##car _e93739497_))
                                               (_tl93759502_
                                                (##cdr _e93739497_)))
                                           (if (gx#stx-null? _tl93759502_)
                                               (if (gx#stx-pair? _tl93699486_)
                                                   (let ((_e93769505_
                                                          (gx#stx-e
                                                           _tl93699486_)))
                                                     (let ((_hd93779508_
                                                            (##car _e93769505_))
                                                           (_tl93789510_
                                                            (##cdr _e93769505_)))
                                                       (if (gx#stx-pair?
                                                            _hd93779508_)
                                                           (let ((_e93799513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd93779508_)))
                     (let ((_hd93809516_ (##car _e93799513_))
                           (_tl93819518_ (##cdr _e93799513_)))
                       (if (gx#identifier? _hd93809516_)
                           (if (gx#stx-eq? '%#ref _hd93809516_)
                               (if (gx#stx-pair? _tl93819518_)
                                   (let ((_e93829521_ (gx#stx-e _tl93819518_)))
                                     (let ((_hd93839524_ (##car _e93829521_))
                                           (_tl93849526_ (##cdr _e93829521_)))
                                       (if (gx#stx-null? _tl93849526_)
                                           (if (gx#stx-null? _tl93789510_)
                                               (if (gx#stx-null? _tl93459422_)
                                                   ((lambda (_L9529_
                                                             _L9530_
                                                             _L9531_
                                                             _L9532_
                                                             _L9533_)
                                                      (if (if (gx#identifier?
                                                               _L9533_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L9529_)
                          (if (eq? (gxc#identifier-symbol _L9532_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L9531_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L9533_ _L9529_)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  (let ((_type-t9578_ (gxc#identifier-symbol _L9530_)))
                    (let ((_type9580_
                           (gxc#optimizer-resolve-type _type-t9578_)))
                      (let ()
                        (if (##structure-instance-of?
                             _type9580_
                             'gxc#!struct-type::t)
                            (##structure gxc#!struct-cons::t _type-t9578_)
                            '#f))))
                  (_g93299396_ _g93319399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd93839524_
                                                    _hd93749500_
                                                    _hd93659476_
                                                    _hd93569452_
                                                    _hd93419412_)
                                                   (_g93299396_ _g93319399_))
                                               (_g93299396_ _g93319399_))
                                           (_g93299396_ _g93319399_))))
                                   (_g93299396_ _g93319399_))
                               (_g93299396_ _g93319399_))
                           (_g93299396_ _g93319399_))))
                   (_g93299396_ _g93319399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93299396_ _g93319399_))
                                               (_g93299396_ _g93319399_))))
                                       (_g93299396_ _g93319399_))
                                   (_g93299396_ _g93319399_))
                               (_g93299396_ _g93319399_))))
                       (_g93299396_ _g93319399_))))
               (_g93299396_ _g93319399_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93299396_ _g93319399_))))
                                           (_g93299396_ _g93319399_))
                                       (_g93299396_ _g93319399_))
                                   (_g93299396_ _g93319399_))))
                           (_g93299396_ _g93319399_))))
                   (_g93299396_ _g93319399_))
               (_g93299396_ _g93319399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g93299396_ _g93319399_))
                                           (_g93299396_ _g93319399_))
                                       (_g93299396_ _g93319399_))))
                               (_g93299396_ _g93319399_))))
                       (_g93299396_ _g93319399_))
                   (_g93299396_ _g93319399_))
               (_g93299396_ _g93319399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g93299396_ _g93319399_))))
                                       (_g93299396_ _g93319399_))))
                               (_g93299396_ _g93319399_))))
                       (_g93299396_ _g93319399_)))))
            (_g93289583_ _stx9327_))))))
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
                                           (let ((_g10602_
                                                  (gx#syntax-split-splice
                                                   _hd75137547_
                                                   '0)))
                                             (begin
                                               (let ((_g10603_
                                                      (values-count _g10602_)))
                                                 (if (not (fx= _g10603_ 2))
                                                     (error "Context expects 2 values"
                                                            _g10603_)))
                                               (let ((_target75157552_
                                                      (values-ref _g10602_ 0))
                                                     (_tl75177554_
                                                      (values-ref _g10602_ 1)))
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
