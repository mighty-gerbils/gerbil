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
    (lambda _$args13411_
      (apply make-struct-instance gxc#optimizer-info::t _$args13411_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self13409_)
      (direct-struct-instance-init!
       _self13409_
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
    (lambda (_ctx13404_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx13404_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx13404_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code13406_
               (gxc#optimize-source
                (##structure-ref _ctx13404_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx13404_
           _code13406_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx13365_)
      ((letrec ((_lp13367_
                 (lambda (_rest13369_)
                   (let ((_rest1337013378_ _rest13369_))
                     (let ((_E1337313382_
                            (lambda ()
                              (error '"No clause matching" _rest1337013378_))))
                       (let ((_else1337213386_ (lambda () (void))))
                         (let ((_K1337413392_
                                (lambda (_rest13389_ _hd13390_)
                                  (if (##structure-instance-of?
                                       _hd13390_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd13390_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx13365_)
                                              (_lp13367_
                                               (##structure-ref
                                                _hd13390_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd13390_)))
                                        (_lp13367_ _rest13389_))
                                      (if (##structure-direct-instance-of?
                                           _hd13390_
                                           'gx#module-import::t)
                                          (_lp13367_
                                           (cons (##structure-ref
                                                  _hd13390_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest13389_))
                                          (if (##structure-direct-instance-of?
                                               _hd13390_
                                               'gx#module-export::t)
                                              (_lp13367_
                                               (cons (##structure-ref
                                                      _hd13390_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest13389_))
                                              (if (##structure-direct-instance-of?
                                                   _hd13390_
                                                   'gx#import-set::t)
                                                  (_lp13367_
                                                   (cons (##structure-ref
                                                          _hd13390_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest13389_))
                                                  (error '"Unexpected module import"
                                                         _hd13390_))))))))
                           (if (##pair? _rest1337013378_)
                               (let ((_hd1337513395_ (##car _rest1337013378_))
                                     (_tl1337613397_ (##cdr _rest1337013378_)))
                                 (let ((_hd13400_ _hd1337513395_))
                                   (let ((_rest13402_ _tl1337613397_))
                                     (_K1337413392_ _rest13402_ _hd13400_))))
                               (_else1337213386_)))))))))
         _lp13367_)
       (##structure-ref _ctx13365_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx13360_)
      (let ((_$e13362_ (gx#core-context-prelude__opt-lambda9699 _ctx13360_)))
        (if _$e13362_ (gxc#optimizer-load-ssxi _$e13362_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx13340_)
      (if (if (##structure-instance-of? _ctx13340_ 'gx#module-context::t)
              (list? (##structure-ref _ctx13340_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht13342_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id13344_
                   (##structure-ref _ctx13340_ '1 gx#expander-context::t '#f)))
              (let ((_mod13346_ (hash-get _ht13342_ _id13344_)))
                (let ()
                  (let ((_$e13349_ _mod13346_))
                    (if _$e13349_
                        _$e13349_
                        (let ((_mod13352_
                               (gxc#optimizer-import-ssxi _ctx13340_)))
                          (let ((_val13357_
                                 (let ((_$e13354_ _mod13352_))
                                   (if _$e13354_ _$e13354_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht13342_ _id13344_ _val13357_)
                                _val13357_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx13317_)
      (let ((_catch-e13319_
             (lambda (_exn13338_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx13317_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn13338_))
                     '#!void)
                 '#f))))
        (let ((_import-e13320_
               (lambda ()
                 (let ((_str-id13323_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx13317_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path13331_
                          (let ((_odir1332413326_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1332413326_
                                (let ((_odir13329_ _odir1332413326_))
                                  (path-expand
                                   (string-append _str-id13323_ '".ss")
                                   _odir13329_))
                                '#f))))
                     (let ((_library-path13333_
                            (string->symbol
                             (string-append '":" _str-id13323_))))
                       (let ((_ssxi-path13335_
                              (if (if _artefact-path13331_
                                      (file-exists? _artefact-path13331_)
                                      '#f)
                                  _artefact-path13331_
                                  _library-path13333_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path13335_)
                             (gx#import-module__opt-lambda9734
                              _ssxi-path13335_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e13319_ _import-e13320_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args13314_
      (apply make-struct-instance gxc#!type::t _$args13314_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args13311_
      (apply make-struct-instance gxc#!alias::t _$args13311_)))
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
    (lambda _$args13308_
      (apply make-struct-instance gxc#!struct-type::t _$args13308_)))
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
    (lambda _$args13305_
      (apply make-struct-instance gxc#!procedure::t _$args13305_)))
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
    (lambda _$args13302_
      (apply make-struct-instance gxc#!struct-pred::t _$args13302_)))
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
    (lambda _$args13299_
      (apply make-struct-instance gxc#!struct-cons::t _$args13299_)))
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
    (lambda _$args13296_
      (apply make-struct-instance gxc#!struct-getf::t _$args13296_)))
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
    (lambda _$args13293_
      (apply make-struct-instance gxc#!struct-setf::t _$args13293_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type 'gxc#!lambda::t gxc#!procedure::t '2 '!lambda '() '#f))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args13290_
      (apply make-struct-instance gxc#!lambda::t _$args13290_)))
  (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch (make-struct-field-accessor gxc#!lambda::t '1))
  (define gxc#!lambda-arity-set! (make-struct-field-mutator gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch-set!
    (make-struct-field-mutator gxc#!lambda::t '1))
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
    (lambda _$args13287_
      (apply make-struct-instance gxc#!case-lambda::t _$args13287_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#optimizer-declare-type!
    (lambda (_sym13284_ _type13285_)
      (begin
        (if (##structure-instance-of? _type13285_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym13284_ _type13285_))
        (gxc#verbose
         '"declare-type "
         _sym13284_
         '" "
         (##vector->list _type13285_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym13284_
         _type13285_))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym13282_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym13282_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym13274_)
      (let ((_type1327513277_ (gxc#optimizer-lookup-type _sym13274_)))
        (if _type1327513277_
            (let ((_type13280_ _type1327513277_))
              (if (##structure-instance-of? _type13280_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type13280_ '1 gxc#!type::t '#f))
                  _type13280_))
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx13270_)
      (let ((_stx13272_ (gxc#apply-lift-top-lambdas _stx13270_)))
        (begin
          (gxc#apply-collect-type-info _stx13272_)
          (gxc#apply-optimize-call _stx13272_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl13267_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl13267_ '%#lambda false)
           (hash-put! _tbl13267_ '%#case-lambda false)
           (hash-put! _tbl13267_ '%#let-values false)
           (hash-put! _tbl13267_ '%#letrec-values false)
           (hash-put! _tbl13267_ '%#letrec*-values false)
           (hash-put! _tbl13267_ '%#quote false)
           (hash-put! _tbl13267_ '%#quote-syntax false)
           (hash-put! _tbl13267_ '%#call false)
           (hash-put! _tbl13267_ '%#if false)
           (hash-put! _tbl13267_ '%#ref false)
           (hash-put! _tbl13267_ '%#set! false)
           _tbl13267_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl13263_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl13263_ '%#begin false)
           (hash-put! _tbl13263_ '%#begin-syntax false)
           (hash-put! _tbl13263_ '%#begin-foreign false)
           (hash-put! _tbl13263_ '%#module false)
           (hash-put! _tbl13263_ '%#import false)
           (hash-put! _tbl13263_ '%#export false)
           (hash-put! _tbl13263_ '%#provide false)
           (hash-put! _tbl13263_ '%#extern false)
           (hash-put! _tbl13263_ '%#define-values false)
           (hash-put! _tbl13263_ '%#define-syntax false)
           (hash-put! _tbl13263_ '%#define-alias false)
           (hash-put! _tbl13263_ '%#declare false)
           _tbl13263_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl13259_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13259_ (force gxc#&false-special-form))
           (hash-copy! _tbl13259_ (force gxc#&false-expression))
           _tbl13259_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl13255_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl13255_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl13255_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl13255_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl13255_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl13255_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl13255_ '%#quote gxc#xform-identity)
           (hash-put! _tbl13255_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl13255_ '%#call gxc#xform-identity)
           (hash-put! _tbl13255_ '%#if gxc#xform-identity)
           (hash-put! _tbl13255_ '%#ref gxc#xform-identity)
           (hash-put! _tbl13255_ '%#set! gxc#xform-identity)
           _tbl13255_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl13251_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl13251_ '%#begin gxc#xform-identity)
           (hash-put! _tbl13251_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl13251_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl13251_ '%#module gxc#xform-identity)
           (hash-put! _tbl13251_ '%#import gxc#xform-identity)
           (hash-put! _tbl13251_ '%#export gxc#xform-identity)
           (hash-put! _tbl13251_ '%#provide gxc#xform-identity)
           (hash-put! _tbl13251_ '%#extern gxc#xform-identity)
           (hash-put! _tbl13251_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl13251_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl13251_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl13251_ '%#declare gxc#xform-identity)
           _tbl13251_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl13247_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13247_ (force gxc#&identity-special-form))
           (hash-copy! _tbl13247_ (force gxc#&identity-expression))
           _tbl13247_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl13243_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl13243_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl13243_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl13243_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl13243_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl13243_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl13243_ '%#quote gxc#xform-identity)
           (hash-put! _tbl13243_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl13243_ '%#call gxc#xform-call%)
           (hash-put! _tbl13243_ '%#if gxc#xform-if%)
           (hash-put! _tbl13243_ '%#ref gxc#xform-identity)
           (hash-put! _tbl13243_ '%#set! gxc#xform-setq%)
           _tbl13243_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl13239_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13239_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl13239_ (force gxc#&identity))
           (hash-put! _tbl13239_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl13239_ '%#define-values gxc#xform-define-values%)
           _tbl13239_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl13235_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13235_ (force gxc#&identity))
           (hash-put! _tbl13235_ '%#begin gxc#xform-begin%)
           (hash-put!
            _tbl13235_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl13235_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx13228_ . _args13230_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13228_ _args13230_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl13225_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13225_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl13225_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl13225_ '%#ref gxc#expression-subst-ref%)
           _tbl13225_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx13218_ . _args13220_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13218_ _args13220_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl13215_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13215_ (force gxc#&void-expression))
           (hash-copy! _tbl13215_ (force gxc#&void-special-form))
           (hash-put! _tbl13215_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl13215_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl13215_
            '%#define-values
            gxc#collect-type-define-values%)
           _tbl13215_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx13208_ . _args13210_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13208_ _args13210_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl13205_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13205_ (force gxc#&false))
           (hash-put! _tbl13205_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl13205_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl13205_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl13205_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl13205_ '%#ref gxc#basic-expression-type-ref%)
           _tbl13205_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx13198_ . _args13200_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13198_ _args13200_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl13195_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13195_ (force gxc#&basic-xform))
           (hash-put! _tbl13195_ '%#call gxc#optimize-call%)
           _tbl13195_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx13188_ . _args13190_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13188_ _args13190_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl13185_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13185_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl13185_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl13185_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           _tbl13185_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx13178_ . _args13180_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13178_ _args13180_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx13175_ . _args13176_) _stx13175_))
  (define gxc#xform-wrap-source
    (lambda (_stx13172_ _src-stx13173_)
      (gx#stx-wrap-source _stx13172_ (gx#stx-source _src-stx13173_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args13166_)
      (lambda (_g1316713169_)
        (apply gxc#compile-e _g1316713169_ _args13166_))))
  (define gxc#xform-begin%
    (lambda (_stx13125_ . _args13126_)
      (let ((_g1312813138_
             (lambda (_g1312913135_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1312913135_))))
        (let ((_g1312713163_
               (lambda (_g1312913141_)
                 (if (gx#stx-pair? _g1312913141_)
                     (let ((_e1313113143_ (gx#stx-e _g1312913141_)))
                       (let ((_hd1313213146_ (##car _e1313113143_))
                             (_tl1313313148_ (##cdr _e1313113143_)))
                         ((lambda (_L13151_)
                            (let ((_forms13161_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args13126_)
                                    _L13151_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms13161_)
                               _stx13125_)))
                          _tl1313313148_)))
                     (_g1312813138_ _g1312913141_)))))
          (_g1312713163_ _stx13125_)))))
  (define gxc#xform-define-values%
    (lambda (_stx13055_ . _args13056_)
      (let ((_g1305813075_
             (lambda (_g1305913072_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1305913072_))))
        (let ((_g1305713122_
               (lambda (_g1305913078_)
                 (if (gx#stx-pair? _g1305913078_)
                     (let ((_e1306213080_ (gx#stx-e _g1305913078_)))
                       (let ((_hd1306313083_ (##car _e1306213080_))
                             (_tl1306413085_ (##cdr _e1306213080_)))
                         (if (gx#stx-pair? _tl1306413085_)
                             (let ((_e1306513088_ (gx#stx-e _tl1306413085_)))
                               (let ((_hd1306613091_ (##car _e1306513088_))
                                     (_tl1306713093_ (##cdr _e1306513088_)))
                                 (if (gx#stx-pair? _tl1306713093_)
                                     (let ((_e1306813096_
                                            (gx#stx-e _tl1306713093_)))
                                       (let ((_hd1306913099_
                                              (##car _e1306813096_))
                                             (_tl1307013101_
                                              (##cdr _e1306813096_)))
                                         (if (gx#stx-null? _tl1307013101_)
                                             ((lambda (_L13104_ _L13105_)
                                                (let ((_expr13120_
                                                       (apply gxc#compile-e
                                                              _L13104_
                                                              _args13056_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L13105_
                                                               (cons _expr13120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx13055_)))
                                              _hd1306913099_
                                              _hd1306613091_)
                                             (_g1305813075_ _g1305913078_))))
                                     (_g1305813075_ _g1305913078_))))
                             (_g1305813075_ _g1305913078_))))
                     (_g1305813075_ _g1305913078_)))))
          (_g1305713122_ _stx13055_)))))
  (define gxc#xform-lambda%
    (lambda (_stx12998_ . _args12999_)
      (let ((_g1300113015_
             (lambda (_g1300213012_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1300213012_))))
        (let ((_g1300013052_
               (lambda (_g1300213018_)
                 (if (gx#stx-pair? _g1300213018_)
                     (let ((_e1300513020_ (gx#stx-e _g1300213018_)))
                       (let ((_hd1300613023_ (##car _e1300513020_))
                             (_tl1300713025_ (##cdr _e1300513020_)))
                         (if (gx#stx-pair? _tl1300713025_)
                             (let ((_e1300813028_ (gx#stx-e _tl1300713025_)))
                               (let ((_hd1300913031_ (##car _e1300813028_))
                                     (_tl1301013033_ (##cdr _e1300813028_)))
                                 ((lambda (_L13036_ _L13037_)
                                    (let ((_body13050_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args12999_)
                                            _L13036_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L13037_ _body13050_))
                                       _stx12998_)))
                                  _tl1301013033_
                                  _hd1300913031_)))
                             (_g1300113015_ _g1300213018_))))
                     (_g1300113015_ _g1300213018_)))))
          (_g1300013052_ _stx12998_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx12911_ . _args12912_)
      (let ((_clause-e12914_
             (lambda (_clause12955_)
               (let ((_g1295712968_
                      (lambda (_g1295812965_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1295812965_))))
                 (let ((_g1295612995_
                        (lambda (_g1295812971_)
                          (if (gx#stx-pair? _g1295812971_)
                              (let ((_e1296112973_ (gx#stx-e _g1295812971_)))
                                (let ((_hd1296212976_ (##car _e1296112973_))
                                      (_tl1296312978_ (##cdr _e1296112973_)))
                                  ((lambda (_L12981_ _L12982_)
                                     (let ((_body12993_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args12912_)
                                             _L12981_)))
                                       (cons _L12982_ _body12993_)))
                                   _tl1296312978_
                                   _hd1296212976_)))
                              (_g1295712968_ _g1295812971_)))))
                   (_g1295612995_ _clause12955_))))))
        (let ((_g1291612926_
               (lambda (_g1291712923_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1291712923_))))
          (let ((_g1291512952_
                 (lambda (_g1291712929_)
                   (if (gx#stx-pair? _g1291712929_)
                       (let ((_e1291912931_ (gx#stx-e _g1291712929_)))
                         (let ((_hd1292012934_ (##car _e1291912931_))
                               (_tl1292112936_ (##cdr _e1291912931_)))
                           ((lambda (_L12939_)
                              (let ((_clauses12950_
                                     (gx#stx-map1 _clause-e12914_ _L12939_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses12950_)
                                 _stx12911_)))
                            _tl1292112936_)))
                       (_g1291612926_ _g1291712929_)))))
            (_g1291512952_ _stx12911_))))))
  (define gxc#xform-let-values%
    (lambda (_stx12705_ . _args12706_)
      (let ((_g1270812741_
             (lambda (_g1270912738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1270912738_))))
        (let ((_g1270712908_
               (lambda (_g1270912744_)
                 (if (gx#stx-pair? _g1270912744_)
                     (let ((_e1271412746_ (gx#stx-e _g1270912744_)))
                       (let ((_hd1271512749_ (##car _e1271412746_))
                             (_tl1271612751_ (##cdr _e1271412746_)))
                         (if (gx#stx-pair? _tl1271612751_)
                             (let ((_e1271712754_ (gx#stx-e _tl1271612751_)))
                               (let ((_hd1271812757_ (##car _e1271712754_))
                                     (_tl1271912759_ (##cdr _e1271712754_)))
                                 (if (gx#stx-pair/null? _hd1271812757_)
                                     (if (fx>= (gx#stx-length _hd1271812757_)
                                               '0)
                                         (let ((_g13413_
                                                (gx#syntax-split-splice
                                                 _hd1271812757_
                                                 '0)))
                                           (begin
                                             (let ((_g13414_
                                                    (values-count _g13413_)))
                                               (if (not (fx= _g13414_ 2))
                                                   (error "Context expects 2 values"
                                                          _g13414_)))
                                             (let ((_target1272012762_
                                                    (values-ref _g13413_ 0))
                                                   (_tl1272212764_
                                                    (values-ref _g13413_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1272212764_)
                                                   (letrec ((_loop1272312767_
                                                             (lambda (_hd1272112770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1272712772_
                              _hd1272812774_)
                       (if (gx#stx-pair? _hd1272112770_)
                           (let ((_e1272412777_ (gx#stx-e _hd1272112770_)))
                             (let ((_lp-hd1272512780_ (##car _e1272412777_))
                                   (_lp-tl1272612782_ (##cdr _e1272412777_)))
                               (if (gx#stx-pair? _lp-hd1272512780_)
                                   (let ((_e1273112785_
                                          (gx#stx-e _lp-hd1272512780_)))
                                     (let ((_hd1273212788_
                                            (##car _e1273112785_))
                                           (_tl1273312790_
                                            (##cdr _e1273112785_)))
                                       (if (gx#stx-pair? _tl1273312790_)
                                           (let ((_e1273412793_
                                                  (gx#stx-e _tl1273312790_)))
                                             (let ((_hd1273512796_
                                                    (##car _e1273412793_))
                                                   (_tl1273612798_
                                                    (##cdr _e1273412793_)))
                                               (if (gx#stx-null?
                                                    _tl1273612798_)
                                                   (_loop1272312767_
                                                    _lp-tl1272612782_
                                                    (cons _hd1273512796_
                                                          _expr1272712772_)
                                                    (cons _hd1273212788_
                                                          _hd1272812774_))
                                                   (_g1270812741_
                                                    _g1270912744_))))
                                           (_g1270812741_ _g1270912744_))))
                                   (_g1270812741_ _g1270912744_))))
                           (let ((_expr1272912801_ (reverse _expr1272712772_))
                                 (_hd1273012803_ (reverse _hd1272812774_)))
                             ((lambda (_L12806_ _L12807_ _L12808_ _L12809_)
                                (let ((_g1282812844_
                                       (lambda (_g1282912841_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1282912841_))))
                                  (let ((_g1282712898_
                                         (lambda (_g1282912847_)
                                           (if (gx#stx-pair/null?
                                                _g1282912847_)
                                               (if (fx>= (gx#stx-length
                                                          _g1282912847_)
                                                         '0)
                                                   (let ((_g13415_
                                                          (gx#syntax-split-splice
                                                           _g1282912847_
                                                           '0)))
                                                     (begin
                                                       (let ((_g13416_
                                                              (values-count
                                                               _g13415_)))
                                                         (if (not (fx= _g13416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g13416_)))
               (let ((_target1283112849_ (values-ref _g13415_ 0))
                     (_tl1283312851_ (values-ref _g13415_ 1)))
                 (if (gx#stx-null? _tl1283312851_)
                     (letrec ((_loop1283412854_
                               (lambda (_hd1283212857_ _expr1283812859_)
                                 (if (gx#stx-pair? _hd1283212857_)
                                     (let ((_e1283512862_
                                            (gx#syntax-e _hd1283212857_)))
                                       (let ((_lp-hd1283612865_
                                              (##car _e1283512862_))
                                             (_lp-tl1283712867_
                                              (##cdr _e1283512862_)))
                                         (_loop1283412854_
                                          _lp-tl1283712867_
                                          (cons _lp-hd1283612865_
                                                _expr1283812859_))))
                                     (let ((_expr1283912870_
                                            (reverse _expr1283812859_)))
                                       ((lambda (_L12873_)
                                          (let ()
                                            (let ((_body12886_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args12706_)
                                                    _L12806_)))
                                              (gxc#xform-wrap-source
                                               (cons _L12809_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L12873_
                                                              _L12808_)
                                                             (foldr (lambda (_g1288712891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1288812893_
                                     _g1288912895_)
                              (cons (cons _g1288812893_
                                          (cons _g1288712891_ '()))
                                    _g1288912895_))
                            '()
                            _L12873_
                            _L12808_))
                   _body12886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx12705_))))
                                        _expr1283912870_))))))
                       (_loop1283412854_ _target1283112849_ '()))
                     (_g1282812844_ _g1282912847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1282812844_
                                                    _g1282912847_))
                                               (_g1282812844_
                                                _g1282912847_)))))
                                    (_g1282712898_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args12706_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1290012903_
                                                        _g1290112905_)
                                                 (cons _g1290012903_
                                                       _g1290112905_))
                                               '()
                                               _L12807_)))))))
                              _tl1271912759_
                              _expr1272912801_
                              _hd1273012803_
                              _hd1271512749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1272312767_
                                                      _target1272012762_
                                                      '()
                                                      '()))
                                                   (_g1270812741_
                                                    _g1270912744_)))))
                                         (_g1270812741_ _g1270912744_))
                                     (_g1270812741_ _g1270912744_))))
                             (_g1270812741_ _g1270912744_))))
                     (_g1270812741_ _g1270912744_)))))
          (_g1270712908_ _stx12705_)))))
  (define gxc#xform-call%
    (lambda (_stx12647_ . _args12648_)
      (let ((_g1265012664_
             (lambda (_g1265112661_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1265112661_))))
        (let ((_g1264912702_
               (lambda (_g1265112667_)
                 (if (gx#stx-pair? _g1265112667_)
                     (let ((_e1265412669_ (gx#stx-e _g1265112667_)))
                       (let ((_hd1265512672_ (##car _e1265412669_))
                             (_tl1265612674_ (##cdr _e1265412669_)))
                         (if (gx#stx-pair? _tl1265612674_)
                             (let ((_e1265712677_ (gx#stx-e _tl1265612674_)))
                               (let ((_hd1265812680_ (##car _e1265712677_))
                                     (_tl1265912682_ (##cdr _e1265712677_)))
                                 ((lambda (_L12685_ _L12686_)
                                    (let ((_rator12699_
                                           (apply gxc#compile-e
                                                  _L12686_
                                                  _args12648_))
                                          (_rands12700_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args12648_)
                                            _L12685_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator12699_ _rands12700_))
                                       _stx12647_)))
                                  _tl1265912682_
                                  _hd1265812680_)))
                             (_g1265012664_ _g1265112667_))))
                     (_g1265012664_ _g1265112667_)))))
          (_g1264912702_ _stx12647_)))))
  (define gxc#xform-if%
    (lambda (_stx12606_ . _args12607_)
      (let ((_g1260912619_
             (lambda (_g1261012616_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1261012616_))))
        (let ((_g1260812644_
               (lambda (_g1261012622_)
                 (if (gx#stx-pair? _g1261012622_)
                     (let ((_e1261212624_ (gx#stx-e _g1261012622_)))
                       (let ((_hd1261312627_ (##car _e1261212624_))
                             (_tl1261412629_ (##cdr _e1261212624_)))
                         ((lambda (_L12632_)
                            (let ((_forms12642_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args12607_)
                                    _L12632_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms12642_)
                               _stx12606_)))
                          _tl1261412629_)))
                     (_g1260912619_ _g1261012622_)))))
          (_g1260812644_ _stx12606_)))))
  (define gxc#xform-setq%
    (lambda (_stx12536_ . _args12537_)
      (let ((_g1253912556_
             (lambda (_g1254012553_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1254012553_))))
        (let ((_g1253812603_
               (lambda (_g1254012559_)
                 (if (gx#stx-pair? _g1254012559_)
                     (let ((_e1254312561_ (gx#stx-e _g1254012559_)))
                       (let ((_hd1254412564_ (##car _e1254312561_))
                             (_tl1254512566_ (##cdr _e1254312561_)))
                         (if (gx#stx-pair? _tl1254512566_)
                             (let ((_e1254612569_ (gx#stx-e _tl1254512566_)))
                               (let ((_hd1254712572_ (##car _e1254612569_))
                                     (_tl1254812574_ (##cdr _e1254612569_)))
                                 (if (gx#stx-pair? _tl1254812574_)
                                     (let ((_e1254912577_
                                            (gx#stx-e _tl1254812574_)))
                                       (let ((_hd1255012580_
                                              (##car _e1254912577_))
                                             (_tl1255112582_
                                              (##cdr _e1254912577_)))
                                         (if (gx#stx-null? _tl1255112582_)
                                             ((lambda (_L12585_ _L12586_)
                                                (let ((_expr12601_
                                                       (apply gxc#compile-e
                                                              _L12585_
                                                              _args12537_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L12586_
                                                               (cons _expr12601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12536_)))
                                              _hd1255012580_
                                              _hd1254712572_)
                                             (_g1253912556_ _g1254012559_))))
                                     (_g1253912556_ _g1254012559_))))
                             (_g1253912556_ _g1254012559_))))
                     (_g1253912556_ _g1254012559_)))))
          (_g1253812603_ _stx12536_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form11770_)
      (let ((_g1177511932_
             (lambda (_g1177611929_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1177611929_))))
        (let ((_g1177411939_ (lambda (_g1177611935_) ((lambda () '#f)))))
          (let ((_g1177312079_
                 (lambda (_g1177611942_)
                   (if (gx#stx-pair? _g1177611942_)
                       (let ((_e1189211944_ (gx#stx-e _g1177611942_)))
                         (let ((_hd1189311947_ (##car _e1189211944_))
                               (_tl1189411949_ (##cdr _e1189211944_)))
                           (if (gx#stx-pair? _tl1189411949_)
                               (let ((_e1189511952_ (gx#stx-e _tl1189411949_)))
                                 (let ((_hd1189611955_ (##car _e1189511952_))
                                       (_tl1189711957_ (##cdr _e1189511952_)))
                                   (if (gx#stx-pair? _hd1189611955_)
                                       (let ((_e1189811960_
                                              (gx#stx-e _hd1189611955_)))
                                         (let ((_hd1189911963_
                                                (##car _e1189811960_))
                                               (_tl1190011965_
                                                (##cdr _e1189811960_)))
                                           (if (gx#identifier? _hd1189911963_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1189911963_)
                                                   (if (gx#stx-pair?
                                                        _tl1190011965_)
                                                       (let ((_e1190111968_
                                                              (gx#stx-e
                                                               _tl1190011965_)))
                                                         (let ((_hd1190211971_
                                                                (##car _e1190111968_))
                                                               (_tl1190311973_
                                                                (##cdr _e1190111968_)))
                                                           (if (gx#stx-pair?
                                                                _hd1190211971_)
                                                               (let ((_e1190411976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1190211971_)))
                         (let ((_hd1190511979_ (##car _e1190411976_))
                               (_tl1190611981_ (##cdr _e1190411976_)))
                           (if (gx#identifier? _hd1190511979_)
                               (if (gx#stx-eq? '%#ref _hd1190511979_)
                                   (if (gx#stx-pair? _tl1190611981_)
                                       (let ((_e1190711984_
                                              (gx#stx-e _tl1190611981_)))
                                         (let ((_hd1190811987_
                                                (##car _e1190711984_))
                                               (_tl1190911989_
                                                (##cdr _e1190711984_)))
                                           (if (gx#stx-null? _tl1190911989_)
                                               (if (gx#stx-pair?
                                                    _tl1190311973_)
                                                   (let ((_e1191011992_
                                                          (gx#stx-e
                                                           _tl1190311973_)))
                                                     (let ((_hd1191111995_
                                                            (##car _e1191011992_))
                                                           (_tl1191211997_
                                                            (##cdr _e1191011992_)))
                                                       (if (gx#stx-pair?
                                                            _hd1191111995_)
                                                           (let ((_e1191312000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1191111995_)))
                     (let ((_hd1191412003_ (##car _e1191312000_))
                           (_tl1191512005_ (##cdr _e1191312000_)))
                       (if (gx#identifier? _hd1191412003_)
                           (if (gx#stx-eq? '%#ref _hd1191412003_)
                               (if (gx#stx-pair? _tl1191512005_)
                                   (let ((_e1191612008_
                                          (gx#stx-e _tl1191512005_)))
                                     (let ((_hd1191712011_
                                            (##car _e1191612008_))
                                           (_tl1191812013_
                                            (##cdr _e1191612008_)))
                                       (if (gx#stx-null? _tl1191812013_)
                                           (if (gx#stx-pair? _tl1191211997_)
                                               (let ((_e1191912016_
                                                      (gx#stx-e
                                                       _tl1191211997_)))
                                                 (let ((_hd1192012019_
                                                        (##car _e1191912016_))
                                                       (_tl1192112021_
                                                        (##cdr _e1191912016_)))
                                                   (if (gx#stx-pair?
                                                        _hd1192012019_)
                                                       (let ((_e1192212024_
                                                              (gx#stx-e
                                                               _hd1192012019_)))
                                                         (let ((_hd1192312027_
                                                                (##car _e1192212024_))
                                                               (_tl1192412029_
                                                                (##cdr _e1192212024_)))
                                                           (if (gx#identifier?
                                                                _hd1192312027_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1192312027_)
                           (if (gx#stx-pair? _tl1192412029_)
                               (let ((_e1192512032_ (gx#stx-e _tl1192412029_)))
                                 (let ((_hd1192612035_ (##car _e1192512032_))
                                       (_tl1192712037_ (##cdr _e1192512032_)))
                                   (if (gx#stx-null? _tl1192712037_)
                                       (if (gx#stx-null? _tl1192112021_)
                                           (if (gx#stx-null? _tl1189711957_)
                                               ((lambda (_L12040_
                                                         _L12041_
                                                         _L12042_
                                                         _L12043_)
                                                  (if (gx#identifier? _L12043_)
                                                      (if (eq? (gxc#identifier-symbol
                                                                _L12042_)
                                                               'apply)
                                                          (if (gx#free-identifier=?
                                                               _L12043_
                                                               _L12040_)
                                                              (not (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12041_
                            _L12043_))
                      '#f)
                  '#f)
              '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1192612035_
                                                _hd1191712011_
                                                _hd1190811987_
                                                _hd1189311947_)
                                               (_g1177411939_ _g1177611942_))
                                           (_g1177411939_ _g1177611942_))
                                       (_g1177411939_ _g1177611942_))))
                               (_g1177411939_ _g1177611942_))
                           (_g1177411939_ _g1177611942_))
                       (_g1177411939_ _g1177611942_))))
               (_g1177411939_ _g1177611942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1177411939_ _g1177611942_))
                                           (_g1177411939_ _g1177611942_))))
                                   (_g1177411939_ _g1177611942_))
                               (_g1177411939_ _g1177611942_))
                           (_g1177411939_ _g1177611942_))))
                   (_g1177411939_ _g1177611942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1177411939_
                                                    _g1177611942_))
                                               (_g1177411939_ _g1177611942_))))
                                       (_g1177411939_ _g1177611942_))
                                   (_g1177411939_ _g1177611942_))
                               (_g1177411939_ _g1177611942_))))
                       (_g1177411939_ _g1177611942_))))
               (_g1177411939_ _g1177611942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1177411939_
                                                    _g1177611942_))
                                               (_g1177411939_ _g1177611942_))))
                                       (_g1177411939_ _g1177611942_))))
                               (_g1177411939_ _g1177611942_))))
                       (_g1177411939_ _g1177611942_)))))
            (let ((_g1177212339_
                   (lambda (_g1177612082_)
                     (if (gx#stx-pair? _g1177612082_)
                         (let ((_e1182812084_ (gx#stx-e _g1177612082_)))
                           (let ((_hd1182912087_ (##car _e1182812084_))
                                 (_tl1183012089_ (##cdr _e1182812084_)))
                             (if (gx#stx-pair/null? _hd1182912087_)
                                 (if (fx>= (gx#stx-length _hd1182912087_) '0)
                                     (let ((_g13417_
                                            (gx#syntax-split-splice
                                             _hd1182912087_
                                             '0)))
                                       (begin
                                         (let ((_g13418_
                                                (values-count _g13417_)))
                                           (if (not (fx= _g13418_ 2))
                                               (error "Context expects 2 values"
                                                      _g13418_)))
                                         (let ((_target1183112092_
                                                (values-ref _g13417_ 0))
                                               (_tl1183312094_
                                                (values-ref _g13417_ 1)))
                                           (letrec ((_loop1183412097_
                                                     (lambda (_hd1183212100_
                                                              _arg1183812102_)
                                                       (if (gx#stx-pair?
                                                            _hd1183212100_)
                                                           (let ((_e1183512105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1183212100_)))
                     (let ((_lp-hd1183612108_ (##car _e1183512105_))
                           (_lp-tl1183712110_ (##cdr _e1183512105_)))
                       (_loop1183412097_
                        _lp-tl1183712110_
                        (cons _lp-hd1183612108_ _arg1183812102_))))
                   (let ((_arg1183912113_ (reverse _arg1183812102_)))
                     (if (gx#stx-pair? _tl1183012089_)
                         (let ((_e1184012116_ (gx#stx-e _tl1183012089_)))
                           (let ((_hd1184112119_ (##car _e1184012116_))
                                 (_tl1184212121_ (##cdr _e1184012116_)))
                             (if (gx#stx-pair? _hd1184112119_)
                                 (let ((_e1184312124_
                                        (gx#stx-e _hd1184112119_)))
                                   (let ((_hd1184412127_ (##car _e1184312124_))
                                         (_tl1184512129_
                                          (##cdr _e1184312124_)))
                                     (if (gx#identifier? _hd1184412127_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1184412127_)
                                             (if (gx#stx-pair? _tl1184512129_)
                                                 (let ((_e1184612132_
                                                        (gx#stx-e
                                                         _tl1184512129_)))
                                                   (let ((_hd1184712135_
                                                          (##car _e1184612132_))
                                                         (_tl1184812137_
                                                          (##cdr _e1184612132_)))
                                                     (if (gx#stx-pair?
                                                          _hd1184712135_)
                                                         (let ((_e1184912140_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1184712135_)))
                   (let ((_hd1185012143_ (##car _e1184912140_))
                         (_tl1185112145_ (##cdr _e1184912140_)))
                     (if (gx#identifier? _hd1185012143_)
                         (if (gx#stx-eq? '%#ref _hd1185012143_)
                             (if (gx#stx-pair? _tl1185112145_)
                                 (let ((_e1185212148_
                                        (gx#stx-e _tl1185112145_)))
                                   (let ((_hd1185312151_ (##car _e1185212148_))
                                         (_tl1185412153_
                                          (##cdr _e1185212148_)))
                                     (if (gx#stx-null? _tl1185412153_)
                                         (if (gx#stx-pair? _tl1184812137_)
                                             (let ((_e1185512156_
                                                    (gx#stx-e _tl1184812137_)))
                                               (let ((_hd1185612159_
                                                      (##car _e1185512156_))
                                                     (_tl1185712161_
                                                      (##cdr _e1185512156_)))
                                                 (if (gx#stx-pair?
                                                      _hd1185612159_)
                                                     (let ((_e1185812164_
                                                            (gx#stx-e
                                                             _hd1185612159_)))
                                                       (let ((_hd1185912167_
                                                              (##car _e1185812164_))
                                                             (_tl1186012169_
                                                              (##cdr _e1185812164_)))
                                                         (if (gx#identifier?
                                                              _hd1185912167_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1185912167_)
                         (if (gx#stx-pair? _tl1186012169_)
                             (let ((_e1186112172_ (gx#stx-e _tl1186012169_)))
                               (let ((_hd1186212175_ (##car _e1186112172_))
                                     (_tl1186312177_ (##cdr _e1186112172_)))
                                 (if (gx#stx-null? _tl1186312177_)
                                     (if (gx#stx-pair/null? _tl1185712161_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1185712161_)
                                                   '1)
                                             (let ((_g13419_
                                                    (gx#syntax-split-splice
                                                     _tl1185712161_
                                                     '1)))
                                               (begin
                                                 (let ((_g13420_
                                                        (values-count
                                                         _g13419_)))
                                                   (if (not (fx= _g13420_ 2))
                                                       (error "Context expects 2 values"
                                                              _g13420_)))
                                                 (let ((_target1186412180_
                                                        (values-ref
                                                         _g13419_
                                                         0))
                                                       (_tl1186612182_
                                                        (values-ref
                                                         _g13419_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1186612182_)
                                                       (let ((_e1187312185_
                                                              (gx#stx-e
                                                               _tl1186612182_)))
                                                         (let ((_hd1187412188_
                                                                (##car _e1187312185_))
                                                               (_tl1187512190_
                                                                (##cdr _e1187312185_)))
                                                           (if (gx#stx-pair?
                                                                _hd1187412188_)
                                                               (let ((_e1187612193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1187412188_)))
                         (let ((_hd1187712196_ (##car _e1187612193_))
                               (_tl1187812198_ (##cdr _e1187612193_)))
                           (if (gx#identifier? _hd1187712196_)
                               (if (gx#stx-eq? '%#ref _hd1187712196_)
                                   (if (gx#stx-pair? _tl1187812198_)
                                       (let ((_e1187912201_
                                              (gx#stx-e _tl1187812198_)))
                                         (let ((_hd1188012204_
                                                (##car _e1187912201_))
                                               (_tl1188112206_
                                                (##cdr _e1187912201_)))
                                           (if (gx#stx-null? _tl1188112206_)
                                               (if (gx#stx-null?
                                                    _tl1187512190_)
                                                   (letrec ((_loop1186712209_
                                                             (lambda (_hd1186512212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1187112214_)
                       (if (gx#stx-pair? _hd1186512212_)
                           (let ((_e1186812217_ (gx#stx-e _hd1186512212_)))
                             (let ((_lp-hd1186912220_ (##car _e1186812217_))
                                   (_lp-tl1187012222_ (##cdr _e1186812217_)))
                               (if (gx#stx-pair? _lp-hd1186912220_)
                                   (let ((_e1188212225_
                                          (gx#stx-e _lp-hd1186912220_)))
                                     (let ((_hd1188312228_
                                            (##car _e1188212225_))
                                           (_tl1188412230_
                                            (##cdr _e1188212225_)))
                                       (if (gx#identifier? _hd1188312228_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1188312228_)
                                               (if (gx#stx-pair?
                                                    _tl1188412230_)
                                                   (let ((_e1188512233_
                                                          (gx#stx-e
                                                           _tl1188412230_)))
                                                     (let ((_hd1188612236_
                                                            (##car _e1188512233_))
                                                           (_tl1188712238_
                                                            (##cdr _e1188512233_)))
                                                       (if (gx#stx-null?
                                                            _tl1188712238_)
                                                           (_loop1186712209_
                                                            _lp-tl1187012222_
                                                            (cons _hd1188612236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1187112214_))
                   (_g1177312079_ _g1177612082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1177312079_
                                                    _g1177612082_))
                                               (_g1177312079_ _g1177612082_))
                                           (_g1177312079_ _g1177612082_))))
                                   (_g1177312079_ _g1177612082_))))
                           (let ((_xarg1187212241_ (reverse _xarg1187112214_)))
                             (if (gx#stx-null? _tl1184212121_)
                                 ((lambda (_L12244_
                                           _L12245_
                                           _L12246_
                                           _L12247_
                                           _L12248_
                                           _L12249_)
                                    (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1229212295_
                                                           _g1229312297_)
                                                    (cons _g1229212295_
                                                          _g1229312297_))
                                                  '()
                                                  _L12249_)))
                                        (if (gx#identifier? _L12248_)
                                            (if (eq? (gxc#identifier-symbol
                                                      _L12247_)
                                                     'apply)
                                                (if (fx= (gx#stx-length
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1229912302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1230012304_)
                             (cons _g1229912302_ _g1230012304_))
                           '()
                           _L12249_)))
                 (gx#stx-length
                  (begin
                    '#!void
                    (foldr (lambda (_g1230612309_ _g1230712311_)
                             (cons _g1230612309_ _g1230712311_))
                           '()
                           _L12245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (andmap gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g1231312316_ _g1231412318_)
                                   (cons _g1231312316_ _g1231412318_))
                                 '()
                                 _L12249_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1232012323_ _g1232112325_)
                                   (cons _g1232012323_ _g1232112325_))
                                 '()
                                 _L12245_)))
                (if (gx#free-identifier=? _L12248_ _L12244_)
                    (not (find (lambda (_g1232712329_)
                                 (gx#free-identifier=? _g1232712329_ _L12246_))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1233112334_ _g1233212336_)
                                          (cons _g1233112334_ _g1233212336_))
                                        (cons _L12248_ '())
                                        _L12249_))))
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#f))
                                  _hd1188012204_
                                  _xarg1187212241_
                                  _hd1186212175_
                                  _hd1185312151_
                                  _tl1183312094_
                                  _arg1183912113_)
                                 (_g1177312079_ _g1177612082_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1186712209_
                                                      _target1186412180_
                                                      '()))
                                                   (_g1177312079_
                                                    _g1177612082_))
                                               (_g1177312079_ _g1177612082_))))
                                       (_g1177312079_ _g1177612082_))
                                   (_g1177312079_ _g1177612082_))
                               (_g1177312079_ _g1177612082_))))
                       (_g1177312079_ _g1177612082_))))
               (_g1177312079_ _g1177612082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1177312079_ _g1177612082_))
                                         (_g1177312079_ _g1177612082_))
                                     (_g1177312079_ _g1177612082_))))
                             (_g1177312079_ _g1177612082_))
                         (_g1177312079_ _g1177612082_))
                     (_g1177312079_ _g1177612082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1177312079_
                                                      _g1177612082_))))
                                             (_g1177312079_ _g1177612082_))
                                         (_g1177312079_ _g1177612082_))))
                                 (_g1177312079_ _g1177612082_))
                             (_g1177312079_ _g1177612082_))
                         (_g1177312079_ _g1177612082_))))
                 (_g1177312079_ _g1177612082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1177312079_ _g1177612082_))
                                             (_g1177312079_ _g1177612082_))
                                         (_g1177312079_ _g1177612082_))))
                                 (_g1177312079_ _g1177612082_))))
                         (_g1177312079_ _g1177612082_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1183412097_
                                              _target1183112092_
                                              '())))))
                                     (_g1177312079_ _g1177612082_))
                                 (_g1177312079_ _g1177612082_))))
                         (_g1177312079_ _g1177612082_)))))
              (let ((_g1177112533_
                     (lambda (_g1177612342_)
                       (if (gx#stx-pair? _g1177612342_)
                           (let ((_e1178012344_ (gx#stx-e _g1177612342_)))
                             (let ((_hd1178112347_ (##car _e1178012344_))
                                   (_tl1178212349_ (##cdr _e1178012344_)))
                               (if (gx#stx-pair/null? _hd1178112347_)
                                   (if (fx>= (gx#stx-length _hd1178112347_) '0)
                                       (let ((_g13421_
                                              (gx#syntax-split-splice
                                               _hd1178112347_
                                               '0)))
                                         (begin
                                           (let ((_g13422_
                                                  (values-count _g13421_)))
                                             (if (not (fx= _g13422_ 2))
                                                 (error "Context expects 2 values"
                                                        _g13422_)))
                                           (let ((_target1178312352_
                                                  (values-ref _g13421_ 0))
                                                 (_tl1178512354_
                                                  (values-ref _g13421_ 1)))
                                             (if (gx#stx-null? _tl1178512354_)
                                                 (letrec ((_loop1178612357_
                                                           (lambda (_hd1178412360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1179012362_)
                     (if (gx#stx-pair? _hd1178412360_)
                         (let ((_e1178712365_ (gx#stx-e _hd1178412360_)))
                           (let ((_lp-hd1178812368_ (##car _e1178712365_))
                                 (_lp-tl1178912370_ (##cdr _e1178712365_)))
                             (_loop1178612357_
                              _lp-tl1178912370_
                              (cons _lp-hd1178812368_ _arg1179012362_))))
                         (let ((_arg1179112373_ (reverse _arg1179012362_)))
                           (if (gx#stx-pair? _tl1178212349_)
                               (let ((_e1179212376_ (gx#stx-e _tl1178212349_)))
                                 (let ((_hd1179312379_ (##car _e1179212376_))
                                       (_tl1179412381_ (##cdr _e1179212376_)))
                                   (if (gx#stx-pair? _hd1179312379_)
                                       (let ((_e1179512384_
                                              (gx#stx-e _hd1179312379_)))
                                         (let ((_hd1179612387_
                                                (##car _e1179512384_))
                                               (_tl1179712389_
                                                (##cdr _e1179512384_)))
                                           (if (gx#identifier? _hd1179612387_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1179612387_)
                                                   (if (gx#stx-pair?
                                                        _tl1179712389_)
                                                       (let ((_e1179812392_
                                                              (gx#stx-e
                                                               _tl1179712389_)))
                                                         (let ((_hd1179912395_
                                                                (##car _e1179812392_))
                                                               (_tl1180012397_
                                                                (##cdr _e1179812392_)))
                                                           (if (gx#stx-pair?
                                                                _hd1179912395_)
                                                               (let ((_e1180112400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1179912395_)))
                         (let ((_hd1180212403_ (##car _e1180112400_))
                               (_tl1180312405_ (##cdr _e1180112400_)))
                           (if (gx#identifier? _hd1180212403_)
                               (if (gx#stx-eq? '%#ref _hd1180212403_)
                                   (if (gx#stx-pair? _tl1180312405_)
                                       (let ((_e1180412408_
                                              (gx#stx-e _tl1180312405_)))
                                         (let ((_hd1180512411_
                                                (##car _e1180412408_))
                                               (_tl1180612413_
                                                (##cdr _e1180412408_)))
                                           (if (gx#stx-null? _tl1180612413_)
                                               (if (gx#stx-pair/null?
                                                    _tl1180012397_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1180012397_)
                                                             '0)
                                                       (let ((_g13423_
                                                              (gx#syntax-split-splice
                                                               _tl1180012397_
                                                               '0)))
                                                         (begin
                                                           (let ((_g13424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g13423_)))
                     (if (not (fx= _g13424_ 2))
                         (error "Context expects 2 values" _g13424_)))
                   (let ((_target1180712416_ (values-ref _g13423_ 0))
                         (_tl1180912418_ (values-ref _g13423_ 1)))
                     (if (gx#stx-null? _tl1180912418_)
                         (letrec ((_loop1181012421_
                                   (lambda (_hd1180812424_ _xarg1181412426_)
                                     (if (gx#stx-pair? _hd1180812424_)
                                         (let ((_e1181112429_
                                                (gx#stx-e _hd1180812424_)))
                                           (let ((_lp-hd1181212432_
                                                  (##car _e1181112429_))
                                                 (_lp-tl1181312434_
                                                  (##cdr _e1181112429_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1181212432_)
                                                 (let ((_e1181612437_
                                                        (gx#stx-e
                                                         _lp-hd1181212432_)))
                                                   (let ((_hd1181712440_
                                                          (##car _e1181612437_))
                                                         (_tl1181812442_
                                                          (##cdr _e1181612437_)))
                                                     (if (gx#identifier?
                                                          _hd1181712440_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1181712440_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1181812442_)
                         (let ((_e1181912445_ (gx#stx-e _tl1181812442_)))
                           (let ((_hd1182012448_ (##car _e1181912445_))
                                 (_tl1182112450_ (##cdr _e1181912445_)))
                             (if (gx#stx-null? _tl1182112450_)
                                 (_loop1181012421_
                                  _lp-tl1181312434_
                                  (cons _hd1182012448_ _xarg1181412426_))
                                 (_g1177212339_ _g1177612342_))))
                         (_g1177212339_ _g1177612342_))
                     (_g1177212339_ _g1177612342_))
                 (_g1177212339_ _g1177612342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1177212339_
                                                  _g1177612342_))))
                                         (let ((_xarg1181512453_
                                                (reverse _xarg1181412426_)))
                                           (if (gx#stx-null? _tl1179412381_)
                                               ((lambda (_L12456_
                                                         _L12457_
                                                         _L12458_)
                                                  (if (gx#identifier-list?
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1248612489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1248712491_)
                          (cons _g1248612489_ _g1248712491_))
                        '()
                        _L12458_)))
              (if (fx= (gx#stx-length
                        (begin
                          '#!void
                          (foldr (lambda (_g1249312496_ _g1249412498_)
                                   (cons _g1249312496_ _g1249412498_))
                                 '()
                                 _L12458_)))
                       (gx#stx-length
                        (begin
                          '#!void
                          (foldr (lambda (_g1250012503_ _g1250112505_)
                                   (cons _g1250012503_ _g1250112505_))
                                 '()
                                 _L12456_))))
                  (if (andmap gx#free-identifier=?
                              (begin
                                '#!void
                                (foldr (lambda (_g1250712510_ _g1250812512_)
                                         (cons _g1250712510_ _g1250812512_))
                                       '()
                                       _L12458_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1251412517_ _g1251512519_)
                                         (cons _g1251412517_ _g1251512519_))
                                       '()
                                       _L12456_)))
                      (not (find (lambda (_g1252112523_)
                                   (gx#free-identifier=?
                                    _g1252112523_
                                    _L12457_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1252512528_ _g1252612530_)
                                            (cons _g1252512528_ _g1252612530_))
                                          '()
                                          _L12458_))))
                      '#f)
                  '#f)
              '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1181512453_
                                                _hd1180512411_
                                                _arg1179112373_)
                                               (_g1177212339_
                                                _g1177612342_)))))))
                           (_loop1181012421_ _target1180712416_ '()))
                         (_g1177212339_ _g1177612342_)))))
               (_g1177212339_ _g1177612342_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1177212339_
                                                    _g1177612342_))
                                               (_g1177212339_ _g1177612342_))))
                                       (_g1177212339_ _g1177612342_))
                                   (_g1177212339_ _g1177612342_))
                               (_g1177212339_ _g1177612342_))))
                       (_g1177212339_ _g1177612342_))))
               (_g1177212339_ _g1177612342_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1177212339_
                                                    _g1177612342_))
                                               (_g1177212339_ _g1177612342_))))
                                       (_g1177212339_ _g1177612342_))))
                               (_g1177212339_ _g1177612342_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1178612357_
                                                    _target1178312352_
                                                    '()))
                                                 (_g1177212339_
                                                  _g1177612342_)))))
                                       (_g1177212339_ _g1177612342_))
                                   (_g1177212339_ _g1177612342_))))
                           (_g1177212339_ _g1177612342_)))))
                (_g1177112533_ _form11770_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form11300_)
      (let ((_g1130411412_
             (lambda (_g1130511409_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1130511409_))))
        (let ((_g1130311529_
               (lambda (_g1130511415_)
                 (if (gx#stx-pair? _g1130511415_)
                     (let ((_e1137811417_ (gx#stx-e _g1130511415_)))
                       (let ((_hd1137911420_ (##car _e1137811417_))
                             (_tl1138011422_ (##cdr _e1137811417_)))
                         (if (gx#stx-pair? _tl1138011422_)
                             (let ((_e1138111425_ (gx#stx-e _tl1138011422_)))
                               (let ((_hd1138211428_ (##car _e1138111425_))
                                     (_tl1138311430_ (##cdr _e1138111425_)))
                                 (if (gx#stx-pair? _hd1138211428_)
                                     (let ((_e1138411433_
                                            (gx#stx-e _hd1138211428_)))
                                       (let ((_hd1138511436_
                                              (##car _e1138411433_))
                                             (_tl1138611438_
                                              (##cdr _e1138411433_)))
                                         (if (gx#identifier? _hd1138511436_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1138511436_)
                                                 (if (gx#stx-pair?
                                                      _tl1138611438_)
                                                     (let ((_e1138711441_
                                                            (gx#stx-e
                                                             _tl1138611438_)))
                                                       (let ((_hd1138811444_
                                                              (##car _e1138711441_))
                                                             (_tl1138911446_
                                                              (##cdr _e1138711441_)))
                                                         (if (gx#stx-pair?
                                                              _hd1138811444_)
                                                             (let ((_e1139011449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1138811444_)))
                       (let ((_hd1139111452_ (##car _e1139011449_))
                             (_tl1139211454_ (##cdr _e1139011449_)))
                         (if (gx#identifier? _hd1139111452_)
                             (if (gx#stx-eq? '%#ref _hd1139111452_)
                                 (if (gx#stx-pair? _tl1139211454_)
                                     (let ((_e1139311457_
                                            (gx#stx-e _tl1139211454_)))
                                       (let ((_hd1139411460_
                                              (##car _e1139311457_))
                                             (_tl1139511462_
                                              (##cdr _e1139311457_)))
                                         (if (gx#stx-null? _tl1139511462_)
                                             (if (gx#stx-pair? _tl1138911446_)
                                                 (let ((_e1139611465_
                                                        (gx#stx-e
                                                         _tl1138911446_)))
                                                   (let ((_hd1139711468_
                                                          (##car _e1139611465_))
                                                         (_tl1139811470_
                                                          (##cdr _e1139611465_)))
                                                     (if (gx#stx-pair?
                                                          _hd1139711468_)
                                                         (let ((_e1139911473_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1139711468_)))
                   (let ((_hd1140011476_ (##car _e1139911473_))
                         (_tl1140111478_ (##cdr _e1139911473_)))
                     (if (gx#identifier? _hd1140011476_)
                         (if (gx#stx-eq? '%#ref _hd1140011476_)
                             (if (gx#stx-pair? _tl1140111478_)
                                 (let ((_e1140211481_
                                        (gx#stx-e _tl1140111478_)))
                                   (let ((_hd1140311484_ (##car _e1140211481_))
                                         (_tl1140411486_
                                          (##cdr _e1140211481_)))
                                     (if (gx#stx-null? _tl1140411486_)
                                         (if (gx#stx-pair? _tl1139811470_)
                                             (let ((_e1140511489_
                                                    (gx#stx-e _tl1139811470_)))
                                               (let ((_hd1140611492_
                                                      (##car _e1140511489_))
                                                     (_tl1140711494_
                                                      (##cdr _e1140511489_)))
                                                 (if (gx#stx-null?
                                                      _tl1140711494_)
                                                     (if (gx#stx-null?
                                                          _tl1138311430_)
                                                         ((lambda (_L11497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L11498_
                           _L11499_)
                    (gxc#identifier-symbol _L11497_))
                  _hd1140311484_
                  _hd1139411460_
                  _hd1137911420_)
                 (_g1130411412_ _g1130511415_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1130411412_
                                                      _g1130511415_))))
                                             (_g1130411412_ _g1130511415_))
                                         (_g1130411412_ _g1130511415_))))
                                 (_g1130411412_ _g1130511415_))
                             (_g1130411412_ _g1130511415_))
                         (_g1130411412_ _g1130511415_))))
                 (_g1130411412_ _g1130511415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1130411412_ _g1130511415_))
                                             (_g1130411412_ _g1130511415_))))
                                     (_g1130411412_ _g1130511415_))
                                 (_g1130411412_ _g1130511415_))
                             (_g1130411412_ _g1130511415_))))
                     (_g1130411412_ _g1130511415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1130411412_
                                                      _g1130511415_))
                                                 (_g1130411412_ _g1130511415_))
                                             (_g1130411412_ _g1130511415_))))
                                     (_g1130411412_ _g1130511415_))))
                             (_g1130411412_ _g1130511415_))))
                     (_g1130411412_ _g1130511415_)))))
          (let ((_g1130211665_
                 (lambda (_g1130511532_)
                   (if (gx#stx-pair? _g1130511532_)
                       (let ((_e1133911534_ (gx#stx-e _g1130511532_)))
                         (let ((_hd1134011537_ (##car _e1133911534_))
                               (_tl1134111539_ (##cdr _e1133911534_)))
                           (if (gx#stx-pair/null? _hd1134011537_)
                               (if (fx>= (gx#stx-length _hd1134011537_) '0)
                                   (let ((_g13425_
                                          (gx#syntax-split-splice
                                           _hd1134011537_
                                           '0)))
                                     (begin
                                       (let ((_g13426_
                                              (values-count _g13425_)))
                                         (if (not (fx= _g13426_ 2))
                                             (error "Context expects 2 values"
                                                    _g13426_)))
                                       (let ((_target1134211542_
                                              (values-ref _g13425_ 0))
                                             (_tl1134411544_
                                              (values-ref _g13425_ 1)))
                                         (letrec ((_loop1134511547_
                                                   (lambda (_hd1134311550_
                                                            _arg1134911552_)
                                                     (if (gx#stx-pair?
                                                          _hd1134311550_)
                                                         (let ((_e1134611555_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1134311550_)))
                   (let ((_lp-hd1134711558_ (##car _e1134611555_))
                         (_lp-tl1134811560_ (##cdr _e1134611555_)))
                     (_loop1134511547_
                      _lp-tl1134811560_
                      (cons _lp-hd1134711558_ _arg1134911552_))))
                 (let ((_arg1135011563_ (reverse _arg1134911552_)))
                   (if (gx#stx-pair? _tl1134111539_)
                       (let ((_e1135111566_ (gx#stx-e _tl1134111539_)))
                         (let ((_hd1135211569_ (##car _e1135111566_))
                               (_tl1135311571_ (##cdr _e1135111566_)))
                           (if (gx#stx-pair? _hd1135211569_)
                               (let ((_e1135411574_ (gx#stx-e _hd1135211569_)))
                                 (let ((_hd1135511577_ (##car _e1135411574_))
                                       (_tl1135611579_ (##cdr _e1135411574_)))
                                   (if (gx#identifier? _hd1135511577_)
                                       (if (gx#stx-eq? '%#call _hd1135511577_)
                                           (if (gx#stx-pair? _tl1135611579_)
                                               (let ((_e1135711582_
                                                      (gx#stx-e
                                                       _tl1135611579_)))
                                                 (let ((_hd1135811585_
                                                        (##car _e1135711582_))
                                                       (_tl1135911587_
                                                        (##cdr _e1135711582_)))
                                                   (if (gx#stx-pair?
                                                        _hd1135811585_)
                                                       (let ((_e1136011590_
                                                              (gx#stx-e
                                                               _hd1135811585_)))
                                                         (let ((_hd1136111593_
                                                                (##car _e1136011590_))
                                                               (_tl1136211595_
                                                                (##cdr _e1136011590_)))
                                                           (if (gx#identifier?
                                                                _hd1136111593_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1136111593_)
                           (if (gx#stx-pair? _tl1136211595_)
                               (let ((_e1136311598_ (gx#stx-e _tl1136211595_)))
                                 (let ((_hd1136411601_ (##car _e1136311598_))
                                       (_tl1136511603_ (##cdr _e1136311598_)))
                                   (if (gx#stx-null? _tl1136511603_)
                                       (if (gx#stx-pair? _tl1135911587_)
                                           (let ((_e1136611606_
                                                  (gx#stx-e _tl1135911587_)))
                                             (let ((_hd1136711609_
                                                    (##car _e1136611606_))
                                                   (_tl1136811611_
                                                    (##cdr _e1136611606_)))
                                               (if (gx#stx-pair?
                                                    _hd1136711609_)
                                                   (let ((_e1136911614_
                                                          (gx#stx-e
                                                           _hd1136711609_)))
                                                     (let ((_hd1137011617_
                                                            (##car _e1136911614_))
                                                           (_tl1137111619_
                                                            (##cdr _e1136911614_)))
                                                       (if (gx#identifier?
                                                            _hd1137011617_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1137011617_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1137111619_)
                           (let ((_e1137211622_ (gx#stx-e _tl1137111619_)))
                             (let ((_hd1137311625_ (##car _e1137211622_))
                                   (_tl1137411627_ (##cdr _e1137211622_)))
                               (if (gx#stx-null? _tl1137411627_)
                                   (if (gx#stx-null? _tl1135311571_)
                                       ((lambda (_L11630_
                                                 _L11631_
                                                 _L11632_
                                                 _L11633_)
                                          (gxc#identifier-symbol _L11630_))
                                        _hd1137311625_
                                        _hd1136411601_
                                        _tl1134411544_
                                        _arg1135011563_)
                                       (_g1130311529_ _g1130511532_))
                                   (_g1130311529_ _g1130511532_))))
                           (_g1130311529_ _g1130511532_))
                       (_g1130311529_ _g1130511532_))
                   (_g1130311529_ _g1130511532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1130311529_
                                                    _g1130511532_))))
                                           (_g1130311529_ _g1130511532_))
                                       (_g1130311529_ _g1130511532_))))
                               (_g1130311529_ _g1130511532_))
                           (_g1130311529_ _g1130511532_))
                       (_g1130311529_ _g1130511532_))))
               (_g1130311529_ _g1130511532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1130311529_ _g1130511532_))
                                           (_g1130311529_ _g1130511532_))
                                       (_g1130311529_ _g1130511532_))))
                               (_g1130311529_ _g1130511532_))))
                       (_g1130311529_ _g1130511532_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1134511547_
                                            _target1134211542_
                                            '())))))
                                   (_g1130311529_ _g1130511532_))
                               (_g1130311529_ _g1130511532_))))
                       (_g1130311529_ _g1130511532_)))))
            (let ((_g1130111767_
                   (lambda (_g1130511668_)
                     (if (gx#stx-pair? _g1130511668_)
                         (let ((_e1130811670_ (gx#stx-e _g1130511668_)))
                           (let ((_hd1130911673_ (##car _e1130811670_))
                                 (_tl1131011675_ (##cdr _e1130811670_)))
                             (if (gx#stx-pair/null? _hd1130911673_)
                                 (if (fx>= (gx#stx-length _hd1130911673_) '0)
                                     (let ((_g13427_
                                            (gx#syntax-split-splice
                                             _hd1130911673_
                                             '0)))
                                       (begin
                                         (let ((_g13428_
                                                (values-count _g13427_)))
                                           (if (not (fx= _g13428_ 2))
                                               (error "Context expects 2 values"
                                                      _g13428_)))
                                         (let ((_target1131111678_
                                                (values-ref _g13427_ 0))
                                               (_tl1131311680_
                                                (values-ref _g13427_ 1)))
                                           (if (gx#stx-null? _tl1131311680_)
                                               (letrec ((_loop1131411683_
                                                         (lambda (_hd1131211686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1131811688_)
                   (if (gx#stx-pair? _hd1131211686_)
                       (let ((_e1131511691_ (gx#stx-e _hd1131211686_)))
                         (let ((_lp-hd1131611694_ (##car _e1131511691_))
                               (_lp-tl1131711696_ (##cdr _e1131511691_)))
                           (_loop1131411683_
                            _lp-tl1131711696_
                            (cons _lp-hd1131611694_ _arg1131811688_))))
                       (let ((_arg1131911699_ (reverse _arg1131811688_)))
                         (if (gx#stx-pair? _tl1131011675_)
                             (let ((_e1132011702_ (gx#stx-e _tl1131011675_)))
                               (let ((_hd1132111705_ (##car _e1132011702_))
                                     (_tl1132211707_ (##cdr _e1132011702_)))
                                 (if (gx#stx-pair? _hd1132111705_)
                                     (let ((_e1132311710_
                                            (gx#stx-e _hd1132111705_)))
                                       (let ((_hd1132411713_
                                              (##car _e1132311710_))
                                             (_tl1132511715_
                                              (##cdr _e1132311710_)))
                                         (if (gx#identifier? _hd1132411713_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1132411713_)
                                                 (if (gx#stx-pair?
                                                      _tl1132511715_)
                                                     (let ((_e1132611718_
                                                            (gx#stx-e
                                                             _tl1132511715_)))
                                                       (let ((_hd1132711721_
                                                              (##car _e1132611718_))
                                                             (_tl1132811723_
                                                              (##cdr _e1132611718_)))
                                                         (if (gx#stx-pair?
                                                              _hd1132711721_)
                                                             (let ((_e1132911726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1132711721_)))
                       (let ((_hd1133011729_ (##car _e1132911726_))
                             (_tl1133111731_ (##cdr _e1132911726_)))
                         (if (gx#identifier? _hd1133011729_)
                             (if (gx#stx-eq? '%#ref _hd1133011729_)
                                 (if (gx#stx-pair? _tl1133111731_)
                                     (let ((_e1133211734_
                                            (gx#stx-e _tl1133111731_)))
                                       (let ((_hd1133311737_
                                              (##car _e1133211734_))
                                             (_tl1133411739_
                                              (##cdr _e1133211734_)))
                                         (if (gx#stx-null? _tl1133411739_)
                                             (if (gx#stx-null? _tl1132211707_)
                                                 ((lambda (_L11742_ _L11743_)
                                                    (gxc#identifier-symbol
                                                     _L11742_))
                                                  _hd1133311737_
                                                  _arg1131911699_)
                                                 (_g1130211665_ _g1130511668_))
                                             (_g1130211665_ _g1130511668_))))
                                     (_g1130211665_ _g1130511668_))
                                 (_g1130211665_ _g1130511668_))
                             (_g1130211665_ _g1130511668_))))
                     (_g1130211665_ _g1130511668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1130211665_
                                                      _g1130511668_))
                                                 (_g1130211665_ _g1130511668_))
                                             (_g1130211665_ _g1130511668_))))
                                     (_g1130211665_ _g1130511668_))))
                             (_g1130211665_ _g1130511668_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1131411683_
                                                  _target1131111678_
                                                  '()))
                                               (_g1130211665_
                                                _g1130511668_)))))
                                     (_g1130211665_ _g1130511668_))
                                 (_g1130211665_ _g1130511668_))))
                         (_g1130211665_ _g1130511668_)))))
              (_g1130111767_ _form11300_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form11143_)
      (let ((_g1114711178_
             (lambda (_g1114811175_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1114811175_))))
        (let ((_g1114611191_
               (lambda (_g1114811181_)
                 ((lambda (_L11183_) (cons '0 '())) _g1114811181_))))
          (let ((_g1114511240_
                 (lambda (_g1114811194_)
                   (if (gx#stx-pair/null? _g1114811194_)
                       (if (fx>= (gx#stx-length _g1114811194_) '0)
                           (let ((_g13429_
                                  (gx#syntax-split-splice _g1114811194_ '0)))
                             (begin
                               (let ((_g13430_ (values-count _g13429_)))
                                 (if (not (fx= _g13430_ 2))
                                     (error "Context expects 2 values"
                                            _g13430_)))
                               (let ((_target1116411196_
                                      (values-ref _g13429_ 0))
                                     (_tl1116611198_ (values-ref _g13429_ 1)))
                                 (letrec ((_loop1116711201_
                                           (lambda (_hd1116511204_
                                                    _arg1117111206_)
                                             (if (gx#stx-pair? _hd1116511204_)
                                                 (let ((_e1116811209_
                                                        (gx#stx-e
                                                         _hd1116511204_)))
                                                   (let ((_lp-hd1116911212_
                                                          (##car _e1116811209_))
                                                         (_lp-tl1117011214_
                                                          (##cdr _e1116811209_)))
                                                     (_loop1116711201_
                                                      _lp-tl1117011214_
                                                      (cons _lp-hd1116911212_
                                                            _arg1117111206_))))
                                                 (let ((_arg1117211217_
                                                        (reverse _arg1117111206_)))
                                                   ((lambda (_L11220_ _L11221_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1123211235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1123311237_)
                                (cons _g1123211235_ _g1123311237_))
                              '()
                              _L11221_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1116611198_
                                                    _arg1117211217_))))))
                                   (_loop1116711201_
                                    _target1116411196_
                                    '())))))
                           (_g1114611191_ _g1114811194_))
                       (_g1114611191_ _g1114811194_)))))
            (let ((_g1114411297_
                   (lambda (_g1114811243_)
                     (if (gx#stx-pair? _g1114811243_)
                         (let ((_e1115011245_ (gx#stx-e _g1114811243_)))
                           (let ((_hd1115111248_ (##car _e1115011245_))
                                 (_tl1115211250_ (##cdr _e1115011245_)))
                             (if (gx#stx-pair/null? _hd1115111248_)
                                 (if (fx>= (gx#stx-length _hd1115111248_) '0)
                                     (let ((_g13431_
                                            (gx#syntax-split-splice
                                             _hd1115111248_
                                             '0)))
                                       (begin
                                         (let ((_g13432_
                                                (values-count _g13431_)))
                                           (if (not (fx= _g13432_ 2))
                                               (error "Context expects 2 values"
                                                      _g13432_)))
                                         (let ((_target1115311253_
                                                (values-ref _g13431_ 0))
                                               (_tl1115511255_
                                                (values-ref _g13431_ 1)))
                                           (if (gx#stx-null? _tl1115511255_)
                                               (letrec ((_loop1115611258_
                                                         (lambda (_hd1115411261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1116011263_)
                   (if (gx#stx-pair? _hd1115411261_)
                       (let ((_e1115711266_ (gx#stx-e _hd1115411261_)))
                         (let ((_lp-hd1115811269_ (##car _e1115711266_))
                               (_lp-tl1115911271_ (##cdr _e1115711266_)))
                           (_loop1115611258_
                            _lp-tl1115911271_
                            (cons _lp-hd1115811269_ _arg1116011263_))))
                       (let ((_arg1116111274_ (reverse _arg1116011263_)))
                         ((lambda (_L11277_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1128911292_ _g1129011294_)
                                        (cons _g1128911292_ _g1129011294_))
                                      '()
                                      _L11277_))))
                          _arg1116111274_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1115611258_
                                                  _target1115311253_
                                                  '()))
                                               (_g1114511240_
                                                _g1114811243_)))))
                                     (_g1114511240_ _g1114811243_))
                                 (_g1114511240_ _g1114811243_))))
                         (_g1114511240_ _g1114811243_)))))
              (_g1114411297_ _form11143_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx10416_)
      (let ((_lambda-expr?10418_
             (lambda (_expr11096_)
               (let ((_g1109911109_
                      (lambda (_g1110011106_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1110011106_))))
                 (let ((_g1109811116_
                        (lambda (_g1110011112_) ((lambda () '#f)))))
                   (let ((_g1109711140_
                          (lambda (_g1110011119_)
                            (if (gx#stx-pair? _g1110011119_)
                                (let ((_e1110211121_ (gx#stx-e _g1110011119_)))
                                  (let ((_hd1110311124_ (##car _e1110211121_))
                                        (_tl1110411126_ (##cdr _e1110211121_)))
                                    (if (gx#identifier? _hd1110311124_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1110311124_)
                                            ((lambda (_L11129_) '#t)
                                             _tl1110411126_)
                                            (_g1109811116_ _g1110011119_))
                                        (_g1109811116_ _g1110011119_))))
                                (_g1109811116_ _g1110011119_)))))
                     (_g1109711140_ _expr11096_)))))))
        (let ((_case-lambda-expr?10419_
               (lambda (_expr11049_)
                 (let ((_g1105211062_
                        (lambda (_g1105311059_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1105311059_))))
                   (let ((_g1105111069_
                          (lambda (_g1105311065_) ((lambda () '#f)))))
                     (let ((_g1105011093_
                            (lambda (_g1105311072_)
                              (if (gx#stx-pair? _g1105311072_)
                                  (let ((_e1105511074_
                                         (gx#stx-e _g1105311072_)))
                                    (let ((_hd1105611077_
                                           (##car _e1105511074_))
                                          (_tl1105711079_
                                           (##cdr _e1105511074_)))
                                      (if (gx#identifier? _hd1105611077_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1105611077_)
                                              ((lambda (_L11082_) '#t)
                                               _tl1105711079_)
                                              (_g1105111069_ _g1105311072_))
                                          (_g1105111069_ _g1105311072_))))
                                  (_g1105111069_ _g1105311072_)))))
                       (_g1105011093_ _expr11049_)))))))
          (let ((_lift-case-lambda-clauses10420_
                 (lambda (_id10810_ _clauses10811_)
                   ((letrec ((_lp10813_
                              (lambda (_rest10815_
                                       _ids10816_
                                       _impls10817_
                                       _clauses10818_)
                                (let ((_rest1081910827_ _rest10815_))
                                  (let ((_E1082210831_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1081910827_))))
                                    (let ((_else1082110835_
                                           (lambda ()
                                             (values (reverse _ids10816_)
                                                     (reverse _impls10817_)
                                                     (reverse _clauses10818_)))))
                                      (let ((_K1082311037_
                                             (lambda (_rest10838_
                                                      _clause10839_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause10839_)
                                                   (_lp10813_
                                                    _rest10838_
                                                    _ids10816_
                                                    _impls10817_
                                                    (cons _clause10839_
                                                          _clauses10818_))
                                                   (let ((_g1084110852_
                                                          (lambda (_g1084210849_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1084210849_))))
                                                     (let ((_g1084011034_
                                                            (lambda (_g1084210855_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1084210855_)
                          (let ((_e1084510857_ (gx#stx-e _g1084210855_)))
                            (let ((_hd1084610860_ (##car _e1084510857_))
                                  (_tl1084710862_ (##cdr _e1084510857_)))
                              ((lambda (_L10865_ _L10866_)
                                 (let ((_id10883_
                                        (make-symbol
                                         (gx#stx-e _id10810_)
                                         '"__"
                                         (length _clauses10818_))))
                                   (let ((_impl10885_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L10866_ _L10865_))
                                           _stx10416_)))
                                     (let ((_clause11031_
                                            (let ((_g1088910917_
                                                   (lambda (_g1089010914_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1089010914_))))
                                              (let ((_g1088810932_
                                                     (lambda (_g1089010920_)
                                                       ((lambda (_L10922_)
                                                          (cons _L10866_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id10883_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L10922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx10416_)
                              '())))
                _g1089010920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1088710981_
                                                       (lambda (_g1089010935_)
                                                         (if (gx#stx-pair/null?
                                                              _g1089010935_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1089010935_)
                               '0)
                         (let ((_g13435_
                                (gx#syntax-split-splice _g1089010935_ '0)))
                           (begin
                             (let ((_g13436_ (values-count _g13435_)))
                               (if (not (fx= _g13436_ 2))
                                   (error "Context expects 2 values"
                                          _g13436_)))
                             (let ((_target1090310937_ (values-ref _g13435_ 0))
                                   (_tl1090510939_ (values-ref _g13435_ 1)))
                               (letrec ((_loop1090610942_
                                         (lambda (_hd1090410945_
                                                  _arg1091010947_)
                                           (if (gx#stx-pair? _hd1090410945_)
                                               (let ((_e1090710950_
                                                      (gx#stx-e
                                                       _hd1090410945_)))
                                                 (let ((_lp-hd1090810953_
                                                        (##car _e1090710950_))
                                                       (_lp-tl1090910955_
                                                        (##cdr _e1090710950_)))
                                                   (_loop1090610942_
                                                    _lp-tl1090910955_
                                                    (cons _lp-hd1090810953_
                                                          _arg1091010947_))))
                                               (let ((_arg1091110958_
                                                      (reverse _arg1091010947_)))
                                                 ((lambda (_L10961_ _L10962_)
                                                    (cons _L10866_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id10883_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L10961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1097310976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1097410978_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1097310976_ '()))
                           _g1097410978_))
                   '()
                   _L10962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx10416_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1090510939_
                                                  _arg1091110958_))))))
                                 (_loop1090610942_ _target1090310937_ '())))))
                         (_g1088810932_ _g1089010935_))
                     (_g1088810932_ _g1089010935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1088611028_
                                                         (lambda (_g1089010984_)
                                                           (if (gx#stx-pair/null?
                                                                _g1089010984_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1089010984_)
                                 '0)
                           (let ((_g13437_
                                  (gx#syntax-split-splice _g1089010984_ '0)))
                             (begin
                               (let ((_g13438_ (values-count _g13437_)))
                                 (if (not (fx= _g13438_ 2))
                                     (error "Context expects 2 values"
                                            _g13438_)))
                               (let ((_target1089210986_
                                      (values-ref _g13437_ 0))
                                     (_tl1089410988_ (values-ref _g13437_ 1)))
                                 (if (gx#stx-null? _tl1089410988_)
                                     (letrec ((_loop1089510991_
                                               (lambda (_hd1089310994_
                                                        _arg1089910996_)
                                                 (if (gx#stx-pair?
                                                      _hd1089310994_)
                                                     (let ((_e1089610999_
                                                            (gx#stx-e
                                                             _hd1089310994_)))
                                                       (let ((_lp-hd1089711002_
                                                              (##car _e1089610999_))
                                                             (_lp-tl1089811004_
                                                              (##cdr _e1089610999_)))
                                                         (_loop1089510991_
                                                          _lp-tl1089811004_
                                                          (cons _lp-hd1089711002_
                                                                _arg1089910996_))))
                                                     (let ((_arg1090011007_
                                                            (reverse _arg1089910996_)))
                                                       ((lambda (_L11010_)
                                                          (cons _L10866_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id10883_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1102011023_
                                                             _g1102111025_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1102011023_ '()))
                    _g1102111025_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L11010_))))
                               _stx10416_)
                              '())))
                _arg1090011007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1089510991_
                                        _target1089210986_
                                        '()))
                                     (_g1088710981_ _g1089010984_)))))
                           (_g1088710981_ _g1089010984_))
                       (_g1088710981_ _g1089010984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1088611028_
                                                     _L10866_)))))))
                                       (let ()
                                         (_lp10813_
                                          _rest10838_
                                          (cons _id10883_ _ids10816_)
                                          (cons _impl10885_ _impls10817_)
                                          (cons _clause11031_
                                                _clauses10818_)))))))
                               _tl1084710862_
                               _hd1084610860_)))
                          (_g1084110852_ _g1084210855_)))))
               (_g1084011034_ _clause10839_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1081910827_)
                                            (let ((_hd1082411040_
                                                   (##car _rest1081910827_))
                                                  (_tl1082511042_
                                                   (##cdr _rest1081910827_)))
                                              (let ((_clause11045_
                                                     _hd1082411040_))
                                                (let ((_rest11047_
                                                       _tl1082511042_))
                                                  (_K1082311037_
                                                   _rest11047_
                                                   _clause11045_))))
                                            (_else1082110835_)))))))))
                      _lp10813_)
                    _clauses10811_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def10421_
                   (lambda (_id10807_ _impl10808_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id10807_ '()) (cons _impl10808_ '())))
                      _stx10416_))))
              (let ((_g1042610500_
                     (lambda (_g1042710497_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1042710497_))))
                (let ((_g1042510507_
                       (lambda (_g1042710503_) ((lambda () _stx10416_)))))
                  (let ((_g1042410643_
                         (lambda (_g1042710510_)
                           (if (gx#stx-pair? _g1042710510_)
                               (let ((_e1046310512_ (gx#stx-e _g1042710510_)))
                                 (let ((_hd1046410515_ (##car _e1046310512_))
                                       (_tl1046510517_ (##cdr _e1046310512_)))
                                   (if (gx#stx-pair? _tl1046510517_)
                                       (let ((_e1046610520_
                                              (gx#stx-e _tl1046510517_)))
                                         (let ((_hd1046710523_
                                                (##car _e1046610520_))
                                               (_tl1046810525_
                                                (##cdr _e1046610520_)))
                                           (if (gx#stx-pair? _hd1046710523_)
                                               (let ((_e1046910528_
                                                      (gx#stx-e
                                                       _hd1046710523_)))
                                                 (let ((_hd1047010531_
                                                        (##car _e1046910528_))
                                                       (_tl1047110533_
                                                        (##cdr _e1046910528_)))
                                                   (if (gx#stx-null?
                                                        _tl1047110533_)
                                                       (if (gx#stx-pair?
                                                            _tl1046810525_)
                                                           (let ((_e1047210536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1046810525_)))
                     (let ((_hd1047310539_ (##car _e1047210536_))
                           (_tl1047410541_ (##cdr _e1047210536_)))
                       (if (gx#stx-pair? _hd1047310539_)
                           (let ((_e1047510544_ (gx#stx-e _hd1047310539_)))
                             (let ((_hd1047610547_ (##car _e1047510544_))
                                   (_tl1047710549_ (##cdr _e1047510544_)))
                               (if (gx#identifier? _hd1047610547_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1047610547_)
                                       (if (gx#stx-pair? _tl1047710549_)
                                           (let ((_e1047810552_
                                                  (gx#stx-e _tl1047710549_)))
                                             (let ((_hd1047910555_
                                                    (##car _e1047810552_))
                                                   (_tl1048010557_
                                                    (##cdr _e1047810552_)))
                                               (if (gx#stx-pair?
                                                    _hd1047910555_)
                                                   (let ((_e1048110560_
                                                          (gx#stx-e
                                                           _hd1047910555_)))
                                                     (let ((_hd1048210563_
                                                            (##car _e1048110560_))
                                                           (_tl1048310565_
                                                            (##cdr _e1048110560_)))
                                                       (if (gx#stx-pair?
                                                            _hd1048210563_)
                                                           (let ((_e1048410568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1048210563_)))
                     (let ((_hd1048510571_ (##car _e1048410568_))
                           (_tl1048610573_ (##cdr _e1048410568_)))
                       (if (gx#stx-pair? _hd1048510571_)
                           (let ((_e1048710576_ (gx#stx-e _hd1048510571_)))
                             (let ((_hd1048810579_ (##car _e1048710576_))
                                   (_tl1048910581_ (##cdr _e1048710576_)))
                               (if (gx#stx-null? _tl1048910581_)
                                   (if (gx#stx-pair? _tl1048610573_)
                                       (let ((_e1049010584_
                                              (gx#stx-e _tl1048610573_)))
                                         (let ((_hd1049110587_
                                                (##car _e1049010584_))
                                               (_tl1049210589_
                                                (##cdr _e1049010584_)))
                                           (if (gx#stx-null? _tl1049210589_)
                                               (if (gx#stx-null?
                                                    _tl1048310565_)
                                                   (if (gx#stx-pair?
                                                        _tl1048010557_)
                                                       (let ((_e1049310592_
                                                              (gx#stx-e
                                                               _tl1048010557_)))
                                                         (let ((_hd1049410595_
                                                                (##car _e1049310592_))
                                                               (_tl1049510597_
                                                                (##cdr _e1049310592_)))
                                                           (if (gx#stx-null?
                                                                _tl1049510597_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1047410541_)
                           ((lambda (_L10600_ _L10601_ _L10602_ _L10603_)
                              (if (if (gx#identifier? _L10603_)
                                      (if (gx#identifier? _L10602_)
                                          (if (_lambda-expr?10418_ _L10601_)
                                              (_case-lambda-expr?10419_
                                               _L10600_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id10638_
                                         (make-symbol
                                          (gx#stx-e _L10603_)
                                          '"__"
                                          (gx#stx-e _L10602_))))
                                    (let ((_new-case-lambda-expr10640_
                                           (gxc#apply-expression-subst
                                            _L10600_
                                            _L10602_
                                            _lambda-id10638_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L10603_)
                                           '" => "
                                           _lambda-id10638_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id10638_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id10638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L10601_ '())))
                _stx10416_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L10603_ '())
                                   (cons _new-case-lambda-expr10640_ '())))
                       _stx10416_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx10416_)))))
                                  (_g1042510507_ _g1042710510_)))
                            _hd1049410595_
                            _hd1049110587_
                            _hd1048810579_
                            _hd1047010531_)
                           (_g1042510507_ _g1042710510_))
                       (_g1042510507_ _g1042710510_))))
               (_g1042510507_ _g1042710510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1042510507_
                                                    _g1042710510_))
                                               (_g1042510507_ _g1042710510_))))
                                       (_g1042510507_ _g1042710510_))
                                   (_g1042510507_ _g1042710510_))))
                           (_g1042510507_ _g1042710510_))))
                   (_g1042510507_ _g1042710510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1042510507_
                                                    _g1042710510_))))
                                           (_g1042510507_ _g1042710510_))
                                       (_g1042510507_ _g1042710510_))
                                   (_g1042510507_ _g1042710510_))))
                           (_g1042510507_ _g1042710510_))))
                   (_g1042510507_ _g1042710510_))
               (_g1042510507_ _g1042710510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1042510507_ _g1042710510_))))
                                       (_g1042510507_ _g1042710510_))))
                               (_g1042510507_ _g1042710510_)))))
                    (let ((_g1042310740_
                           (lambda (_g1042710646_)
                             (if (gx#stx-pair? _g1042710646_)
                                 (let ((_e1044710648_
                                        (gx#stx-e _g1042710646_)))
                                   (let ((_hd1044810651_ (##car _e1044710648_))
                                         (_tl1044910653_
                                          (##cdr _e1044710648_)))
                                     (if (gx#stx-pair? _tl1044910653_)
                                         (let ((_e1045010656_
                                                (gx#stx-e _tl1044910653_)))
                                           (let ((_hd1045110659_
                                                  (##car _e1045010656_))
                                                 (_tl1045210661_
                                                  (##cdr _e1045010656_)))
                                             (if (gx#stx-pair? _hd1045110659_)
                                                 (let ((_e1045310664_
                                                        (gx#stx-e
                                                         _hd1045110659_)))
                                                   (let ((_hd1045410667_
                                                          (##car _e1045310664_))
                                                         (_tl1045510669_
                                                          (##cdr _e1045310664_)))
                                                     (if (gx#stx-null?
                                                          _tl1045510669_)
                                                         (if (gx#stx-pair?
                                                              _tl1045210661_)
                                                             (let ((_e1045610672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1045210661_)))
                       (let ((_hd1045710675_ (##car _e1045610672_))
                             (_tl1045810677_ (##cdr _e1045610672_)))
                         (if (gx#stx-null? _tl1045810677_)
                             ((lambda (_L10680_ _L10681_)
                                (if (if (gx#identifier? _L10681_)
                                        (_case-lambda-expr?10419_ _L10680_)
                                        '#f)
                                    (let ((_g1069710707_
                                           (lambda (_g1069810704_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1069810704_))))
                                      (let ((_g1069610737_
                                             (lambda (_g1069810710_)
                                               (if (gx#stx-pair? _g1069810710_)
                                                   (let ((_e1070010712_
                                                          (gx#stx-e
                                                           _g1069810710_)))
                                                     (let ((_hd1070110715_
                                                            (##car _e1070010712_))
                                                           (_tl1070210717_
                                                            (##cdr _e1070010712_)))
                                                       ((lambda (_L10720_)
                                                          (let ((_g13433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses10420_ _L10681_ _L10720_)))
                    (begin
                      (let ((_g13434_ (values-count _g13433_)))
                        (if (not (fx= _g13434_ 3))
                            (error "Context expects 3 values" _g13434_)))
                      (let ((_ids10730_ (values-ref _g13433_ 0))
                            (_impls10731_ (values-ref _g13433_ 1))
                            (_clauses10732_ (values-ref _g13433_ 2)))
                        (let ((_defs10734_
                               (map _case-lambda-clause-def10421_
                                    _ids10730_
                                    _impls10731_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L10681_)
                               '" => "
                               _ids10730_)
                              (for-each gx#core-bind-runtime! _ids10730_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L10681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses10732_)
                              _L10680_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10416_)
                                                  '())
                                            _defs10734_))
                               _stx10416_))))))))
                _tl1070210717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1069710707_
                                                    _g1069810710_)))))
                                        (_g1069610737_ _L10680_)))
                                    (_g1042410643_ _g1042710646_)))
                              _hd1045710675_
                              _hd1045410667_)
                             (_g1042410643_ _g1042710646_))))
                     (_g1042410643_ _g1042710646_))
                 (_g1042410643_ _g1042710646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1042410643_
                                                  _g1042710646_))))
                                         (_g1042410643_ _g1042710646_))))
                                 (_g1042410643_ _g1042710646_)))))
                      (let ((_g1042210804_
                             (lambda (_g1042710743_)
                               (if (gx#stx-pair? _g1042710743_)
                                   (let ((_e1043010745_
                                          (gx#stx-e _g1042710743_)))
                                     (let ((_hd1043110748_
                                            (##car _e1043010745_))
                                           (_tl1043210750_
                                            (##cdr _e1043010745_)))
                                       (if (gx#stx-pair? _tl1043210750_)
                                           (let ((_e1043310753_
                                                  (gx#stx-e _tl1043210750_)))
                                             (let ((_hd1043410756_
                                                    (##car _e1043310753_))
                                                   (_tl1043510758_
                                                    (##cdr _e1043310753_)))
                                               (if (gx#stx-pair?
                                                    _hd1043410756_)
                                                   (let ((_e1043610761_
                                                          (gx#stx-e
                                                           _hd1043410756_)))
                                                     (let ((_hd1043710764_
                                                            (##car _e1043610761_))
                                                           (_tl1043810766_
                                                            (##cdr _e1043610761_)))
                                                       (if (gx#stx-null?
                                                            _tl1043810766_)
                                                           (if (gx#stx-pair?
                                                                _tl1043510758_)
                                                               (let ((_e1043910769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1043510758_)))
                         (let ((_hd1044010772_ (##car _e1043910769_))
                               (_tl1044110774_ (##cdr _e1043910769_)))
                           (if (gx#stx-pair? _hd1044010772_)
                               (let ((_e1044210777_ (gx#stx-e _hd1044010772_)))
                                 (let ((_hd1044310780_ (##car _e1044210777_))
                                       (_tl1044410782_ (##cdr _e1044210777_)))
                                   (if (gx#identifier? _hd1044310780_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1044310780_)
                                           (if (gx#stx-null? _tl1044110774_)
                                               ((lambda (_L10785_ _L10786_)
                                                  (if (if (gx#identifier?
                                                           _L10786_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10785_)
                  '#f)
              _stx10416_
              (_g1042310740_ _g1042710743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1044410782_
                                                _hd1043710764_)
                                               (_g1042310740_ _g1042710743_))
                                           (_g1042310740_ _g1042710743_))
                                       (_g1042310740_ _g1042710743_))))
                               (_g1042310740_ _g1042710743_))))
                       (_g1042310740_ _g1042710743_))
                   (_g1042310740_ _g1042710743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1042310740_
                                                    _g1042710743_))))
                                           (_g1042310740_ _g1042710743_))))
                                   (_g1042310740_ _g1042710743_)))))
                        (_g1042210804_ _stx10416_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx10354_ _id10355_ _new-id10356_)
      (let ((_g1035910372_
             (lambda (_g1036010369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1036010369_))))
        (let ((_g1035810379_
               (lambda (_g1036010375_) ((lambda () _stx10354_)))))
          (let ((_g1035710413_
                 (lambda (_g1036010382_)
                   (if (gx#stx-pair? _g1036010382_)
                       (let ((_e1036210384_ (gx#stx-e _g1036010382_)))
                         (let ((_hd1036310387_ (##car _e1036210384_))
                               (_tl1036410389_ (##cdr _e1036210384_)))
                           (if (gx#stx-pair? _tl1036410389_)
                               (let ((_e1036510392_ (gx#stx-e _tl1036410389_)))
                                 (let ((_hd1036610395_ (##car _e1036510392_))
                                       (_tl1036710397_ (##cdr _e1036510392_)))
                                   (if (gx#stx-null? _tl1036710397_)
                                       ((lambda (_L10400_)
                                          (if (gx#free-identifier=?
                                               _L10400_
                                               _id10355_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id10356_ '()))
                                               _stx10354_)
                                              (_g1035810379_ _g1036010382_)))
                                        _hd1036610395_)
                                       (_g1035810379_ _g1036010382_))))
                               (_g1035810379_ _g1036010382_))))
                       (_g1035810379_ _g1036010382_)))))
            (_g1035710413_ _stx10354_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx10259_)
      (let ((_g1026210282_
             (lambda (_g1026310279_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1026310279_))))
        (let ((_g1026110289_ (lambda (_g1026310285_) ((lambda () (void))))))
          (let ((_g1026010351_
                 (lambda (_g1026310292_)
                   (if (gx#stx-pair? _g1026310292_)
                       (let ((_e1026610294_ (gx#stx-e _g1026310292_)))
                         (let ((_hd1026710297_ (##car _e1026610294_))
                               (_tl1026810299_ (##cdr _e1026610294_)))
                           (if (gx#stx-pair? _tl1026810299_)
                               (let ((_e1026910302_ (gx#stx-e _tl1026810299_)))
                                 (let ((_hd1027010305_ (##car _e1026910302_))
                                       (_tl1027110307_ (##cdr _e1026910302_)))
                                   (if (gx#stx-pair? _hd1027010305_)
                                       (let ((_e1027210310_
                                              (gx#stx-e _hd1027010305_)))
                                         (let ((_hd1027310313_
                                                (##car _e1027210310_))
                                               (_tl1027410315_
                                                (##cdr _e1027210310_)))
                                           (if (gx#stx-null? _tl1027410315_)
                                               (if (gx#stx-pair?
                                                    _tl1027110307_)
                                                   (let ((_e1027510318_
                                                          (gx#stx-e
                                                           _tl1027110307_)))
                                                     (let ((_hd1027610321_
                                                            (##car _e1027510318_))
                                                           (_tl1027710323_
                                                            (##cdr _e1027510318_)))
                                                       (if (gx#stx-null?
                                                            _tl1027710323_)
                                                           ((lambda (_L10326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L10327_)
                      (let ((_type1034410346_
                             (gxc#apply-basic-expression-type _L10326_)))
                        (if _type1034410346_
                            (let ((_type10349_ _type1034410346_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L10327_)
                               _type10349_))
                            '#f)))
                    _hd1027610321_
                    _hd1027310313_)
                   (_g1026110289_ _g1026310292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1026110289_
                                                    _g1026310292_))
                                               (_g1026110289_ _g1026310292_))))
                                       (_g1026110289_ _g1026310292_))))
                               (_g1026110289_ _g1026310292_))))
                       (_g1026110289_ _g1026310292_)))))
            (_g1026010351_ _stx10259_))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx10199_)
      (let ((_g1020210215_
             (lambda (_g1020310212_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1020310212_))))
        (let ((_g1020110222_ (lambda (_g1020310218_) ((lambda () '#f)))))
          (let ((_g1020010256_
                 (lambda (_g1020310225_)
                   (if (gx#stx-pair? _g1020310225_)
                       (let ((_e1020510227_ (gx#stx-e _g1020310225_)))
                         (let ((_hd1020610230_ (##car _e1020510227_))
                               (_tl1020710232_ (##cdr _e1020510227_)))
                           (if (gx#stx-pair? _tl1020710232_)
                               (let ((_e1020810235_ (gx#stx-e _tl1020710232_)))
                                 (let ((_hd1020910238_ (##car _e1020810235_))
                                       (_tl1021010240_ (##cdr _e1020810235_)))
                                   (if (gx#stx-null? _tl1021010240_)
                                       ((lambda (_L10243_)
                                          (gxc#compile-e _L10243_))
                                        _hd1020910238_)
                                       (_g1020110222_ _g1020310225_))))
                               (_g1020110222_ _g1020310225_))))
                       (_g1020110222_ _g1020310225_)))))
            (_g1020010256_ _stx10199_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx9624_)
      (let ((_g96299750_
             (lambda (_g96309747_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96309747_))))
        (let ((_g96289757_ (lambda (_g96309753_) ((lambda () '#f)))))
          (let ((_g96279781_
                 (lambda (_g96309760_)
                   (if (gx#stx-pair? _g96309760_)
                       (let ((_e97439762_ (gx#stx-e _g96309760_)))
                         (let ((_hd97449765_ (##car _e97439762_))
                               (_tl97459767_ (##cdr _e97439762_)))
                           ((lambda (_L9770_)
                              (if (gxc#dispatch-lambda-form? _L9770_)
                                  (##structure
                                   gxc#!lambda::t
                                   'lambda
                                   (gxc#lambda-form-arity _L9770_)
                                   (gxc#dispatch-lambda-form-delegate _L9770_))
                                  (_g96289757_ _g96309760_)))
                            _tl97459767_)))
                       (_g96289757_ _g96309760_)))))
            (let ((_g962610011_
                   (lambda (_g96309784_)
                     (if (gx#stx-pair? _g96309784_)
                         (let ((_e96889786_ (gx#stx-e _g96309784_)))
                           (let ((_hd96899789_ (##car _e96889786_))
                                 (_tl96909791_ (##cdr _e96889786_)))
                             (if (gx#stx-pair? _tl96909791_)
                                 (let ((_e96919794_ (gx#stx-e _tl96909791_)))
                                   (let ((_hd96929797_ (##car _e96919794_))
                                         (_tl96939799_ (##cdr _e96919794_)))
                                     (if (gx#stx-pair/null? _hd96929797_)
                                         (if (fx>= (gx#stx-length _hd96929797_)
                                                   '0)
                                             (let ((_g13439_
                                                    (gx#syntax-split-splice
                                                     _hd96929797_
                                                     '0)))
                                               (begin
                                                 (let ((_g13440_
                                                        (values-count
                                                         _g13439_)))
                                                   (if (not (fx= _g13440_ 2))
                                                       (error "Context expects 2 values"
                                                              _g13440_)))
                                                 (let ((_target96949802_
                                                        (values-ref
                                                         _g13439_
                                                         0))
                                                       (_tl96969804_
                                                        (values-ref
                                                         _g13439_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl96969804_)
                                                       (letrec ((_loop96979807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd96959810_ _arg97019812_)
                           (if (gx#stx-pair? _hd96959810_)
                               (let ((_e96989815_ (gx#stx-e _hd96959810_)))
                                 (let ((_lp-hd96999818_ (##car _e96989815_))
                                       (_lp-tl97009820_ (##cdr _e96989815_)))
                                   (_loop96979807_
                                    _lp-tl97009820_
                                    (cons _lp-hd96999818_ _arg97019812_))))
                               (let ((_arg97029823_ (reverse _arg97019812_)))
                                 (if (gx#stx-pair? _tl96939799_)
                                     (let ((_e97039826_
                                            (gx#stx-e _tl96939799_)))
                                       (let ((_hd97049829_ (##car _e97039826_))
                                             (_tl97059831_
                                              (##cdr _e97039826_)))
                                         (if (gx#stx-pair? _hd97049829_)
                                             (let ((_e97069834_
                                                    (gx#stx-e _hd97049829_)))
                                               (let ((_hd97079837_
                                                      (##car _e97069834_))
                                                     (_tl97089839_
                                                      (##cdr _e97069834_)))
                                                 (if (gx#identifier?
                                                      _hd97079837_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd97079837_)
                                                         (if (gx#stx-pair?
                                                              _tl97089839_)
                                                             (let ((_e97099842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl97089839_)))
                       (let ((_hd97109845_ (##car _e97099842_))
                             (_tl97119847_ (##cdr _e97099842_)))
                         (if (gx#stx-pair? _hd97109845_)
                             (let ((_e97129850_ (gx#stx-e _hd97109845_)))
                               (let ((_hd97139853_ (##car _e97129850_))
                                     (_tl97149855_ (##cdr _e97129850_)))
                                 (if (gx#identifier? _hd97139853_)
                                     (if (gx#stx-eq? '%#ref _hd97139853_)
                                         (if (gx#stx-pair? _tl97149855_)
                                             (let ((_e97159858_
                                                    (gx#stx-e _tl97149855_)))
                                               (let ((_hd97169861_
                                                      (##car _e97159858_))
                                                     (_tl97179863_
                                                      (##cdr _e97159858_)))
                                                 (if (gx#stx-null?
                                                      _tl97179863_)
                                                     (if (gx#stx-pair?
                                                          _tl97119847_)
                                                         (let ((_e97189866_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97119847_)))
                   (let ((_hd97199869_ (##car _e97189866_))
                         (_tl97209871_ (##cdr _e97189866_)))
                     (if (gx#stx-pair? _hd97199869_)
                         (let ((_e97219874_ (gx#stx-e _hd97199869_)))
                           (let ((_hd97229877_ (##car _e97219874_))
                                 (_tl97239879_ (##cdr _e97219874_)))
                             (if (gx#identifier? _hd97229877_)
                                 (if (gx#stx-eq? '%#ref _hd97229877_)
                                     (if (gx#stx-pair? _tl97239879_)
                                         (let ((_e97249882_
                                                (gx#stx-e _tl97239879_)))
                                           (let ((_hd97259885_
                                                  (##car _e97249882_))
                                                 (_tl97269887_
                                                  (##cdr _e97249882_)))
                                             (if (gx#stx-null? _tl97269887_)
                                                 (if (gx#stx-pair/null?
                                                      _tl97209871_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl97209871_)
                                                               '0)
                                                         (let ((_g13441_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97209871_
                         '0)))
                   (begin
                     (let ((_g13442_ (values-count _g13441_)))
                       (if (not (fx= _g13442_ 2))
                           (error "Context expects 2 values" _g13442_)))
                     (let ((_target97279890_ (values-ref _g13441_ 0))
                           (_tl97299892_ (values-ref _g13441_ 1)))
                       (if (gx#stx-null? _tl97299892_)
                           (letrec ((_loop97309895_
                                     (lambda (_hd97289898_ _xarg97349900_)
                                       (if (gx#stx-pair? _hd97289898_)
                                           (let ((_e97319903_
                                                  (gx#stx-e _hd97289898_)))
                                             (let ((_lp-hd97329906_
                                                    (##car _e97319903_))
                                                   (_lp-tl97339908_
                                                    (##cdr _e97319903_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd97329906_)
                                                   (let ((_e97369911_
                                                          (gx#stx-e
                                                           _lp-hd97329906_)))
                                                     (let ((_hd97379914_
                                                            (##car _e97369911_))
                                                           (_tl97389916_
                                                            (##cdr _e97369911_)))
                                                       (if (gx#identifier?
                                                            _hd97379914_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd97379914_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl97389916_)
                           (let ((_e97399919_ (gx#stx-e _tl97389916_)))
                             (let ((_hd97409922_ (##car _e97399919_))
                                   (_tl97419924_ (##cdr _e97399919_)))
                               (if (gx#stx-null? _tl97419924_)
                                   (_loop97309895_
                                    _lp-tl97339908_
                                    (cons _hd97409922_ _xarg97349900_))
                                   (_g96279781_ _g96309784_))))
                           (_g96279781_ _g96309784_))
                       (_g96279781_ _g96309784_))
                   (_g96279781_ _g96309784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g96279781_ _g96309784_))))
                                           (let ((_xarg97359927_
                                                  (reverse _xarg97349900_)))
                                             (if (gx#stx-null? _tl97059831_)
                                                 ((lambda (_L9930_
                                                           _L9931_
                                                           _L9932_
                                                           _L9933_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g99709973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g99719975_)
                                (cons _g99709973_ _g99719975_))
                              '()
                              _L9933_)))
                    (if (eq? (gxc#identifier-symbol _L9932_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g99779980_
                                                           _g99789982_)
                                                    (cons _g99779980_
                                                          _g99789982_))
                                                  '()
                                                  _L9933_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g99849987_
                                                           _g99859989_)
                                                    (cons _g99849987_
                                                          _g99859989_))
                                                  '()
                                                  _L9930_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g99919994_ _g99929996_)
                                               (cons _g99919994_ _g99929996_))
                                             '()
                                             _L9933_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g999810001_
                                                      _g999910003_)
                                               (cons _g999810001_
                                                     _g999910003_))
                                             '()
                                             _L9930_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t10006_ (gxc#identifier-symbol _L9931_)))
                  (let ((_type10008_
                         (gxc#optimizer-resolve-type _type-t10006_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type10008_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t10006_)
                          '#f))))
                (_g96279781_ _g96309784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg97359927_
                                                  _hd97259885_
                                                  _hd97169861_
                                                  _arg97029823_)
                                                 (_g96279781_
                                                  _g96309784_)))))))
                             (_loop97309895_ _target97279890_ '()))
                           (_g96279781_ _g96309784_)))))
                 (_g96279781_ _g96309784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g96279781_ _g96309784_))
                                                 (_g96279781_ _g96309784_))))
                                         (_g96279781_ _g96309784_))
                                     (_g96279781_ _g96309784_))
                                 (_g96279781_ _g96309784_))))
                         (_g96279781_ _g96309784_))))
                 (_g96279781_ _g96309784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g96279781_
                                                      _g96309784_))))
                                             (_g96279781_ _g96309784_))
                                         (_g96279781_ _g96309784_))
                                     (_g96279781_ _g96309784_))))
                             (_g96279781_ _g96309784_))))
                     (_g96279781_ _g96309784_))
                 (_g96279781_ _g96309784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g96279781_
                                                      _g96309784_))))
                                             (_g96279781_ _g96309784_))))
                                     (_g96279781_ _g96309784_)))))))
                 (_loop96979807_ _target96949802_ '()))
               (_g96279781_ _g96309784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g96279781_ _g96309784_))
                                         (_g96279781_ _g96309784_))))
                                 (_g96279781_ _g96309784_))))
                         (_g96279781_ _g96309784_)))))
              (let ((_g962510196_
                     (lambda (_g963010014_)
                       (if (gx#stx-pair? _g963010014_)
                           (let ((_e963610016_ (gx#stx-e _g963010014_)))
                             (let ((_hd963710019_ (##car _e963610016_))
                                   (_tl963810021_ (##cdr _e963610016_)))
                               (if (gx#stx-pair? _tl963810021_)
                                   (let ((_e963910024_
                                          (gx#stx-e _tl963810021_)))
                                     (let ((_hd964010027_ (##car _e963910024_))
                                           (_tl964110029_
                                            (##cdr _e963910024_)))
                                       (if (gx#stx-pair? _tl964110029_)
                                           (let ((_e964210032_
                                                  (gx#stx-e _tl964110029_)))
                                             (let ((_hd964310035_
                                                    (##car _e964210032_))
                                                   (_tl964410037_
                                                    (##cdr _e964210032_)))
                                               (if (gx#stx-pair? _hd964310035_)
                                                   (let ((_e964510040_
                                                          (gx#stx-e
                                                           _hd964310035_)))
                                                     (let ((_hd964610043_
                                                            (##car _e964510040_))
                                                           (_tl964710045_
                                                            (##cdr _e964510040_)))
                                                       (if (gx#identifier?
                                                            _hd964610043_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd964610043_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl964710045_)
                           (let ((_e964810048_ (gx#stx-e _tl964710045_)))
                             (let ((_hd964910051_ (##car _e964810048_))
                                   (_tl965010053_ (##cdr _e964810048_)))
                               (if (gx#stx-pair? _hd964910051_)
                                   (let ((_e965110056_
                                          (gx#stx-e _hd964910051_)))
                                     (let ((_hd965210059_ (##car _e965110056_))
                                           (_tl965310061_
                                            (##cdr _e965110056_)))
                                       (if (gx#identifier? _hd965210059_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd965210059_)
                                               (if (gx#stx-pair? _tl965310061_)
                                                   (let ((_e965410064_
                                                          (gx#stx-e
                                                           _tl965310061_)))
                                                     (let ((_hd965510067_
                                                            (##car _e965410064_))
                                                           (_tl965610069_
                                                            (##cdr _e965410064_)))
                                                       (if (gx#stx-null?
                                                            _tl965610069_)
                                                           (if (gx#stx-pair?
                                                                _tl965010053_)
                                                               (let ((_e965710072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl965010053_)))
                         (let ((_hd965810075_ (##car _e965710072_))
                               (_tl965910077_ (##cdr _e965710072_)))
                           (if (gx#stx-pair? _hd965810075_)
                               (let ((_e966010080_ (gx#stx-e _hd965810075_)))
                                 (let ((_hd966110083_ (##car _e966010080_))
                                       (_tl966210085_ (##cdr _e966010080_)))
                                   (if (gx#identifier? _hd966110083_)
                                       (if (gx#stx-eq? '%#ref _hd966110083_)
                                           (if (gx#stx-pair? _tl966210085_)
                                               (let ((_e966310088_
                                                      (gx#stx-e
                                                       _tl966210085_)))
                                                 (let ((_hd966410091_
                                                        (##car _e966310088_))
                                                       (_tl966510093_
                                                        (##cdr _e966310088_)))
                                                   (if (gx#stx-null?
                                                        _tl966510093_)
                                                       (if (gx#stx-pair?
                                                            _tl965910077_)
                                                           (let ((_e966610096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl965910077_)))
                     (let ((_hd966710099_ (##car _e966610096_))
                           (_tl966810101_ (##cdr _e966610096_)))
                       (if (gx#stx-pair? _hd966710099_)
                           (let ((_e966910104_ (gx#stx-e _hd966710099_)))
                             (let ((_hd967010107_ (##car _e966910104_))
                                   (_tl967110109_ (##cdr _e966910104_)))
                               (if (gx#identifier? _hd967010107_)
                                   (if (gx#stx-eq? '%#ref _hd967010107_)
                                       (if (gx#stx-pair? _tl967110109_)
                                           (let ((_e967210112_
                                                  (gx#stx-e _tl967110109_)))
                                             (let ((_hd967310115_
                                                    (##car _e967210112_))
                                                   (_tl967410117_
                                                    (##cdr _e967210112_)))
                                               (if (gx#stx-null? _tl967410117_)
                                                   (if (gx#stx-pair?
                                                        _tl966810101_)
                                                       (let ((_e967510120_
                                                              (gx#stx-e
                                                               _tl966810101_)))
                                                         (let ((_hd967610123_
                                                                (##car _e967510120_))
                                                               (_tl967710125_
                                                                (##cdr _e967510120_)))
                                                           (if (gx#stx-pair?
                                                                _hd967610123_)
                                                               (let ((_e967810128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd967610123_)))
                         (let ((_hd967910131_ (##car _e967810128_))
                               (_tl968010133_ (##cdr _e967810128_)))
                           (if (gx#identifier? _hd967910131_)
                               (if (gx#stx-eq? '%#ref _hd967910131_)
                                   (if (gx#stx-pair? _tl968010133_)
                                       (let ((_e968110136_
                                              (gx#stx-e _tl968010133_)))
                                         (let ((_hd968210139_
                                                (##car _e968110136_))
                                               (_tl968310141_
                                                (##cdr _e968110136_)))
                                           (if (gx#stx-null? _tl968310141_)
                                               (if (gx#stx-null? _tl967710125_)
                                                   (if (gx#stx-null?
                                                        _tl964410037_)
                                                       ((lambda (_L10144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10145_
                         _L10146_
                         _L10147_
                         _L10148_)
                  (if (if (gx#identifier? _L10148_)
                          (if (eq? (gxc#identifier-symbol _L10147_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L10146_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L10148_ _L10144_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t10191_ (gxc#identifier-symbol _L10145_)))
                        (let ((_type10193_
                               (gxc#optimizer-resolve-type _type-t10191_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type10193_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t10191_)
                                '#f))))
                      (_g962610011_ _g963010014_)))
                _hd968210139_
                _hd967310115_
                _hd966410091_
                _hd965510067_
                _hd964010027_)
               (_g962610011_ _g963010014_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g962610011_ _g963010014_))
                                               (_g962610011_ _g963010014_))))
                                       (_g962610011_ _g963010014_))
                                   (_g962610011_ _g963010014_))
                               (_g962610011_ _g963010014_))))
                       (_g962610011_ _g963010014_))))
               (_g962610011_ _g963010014_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g962610011_
                                                    _g963010014_))))
                                           (_g962610011_ _g963010014_))
                                       (_g962610011_ _g963010014_))
                                   (_g962610011_ _g963010014_))))
                           (_g962610011_ _g963010014_))))
                   (_g962610011_ _g963010014_))
               (_g962610011_ _g963010014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g962610011_ _g963010014_))
                                           (_g962610011_ _g963010014_))
                                       (_g962610011_ _g963010014_))))
                               (_g962610011_ _g963010014_))))
                       (_g962610011_ _g963010014_))
                   (_g962610011_ _g963010014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g962610011_ _g963010014_))
                                               (_g962610011_ _g963010014_))
                                           (_g962610011_ _g963010014_))))
                                   (_g962610011_ _g963010014_))))
                           (_g962610011_ _g963010014_))
                       (_g962610011_ _g963010014_))
                   (_g962610011_ _g963010014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g962610011_
                                                    _g963010014_))))
                                           (_g962610011_ _g963010014_))))
                                   (_g962610011_ _g963010014_))))
                           (_g962610011_ _g963010014_)))))
                (_g962510196_ _stx9624_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx9570_)
      (let ((_clause-e9572_
             (lambda (_form9622_)
               (##structure
                gxc#!lambda::t
                'case-lambda-clause
                (gxc#lambda-form-arity _form9622_)
                (gxc#dispatch-lambda-form-delegate _form9622_)))))
        (let ((_g95759585_
               (lambda (_g95769582_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g95769582_))))
          (let ((_g95749592_ (lambda (_g95769588_) ((lambda () '#f)))))
            (let ((_g95739619_
                   (lambda (_g95769595_)
                     (if (gx#stx-pair? _g95769595_)
                         (let ((_e95789597_ (gx#stx-e _g95769595_)))
                           (let ((_hd95799600_ (##car _e95789597_))
                                 (_tl95809602_ (##cdr _e95789597_)))
                             ((lambda (_L9605_)
                                (if (andmap gxc#dispatch-lambda-form? _L9605_)
                                    (let ((_clauses9617_
                                           (map _clause-e9572_ _L9605_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses9617_))
                                    (_g95749592_ _g95769595_)))
                              _tl95809602_)))
                         (_g95749592_ _g95769595_)))))
              (_g95739619_ _stx9570_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx9475_)
      (let ((_g94789498_
             (lambda (_g94799495_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94799495_))))
        (let ((_g94779505_ (lambda (_g94799501_) ((lambda () '#f)))))
          (let ((_g94769567_
                 (lambda (_g94799508_)
                   (if (gx#stx-pair? _g94799508_)
                       (let ((_e94829510_ (gx#stx-e _g94799508_)))
                         (let ((_hd94839513_ (##car _e94829510_))
                               (_tl94849515_ (##cdr _e94829510_)))
                           (if (gx#stx-pair? _tl94849515_)
                               (let ((_e94859518_ (gx#stx-e _tl94849515_)))
                                 (let ((_hd94869521_ (##car _e94859518_))
                                       (_tl94879523_ (##cdr _e94859518_)))
                                   (if (gx#stx-pair? _hd94869521_)
                                       (let ((_e94889526_
                                              (gx#stx-e _hd94869521_)))
                                         (let ((_hd94899529_
                                                (##car _e94889526_))
                                               (_tl94909531_
                                                (##cdr _e94889526_)))
                                           (if (gx#identifier? _hd94899529_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd94899529_)
                                                   (if (gx#stx-pair?
                                                        _tl94909531_)
                                                       (let ((_e94919534_
                                                              (gx#stx-e
                                                               _tl94909531_)))
                                                         (let ((_hd94929537_
                                                                (##car _e94919534_))
                                                               (_tl94939539_
                                                                (##cdr _e94919534_)))
                                                           (if (gx#stx-null?
                                                                _tl94939539_)
                                                               ((lambda (_L9542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L9543_)
                          (let ((_type-e95609562_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L9543_))))
                            (if _type-e95609562_
                                (let ((_type-e9565_ _type-e95609562_))
                                  (_type-e9565_ _stx9475_ _L9542_))
                                '#f)))
                        _tl94879523_
                        _hd94929537_)
                       (_g94779505_ _g94799508_))))
               (_g94779505_ _g94799508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94779505_ _g94799508_))
                                               (_g94779505_ _g94799508_))))
                                       (_g94779505_ _g94799508_))))
                               (_g94779505_ _g94799508_))))
                       (_g94779505_ _g94799508_)))))
            (_g94769567_ _stx9475_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx8960_ _args8961_)
      (let ((_g89659078_
             (lambda (_g89669075_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89669075_))))
        (let ((_g89649085_
               (lambda (_g89669081_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx8960_))
                      '#f))))))
          (let ((_g89639292_
                 (lambda (_g89669088_)
                   (if (gx#stx-pair? _g89669088_)
                       (let ((_e90269090_ (gx#stx-e _g89669088_)))
                         (let ((_hd90279093_ (##car _e90269090_))
                               (_tl90289095_ (##cdr _e90269090_)))
                           (if (gx#stx-pair? _hd90279093_)
                               (let ((_e90299098_ (gx#stx-e _hd90279093_)))
                                 (let ((_hd90309101_ (##car _e90299098_))
                                       (_tl90319103_ (##cdr _e90299098_)))
                                   (if (gx#identifier? _hd90309101_)
                                       (if (gx#stx-eq? '%#quote _hd90309101_)
                                           (if (gx#stx-pair? _tl90319103_)
                                               (let ((_e90329106_
                                                      (gx#stx-e _tl90319103_)))
                                                 (let ((_hd90339109_
                                                        (##car _e90329106_))
                                                       (_tl90349111_
                                                        (##cdr _e90329106_)))
                                                   (if (gx#stx-null?
                                                        _tl90349111_)
                                                       (if (gx#stx-pair?
                                                            _tl90289095_)
                                                           (let ((_e90359114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl90289095_)))
                     (let ((_hd90369117_ (##car _e90359114_))
                           (_tl90379119_ (##cdr _e90359114_)))
                       (if (gx#stx-pair? _hd90369117_)
                           (let ((_e90389122_ (gx#stx-e _hd90369117_)))
                             (let ((_hd90399125_ (##car _e90389122_))
                                   (_tl90409127_ (##cdr _e90389122_)))
                               (if (gx#identifier? _hd90399125_)
                                   (if (gx#stx-eq? '%#ref _hd90399125_)
                                       (if (gx#stx-pair? _tl90409127_)
                                           (let ((_e90419130_
                                                  (gx#stx-e _tl90409127_)))
                                             (let ((_hd90429133_
                                                    (##car _e90419130_))
                                                   (_tl90439135_
                                                    (##cdr _e90419130_)))
                                               (if (gx#stx-null? _tl90439135_)
                                                   (if (gx#stx-pair?
                                                        _tl90379119_)
                                                       (let ((_e90449138_
                                                              (gx#stx-e
                                                               _tl90379119_)))
                                                         (let ((_hd90459141_
                                                                (##car _e90449138_))
                                                               (_tl90469143_
                                                                (##cdr _e90449138_)))
                                                           (if (gx#stx-pair?
                                                                _hd90459141_)
                                                               (let ((_e90479146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd90459141_)))
                         (let ((_hd90489149_ (##car _e90479146_))
                               (_tl90499151_ (##cdr _e90479146_)))
                           (if (gx#identifier? _hd90489149_)
                               (if (gx#stx-eq? '%#quote _hd90489149_)
                                   (if (gx#stx-pair? _tl90499151_)
                                       (let ((_e90509154_
                                              (gx#stx-e _tl90499151_)))
                                         (let ((_hd90519157_
                                                (##car _e90509154_))
                                               (_tl90529159_
                                                (##cdr _e90509154_)))
                                           (if (gx#stx-null? _tl90529159_)
                                               (if (gx#stx-pair? _tl90469143_)
                                                   (let ((_e90539162_
                                                          (gx#stx-e
                                                           _tl90469143_)))
                                                     (let ((_hd90549165_
                                                            (##car _e90539162_))
                                                           (_tl90559167_
                                                            (##cdr _e90539162_)))
                                                       (if (gx#stx-pair?
                                                            _tl90559167_)
                                                           (let ((_e90569170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl90559167_)))
                     (let ((_hd90579173_ (##car _e90569170_))
                           (_tl90589175_ (##cdr _e90569170_)))
                       (if (gx#stx-pair? _hd90579173_)
                           (let ((_e90599178_ (gx#stx-e _hd90579173_)))
                             (let ((_hd90609181_ (##car _e90599178_))
                                   (_tl90619183_ (##cdr _e90599178_)))
                               (if (gx#identifier? _hd90609181_)
                                   (if (gx#stx-eq? '%#quote _hd90609181_)
                                       (if (gx#stx-pair? _tl90619183_)
                                           (let ((_e90629186_
                                                  (gx#stx-e _tl90619183_)))
                                             (let ((_hd90639189_
                                                    (##car _e90629186_))
                                                   (_tl90649191_
                                                    (##cdr _e90629186_)))
                                               (if (gx#stx-null? _tl90649191_)
                                                   (if (gx#stx-pair?
                                                        _tl90589175_)
                                                       (let ((_e90659194_
                                                              (gx#stx-e
                                                               _tl90589175_)))
                                                         (let ((_hd90669197_
                                                                (##car _e90659194_))
                                                               (_tl90679199_
                                                                (##cdr _e90659194_)))
                                                           (if (gx#stx-pair?
                                                                _hd90669197_)
                                                               (let ((_e90689202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd90669197_)))
                         (let ((_hd90699205_ (##car _e90689202_))
                               (_tl90709207_ (##cdr _e90689202_)))
                           (if (gx#identifier? _hd90699205_)
                               (if (gx#stx-eq? '%#quote _hd90699205_)
                                   (if (gx#stx-pair? _tl90709207_)
                                       (let ((_e90719210_
                                              (gx#stx-e _tl90709207_)))
                                         (let ((_hd90729213_
                                                (##car _e90719210_))
                                               (_tl90739215_
                                                (##cdr _e90719210_)))
                                           (if (gx#stx-null? _tl90739215_)
                                               (if (gx#stx-null? _tl90679199_)
                                                   ((lambda (_L9218_
                                                             _L9219_
                                                             _L9220_
                                                             _L9221_
                                                             _L9222_
                                                             _L9223_)
                                                      (let ((_super-t9269_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9222_)
                         (gxc#identifier-symbol _L9222_)
                         '#f)))
                (let ((_super-type9271_
                       (if _super-t9269_
                           (gxc#optimizer-resolve-type _super-t9269_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type9271_
                              (not (##structure-instance-of?
                                    _super-type9271_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx8960_
                           _L9222_)
                          '#!void)
                      (let ((_fields9287_ (gx#stx-e _L9221_))
                            (_xfields9288_
                             (if _super-type9271_
                                 (let ((_super-fields92739276_
                                        (##structure-ref
                                         _super-type9271_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields92749278_
                                        (##structure-ref
                                         _super-type9271_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields92739276_
                                       (if _super-xfields92749278_
                                           (let ((_super-fields9281_
                                                  _super-fields92739276_)
                                                 (_super-xfields9282_
                                                  _super-xfields92749278_))
                                             (fx+ _super-fields9281_
                                                  _super-xfields9282_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist9289_ (gx#stx-e _L9219_))
                            (_ctor9290_
                             (let ((_$e9284_ (gx#stx-e _L9218_)))
                               (if _$e9284_
                                   (values _$e9284_)
                                   (if _super-type9271_
                                       (##structure-ref
                                        _super-type9271_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t9269_ '#!void '#f))))))
                        (##structure
                         gxc#!struct-type::t
                         (gx#stx-e _L9223_)
                         _super-t9269_
                         _fields9287_
                         _xfields9288_
                         _ctor9290_
                         _plist9289_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd90729213_
                                                    _hd90639189_
                                                    _hd90549165_
                                                    _hd90519157_
                                                    _hd90429133_
                                                    _hd90339109_)
                                                   (_g89649085_ _g89669088_))
                                               (_g89649085_ _g89669088_))))
                                       (_g89649085_ _g89669088_))
                                   (_g89649085_ _g89669088_))
                               (_g89649085_ _g89669088_))))
                       (_g89649085_ _g89669088_))))
               (_g89649085_ _g89669088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g89649085_ _g89669088_))))
                                           (_g89649085_ _g89669088_))
                                       (_g89649085_ _g89669088_))
                                   (_g89649085_ _g89669088_))))
                           (_g89649085_ _g89669088_))))
                   (_g89649085_ _g89669088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g89649085_ _g89669088_))
                                               (_g89649085_ _g89669088_))))
                                       (_g89649085_ _g89669088_))
                                   (_g89649085_ _g89669088_))
                               (_g89649085_ _g89669088_))))
                       (_g89649085_ _g89669088_))))
               (_g89649085_ _g89669088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g89649085_ _g89669088_))))
                                           (_g89649085_ _g89669088_))
                                       (_g89649085_ _g89669088_))
                                   (_g89649085_ _g89669088_))))
                           (_g89649085_ _g89669088_))))
                   (_g89649085_ _g89669088_))
               (_g89649085_ _g89669088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g89649085_ _g89669088_))
                                           (_g89649085_ _g89669088_))
                                       (_g89649085_ _g89669088_))))
                               (_g89649085_ _g89669088_))))
                       (_g89649085_ _g89669088_)))))
            (let ((_g89629472_
                   (lambda (_g89669295_)
                     (if (gx#stx-pair? _g89669295_)
                         (let ((_e89729297_ (gx#stx-e _g89669295_)))
                           (let ((_hd89739300_ (##car _e89729297_))
                                 (_tl89749302_ (##cdr _e89729297_)))
                             (if (gx#stx-pair? _hd89739300_)
                                 (let ((_e89759305_ (gx#stx-e _hd89739300_)))
                                   (let ((_hd89769308_ (##car _e89759305_))
                                         (_tl89779310_ (##cdr _e89759305_)))
                                     (if (gx#identifier? _hd89769308_)
                                         (if (gx#stx-eq? '%#quote _hd89769308_)
                                             (if (gx#stx-pair? _tl89779310_)
                                                 (let ((_e89789313_
                                                        (gx#stx-e
                                                         _tl89779310_)))
                                                   (let ((_hd89799316_
                                                          (##car _e89789313_))
                                                         (_tl89809318_
                                                          (##cdr _e89789313_)))
                                                     (if (gx#stx-null?
                                                          _tl89809318_)
                                                         (if (gx#stx-pair?
                                                              _tl89749302_)
                                                             (let ((_e89819321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl89749302_)))
                       (let ((_hd89829324_ (##car _e89819321_))
                             (_tl89839326_ (##cdr _e89819321_)))
                         (if (gx#stx-pair? _hd89829324_)
                             (let ((_e89849329_ (gx#stx-e _hd89829324_)))
                               (let ((_hd89859332_ (##car _e89849329_))
                                     (_tl89869334_ (##cdr _e89849329_)))
                                 (if (gx#identifier? _hd89859332_)
                                     (if (gx#stx-eq? '%#quote _hd89859332_)
                                         (if (gx#stx-pair? _tl89869334_)
                                             (let ((_e89879337_
                                                    (gx#stx-e _tl89869334_)))
                                               (let ((_hd89889340_
                                                      (##car _e89879337_))
                                                     (_tl89899342_
                                                      (##cdr _e89879337_)))
                                                 (if (gx#stx-datum?
                                                      _hd89889340_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89889340_)
                         '#f)
                 (if (gx#stx-null? _tl89899342_)
                     (if (gx#stx-pair? _tl89839326_)
                         (let ((_e89909345_ (gx#stx-e _tl89839326_)))
                           (let ((_hd89919348_ (##car _e89909345_))
                                 (_tl89929350_ (##cdr _e89909345_)))
                             (if (gx#stx-pair? _hd89919348_)
                                 (let ((_e89939353_ (gx#stx-e _hd89919348_)))
                                   (let ((_hd89949356_ (##car _e89939353_))
                                         (_tl89959358_ (##cdr _e89939353_)))
                                     (if (gx#identifier? _hd89949356_)
                                         (if (gx#stx-eq? '%#quote _hd89949356_)
                                             (if (gx#stx-pair? _tl89959358_)
                                                 (let ((_e89969361_
                                                        (gx#stx-e
                                                         _tl89959358_)))
                                                   (let ((_hd89979364_
                                                          (##car _e89969361_))
                                                         (_tl89989366_
                                                          (##cdr _e89969361_)))
                                                     (if (gx#stx-null?
                                                          _tl89989366_)
                                                         (if (gx#stx-pair?
                                                              _tl89929350_)
                                                             (let ((_e89999369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl89929350_)))
                       (let ((_hd90009372_ (##car _e89999369_))
                             (_tl90019374_ (##cdr _e89999369_)))
                         (if (gx#stx-pair? _tl90019374_)
                             (let ((_e90029377_ (gx#stx-e _tl90019374_)))
                               (let ((_hd90039380_ (##car _e90029377_))
                                     (_tl90049382_ (##cdr _e90029377_)))
                                 (if (gx#stx-pair? _hd90039380_)
                                     (let ((_e90059385_
                                            (gx#stx-e _hd90039380_)))
                                       (let ((_hd90069388_ (##car _e90059385_))
                                             (_tl90079390_
                                              (##cdr _e90059385_)))
                                         (if (gx#identifier? _hd90069388_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd90069388_)
                                                 (if (gx#stx-pair?
                                                      _tl90079390_)
                                                     (let ((_e90089393_
                                                            (gx#stx-e
                                                             _tl90079390_)))
                                                       (let ((_hd90099396_
                                                              (##car _e90089393_))
                                                             (_tl90109398_
                                                              (##cdr _e90089393_)))
                                                         (if (gx#stx-null?
                                                              _tl90109398_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl90049382_)
                         (let ((_e90119401_ (gx#stx-e _tl90049382_)))
                           (let ((_hd90129404_ (##car _e90119401_))
                                 (_tl90139406_ (##cdr _e90119401_)))
                             (if (gx#stx-pair? _hd90129404_)
                                 (let ((_e90149409_ (gx#stx-e _hd90129404_)))
                                   (let ((_hd90159412_ (##car _e90149409_))
                                         (_tl90169414_ (##cdr _e90149409_)))
                                     (if (gx#identifier? _hd90159412_)
                                         (if (gx#stx-eq? '%#quote _hd90159412_)
                                             (if (gx#stx-pair? _tl90169414_)
                                                 (let ((_e90179417_
                                                        (gx#stx-e
                                                         _tl90169414_)))
                                                   (let ((_hd90189420_
                                                          (##car _e90179417_))
                                                         (_tl90199422_
                                                          (##cdr _e90179417_)))
                                                     (if (gx#stx-null?
                                                          _tl90199422_)
                                                         (if (gx#stx-null?
                                                              _tl90139406_)
                                                             ((lambda (_L9425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9426_
                               _L9427_
                               _L9428_
                               _L9429_)
                        (##structure
                         gxc#!struct-type::t
                         (gx#stx-e _L9429_)
                         '#f
                         (gx#stx-e _L9428_)
                         '0
                         (gx#stx-e _L9425_)
                         (gx#stx-e _L9426_)))
                      _hd90189420_
                      _hd90099396_
                      _hd90009372_
                      _hd89979364_
                      _hd89799316_)
                     (_g89639292_ _g89669295_))
                 (_g89639292_ _g89669295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g89639292_ _g89669295_))
                                             (_g89639292_ _g89669295_))
                                         (_g89639292_ _g89669295_))))
                                 (_g89639292_ _g89669295_))))
                         (_g89639292_ _g89669295_))
                     (_g89639292_ _g89669295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g89639292_ _g89669295_))
                                                 (_g89639292_ _g89669295_))
                                             (_g89639292_ _g89669295_))))
                                     (_g89639292_ _g89669295_))))
                             (_g89639292_ _g89669295_))))
                     (_g89639292_ _g89669295_))
                 (_g89639292_ _g89669295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g89639292_ _g89669295_))
                                             (_g89639292_ _g89669295_))
                                         (_g89639292_ _g89669295_))))
                                 (_g89639292_ _g89669295_))))
                         (_g89639292_ _g89669295_))
                     (_g89639292_ _g89669295_))
                 (_g89639292_ _g89669295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g89639292_
                                                      _g89669295_))))
                                             (_g89639292_ _g89669295_))
                                         (_g89639292_ _g89669295_))
                                     (_g89639292_ _g89669295_))))
                             (_g89639292_ _g89669295_))))
                     (_g89639292_ _g89669295_))
                 (_g89639292_ _g89669295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g89639292_ _g89669295_))
                                             (_g89639292_ _g89669295_))
                                         (_g89639292_ _g89669295_))))
                                 (_g89639292_ _g89669295_))))
                         (_g89639292_ _g89669295_)))))
              (_g89629472_ _args8961_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx8886_ _args8887_)
      (let ((_g88908906_
             (lambda (_g88918903_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88918903_))))
        (let ((_g88898913_ (lambda (_g88918909_) ((lambda () '#f)))))
          (let ((_g88888957_
                 (lambda (_g88918916_)
                   (if (gx#stx-pair? _g88918916_)
                       (let ((_e88938918_ (gx#stx-e _g88918916_)))
                         (let ((_hd88948921_ (##car _e88938918_))
                               (_tl88958923_ (##cdr _e88938918_)))
                           (if (gx#stx-pair? _hd88948921_)
                               (let ((_e88968926_ (gx#stx-e _hd88948921_)))
                                 (let ((_hd88978929_ (##car _e88968926_))
                                       (_tl88988931_ (##cdr _e88968926_)))
                                   (if (gx#identifier? _hd88978929_)
                                       (if (gx#stx-eq? '%#ref _hd88978929_)
                                           (if (gx#stx-pair? _tl88988931_)
                                               (let ((_e88998934_
                                                      (gx#stx-e _tl88988931_)))
                                                 (let ((_hd89008937_
                                                        (##car _e88998934_))
                                                       (_tl89018939_
                                                        (##cdr _e88998934_)))
                                                   (if (gx#stx-null?
                                                        _tl89018939_)
                                                       (if (gx#stx-null?
                                                            _tl88958923_)
                                                           ((lambda (_L8942_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L8942_)))
                                                            _hd89008937_)
                                                           (_g88898913_
                                                            _g88918916_))
                                                       (_g88898913_
                                                        _g88918916_))))
                                               (_g88898913_ _g88918916_))
                                           (_g88898913_ _g88918916_))
                                       (_g88898913_ _g88918916_))))
                               (_g88898913_ _g88918916_))))
                       (_g88898913_ _g88918916_)))))
            (_g88888957_ _args8887_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx8770_ _args8771_)
      (let ((_g87748800_
             (lambda (_g87758797_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87758797_))))
        (let ((_g87738807_ (lambda (_g87758803_) ((lambda () '#f)))))
          (let ((_g87728883_
                 (lambda (_g87758810_)
                   (if (gx#stx-pair? _g87758810_)
                       (let ((_e87788812_ (gx#stx-e _g87758810_)))
                         (let ((_hd87798815_ (##car _e87788812_))
                               (_tl87808817_ (##cdr _e87788812_)))
                           (if (gx#stx-pair? _hd87798815_)
                               (let ((_e87818820_ (gx#stx-e _hd87798815_)))
                                 (let ((_hd87828823_ (##car _e87818820_))
                                       (_tl87838825_ (##cdr _e87818820_)))
                                   (if (gx#identifier? _hd87828823_)
                                       (if (gx#stx-eq? '%#ref _hd87828823_)
                                           (if (gx#stx-pair? _tl87838825_)
                                               (let ((_e87848828_
                                                      (gx#stx-e _tl87838825_)))
                                                 (let ((_hd87858831_
                                                        (##car _e87848828_))
                                                       (_tl87868833_
                                                        (##cdr _e87848828_)))
                                                   (if (gx#stx-null?
                                                        _tl87868833_)
                                                       (if (gx#stx-pair?
                                                            _tl87808817_)
                                                           (let ((_e87878836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl87808817_)))
                     (let ((_hd87888839_ (##car _e87878836_))
                           (_tl87898841_ (##cdr _e87878836_)))
                       (if (gx#stx-pair? _hd87888839_)
                           (let ((_e87908844_ (gx#stx-e _hd87888839_)))
                             (let ((_hd87918847_ (##car _e87908844_))
                                   (_tl87928849_ (##cdr _e87908844_)))
                               (if (gx#identifier? _hd87918847_)
                                   (if (gx#stx-eq? '%#quote _hd87918847_)
                                       (if (gx#stx-pair? _tl87928849_)
                                           (let ((_e87938852_
                                                  (gx#stx-e _tl87928849_)))
                                             (let ((_hd87948855_
                                                    (##car _e87938852_))
                                                   (_tl87958857_
                                                    (##cdr _e87938852_)))
                                               (if (gx#stx-null? _tl87958857_)
                                                   (if (gx#stx-null?
                                                        _tl87898841_)
                                                       ((lambda (_L8860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8861_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L8861_)
                   (gx#stx-e _L8860_)))
                _hd87948855_
                _hd87858831_)
               (_g87738807_ _g87758810_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g87738807_ _g87758810_))))
                                           (_g87738807_ _g87758810_))
                                       (_g87738807_ _g87758810_))
                                   (_g87738807_ _g87758810_))))
                           (_g87738807_ _g87758810_))))
                   (_g87738807_ _g87758810_))
               (_g87738807_ _g87758810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g87738807_ _g87758810_))
                                           (_g87738807_ _g87758810_))
                                       (_g87738807_ _g87758810_))))
                               (_g87738807_ _g87758810_))))
                       (_g87738807_ _g87758810_)))))
            (_g87728883_ _args8771_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx8654_ _args8655_)
      (let ((_g86588684_
             (lambda (_g86598681_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86598681_))))
        (let ((_g86578691_ (lambda (_g86598687_) ((lambda () '#f)))))
          (let ((_g86568767_
                 (lambda (_g86598694_)
                   (if (gx#stx-pair? _g86598694_)
                       (let ((_e86628696_ (gx#stx-e _g86598694_)))
                         (let ((_hd86638699_ (##car _e86628696_))
                               (_tl86648701_ (##cdr _e86628696_)))
                           (if (gx#stx-pair? _hd86638699_)
                               (let ((_e86658704_ (gx#stx-e _hd86638699_)))
                                 (let ((_hd86668707_ (##car _e86658704_))
                                       (_tl86678709_ (##cdr _e86658704_)))
                                   (if (gx#identifier? _hd86668707_)
                                       (if (gx#stx-eq? '%#ref _hd86668707_)
                                           (if (gx#stx-pair? _tl86678709_)
                                               (let ((_e86688712_
                                                      (gx#stx-e _tl86678709_)))
                                                 (let ((_hd86698715_
                                                        (##car _e86688712_))
                                                       (_tl86708717_
                                                        (##cdr _e86688712_)))
                                                   (if (gx#stx-null?
                                                        _tl86708717_)
                                                       (if (gx#stx-pair?
                                                            _tl86648701_)
                                                           (let ((_e86718720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl86648701_)))
                     (let ((_hd86728723_ (##car _e86718720_))
                           (_tl86738725_ (##cdr _e86718720_)))
                       (if (gx#stx-pair? _hd86728723_)
                           (let ((_e86748728_ (gx#stx-e _hd86728723_)))
                             (let ((_hd86758731_ (##car _e86748728_))
                                   (_tl86768733_ (##cdr _e86748728_)))
                               (if (gx#identifier? _hd86758731_)
                                   (if (gx#stx-eq? '%#quote _hd86758731_)
                                       (if (gx#stx-pair? _tl86768733_)
                                           (let ((_e86778736_
                                                  (gx#stx-e _tl86768733_)))
                                             (let ((_hd86788739_
                                                    (##car _e86778736_))
                                                   (_tl86798741_
                                                    (##cdr _e86778736_)))
                                               (if (gx#stx-null? _tl86798741_)
                                                   (if (gx#stx-null?
                                                        _tl86738725_)
                                                       ((lambda (_L8744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8745_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L8745_)
                   (gx#stx-e _L8744_)))
                _hd86788739_
                _hd86698715_)
               (_g86578691_ _g86598694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g86578691_ _g86598694_))))
                                           (_g86578691_ _g86598694_))
                                       (_g86578691_ _g86598694_))
                                   (_g86578691_ _g86598694_))))
                           (_g86578691_ _g86598694_))))
                   (_g86578691_ _g86598694_))
               (_g86578691_ _g86598694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g86578691_ _g86598694_))
                                           (_g86578691_ _g86598694_))
                                       (_g86578691_ _g86598694_))))
                               (_g86578691_ _g86598694_))))
                       (_g86578691_ _g86598694_)))))
            (_g86568767_ _args8655_))))))
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
    (lambda (_stx8603_)
      (let ((_g86058618_
             (lambda (_g86068615_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86068615_))))
        (let ((_g86048651_
               (lambda (_g86068621_)
                 (if (gx#stx-pair? _g86068621_)
                     (let ((_e86088623_ (gx#stx-e _g86068621_)))
                       (let ((_hd86098626_ (##car _e86088623_))
                             (_tl86108628_ (##cdr _e86088623_)))
                         (if (gx#stx-pair? _tl86108628_)
                             (let ((_e86118631_ (gx#stx-e _tl86108628_)))
                               (let ((_hd86128634_ (##car _e86118631_))
                                     (_tl86138636_ (##cdr _e86118631_)))
                                 (if (gx#stx-null? _tl86138636_)
                                     ((lambda (_L8639_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L8639_)))
                                      _hd86128634_)
                                     (_g86058618_ _g86068621_))))
                             (_g86058618_ _g86068621_))))
                     (_g86058618_ _g86068621_)))))
          (_g86048651_ _stx8603_)))))
  (define gxc#optimize-call%
    (lambda (_stx8509_)
      (let ((_g85128532_
             (lambda (_g85138529_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85138529_))))
        (let ((_g85118539_
               (lambda (_g85138535_)
                 ((lambda () (gxc#xform-call% _stx8509_))))))
          (let ((_g85108600_
                 (lambda (_g85138542_)
                   (if (gx#stx-pair? _g85138542_)
                       (let ((_e85168544_ (gx#stx-e _g85138542_)))
                         (let ((_hd85178547_ (##car _e85168544_))
                               (_tl85188549_ (##cdr _e85168544_)))
                           (if (gx#stx-pair? _tl85188549_)
                               (let ((_e85198552_ (gx#stx-e _tl85188549_)))
                                 (let ((_hd85208555_ (##car _e85198552_))
                                       (_tl85218557_ (##cdr _e85198552_)))
                                   (if (gx#stx-pair? _hd85208555_)
                                       (let ((_e85228560_
                                              (gx#stx-e _hd85208555_)))
                                         (let ((_hd85238563_
                                                (##car _e85228560_))
                                               (_tl85248565_
                                                (##cdr _e85228560_)))
                                           (if (gx#identifier? _hd85238563_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd85238563_)
                                                   (if (gx#stx-pair?
                                                        _tl85248565_)
                                                       (let ((_e85258568_
                                                              (gx#stx-e
                                                               _tl85248565_)))
                                                         (let ((_hd85268571_
                                                                (##car _e85258568_))
                                                               (_tl85278573_
                                                                (##cdr _e85258568_)))
                                                           (if (gx#stx-null?
                                                                _tl85278573_)
                                                               ((lambda (_L8576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L8577_)
                          (let ((_rator-id8595_
                                 (gxc#identifier-symbol _L8577_)))
                            (let ((_rator-type8597_
                                   (gxc#optimizer-lookup-type _rator-id8595_)))
                              (let ()
                                (if _rator-type8597_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id8595_
                                       '" => "
                                       _rator-type8597_
                                       '" "
                                       (##structure-ref
                                        _rator-type8597_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type8597_
                                       'optimize-call
                                       _stx8509_
                                       _L8576_))
                                    (gxc#xform-call% _stx8509_))))))
                        _tl85218557_
                        _hd85268571_)
                       (_g85118539_ _g85138542_))))
               (_g85118539_ _g85138542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85118539_ _g85138542_))
                                               (_g85118539_ _g85138542_))))
                                       (_g85118539_ _g85138542_))))
                               (_g85118539_ _g85138542_))))
                       (_g85118539_ _g85138542_)))))
            (_g85108600_ _stx8509_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self8479_ _stx8480_ _args8481_)
      (let ((_self84828488_ _self8479_))
        (let ((_E84848492_
               (lambda () (error '"No clause matching" _self84828488_))))
          (let ((_K84858501_
                 (lambda (_alias-id8495_)
                   (let ((_alias-type8497_
                          (gxc#optimizer-lookup-type _alias-id8495_)))
                     (if (##structure-instance-of?
                          _alias-type8497_
                          'gxc#!type::t)
                         (call-method
                          _alias-type8497_
                          'optimize-call
                          _stx8480_
                          _args8481_)
                         (let ((_args8499_
                                (gx#stx-map1 gxc#compile-e _args8481_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref (cons _alias-id8495_ '()))
                                        _args8499_))
                            _stx8480_)))))))
            (if (struct-instance? gxc#!alias::t _self84828488_)
                (let ((_e84868504_ (##vector-ref _self84828488_ '1)))
                  (let ((_alias-id8507_ _e84868504_))
                    (_K84858501_ _alias-id8507_)))
                (_E84848492_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self8334_ _stx8335_ _args8336_)
      (let ((_self83378343_ _self8334_))
        (let ((_E83398347_
               (lambda () (error '"No clause matching" _self83378343_))))
          (let ((_K83408471_
                 (lambda (_struct-t8350_)
                   (let ((_struct-type8352_
                          (gxc#optimizer-resolve-type _struct-t8350_)))
                     (let ((_struct-type83538367_ _struct-type8352_))
                       (let ((_E83578371_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type83538367_))))
                         (let ((_else83568375_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8335_
                                   _struct-t8350_
                                   _struct-type8352_))))
                           (let ((_try-match83558383_
                                  (lambda ()
                                    (let ((_K83588380_
                                           (lambda ()
                                             (gxc#xform-call% _stx8335_))))
                                      (if (##eq? _struct-type83538367_ '#f)
                                          (_K83588380_)
                                          (_else83568375_))))))
                             (let ((_K83598446_
                                    (lambda (_plist8386_ _struct-type-id8387_)
                                      (let ((_g83908400_
                                             (lambda (_g83918397_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g83918397_))))
                                        (let ((_g83898407_
                                               (lambda (_g83918403_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx8335_))))))
                                          (let ((_g83888443_
                                                 (lambda (_g83918410_)
                                                   (if (gx#stx-pair?
                                                        _g83918410_)
                                                       (let ((_e83938412_
                                                              (gx#stx-e
                                                               _g83918410_)))
                                                         (let ((_hd83948415_
                                                                (##car _e83938412_))
                                                               (_tl83958417_
                                                                (##cdr _e83938412_)))
                                                           (if (gx#stx-null?
                                                                _tl83958417_)
                                                               ((lambda (_L8420_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr8440_ (gxc#compile-e _L8420_))
                                (_op8441_
                                 (if (if _plist8386_
                                         (assgetq 'final: _plist8386_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op8441_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id8387_ '()))
                                         (cons _expr8440_ '())))
                             _stx8335_)))
                        _hd83948415_)
                       (_g83898407_ _g83918410_))))
               (_g83898407_ _g83918410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g83888443_ _args8336_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type83538367_)
                                   (let ((_e83608449_
                                          (##vector-ref
                                           _struct-type83538367_
                                           '1)))
                                     (let ((_struct-type-id8452_ _e83608449_))
                                       (let ((_e83618454_
                                              (##vector-ref
                                               _struct-type83538367_
                                               '2)))
                                         (let ((_e83628457_
                                                (##vector-ref
                                                 _struct-type83538367_
                                                 '3)))
                                           (let ((_e83638460_
                                                  (##vector-ref
                                                   _struct-type83538367_
                                                   '4)))
                                             (let ((_e83648463_
                                                    (##vector-ref
                                                     _struct-type83538367_
                                                     '5)))
                                               (let ((_e83658466_
                                                      (##vector-ref
                                                       _struct-type83538367_
                                                       '6)))
                                                 (let ((_plist8469_
                                                        _e83658466_))
                                                   (_K83598446_
                                                    _plist8469_
                                                    _struct-type-id8452_)))))))))
                                   (_try-match83558383_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self83378343_)
                (let ((_e83418474_ (##vector-ref _self83378343_ '1)))
                  (let ((_struct-t8477_ _e83418474_))
                    (_K83408471_ _struct-t8477_)))
                (_E83398347_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self8237_ _stx8238_ _args8239_)
      (let ((_self82408246_ _self8237_))
        (let ((_E82428250_
               (lambda () (error '"No clause matching" _self82408246_))))
          (let ((_K82438326_
                 (lambda (_struct-t8253_)
                   (let ((_struct-type8255_
                          (gxc#optimizer-resolve-type _struct-t8253_)))
                     (let ((_struct-type82568269_ _struct-type8255_))
                       (let ((_E82608273_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type82568269_))))
                         (let ((_else82598277_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx8238_
                                   _struct-t8253_
                                   _struct-type8255_))))
                           (let ((_try-match82588285_
                                  (lambda ()
                                    (let ((_K82618282_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t8253_)
                                               (gxc#xform-call% _stx8238_)))))
                                      (if (##eq? _struct-type82568269_ '#f)
                                          (_K82618282_)
                                          (_else82598277_))))))
                             (let ((_K82628300_
                                    (lambda (_ctor8288_
                                             _xfields8289_
                                             _fields8290_
                                             _type-id8291_)
                                      (let ((_args8293_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args8239_)))
                                        (if (let ((_$e8295_ _ctor8288_))
                                              (if _$e8295_
                                                  _$e8295_
                                                  (not _xfields8289_)))
                                            (gxc#xform-wrap-source
                                             (cons '%#call
                                                   (cons (cons '%#ref
                                                               (cons 'make-struct-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#ref (cons _struct-t8253_ '())) _args8293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx8238_)
                                            (let ((_arity8298_
                                                   (fx+ _fields8290_
                                                        _xfields8289_)))
                                              (if (fx= _arity8298_
                                                       (length _args8293_))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '##structure '()))
                       (cons (cons '%#ref (cons _struct-t8253_ '()))
                             _args8293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx8238_)
                                                  (gxc#raise-compile-error
                                                   '"Illegal struct constructor application; arity mismatch"
                                                   _stx8238_
                                                   _struct-t8253_
                                                   _arity8298_))))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type82568269_)
                                   (let ((_e82638303_
                                          (##vector-ref
                                           _struct-type82568269_
                                           '1)))
                                     (let ((_type-id8306_ _e82638303_))
                                       (let ((_e82648308_
                                              (##vector-ref
                                               _struct-type82568269_
                                               '2)))
                                         (let ((_e82658311_
                                                (##vector-ref
                                                 _struct-type82568269_
                                                 '3)))
                                           (let ((_fields8314_ _e82658311_))
                                             (let ((_e82668316_
                                                    (##vector-ref
                                                     _struct-type82568269_
                                                     '4)))
                                               (let ((_xfields8319_
                                                      _e82668316_))
                                                 (let ((_e82678321_
                                                        (##vector-ref
                                                         _struct-type82568269_
                                                         '5)))
                                                   (let ((_ctor8324_
                                                          _e82678321_))
                                                     (_K82628300_
                                                      _ctor8324_
                                                      _xfields8319_
                                                      _fields8314_
                                                      _type-id8306_))))))))))
                                   (_try-match82588285_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self82408246_)
                (let ((_e82448329_ (##vector-ref _self82408246_ '1)))
                  (let ((_struct-t8332_ _e82448329_))
                    (_K82438326_ _struct-t8332_)))
                (_E82428250_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self8090_ _stx8091_ _args8092_)
      (let ((_self80938100_ _self8090_))
        (let ((_E80958104_
               (lambda () (error '"No clause matching" _self80938100_))))
          (let ((_K80968224_
                 (lambda (_off8107_ _struct-t8108_)
                   (let ((_struct-type8110_
                          (gxc#optimizer-resolve-type _struct-t8108_)))
                     (let ((_struct-type81118123_ _struct-type8110_))
                       (let ((_E81158127_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type81118123_))))
                         (let ((_else81148131_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8091_
                                   _struct-t8108_
                                   _struct-type8110_))))
                           (let ((_try-match81138139_
                                  (lambda ()
                                    (let ((_K81168136_
                                           (lambda ()
                                             (gxc#xform-call% _stx8091_))))
                                      (if (##eq? _struct-type81118123_ '#f)
                                          (_K81168136_)
                                          (_else81148131_))))))
                             (let ((_K81178203_
                                    (lambda (_xfields8142_
                                             _fields8143_
                                             _struct-type-id8144_)
                                      (if _xfields8142_
                                          (let ((_g81478157_
                                                 (lambda (_g81488154_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g81488154_))))
                                            (let ((_g81468164_
                                                   (lambda (_g81488160_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx8091_))))))
                                              (let ((_g81458200_
                                                     (lambda (_g81488167_)
                                                       (if (gx#stx-pair?
                                                            _g81488167_)
                                                           (let ((_e81508169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g81488167_)))
                     (let ((_hd81518172_ (##car _e81508169_))
                           (_tl81528174_ (##cdr _e81508169_)))
                       (if (gx#stx-null? _tl81528174_)
                           ((lambda (_L8177_)
                              (let ((_expr8197_ (gxc#compile-e _L8177_))
                                    (_off8198_
                                     (fx+ _off8107_ _xfields8142_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t8108_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off8198_ '()))
                                                   (cons _expr8197_ '()))))
                                 _stx8091_)))
                            _hd81518172_)
                           (_g81468164_ _g81488167_))))
                   (_g81468164_ _g81488167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g81458200_ _args8092_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id8144_)
                                            (gxc#xform-call% _stx8091_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type81118123_)
                                   (let ((_e81188206_
                                          (##vector-ref
                                           _struct-type81118123_
                                           '1)))
                                     (let ((_struct-type-id8209_ _e81188206_))
                                       (let ((_e81198211_
                                              (##vector-ref
                                               _struct-type81118123_
                                               '2)))
                                         (let ((_e81208214_
                                                (##vector-ref
                                                 _struct-type81118123_
                                                 '3)))
                                           (let ((_fields8217_ _e81208214_))
                                             (let ((_e81218219_
                                                    (##vector-ref
                                                     _struct-type81118123_
                                                     '4)))
                                               (let ((_xfields8222_
                                                      _e81218219_))
                                                 (_K81178203_
                                                  _xfields8222_
                                                  _fields8217_
                                                  _struct-type-id8209_))))))))
                                   (_try-match81138139_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self80938100_)
                (let ((_e80978227_ (##vector-ref _self80938100_ '1)))
                  (let ((_struct-t8230_ _e80978227_))
                    (let ((_e80988232_ (##vector-ref _self80938100_ '2)))
                      (let ((_off8235_ _e80988232_))
                        (_K80968224_ _off8235_ _struct-t8230_)))))
                (_E80958104_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self7926_ _stx7927_ _args7928_)
      (let ((_self79297936_ _self7926_))
        (let ((_E79317940_
               (lambda () (error '"No clause matching" _self79297936_))))
          (let ((_K79328077_
                 (lambda (_off7943_ _struct-t7944_)
                   (let ((_struct-type7946_
                          (gxc#optimizer-resolve-type _struct-t7944_)))
                     (let ((_struct-type79477959_ _struct-type7946_))
                       (let ((_E79517963_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type79477959_))))
                         (let ((_else79507967_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx7927_
                                   _struct-t7944_
                                   _struct-type7946_))))
                           (let ((_try-match79497975_
                                  (lambda ()
                                    (let ((_K79527972_
                                           (lambda ()
                                             (gxc#xform-call% _stx7927_))))
                                      (if (##eq? _struct-type79477959_ '#f)
                                          (_K79527972_)
                                          (_else79507967_))))))
                             (let ((_K79538056_
                                    (lambda (_xfields7978_
                                             _fields7979_
                                             _struct-type-id7980_)
                                      (if _xfields7978_
                                          (let ((_g79837997_
                                                 (lambda (_g79847994_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g79847994_))))
                                            (let ((_g79828004_
                                                   (lambda (_g79848000_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx7927_))))))
                                              (let ((_g79818053_
                                                     (lambda (_g79848007_)
                                                       (if (gx#stx-pair?
                                                            _g79848007_)
                                                           (let ((_e79878009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g79848007_)))
                     (let ((_hd79888012_ (##car _e79878009_))
                           (_tl79898014_ (##cdr _e79878009_)))
                       (if (gx#stx-pair? _tl79898014_)
                           (let ((_e79908017_ (gx#stx-e _tl79898014_)))
                             (let ((_hd79918020_ (##car _e79908017_))
                                   (_tl79928022_ (##cdr _e79908017_)))
                               (if (gx#stx-null? _tl79928022_)
                                   ((lambda (_L8025_ _L8026_)
                                      (let ((_expr8049_
                                             (gxc#compile-e _L8026_))
                                            (_val8050_ (gxc#compile-e _L8025_))
                                            (_off8051_
                                             (fx+ _off7943_ _xfields7978_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t7944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off8051_ '()))
                   (cons _expr8049_ (cons _val8050_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx7927_)))
                                    _hd79918020_
                                    _hd79888012_)
                                   (_g79828004_ _g79848007_))))
                           (_g79828004_ _g79848007_))))
                   (_g79828004_ _g79848007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79818053_ _args7928_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id7980_)
                                            (gxc#xform-call% _stx7927_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type79477959_)
                                   (let ((_e79548059_
                                          (##vector-ref
                                           _struct-type79477959_
                                           '1)))
                                     (let ((_struct-type-id8062_ _e79548059_))
                                       (let ((_e79558064_
                                              (##vector-ref
                                               _struct-type79477959_
                                               '2)))
                                         (let ((_e79568067_
                                                (##vector-ref
                                                 _struct-type79477959_
                                                 '3)))
                                           (let ((_fields8070_ _e79568067_))
                                             (let ((_e79578072_
                                                    (##vector-ref
                                                     _struct-type79477959_
                                                     '4)))
                                               (let ((_xfields8075_
                                                      _e79578072_))
                                                 (_K79538056_
                                                  _xfields8075_
                                                  _fields8070_
                                                  _struct-type-id8062_))))))))
                                   (_try-match79497975_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self79297936_)
                (let ((_e79338080_ (##vector-ref _self79297936_ '1)))
                  (let ((_struct-t8083_ _e79338080_))
                    (let ((_e79348085_ (##vector-ref _self79297936_ '2)))
                      (let ((_off8088_ _e79348085_))
                        (_K79328077_ _off8088_ _struct-t8083_)))))
                (_E79317940_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self7887_ _stx7888_ _args7889_)
      (let ((_self78907898_ _self7887_))
        (let ((_E78927902_
               (lambda () (error '"No clause matching" _self78907898_))))
          (let ((_K78937910_
                 (lambda (_dispatch7905_ _arity7906_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self7887_ _args7889_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx7888_
                          _arity7906_))
                     (if _dispatch7905_
                         (let ((_args7908_
                                (gx#stx-map1 gxc#compile-e _args7889_)))
                           (begin
                             (gxc#verbose
                              '"dispatch lambda => "
                              _dispatch7905_)
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch7905_ '()))
                                          _args7908_))
                              _stx7888_)))
                         (gxc#xform-call% _stx7888_))))))
            (if (struct-instance? gxc#!lambda::t _self78907898_)
                (let ((_e78947913_ (##vector-ref _self78907898_ '1)))
                  (let ((_e78957916_ (##vector-ref _self78907898_ '2)))
                    (let ((_arity7919_ _e78957916_))
                      (let ((_e78967921_ (##vector-ref _self78907898_ '3)))
                        (let ((_dispatch7924_ _e78967921_))
                          (_K78937910_ _dispatch7924_ _arity7919_))))))
                (_E78927902_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self7847_ _stx7848_ _args7849_)
      (let ((_self78507857_ _self7847_))
        (let ((_E78527861_
               (lambda () (error '"No clause matching" _self78507857_))))
          (let ((_K78537876_
                 (lambda (_clauses7864_)
                   (let ((_$e7870_
                          (find (lambda (_g78657867_)
                                  (gxc#!lambda-arity-match?
                                   _g78657867_
                                   _args7849_))
                                _clauses7864_)))
                     (if _$e7870_
                         ((lambda (_clause7873_)
                            (call-method
                             _clause7873_
                             'optimize-call
                             _stx7848_
                             _args7849_))
                          _$e7870_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx7848_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses7864_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses7864_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self78507857_)
                (let ((_e78547879_ (##vector-ref _self78507857_ '1)))
                  (let ((_e78557882_ (##vector-ref _self78507857_ '2)))
                    (let ((_clauses7885_ _e78557882_))
                      (_K78537876_ _clauses7885_))))
                (_E78527861_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self7783_ _args7784_)
      (let ((_self77857792_ _self7783_))
        (let ((_E77877796_
               (lambda () (error '"No clause matching" _self77857792_))))
          (let ((_K77887836_
                 (lambda (_arity7799_)
                   (let ((_arity78007809_ _arity7799_))
                     (let ((_E78037813_
                            (lambda ()
                              (error '"No clause matching" _arity78007809_))))
                       (let ((_try-match78027829_
                              (lambda ()
                                (let ((_K78047819_
                                       (lambda (_arity7817_)
                                         (fx>= (gx#stx-length _args7784_)
                                               _arity7817_))))
                                  (if (##pair? _arity78007809_)
                                      (let ((_hd78057822_
                                             (##car _arity78007809_))
                                            (_tl78067824_
                                             (##cdr _arity78007809_)))
                                        (let ((_arity7827_ _hd78057822_))
                                          (if (##null? _tl78067824_)
                                              (_K78047819_ _arity7827_)
                                              (_E78037813_))))
                                      (_E78037813_))))))
                         (let ((_K78077833_
                                (lambda ()
                                  (fx= (gx#stx-length _args7784_)
                                       _arity7799_))))
                           (if (fixnum? _arity78007809_)
                               (_K78077833_)
                               (_try-match78027829_)))))))))
            (if (struct-instance? gxc#!lambda::t _self77857792_)
                (let ((_e77897839_ (##vector-ref _self77857792_ '1)))
                  (let ((_e77907842_ (##vector-ref _self77857792_ '2)))
                    (let ((_arity7845_ _e77907842_))
                      (_K77887836_ _arity7845_))))
                (_E77877796_)))))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx7590_)
      (let ((_generate-e7592_
             (lambda (_id7772_)
               (let ((_sym7774_ (gxc#identifier-symbol _id7772_)))
                 (let ((_$e7776_ (gxc#optimizer-lookup-type _sym7774_)))
                   (if _$e7776_
                       ((lambda (_type7779_)
                          (let ((_typedecl7781_
                                 (call-method _type7779_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym7774_ (cons _typedecl7781_ '())))))
                        _$e7776_)
                       '(begin)))))))
        (let ((_g75957633_
               (lambda (_g75967630_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g75967630_))))
          (let ((_g75947717_
                 (lambda (_g75967636_)
                   (if (gx#stx-pair? _g75967636_)
                       (let ((_e76117638_ (gx#stx-e _g75967636_)))
                         (let ((_hd76127641_ (##car _e76117638_))
                               (_tl76137643_ (##cdr _e76117638_)))
                           (if (gx#stx-pair? _tl76137643_)
                               (let ((_e76147646_ (gx#stx-e _tl76137643_)))
                                 (let ((_hd76157649_ (##car _e76147646_))
                                       (_tl76167651_ (##cdr _e76147646_)))
                                   (if (gx#stx-pair/null? _hd76157649_)
                                       (if (fx>= (gx#stx-length _hd76157649_)
                                                 '0)
                                           (let ((_g13443_
                                                  (gx#syntax-split-splice
                                                   _hd76157649_
                                                   '0)))
                                             (begin
                                               (let ((_g13444_
                                                      (values-count _g13443_)))
                                                 (if (not (fx= _g13444_ 2))
                                                     (error "Context expects 2 values"
                                                            _g13444_)))
                                               (let ((_target76177654_
                                                      (values-ref _g13443_ 0))
                                                     (_tl76197656_
                                                      (values-ref _g13443_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl76197656_)
                                                     (letrec ((_loop76207659_
                                                               (lambda (_hd76187662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id76247664_)
                         (if (gx#stx-pair? _hd76187662_)
                             (let ((_e76217667_ (gx#stx-e _hd76187662_)))
                               (let ((_lp-hd76227670_ (##car _e76217667_))
                                     (_lp-tl76237672_ (##cdr _e76217667_)))
                                 (_loop76207659_
                                  _lp-tl76237672_
                                  (cons _lp-hd76227670_ _id76247664_))))
                             (let ((_id76257675_ (reverse _id76247664_)))
                               (if (gx#stx-pair? _tl76167651_)
                                   (let ((_e76267678_ (gx#stx-e _tl76167651_)))
                                     (let ((_hd76277681_ (##car _e76267678_))
                                           (_tl76287683_ (##cdr _e76267678_)))
                                       (if (gx#stx-null? _tl76287683_)
                                           ((lambda (_L7686_)
                                              (let ((_ids7712_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g77047707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g77057709_)
                                (cons _g77047707_ _g77057709_))
                              '()
                              _L7686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types7714_
                                                       (map _generate-e7592_
                                                            _ids7712_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types7714_)))))
                                            _id76257675_)
                                           (_g75957633_ _g75967636_))))
                                   (_g75957633_ _g75967636_)))))))
               (_loop76207659_ _target76177654_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g75957633_
                                                      _g75967636_)))))
                                           (_g75957633_ _g75967636_))
                                       (_g75957633_ _g75967636_))))
                               (_g75957633_ _g75967636_))))
                       (_g75957633_ _g75967636_)))))
            (let ((_g75937769_
                   (lambda (_g75967720_)
                     (if (gx#stx-pair? _g75967720_)
                         (let ((_e75987722_ (gx#stx-e _g75967720_)))
                           (let ((_hd75997725_ (##car _e75987722_))
                                 (_tl76007727_ (##cdr _e75987722_)))
                             (if (gx#stx-pair? _tl76007727_)
                                 (let ((_e76017730_ (gx#stx-e _tl76007727_)))
                                   (let ((_hd76027733_ (##car _e76017730_))
                                         (_tl76037735_ (##cdr _e76017730_)))
                                     (if (gx#stx-pair? _hd76027733_)
                                         (let ((_e76047738_
                                                (gx#stx-e _hd76027733_)))
                                           (let ((_hd76057741_
                                                  (##car _e76047738_))
                                                 (_tl76067743_
                                                  (##cdr _e76047738_)))
                                             (if (gx#stx-null? _tl76067743_)
                                                 (if (gx#stx-pair?
                                                      _tl76037735_)
                                                     (let ((_e76077746_
                                                            (gx#stx-e
                                                             _tl76037735_)))
                                                       (let ((_hd76087749_
                                                              (##car _e76077746_))
                                                             (_tl76097751_
                                                              (##cdr _e76077746_)))
                                                         (if (gx#stx-null?
                                                              _tl76097751_)
                                                             ((lambda (_L7754_)
                                                                (_generate-e7592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7754_))
                      _hd76057741_)
                     (_g75947717_ _g75967720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g75947717_ _g75967720_))
                                                 (_g75947717_ _g75967720_))))
                                         (_g75947717_ _g75967720_))))
                                 (_g75947717_ _g75967720_))))
                         (_g75947717_ _g75967720_)))))
              (_g75937769_ _stx7590_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self7566_)
      (let ((_self75677573_ _self7566_))
        (let ((_E75697577_
               (lambda () (error '"No clause matching" _self75677573_))))
          (let ((_K75707582_
                 (lambda (_alias-id7580_)
                   (cons '@alias (cons _alias-id7580_ '())))))
            (if (struct-instance? gxc#!alias::t _self75677573_)
                (let ((_e75717585_ (##vector-ref _self75677573_ '1)))
                  (let ((_alias-id7588_ _e75717585_))
                    (_K75707582_ _alias-id7588_)))
                (_E75697577_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self7510_)
      (let ((_self75117522_ _self7510_))
        (let ((_E75137526_
               (lambda () (error '"No clause matching" _self75117522_))))
          (let ((_K75147535_
                 (lambda (_plist7529_
                          _ctor7530_
                          _fields7531_
                          _super7532_
                          _type-id7533_)
                   (cons '@struct-type
                         (cons _type-id7533_
                               (cons _super7532_
                                     (cons _fields7531_
                                           (cons _ctor7530_
                                                 (cons _plist7529_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self75117522_)
                (let ((_e75157538_ (##vector-ref _self75117522_ '1)))
                  (let ((_type-id7541_ _e75157538_))
                    (let ((_e75167543_ (##vector-ref _self75117522_ '2)))
                      (let ((_super7546_ _e75167543_))
                        (let ((_e75177548_ (##vector-ref _self75117522_ '3)))
                          (let ((_fields7551_ _e75177548_))
                            (let ((_e75187553_
                                   (##vector-ref _self75117522_ '4)))
                              (let ((_e75197556_
                                     (##vector-ref _self75117522_ '5)))
                                (let ((_ctor7559_ _e75197556_))
                                  (let ((_e75207561_
                                         (##vector-ref _self75117522_ '6)))
                                    (let ((_plist7564_ _e75207561_))
                                      (_K75147535_
                                       _plist7564_
                                       _ctor7559_
                                       _fields7551_
                                       _super7546_
                                       _type-id7541_))))))))))))
                (_E75137526_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self7486_)
      (let ((_self74877493_ _self7486_))
        (let ((_E74897497_
               (lambda () (error '"No clause matching" _self74877493_))))
          (let ((_K74907502_
                 (lambda (_struct-t7500_)
                   (cons '@struct-pred (cons _struct-t7500_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self74877493_)
                (let ((_e74917505_ (##vector-ref _self74877493_ '1)))
                  (let ((_struct-t7508_ _e74917505_))
                    (_K74907502_ _struct-t7508_)))
                (_E74897497_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self7462_)
      (let ((_self74637469_ _self7462_))
        (let ((_E74657473_
               (lambda () (error '"No clause matching" _self74637469_))))
          (let ((_K74667478_
                 (lambda (_struct-t7476_)
                   (cons '@struct-cons (cons _struct-t7476_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self74637469_)
                (let ((_e74677481_ (##vector-ref _self74637469_ '1)))
                  (let ((_struct-t7484_ _e74677481_))
                    (_K74667478_ _struct-t7484_)))
                (_E74657473_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self7431_)
      (let ((_self74327439_ _self7431_))
        (let ((_E74347443_
               (lambda () (error '"No clause matching" _self74327439_))))
          (let ((_K74357449_
                 (lambda (_off7446_ _struct-t7447_)
                   (cons '@struct-getf
                         (cons _struct-t7447_ (cons _off7446_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self74327439_)
                (let ((_e74367452_ (##vector-ref _self74327439_ '1)))
                  (let ((_struct-t7455_ _e74367452_))
                    (let ((_e74377457_ (##vector-ref _self74327439_ '2)))
                      (let ((_off7460_ _e74377457_))
                        (_K74357449_ _off7460_ _struct-t7455_)))))
                (_E74347443_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self7400_)
      (let ((_self74017408_ _self7400_))
        (let ((_E74037412_
               (lambda () (error '"No clause matching" _self74017408_))))
          (let ((_K74047418_
                 (lambda (_off7415_ _struct-t7416_)
                   (cons '@struct-setf
                         (cons _struct-t7416_ (cons _off7415_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self74017408_)
                (let ((_e74057421_ (##vector-ref _self74017408_ '1)))
                  (let ((_struct-t7424_ _e74057421_))
                    (let ((_e74067426_ (##vector-ref _self74017408_ '2)))
                      (let ((_off7429_ _e74067426_))
                        (_K74047418_ _off7429_ _struct-t7424_)))))
                (_E74037412_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self7365_)
      (let ((_self73667374_ _self7365_))
        (let ((_E73687378_
               (lambda () (error '"No clause matching" _self73667374_))))
          (let ((_K73697384_
                 (lambda (_dispatch7381_ _arity7382_)
                   (cons '@lambda
                         (cons _arity7382_ (cons _dispatch7381_ '()))))))
            (if (struct-instance? gxc#!lambda::t _self73667374_)
                (let ((_e73707387_ (##vector-ref _self73667374_ '1)))
                  (let ((_e73717390_ (##vector-ref _self73667374_ '2)))
                    (let ((_arity7393_ _e73717390_))
                      (let ((_e73727395_ (##vector-ref _self73667374_ '3)))
                        (let ((_dispatch7398_ _e73727395_))
                          (_K73697384_ _dispatch7398_ _arity7393_))))))
                (_E73687378_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self7298_)
      (let ((_clause-e7300_
             (lambda (_clause7330_)
               (let ((_clause73317339_ _clause7330_))
                 (let ((_E73337343_
                        (lambda ()
                          (error '"No clause matching" _clause73317339_))))
                   (let ((_K73347349_
                          (lambda (_dispatch7346_ _arity7347_)
                            (cons _arity7347_ (cons _dispatch7346_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause73317339_)
                         (let ((_e73357352_
                                (##vector-ref _clause73317339_ '1)))
                           (let ((_e73367355_
                                  (##vector-ref _clause73317339_ '2)))
                             (let ((_arity7358_ _e73367355_))
                               (let ((_e73377360_
                                      (##vector-ref _clause73317339_ '3)))
                                 (let ((_dispatch7363_ _e73377360_))
                                   (_K73347349_
                                    _dispatch7363_
                                    _arity7358_))))))
                         (_E73337343_))))))))
        (let ((_self73017308_ _self7298_))
          (let ((_E73037312_
                 (lambda () (error '"No clause matching" _self73017308_))))
            (let ((_K73047319_
                   (lambda (_clauses7315_)
                     (let ((_clauses7317_ (map _clause-e7300_ _clauses7315_)))
                       (cons '@case-lambda _clauses7317_)))))
              (if (struct-instance? gxc#!case-lambda::t _self73017308_)
                  (let ((_e73057322_ (##vector-ref _self73017308_ '1)))
                    (let ((_e73067325_ (##vector-ref _self73017308_ '2)))
                      (let ((_clauses7328_ _e73067325_))
                        (_K73047319_ _clauses7328_))))
                  (_E73037312_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx7293_)
      (let ((_$e7295_ (gx#resolve-identifier__0 _stx7293_)))
        (if _$e7295_
            (##structure-ref _$e7295_ '1 gx#binding::t '#f)
            (gx#stx-e _stx7293_))))))
