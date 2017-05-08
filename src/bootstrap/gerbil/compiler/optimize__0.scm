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
    (lambda _$args9968_
      (apply make-struct-instance gxc#optimizer-info::t _$args9968_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self9966_)
      (direct-struct-instance-init!
       _self9966_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info (gxc#make-optimizer-info)))))
  (define gxc#optimize!
    (lambda (_ctx9961_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx9961_)
        (hash-put!
         (gxc#optimizer-info-ssxi (gxc#current-compile-optimizer-info))
         (gx#expander-context-id _ctx9961_)
         '#t)
        (let ((_code9963_
               (gxc#optimize-source (gx#module-context-code _ctx9961_))))
          (gx#module-context-code-set! _ctx9961_ _code9963_)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx9922_)
      ((letrec ((_lp9924_
                 (lambda (_rest9926_)
                   (let ((_rest99279935_ _rest9926_))
                     (let ((_E99309939_
                            (lambda ()
                              (error '"No clause matching" _rest99279935_))))
                       (let ((_else99299943_ (lambda () (void))))
                         (let ((_K99319949_
                                (lambda (_rest9946_ _hd9947_)
                                  (if (gx#module-context? _hd9947_)
                                      (begin
                                        (if (hash-get
                                             (gxc#optimizer-info-ssxi
                                              (gxc#current-compile-optimizer-info))
                                             (gx#expander-context-id _hd9947_))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx9922_)
                                              (_lp9924_
                                               (gx#module-context-import
                                                _hd9947_))
                                              (gxc#optimizer-load-ssxi
                                               _hd9947_)))
                                        (_lp9924_ _rest9946_))
                                      (if (gx#module-import? _hd9947_)
                                          (_lp9924_
                                           (cons (gx#module-import-source
                                                  _hd9947_)
                                                 _rest9946_))
                                          (if (gx#module-export? _hd9947_)
                                              (_lp9924_
                                               (cons (gx#module-export-context
                                                      _hd9947_)
                                                     _rest9946_))
                                              (if (gx#import-set? _hd9947_)
                                                  (_lp9924_
                                                   (cons (gx#import-set-source
                                                          _hd9947_)
                                                         _rest9946_))
                                                  (error '"Unexpected module import"
                                                         _hd9947_))))))))
                           (if (##pair? _rest99279935_)
                               (let ((_hd99329952_ (##car _rest99279935_))
                                     (_tl99339954_ (##cdr _rest99279935_)))
                                 (let ((_hd9957_ _hd99329952_))
                                   (let ((_rest9959_ _tl99339954_))
                                     (_K99319949_ _rest9959_ _hd9957_))))
                               (_else99299943_)))))))))
         _lp9924_)
       (gx#module-context-import _ctx9922_))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx9917_)
      (let ((_$e9919_ (gx#core-context-prelude _ctx9917_)))
        (if _$e9919_ (gxc#optimizer-load-ssxi _$e9919_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx9897_)
      (if (if (gx#module-context? _ctx9897_)
              (list? (gx#module-context-path _ctx9897_))
              '#f)
          '#!void
          (let ((_ht9899_
                 (gxc#optimizer-info-ssxi
                  (gxc#current-compile-optimizer-info))))
            (let ((_id9901_ (gx#expander-context-id _ctx9897_)))
              (let ((_mod9903_ (hash-get _ht9899_ _id9901_)))
                (let ()
                  (let ((_$e9906_ _mod9903_))
                    (if _$e9906_
                        _$e9906_
                        (let ((_mod9909_
                               (gxc#optimizer-import-ssxi _ctx9897_)))
                          (let ((_val9914_
                                 (let ((_$e9911_ _mod9909_))
                                   (if _$e9911_ _$e9911_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht9899_ _id9901_ _val9914_)
                                _val9914_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx9874_)
      (let ((_catch-e9876_
             (lambda (_exn9895_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (gx#expander-context-id _ctx9874_))
                       (display-exception _exn9895_))
                     '#!void)
                 '#f))))
        (let ((_import-e9877_
               (lambda ()
                 (let ((_str-id9880_
                        (string-append
                         (symbol->string (gx#expander-context-id _ctx9874_))
                         '".ssxi")))
                   (let ((_artefact-path9888_
                          (let ((_odir98819883_
                                 (gxc#current-compile-output-dir)))
                            (if _odir98819883_
                                (let ((_odir9886_ _odir98819883_))
                                  (path-expand
                                   (string-append _str-id9880_ '".ss")
                                   _odir9886_))
                                '#f))))
                     (let ((_library-path9890_
                            (string->symbol
                             (string-append '":" _str-id9880_))))
                       (let ((_ssxi-path9892_
                              (if (if _artefact-path9888_
                                      (file-exists? _artefact-path9888_)
                                      '#f)
                                  _artefact-path9888_
                                  _library-path9890_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path9892_)
                             (gx#import-module
                              _ssxi-path9892_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e9876_ _import-e9877_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args9871_ (apply make-struct-instance gxc#!type::t _$args9871_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args9868_
      (apply make-struct-instance gxc#!alias::t _$args9868_)))
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
    (lambda _$args9865_
      (apply make-struct-instance gxc#!struct-type::t _$args9865_)))
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
    (lambda _$args9862_
      (apply make-struct-instance gxc#!procedure::t _$args9862_)))
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
    (lambda _$args9859_
      (apply make-struct-instance gxc#!struct-pred::t _$args9859_)))
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
    (lambda _$args9856_
      (apply make-struct-instance gxc#!struct-cons::t _$args9856_)))
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
    (lambda _$args9853_
      (apply make-struct-instance gxc#!struct-getf::t _$args9853_)))
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
    (lambda _$args9850_
      (apply make-struct-instance gxc#!struct-setf::t _$args9850_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#optimizer-declare-type!
    (lambda (_sym9847_ _type9848_)
      (begin
        (if (gxc#!type? _type9848_)
            '#!void
            (error '"bad declaration: expected !type" _sym9847_ _type9848_))
        (gxc#verbose
         '"declare-type "
         _sym9847_
         '" "
         (##vector->list _type9848_))
        (hash-put!
         (gxc#optimizer-info-type (gxc#current-compile-optimizer-info))
         _sym9847_
         _type9848_))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym9845_)
      (hash-get
       (gxc#optimizer-info-type (gxc#current-compile-optimizer-info))
       _sym9845_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym9837_)
      (let ((_type98389840_ (gxc#optimizer-lookup-type _sym9837_)))
        (if _type98389840_
            (let ((_type9843_ _type98389840_))
              (if (gxc#!alias? _type9843_)
                  (gxc#optimizer-resolve-type (gxc#!type-id _type9843_))
                  _type9843_))
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx9833_)
      (let ((_stx9835_ (gxc#apply-lift-top-lambdas _stx9833_)))
        (begin
          (gxc#apply-collect-type-info _stx9835_)
          (gxc#apply-optimize-call _stx9835_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl9830_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9830_ '%#lambda false)
           (hash-put! _tbl9830_ '%#case-lambda false)
           (hash-put! _tbl9830_ '%#let-values false)
           (hash-put! _tbl9830_ '%#letrec-values false)
           (hash-put! _tbl9830_ '%#letrec*-values false)
           (hash-put! _tbl9830_ '%#quote false)
           (hash-put! _tbl9830_ '%#quote-syntax false)
           (hash-put! _tbl9830_ '%#call false)
           (hash-put! _tbl9830_ '%#if false)
           (hash-put! _tbl9830_ '%#ref false)
           (hash-put! _tbl9830_ '%#set! false)
           _tbl9830_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9826_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9826_ '%#begin false)
           (hash-put! _tbl9826_ '%#begin-syntax false)
           (hash-put! _tbl9826_ '%#begin-foreign false)
           (hash-put! _tbl9826_ '%#module false)
           (hash-put! _tbl9826_ '%#import false)
           (hash-put! _tbl9826_ '%#export false)
           (hash-put! _tbl9826_ '%#provide false)
           (hash-put! _tbl9826_ '%#extern false)
           (hash-put! _tbl9826_ '%#define-values false)
           (hash-put! _tbl9826_ '%#define-syntax false)
           (hash-put! _tbl9826_ '%#define-alias false)
           (hash-put! _tbl9826_ '%#declare false)
           _tbl9826_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl9822_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9822_ (force gxc#&false-special-form))
           (hash-copy! _tbl9822_ (force gxc#&false-expression))
           _tbl9822_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl9818_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9818_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl9818_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl9818_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl9818_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl9818_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl9818_ '%#quote gxc#xform-identity)
           (hash-put! _tbl9818_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl9818_ '%#call gxc#xform-identity)
           (hash-put! _tbl9818_ '%#if gxc#xform-identity)
           (hash-put! _tbl9818_ '%#ref gxc#xform-identity)
           (hash-put! _tbl9818_ '%#set! gxc#xform-identity)
           _tbl9818_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9814_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9814_ '%#begin gxc#xform-identity)
           (hash-put! _tbl9814_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl9814_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl9814_ '%#module gxc#xform-identity)
           (hash-put! _tbl9814_ '%#import gxc#xform-identity)
           (hash-put! _tbl9814_ '%#export gxc#xform-identity)
           (hash-put! _tbl9814_ '%#provide gxc#xform-identity)
           (hash-put! _tbl9814_ '%#extern gxc#xform-identity)
           (hash-put! _tbl9814_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl9814_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl9814_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl9814_ '%#declare gxc#xform-identity)
           _tbl9814_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl9810_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9810_ (force gxc#&identity-special-form))
           (hash-copy! _tbl9810_ (force gxc#&identity-expression))
           _tbl9810_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl9806_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9806_ (force gxc#&identity))
           (hash-put! _tbl9806_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl9806_ '%#define-values gxc#xform-define-values%)
           (hash-put! _tbl9806_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl9806_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl9806_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl9806_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl9806_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl9806_ '%#call gxc#xform-call%)
           (hash-put! _tbl9806_ '%#if gxc#xform-if%)
           (hash-put! _tbl9806_ '%#set! gxc#xform-setq%)
           _tbl9806_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl9802_ (make-hash-table-eq)))
         (begin (hash-copy! _tbl9802_ (force gxc#&identity)) _tbl9802_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx9795_ . _args9797_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9795_ _args9797_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl9792_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9792_ (force gxc#&void-expression))
           (hash-copy! _tbl9792_ (force gxc#&void-special-form))
           (hash-put! _tbl9792_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9792_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl9792_
            '%#define-values
            gxc#collect-type-define-values%)
           _tbl9792_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx9785_ . _args9787_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9785_ _args9787_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl9782_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9782_ (force gxc#&false))
           (hash-put! _tbl9782_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl9782_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl9782_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl9782_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl9782_ '%#ref gxc#basic-expression-type-ref%)
           _tbl9782_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx9775_ . _args9777_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9775_ _args9777_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl9772_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9772_ (force gxc#&basic-xform))
           (hash-put! _tbl9772_ '%#call gxc#optimize-call%)
           _tbl9772_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx9765_ . _args9767_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9765_ _args9767_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl9762_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9762_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl9762_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl9762_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           _tbl9762_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx9755_ . _args9757_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9755_ _args9757_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx9752_ . _args9753_) _stx9752_))
  (define gxc#xform-wrap-source
    (lambda (_stx9749_ _src-stx9750_)
      (gx#stx-wrap-source _stx9749_ (gx#stx-source _src-stx9750_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args9743_)
      (lambda (_g97449746_) (apply gxc#compile-e _g97449746_ _args9743_))))
  (define gxc#xform-begin%
    (lambda (_stx9702_ . _args9703_)
      (let ((_g97059715_
             (lambda (_g97069712_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97069712_))))
        (let ((_g97049740_
               (lambda (_g97069718_)
                 (if (gx#stx-pair? _g97069718_)
                     (let ((_e97089720_ (gx#stx-e _g97069718_)))
                       (let ((_hd97099723_ (##car _e97089720_))
                             (_tl97109725_ (##cdr _e97089720_)))
                         ((lambda (_L9728_)
                            (let ((_forms9738_
                                   (gx#stx-map
                                    (gxc#xform-apply-compile-e _args9703_)
                                    _L9728_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms9738_)
                               _stx9702_)))
                          _tl97109725_)))
                     (_g97059715_ _g97069718_)))))
          (_g97049740_ _stx9702_)))))
  (define gxc#xform-define-values%
    (lambda (_stx9632_ . _args9633_)
      (let ((_g96359652_
             (lambda (_g96369649_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96369649_))))
        (let ((_g96349699_
               (lambda (_g96369655_)
                 (if (gx#stx-pair? _g96369655_)
                     (let ((_e96399657_ (gx#stx-e _g96369655_)))
                       (let ((_hd96409660_ (##car _e96399657_))
                             (_tl96419662_ (##cdr _e96399657_)))
                         (if (gx#stx-pair? _tl96419662_)
                             (let ((_e96429665_ (gx#stx-e _tl96419662_)))
                               (let ((_hd96439668_ (##car _e96429665_))
                                     (_tl96449670_ (##cdr _e96429665_)))
                                 (if (gx#stx-pair? _tl96449670_)
                                     (let ((_e96459673_
                                            (gx#stx-e _tl96449670_)))
                                       (let ((_hd96469676_ (##car _e96459673_))
                                             (_tl96479678_
                                              (##cdr _e96459673_)))
                                         (if (gx#stx-null? _tl96479678_)
                                             ((lambda (_L9681_ _L9682_)
                                                (let ((_expr9697_
                                                       (apply gxc#compile-e
                                                              _L9681_
                                                              _args9633_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L9682_
                                                               (cons _expr9697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx9632_)))
                                              _hd96469676_
                                              _hd96439668_)
                                             (_g96359652_ _g96369655_))))
                                     (_g96359652_ _g96369655_))))
                             (_g96359652_ _g96369655_))))
                     (_g96359652_ _g96369655_)))))
          (_g96349699_ _stx9632_)))))
  (define gxc#xform-lambda%
    (lambda (_stx9575_ . _args9576_)
      (let ((_g95789592_
             (lambda (_g95799589_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95799589_))))
        (let ((_g95779629_
               (lambda (_g95799595_)
                 (if (gx#stx-pair? _g95799595_)
                     (let ((_e95829597_ (gx#stx-e _g95799595_)))
                       (let ((_hd95839600_ (##car _e95829597_))
                             (_tl95849602_ (##cdr _e95829597_)))
                         (if (gx#stx-pair? _tl95849602_)
                             (let ((_e95859605_ (gx#stx-e _tl95849602_)))
                               (let ((_hd95869608_ (##car _e95859605_))
                                     (_tl95879610_ (##cdr _e95859605_)))
                                 ((lambda (_L9613_ _L9614_)
                                    (let ((_body9627_
                                           (gx#stx-map
                                            (gxc#xform-apply-compile-e
                                             _args9576_)
                                            _L9613_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L9614_ _body9627_))
                                       _stx9575_)))
                                  _tl95879610_
                                  _hd95869608_)))
                             (_g95789592_ _g95799595_))))
                     (_g95789592_ _g95799595_)))))
          (_g95779629_ _stx9575_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx9488_ . _args9489_)
      (let ((_clause-e9491_
             (lambda (_clause9532_)
               (let ((_g95349545_
                      (lambda (_g95359542_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g95359542_))))
                 (let ((_g95339572_
                        (lambda (_g95359548_)
                          (if (gx#stx-pair? _g95359548_)
                              (let ((_e95389550_ (gx#stx-e _g95359548_)))
                                (let ((_hd95399553_ (##car _e95389550_))
                                      (_tl95409555_ (##cdr _e95389550_)))
                                  ((lambda (_L9558_ _L9559_)
                                     (let ((_body9570_
                                            (gx#stx-map
                                             (gxc#xform-apply-compile-e
                                              _args9489_)
                                             _L9558_)))
                                       (cons _L9559_ _body9570_)))
                                   _tl95409555_
                                   _hd95399553_)))
                              (_g95349545_ _g95359548_)))))
                   (_g95339572_ _clause9532_))))))
        (let ((_g94939503_
               (lambda (_g94949500_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94949500_))))
          (let ((_g94929529_
                 (lambda (_g94949506_)
                   (if (gx#stx-pair? _g94949506_)
                       (let ((_e94969508_ (gx#stx-e _g94949506_)))
                         (let ((_hd94979511_ (##car _e94969508_))
                               (_tl94989513_ (##cdr _e94969508_)))
                           ((lambda (_L9516_)
                              (let ((_clauses9527_
                                     (gx#stx-map _clause-e9491_ _L9516_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses9527_)
                                 _stx9488_)))
                            _tl94989513_)))
                       (_g94939503_ _g94949506_)))))
            (_g94929529_ _stx9488_))))))
  (define gxc#xform-let-values%
    (lambda (_stx9282_ . _args9283_)
      (let ((_g92859318_
             (lambda (_g92869315_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92869315_))))
        (let ((_g92849485_
               (lambda (_g92869321_)
                 (if (gx#stx-pair? _g92869321_)
                     (let ((_e92919323_ (gx#stx-e _g92869321_)))
                       (let ((_hd92929326_ (##car _e92919323_))
                             (_tl92939328_ (##cdr _e92919323_)))
                         (if (gx#stx-pair? _tl92939328_)
                             (let ((_e92949331_ (gx#stx-e _tl92939328_)))
                               (let ((_hd92959334_ (##car _e92949331_))
                                     (_tl92969336_ (##cdr _e92949331_)))
                                 (if (gx#stx-pair/null? _hd92959334_)
                                     (if (fx>= (gx#stx-length _hd92959334_) '0)
                                         (let ((_g9970_ (gx#syntax-split-splice
                                                         _hd92959334_
                                                         '0)))
                                           (begin
                                             (let ((_g9971_ (values-count
                                                             _g9970_)))
                                               (if (not (fx= _g9971_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9971_)))
                                             (let ((_target92979339_
                                                    (values-ref _g9970_ 0))
                                                   (_tl92999341_
                                                    (values-ref _g9970_ 1)))
                                               (if (gx#stx-null? _tl92999341_)
                                                   (letrec ((_loop93009344_
                                                             (lambda (_hd92989347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr93049349_
                              _hd93059351_)
                       (if (gx#stx-pair? _hd92989347_)
                           (let ((_e93019354_ (gx#stx-e _hd92989347_)))
                             (let ((_lp-hd93029357_ (##car _e93019354_))
                                   (_lp-tl93039359_ (##cdr _e93019354_)))
                               (if (gx#stx-pair? _lp-hd93029357_)
                                   (let ((_e93089362_
                                          (gx#stx-e _lp-hd93029357_)))
                                     (let ((_hd93099365_ (##car _e93089362_))
                                           (_tl93109367_ (##cdr _e93089362_)))
                                       (if (gx#stx-pair? _tl93109367_)
                                           (let ((_e93119370_
                                                  (gx#stx-e _tl93109367_)))
                                             (let ((_hd93129373_
                                                    (##car _e93119370_))
                                                   (_tl93139375_
                                                    (##cdr _e93119370_)))
                                               (if (gx#stx-null? _tl93139375_)
                                                   (_loop93009344_
                                                    _lp-tl93039359_
                                                    (cons _hd93129373_
                                                          _expr93049349_)
                                                    (cons _hd93099365_
                                                          _hd93059351_))
                                                   (_g92859318_ _g92869321_))))
                                           (_g92859318_ _g92869321_))))
                                   (_g92859318_ _g92869321_))))
                           (let ((_expr93069378_ (reverse _expr93049349_))
                                 (_hd93079380_ (reverse _hd93059351_)))
                             ((lambda (_L9383_ _L9384_ _L9385_ _L9386_)
                                (let ((_g94059421_
                                       (lambda (_g94069418_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g94069418_))))
                                  (let ((_g94049475_
                                         (lambda (_g94069424_)
                                           (if (gx#stx-pair/null? _g94069424_)
                                               (if (fx>= (gx#stx-length
                                                          _g94069424_)
                                                         '0)
                                                   (let ((_g9972_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g94069424_
                           '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       (let ((_g9973_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g9972_)))
                 (if (not (fx= _g9973_ 2))
                     (error "Context expects 2 values" _g9973_)))
               (let ((_target94089426_ (values-ref _g9972_ 0))
                     (_tl94109428_ (values-ref _g9972_ 1)))
                 (if (gx#stx-null? _tl94109428_)
                     (letrec ((_loop94119431_
                               (lambda (_hd94099434_ _expr94159436_)
                                 (if (gx#stx-pair? _hd94099434_)
                                     (let ((_e94129439_
                                            (gx#syntax-e _hd94099434_)))
                                       (let ((_lp-hd94139442_
                                              (##car _e94129439_))
                                             (_lp-tl94149444_
                                              (##cdr _e94129439_)))
                                         (_loop94119431_
                                          _lp-tl94149444_
                                          (cons _lp-hd94139442_
                                                _expr94159436_))))
                                     (let ((_expr94169447_
                                            (reverse _expr94159436_)))
                                       ((lambda (_L9450_)
                                          (let ()
                                            (let ((_body9463_
                                                   (gx#stx-map
                                                    (gxc#xform-apply-compile-e
                                                     _args9283_)
                                                    _L9383_)))
                                              (gxc#xform-wrap-source
                                               (cons _L9386_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L9450_
                                                              _L9385_)
                                                             (foldr (lambda (_g94649468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g94659470_
                                     _g94669472_)
                              (cons (cons _g94659470_ (cons _g94649468_ '()))
                                    _g94669472_))
                            '()
                            _L9450_
                            _L9385_))
                   _body9463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx9282_))))
                                        _expr94169447_))))))
                       (_loop94119431_ _target94089426_ '()))
                     (_g94059421_ _g94069424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94059421_ _g94069424_))
                                               (_g94059421_ _g94069424_)))))
                                    (_g94049475_
                                     (gx#stx-map
                                      (gxc#xform-apply-compile-e _args9283_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g94779480_
                                                        _g94789482_)
                                                 (cons _g94779480_
                                                       _g94789482_))
                                               '()
                                               _L9384_)))))))
                              _tl92969336_
                              _expr93069378_
                              _hd93079380_
                              _hd92929326_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop93009344_
                                                      _target92979339_
                                                      '()
                                                      '()))
                                                   (_g92859318_
                                                    _g92869321_)))))
                                         (_g92859318_ _g92869321_))
                                     (_g92859318_ _g92869321_))))
                             (_g92859318_ _g92869321_))))
                     (_g92859318_ _g92869321_)))))
          (_g92849485_ _stx9282_)))))
  (define gxc#xform-call%
    (lambda (_stx9224_ . _args9225_)
      (let ((_g92279241_
             (lambda (_g92289238_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92289238_))))
        (let ((_g92269279_
               (lambda (_g92289244_)
                 (if (gx#stx-pair? _g92289244_)
                     (let ((_e92319246_ (gx#stx-e _g92289244_)))
                       (let ((_hd92329249_ (##car _e92319246_))
                             (_tl92339251_ (##cdr _e92319246_)))
                         (if (gx#stx-pair? _tl92339251_)
                             (let ((_e92349254_ (gx#stx-e _tl92339251_)))
                               (let ((_hd92359257_ (##car _e92349254_))
                                     (_tl92369259_ (##cdr _e92349254_)))
                                 ((lambda (_L9262_ _L9263_)
                                    (let ((_rator9276_
                                           (apply gxc#compile-e
                                                  _L9263_
                                                  _args9225_))
                                          (_rands9277_
                                           (gx#stx-map
                                            (gxc#xform-apply-compile-e
                                             _args9225_)
                                            _L9262_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator9276_ _rands9277_))
                                       _stx9224_)))
                                  _tl92369259_
                                  _hd92359257_)))
                             (_g92279241_ _g92289244_))))
                     (_g92279241_ _g92289244_)))))
          (_g92269279_ _stx9224_)))))
  (define gxc#xform-if%
    (lambda (_stx9183_ . _args9184_)
      (let ((_g91869196_
             (lambda (_g91879193_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91879193_))))
        (let ((_g91859221_
               (lambda (_g91879199_)
                 (if (gx#stx-pair? _g91879199_)
                     (let ((_e91899201_ (gx#stx-e _g91879199_)))
                       (let ((_hd91909204_ (##car _e91899201_))
                             (_tl91919206_ (##cdr _e91899201_)))
                         ((lambda (_L9209_)
                            (let ((_forms9219_
                                   (gx#stx-map
                                    (gxc#xform-apply-compile-e _args9184_)
                                    _L9209_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms9219_)
                               _stx9183_)))
                          _tl91919206_)))
                     (_g91869196_ _g91879199_)))))
          (_g91859221_ _stx9183_)))))
  (define gxc#xform-setq%
    (lambda (_stx9113_ . _args9114_)
      (let ((_g91169133_
             (lambda (_g91179130_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91179130_))))
        (let ((_g91159180_
               (lambda (_g91179136_)
                 (if (gx#stx-pair? _g91179136_)
                     (let ((_e91209138_ (gx#stx-e _g91179136_)))
                       (let ((_hd91219141_ (##car _e91209138_))
                             (_tl91229143_ (##cdr _e91209138_)))
                         (if (gx#stx-pair? _tl91229143_)
                             (let ((_e91239146_ (gx#stx-e _tl91229143_)))
                               (let ((_hd91249149_ (##car _e91239146_))
                                     (_tl91259151_ (##cdr _e91239146_)))
                                 (if (gx#stx-pair? _tl91259151_)
                                     (let ((_e91269154_
                                            (gx#stx-e _tl91259151_)))
                                       (let ((_hd91279157_ (##car _e91269154_))
                                             (_tl91289159_
                                              (##cdr _e91269154_)))
                                         (if (gx#stx-null? _tl91289159_)
                                             ((lambda (_L9162_ _L9163_)
                                                (let ((_expr9178_
                                                       (apply gxc#compile-e
                                                              _L9162_
                                                              _args9114_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L9163_
                                                               (cons _expr9178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx9113_)))
                                              _hd91279157_
                                              _hd91249149_)
                                             (_g91169133_ _g91179136_))))
                                     (_g91169133_ _g91179136_))))
                             (_g91169133_ _g91179136_))))
                     (_g91169133_ _g91179136_)))))
          (_g91159180_ _stx9113_)))))
  (define gxc#collect-type-define-values%
    (lambda (_stx9018_)
      (let ((_g90219041_
             (lambda (_g90229038_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90229038_))))
        (let ((_g90209048_ (lambda (_g90229044_) ((lambda () (void))))))
          (let ((_g90199110_
                 (lambda (_g90229051_)
                   (if (gx#stx-pair? _g90229051_)
                       (let ((_e90259053_ (gx#stx-e _g90229051_)))
                         (let ((_hd90269056_ (##car _e90259053_))
                               (_tl90279058_ (##cdr _e90259053_)))
                           (if (gx#stx-pair? _tl90279058_)
                               (let ((_e90289061_ (gx#stx-e _tl90279058_)))
                                 (let ((_hd90299064_ (##car _e90289061_))
                                       (_tl90309066_ (##cdr _e90289061_)))
                                   (if (gx#stx-pair? _hd90299064_)
                                       (let ((_e90319069_
                                              (gx#stx-e _hd90299064_)))
                                         (let ((_hd90329072_
                                                (##car _e90319069_))
                                               (_tl90339074_
                                                (##cdr _e90319069_)))
                                           (if (gx#stx-null? _tl90339074_)
                                               (if (gx#stx-pair? _tl90309066_)
                                                   (let ((_e90349077_
                                                          (gx#stx-e
                                                           _tl90309066_)))
                                                     (let ((_hd90359080_
                                                            (##car _e90349077_))
                                                           (_tl90369082_
                                                            (##cdr _e90349077_)))
                                                       (if (gx#stx-null?
                                                            _tl90369082_)
                                                           ((lambda (_L9085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L9086_)
                      (let ((_type91039105_
                             (gxc#apply-basic-expression-type _L9085_)))
                        (if _type91039105_
                            (let ((_type9108_ _type91039105_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L9086_)
                               _type9108_))
                            '#f)))
                    _hd90359080_
                    _hd90329072_)
                   (_g90209048_ _g90229051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90209048_ _g90229051_))
                                               (_g90209048_ _g90229051_))))
                                       (_g90209048_ _g90229051_))))
                               (_g90209048_ _g90229051_))))
                       (_g90209048_ _g90229051_)))))
            (_g90199110_ _stx9018_))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx8958_)
      (let ((_g89618974_
             (lambda (_g89628971_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89628971_))))
        (let ((_g89608981_ (lambda (_g89628977_) ((lambda () '#f)))))
          (let ((_g89599015_
                 (lambda (_g89628984_)
                   (if (gx#stx-pair? _g89628984_)
                       (let ((_e89648986_ (gx#stx-e _g89628984_)))
                         (let ((_hd89658989_ (##car _e89648986_))
                               (_tl89668991_ (##cdr _e89648986_)))
                           (if (gx#stx-pair? _tl89668991_)
                               (let ((_e89678994_ (gx#stx-e _tl89668991_)))
                                 (let ((_hd89688997_ (##car _e89678994_))
                                       (_tl89698999_ (##cdr _e89678994_)))
                                   (if (gx#stx-null? _tl89698999_)
                                       ((lambda (_L9002_)
                                          (gxc#compile-e _L9002_))
                                        _hd89688997_)
                                       (_g89608981_ _g89628984_))))
                               (_g89608981_ _g89628984_))))
                       (_g89608981_ _g89628984_)))))
            (_g89599015_ _stx8958_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx8699_)
      (let ((_g87028761_
             (lambda (_g87038758_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87038758_))))
        (let ((_g87018768_ (lambda (_g87038764_) ((lambda () '#f)))))
          (let ((_g87008955_
                 (lambda (_g87038771_)
                   (if (gx#stx-pair? _g87038771_)
                       (let ((_e87098773_ (gx#stx-e _g87038771_)))
                         (let ((_hd87108776_ (##car _e87098773_))
                               (_tl87118778_ (##cdr _e87098773_)))
                           (if (gx#stx-pair? _tl87118778_)
                               (let ((_e87128781_ (gx#stx-e _tl87118778_)))
                                 (let ((_hd87138784_ (##car _e87128781_))
                                       (_tl87148786_ (##cdr _e87128781_)))
                                   (if (gx#stx-pair? _tl87148786_)
                                       (let ((_e87158789_
                                              (gx#stx-e _tl87148786_)))
                                         (let ((_hd87168792_
                                                (##car _e87158789_))
                                               (_tl87178794_
                                                (##cdr _e87158789_)))
                                           (if (gx#stx-pair? _hd87168792_)
                                               (let ((_e87188797_
                                                      (gx#stx-e _hd87168792_)))
                                                 (let ((_hd87198800_
                                                        (##car _e87188797_))
                                                       (_tl87208802_
                                                        (##cdr _e87188797_)))
                                                   (if (gx#identifier?
                                                        _hd87198800_)
                                                       (if (gx#stx-eq?
                                                            '%#call
                                                            _hd87198800_)
                                                           (if (gx#stx-pair?
                                                                _tl87208802_)
                                                               (let ((_e87218805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl87208802_)))
                         (let ((_hd87228808_ (##car _e87218805_))
                               (_tl87238810_ (##cdr _e87218805_)))
                           (if (gx#stx-pair? _hd87228808_)
                               (let ((_e87248813_ (gx#stx-e _hd87228808_)))
                                 (let ((_hd87258816_ (##car _e87248813_))
                                       (_tl87268818_ (##cdr _e87248813_)))
                                   (if (gx#identifier? _hd87258816_)
                                       (if (gx#stx-eq? '%#ref _hd87258816_)
                                           (if (gx#stx-pair? _tl87268818_)
                                               (let ((_e87278821_
                                                      (gx#stx-e _tl87268818_)))
                                                 (let ((_hd87288824_
                                                        (##car _e87278821_))
                                                       (_tl87298826_
                                                        (##cdr _e87278821_)))
                                                   (if (gx#stx-null?
                                                        _tl87298826_)
                                                       (if (gx#stx-pair?
                                                            _tl87238810_)
                                                           (let ((_e87308829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl87238810_)))
                     (let ((_hd87318832_ (##car _e87308829_))
                           (_tl87328834_ (##cdr _e87308829_)))
                       (if (gx#stx-pair? _hd87318832_)
                           (let ((_e87338837_ (gx#stx-e _hd87318832_)))
                             (let ((_hd87348840_ (##car _e87338837_))
                                   (_tl87358842_ (##cdr _e87338837_)))
                               (if (gx#identifier? _hd87348840_)
                                   (if (gx#stx-eq? '%#ref _hd87348840_)
                                       (if (gx#stx-pair? _tl87358842_)
                                           (let ((_e87368845_
                                                  (gx#stx-e _tl87358842_)))
                                             (let ((_hd87378848_
                                                    (##car _e87368845_))
                                                   (_tl87388850_
                                                    (##cdr _e87368845_)))
                                               (if (gx#stx-null? _tl87388850_)
                                                   (if (gx#stx-pair?
                                                        _tl87328834_)
                                                       (let ((_e87398853_
                                                              (gx#stx-e
                                                               _tl87328834_)))
                                                         (let ((_hd87408856_
                                                                (##car _e87398853_))
                                                               (_tl87418858_
                                                                (##cdr _e87398853_)))
                                                           (if (gx#stx-pair?
                                                                _hd87408856_)
                                                               (let ((_e87428861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd87408856_)))
                         (let ((_hd87438864_ (##car _e87428861_))
                               (_tl87448866_ (##cdr _e87428861_)))
                           (if (gx#identifier? _hd87438864_)
                               (if (gx#stx-eq? '%#ref _hd87438864_)
                                   (if (gx#stx-pair? _tl87448866_)
                                       (let ((_e87458869_
                                              (gx#stx-e _tl87448866_)))
                                         (let ((_hd87468872_
                                                (##car _e87458869_))
                                               (_tl87478874_
                                                (##cdr _e87458869_)))
                                           (if (gx#stx-null? _tl87478874_)
                                               (if (gx#stx-pair? _tl87418858_)
                                                   (let ((_e87488877_
                                                          (gx#stx-e
                                                           _tl87418858_)))
                                                     (let ((_hd87498880_
                                                            (##car _e87488877_))
                                                           (_tl87508882_
                                                            (##cdr _e87488877_)))
                                                       (if (gx#stx-pair?
                                                            _hd87498880_)
                                                           (let ((_e87518885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd87498880_)))
                     (let ((_hd87528888_ (##car _e87518885_))
                           (_tl87538890_ (##cdr _e87518885_)))
                       (if (gx#identifier? _hd87528888_)
                           (if (gx#stx-eq? '%#ref _hd87528888_)
                               (if (gx#stx-pair? _tl87538890_)
                                   (let ((_e87548893_ (gx#stx-e _tl87538890_)))
                                     (let ((_hd87558896_ (##car _e87548893_))
                                           (_tl87568898_ (##cdr _e87548893_)))
                                       (if (gx#stx-null? _tl87568898_)
                                           (if (gx#stx-null? _tl87508882_)
                                               (if (gx#stx-null? _tl87178794_)
                                                   ((lambda (_L8901_
                                                             _L8902_
                                                             _L8903_
                                                             _L8904_
                                                             _L8905_)
                                                      (if (if (gx#identifier?
                                                               _L8905_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8901_)
                          (if (eq? (gxc#identifier-symbol _L8904_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L8903_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L8905_ _L8901_)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  (let ((_type-t8950_ (gxc#identifier-symbol _L8902_)))
                    (let ((_type8952_
                           (gxc#optimizer-resolve-type _type-t8950_)))
                      (let ()
                        (if (gxc#!struct-type? _type8952_)
                            (gxc#make-!struct-cons _type-t8950_)
                            '#f))))
                  (_g87018768_ _g87038771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd87558896_
                                                    _hd87468872_
                                                    _hd87378848_
                                                    _hd87288824_
                                                    _hd87138784_)
                                                   (_g87018768_ _g87038771_))
                                               (_g87018768_ _g87038771_))
                                           (_g87018768_ _g87038771_))))
                                   (_g87018768_ _g87038771_))
                               (_g87018768_ _g87038771_))
                           (_g87018768_ _g87038771_))))
                   (_g87018768_ _g87038771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g87018768_ _g87038771_))
                                               (_g87018768_ _g87038771_))))
                                       (_g87018768_ _g87038771_))
                                   (_g87018768_ _g87038771_))
                               (_g87018768_ _g87038771_))))
                       (_g87018768_ _g87038771_))))
               (_g87018768_ _g87038771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g87018768_ _g87038771_))))
                                           (_g87018768_ _g87038771_))
                                       (_g87018768_ _g87038771_))
                                   (_g87018768_ _g87038771_))))
                           (_g87018768_ _g87038771_))))
                   (_g87018768_ _g87038771_))
               (_g87018768_ _g87038771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g87018768_ _g87038771_))
                                           (_g87018768_ _g87038771_))
                                       (_g87018768_ _g87038771_))))
                               (_g87018768_ _g87038771_))))
                       (_g87018768_ _g87038771_))
                   (_g87018768_ _g87038771_))
               (_g87018768_ _g87038771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g87018768_ _g87038771_))))
                                       (_g87018768_ _g87038771_))))
                               (_g87018768_ _g87038771_))))
                       (_g87018768_ _g87038771_)))))
            (_g87008955_ _stx8699_))))))
  (define gxc#basic-expression-type-case-lambda% (lambda (_stx8697_) '#f))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx8602_)
      (let ((_g86058625_
             (lambda (_g86068622_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86068622_))))
        (let ((_g86048632_ (lambda (_g86068628_) ((lambda () '#f)))))
          (let ((_g86038694_
                 (lambda (_g86068635_)
                   (if (gx#stx-pair? _g86068635_)
                       (let ((_e86098637_ (gx#stx-e _g86068635_)))
                         (let ((_hd86108640_ (##car _e86098637_))
                               (_tl86118642_ (##cdr _e86098637_)))
                           (if (gx#stx-pair? _tl86118642_)
                               (let ((_e86128645_ (gx#stx-e _tl86118642_)))
                                 (let ((_hd86138648_ (##car _e86128645_))
                                       (_tl86148650_ (##cdr _e86128645_)))
                                   (if (gx#stx-pair? _hd86138648_)
                                       (let ((_e86158653_
                                              (gx#stx-e _hd86138648_)))
                                         (let ((_hd86168656_
                                                (##car _e86158653_))
                                               (_tl86178658_
                                                (##cdr _e86158653_)))
                                           (if (gx#identifier? _hd86168656_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd86168656_)
                                                   (if (gx#stx-pair?
                                                        _tl86178658_)
                                                       (let ((_e86188661_
                                                              (gx#stx-e
                                                               _tl86178658_)))
                                                         (let ((_hd86198664_
                                                                (##car _e86188661_))
                                                               (_tl86208666_
                                                                (##cdr _e86188661_)))
                                                           (if (gx#stx-null?
                                                                _tl86208666_)
                                                               ((lambda (_L8669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L8670_)
                          (let ((_type-e86878689_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L8670_))))
                            (if _type-e86878689_
                                (let ((_type-e8692_ _type-e86878689_))
                                  (_type-e8692_ _stx8602_ _L8669_))
                                '#f)))
                        _tl86148650_
                        _hd86198664_)
                       (_g86048632_ _g86068635_))))
               (_g86048632_ _g86068635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g86048632_ _g86068635_))
                                               (_g86048632_ _g86068635_))))
                                       (_g86048632_ _g86068635_))))
                               (_g86048632_ _g86068635_))))
                       (_g86048632_ _g86068635_)))))
            (_g86038694_ _stx8602_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx8087_ _args8088_)
      (let ((_g80928205_
             (lambda (_g80938202_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80938202_))))
        (let ((_g80918212_
               (lambda (_g80938208_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx8087_))
                      '#f))))))
          (let ((_g80908419_
                 (lambda (_g80938215_)
                   (if (gx#stx-pair? _g80938215_)
                       (let ((_e81538217_ (gx#stx-e _g80938215_)))
                         (let ((_hd81548220_ (##car _e81538217_))
                               (_tl81558222_ (##cdr _e81538217_)))
                           (if (gx#stx-pair? _hd81548220_)
                               (let ((_e81568225_ (gx#stx-e _hd81548220_)))
                                 (let ((_hd81578228_ (##car _e81568225_))
                                       (_tl81588230_ (##cdr _e81568225_)))
                                   (if (gx#identifier? _hd81578228_)
                                       (if (gx#stx-eq? '%#quote _hd81578228_)
                                           (if (gx#stx-pair? _tl81588230_)
                                               (let ((_e81598233_
                                                      (gx#stx-e _tl81588230_)))
                                                 (let ((_hd81608236_
                                                        (##car _e81598233_))
                                                       (_tl81618238_
                                                        (##cdr _e81598233_)))
                                                   (if (gx#stx-null?
                                                        _tl81618238_)
                                                       (if (gx#stx-pair?
                                                            _tl81558222_)
                                                           (let ((_e81628241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl81558222_)))
                     (let ((_hd81638244_ (##car _e81628241_))
                           (_tl81648246_ (##cdr _e81628241_)))
                       (if (gx#stx-pair? _hd81638244_)
                           (let ((_e81658249_ (gx#stx-e _hd81638244_)))
                             (let ((_hd81668252_ (##car _e81658249_))
                                   (_tl81678254_ (##cdr _e81658249_)))
                               (if (gx#identifier? _hd81668252_)
                                   (if (gx#stx-eq? '%#ref _hd81668252_)
                                       (if (gx#stx-pair? _tl81678254_)
                                           (let ((_e81688257_
                                                  (gx#stx-e _tl81678254_)))
                                             (let ((_hd81698260_
                                                    (##car _e81688257_))
                                                   (_tl81708262_
                                                    (##cdr _e81688257_)))
                                               (if (gx#stx-null? _tl81708262_)
                                                   (if (gx#stx-pair?
                                                        _tl81648246_)
                                                       (let ((_e81718265_
                                                              (gx#stx-e
                                                               _tl81648246_)))
                                                         (let ((_hd81728268_
                                                                (##car _e81718265_))
                                                               (_tl81738270_
                                                                (##cdr _e81718265_)))
                                                           (if (gx#stx-pair?
                                                                _hd81728268_)
                                                               (let ((_e81748273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd81728268_)))
                         (let ((_hd81758276_ (##car _e81748273_))
                               (_tl81768278_ (##cdr _e81748273_)))
                           (if (gx#identifier? _hd81758276_)
                               (if (gx#stx-eq? '%#quote _hd81758276_)
                                   (if (gx#stx-pair? _tl81768278_)
                                       (let ((_e81778281_
                                              (gx#stx-e _tl81768278_)))
                                         (let ((_hd81788284_
                                                (##car _e81778281_))
                                               (_tl81798286_
                                                (##cdr _e81778281_)))
                                           (if (gx#stx-null? _tl81798286_)
                                               (if (gx#stx-pair? _tl81738270_)
                                                   (let ((_e81808289_
                                                          (gx#stx-e
                                                           _tl81738270_)))
                                                     (let ((_hd81818292_
                                                            (##car _e81808289_))
                                                           (_tl81828294_
                                                            (##cdr _e81808289_)))
                                                       (if (gx#stx-pair?
                                                            _tl81828294_)
                                                           (let ((_e81838297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl81828294_)))
                     (let ((_hd81848300_ (##car _e81838297_))
                           (_tl81858302_ (##cdr _e81838297_)))
                       (if (gx#stx-pair? _hd81848300_)
                           (let ((_e81868305_ (gx#stx-e _hd81848300_)))
                             (let ((_hd81878308_ (##car _e81868305_))
                                   (_tl81888310_ (##cdr _e81868305_)))
                               (if (gx#identifier? _hd81878308_)
                                   (if (gx#stx-eq? '%#quote _hd81878308_)
                                       (if (gx#stx-pair? _tl81888310_)
                                           (let ((_e81898313_
                                                  (gx#stx-e _tl81888310_)))
                                             (let ((_hd81908316_
                                                    (##car _e81898313_))
                                                   (_tl81918318_
                                                    (##cdr _e81898313_)))
                                               (if (gx#stx-null? _tl81918318_)
                                                   (if (gx#stx-pair?
                                                        _tl81858302_)
                                                       (let ((_e81928321_
                                                              (gx#stx-e
                                                               _tl81858302_)))
                                                         (let ((_hd81938324_
                                                                (##car _e81928321_))
                                                               (_tl81948326_
                                                                (##cdr _e81928321_)))
                                                           (if (gx#stx-pair?
                                                                _hd81938324_)
                                                               (let ((_e81958329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd81938324_)))
                         (let ((_hd81968332_ (##car _e81958329_))
                               (_tl81978334_ (##cdr _e81958329_)))
                           (if (gx#identifier? _hd81968332_)
                               (if (gx#stx-eq? '%#quote _hd81968332_)
                                   (if (gx#stx-pair? _tl81978334_)
                                       (let ((_e81988337_
                                              (gx#stx-e _tl81978334_)))
                                         (let ((_hd81998340_
                                                (##car _e81988337_))
                                               (_tl82008342_
                                                (##cdr _e81988337_)))
                                           (if (gx#stx-null? _tl82008342_)
                                               (if (gx#stx-null? _tl81948326_)
                                                   ((lambda (_L8345_
                                                             _L8346_
                                                             _L8347_
                                                             _L8348_
                                                             _L8349_
                                                             _L8350_)
                                                      (let ((_super-t8396_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8349_)
                         (gxc#identifier-symbol _L8349_)
                         '#f)))
                (let ((_super-type8398_
                       (if _super-t8396_
                           (gxc#optimizer-resolve-type _super-t8396_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type8398_
                              (not (gxc#!struct-type? _super-type8398_))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx8087_
                           _L8349_)
                          '#!void)
                      (let ((_fields8414_ (gx#stx-e _L8348_))
                            (_xfields8415_
                             (if _super-type8398_
                                 (let ((_super-fields84008403_
                                        (gxc#!struct-type-fields
                                         _super-type8398_))
                                       (_super-xfields84018405_
                                        (gxc#!struct-type-xfields
                                         _super-type8398_)))
                                   (if _super-fields84008403_
                                       (if _super-xfields84018405_
                                           (let ((_super-fields8408_
                                                  _super-fields84008403_)
                                                 (_super-xfields8409_
                                                  _super-xfields84018405_))
                                             (fx+ _super-fields8408_
                                                  _super-xfields8409_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist8416_ (gx#stx-e _L8346_))
                            (_ctor8417_
                             (let ((_$e8411_ (gx#stx-e _L8345_)))
                               (if _$e8411_
                                   (values _$e8411_)
                                   (if _super-type8398_
                                       (gxc#!struct-type-ctor _super-type8398_)
                                       (if _super-t8396_ '#!void '#f))))))
                        (gxc#make-!struct-type
                         (gx#stx-e _L8350_)
                         _super-t8396_
                         _fields8414_
                         _xfields8415_
                         _ctor8417_
                         _plist8416_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd81998340_
                                                    _hd81908316_
                                                    _hd81818292_
                                                    _hd81788284_
                                                    _hd81698260_
                                                    _hd81608236_)
                                                   (_g80918212_ _g80938215_))
                                               (_g80918212_ _g80938215_))))
                                       (_g80918212_ _g80938215_))
                                   (_g80918212_ _g80938215_))
                               (_g80918212_ _g80938215_))))
                       (_g80918212_ _g80938215_))))
               (_g80918212_ _g80938215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g80918212_ _g80938215_))))
                                           (_g80918212_ _g80938215_))
                                       (_g80918212_ _g80938215_))
                                   (_g80918212_ _g80938215_))))
                           (_g80918212_ _g80938215_))))
                   (_g80918212_ _g80938215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g80918212_ _g80938215_))
                                               (_g80918212_ _g80938215_))))
                                       (_g80918212_ _g80938215_))
                                   (_g80918212_ _g80938215_))
                               (_g80918212_ _g80938215_))))
                       (_g80918212_ _g80938215_))))
               (_g80918212_ _g80938215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g80918212_ _g80938215_))))
                                           (_g80918212_ _g80938215_))
                                       (_g80918212_ _g80938215_))
                                   (_g80918212_ _g80938215_))))
                           (_g80918212_ _g80938215_))))
                   (_g80918212_ _g80938215_))
               (_g80918212_ _g80938215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g80918212_ _g80938215_))
                                           (_g80918212_ _g80938215_))
                                       (_g80918212_ _g80938215_))))
                               (_g80918212_ _g80938215_))))
                       (_g80918212_ _g80938215_)))))
            (let ((_g80898599_
                   (lambda (_g80938422_)
                     (if (gx#stx-pair? _g80938422_)
                         (let ((_e80998424_ (gx#stx-e _g80938422_)))
                           (let ((_hd81008427_ (##car _e80998424_))
                                 (_tl81018429_ (##cdr _e80998424_)))
                             (if (gx#stx-pair? _hd81008427_)
                                 (let ((_e81028432_ (gx#stx-e _hd81008427_)))
                                   (let ((_hd81038435_ (##car _e81028432_))
                                         (_tl81048437_ (##cdr _e81028432_)))
                                     (if (gx#identifier? _hd81038435_)
                                         (if (gx#stx-eq? '%#quote _hd81038435_)
                                             (if (gx#stx-pair? _tl81048437_)
                                                 (let ((_e81058440_
                                                        (gx#stx-e
                                                         _tl81048437_)))
                                                   (let ((_hd81068443_
                                                          (##car _e81058440_))
                                                         (_tl81078445_
                                                          (##cdr _e81058440_)))
                                                     (if (gx#stx-null?
                                                          _tl81078445_)
                                                         (if (gx#stx-pair?
                                                              _tl81018429_)
                                                             (let ((_e81088448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl81018429_)))
                       (let ((_hd81098451_ (##car _e81088448_))
                             (_tl81108453_ (##cdr _e81088448_)))
                         (if (gx#stx-pair? _hd81098451_)
                             (let ((_e81118456_ (gx#stx-e _hd81098451_)))
                               (let ((_hd81128459_ (##car _e81118456_))
                                     (_tl81138461_ (##cdr _e81118456_)))
                                 (if (gx#identifier? _hd81128459_)
                                     (if (gx#stx-eq? '%#quote _hd81128459_)
                                         (if (gx#stx-pair? _tl81138461_)
                                             (let ((_e81148464_
                                                    (gx#stx-e _tl81138461_)))
                                               (let ((_hd81158467_
                                                      (##car _e81148464_))
                                                     (_tl81168469_
                                                      (##cdr _e81148464_)))
                                                 (if (gx#stx-datum?
                                                      _hd81158467_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd81158467_)
                         '#f)
                 (if (gx#stx-null? _tl81168469_)
                     (if (gx#stx-pair? _tl81108453_)
                         (let ((_e81178472_ (gx#stx-e _tl81108453_)))
                           (let ((_hd81188475_ (##car _e81178472_))
                                 (_tl81198477_ (##cdr _e81178472_)))
                             (if (gx#stx-pair? _hd81188475_)
                                 (let ((_e81208480_ (gx#stx-e _hd81188475_)))
                                   (let ((_hd81218483_ (##car _e81208480_))
                                         (_tl81228485_ (##cdr _e81208480_)))
                                     (if (gx#identifier? _hd81218483_)
                                         (if (gx#stx-eq? '%#quote _hd81218483_)
                                             (if (gx#stx-pair? _tl81228485_)
                                                 (let ((_e81238488_
                                                        (gx#stx-e
                                                         _tl81228485_)))
                                                   (let ((_hd81248491_
                                                          (##car _e81238488_))
                                                         (_tl81258493_
                                                          (##cdr _e81238488_)))
                                                     (if (gx#stx-null?
                                                          _tl81258493_)
                                                         (if (gx#stx-pair?
                                                              _tl81198477_)
                                                             (let ((_e81268496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl81198477_)))
                       (let ((_hd81278499_ (##car _e81268496_))
                             (_tl81288501_ (##cdr _e81268496_)))
                         (if (gx#stx-pair? _tl81288501_)
                             (let ((_e81298504_ (gx#stx-e _tl81288501_)))
                               (let ((_hd81308507_ (##car _e81298504_))
                                     (_tl81318509_ (##cdr _e81298504_)))
                                 (if (gx#stx-pair? _hd81308507_)
                                     (let ((_e81328512_
                                            (gx#stx-e _hd81308507_)))
                                       (let ((_hd81338515_ (##car _e81328512_))
                                             (_tl81348517_
                                              (##cdr _e81328512_)))
                                         (if (gx#identifier? _hd81338515_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd81338515_)
                                                 (if (gx#stx-pair?
                                                      _tl81348517_)
                                                     (let ((_e81358520_
                                                            (gx#stx-e
                                                             _tl81348517_)))
                                                       (let ((_hd81368523_
                                                              (##car _e81358520_))
                                                             (_tl81378525_
                                                              (##cdr _e81358520_)))
                                                         (if (gx#stx-null?
                                                              _tl81378525_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl81318509_)
                         (let ((_e81388528_ (gx#stx-e _tl81318509_)))
                           (let ((_hd81398531_ (##car _e81388528_))
                                 (_tl81408533_ (##cdr _e81388528_)))
                             (if (gx#stx-pair? _hd81398531_)
                                 (let ((_e81418536_ (gx#stx-e _hd81398531_)))
                                   (let ((_hd81428539_ (##car _e81418536_))
                                         (_tl81438541_ (##cdr _e81418536_)))
                                     (if (gx#identifier? _hd81428539_)
                                         (if (gx#stx-eq? '%#quote _hd81428539_)
                                             (if (gx#stx-pair? _tl81438541_)
                                                 (let ((_e81448544_
                                                        (gx#stx-e
                                                         _tl81438541_)))
                                                   (let ((_hd81458547_
                                                          (##car _e81448544_))
                                                         (_tl81468549_
                                                          (##cdr _e81448544_)))
                                                     (if (gx#stx-null?
                                                          _tl81468549_)
                                                         (if (gx#stx-null?
                                                              _tl81408533_)
                                                             ((lambda (_L8552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L8553_
                               _L8554_
                               _L8555_
                               _L8556_)
                        (gxc#make-!struct-type
                         (gx#stx-e _L8556_)
                         '#f
                         (gx#stx-e _L8555_)
                         '0
                         (gx#stx-e _L8552_)
                         (gx#stx-e _L8553_)))
                      _hd81458547_
                      _hd81368523_
                      _hd81278499_
                      _hd81248491_
                      _hd81068443_)
                     (_g80908419_ _g80938422_))
                 (_g80908419_ _g80938422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g80908419_ _g80938422_))
                                             (_g80908419_ _g80938422_))
                                         (_g80908419_ _g80938422_))))
                                 (_g80908419_ _g80938422_))))
                         (_g80908419_ _g80938422_))
                     (_g80908419_ _g80938422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80908419_ _g80938422_))
                                                 (_g80908419_ _g80938422_))
                                             (_g80908419_ _g80938422_))))
                                     (_g80908419_ _g80938422_))))
                             (_g80908419_ _g80938422_))))
                     (_g80908419_ _g80938422_))
                 (_g80908419_ _g80938422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g80908419_ _g80938422_))
                                             (_g80908419_ _g80938422_))
                                         (_g80908419_ _g80938422_))))
                                 (_g80908419_ _g80938422_))))
                         (_g80908419_ _g80938422_))
                     (_g80908419_ _g80938422_))
                 (_g80908419_ _g80938422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80908419_
                                                      _g80938422_))))
                                             (_g80908419_ _g80938422_))
                                         (_g80908419_ _g80938422_))
                                     (_g80908419_ _g80938422_))))
                             (_g80908419_ _g80938422_))))
                     (_g80908419_ _g80938422_))
                 (_g80908419_ _g80938422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g80908419_ _g80938422_))
                                             (_g80908419_ _g80938422_))
                                         (_g80908419_ _g80938422_))))
                                 (_g80908419_ _g80938422_))))
                         (_g80908419_ _g80938422_)))))
              (_g80898599_ _args8088_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx8013_ _args8014_)
      (let ((_g80178033_
             (lambda (_g80188030_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80188030_))))
        (let ((_g80168040_ (lambda (_g80188036_) ((lambda () '#f)))))
          (let ((_g80158084_
                 (lambda (_g80188043_)
                   (if (gx#stx-pair? _g80188043_)
                       (let ((_e80208045_ (gx#stx-e _g80188043_)))
                         (let ((_hd80218048_ (##car _e80208045_))
                               (_tl80228050_ (##cdr _e80208045_)))
                           (if (gx#stx-pair? _hd80218048_)
                               (let ((_e80238053_ (gx#stx-e _hd80218048_)))
                                 (let ((_hd80248056_ (##car _e80238053_))
                                       (_tl80258058_ (##cdr _e80238053_)))
                                   (if (gx#identifier? _hd80248056_)
                                       (if (gx#stx-eq? '%#ref _hd80248056_)
                                           (if (gx#stx-pair? _tl80258058_)
                                               (let ((_e80268061_
                                                      (gx#stx-e _tl80258058_)))
                                                 (let ((_hd80278064_
                                                        (##car _e80268061_))
                                                       (_tl80288066_
                                                        (##cdr _e80268061_)))
                                                   (if (gx#stx-null?
                                                        _tl80288066_)
                                                       (if (gx#stx-null?
                                                            _tl80228050_)
                                                           ((lambda (_L8069_)
                                                              (gxc#make-!struct-pred
                                                               (gxc#identifier-symbol
                                                                _L8069_)))
                                                            _hd80278064_)
                                                           (_g80168040_
                                                            _g80188043_))
                                                       (_g80168040_
                                                        _g80188043_))))
                                               (_g80168040_ _g80188043_))
                                           (_g80168040_ _g80188043_))
                                       (_g80168040_ _g80188043_))))
                               (_g80168040_ _g80188043_))))
                       (_g80168040_ _g80188043_)))))
            (_g80158084_ _args8014_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx7897_ _args7898_)
      (let ((_g79017927_
             (lambda (_g79027924_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g79027924_))))
        (let ((_g79007934_ (lambda (_g79027930_) ((lambda () '#f)))))
          (let ((_g78998010_
                 (lambda (_g79027937_)
                   (if (gx#stx-pair? _g79027937_)
                       (let ((_e79057939_ (gx#stx-e _g79027937_)))
                         (let ((_hd79067942_ (##car _e79057939_))
                               (_tl79077944_ (##cdr _e79057939_)))
                           (if (gx#stx-pair? _hd79067942_)
                               (let ((_e79087947_ (gx#stx-e _hd79067942_)))
                                 (let ((_hd79097950_ (##car _e79087947_))
                                       (_tl79107952_ (##cdr _e79087947_)))
                                   (if (gx#identifier? _hd79097950_)
                                       (if (gx#stx-eq? '%#ref _hd79097950_)
                                           (if (gx#stx-pair? _tl79107952_)
                                               (let ((_e79117955_
                                                      (gx#stx-e _tl79107952_)))
                                                 (let ((_hd79127958_
                                                        (##car _e79117955_))
                                                       (_tl79137960_
                                                        (##cdr _e79117955_)))
                                                   (if (gx#stx-null?
                                                        _tl79137960_)
                                                       (if (gx#stx-pair?
                                                            _tl79077944_)
                                                           (let ((_e79147963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl79077944_)))
                     (let ((_hd79157966_ (##car _e79147963_))
                           (_tl79167968_ (##cdr _e79147963_)))
                       (if (gx#stx-pair? _hd79157966_)
                           (let ((_e79177971_ (gx#stx-e _hd79157966_)))
                             (let ((_hd79187974_ (##car _e79177971_))
                                   (_tl79197976_ (##cdr _e79177971_)))
                               (if (gx#identifier? _hd79187974_)
                                   (if (gx#stx-eq? '%#quote _hd79187974_)
                                       (if (gx#stx-pair? _tl79197976_)
                                           (let ((_e79207979_
                                                  (gx#stx-e _tl79197976_)))
                                             (let ((_hd79217982_
                                                    (##car _e79207979_))
                                                   (_tl79227984_
                                                    (##cdr _e79207979_)))
                                               (if (gx#stx-null? _tl79227984_)
                                                   (if (gx#stx-null?
                                                        _tl79167968_)
                                                       ((lambda (_L7987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7988_)
                  (gxc#make-!struct-getf
                   (gxc#identifier-symbol _L7988_)
                   (gx#stx-e _L7987_)))
                _hd79217982_
                _hd79127958_)
               (_g79007934_ _g79027937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g79007934_ _g79027937_))))
                                           (_g79007934_ _g79027937_))
                                       (_g79007934_ _g79027937_))
                                   (_g79007934_ _g79027937_))))
                           (_g79007934_ _g79027937_))))
                   (_g79007934_ _g79027937_))
               (_g79007934_ _g79027937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g79007934_ _g79027937_))
                                           (_g79007934_ _g79027937_))
                                       (_g79007934_ _g79027937_))))
                               (_g79007934_ _g79027937_))))
                       (_g79007934_ _g79027937_)))))
            (_g78998010_ _args7898_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx7781_ _args7782_)
      (let ((_g77857811_
             (lambda (_g77867808_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g77867808_))))
        (let ((_g77847818_ (lambda (_g77867814_) ((lambda () '#f)))))
          (let ((_g77837894_
                 (lambda (_g77867821_)
                   (if (gx#stx-pair? _g77867821_)
                       (let ((_e77897823_ (gx#stx-e _g77867821_)))
                         (let ((_hd77907826_ (##car _e77897823_))
                               (_tl77917828_ (##cdr _e77897823_)))
                           (if (gx#stx-pair? _hd77907826_)
                               (let ((_e77927831_ (gx#stx-e _hd77907826_)))
                                 (let ((_hd77937834_ (##car _e77927831_))
                                       (_tl77947836_ (##cdr _e77927831_)))
                                   (if (gx#identifier? _hd77937834_)
                                       (if (gx#stx-eq? '%#ref _hd77937834_)
                                           (if (gx#stx-pair? _tl77947836_)
                                               (let ((_e77957839_
                                                      (gx#stx-e _tl77947836_)))
                                                 (let ((_hd77967842_
                                                        (##car _e77957839_))
                                                       (_tl77977844_
                                                        (##cdr _e77957839_)))
                                                   (if (gx#stx-null?
                                                        _tl77977844_)
                                                       (if (gx#stx-pair?
                                                            _tl77917828_)
                                                           (let ((_e77987847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl77917828_)))
                     (let ((_hd77997850_ (##car _e77987847_))
                           (_tl78007852_ (##cdr _e77987847_)))
                       (if (gx#stx-pair? _hd77997850_)
                           (let ((_e78017855_ (gx#stx-e _hd77997850_)))
                             (let ((_hd78027858_ (##car _e78017855_))
                                   (_tl78037860_ (##cdr _e78017855_)))
                               (if (gx#identifier? _hd78027858_)
                                   (if (gx#stx-eq? '%#quote _hd78027858_)
                                       (if (gx#stx-pair? _tl78037860_)
                                           (let ((_e78047863_
                                                  (gx#stx-e _tl78037860_)))
                                             (let ((_hd78057866_
                                                    (##car _e78047863_))
                                                   (_tl78067868_
                                                    (##cdr _e78047863_)))
                                               (if (gx#stx-null? _tl78067868_)
                                                   (if (gx#stx-null?
                                                        _tl78007852_)
                                                       ((lambda (_L7871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7872_)
                  (gxc#make-!struct-setf
                   (gxc#identifier-symbol _L7872_)
                   (gx#stx-e _L7871_)))
                _hd78057866_
                _hd77967842_)
               (_g77847818_ _g77867821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g77847818_ _g77867821_))))
                                           (_g77847818_ _g77867821_))
                                       (_g77847818_ _g77867821_))
                                   (_g77847818_ _g77867821_))))
                           (_g77847818_ _g77867821_))))
                   (_g77847818_ _g77867821_))
               (_g77847818_ _g77867821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g77847818_ _g77867821_))
                                           (_g77847818_ _g77867821_))
                                       (_g77847818_ _g77867821_))))
                               (_g77847818_ _g77867821_))))
                       (_g77847818_ _g77867821_)))))
            (_g77837894_ _args7782_))))))
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
    (lambda (_stx7730_)
      (let ((_g77327745_
             (lambda (_g77337742_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g77337742_))))
        (let ((_g77317778_
               (lambda (_g77337748_)
                 (if (gx#stx-pair? _g77337748_)
                     (let ((_e77357750_ (gx#stx-e _g77337748_)))
                       (let ((_hd77367753_ (##car _e77357750_))
                             (_tl77377755_ (##cdr _e77357750_)))
                         (if (gx#stx-pair? _tl77377755_)
                             (let ((_e77387758_ (gx#stx-e _tl77377755_)))
                               (let ((_hd77397761_ (##car _e77387758_))
                                     (_tl77407763_ (##cdr _e77387758_)))
                                 (if (gx#stx-null? _tl77407763_)
                                     ((lambda (_L7766_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L7766_)))
                                      _hd77397761_)
                                     (_g77327745_ _g77337748_))))
                             (_g77327745_ _g77337748_))))
                     (_g77327745_ _g77337748_)))))
          (_g77317778_ _stx7730_)))))
  (define gxc#optimize-call%
    (lambda (_stx7636_)
      (let ((_g76397659_
             (lambda (_g76407656_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g76407656_))))
        (let ((_g76387666_
               (lambda (_g76407662_)
                 ((lambda () (gxc#xform-call% _stx7636_))))))
          (let ((_g76377727_
                 (lambda (_g76407669_)
                   (if (gx#stx-pair? _g76407669_)
                       (let ((_e76437671_ (gx#stx-e _g76407669_)))
                         (let ((_hd76447674_ (##car _e76437671_))
                               (_tl76457676_ (##cdr _e76437671_)))
                           (if (gx#stx-pair? _tl76457676_)
                               (let ((_e76467679_ (gx#stx-e _tl76457676_)))
                                 (let ((_hd76477682_ (##car _e76467679_))
                                       (_tl76487684_ (##cdr _e76467679_)))
                                   (if (gx#stx-pair? _hd76477682_)
                                       (let ((_e76497687_
                                              (gx#stx-e _hd76477682_)))
                                         (let ((_hd76507690_
                                                (##car _e76497687_))
                                               (_tl76517692_
                                                (##cdr _e76497687_)))
                                           (if (gx#identifier? _hd76507690_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd76507690_)
                                                   (if (gx#stx-pair?
                                                        _tl76517692_)
                                                       (let ((_e76527695_
                                                              (gx#stx-e
                                                               _tl76517692_)))
                                                         (let ((_hd76537698_
                                                                (##car _e76527695_))
                                                               (_tl76547700_
                                                                (##cdr _e76527695_)))
                                                           (if (gx#stx-null?
                                                                _tl76547700_)
                                                               ((lambda (_L7703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L7704_)
                          (let ((_rator-id7722_
                                 (gxc#identifier-symbol _L7704_)))
                            (let ((_rator-type7724_
                                   (gxc#optimizer-lookup-type _rator-id7722_)))
                              (let ()
                                (if _rator-type7724_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id7722_
                                       '" => "
                                       _rator-type7724_
                                       '" "
                                       (gxc#!type-id _rator-type7724_))
                                      (call-method
                                       _rator-type7724_
                                       'optimize-call
                                       _stx7636_
                                       _L7703_))
                                    (gxc#xform-call% _stx7636_))))))
                        _tl76487684_
                        _hd76537698_)
                       (_g76387666_ _g76407669_))))
               (_g76387666_ _g76407669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76387666_ _g76407669_))
                                               (_g76387666_ _g76407669_))))
                                       (_g76387666_ _g76407669_))))
                               (_g76387666_ _g76407669_))))
                       (_g76387666_ _g76407669_)))))
            (_g76377727_ _stx7636_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self7606_ _stx7607_ _args7608_)
      (let ((_self76097615_ _self7606_))
        (let ((_E76117619_
               (lambda () (error '"No clause matching" _self76097615_))))
          (let ((_K76127628_
                 (lambda (_alias-id7622_)
                   (let ((_alias-type7624_
                          (gxc#optimizer-lookup-type _alias-id7622_)))
                     (if (gxc#!type? _alias-type7624_)
                         (call-method
                          _alias-type7624_
                          'optimize-call
                          _stx7607_
                          _args7608_)
                         (let ((_args7626_
                                (gx#stx-map gxc#compile-e _args7608_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref (cons _alias-id7622_ '()))
                                        _args7626_))
                            _stx7607_)))))))
            (if (struct-instance? gxc#!alias::t _self76097615_)
                (let ((_e76137631_ (##vector-ref _self76097615_ '1)))
                  (let ((_alias-id7634_ _e76137631_))
                    (_K76127628_ _alias-id7634_)))
                (_E76117619_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self7461_ _stx7462_ _args7463_)
      (let ((_self74647470_ _self7461_))
        (let ((_E74667474_
               (lambda () (error '"No clause matching" _self74647470_))))
          (let ((_K74677598_
                 (lambda (_struct-t7477_)
                   (let ((_struct-type7479_
                          (gxc#optimizer-resolve-type _struct-t7477_)))
                     (let ((_struct-type74807494_ _struct-type7479_))
                       (let ((_E74847498_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type74807494_))))
                         (let ((_else74837502_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx7462_
                                   _struct-t7477_
                                   _struct-type7479_))))
                           (let ((_try-match74827510_
                                  (lambda ()
                                    (let ((_K74857507_
                                           (lambda ()
                                             (gxc#xform-call% _stx7462_))))
                                      (if (##eq? _struct-type74807494_ '#f)
                                          (_K74857507_)
                                          (_else74837502_))))))
                             (let ((_K74867573_
                                    (lambda (_plist7513_ _struct-type-id7514_)
                                      (let ((_g75177527_
                                             (lambda (_g75187524_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g75187524_))))
                                        (let ((_g75167534_
                                               (lambda (_g75187530_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx7462_))))))
                                          (let ((_g75157570_
                                                 (lambda (_g75187537_)
                                                   (if (gx#stx-pair?
                                                        _g75187537_)
                                                       (let ((_e75207539_
                                                              (gx#stx-e
                                                               _g75187537_)))
                                                         (let ((_hd75217542_
                                                                (##car _e75207539_))
                                                               (_tl75227544_
                                                                (##cdr _e75207539_)))
                                                           (if (gx#stx-null?
                                                                _tl75227544_)
                                                               ((lambda (_L7547_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr7567_ (gxc#compile-e _L7547_))
                                (_op7568_
                                 (if (if _plist7513_
                                         (assgetq 'final: _plist7513_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op7568_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id7514_ '()))
                                         (cons _expr7567_ '())))
                             _stx7462_)))
                        _hd75217542_)
                       (_g75167534_ _g75187537_))))
               (_g75167534_ _g75187537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g75157570_ _args7463_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type74807494_)
                                   (let ((_e74877576_
                                          (##vector-ref
                                           _struct-type74807494_
                                           '1)))
                                     (let ((_struct-type-id7579_ _e74877576_))
                                       (let ((_e74887581_
                                              (##vector-ref
                                               _struct-type74807494_
                                               '2)))
                                         (let ((_e74897584_
                                                (##vector-ref
                                                 _struct-type74807494_
                                                 '3)))
                                           (let ((_e74907587_
                                                  (##vector-ref
                                                   _struct-type74807494_
                                                   '4)))
                                             (let ((_e74917590_
                                                    (##vector-ref
                                                     _struct-type74807494_
                                                     '5)))
                                               (let ((_e74927593_
                                                      (##vector-ref
                                                       _struct-type74807494_
                                                       '6)))
                                                 (let ((_plist7596_
                                                        _e74927593_))
                                                   (_K74867573_
                                                    _plist7596_
                                                    _struct-type-id7579_)))))))))
                                   (_try-match74827510_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self74647470_)
                (let ((_e74687601_ (##vector-ref _self74647470_ '1)))
                  (let ((_struct-t7604_ _e74687601_))
                    (_K74677598_ _struct-t7604_)))
                (_E74667474_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self7364_ _stx7365_ _args7366_)
      (let ((_self73677373_ _self7364_))
        (let ((_E73697377_
               (lambda () (error '"No clause matching" _self73677373_))))
          (let ((_K73707453_
                 (lambda (_struct-t7380_)
                   (let ((_struct-type7382_
                          (gxc#optimizer-resolve-type _struct-t7380_)))
                     (let ((_struct-type73837396_ _struct-type7382_))
                       (let ((_E73877400_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type73837396_))))
                         (let ((_else73867404_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx7365_
                                   _struct-t7380_
                                   _struct-type7382_))))
                           (let ((_try-match73857412_
                                  (lambda ()
                                    (let ((_K73887409_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t7380_)
                                               (gxc#xform-call% _stx7365_)))))
                                      (if (##eq? _struct-type73837396_ '#f)
                                          (_K73887409_)
                                          (_else73867404_))))))
                             (let ((_K73897427_
                                    (lambda (_ctor7415_
                                             _xfields7416_
                                             _fields7417_
                                             _type-id7418_)
                                      (let ((_args7420_
                                             (gx#stx-map
                                              gxc#compile-e
                                              _args7366_)))
                                        (if (let ((_$e7422_ _ctor7415_))
                                              (if _$e7422_
                                                  _$e7422_
                                                  (not _xfields7416_)))
                                            (gxc#xform-wrap-source
                                             (cons '%#call
                                                   (cons (cons '%#ref
                                                               (cons 'make-struct-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#ref (cons _struct-t7380_ '())) _args7420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx7365_)
                                            (let ((_arity7425_
                                                   (fx+ _fields7417_
                                                        _xfields7416_)))
                                              (if (fx= _arity7425_
                                                       (length _args7420_))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '##structure '()))
                       (cons (cons '%#ref (cons _struct-t7380_ '()))
                             _args7420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx7365_)
                                                  (gxc#raise-compile-error
                                                   '"Illegal struct constructor application; arity mismatch"
                                                   _stx7365_
                                                   _struct-t7380_
                                                   _arity7425_))))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type73837396_)
                                   (let ((_e73907430_
                                          (##vector-ref
                                           _struct-type73837396_
                                           '1)))
                                     (let ((_type-id7433_ _e73907430_))
                                       (let ((_e73917435_
                                              (##vector-ref
                                               _struct-type73837396_
                                               '2)))
                                         (let ((_e73927438_
                                                (##vector-ref
                                                 _struct-type73837396_
                                                 '3)))
                                           (let ((_fields7441_ _e73927438_))
                                             (let ((_e73937443_
                                                    (##vector-ref
                                                     _struct-type73837396_
                                                     '4)))
                                               (let ((_xfields7446_
                                                      _e73937443_))
                                                 (let ((_e73947448_
                                                        (##vector-ref
                                                         _struct-type73837396_
                                                         '5)))
                                                   (let ((_ctor7451_
                                                          _e73947448_))
                                                     (_K73897427_
                                                      _ctor7451_
                                                      _xfields7446_
                                                      _fields7441_
                                                      _type-id7433_))))))))))
                                   (_try-match73857412_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self73677373_)
                (let ((_e73717456_ (##vector-ref _self73677373_ '1)))
                  (let ((_struct-t7459_ _e73717456_))
                    (_K73707453_ _struct-t7459_)))
                (_E73697377_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self7217_ _stx7218_ _args7219_)
      (let ((_self72207227_ _self7217_))
        (let ((_E72227231_
               (lambda () (error '"No clause matching" _self72207227_))))
          (let ((_K72237351_
                 (lambda (_off7234_ _struct-t7235_)
                   (let ((_struct-type7237_
                          (gxc#optimizer-resolve-type _struct-t7235_)))
                     (let ((_struct-type72387250_ _struct-type7237_))
                       (let ((_E72427254_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type72387250_))))
                         (let ((_else72417258_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx7218_
                                   _struct-t7235_
                                   _struct-type7237_))))
                           (let ((_try-match72407266_
                                  (lambda ()
                                    (let ((_K72437263_
                                           (lambda ()
                                             (gxc#xform-call% _stx7218_))))
                                      (if (##eq? _struct-type72387250_ '#f)
                                          (_K72437263_)
                                          (_else72417258_))))))
                             (let ((_K72447330_
                                    (lambda (_xfields7269_
                                             _fields7270_
                                             _struct-type-id7271_)
                                      (if _xfields7269_
                                          (let ((_g72747284_
                                                 (lambda (_g72757281_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g72757281_))))
                                            (let ((_g72737291_
                                                   (lambda (_g72757287_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx7218_))))))
                                              (let ((_g72727327_
                                                     (lambda (_g72757294_)
                                                       (if (gx#stx-pair?
                                                            _g72757294_)
                                                           (let ((_e72777296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g72757294_)))
                     (let ((_hd72787299_ (##car _e72777296_))
                           (_tl72797301_ (##cdr _e72777296_)))
                       (if (gx#stx-null? _tl72797301_)
                           ((lambda (_L7304_)
                              (let ((_expr7324_ (gxc#compile-e _L7304_))
                                    (_off7325_
                                     (fx+ _off7234_ _xfields7269_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t7235_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off7325_ '()))
                                                   (cons _expr7324_ '()))))
                                 _stx7218_)))
                            _hd72787299_)
                           (_g72737291_ _g72757294_))))
                   (_g72737291_ _g72757294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72727327_ _args7219_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id7271_)
                                            (gxc#xform-call% _stx7218_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type72387250_)
                                   (let ((_e72457333_
                                          (##vector-ref
                                           _struct-type72387250_
                                           '1)))
                                     (let ((_struct-type-id7336_ _e72457333_))
                                       (let ((_e72467338_
                                              (##vector-ref
                                               _struct-type72387250_
                                               '2)))
                                         (let ((_e72477341_
                                                (##vector-ref
                                                 _struct-type72387250_
                                                 '3)))
                                           (let ((_fields7344_ _e72477341_))
                                             (let ((_e72487346_
                                                    (##vector-ref
                                                     _struct-type72387250_
                                                     '4)))
                                               (let ((_xfields7349_
                                                      _e72487346_))
                                                 (_K72447330_
                                                  _xfields7349_
                                                  _fields7344_
                                                  _struct-type-id7336_))))))))
                                   (_try-match72407266_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self72207227_)
                (let ((_e72247354_ (##vector-ref _self72207227_ '1)))
                  (let ((_struct-t7357_ _e72247354_))
                    (let ((_e72257359_ (##vector-ref _self72207227_ '2)))
                      (let ((_off7362_ _e72257359_))
                        (_K72237351_ _off7362_ _struct-t7357_)))))
                (_E72227231_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self7053_ _stx7054_ _args7055_)
      (let ((_self70567063_ _self7053_))
        (let ((_E70587067_
               (lambda () (error '"No clause matching" _self70567063_))))
          (let ((_K70597204_
                 (lambda (_off7070_ _struct-t7071_)
                   (let ((_struct-type7073_
                          (gxc#optimizer-resolve-type _struct-t7071_)))
                     (let ((_struct-type70747086_ _struct-type7073_))
                       (let ((_E70787090_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type70747086_))))
                         (let ((_else70777094_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx7054_
                                   _struct-t7071_
                                   _struct-type7073_))))
                           (let ((_try-match70767102_
                                  (lambda ()
                                    (let ((_K70797099_
                                           (lambda ()
                                             (gxc#xform-call% _stx7054_))))
                                      (if (##eq? _struct-type70747086_ '#f)
                                          (_K70797099_)
                                          (_else70777094_))))))
                             (let ((_K70807183_
                                    (lambda (_xfields7105_
                                             _fields7106_
                                             _struct-type-id7107_)
                                      (if _xfields7105_
                                          (let ((_g71107124_
                                                 (lambda (_g71117121_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g71117121_))))
                                            (let ((_g71097131_
                                                   (lambda (_g71117127_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx7054_))))))
                                              (let ((_g71087180_
                                                     (lambda (_g71117134_)
                                                       (if (gx#stx-pair?
                                                            _g71117134_)
                                                           (let ((_e71147136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g71117134_)))
                     (let ((_hd71157139_ (##car _e71147136_))
                           (_tl71167141_ (##cdr _e71147136_)))
                       (if (gx#stx-pair? _tl71167141_)
                           (let ((_e71177144_ (gx#stx-e _tl71167141_)))
                             (let ((_hd71187147_ (##car _e71177144_))
                                   (_tl71197149_ (##cdr _e71177144_)))
                               (if (gx#stx-null? _tl71197149_)
                                   ((lambda (_L7152_ _L7153_)
                                      (let ((_expr7176_
                                             (gxc#compile-e _L7153_))
                                            (_val7177_ (gxc#compile-e _L7152_))
                                            (_off7178_
                                             (fx+ _off7070_ _xfields7105_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t7071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off7178_ '()))
                   (cons _expr7176_ (cons _val7177_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx7054_)))
                                    _hd71187147_
                                    _hd71157139_)
                                   (_g71097131_ _g71117134_))))
                           (_g71097131_ _g71117134_))))
                   (_g71097131_ _g71117134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g71087180_ _args7055_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id7107_)
                                            (gxc#xform-call% _stx7054_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type70747086_)
                                   (let ((_e70817186_
                                          (##vector-ref
                                           _struct-type70747086_
                                           '1)))
                                     (let ((_struct-type-id7189_ _e70817186_))
                                       (let ((_e70827191_
                                              (##vector-ref
                                               _struct-type70747086_
                                               '2)))
                                         (let ((_e70837194_
                                                (##vector-ref
                                                 _struct-type70747086_
                                                 '3)))
                                           (let ((_fields7197_ _e70837194_))
                                             (let ((_e70847199_
                                                    (##vector-ref
                                                     _struct-type70747086_
                                                     '4)))
                                               (let ((_xfields7202_
                                                      _e70847199_))
                                                 (_K70807183_
                                                  _xfields7202_
                                                  _fields7197_
                                                  _struct-type-id7189_))))))))
                                   (_try-match70767102_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self70567063_)
                (let ((_e70607207_ (##vector-ref _self70567063_ '1)))
                  (let ((_struct-t7210_ _e70607207_))
                    (let ((_e70617212_ (##vector-ref _self70567063_ '2)))
                      (let ((_off7215_ _e70617212_))
                        (_K70597204_ _off7215_ _struct-t7210_)))))
                (_E70587067_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx6860_)
      (let ((_generate-e6862_
             (lambda (_id7042_)
               (let ((_sym7044_ (gxc#identifier-symbol _id7042_)))
                 (let ((_$e7046_ (gxc#optimizer-lookup-type _sym7044_)))
                   (if _$e7046_
                       ((lambda (_type7049_)
                          (let ((_typedecl7051_
                                 (call-method _type7049_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym7044_ (cons _typedecl7051_ '())))))
                        _$e7046_)
                       '(begin)))))))
        (let ((_g68656903_
               (lambda (_g68666900_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g68666900_))))
          (let ((_g68646987_
                 (lambda (_g68666906_)
                   (if (gx#stx-pair? _g68666906_)
                       (let ((_e68816908_ (gx#stx-e _g68666906_)))
                         (let ((_hd68826911_ (##car _e68816908_))
                               (_tl68836913_ (##cdr _e68816908_)))
                           (if (gx#stx-pair? _tl68836913_)
                               (let ((_e68846916_ (gx#stx-e _tl68836913_)))
                                 (let ((_hd68856919_ (##car _e68846916_))
                                       (_tl68866921_ (##cdr _e68846916_)))
                                   (if (gx#stx-pair/null? _hd68856919_)
                                       (if (fx>= (gx#stx-length _hd68856919_)
                                                 '0)
                                           (let ((_g9974_ (gx#syntax-split-splice
                                                           _hd68856919_
                                                           '0)))
                                             (begin
                                               (let ((_g9975_ (values-count
                                                               _g9974_)))
                                                 (if (not (fx= _g9975_ 2))
                                                     (error "Context expects 2 values"
                                                            _g9975_)))
                                               (let ((_target68876924_
                                                      (values-ref _g9974_ 0))
                                                     (_tl68896926_
                                                      (values-ref _g9974_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl68896926_)
                                                     (letrec ((_loop68906929_
                                                               (lambda (_hd68886932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id68946934_)
                         (if (gx#stx-pair? _hd68886932_)
                             (let ((_e68916937_ (gx#stx-e _hd68886932_)))
                               (let ((_lp-hd68926940_ (##car _e68916937_))
                                     (_lp-tl68936942_ (##cdr _e68916937_)))
                                 (_loop68906929_
                                  _lp-tl68936942_
                                  (cons _lp-hd68926940_ _id68946934_))))
                             (let ((_id68956945_ (reverse _id68946934_)))
                               (if (gx#stx-pair? _tl68866921_)
                                   (let ((_e68966948_ (gx#stx-e _tl68866921_)))
                                     (let ((_hd68976951_ (##car _e68966948_))
                                           (_tl68986953_ (##cdr _e68966948_)))
                                       (if (gx#stx-null? _tl68986953_)
                                           ((lambda (_L6956_)
                                              (let ((_ids6982_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g69746977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g69756979_)
                                (cons _g69746977_ _g69756979_))
                              '()
                              _L6956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types6984_
                                                       (map _generate-e6862_
                                                            _ids6982_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types6984_)))))
                                            _id68956945_)
                                           (_g68656903_ _g68666906_))))
                                   (_g68656903_ _g68666906_)))))))
               (_loop68906929_ _target68876924_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g68656903_
                                                      _g68666906_)))))
                                           (_g68656903_ _g68666906_))
                                       (_g68656903_ _g68666906_))))
                               (_g68656903_ _g68666906_))))
                       (_g68656903_ _g68666906_)))))
            (let ((_g68637039_
                   (lambda (_g68666990_)
                     (if (gx#stx-pair? _g68666990_)
                         (let ((_e68686992_ (gx#stx-e _g68666990_)))
                           (let ((_hd68696995_ (##car _e68686992_))
                                 (_tl68706997_ (##cdr _e68686992_)))
                             (if (gx#stx-pair? _tl68706997_)
                                 (let ((_e68717000_ (gx#stx-e _tl68706997_)))
                                   (let ((_hd68727003_ (##car _e68717000_))
                                         (_tl68737005_ (##cdr _e68717000_)))
                                     (if (gx#stx-pair? _hd68727003_)
                                         (let ((_e68747008_
                                                (gx#stx-e _hd68727003_)))
                                           (let ((_hd68757011_
                                                  (##car _e68747008_))
                                                 (_tl68767013_
                                                  (##cdr _e68747008_)))
                                             (if (gx#stx-null? _tl68767013_)
                                                 (if (gx#stx-pair?
                                                      _tl68737005_)
                                                     (let ((_e68777016_
                                                            (gx#stx-e
                                                             _tl68737005_)))
                                                       (let ((_hd68787019_
                                                              (##car _e68777016_))
                                                             (_tl68797021_
                                                              (##cdr _e68777016_)))
                                                         (if (gx#stx-null?
                                                              _tl68797021_)
                                                             ((lambda (_L7024_)
                                                                (_generate-e6862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7024_))
                      _hd68757011_)
                     (_g68646987_ _g68666990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g68646987_ _g68666990_))
                                                 (_g68646987_ _g68666990_))))
                                         (_g68646987_ _g68666990_))))
                                 (_g68646987_ _g68666990_))))
                         (_g68646987_ _g68666990_)))))
              (_g68637039_ _stx6860_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self6836_)
      (let ((_self68376843_ _self6836_))
        (let ((_E68396847_
               (lambda () (error '"No clause matching" _self68376843_))))
          (let ((_K68406852_
                 (lambda (_alias-id6850_)
                   (cons '@alias (cons _alias-id6850_ '())))))
            (if (struct-instance? gxc#!alias::t _self68376843_)
                (let ((_e68416855_ (##vector-ref _self68376843_ '1)))
                  (let ((_alias-id6858_ _e68416855_))
                    (_K68406852_ _alias-id6858_)))
                (_E68396847_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self6780_)
      (let ((_self67816792_ _self6780_))
        (let ((_E67836796_
               (lambda () (error '"No clause matching" _self67816792_))))
          (let ((_K67846805_
                 (lambda (_plist6799_
                          _ctor6800_
                          _fields6801_
                          _super6802_
                          _type-id6803_)
                   (cons '@struct-type
                         (cons _type-id6803_
                               (cons _super6802_
                                     (cons _fields6801_
                                           (cons _ctor6800_
                                                 (cons _plist6799_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self67816792_)
                (let ((_e67856808_ (##vector-ref _self67816792_ '1)))
                  (let ((_type-id6811_ _e67856808_))
                    (let ((_e67866813_ (##vector-ref _self67816792_ '2)))
                      (let ((_super6816_ _e67866813_))
                        (let ((_e67876818_ (##vector-ref _self67816792_ '3)))
                          (let ((_fields6821_ _e67876818_))
                            (let ((_e67886823_
                                   (##vector-ref _self67816792_ '4)))
                              (let ((_e67896826_
                                     (##vector-ref _self67816792_ '5)))
                                (let ((_ctor6829_ _e67896826_))
                                  (let ((_e67906831_
                                         (##vector-ref _self67816792_ '6)))
                                    (let ((_plist6834_ _e67906831_))
                                      (_K67846805_
                                       _plist6834_
                                       _ctor6829_
                                       _fields6821_
                                       _super6816_
                                       _type-id6811_))))))))))))
                (_E67836796_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self6756_)
      (let ((_self67576763_ _self6756_))
        (let ((_E67596767_
               (lambda () (error '"No clause matching" _self67576763_))))
          (let ((_K67606772_
                 (lambda (_struct-t6770_)
                   (cons '@struct-pred (cons _struct-t6770_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self67576763_)
                (let ((_e67616775_ (##vector-ref _self67576763_ '1)))
                  (let ((_struct-t6778_ _e67616775_))
                    (_K67606772_ _struct-t6778_)))
                (_E67596767_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self6732_)
      (let ((_self67336739_ _self6732_))
        (let ((_E67356743_
               (lambda () (error '"No clause matching" _self67336739_))))
          (let ((_K67366748_
                 (lambda (_struct-t6746_)
                   (cons '@struct-cons (cons _struct-t6746_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self67336739_)
                (let ((_e67376751_ (##vector-ref _self67336739_ '1)))
                  (let ((_struct-t6754_ _e67376751_))
                    (_K67366748_ _struct-t6754_)))
                (_E67356743_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self6701_)
      (let ((_self67026709_ _self6701_))
        (let ((_E67046713_
               (lambda () (error '"No clause matching" _self67026709_))))
          (let ((_K67056719_
                 (lambda (_off6716_ _struct-t6717_)
                   (cons '@struct-getf
                         (cons _struct-t6717_ (cons _off6716_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self67026709_)
                (let ((_e67066722_ (##vector-ref _self67026709_ '1)))
                  (let ((_struct-t6725_ _e67066722_))
                    (let ((_e67076727_ (##vector-ref _self67026709_ '2)))
                      (let ((_off6730_ _e67076727_))
                        (_K67056719_ _off6730_ _struct-t6725_)))))
                (_E67046713_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self6670_)
      (let ((_self66716678_ _self6670_))
        (let ((_E66736682_
               (lambda () (error '"No clause matching" _self66716678_))))
          (let ((_K66746688_
                 (lambda (_off6685_ _struct-t6686_)
                   (cons '@struct-setf
                         (cons _struct-t6686_ (cons _off6685_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self66716678_)
                (let ((_e66756691_ (##vector-ref _self66716678_ '1)))
                  (let ((_struct-t6694_ _e66756691_))
                    (let ((_e66766696_ (##vector-ref _self66716678_ '2)))
                      (let ((_off6699_ _e66766696_))
                        (_K66746688_ _off6699_ _struct-t6694_)))))
                (_E66736682_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx6665_)
      (let ((_$e6667_ (gx#resolve-identifier _stx6665_)))
        (if _$e6667_ (gx#binding-id _$e6667_) (gx#stx-e _stx6665_))))))
