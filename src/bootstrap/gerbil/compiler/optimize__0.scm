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
    (lambda _$args14589_
      (apply make-struct-instance gxc#optimizer-info::t _$args14589_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self14587_)
      (direct-struct-instance-init!
       _self14587_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj14591 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj14591) __obj14591))))))
  (define gxc#optimize!
    (lambda (_ctx14582_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx14582_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx14582_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code14584_
               (gxc#optimize-source
                (##structure-ref _ctx14582_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx14582_
           _code14584_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx14543_)
      ((letrec ((_lp14545_
                 (lambda (_rest14547_)
                   (let ((_rest1454814556_ _rest14547_))
                     (let ((_E1455114560_
                            (lambda ()
                              (error '"No clause matching" _rest1454814556_))))
                       (let ((_else1455014564_ (lambda () (void))))
                         (let ((_K1455214570_
                                (lambda (_rest14567_ _hd14568_)
                                  (if (##structure-instance-of?
                                       _hd14568_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd14568_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx14543_)
                                              (_lp14545_
                                               (##structure-ref
                                                _hd14568_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd14568_)))
                                        (_lp14545_ _rest14567_))
                                      (if (##structure-direct-instance-of?
                                           _hd14568_
                                           'gx#module-import::t)
                                          (_lp14545_
                                           (cons (##structure-ref
                                                  _hd14568_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest14567_))
                                          (if (##structure-direct-instance-of?
                                               _hd14568_
                                               'gx#module-export::t)
                                              (_lp14545_
                                               (cons (##structure-ref
                                                      _hd14568_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest14567_))
                                              (if (##structure-direct-instance-of?
                                                   _hd14568_
                                                   'gx#import-set::t)
                                                  (_lp14545_
                                                   (cons (##structure-ref
                                                          _hd14568_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest14567_))
                                                  (error '"Unexpected module import"
                                                         _hd14568_))))))))
                           (if (##pair? _rest1454814556_)
                               (let ((_hd1455314573_ (##car _rest1454814556_))
                                     (_tl1455414575_ (##cdr _rest1454814556_)))
                                 (let ((_hd14578_ _hd1455314573_))
                                   (let ((_rest14580_ _tl1455414575_))
                                     (_K1455214570_ _rest14580_ _hd14578_))))
                               (_else1455014564_)))))))))
         _lp14545_)
       (##structure-ref _ctx14543_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx14538_)
      (let ((_$e14540_ (gx#core-context-prelude__opt-lambda9765 _ctx14538_)))
        (if _$e14540_ (gxc#optimizer-load-ssxi _$e14540_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx14518_)
      (if (if (##structure-instance-of? _ctx14518_ 'gx#module-context::t)
              (list? (##structure-ref _ctx14518_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht14520_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id14522_
                   (##structure-ref _ctx14518_ '1 gx#expander-context::t '#f)))
              (let ((_mod14524_ (hash-get _ht14520_ _id14522_)))
                (let ()
                  (let ((_$e14527_ _mod14524_))
                    (if _$e14527_
                        _$e14527_
                        (let ((_mod14530_
                               (gxc#optimizer-import-ssxi _ctx14518_)))
                          (let ((_val14535_
                                 (let ((_$e14532_ _mod14530_))
                                   (if _$e14532_ _$e14532_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht14520_ _id14522_ _val14535_)
                                _val14535_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx14495_)
      (let ((_catch-e14497_
             (lambda (_exn14516_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx14495_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn14516_))
                     '#!void)
                 '#f))))
        (let ((_import-e14498_
               (lambda ()
                 (let ((_str-id14501_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx14495_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path14509_
                          (let ((_odir1450214504_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1450214504_
                                (let ((_odir14507_ _odir1450214504_))
                                  (path-expand
                                   (string-append _str-id14501_ '".ss")
                                   _odir14507_))
                                '#f))))
                     (let ((_library-path14511_
                            (string->symbol
                             (string-append '":" _str-id14501_))))
                       (let ((_ssxi-path14513_
                              (if (if _artefact-path14509_
                                      (file-exists? _artefact-path14509_)
                                      '#f)
                                  _artefact-path14509_
                                  _library-path14511_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path14513_)
                             (gx#import-module__opt-lambda9800
                              _ssxi-path14513_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx14495_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e14497_ _import-e14498_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args14492_
      (apply make-struct-instance gxc#!type::t _$args14492_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args14489_
      (apply make-struct-instance gxc#!alias::t _$args14489_)))
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
    (lambda _$args14486_
      (apply make-struct-instance gxc#!struct-type::t _$args14486_)))
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
    (lambda _$args14483_
      (apply make-struct-instance gxc#!procedure::t _$args14483_)))
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
    (lambda _$args14480_
      (apply make-struct-instance gxc#!struct-pred::t _$args14480_)))
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
    (lambda _$args14477_
      (apply make-struct-instance gxc#!struct-cons::t _$args14477_)))
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
    (lambda _$args14474_
      (apply make-struct-instance gxc#!struct-getf::t _$args14474_)))
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
    (lambda _$args14471_
      (apply make-struct-instance gxc#!struct-setf::t _$args14471_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type 'gxc#!lambda::t gxc#!procedure::t '2 '!lambda '() '#f))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args14468_
      (apply make-struct-instance gxc#!lambda::t _$args14468_)))
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
    (lambda _$args14465_
      (apply make-struct-instance gxc#!case-lambda::t _$args14465_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self14457_
             _id14458_
             _super14459_
             _fields14460_
             _xfields14461_
             _ctor14462_
             _plist14463_)
      (direct-struct-instance-init!
       _self14457_
       _id14458_
       _super14459_
       _fields14460_
       _xfields14461_
       _ctor14462_
       _plist14463_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type14450_)
      (let ((_$e14452_
             (##structure-ref _type14450_ '7 gxc#!struct-type::t '#f)))
        (if _$e14452_
            (values _$e14452_)
            (let ((_vtab14455_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type14450_
                 _vtab14455_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab14455_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type14441_ _method14442_)
      (let ((_vtab1444314445_
             (##structure-ref _type14441_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1444314445_
            (let ((_vtab14448_ _vtab1444314445_))
              (hash-get _vtab14448_ _method14442_))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym14438_ _type14439_)
      (begin
        (if (##structure-instance-of? _type14439_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym14438_ _type14439_))
        (gxc#verbose
         '"declare-type "
         _sym14438_
         '" "
         (##vector->list _type14439_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym14438_
         _type14439_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda14413
      (lambda (_type-t14415_ _method14416_ _sym14417_ _rebind?14418_)
        (let ((_type14420_ (gxc#optimizer-resolve-type _type-t14415_)))
          (if (##structure-instance-of? _type14420_ 'gxc#!struct-type::t)
              (let ((_vtab14422_ (gxc#!struct-type-vtab _type14420_)))
                (if _rebind?14418_
                    (if (hash-key? _vtab14422_ _method14416_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t14415_
                         '" "
                         _method14416_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t14415_
                         '" "
                         _method14416_))
                    (if (hash-key? _vtab14422_ _method14416_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t14415_
                           '" "
                           _method14416_
                           '" => "
                           _sym14417_)
                          (hash-put! _vtab14422_ _method14416_ _sym14417_)))))
              (if (not _type14420_)
                  (gxc#verbose '"declare-method: unknown type " _type-t14415_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t14415_
                         _type14420_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t14427_ _method14428_ _sym14429_)
          (let ((_rebind?14431_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda14413
             _type-t14427_
             _method14428_
             _sym14429_
             _rebind?14431_))))
      (define gxc#optimizer-declare-method!
        (lambda _g14595_
          (let ((_g14594_ (length _g14595_)))
            (cond ((fx= _g14594_ 3)
                   (apply (lambda (_type-t14427_ _method14428_ _sym14429_)
                            (gxc#optimizer-declare-method!__0
                             _type-t14427_
                             _method14428_
                             _sym14429_))
                          _g14595_))
                  ((fx= _g14594_ 4)
                   (apply (lambda (_type-t14433_
                                   _method14434_
                                   _sym14435_
                                   _rebind?14436_)
                            (gxc#optimizer-declare-method!__opt-lambda14413
                             _type-t14433_
                             _method14434_
                             _sym14435_
                             _rebind?14436_))
                          _g14595_))
                  (else (error "No clause matching arguments" _g14595_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym14412_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym14412_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym14404_)
      (let ((_type1440514407_ (gxc#optimizer-lookup-type _sym14404_)))
        (if _type1440514407_
            (let ((_type14410_ _type1440514407_))
              (if (##structure-instance-of? _type14410_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type14410_ '1 gxc#!type::t '#f))
                  _type14410_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t14399_ _method14400_)
      (let ((_type14402_ (gxc#optimizer-resolve-type _type-t14399_)))
        (if (##structure-instance-of? _type14402_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type14402_ _method14400_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx14395_)
      (let ((_stx14397_ (gxc#apply-lift-top-lambdas _stx14395_)))
        (begin
          (gxc#apply-collect-type-info _stx14397_)
          (gxc#apply-optimize-call _stx14397_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl14392_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14392_ '%#lambda false)
           (hash-put! _tbl14392_ '%#case-lambda false)
           (hash-put! _tbl14392_ '%#let-values false)
           (hash-put! _tbl14392_ '%#letrec-values false)
           (hash-put! _tbl14392_ '%#letrec*-values false)
           (hash-put! _tbl14392_ '%#quote false)
           (hash-put! _tbl14392_ '%#quote-syntax false)
           (hash-put! _tbl14392_ '%#call false)
           (hash-put! _tbl14392_ '%#if false)
           (hash-put! _tbl14392_ '%#ref false)
           (hash-put! _tbl14392_ '%#set! false)
           (hash-put! _tbl14392_ '%#struct-instance? false)
           (hash-put! _tbl14392_ '%#struct-direct-instance? false)
           (hash-put! _tbl14392_ '%#struct-ref false)
           (hash-put! _tbl14392_ '%#struct-set! false)
           _tbl14392_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl14388_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14388_ '%#begin false)
           (hash-put! _tbl14388_ '%#begin-syntax false)
           (hash-put! _tbl14388_ '%#begin-foreign false)
           (hash-put! _tbl14388_ '%#module false)
           (hash-put! _tbl14388_ '%#import false)
           (hash-put! _tbl14388_ '%#export false)
           (hash-put! _tbl14388_ '%#provide false)
           (hash-put! _tbl14388_ '%#extern false)
           (hash-put! _tbl14388_ '%#define-values false)
           (hash-put! _tbl14388_ '%#define-syntax false)
           (hash-put! _tbl14388_ '%#define-alias false)
           (hash-put! _tbl14388_ '%#declare false)
           _tbl14388_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl14384_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14384_ (force gxc#&false-special-form))
           (hash-copy! _tbl14384_ (force gxc#&false-expression))
           _tbl14384_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl14380_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14380_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl14380_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl14380_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl14380_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl14380_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl14380_ '%#quote gxc#xform-identity)
           (hash-put! _tbl14380_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl14380_ '%#call gxc#xform-identity)
           (hash-put! _tbl14380_ '%#if gxc#xform-identity)
           (hash-put! _tbl14380_ '%#ref gxc#xform-identity)
           (hash-put! _tbl14380_ '%#set! gxc#xform-identity)
           (hash-put! _tbl14380_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl14380_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl14380_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl14380_ '%#struct-set! gxc#xform-identity)
           _tbl14380_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl14376_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14376_ '%#begin gxc#xform-identity)
           (hash-put! _tbl14376_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl14376_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl14376_ '%#module gxc#xform-identity)
           (hash-put! _tbl14376_ '%#import gxc#xform-identity)
           (hash-put! _tbl14376_ '%#export gxc#xform-identity)
           (hash-put! _tbl14376_ '%#provide gxc#xform-identity)
           (hash-put! _tbl14376_ '%#extern gxc#xform-identity)
           (hash-put! _tbl14376_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl14376_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl14376_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl14376_ '%#declare gxc#xform-identity)
           _tbl14376_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl14372_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14372_ (force gxc#&identity-special-form))
           (hash-copy! _tbl14372_ (force gxc#&identity-expression))
           _tbl14372_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl14368_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14368_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl14368_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl14368_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl14368_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl14368_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl14368_ '%#quote gxc#xform-identity)
           (hash-put! _tbl14368_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl14368_ '%#call gxc#xform-call%)
           (hash-put! _tbl14368_ '%#if gxc#xform-if%)
           (hash-put! _tbl14368_ '%#ref gxc#xform-identity)
           (hash-put! _tbl14368_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl14368_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl14368_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl14368_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl14368_ '%#struct-set! gxc#xform-struct-op%)
           _tbl14368_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl14364_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14364_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl14364_ (force gxc#&identity))
           (hash-put! _tbl14364_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl14364_ '%#module gxc#xform-module%)
           (hash-put! _tbl14364_ '%#define-values gxc#xform-define-values%)
           _tbl14364_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl14360_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14360_ (force gxc#&identity))
           (hash-put! _tbl14360_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl14360_ '%#module gxc#xform-module%)
           (hash-put!
            _tbl14360_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl14360_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx14353_ . _args14355_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14353_ _args14355_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl14350_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14350_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl14350_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl14350_ '%#ref gxc#expression-subst-ref%)
           _tbl14350_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx14343_ . _args14345_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14343_ _args14345_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl14340_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14340_ (force gxc#&void-expression))
           (hash-copy! _tbl14340_ (force gxc#&void-special-form))
           (hash-put! _tbl14340_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl14340_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl14340_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl14340_ '%#call gxc#collect-type-call%)
           _tbl14340_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx14333_ . _args14335_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14333_ _args14335_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl14330_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14330_ (force gxc#&false))
           (hash-put! _tbl14330_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl14330_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl14330_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl14330_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl14330_ '%#ref gxc#basic-expression-type-ref%)
           _tbl14330_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx14323_ . _args14325_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14323_ _args14325_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl14320_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14320_ (force gxc#&basic-xform))
           (hash-put! _tbl14320_ '%#call gxc#optimize-call%)
           _tbl14320_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx14313_ . _args14315_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14313_ _args14315_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl14310_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14310_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl14310_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl14310_ '%#module gxc#generate-ssxi-module%)
           (hash-put!
            _tbl14310_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl14310_ '%#call gxc#generate-ssxi-call%)
           _tbl14310_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx14303_ . _args14305_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14303_ _args14305_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx14300_ . _args14301_) _stx14300_))
  (define gxc#xform-wrap-source
    (lambda (_stx14297_ _src-stx14298_)
      (gx#stx-wrap-source _stx14297_ (gx#stx-source _src-stx14298_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args14291_)
      (lambda (_g1429214294_)
        (apply gxc#compile-e _g1429214294_ _args14291_))))
  (define gxc#xform-begin%
    (lambda (_stx14250_ . _args14251_)
      (let ((_g1425314263_
             (lambda (_g1425414260_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1425414260_))))
        (let ((_g1425214288_
               (lambda (_g1425414266_)
                 (if (gx#stx-pair? _g1425414266_)
                     (let ((_e1425614268_ (gx#stx-e _g1425414266_)))
                       (let ((_hd1425714271_ (##car _e1425614268_))
                             (_tl1425814273_ (##cdr _e1425614268_)))
                         ((lambda (_L14276_)
                            (let ((_forms14286_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args14251_)
                                    _L14276_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms14286_)
                               _stx14250_)))
                          _tl1425814273_)))
                     (_g1425314263_ _g1425414266_)))))
          (_g1425214288_ _stx14250_)))))
  (define gxc#xform-module%
    (lambda (_stx14187_ . _args14188_)
      (let ((_g1419014204_
             (lambda (_g1419114201_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1419114201_))))
        (let ((_g1418914247_
               (lambda (_g1419114207_)
                 (if (gx#stx-pair? _g1419114207_)
                     (let ((_e1419414209_ (gx#stx-e _g1419114207_)))
                       (let ((_hd1419514212_ (##car _e1419414209_))
                             (_tl1419614214_ (##cdr _e1419414209_)))
                         (if (gx#stx-pair? _tl1419614214_)
                             (let ((_e1419714217_ (gx#stx-e _tl1419614214_)))
                               (let ((_hd1419814220_ (##car _e1419714217_))
                                     (_tl1419914222_ (##cdr _e1419714217_)))
                                 ((lambda (_L14225_ _L14226_)
                                    (let ((_ctx14239_
                                           (gx#syntax-local-e__0 _L14226_)))
                                      (let ((_code14241_
                                             (##structure-ref
                                              _ctx14239_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code14244_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code14241_
                                                         _args14188_))
                                                gx#current-expander-context
                                                _ctx14239_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx14239_
                                               _code14244_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L14226_
                                                           (cons _code14244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx14187_)))))))
                                  _tl1419914222_
                                  _hd1419814220_)))
                             (_g1419014204_ _g1419114207_))))
                     (_g1419014204_ _g1419114207_)))))
          (_g1418914247_ _stx14187_)))))
  (define gxc#xform-define-values%
    (lambda (_stx14117_ . _args14118_)
      (let ((_g1412014137_
             (lambda (_g1412114134_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1412114134_))))
        (let ((_g1411914184_
               (lambda (_g1412114140_)
                 (if (gx#stx-pair? _g1412114140_)
                     (let ((_e1412414142_ (gx#stx-e _g1412114140_)))
                       (let ((_hd1412514145_ (##car _e1412414142_))
                             (_tl1412614147_ (##cdr _e1412414142_)))
                         (if (gx#stx-pair? _tl1412614147_)
                             (let ((_e1412714150_ (gx#stx-e _tl1412614147_)))
                               (let ((_hd1412814153_ (##car _e1412714150_))
                                     (_tl1412914155_ (##cdr _e1412714150_)))
                                 (if (gx#stx-pair? _tl1412914155_)
                                     (let ((_e1413014158_
                                            (gx#stx-e _tl1412914155_)))
                                       (let ((_hd1413114161_
                                              (##car _e1413014158_))
                                             (_tl1413214163_
                                              (##cdr _e1413014158_)))
                                         (if (gx#stx-null? _tl1413214163_)
                                             ((lambda (_L14166_ _L14167_)
                                                (let ((_expr14182_
                                                       (apply gxc#compile-e
                                                              _L14166_
                                                              _args14118_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L14167_
                                                               (cons _expr14182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx14117_)))
                                              _hd1413114161_
                                              _hd1412814153_)
                                             (_g1412014137_ _g1412114140_))))
                                     (_g1412014137_ _g1412114140_))))
                             (_g1412014137_ _g1412114140_))))
                     (_g1412014137_ _g1412114140_)))))
          (_g1411914184_ _stx14117_)))))
  (define gxc#xform-lambda%
    (lambda (_stx14060_ . _args14061_)
      (let ((_g1406314077_
             (lambda (_g1406414074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1406414074_))))
        (let ((_g1406214114_
               (lambda (_g1406414080_)
                 (if (gx#stx-pair? _g1406414080_)
                     (let ((_e1406714082_ (gx#stx-e _g1406414080_)))
                       (let ((_hd1406814085_ (##car _e1406714082_))
                             (_tl1406914087_ (##cdr _e1406714082_)))
                         (if (gx#stx-pair? _tl1406914087_)
                             (let ((_e1407014090_ (gx#stx-e _tl1406914087_)))
                               (let ((_hd1407114093_ (##car _e1407014090_))
                                     (_tl1407214095_ (##cdr _e1407014090_)))
                                 ((lambda (_L14098_ _L14099_)
                                    (let ((_body14112_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args14061_)
                                            _L14098_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L14099_ _body14112_))
                                       _stx14060_)))
                                  _tl1407214095_
                                  _hd1407114093_)))
                             (_g1406314077_ _g1406414080_))))
                     (_g1406314077_ _g1406414080_)))))
          (_g1406214114_ _stx14060_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx13973_ . _args13974_)
      (let ((_clause-e13976_
             (lambda (_clause14017_)
               (let ((_g1401914030_
                      (lambda (_g1402014027_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1402014027_))))
                 (let ((_g1401814057_
                        (lambda (_g1402014033_)
                          (if (gx#stx-pair? _g1402014033_)
                              (let ((_e1402314035_ (gx#stx-e _g1402014033_)))
                                (let ((_hd1402414038_ (##car _e1402314035_))
                                      (_tl1402514040_ (##cdr _e1402314035_)))
                                  ((lambda (_L14043_ _L14044_)
                                     (let ((_body14055_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args13974_)
                                             _L14043_)))
                                       (cons _L14044_ _body14055_)))
                                   _tl1402514040_
                                   _hd1402414038_)))
                              (_g1401914030_ _g1402014033_)))))
                   (_g1401814057_ _clause14017_))))))
        (let ((_g1397813988_
               (lambda (_g1397913985_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1397913985_))))
          (let ((_g1397714014_
                 (lambda (_g1397913991_)
                   (if (gx#stx-pair? _g1397913991_)
                       (let ((_e1398113993_ (gx#stx-e _g1397913991_)))
                         (let ((_hd1398213996_ (##car _e1398113993_))
                               (_tl1398313998_ (##cdr _e1398113993_)))
                           ((lambda (_L14001_)
                              (let ((_clauses14012_
                                     (gx#stx-map1 _clause-e13976_ _L14001_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses14012_)
                                 _stx13973_)))
                            _tl1398313998_)))
                       (_g1397813988_ _g1397913991_)))))
            (_g1397714014_ _stx13973_))))))
  (define gxc#xform-let-values%
    (lambda (_stx13767_ . _args13768_)
      (let ((_g1377013803_
             (lambda (_g1377113800_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1377113800_))))
        (let ((_g1376913970_
               (lambda (_g1377113806_)
                 (if (gx#stx-pair? _g1377113806_)
                     (let ((_e1377613808_ (gx#stx-e _g1377113806_)))
                       (let ((_hd1377713811_ (##car _e1377613808_))
                             (_tl1377813813_ (##cdr _e1377613808_)))
                         (if (gx#stx-pair? _tl1377813813_)
                             (let ((_e1377913816_ (gx#stx-e _tl1377813813_)))
                               (let ((_hd1378013819_ (##car _e1377913816_))
                                     (_tl1378113821_ (##cdr _e1377913816_)))
                                 (if (gx#stx-pair/null? _hd1378013819_)
                                     (if (fx>= (gx#stx-length _hd1378013819_)
                                               '0)
                                         (let ((_g14596_
                                                (gx#syntax-split-splice
                                                 _hd1378013819_
                                                 '0)))
                                           (begin
                                             (let ((_g14597_
                                                    (values-count _g14596_)))
                                               (if (not (fx= _g14597_ 2))
                                                   (error "Context expects 2 values"
                                                          _g14597_)))
                                             (let ((_target1378213824_
                                                    (values-ref _g14596_ 0))
                                                   (_tl1378413826_
                                                    (values-ref _g14596_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1378413826_)
                                                   (letrec ((_loop1378513829_
                                                             (lambda (_hd1378313832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1378913834_
                              _hd1379013836_)
                       (if (gx#stx-pair? _hd1378313832_)
                           (let ((_e1378613839_ (gx#stx-e _hd1378313832_)))
                             (let ((_lp-hd1378713842_ (##car _e1378613839_))
                                   (_lp-tl1378813844_ (##cdr _e1378613839_)))
                               (if (gx#stx-pair? _lp-hd1378713842_)
                                   (let ((_e1379313847_
                                          (gx#stx-e _lp-hd1378713842_)))
                                     (let ((_hd1379413850_
                                            (##car _e1379313847_))
                                           (_tl1379513852_
                                            (##cdr _e1379313847_)))
                                       (if (gx#stx-pair? _tl1379513852_)
                                           (let ((_e1379613855_
                                                  (gx#stx-e _tl1379513852_)))
                                             (let ((_hd1379713858_
                                                    (##car _e1379613855_))
                                                   (_tl1379813860_
                                                    (##cdr _e1379613855_)))
                                               (if (gx#stx-null?
                                                    _tl1379813860_)
                                                   (_loop1378513829_
                                                    _lp-tl1378813844_
                                                    (cons _hd1379713858_
                                                          _expr1378913834_)
                                                    (cons _hd1379413850_
                                                          _hd1379013836_))
                                                   (_g1377013803_
                                                    _g1377113806_))))
                                           (_g1377013803_ _g1377113806_))))
                                   (_g1377013803_ _g1377113806_))))
                           (let ((_expr1379113863_ (reverse _expr1378913834_))
                                 (_hd1379213865_ (reverse _hd1379013836_)))
                             ((lambda (_L13868_ _L13869_ _L13870_ _L13871_)
                                (let ((_g1389013906_
                                       (lambda (_g1389113903_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1389113903_))))
                                  (let ((_g1388913960_
                                         (lambda (_g1389113909_)
                                           (if (gx#stx-pair/null?
                                                _g1389113909_)
                                               (if (fx>= (gx#stx-length
                                                          _g1389113909_)
                                                         '0)
                                                   (let ((_g14598_
                                                          (gx#syntax-split-splice
                                                           _g1389113909_
                                                           '0)))
                                                     (begin
                                                       (let ((_g14599_
                                                              (values-count
                                                               _g14598_)))
                                                         (if (not (fx= _g14599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g14599_)))
               (let ((_target1389313911_ (values-ref _g14598_ 0))
                     (_tl1389513913_ (values-ref _g14598_ 1)))
                 (if (gx#stx-null? _tl1389513913_)
                     (letrec ((_loop1389613916_
                               (lambda (_hd1389413919_ _expr1390013921_)
                                 (if (gx#stx-pair? _hd1389413919_)
                                     (let ((_e1389713924_
                                            (gx#syntax-e _hd1389413919_)))
                                       (let ((_lp-hd1389813927_
                                              (##car _e1389713924_))
                                             (_lp-tl1389913929_
                                              (##cdr _e1389713924_)))
                                         (_loop1389613916_
                                          _lp-tl1389913929_
                                          (cons _lp-hd1389813927_
                                                _expr1390013921_))))
                                     (let ((_expr1390113932_
                                            (reverse _expr1390013921_)))
                                       ((lambda (_L13935_)
                                          (let ()
                                            (let ((_body13948_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args13768_)
                                                    _L13868_)))
                                              (gxc#xform-wrap-source
                                               (cons _L13871_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L13935_
                                                              _L13870_)
                                                             (foldr (lambda (_g1394913953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1395013955_
                                     _g1395113957_)
                              (cons (cons _g1395013955_
                                          (cons _g1394913953_ '()))
                                    _g1395113957_))
                            '()
                            _L13935_
                            _L13870_))
                   _body13948_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx13767_))))
                                        _expr1390113932_))))))
                       (_loop1389613916_ _target1389313911_ '()))
                     (_g1389013906_ _g1389113909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1389013906_
                                                    _g1389113909_))
                                               (_g1389013906_
                                                _g1389113909_)))))
                                    (_g1388913960_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args13768_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1396213965_
                                                        _g1396313967_)
                                                 (cons _g1396213965_
                                                       _g1396313967_))
                                               '()
                                               _L13869_)))))))
                              _tl1378113821_
                              _expr1379113863_
                              _hd1379213865_
                              _hd1377713811_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1378513829_
                                                      _target1378213824_
                                                      '()
                                                      '()))
                                                   (_g1377013803_
                                                    _g1377113806_)))))
                                         (_g1377013803_ _g1377113806_))
                                     (_g1377013803_ _g1377113806_))))
                             (_g1377013803_ _g1377113806_))))
                     (_g1377013803_ _g1377113806_)))))
          (_g1376913970_ _stx13767_)))))
  (define gxc#xform-call%
    (lambda (_stx13709_ . _args13710_)
      (let ((_g1371213726_
             (lambda (_g1371313723_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1371313723_))))
        (let ((_g1371113764_
               (lambda (_g1371313729_)
                 (if (gx#stx-pair? _g1371313729_)
                     (let ((_e1371613731_ (gx#stx-e _g1371313729_)))
                       (let ((_hd1371713734_ (##car _e1371613731_))
                             (_tl1371813736_ (##cdr _e1371613731_)))
                         (if (gx#stx-pair? _tl1371813736_)
                             (let ((_e1371913739_ (gx#stx-e _tl1371813736_)))
                               (let ((_hd1372013742_ (##car _e1371913739_))
                                     (_tl1372113744_ (##cdr _e1371913739_)))
                                 ((lambda (_L13747_ _L13748_)
                                    (let ((_rator13761_
                                           (apply gxc#compile-e
                                                  _L13748_
                                                  _args13710_))
                                          (_rands13762_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args13710_)
                                            _L13747_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator13761_ _rands13762_))
                                       _stx13709_)))
                                  _tl1372113744_
                                  _hd1372013742_)))
                             (_g1371213726_ _g1371313729_))))
                     (_g1371213726_ _g1371313729_)))))
          (_g1371113764_ _stx13709_)))))
  (define gxc#xform-if%
    (lambda (_stx13668_ . _args13669_)
      (let ((_g1367113681_
             (lambda (_g1367213678_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1367213678_))))
        (let ((_g1367013706_
               (lambda (_g1367213684_)
                 (if (gx#stx-pair? _g1367213684_)
                     (let ((_e1367413686_ (gx#stx-e _g1367213684_)))
                       (let ((_hd1367513689_ (##car _e1367413686_))
                             (_tl1367613691_ (##cdr _e1367413686_)))
                         ((lambda (_L13694_)
                            (let ((_forms13704_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args13669_)
                                    _L13694_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms13704_)
                               _stx13668_)))
                          _tl1367613691_)))
                     (_g1367113681_ _g1367213684_)))))
          (_g1367013706_ _stx13668_)))))
  (define gxc#xform-setq%
    (lambda (_stx13598_ . _args13599_)
      (let ((_g1360113618_
             (lambda (_g1360213615_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1360213615_))))
        (let ((_g1360013665_
               (lambda (_g1360213621_)
                 (if (gx#stx-pair? _g1360213621_)
                     (let ((_e1360513623_ (gx#stx-e _g1360213621_)))
                       (let ((_hd1360613626_ (##car _e1360513623_))
                             (_tl1360713628_ (##cdr _e1360513623_)))
                         (if (gx#stx-pair? _tl1360713628_)
                             (let ((_e1360813631_ (gx#stx-e _tl1360713628_)))
                               (let ((_hd1360913634_ (##car _e1360813631_))
                                     (_tl1361013636_ (##cdr _e1360813631_)))
                                 (if (gx#stx-pair? _tl1361013636_)
                                     (let ((_e1361113639_
                                            (gx#stx-e _tl1361013636_)))
                                       (let ((_hd1361213642_
                                              (##car _e1361113639_))
                                             (_tl1361313644_
                                              (##cdr _e1361113639_)))
                                         (if (gx#stx-null? _tl1361313644_)
                                             ((lambda (_L13647_ _L13648_)
                                                (let ((_expr13663_
                                                       (apply gxc#compile-e
                                                              _L13647_
                                                              _args13599_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L13648_
                                                               (cons _expr13663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx13598_)))
                                              _hd1361213642_
                                              _hd1360913634_)
                                             (_g1360113618_ _g1360213621_))))
                                     (_g1360113618_ _g1360213621_))))
                             (_g1360113618_ _g1360213621_))))
                     (_g1360113618_ _g1360213621_)))))
          (_g1360013665_ _stx13598_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx13554_ . _args13555_)
      (let ((_g1355713568_
             (lambda (_g1355813565_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1355813565_))))
        (let ((_g1355613595_
               (lambda (_g1355813571_)
                 (if (gx#stx-pair? _g1355813571_)
                     (let ((_e1356113573_ (gx#stx-e _g1355813571_)))
                       (let ((_hd1356213576_ (##car _e1356113573_))
                             (_tl1356313578_ (##cdr _e1356113573_)))
                         ((lambda (_L13581_ _L13582_)
                            (let ((_op-args13593_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args13555_)
                                    _L13581_)))
                              (gxc#xform-wrap-source
                               (cons _L13582_ _op-args13593_)
                               _stx13554_)))
                          _tl1356313578_
                          _hd1356213576_)))
                     (_g1355713568_ _g1355813571_)))))
          (_g1355613595_ _stx13554_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form12788_)
      (let ((_g1279312950_
             (lambda (_g1279412947_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1279412947_))))
        (let ((_g1279212957_ (lambda (_g1279412953_) ((lambda () '#f)))))
          (let ((_g1279113097_
                 (lambda (_g1279412960_)
                   (if (gx#stx-pair? _g1279412960_)
                       (let ((_e1291012962_ (gx#stx-e _g1279412960_)))
                         (let ((_hd1291112965_ (##car _e1291012962_))
                               (_tl1291212967_ (##cdr _e1291012962_)))
                           (if (gx#stx-pair? _tl1291212967_)
                               (let ((_e1291312970_ (gx#stx-e _tl1291212967_)))
                                 (let ((_hd1291412973_ (##car _e1291312970_))
                                       (_tl1291512975_ (##cdr _e1291312970_)))
                                   (if (gx#stx-pair? _hd1291412973_)
                                       (let ((_e1291612978_
                                              (gx#stx-e _hd1291412973_)))
                                         (let ((_hd1291712981_
                                                (##car _e1291612978_))
                                               (_tl1291812983_
                                                (##cdr _e1291612978_)))
                                           (if (gx#identifier? _hd1291712981_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1291712981_)
                                                   (if (gx#stx-pair?
                                                        _tl1291812983_)
                                                       (let ((_e1291912986_
                                                              (gx#stx-e
                                                               _tl1291812983_)))
                                                         (let ((_hd1292012989_
                                                                (##car _e1291912986_))
                                                               (_tl1292112991_
                                                                (##cdr _e1291912986_)))
                                                           (if (gx#stx-pair?
                                                                _hd1292012989_)
                                                               (let ((_e1292212994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1292012989_)))
                         (let ((_hd1292312997_ (##car _e1292212994_))
                               (_tl1292412999_ (##cdr _e1292212994_)))
                           (if (gx#identifier? _hd1292312997_)
                               (if (gx#stx-eq? '%#ref _hd1292312997_)
                                   (if (gx#stx-pair? _tl1292412999_)
                                       (let ((_e1292513002_
                                              (gx#stx-e _tl1292412999_)))
                                         (let ((_hd1292613005_
                                                (##car _e1292513002_))
                                               (_tl1292713007_
                                                (##cdr _e1292513002_)))
                                           (if (gx#stx-null? _tl1292713007_)
                                               (if (gx#stx-pair?
                                                    _tl1292112991_)
                                                   (let ((_e1292813010_
                                                          (gx#stx-e
                                                           _tl1292112991_)))
                                                     (let ((_hd1292913013_
                                                            (##car _e1292813010_))
                                                           (_tl1293013015_
                                                            (##cdr _e1292813010_)))
                                                       (if (gx#stx-pair?
                                                            _hd1292913013_)
                                                           (let ((_e1293113018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1292913013_)))
                     (let ((_hd1293213021_ (##car _e1293113018_))
                           (_tl1293313023_ (##cdr _e1293113018_)))
                       (if (gx#identifier? _hd1293213021_)
                           (if (gx#stx-eq? '%#ref _hd1293213021_)
                               (if (gx#stx-pair? _tl1293313023_)
                                   (let ((_e1293413026_
                                          (gx#stx-e _tl1293313023_)))
                                     (let ((_hd1293513029_
                                            (##car _e1293413026_))
                                           (_tl1293613031_
                                            (##cdr _e1293413026_)))
                                       (if (gx#stx-null? _tl1293613031_)
                                           (if (gx#stx-pair? _tl1293013015_)
                                               (let ((_e1293713034_
                                                      (gx#stx-e
                                                       _tl1293013015_)))
                                                 (let ((_hd1293813037_
                                                        (##car _e1293713034_))
                                                       (_tl1293913039_
                                                        (##cdr _e1293713034_)))
                                                   (if (gx#stx-pair?
                                                        _hd1293813037_)
                                                       (let ((_e1294013042_
                                                              (gx#stx-e
                                                               _hd1293813037_)))
                                                         (let ((_hd1294113045_
                                                                (##car _e1294013042_))
                                                               (_tl1294213047_
                                                                (##cdr _e1294013042_)))
                                                           (if (gx#identifier?
                                                                _hd1294113045_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1294113045_)
                           (if (gx#stx-pair? _tl1294213047_)
                               (let ((_e1294313050_ (gx#stx-e _tl1294213047_)))
                                 (let ((_hd1294413053_ (##car _e1294313050_))
                                       (_tl1294513055_ (##cdr _e1294313050_)))
                                   (if (gx#stx-null? _tl1294513055_)
                                       (if (gx#stx-null? _tl1293913039_)
                                           (if (gx#stx-null? _tl1291512975_)
                                               ((lambda (_L13058_
                                                         _L13059_
                                                         _L13060_
                                                         _L13061_)
                                                  (if (gx#identifier? _L13061_)
                                                      (if (eq? (gxc#identifier-symbol
                                                                _L13060_)
                                                               'apply)
                                                          (if (gx#free-identifier=?
                                                               _L13061_
                                                               _L13058_)
                                                              (not (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13059_
                            _L13061_))
                      '#f)
                  '#f)
              '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1294413053_
                                                _hd1293513029_
                                                _hd1292613005_
                                                _hd1291112965_)
                                               (_g1279212957_ _g1279412960_))
                                           (_g1279212957_ _g1279412960_))
                                       (_g1279212957_ _g1279412960_))))
                               (_g1279212957_ _g1279412960_))
                           (_g1279212957_ _g1279412960_))
                       (_g1279212957_ _g1279412960_))))
               (_g1279212957_ _g1279412960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1279212957_ _g1279412960_))
                                           (_g1279212957_ _g1279412960_))))
                                   (_g1279212957_ _g1279412960_))
                               (_g1279212957_ _g1279412960_))
                           (_g1279212957_ _g1279412960_))))
                   (_g1279212957_ _g1279412960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279212957_
                                                    _g1279412960_))
                                               (_g1279212957_ _g1279412960_))))
                                       (_g1279212957_ _g1279412960_))
                                   (_g1279212957_ _g1279412960_))
                               (_g1279212957_ _g1279412960_))))
                       (_g1279212957_ _g1279412960_))))
               (_g1279212957_ _g1279412960_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279212957_
                                                    _g1279412960_))
                                               (_g1279212957_ _g1279412960_))))
                                       (_g1279212957_ _g1279412960_))))
                               (_g1279212957_ _g1279412960_))))
                       (_g1279212957_ _g1279412960_)))))
            (let ((_g1279013357_
                   (lambda (_g1279413100_)
                     (if (gx#stx-pair? _g1279413100_)
                         (let ((_e1284613102_ (gx#stx-e _g1279413100_)))
                           (let ((_hd1284713105_ (##car _e1284613102_))
                                 (_tl1284813107_ (##cdr _e1284613102_)))
                             (if (gx#stx-pair/null? _hd1284713105_)
                                 (if (fx>= (gx#stx-length _hd1284713105_) '0)
                                     (let ((_g14600_
                                            (gx#syntax-split-splice
                                             _hd1284713105_
                                             '0)))
                                       (begin
                                         (let ((_g14601_
                                                (values-count _g14600_)))
                                           (if (not (fx= _g14601_ 2))
                                               (error "Context expects 2 values"
                                                      _g14601_)))
                                         (let ((_target1284913110_
                                                (values-ref _g14600_ 0))
                                               (_tl1285113112_
                                                (values-ref _g14600_ 1)))
                                           (letrec ((_loop1285213115_
                                                     (lambda (_hd1285013118_
                                                              _arg1285613120_)
                                                       (if (gx#stx-pair?
                                                            _hd1285013118_)
                                                           (let ((_e1285313123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1285013118_)))
                     (let ((_lp-hd1285413126_ (##car _e1285313123_))
                           (_lp-tl1285513128_ (##cdr _e1285313123_)))
                       (_loop1285213115_
                        _lp-tl1285513128_
                        (cons _lp-hd1285413126_ _arg1285613120_))))
                   (let ((_arg1285713131_ (reverse _arg1285613120_)))
                     (if (gx#stx-pair? _tl1284813107_)
                         (let ((_e1285813134_ (gx#stx-e _tl1284813107_)))
                           (let ((_hd1285913137_ (##car _e1285813134_))
                                 (_tl1286013139_ (##cdr _e1285813134_)))
                             (if (gx#stx-pair? _hd1285913137_)
                                 (let ((_e1286113142_
                                        (gx#stx-e _hd1285913137_)))
                                   (let ((_hd1286213145_ (##car _e1286113142_))
                                         (_tl1286313147_
                                          (##cdr _e1286113142_)))
                                     (if (gx#identifier? _hd1286213145_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1286213145_)
                                             (if (gx#stx-pair? _tl1286313147_)
                                                 (let ((_e1286413150_
                                                        (gx#stx-e
                                                         _tl1286313147_)))
                                                   (let ((_hd1286513153_
                                                          (##car _e1286413150_))
                                                         (_tl1286613155_
                                                          (##cdr _e1286413150_)))
                                                     (if (gx#stx-pair?
                                                          _hd1286513153_)
                                                         (let ((_e1286713158_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1286513153_)))
                   (let ((_hd1286813161_ (##car _e1286713158_))
                         (_tl1286913163_ (##cdr _e1286713158_)))
                     (if (gx#identifier? _hd1286813161_)
                         (if (gx#stx-eq? '%#ref _hd1286813161_)
                             (if (gx#stx-pair? _tl1286913163_)
                                 (let ((_e1287013166_
                                        (gx#stx-e _tl1286913163_)))
                                   (let ((_hd1287113169_ (##car _e1287013166_))
                                         (_tl1287213171_
                                          (##cdr _e1287013166_)))
                                     (if (gx#stx-null? _tl1287213171_)
                                         (if (gx#stx-pair? _tl1286613155_)
                                             (let ((_e1287313174_
                                                    (gx#stx-e _tl1286613155_)))
                                               (let ((_hd1287413177_
                                                      (##car _e1287313174_))
                                                     (_tl1287513179_
                                                      (##cdr _e1287313174_)))
                                                 (if (gx#stx-pair?
                                                      _hd1287413177_)
                                                     (let ((_e1287613182_
                                                            (gx#stx-e
                                                             _hd1287413177_)))
                                                       (let ((_hd1287713185_
                                                              (##car _e1287613182_))
                                                             (_tl1287813187_
                                                              (##cdr _e1287613182_)))
                                                         (if (gx#identifier?
                                                              _hd1287713185_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1287713185_)
                         (if (gx#stx-pair? _tl1287813187_)
                             (let ((_e1287913190_ (gx#stx-e _tl1287813187_)))
                               (let ((_hd1288013193_ (##car _e1287913190_))
                                     (_tl1288113195_ (##cdr _e1287913190_)))
                                 (if (gx#stx-null? _tl1288113195_)
                                     (if (gx#stx-pair/null? _tl1287513179_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1287513179_)
                                                   '1)
                                             (let ((_g14602_
                                                    (gx#syntax-split-splice
                                                     _tl1287513179_
                                                     '1)))
                                               (begin
                                                 (let ((_g14603_
                                                        (values-count
                                                         _g14602_)))
                                                   (if (not (fx= _g14603_ 2))
                                                       (error "Context expects 2 values"
                                                              _g14603_)))
                                                 (let ((_target1288213198_
                                                        (values-ref
                                                         _g14602_
                                                         0))
                                                       (_tl1288413200_
                                                        (values-ref
                                                         _g14602_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1288413200_)
                                                       (let ((_e1289113203_
                                                              (gx#stx-e
                                                               _tl1288413200_)))
                                                         (let ((_hd1289213206_
                                                                (##car _e1289113203_))
                                                               (_tl1289313208_
                                                                (##cdr _e1289113203_)))
                                                           (if (gx#stx-pair?
                                                                _hd1289213206_)
                                                               (let ((_e1289413211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1289213206_)))
                         (let ((_hd1289513214_ (##car _e1289413211_))
                               (_tl1289613216_ (##cdr _e1289413211_)))
                           (if (gx#identifier? _hd1289513214_)
                               (if (gx#stx-eq? '%#ref _hd1289513214_)
                                   (if (gx#stx-pair? _tl1289613216_)
                                       (let ((_e1289713219_
                                              (gx#stx-e _tl1289613216_)))
                                         (let ((_hd1289813222_
                                                (##car _e1289713219_))
                                               (_tl1289913224_
                                                (##cdr _e1289713219_)))
                                           (if (gx#stx-null? _tl1289913224_)
                                               (if (gx#stx-null?
                                                    _tl1289313208_)
                                                   (letrec ((_loop1288513227_
                                                             (lambda (_hd1288313230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1288913232_)
                       (if (gx#stx-pair? _hd1288313230_)
                           (let ((_e1288613235_ (gx#stx-e _hd1288313230_)))
                             (let ((_lp-hd1288713238_ (##car _e1288613235_))
                                   (_lp-tl1288813240_ (##cdr _e1288613235_)))
                               (if (gx#stx-pair? _lp-hd1288713238_)
                                   (let ((_e1290013243_
                                          (gx#stx-e _lp-hd1288713238_)))
                                     (let ((_hd1290113246_
                                            (##car _e1290013243_))
                                           (_tl1290213248_
                                            (##cdr _e1290013243_)))
                                       (if (gx#identifier? _hd1290113246_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1290113246_)
                                               (if (gx#stx-pair?
                                                    _tl1290213248_)
                                                   (let ((_e1290313251_
                                                          (gx#stx-e
                                                           _tl1290213248_)))
                                                     (let ((_hd1290413254_
                                                            (##car _e1290313251_))
                                                           (_tl1290513256_
                                                            (##cdr _e1290313251_)))
                                                       (if (gx#stx-null?
                                                            _tl1290513256_)
                                                           (_loop1288513227_
                                                            _lp-tl1288813240_
                                                            (cons _hd1290413254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1288913232_))
                   (_g1279113097_ _g1279413100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279113097_
                                                    _g1279413100_))
                                               (_g1279113097_ _g1279413100_))
                                           (_g1279113097_ _g1279413100_))))
                                   (_g1279113097_ _g1279413100_))))
                           (let ((_xarg1289013259_ (reverse _xarg1288913232_)))
                             (if (gx#stx-null? _tl1286013139_)
                                 ((lambda (_L13262_
                                           _L13263_
                                           _L13264_
                                           _L13265_
                                           _L13266_
                                           _L13267_)
                                    (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1331013313_
                                                           _g1331113315_)
                                                    (cons _g1331013313_
                                                          _g1331113315_))
                                                  '()
                                                  _L13267_)))
                                        (if (gx#identifier? _L13266_)
                                            (if (eq? (gxc#identifier-symbol
                                                      _L13265_)
                                                     'apply)
                                                (if (fx= (gx#stx-length
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1331713320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1331813322_)
                             (cons _g1331713320_ _g1331813322_))
                           '()
                           _L13267_)))
                 (gx#stx-length
                  (begin
                    '#!void
                    (foldr (lambda (_g1332413327_ _g1332513329_)
                             (cons _g1332413327_ _g1332513329_))
                           '()
                           _L13263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (andmap gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g1333113334_ _g1333213336_)
                                   (cons _g1333113334_ _g1333213336_))
                                 '()
                                 _L13267_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1333813341_ _g1333913343_)
                                   (cons _g1333813341_ _g1333913343_))
                                 '()
                                 _L13263_)))
                (if (gx#free-identifier=? _L13266_ _L13262_)
                    (not (find (lambda (_g1334513347_)
                                 (gx#free-identifier=? _g1334513347_ _L13264_))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1334913352_ _g1335013354_)
                                          (cons _g1334913352_ _g1335013354_))
                                        (cons _L13266_ '())
                                        _L13267_))))
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#f))
                                  _hd1289813222_
                                  _xarg1289013259_
                                  _hd1288013193_
                                  _hd1287113169_
                                  _tl1285113112_
                                  _arg1285713131_)
                                 (_g1279113097_ _g1279413100_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1288513227_
                                                      _target1288213198_
                                                      '()))
                                                   (_g1279113097_
                                                    _g1279413100_))
                                               (_g1279113097_ _g1279413100_))))
                                       (_g1279113097_ _g1279413100_))
                                   (_g1279113097_ _g1279413100_))
                               (_g1279113097_ _g1279413100_))))
                       (_g1279113097_ _g1279413100_))))
               (_g1279113097_ _g1279413100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1279113097_ _g1279413100_))
                                         (_g1279113097_ _g1279413100_))
                                     (_g1279113097_ _g1279413100_))))
                             (_g1279113097_ _g1279413100_))
                         (_g1279113097_ _g1279413100_))
                     (_g1279113097_ _g1279413100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1279113097_
                                                      _g1279413100_))))
                                             (_g1279113097_ _g1279413100_))
                                         (_g1279113097_ _g1279413100_))))
                                 (_g1279113097_ _g1279413100_))
                             (_g1279113097_ _g1279413100_))
                         (_g1279113097_ _g1279413100_))))
                 (_g1279113097_ _g1279413100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1279113097_ _g1279413100_))
                                             (_g1279113097_ _g1279413100_))
                                         (_g1279113097_ _g1279413100_))))
                                 (_g1279113097_ _g1279413100_))))
                         (_g1279113097_ _g1279413100_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1285213115_
                                              _target1284913110_
                                              '())))))
                                     (_g1279113097_ _g1279413100_))
                                 (_g1279113097_ _g1279413100_))))
                         (_g1279113097_ _g1279413100_)))))
              (let ((_g1278913551_
                     (lambda (_g1279413360_)
                       (if (gx#stx-pair? _g1279413360_)
                           (let ((_e1279813362_ (gx#stx-e _g1279413360_)))
                             (let ((_hd1279913365_ (##car _e1279813362_))
                                   (_tl1280013367_ (##cdr _e1279813362_)))
                               (if (gx#stx-pair/null? _hd1279913365_)
                                   (if (fx>= (gx#stx-length _hd1279913365_) '0)
                                       (let ((_g14604_
                                              (gx#syntax-split-splice
                                               _hd1279913365_
                                               '0)))
                                         (begin
                                           (let ((_g14605_
                                                  (values-count _g14604_)))
                                             (if (not (fx= _g14605_ 2))
                                                 (error "Context expects 2 values"
                                                        _g14605_)))
                                           (let ((_target1280113370_
                                                  (values-ref _g14604_ 0))
                                                 (_tl1280313372_
                                                  (values-ref _g14604_ 1)))
                                             (if (gx#stx-null? _tl1280313372_)
                                                 (letrec ((_loop1280413375_
                                                           (lambda (_hd1280213378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1280813380_)
                     (if (gx#stx-pair? _hd1280213378_)
                         (let ((_e1280513383_ (gx#stx-e _hd1280213378_)))
                           (let ((_lp-hd1280613386_ (##car _e1280513383_))
                                 (_lp-tl1280713388_ (##cdr _e1280513383_)))
                             (_loop1280413375_
                              _lp-tl1280713388_
                              (cons _lp-hd1280613386_ _arg1280813380_))))
                         (let ((_arg1280913391_ (reverse _arg1280813380_)))
                           (if (gx#stx-pair? _tl1280013367_)
                               (let ((_e1281013394_ (gx#stx-e _tl1280013367_)))
                                 (let ((_hd1281113397_ (##car _e1281013394_))
                                       (_tl1281213399_ (##cdr _e1281013394_)))
                                   (if (gx#stx-pair? _hd1281113397_)
                                       (let ((_e1281313402_
                                              (gx#stx-e _hd1281113397_)))
                                         (let ((_hd1281413405_
                                                (##car _e1281313402_))
                                               (_tl1281513407_
                                                (##cdr _e1281313402_)))
                                           (if (gx#identifier? _hd1281413405_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1281413405_)
                                                   (if (gx#stx-pair?
                                                        _tl1281513407_)
                                                       (let ((_e1281613410_
                                                              (gx#stx-e
                                                               _tl1281513407_)))
                                                         (let ((_hd1281713413_
                                                                (##car _e1281613410_))
                                                               (_tl1281813415_
                                                                (##cdr _e1281613410_)))
                                                           (if (gx#stx-pair?
                                                                _hd1281713413_)
                                                               (let ((_e1281913418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1281713413_)))
                         (let ((_hd1282013421_ (##car _e1281913418_))
                               (_tl1282113423_ (##cdr _e1281913418_)))
                           (if (gx#identifier? _hd1282013421_)
                               (if (gx#stx-eq? '%#ref _hd1282013421_)
                                   (if (gx#stx-pair? _tl1282113423_)
                                       (let ((_e1282213426_
                                              (gx#stx-e _tl1282113423_)))
                                         (let ((_hd1282313429_
                                                (##car _e1282213426_))
                                               (_tl1282413431_
                                                (##cdr _e1282213426_)))
                                           (if (gx#stx-null? _tl1282413431_)
                                               (if (gx#stx-pair/null?
                                                    _tl1281813415_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1281813415_)
                                                             '0)
                                                       (let ((_g14606_
                                                              (gx#syntax-split-splice
                                                               _tl1281813415_
                                                               '0)))
                                                         (begin
                                                           (let ((_g14607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g14606_)))
                     (if (not (fx= _g14607_ 2))
                         (error "Context expects 2 values" _g14607_)))
                   (let ((_target1282513434_ (values-ref _g14606_ 0))
                         (_tl1282713436_ (values-ref _g14606_ 1)))
                     (if (gx#stx-null? _tl1282713436_)
                         (letrec ((_loop1282813439_
                                   (lambda (_hd1282613442_ _xarg1283213444_)
                                     (if (gx#stx-pair? _hd1282613442_)
                                         (let ((_e1282913447_
                                                (gx#stx-e _hd1282613442_)))
                                           (let ((_lp-hd1283013450_
                                                  (##car _e1282913447_))
                                                 (_lp-tl1283113452_
                                                  (##cdr _e1282913447_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1283013450_)
                                                 (let ((_e1283413455_
                                                        (gx#stx-e
                                                         _lp-hd1283013450_)))
                                                   (let ((_hd1283513458_
                                                          (##car _e1283413455_))
                                                         (_tl1283613460_
                                                          (##cdr _e1283413455_)))
                                                     (if (gx#identifier?
                                                          _hd1283513458_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1283513458_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1283613460_)
                         (let ((_e1283713463_ (gx#stx-e _tl1283613460_)))
                           (let ((_hd1283813466_ (##car _e1283713463_))
                                 (_tl1283913468_ (##cdr _e1283713463_)))
                             (if (gx#stx-null? _tl1283913468_)
                                 (_loop1282813439_
                                  _lp-tl1283113452_
                                  (cons _hd1283813466_ _xarg1283213444_))
                                 (_g1279013357_ _g1279413360_))))
                         (_g1279013357_ _g1279413360_))
                     (_g1279013357_ _g1279413360_))
                 (_g1279013357_ _g1279413360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1279013357_
                                                  _g1279413360_))))
                                         (let ((_xarg1283313471_
                                                (reverse _xarg1283213444_)))
                                           (if (gx#stx-null? _tl1281213399_)
                                               ((lambda (_L13474_
                                                         _L13475_
                                                         _L13476_)
                                                  (if (gx#identifier-list?
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1350413507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1350513509_)
                          (cons _g1350413507_ _g1350513509_))
                        '()
                        _L13476_)))
              (if (fx= (gx#stx-length
                        (begin
                          '#!void
                          (foldr (lambda (_g1351113514_ _g1351213516_)
                                   (cons _g1351113514_ _g1351213516_))
                                 '()
                                 _L13476_)))
                       (gx#stx-length
                        (begin
                          '#!void
                          (foldr (lambda (_g1351813521_ _g1351913523_)
                                   (cons _g1351813521_ _g1351913523_))
                                 '()
                                 _L13474_))))
                  (if (andmap gx#free-identifier=?
                              (begin
                                '#!void
                                (foldr (lambda (_g1352513528_ _g1352613530_)
                                         (cons _g1352513528_ _g1352613530_))
                                       '()
                                       _L13476_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1353213535_ _g1353313537_)
                                         (cons _g1353213535_ _g1353313537_))
                                       '()
                                       _L13474_)))
                      (not (find (lambda (_g1353913541_)
                                   (gx#free-identifier=?
                                    _g1353913541_
                                    _L13475_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1354313546_ _g1354413548_)
                                            (cons _g1354313546_ _g1354413548_))
                                          '()
                                          _L13476_))))
                      '#f)
                  '#f)
              '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1283313471_
                                                _hd1282313429_
                                                _arg1280913391_)
                                               (_g1279013357_
                                                _g1279413360_)))))))
                           (_loop1282813439_ _target1282513434_ '()))
                         (_g1279013357_ _g1279413360_)))))
               (_g1279013357_ _g1279413360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279013357_
                                                    _g1279413360_))
                                               (_g1279013357_ _g1279413360_))))
                                       (_g1279013357_ _g1279413360_))
                                   (_g1279013357_ _g1279413360_))
                               (_g1279013357_ _g1279413360_))))
                       (_g1279013357_ _g1279413360_))))
               (_g1279013357_ _g1279413360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279013357_
                                                    _g1279413360_))
                                               (_g1279013357_ _g1279413360_))))
                                       (_g1279013357_ _g1279413360_))))
                               (_g1279013357_ _g1279413360_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1280413375_
                                                    _target1280113370_
                                                    '()))
                                                 (_g1279013357_
                                                  _g1279413360_)))))
                                       (_g1279013357_ _g1279413360_))
                                   (_g1279013357_ _g1279413360_))))
                           (_g1279013357_ _g1279413360_)))))
                (_g1278913551_ _form12788_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form12318_)
      (let ((_g1232212430_
             (lambda (_g1232312427_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1232312427_))))
        (let ((_g1232112547_
               (lambda (_g1232312433_)
                 (if (gx#stx-pair? _g1232312433_)
                     (let ((_e1239612435_ (gx#stx-e _g1232312433_)))
                       (let ((_hd1239712438_ (##car _e1239612435_))
                             (_tl1239812440_ (##cdr _e1239612435_)))
                         (if (gx#stx-pair? _tl1239812440_)
                             (let ((_e1239912443_ (gx#stx-e _tl1239812440_)))
                               (let ((_hd1240012446_ (##car _e1239912443_))
                                     (_tl1240112448_ (##cdr _e1239912443_)))
                                 (if (gx#stx-pair? _hd1240012446_)
                                     (let ((_e1240212451_
                                            (gx#stx-e _hd1240012446_)))
                                       (let ((_hd1240312454_
                                              (##car _e1240212451_))
                                             (_tl1240412456_
                                              (##cdr _e1240212451_)))
                                         (if (gx#identifier? _hd1240312454_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1240312454_)
                                                 (if (gx#stx-pair?
                                                      _tl1240412456_)
                                                     (let ((_e1240512459_
                                                            (gx#stx-e
                                                             _tl1240412456_)))
                                                       (let ((_hd1240612462_
                                                              (##car _e1240512459_))
                                                             (_tl1240712464_
                                                              (##cdr _e1240512459_)))
                                                         (if (gx#stx-pair?
                                                              _hd1240612462_)
                                                             (let ((_e1240812467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1240612462_)))
                       (let ((_hd1240912470_ (##car _e1240812467_))
                             (_tl1241012472_ (##cdr _e1240812467_)))
                         (if (gx#identifier? _hd1240912470_)
                             (if (gx#stx-eq? '%#ref _hd1240912470_)
                                 (if (gx#stx-pair? _tl1241012472_)
                                     (let ((_e1241112475_
                                            (gx#stx-e _tl1241012472_)))
                                       (let ((_hd1241212478_
                                              (##car _e1241112475_))
                                             (_tl1241312480_
                                              (##cdr _e1241112475_)))
                                         (if (gx#stx-null? _tl1241312480_)
                                             (if (gx#stx-pair? _tl1240712464_)
                                                 (let ((_e1241412483_
                                                        (gx#stx-e
                                                         _tl1240712464_)))
                                                   (let ((_hd1241512486_
                                                          (##car _e1241412483_))
                                                         (_tl1241612488_
                                                          (##cdr _e1241412483_)))
                                                     (if (gx#stx-pair?
                                                          _hd1241512486_)
                                                         (let ((_e1241712491_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1241512486_)))
                   (let ((_hd1241812494_ (##car _e1241712491_))
                         (_tl1241912496_ (##cdr _e1241712491_)))
                     (if (gx#identifier? _hd1241812494_)
                         (if (gx#stx-eq? '%#ref _hd1241812494_)
                             (if (gx#stx-pair? _tl1241912496_)
                                 (let ((_e1242012499_
                                        (gx#stx-e _tl1241912496_)))
                                   (let ((_hd1242112502_ (##car _e1242012499_))
                                         (_tl1242212504_
                                          (##cdr _e1242012499_)))
                                     (if (gx#stx-null? _tl1242212504_)
                                         (if (gx#stx-pair? _tl1241612488_)
                                             (let ((_e1242312507_
                                                    (gx#stx-e _tl1241612488_)))
                                               (let ((_hd1242412510_
                                                      (##car _e1242312507_))
                                                     (_tl1242512512_
                                                      (##cdr _e1242312507_)))
                                                 (if (gx#stx-null?
                                                      _tl1242512512_)
                                                     (if (gx#stx-null?
                                                          _tl1240112448_)
                                                         ((lambda (_L12515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12516_
                           _L12517_)
                    (gxc#identifier-symbol _L12515_))
                  _hd1242112502_
                  _hd1241212478_
                  _hd1239712438_)
                 (_g1232212430_ _g1232312433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1232212430_
                                                      _g1232312433_))))
                                             (_g1232212430_ _g1232312433_))
                                         (_g1232212430_ _g1232312433_))))
                                 (_g1232212430_ _g1232312433_))
                             (_g1232212430_ _g1232312433_))
                         (_g1232212430_ _g1232312433_))))
                 (_g1232212430_ _g1232312433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1232212430_ _g1232312433_))
                                             (_g1232212430_ _g1232312433_))))
                                     (_g1232212430_ _g1232312433_))
                                 (_g1232212430_ _g1232312433_))
                             (_g1232212430_ _g1232312433_))))
                     (_g1232212430_ _g1232312433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1232212430_
                                                      _g1232312433_))
                                                 (_g1232212430_ _g1232312433_))
                                             (_g1232212430_ _g1232312433_))))
                                     (_g1232212430_ _g1232312433_))))
                             (_g1232212430_ _g1232312433_))))
                     (_g1232212430_ _g1232312433_)))))
          (let ((_g1232012683_
                 (lambda (_g1232312550_)
                   (if (gx#stx-pair? _g1232312550_)
                       (let ((_e1235712552_ (gx#stx-e _g1232312550_)))
                         (let ((_hd1235812555_ (##car _e1235712552_))
                               (_tl1235912557_ (##cdr _e1235712552_)))
                           (if (gx#stx-pair/null? _hd1235812555_)
                               (if (fx>= (gx#stx-length _hd1235812555_) '0)
                                   (let ((_g14608_
                                          (gx#syntax-split-splice
                                           _hd1235812555_
                                           '0)))
                                     (begin
                                       (let ((_g14609_
                                              (values-count _g14608_)))
                                         (if (not (fx= _g14609_ 2))
                                             (error "Context expects 2 values"
                                                    _g14609_)))
                                       (let ((_target1236012560_
                                              (values-ref _g14608_ 0))
                                             (_tl1236212562_
                                              (values-ref _g14608_ 1)))
                                         (letrec ((_loop1236312565_
                                                   (lambda (_hd1236112568_
                                                            _arg1236712570_)
                                                     (if (gx#stx-pair?
                                                          _hd1236112568_)
                                                         (let ((_e1236412573_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1236112568_)))
                   (let ((_lp-hd1236512576_ (##car _e1236412573_))
                         (_lp-tl1236612578_ (##cdr _e1236412573_)))
                     (_loop1236312565_
                      _lp-tl1236612578_
                      (cons _lp-hd1236512576_ _arg1236712570_))))
                 (let ((_arg1236812581_ (reverse _arg1236712570_)))
                   (if (gx#stx-pair? _tl1235912557_)
                       (let ((_e1236912584_ (gx#stx-e _tl1235912557_)))
                         (let ((_hd1237012587_ (##car _e1236912584_))
                               (_tl1237112589_ (##cdr _e1236912584_)))
                           (if (gx#stx-pair? _hd1237012587_)
                               (let ((_e1237212592_ (gx#stx-e _hd1237012587_)))
                                 (let ((_hd1237312595_ (##car _e1237212592_))
                                       (_tl1237412597_ (##cdr _e1237212592_)))
                                   (if (gx#identifier? _hd1237312595_)
                                       (if (gx#stx-eq? '%#call _hd1237312595_)
                                           (if (gx#stx-pair? _tl1237412597_)
                                               (let ((_e1237512600_
                                                      (gx#stx-e
                                                       _tl1237412597_)))
                                                 (let ((_hd1237612603_
                                                        (##car _e1237512600_))
                                                       (_tl1237712605_
                                                        (##cdr _e1237512600_)))
                                                   (if (gx#stx-pair?
                                                        _hd1237612603_)
                                                       (let ((_e1237812608_
                                                              (gx#stx-e
                                                               _hd1237612603_)))
                                                         (let ((_hd1237912611_
                                                                (##car _e1237812608_))
                                                               (_tl1238012613_
                                                                (##cdr _e1237812608_)))
                                                           (if (gx#identifier?
                                                                _hd1237912611_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1237912611_)
                           (if (gx#stx-pair? _tl1238012613_)
                               (let ((_e1238112616_ (gx#stx-e _tl1238012613_)))
                                 (let ((_hd1238212619_ (##car _e1238112616_))
                                       (_tl1238312621_ (##cdr _e1238112616_)))
                                   (if (gx#stx-null? _tl1238312621_)
                                       (if (gx#stx-pair? _tl1237712605_)
                                           (let ((_e1238412624_
                                                  (gx#stx-e _tl1237712605_)))
                                             (let ((_hd1238512627_
                                                    (##car _e1238412624_))
                                                   (_tl1238612629_
                                                    (##cdr _e1238412624_)))
                                               (if (gx#stx-pair?
                                                    _hd1238512627_)
                                                   (let ((_e1238712632_
                                                          (gx#stx-e
                                                           _hd1238512627_)))
                                                     (let ((_hd1238812635_
                                                            (##car _e1238712632_))
                                                           (_tl1238912637_
                                                            (##cdr _e1238712632_)))
                                                       (if (gx#identifier?
                                                            _hd1238812635_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1238812635_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1238912637_)
                           (let ((_e1239012640_ (gx#stx-e _tl1238912637_)))
                             (let ((_hd1239112643_ (##car _e1239012640_))
                                   (_tl1239212645_ (##cdr _e1239012640_)))
                               (if (gx#stx-null? _tl1239212645_)
                                   (if (gx#stx-null? _tl1237112589_)
                                       ((lambda (_L12648_
                                                 _L12649_
                                                 _L12650_
                                                 _L12651_)
                                          (gxc#identifier-symbol _L12648_))
                                        _hd1239112643_
                                        _hd1238212619_
                                        _tl1236212562_
                                        _arg1236812581_)
                                       (_g1232112547_ _g1232312550_))
                                   (_g1232112547_ _g1232312550_))))
                           (_g1232112547_ _g1232312550_))
                       (_g1232112547_ _g1232312550_))
                   (_g1232112547_ _g1232312550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1232112547_
                                                    _g1232312550_))))
                                           (_g1232112547_ _g1232312550_))
                                       (_g1232112547_ _g1232312550_))))
                               (_g1232112547_ _g1232312550_))
                           (_g1232112547_ _g1232312550_))
                       (_g1232112547_ _g1232312550_))))
               (_g1232112547_ _g1232312550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1232112547_ _g1232312550_))
                                           (_g1232112547_ _g1232312550_))
                                       (_g1232112547_ _g1232312550_))))
                               (_g1232112547_ _g1232312550_))))
                       (_g1232112547_ _g1232312550_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1236312565_
                                            _target1236012560_
                                            '())))))
                                   (_g1232112547_ _g1232312550_))
                               (_g1232112547_ _g1232312550_))))
                       (_g1232112547_ _g1232312550_)))))
            (let ((_g1231912785_
                   (lambda (_g1232312686_)
                     (if (gx#stx-pair? _g1232312686_)
                         (let ((_e1232612688_ (gx#stx-e _g1232312686_)))
                           (let ((_hd1232712691_ (##car _e1232612688_))
                                 (_tl1232812693_ (##cdr _e1232612688_)))
                             (if (gx#stx-pair/null? _hd1232712691_)
                                 (if (fx>= (gx#stx-length _hd1232712691_) '0)
                                     (let ((_g14610_
                                            (gx#syntax-split-splice
                                             _hd1232712691_
                                             '0)))
                                       (begin
                                         (let ((_g14611_
                                                (values-count _g14610_)))
                                           (if (not (fx= _g14611_ 2))
                                               (error "Context expects 2 values"
                                                      _g14611_)))
                                         (let ((_target1232912696_
                                                (values-ref _g14610_ 0))
                                               (_tl1233112698_
                                                (values-ref _g14610_ 1)))
                                           (if (gx#stx-null? _tl1233112698_)
                                               (letrec ((_loop1233212701_
                                                         (lambda (_hd1233012704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1233612706_)
                   (if (gx#stx-pair? _hd1233012704_)
                       (let ((_e1233312709_ (gx#stx-e _hd1233012704_)))
                         (let ((_lp-hd1233412712_ (##car _e1233312709_))
                               (_lp-tl1233512714_ (##cdr _e1233312709_)))
                           (_loop1233212701_
                            _lp-tl1233512714_
                            (cons _lp-hd1233412712_ _arg1233612706_))))
                       (let ((_arg1233712717_ (reverse _arg1233612706_)))
                         (if (gx#stx-pair? _tl1232812693_)
                             (let ((_e1233812720_ (gx#stx-e _tl1232812693_)))
                               (let ((_hd1233912723_ (##car _e1233812720_))
                                     (_tl1234012725_ (##cdr _e1233812720_)))
                                 (if (gx#stx-pair? _hd1233912723_)
                                     (let ((_e1234112728_
                                            (gx#stx-e _hd1233912723_)))
                                       (let ((_hd1234212731_
                                              (##car _e1234112728_))
                                             (_tl1234312733_
                                              (##cdr _e1234112728_)))
                                         (if (gx#identifier? _hd1234212731_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1234212731_)
                                                 (if (gx#stx-pair?
                                                      _tl1234312733_)
                                                     (let ((_e1234412736_
                                                            (gx#stx-e
                                                             _tl1234312733_)))
                                                       (let ((_hd1234512739_
                                                              (##car _e1234412736_))
                                                             (_tl1234612741_
                                                              (##cdr _e1234412736_)))
                                                         (if (gx#stx-pair?
                                                              _hd1234512739_)
                                                             (let ((_e1234712744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1234512739_)))
                       (let ((_hd1234812747_ (##car _e1234712744_))
                             (_tl1234912749_ (##cdr _e1234712744_)))
                         (if (gx#identifier? _hd1234812747_)
                             (if (gx#stx-eq? '%#ref _hd1234812747_)
                                 (if (gx#stx-pair? _tl1234912749_)
                                     (let ((_e1235012752_
                                            (gx#stx-e _tl1234912749_)))
                                       (let ((_hd1235112755_
                                              (##car _e1235012752_))
                                             (_tl1235212757_
                                              (##cdr _e1235012752_)))
                                         (if (gx#stx-null? _tl1235212757_)
                                             (if (gx#stx-null? _tl1234012725_)
                                                 ((lambda (_L12760_ _L12761_)
                                                    (gxc#identifier-symbol
                                                     _L12760_))
                                                  _hd1235112755_
                                                  _arg1233712717_)
                                                 (_g1232012683_ _g1232312686_))
                                             (_g1232012683_ _g1232312686_))))
                                     (_g1232012683_ _g1232312686_))
                                 (_g1232012683_ _g1232312686_))
                             (_g1232012683_ _g1232312686_))))
                     (_g1232012683_ _g1232312686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1232012683_
                                                      _g1232312686_))
                                                 (_g1232012683_ _g1232312686_))
                                             (_g1232012683_ _g1232312686_))))
                                     (_g1232012683_ _g1232312686_))))
                             (_g1232012683_ _g1232312686_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1233212701_
                                                  _target1232912696_
                                                  '()))
                                               (_g1232012683_
                                                _g1232312686_)))))
                                     (_g1232012683_ _g1232312686_))
                                 (_g1232012683_ _g1232312686_))))
                         (_g1232012683_ _g1232312686_)))))
              (_g1231912785_ _form12318_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form12161_)
      (let ((_g1216512196_
             (lambda (_g1216612193_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1216612193_))))
        (let ((_g1216412209_
               (lambda (_g1216612199_)
                 ((lambda (_L12201_) (cons '0 '())) _g1216612199_))))
          (let ((_g1216312258_
                 (lambda (_g1216612212_)
                   (if (gx#stx-pair/null? _g1216612212_)
                       (if (fx>= (gx#stx-length _g1216612212_) '0)
                           (let ((_g14612_
                                  (gx#syntax-split-splice _g1216612212_ '0)))
                             (begin
                               (let ((_g14613_ (values-count _g14612_)))
                                 (if (not (fx= _g14613_ 2))
                                     (error "Context expects 2 values"
                                            _g14613_)))
                               (let ((_target1218212214_
                                      (values-ref _g14612_ 0))
                                     (_tl1218412216_ (values-ref _g14612_ 1)))
                                 (letrec ((_loop1218512219_
                                           (lambda (_hd1218312222_
                                                    _arg1218912224_)
                                             (if (gx#stx-pair? _hd1218312222_)
                                                 (let ((_e1218612227_
                                                        (gx#stx-e
                                                         _hd1218312222_)))
                                                   (let ((_lp-hd1218712230_
                                                          (##car _e1218612227_))
                                                         (_lp-tl1218812232_
                                                          (##cdr _e1218612227_)))
                                                     (_loop1218512219_
                                                      _lp-tl1218812232_
                                                      (cons _lp-hd1218712230_
                                                            _arg1218912224_))))
                                                 (let ((_arg1219012235_
                                                        (reverse _arg1218912224_)))
                                                   ((lambda (_L12238_ _L12239_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1225012253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1225112255_)
                                (cons _g1225012253_ _g1225112255_))
                              '()
                              _L12239_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1218412216_
                                                    _arg1219012235_))))))
                                   (_loop1218512219_
                                    _target1218212214_
                                    '())))))
                           (_g1216412209_ _g1216612212_))
                       (_g1216412209_ _g1216612212_)))))
            (let ((_g1216212315_
                   (lambda (_g1216612261_)
                     (if (gx#stx-pair? _g1216612261_)
                         (let ((_e1216812263_ (gx#stx-e _g1216612261_)))
                           (let ((_hd1216912266_ (##car _e1216812263_))
                                 (_tl1217012268_ (##cdr _e1216812263_)))
                             (if (gx#stx-pair/null? _hd1216912266_)
                                 (if (fx>= (gx#stx-length _hd1216912266_) '0)
                                     (let ((_g14614_
                                            (gx#syntax-split-splice
                                             _hd1216912266_
                                             '0)))
                                       (begin
                                         (let ((_g14615_
                                                (values-count _g14614_)))
                                           (if (not (fx= _g14615_ 2))
                                               (error "Context expects 2 values"
                                                      _g14615_)))
                                         (let ((_target1217112271_
                                                (values-ref _g14614_ 0))
                                               (_tl1217312273_
                                                (values-ref _g14614_ 1)))
                                           (if (gx#stx-null? _tl1217312273_)
                                               (letrec ((_loop1217412276_
                                                         (lambda (_hd1217212279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1217812281_)
                   (if (gx#stx-pair? _hd1217212279_)
                       (let ((_e1217512284_ (gx#stx-e _hd1217212279_)))
                         (let ((_lp-hd1217612287_ (##car _e1217512284_))
                               (_lp-tl1217712289_ (##cdr _e1217512284_)))
                           (_loop1217412276_
                            _lp-tl1217712289_
                            (cons _lp-hd1217612287_ _arg1217812281_))))
                       (let ((_arg1217912292_ (reverse _arg1217812281_)))
                         ((lambda (_L12295_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1230712310_ _g1230812312_)
                                        (cons _g1230712310_ _g1230812312_))
                                      '()
                                      _L12295_))))
                          _arg1217912292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1217412276_
                                                  _target1217112271_
                                                  '()))
                                               (_g1216312258_
                                                _g1216612261_)))))
                                     (_g1216312258_ _g1216612261_))
                                 (_g1216312258_ _g1216612261_))))
                         (_g1216312258_ _g1216612261_)))))
              (_g1216212315_ _form12161_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx11434_)
      (let ((_lambda-expr?11436_
             (lambda (_expr12114_)
               (let ((_g1211712127_
                      (lambda (_g1211812124_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1211812124_))))
                 (let ((_g1211612134_
                        (lambda (_g1211812130_) ((lambda () '#f)))))
                   (let ((_g1211512158_
                          (lambda (_g1211812137_)
                            (if (gx#stx-pair? _g1211812137_)
                                (let ((_e1212012139_ (gx#stx-e _g1211812137_)))
                                  (let ((_hd1212112142_ (##car _e1212012139_))
                                        (_tl1212212144_ (##cdr _e1212012139_)))
                                    (if (gx#identifier? _hd1212112142_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1212112142_)
                                            ((lambda (_L12147_) '#t)
                                             _tl1212212144_)
                                            (_g1211612134_ _g1211812137_))
                                        (_g1211612134_ _g1211812137_))))
                                (_g1211612134_ _g1211812137_)))))
                     (_g1211512158_ _expr12114_)))))))
        (let ((_case-lambda-expr?11437_
               (lambda (_expr12067_)
                 (let ((_g1207012080_
                        (lambda (_g1207112077_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1207112077_))))
                   (let ((_g1206912087_
                          (lambda (_g1207112083_) ((lambda () '#f)))))
                     (let ((_g1206812111_
                            (lambda (_g1207112090_)
                              (if (gx#stx-pair? _g1207112090_)
                                  (let ((_e1207312092_
                                         (gx#stx-e _g1207112090_)))
                                    (let ((_hd1207412095_
                                           (##car _e1207312092_))
                                          (_tl1207512097_
                                           (##cdr _e1207312092_)))
                                      (if (gx#identifier? _hd1207412095_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1207412095_)
                                              ((lambda (_L12100_) '#t)
                                               _tl1207512097_)
                                              (_g1206912087_ _g1207112090_))
                                          (_g1206912087_ _g1207112090_))))
                                  (_g1206912087_ _g1207112090_)))))
                       (_g1206812111_ _expr12067_)))))))
          (let ((_lift-case-lambda-clauses11438_
                 (lambda (_id11828_ _clauses11829_)
                   ((letrec ((_lp11831_
                              (lambda (_rest11833_
                                       _ids11834_
                                       _impls11835_
                                       _clauses11836_)
                                (let ((_rest1183711845_ _rest11833_))
                                  (let ((_E1184011849_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1183711845_))))
                                    (let ((_else1183911853_
                                           (lambda ()
                                             (values (reverse _ids11834_)
                                                     (reverse _impls11835_)
                                                     (reverse _clauses11836_)))))
                                      (let ((_K1184112055_
                                             (lambda (_rest11856_
                                                      _clause11857_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause11857_)
                                                   (_lp11831_
                                                    _rest11856_
                                                    _ids11834_
                                                    _impls11835_
                                                    (cons _clause11857_
                                                          _clauses11836_))
                                                   (let ((_g1185911870_
                                                          (lambda (_g1186011867_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1186011867_))))
                                                     (let ((_g1185812052_
                                                            (lambda (_g1186011873_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1186011873_)
                          (let ((_e1186311875_ (gx#stx-e _g1186011873_)))
                            (let ((_hd1186411878_ (##car _e1186311875_))
                                  (_tl1186511880_ (##cdr _e1186311875_)))
                              ((lambda (_L11883_ _L11884_)
                                 (let ((_id11901_
                                        (make-symbol
                                         (gx#stx-e _id11828_)
                                         '"__"
                                         (length _clauses11836_))))
                                   (let ((_impl11903_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L11884_ _L11883_))
                                           _stx11434_)))
                                     (let ((_clause12049_
                                            (let ((_g1190711935_
                                                   (lambda (_g1190811932_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1190811932_))))
                                              (let ((_g1190611950_
                                                     (lambda (_g1190811938_)
                                                       ((lambda (_L11940_)
                                                          (cons _L11884_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id11901_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L11940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx11434_)
                              '())))
                _g1190811938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1190511999_
                                                       (lambda (_g1190811953_)
                                                         (if (gx#stx-pair/null?
                                                              _g1190811953_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1190811953_)
                               '0)
                         (let ((_g14618_
                                (gx#syntax-split-splice _g1190811953_ '0)))
                           (begin
                             (let ((_g14619_ (values-count _g14618_)))
                               (if (not (fx= _g14619_ 2))
                                   (error "Context expects 2 values"
                                          _g14619_)))
                             (let ((_target1192111955_ (values-ref _g14618_ 0))
                                   (_tl1192311957_ (values-ref _g14618_ 1)))
                               (letrec ((_loop1192411960_
                                         (lambda (_hd1192211963_
                                                  _arg1192811965_)
                                           (if (gx#stx-pair? _hd1192211963_)
                                               (let ((_e1192511968_
                                                      (gx#stx-e
                                                       _hd1192211963_)))
                                                 (let ((_lp-hd1192611971_
                                                        (##car _e1192511968_))
                                                       (_lp-tl1192711973_
                                                        (##cdr _e1192511968_)))
                                                   (_loop1192411960_
                                                    _lp-tl1192711973_
                                                    (cons _lp-hd1192611971_
                                                          _arg1192811965_))))
                                               (let ((_arg1192911976_
                                                      (reverse _arg1192811965_)))
                                                 ((lambda (_L11979_ _L11980_)
                                                    (cons _L11884_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id11901_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L11979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1199111994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1199211996_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1199111994_ '()))
                           _g1199211996_))
                   '()
                   _L11980_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx11434_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1192311957_
                                                  _arg1192911976_))))))
                                 (_loop1192411960_ _target1192111955_ '())))))
                         (_g1190611950_ _g1190811953_))
                     (_g1190611950_ _g1190811953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1190412046_
                                                         (lambda (_g1190812002_)
                                                           (if (gx#stx-pair/null?
                                                                _g1190812002_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1190812002_)
                                 '0)
                           (let ((_g14620_
                                  (gx#syntax-split-splice _g1190812002_ '0)))
                             (begin
                               (let ((_g14621_ (values-count _g14620_)))
                                 (if (not (fx= _g14621_ 2))
                                     (error "Context expects 2 values"
                                            _g14621_)))
                               (let ((_target1191012004_
                                      (values-ref _g14620_ 0))
                                     (_tl1191212006_ (values-ref _g14620_ 1)))
                                 (if (gx#stx-null? _tl1191212006_)
                                     (letrec ((_loop1191312009_
                                               (lambda (_hd1191112012_
                                                        _arg1191712014_)
                                                 (if (gx#stx-pair?
                                                      _hd1191112012_)
                                                     (let ((_e1191412017_
                                                            (gx#stx-e
                                                             _hd1191112012_)))
                                                       (let ((_lp-hd1191512020_
                                                              (##car _e1191412017_))
                                                             (_lp-tl1191612022_
                                                              (##cdr _e1191412017_)))
                                                         (_loop1191312009_
                                                          _lp-tl1191612022_
                                                          (cons _lp-hd1191512020_
                                                                _arg1191712014_))))
                                                     (let ((_arg1191812025_
                                                            (reverse _arg1191712014_)))
                                                       ((lambda (_L12028_)
                                                          (cons _L11884_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id11901_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1203812041_
                                                             _g1203912043_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1203812041_ '()))
                    _g1203912043_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L12028_))))
                               _stx11434_)
                              '())))
                _arg1191812025_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1191312009_
                                        _target1191012004_
                                        '()))
                                     (_g1190511999_ _g1190812002_)))))
                           (_g1190511999_ _g1190812002_))
                       (_g1190511999_ _g1190812002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190412046_
                                                     _L11884_)))))))
                                       (let ()
                                         (_lp11831_
                                          _rest11856_
                                          (cons _id11901_ _ids11834_)
                                          (cons _impl11903_ _impls11835_)
                                          (cons _clause12049_
                                                _clauses11836_)))))))
                               _tl1186511880_
                               _hd1186411878_)))
                          (_g1185911870_ _g1186011873_)))))
               (_g1185812052_ _clause11857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1183711845_)
                                            (let ((_hd1184212058_
                                                   (##car _rest1183711845_))
                                                  (_tl1184312060_
                                                   (##cdr _rest1183711845_)))
                                              (let ((_clause12063_
                                                     _hd1184212058_))
                                                (let ((_rest12065_
                                                       _tl1184312060_))
                                                  (_K1184112055_
                                                   _rest12065_
                                                   _clause12063_))))
                                            (_else1183911853_)))))))))
                      _lp11831_)
                    _clauses11829_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def11439_
                   (lambda (_id11825_ _impl11826_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id11825_ '()) (cons _impl11826_ '())))
                      _stx11434_))))
              (let ((_g1144411518_
                     (lambda (_g1144511515_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1144511515_))))
                (let ((_g1144311525_
                       (lambda (_g1144511521_) ((lambda () _stx11434_)))))
                  (let ((_g1144211661_
                         (lambda (_g1144511528_)
                           (if (gx#stx-pair? _g1144511528_)
                               (let ((_e1148111530_ (gx#stx-e _g1144511528_)))
                                 (let ((_hd1148211533_ (##car _e1148111530_))
                                       (_tl1148311535_ (##cdr _e1148111530_)))
                                   (if (gx#stx-pair? _tl1148311535_)
                                       (let ((_e1148411538_
                                              (gx#stx-e _tl1148311535_)))
                                         (let ((_hd1148511541_
                                                (##car _e1148411538_))
                                               (_tl1148611543_
                                                (##cdr _e1148411538_)))
                                           (if (gx#stx-pair? _hd1148511541_)
                                               (let ((_e1148711546_
                                                      (gx#stx-e
                                                       _hd1148511541_)))
                                                 (let ((_hd1148811549_
                                                        (##car _e1148711546_))
                                                       (_tl1148911551_
                                                        (##cdr _e1148711546_)))
                                                   (if (gx#stx-null?
                                                        _tl1148911551_)
                                                       (if (gx#stx-pair?
                                                            _tl1148611543_)
                                                           (let ((_e1149011554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1148611543_)))
                     (let ((_hd1149111557_ (##car _e1149011554_))
                           (_tl1149211559_ (##cdr _e1149011554_)))
                       (if (gx#stx-pair? _hd1149111557_)
                           (let ((_e1149311562_ (gx#stx-e _hd1149111557_)))
                             (let ((_hd1149411565_ (##car _e1149311562_))
                                   (_tl1149511567_ (##cdr _e1149311562_)))
                               (if (gx#identifier? _hd1149411565_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1149411565_)
                                       (if (gx#stx-pair? _tl1149511567_)
                                           (let ((_e1149611570_
                                                  (gx#stx-e _tl1149511567_)))
                                             (let ((_hd1149711573_
                                                    (##car _e1149611570_))
                                                   (_tl1149811575_
                                                    (##cdr _e1149611570_)))
                                               (if (gx#stx-pair?
                                                    _hd1149711573_)
                                                   (let ((_e1149911578_
                                                          (gx#stx-e
                                                           _hd1149711573_)))
                                                     (let ((_hd1150011581_
                                                            (##car _e1149911578_))
                                                           (_tl1150111583_
                                                            (##cdr _e1149911578_)))
                                                       (if (gx#stx-pair?
                                                            _hd1150011581_)
                                                           (let ((_e1150211586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1150011581_)))
                     (let ((_hd1150311589_ (##car _e1150211586_))
                           (_tl1150411591_ (##cdr _e1150211586_)))
                       (if (gx#stx-pair? _hd1150311589_)
                           (let ((_e1150511594_ (gx#stx-e _hd1150311589_)))
                             (let ((_hd1150611597_ (##car _e1150511594_))
                                   (_tl1150711599_ (##cdr _e1150511594_)))
                               (if (gx#stx-null? _tl1150711599_)
                                   (if (gx#stx-pair? _tl1150411591_)
                                       (let ((_e1150811602_
                                              (gx#stx-e _tl1150411591_)))
                                         (let ((_hd1150911605_
                                                (##car _e1150811602_))
                                               (_tl1151011607_
                                                (##cdr _e1150811602_)))
                                           (if (gx#stx-null? _tl1151011607_)
                                               (if (gx#stx-null?
                                                    _tl1150111583_)
                                                   (if (gx#stx-pair?
                                                        _tl1149811575_)
                                                       (let ((_e1151111610_
                                                              (gx#stx-e
                                                               _tl1149811575_)))
                                                         (let ((_hd1151211613_
                                                                (##car _e1151111610_))
                                                               (_tl1151311615_
                                                                (##cdr _e1151111610_)))
                                                           (if (gx#stx-null?
                                                                _tl1151311615_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1149211559_)
                           ((lambda (_L11618_ _L11619_ _L11620_ _L11621_)
                              (if (if (gx#identifier? _L11621_)
                                      (if (gx#identifier? _L11620_)
                                          (if (_lambda-expr?11436_ _L11619_)
                                              (_case-lambda-expr?11437_
                                               _L11618_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id11656_
                                         (make-symbol
                                          (gx#stx-e _L11621_)
                                          '"__"
                                          (gx#stx-e _L11620_))))
                                    (let ((_new-case-lambda-expr11658_
                                           (gxc#apply-expression-subst
                                            _L11618_
                                            _L11620_
                                            _lambda-id11656_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L11621_)
                                           '" => "
                                           _lambda-id11656_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id11656_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id11656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L11619_ '())))
                _stx11434_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L11621_ '())
                                   (cons _new-case-lambda-expr11658_ '())))
                       _stx11434_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx11434_)))))
                                  (_g1144311525_ _g1144511528_)))
                            _hd1151211613_
                            _hd1150911605_
                            _hd1150611597_
                            _hd1148811549_)
                           (_g1144311525_ _g1144511528_))
                       (_g1144311525_ _g1144511528_))))
               (_g1144311525_ _g1144511528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1144311525_
                                                    _g1144511528_))
                                               (_g1144311525_ _g1144511528_))))
                                       (_g1144311525_ _g1144511528_))
                                   (_g1144311525_ _g1144511528_))))
                           (_g1144311525_ _g1144511528_))))
                   (_g1144311525_ _g1144511528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1144311525_
                                                    _g1144511528_))))
                                           (_g1144311525_ _g1144511528_))
                                       (_g1144311525_ _g1144511528_))
                                   (_g1144311525_ _g1144511528_))))
                           (_g1144311525_ _g1144511528_))))
                   (_g1144311525_ _g1144511528_))
               (_g1144311525_ _g1144511528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1144311525_ _g1144511528_))))
                                       (_g1144311525_ _g1144511528_))))
                               (_g1144311525_ _g1144511528_)))))
                    (let ((_g1144111758_
                           (lambda (_g1144511664_)
                             (if (gx#stx-pair? _g1144511664_)
                                 (let ((_e1146511666_
                                        (gx#stx-e _g1144511664_)))
                                   (let ((_hd1146611669_ (##car _e1146511666_))
                                         (_tl1146711671_
                                          (##cdr _e1146511666_)))
                                     (if (gx#stx-pair? _tl1146711671_)
                                         (let ((_e1146811674_
                                                (gx#stx-e _tl1146711671_)))
                                           (let ((_hd1146911677_
                                                  (##car _e1146811674_))
                                                 (_tl1147011679_
                                                  (##cdr _e1146811674_)))
                                             (if (gx#stx-pair? _hd1146911677_)
                                                 (let ((_e1147111682_
                                                        (gx#stx-e
                                                         _hd1146911677_)))
                                                   (let ((_hd1147211685_
                                                          (##car _e1147111682_))
                                                         (_tl1147311687_
                                                          (##cdr _e1147111682_)))
                                                     (if (gx#stx-null?
                                                          _tl1147311687_)
                                                         (if (gx#stx-pair?
                                                              _tl1147011679_)
                                                             (let ((_e1147411690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1147011679_)))
                       (let ((_hd1147511693_ (##car _e1147411690_))
                             (_tl1147611695_ (##cdr _e1147411690_)))
                         (if (gx#stx-null? _tl1147611695_)
                             ((lambda (_L11698_ _L11699_)
                                (if (if (gx#identifier? _L11699_)
                                        (_case-lambda-expr?11437_ _L11698_)
                                        '#f)
                                    (let ((_g1171511725_
                                           (lambda (_g1171611722_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1171611722_))))
                                      (let ((_g1171411755_
                                             (lambda (_g1171611728_)
                                               (if (gx#stx-pair? _g1171611728_)
                                                   (let ((_e1171811730_
                                                          (gx#stx-e
                                                           _g1171611728_)))
                                                     (let ((_hd1171911733_
                                                            (##car _e1171811730_))
                                                           (_tl1172011735_
                                                            (##cdr _e1171811730_)))
                                                       ((lambda (_L11738_)
                                                          (let ((_g14616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses11438_ _L11699_ _L11738_)))
                    (begin
                      (let ((_g14617_ (values-count _g14616_)))
                        (if (not (fx= _g14617_ 3))
                            (error "Context expects 3 values" _g14617_)))
                      (let ((_ids11748_ (values-ref _g14616_ 0))
                            (_impls11749_ (values-ref _g14616_ 1))
                            (_clauses11750_ (values-ref _g14616_ 2)))
                        (let ((_defs11752_
                               (map _case-lambda-clause-def11439_
                                    _ids11748_
                                    _impls11749_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L11699_)
                               '" => "
                               _ids11748_)
                              (for-each gx#core-bind-runtime! _ids11748_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L11699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses11750_)
                              _L11698_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11434_)
                                                  '())
                                            _defs11752_))
                               _stx11434_))))))))
                _tl1172011735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1171511725_
                                                    _g1171611728_)))))
                                        (_g1171411755_ _L11698_)))
                                    (_g1144211661_ _g1144511664_)))
                              _hd1147511693_
                              _hd1147211685_)
                             (_g1144211661_ _g1144511664_))))
                     (_g1144211661_ _g1144511664_))
                 (_g1144211661_ _g1144511664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1144211661_
                                                  _g1144511664_))))
                                         (_g1144211661_ _g1144511664_))))
                                 (_g1144211661_ _g1144511664_)))))
                      (let ((_g1144011822_
                             (lambda (_g1144511761_)
                               (if (gx#stx-pair? _g1144511761_)
                                   (let ((_e1144811763_
                                          (gx#stx-e _g1144511761_)))
                                     (let ((_hd1144911766_
                                            (##car _e1144811763_))
                                           (_tl1145011768_
                                            (##cdr _e1144811763_)))
                                       (if (gx#stx-pair? _tl1145011768_)
                                           (let ((_e1145111771_
                                                  (gx#stx-e _tl1145011768_)))
                                             (let ((_hd1145211774_
                                                    (##car _e1145111771_))
                                                   (_tl1145311776_
                                                    (##cdr _e1145111771_)))
                                               (if (gx#stx-pair?
                                                    _hd1145211774_)
                                                   (let ((_e1145411779_
                                                          (gx#stx-e
                                                           _hd1145211774_)))
                                                     (let ((_hd1145511782_
                                                            (##car _e1145411779_))
                                                           (_tl1145611784_
                                                            (##cdr _e1145411779_)))
                                                       (if (gx#stx-null?
                                                            _tl1145611784_)
                                                           (if (gx#stx-pair?
                                                                _tl1145311776_)
                                                               (let ((_e1145711787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1145311776_)))
                         (let ((_hd1145811790_ (##car _e1145711787_))
                               (_tl1145911792_ (##cdr _e1145711787_)))
                           (if (gx#stx-pair? _hd1145811790_)
                               (let ((_e1146011795_ (gx#stx-e _hd1145811790_)))
                                 (let ((_hd1146111798_ (##car _e1146011795_))
                                       (_tl1146211800_ (##cdr _e1146011795_)))
                                   (if (gx#identifier? _hd1146111798_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1146111798_)
                                           (if (gx#stx-null? _tl1145911792_)
                                               ((lambda (_L11803_ _L11804_)
                                                  (if (if (gx#identifier?
                                                           _L11804_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11803_)
                  '#f)
              _stx11434_
              (_g1144111758_ _g1144511761_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1146211800_
                                                _hd1145511782_)
                                               (_g1144111758_ _g1144511761_))
                                           (_g1144111758_ _g1144511761_))
                                       (_g1144111758_ _g1144511761_))))
                               (_g1144111758_ _g1144511761_))))
                       (_g1144111758_ _g1144511761_))
                   (_g1144111758_ _g1144511761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1144111758_
                                                    _g1144511761_))))
                                           (_g1144111758_ _g1144511761_))))
                                   (_g1144111758_ _g1144511761_)))))
                        (_g1144011822_ _stx11434_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx11372_ _id11373_ _new-id11374_)
      (let ((_g1137711390_
             (lambda (_g1137811387_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1137811387_))))
        (let ((_g1137611397_
               (lambda (_g1137811393_) ((lambda () _stx11372_)))))
          (let ((_g1137511431_
                 (lambda (_g1137811400_)
                   (if (gx#stx-pair? _g1137811400_)
                       (let ((_e1138011402_ (gx#stx-e _g1137811400_)))
                         (let ((_hd1138111405_ (##car _e1138011402_))
                               (_tl1138211407_ (##cdr _e1138011402_)))
                           (if (gx#stx-pair? _tl1138211407_)
                               (let ((_e1138311410_ (gx#stx-e _tl1138211407_)))
                                 (let ((_hd1138411413_ (##car _e1138311410_))
                                       (_tl1138511415_ (##cdr _e1138311410_)))
                                   (if (gx#stx-null? _tl1138511415_)
                                       ((lambda (_L11418_)
                                          (if (gx#free-identifier=?
                                               _L11418_
                                               _id11373_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id11374_ '()))
                                               _stx11372_)
                                              (_g1137611397_ _g1137811400_)))
                                        _hd1138411413_)
                                       (_g1137611397_ _g1137811400_))))
                               (_g1137611397_ _g1137811400_))))
                       (_g1137611397_ _g1137811400_)))))
            (_g1137511431_ _stx11372_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx11277_)
      (let ((_g1128011300_
             (lambda (_g1128111297_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1128111297_))))
        (let ((_g1127911307_ (lambda (_g1128111303_) ((lambda () (void))))))
          (let ((_g1127811369_
                 (lambda (_g1128111310_)
                   (if (gx#stx-pair? _g1128111310_)
                       (let ((_e1128411312_ (gx#stx-e _g1128111310_)))
                         (let ((_hd1128511315_ (##car _e1128411312_))
                               (_tl1128611317_ (##cdr _e1128411312_)))
                           (if (gx#stx-pair? _tl1128611317_)
                               (let ((_e1128711320_ (gx#stx-e _tl1128611317_)))
                                 (let ((_hd1128811323_ (##car _e1128711320_))
                                       (_tl1128911325_ (##cdr _e1128711320_)))
                                   (if (gx#stx-pair? _hd1128811323_)
                                       (let ((_e1129011328_
                                              (gx#stx-e _hd1128811323_)))
                                         (let ((_hd1129111331_
                                                (##car _e1129011328_))
                                               (_tl1129211333_
                                                (##cdr _e1129011328_)))
                                           (if (gx#stx-null? _tl1129211333_)
                                               (if (gx#stx-pair?
                                                    _tl1128911325_)
                                                   (let ((_e1129311336_
                                                          (gx#stx-e
                                                           _tl1128911325_)))
                                                     (let ((_hd1129411339_
                                                            (##car _e1129311336_))
                                                           (_tl1129511341_
                                                            (##cdr _e1129311336_)))
                                                       (if (gx#stx-null?
                                                            _tl1129511341_)
                                                           ((lambda (_L11344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L11345_)
                      (let ((_type1136211364_
                             (gxc#apply-basic-expression-type _L11344_)))
                        (if _type1136211364_
                            (let ((_type11367_ _type1136211364_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L11345_)
                               _type11367_))
                            '#f)))
                    _hd1129411339_
                    _hd1129111331_)
                   (_g1127911307_ _g1128111310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1127911307_
                                                    _g1128111310_))
                                               (_g1127911307_ _g1128111310_))))
                                       (_g1127911307_ _g1128111310_))))
                               (_g1127911307_ _g1128111310_))))
                       (_g1127911307_ _g1128111310_)))))
            (_g1127811369_ _stx11277_))))))
  (define gxc#collect-type-call%
    (lambda (_stx10831_)
      (let ((_g1083510937_
             (lambda (_g1083610934_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1083610934_))))
        (let ((_g1083410944_ (lambda (_g1083610940_) ((lambda () (void))))))
          (let ((_g1083311094_
                 (lambda (_g1083610947_)
                   (if (gx#stx-pair? _g1083610947_)
                       (let ((_e1089410949_ (gx#stx-e _g1083610947_)))
                         (let ((_hd1089510952_ (##car _e1089410949_))
                               (_tl1089610954_ (##cdr _e1089410949_)))
                           (if (gx#stx-pair? _tl1089610954_)
                               (let ((_e1089710957_ (gx#stx-e _tl1089610954_)))
                                 (let ((_hd1089810960_ (##car _e1089710957_))
                                       (_tl1089910962_ (##cdr _e1089710957_)))
                                   (if (gx#stx-pair? _hd1089810960_)
                                       (let ((_e1090010965_
                                              (gx#stx-e _hd1089810960_)))
                                         (let ((_hd1090110968_
                                                (##car _e1090010965_))
                                               (_tl1090210970_
                                                (##cdr _e1090010965_)))
                                           (if (gx#identifier? _hd1090110968_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1090110968_)
                                                   (if (gx#stx-pair?
                                                        _tl1090210970_)
                                                       (let ((_e1090310973_
                                                              (gx#stx-e
                                                               _tl1090210970_)))
                                                         (let ((_hd1090410976_
                                                                (##car _e1090310973_))
                                                               (_tl1090510978_
                                                                (##cdr _e1090310973_)))
                                                           (if (gx#stx-null?
                                                                _tl1090510978_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1089910962_)
                           (let ((_e1090610981_ (gx#stx-e _tl1089910962_)))
                             (let ((_hd1090710984_ (##car _e1090610981_))
                                   (_tl1090810986_ (##cdr _e1090610981_)))
                               (if (gx#stx-pair? _hd1090710984_)
                                   (let ((_e1090910989_
                                          (gx#stx-e _hd1090710984_)))
                                     (let ((_hd1091010992_
                                            (##car _e1090910989_))
                                           (_tl1091110994_
                                            (##cdr _e1090910989_)))
                                       (if (gx#identifier? _hd1091010992_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1091010992_)
                                               (if (gx#stx-pair?
                                                    _tl1091110994_)
                                                   (let ((_e1091210997_
                                                          (gx#stx-e
                                                           _tl1091110994_)))
                                                     (let ((_hd1091311000_
                                                            (##car _e1091210997_))
                                                           (_tl1091411002_
                                                            (##cdr _e1091210997_)))
                                                       (if (gx#stx-null?
                                                            _tl1091411002_)
                                                           (if (gx#stx-pair?
                                                                _tl1090810986_)
                                                               (let ((_e1091511005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1090810986_)))
                         (let ((_hd1091611008_ (##car _e1091511005_))
                               (_tl1091711010_ (##cdr _e1091511005_)))
                           (if (gx#stx-pair? _hd1091611008_)
                               (let ((_e1091811013_ (gx#stx-e _hd1091611008_)))
                                 (let ((_hd1091911016_ (##car _e1091811013_))
                                       (_tl1092011018_ (##cdr _e1091811013_)))
                                   (if (gx#identifier? _hd1091911016_)
                                       (if (gx#stx-eq? '%#quote _hd1091911016_)
                                           (if (gx#stx-pair? _tl1092011018_)
                                               (let ((_e1092111021_
                                                      (gx#stx-e
                                                       _tl1092011018_)))
                                                 (let ((_hd1092211024_
                                                        (##car _e1092111021_))
                                                       (_tl1092311026_
                                                        (##cdr _e1092111021_)))
                                                   (if (gx#stx-null?
                                                        _tl1092311026_)
                                                       (if (gx#stx-pair?
                                                            _tl1091711010_)
                                                           (let ((_e1092411029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1091711010_)))
                     (let ((_hd1092511032_ (##car _e1092411029_))
                           (_tl1092611034_ (##cdr _e1092411029_)))
                       (if (gx#stx-pair? _hd1092511032_)
                           (let ((_e1092711037_ (gx#stx-e _hd1092511032_)))
                             (let ((_hd1092811040_ (##car _e1092711037_))
                                   (_tl1092911042_ (##cdr _e1092711037_)))
                               (if (gx#identifier? _hd1092811040_)
                                   (if (gx#stx-eq? '%#ref _hd1092811040_)
                                       (if (gx#stx-pair? _tl1092911042_)
                                           (let ((_e1093011045_
                                                  (gx#stx-e _tl1092911042_)))
                                             (let ((_hd1093111048_
                                                    (##car _e1093011045_))
                                                   (_tl1093211050_
                                                    (##cdr _e1093011045_)))
                                               (if (gx#stx-null?
                                                    _tl1093211050_)
                                                   (if (gx#stx-null?
                                                        _tl1092611034_)
                                                       ((lambda (_L11053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11054_
                         _L11055_
                         _L11056_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda14413
                       (gxc#identifier-symbol _L11055_)
                       (gx#stx-e _L11054_)
                       (gxc#identifier-symbol _L11053_)
                       '#f)
                      (_g1083410944_ _g1083610947_)))
                _hd1093111048_
                _hd1092211024_
                _hd1091311000_
                _hd1090410976_)
               (_g1083410944_ _g1083610947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1083410944_
                                                    _g1083610947_))))
                                           (_g1083410944_ _g1083610947_))
                                       (_g1083410944_ _g1083610947_))
                                   (_g1083410944_ _g1083610947_))))
                           (_g1083410944_ _g1083610947_))))
                   (_g1083410944_ _g1083610947_))
               (_g1083410944_ _g1083610947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1083410944_ _g1083610947_))
                                           (_g1083410944_ _g1083610947_))
                                       (_g1083410944_ _g1083610947_))))
                               (_g1083410944_ _g1083610947_))))
                       (_g1083410944_ _g1083610947_))
                   (_g1083410944_ _g1083610947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1083410944_
                                                    _g1083610947_))
                                               (_g1083410944_ _g1083610947_))
                                           (_g1083410944_ _g1083610947_))))
                                   (_g1083410944_ _g1083610947_))))
                           (_g1083410944_ _g1083610947_))
                       (_g1083410944_ _g1083610947_))))
               (_g1083410944_ _g1083610947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1083410944_
                                                    _g1083610947_))
                                               (_g1083410944_ _g1083610947_))))
                                       (_g1083410944_ _g1083610947_))))
                               (_g1083410944_ _g1083610947_))))
                       (_g1083410944_ _g1083610947_)))))
            (let ((_g1083211274_
                   (lambda (_g1083611097_)
                     (if (gx#stx-pair? _g1083611097_)
                         (let ((_e1084211099_ (gx#stx-e _g1083611097_)))
                           (let ((_hd1084311102_ (##car _e1084211099_))
                                 (_tl1084411104_ (##cdr _e1084211099_)))
                             (if (gx#stx-pair? _tl1084411104_)
                                 (let ((_e1084511107_
                                        (gx#stx-e _tl1084411104_)))
                                   (let ((_hd1084611110_ (##car _e1084511107_))
                                         (_tl1084711112_
                                          (##cdr _e1084511107_)))
                                     (if (gx#stx-pair? _hd1084611110_)
                                         (let ((_e1084811115_
                                                (gx#stx-e _hd1084611110_)))
                                           (let ((_hd1084911118_
                                                  (##car _e1084811115_))
                                                 (_tl1085011120_
                                                  (##cdr _e1084811115_)))
                                             (if (gx#identifier?
                                                  _hd1084911118_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1084911118_)
                                                     (if (gx#stx-pair?
                                                          _tl1085011120_)
                                                         (let ((_e1085111123_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1085011120_)))
                   (let ((_hd1085211126_ (##car _e1085111123_))
                         (_tl1085311128_ (##cdr _e1085111123_)))
                     (if (gx#stx-null? _tl1085311128_)
                         (if (gx#stx-pair? _tl1084711112_)
                             (let ((_e1085411131_ (gx#stx-e _tl1084711112_)))
                               (let ((_hd1085511134_ (##car _e1085411131_))
                                     (_tl1085611136_ (##cdr _e1085411131_)))
                                 (if (gx#stx-pair? _hd1085511134_)
                                     (let ((_e1085711139_
                                            (gx#stx-e _hd1085511134_)))
                                       (let ((_hd1085811142_
                                              (##car _e1085711139_))
                                             (_tl1085911144_
                                              (##cdr _e1085711139_)))
                                         (if (gx#identifier? _hd1085811142_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1085811142_)
                                                 (if (gx#stx-pair?
                                                      _tl1085911144_)
                                                     (let ((_e1086011147_
                                                            (gx#stx-e
                                                             _tl1085911144_)))
                                                       (let ((_hd1086111150_
                                                              (##car _e1086011147_))
                                                             (_tl1086211152_
                                                              (##cdr _e1086011147_)))
                                                         (if (gx#stx-null?
                                                              _tl1086211152_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1085611136_)
                         (let ((_e1086311155_ (gx#stx-e _tl1085611136_)))
                           (let ((_hd1086411158_ (##car _e1086311155_))
                                 (_tl1086511160_ (##cdr _e1086311155_)))
                             (if (gx#stx-pair? _hd1086411158_)
                                 (let ((_e1086611163_
                                        (gx#stx-e _hd1086411158_)))
                                   (let ((_hd1086711166_ (##car _e1086611163_))
                                         (_tl1086811168_
                                          (##cdr _e1086611163_)))
                                     (if (gx#identifier? _hd1086711166_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1086711166_)
                                             (if (gx#stx-pair? _tl1086811168_)
                                                 (let ((_e1086911171_
                                                        (gx#stx-e
                                                         _tl1086811168_)))
                                                   (let ((_hd1087011174_
                                                          (##car _e1086911171_))
                                                         (_tl1087111176_
                                                          (##cdr _e1086911171_)))
                                                     (if (gx#stx-null?
                                                          _tl1087111176_)
                                                         (if (gx#stx-pair?
                                                              _tl1086511160_)
                                                             (let ((_e1087211179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1086511160_)))
                       (let ((_hd1087311182_ (##car _e1087211179_))
                             (_tl1087411184_ (##cdr _e1087211179_)))
                         (if (gx#stx-pair? _hd1087311182_)
                             (let ((_e1087511187_ (gx#stx-e _hd1087311182_)))
                               (let ((_hd1087611190_ (##car _e1087511187_))
                                     (_tl1087711192_ (##cdr _e1087511187_)))
                                 (if (gx#identifier? _hd1087611190_)
                                     (if (gx#stx-eq? '%#ref _hd1087611190_)
                                         (if (gx#stx-pair? _tl1087711192_)
                                             (let ((_e1087811195_
                                                    (gx#stx-e _tl1087711192_)))
                                               (let ((_hd1087911198_
                                                      (##car _e1087811195_))
                                                     (_tl1088011200_
                                                      (##cdr _e1087811195_)))
                                                 (if (gx#stx-null?
                                                      _tl1088011200_)
                                                     (if (gx#stx-pair?
                                                          _tl1087411184_)
                                                         (let ((_e1088111203_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1087411184_)))
                   (let ((_hd1088211206_ (##car _e1088111203_))
                         (_tl1088311208_ (##cdr _e1088111203_)))
                     (if (gx#stx-pair? _hd1088211206_)
                         (let ((_e1088411211_ (gx#stx-e _hd1088211206_)))
                           (let ((_hd1088511214_ (##car _e1088411211_))
                                 (_tl1088611216_ (##cdr _e1088411211_)))
                             (if (gx#identifier? _hd1088511214_)
                                 (if (gx#stx-eq? '%#quote _hd1088511214_)
                                     (if (gx#stx-pair? _tl1088611216_)
                                         (let ((_e1088711219_
                                                (gx#stx-e _tl1088611216_)))
                                           (let ((_hd1088811222_
                                                  (##car _e1088711219_))
                                                 (_tl1088911224_
                                                  (##cdr _e1088711219_)))
                                             (if (gx#stx-null? _tl1088911224_)
                                                 (if (gx#stx-null?
                                                      _tl1088311208_)
                                                     ((lambda (_L11227_
                                                               _L11228_
                                                               _L11229_
                                                               _L11230_
                                                               _L11231_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11231_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda14413
                     (gxc#identifier-symbol _L11230_)
                     (gx#stx-e _L11229_)
                     (gxc#identifier-symbol _L11228_)
                     (gx#stx-e _L11227_))
                    (_g1083311094_ _g1083611097_)))
              _hd1088811222_
              _hd1087911198_
              _hd1087011174_
              _hd1086111150_
              _hd1085211126_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083311094_
                                                      _g1083611097_))
                                                 (_g1083311094_
                                                  _g1083611097_))))
                                         (_g1083311094_ _g1083611097_))
                                     (_g1083311094_ _g1083611097_))
                                 (_g1083311094_ _g1083611097_))))
                         (_g1083311094_ _g1083611097_))))
                 (_g1083311094_ _g1083611097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083311094_
                                                      _g1083611097_))))
                                             (_g1083311094_ _g1083611097_))
                                         (_g1083311094_ _g1083611097_))
                                     (_g1083311094_ _g1083611097_))))
                             (_g1083311094_ _g1083611097_))))
                     (_g1083311094_ _g1083611097_))
                 (_g1083311094_ _g1083611097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1083311094_ _g1083611097_))
                                             (_g1083311094_ _g1083611097_))
                                         (_g1083311094_ _g1083611097_))))
                                 (_g1083311094_ _g1083611097_))))
                         (_g1083311094_ _g1083611097_))
                     (_g1083311094_ _g1083611097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083311094_
                                                      _g1083611097_))
                                                 (_g1083311094_ _g1083611097_))
                                             (_g1083311094_ _g1083611097_))))
                                     (_g1083311094_ _g1083611097_))))
                             (_g1083311094_ _g1083611097_))
                         (_g1083311094_ _g1083611097_))))
                 (_g1083311094_ _g1083611097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083311094_
                                                      _g1083611097_))
                                                 (_g1083311094_
                                                  _g1083611097_))))
                                         (_g1083311094_ _g1083611097_))))
                                 (_g1083311094_ _g1083611097_))))
                         (_g1083311094_ _g1083611097_)))))
              (_g1083211274_ _stx10831_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx10771_)
      (let ((_g1077410787_
             (lambda (_g1077510784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1077510784_))))
        (let ((_g1077310794_ (lambda (_g1077510790_) ((lambda () '#f)))))
          (let ((_g1077210828_
                 (lambda (_g1077510797_)
                   (if (gx#stx-pair? _g1077510797_)
                       (let ((_e1077710799_ (gx#stx-e _g1077510797_)))
                         (let ((_hd1077810802_ (##car _e1077710799_))
                               (_tl1077910804_ (##cdr _e1077710799_)))
                           (if (gx#stx-pair? _tl1077910804_)
                               (let ((_e1078010807_ (gx#stx-e _tl1077910804_)))
                                 (let ((_hd1078110810_ (##car _e1078010807_))
                                       (_tl1078210812_ (##cdr _e1078010807_)))
                                   (if (gx#stx-null? _tl1078210812_)
                                       ((lambda (_L10815_)
                                          (gxc#compile-e _L10815_))
                                        _hd1078110810_)
                                       (_g1077310794_ _g1077510797_))))
                               (_g1077310794_ _g1077510797_))))
                       (_g1077310794_ _g1077510797_)))))
            (_g1077210828_ _stx10771_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx10196_)
      (let ((_g1020110322_
             (lambda (_g1020210319_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1020210319_))))
        (let ((_g1020010329_ (lambda (_g1020210325_) ((lambda () '#f)))))
          (let ((_g1019910353_
                 (lambda (_g1020210332_)
                   (if (gx#stx-pair? _g1020210332_)
                       (let ((_e1031510334_ (gx#stx-e _g1020210332_)))
                         (let ((_hd1031610337_ (##car _e1031510334_))
                               (_tl1031710339_ (##cdr _e1031510334_)))
                           ((lambda (_L10342_)
                              (if (gxc#dispatch-lambda-form? _L10342_)
                                  (##structure
                                   gxc#!lambda::t
                                   'lambda
                                   (gxc#lambda-form-arity _L10342_)
                                   (gxc#dispatch-lambda-form-delegate
                                    _L10342_))
                                  (_g1020010329_ _g1020210332_)))
                            _tl1031710339_)))
                       (_g1020010329_ _g1020210332_)))))
            (let ((_g1019810583_
                   (lambda (_g1020210356_)
                     (if (gx#stx-pair? _g1020210356_)
                         (let ((_e1026010358_ (gx#stx-e _g1020210356_)))
                           (let ((_hd1026110361_ (##car _e1026010358_))
                                 (_tl1026210363_ (##cdr _e1026010358_)))
                             (if (gx#stx-pair? _tl1026210363_)
                                 (let ((_e1026310366_
                                        (gx#stx-e _tl1026210363_)))
                                   (let ((_hd1026410369_ (##car _e1026310366_))
                                         (_tl1026510371_
                                          (##cdr _e1026310366_)))
                                     (if (gx#stx-pair/null? _hd1026410369_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1026410369_)
                                                   '0)
                                             (let ((_g14622_
                                                    (gx#syntax-split-splice
                                                     _hd1026410369_
                                                     '0)))
                                               (begin
                                                 (let ((_g14623_
                                                        (values-count
                                                         _g14622_)))
                                                   (if (not (fx= _g14623_ 2))
                                                       (error "Context expects 2 values"
                                                              _g14623_)))
                                                 (let ((_target1026610374_
                                                        (values-ref
                                                         _g14622_
                                                         0))
                                                       (_tl1026810376_
                                                        (values-ref
                                                         _g14622_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1026810376_)
                                                       (letrec ((_loop1026910379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1026710382_ _arg1027310384_)
                           (if (gx#stx-pair? _hd1026710382_)
                               (let ((_e1027010387_ (gx#stx-e _hd1026710382_)))
                                 (let ((_lp-hd1027110390_
                                        (##car _e1027010387_))
                                       (_lp-tl1027210392_
                                        (##cdr _e1027010387_)))
                                   (_loop1026910379_
                                    _lp-tl1027210392_
                                    (cons _lp-hd1027110390_ _arg1027310384_))))
                               (let ((_arg1027410395_
                                      (reverse _arg1027310384_)))
                                 (if (gx#stx-pair? _tl1026510371_)
                                     (let ((_e1027510398_
                                            (gx#stx-e _tl1026510371_)))
                                       (let ((_hd1027610401_
                                              (##car _e1027510398_))
                                             (_tl1027710403_
                                              (##cdr _e1027510398_)))
                                         (if (gx#stx-pair? _hd1027610401_)
                                             (let ((_e1027810406_
                                                    (gx#stx-e _hd1027610401_)))
                                               (let ((_hd1027910409_
                                                      (##car _e1027810406_))
                                                     (_tl1028010411_
                                                      (##cdr _e1027810406_)))
                                                 (if (gx#identifier?
                                                      _hd1027910409_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1027910409_)
                                                         (if (gx#stx-pair?
                                                              _tl1028010411_)
                                                             (let ((_e1028110414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1028010411_)))
                       (let ((_hd1028210417_ (##car _e1028110414_))
                             (_tl1028310419_ (##cdr _e1028110414_)))
                         (if (gx#stx-pair? _hd1028210417_)
                             (let ((_e1028410422_ (gx#stx-e _hd1028210417_)))
                               (let ((_hd1028510425_ (##car _e1028410422_))
                                     (_tl1028610427_ (##cdr _e1028410422_)))
                                 (if (gx#identifier? _hd1028510425_)
                                     (if (gx#stx-eq? '%#ref _hd1028510425_)
                                         (if (gx#stx-pair? _tl1028610427_)
                                             (let ((_e1028710430_
                                                    (gx#stx-e _tl1028610427_)))
                                               (let ((_hd1028810433_
                                                      (##car _e1028710430_))
                                                     (_tl1028910435_
                                                      (##cdr _e1028710430_)))
                                                 (if (gx#stx-null?
                                                      _tl1028910435_)
                                                     (if (gx#stx-pair?
                                                          _tl1028310419_)
                                                         (let ((_e1029010438_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1028310419_)))
                   (let ((_hd1029110441_ (##car _e1029010438_))
                         (_tl1029210443_ (##cdr _e1029010438_)))
                     (if (gx#stx-pair? _hd1029110441_)
                         (let ((_e1029310446_ (gx#stx-e _hd1029110441_)))
                           (let ((_hd1029410449_ (##car _e1029310446_))
                                 (_tl1029510451_ (##cdr _e1029310446_)))
                             (if (gx#identifier? _hd1029410449_)
                                 (if (gx#stx-eq? '%#ref _hd1029410449_)
                                     (if (gx#stx-pair? _tl1029510451_)
                                         (let ((_e1029610454_
                                                (gx#stx-e _tl1029510451_)))
                                           (let ((_hd1029710457_
                                                  (##car _e1029610454_))
                                                 (_tl1029810459_
                                                  (##cdr _e1029610454_)))
                                             (if (gx#stx-null? _tl1029810459_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1029210443_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1029210443_)
                                                               '0)
                                                         (let ((_g14624_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1029210443_
                         '0)))
                   (begin
                     (let ((_g14625_ (values-count _g14624_)))
                       (if (not (fx= _g14625_ 2))
                           (error "Context expects 2 values" _g14625_)))
                     (let ((_target1029910462_ (values-ref _g14624_ 0))
                           (_tl1030110464_ (values-ref _g14624_ 1)))
                       (if (gx#stx-null? _tl1030110464_)
                           (letrec ((_loop1030210467_
                                     (lambda (_hd1030010470_ _xarg1030610472_)
                                       (if (gx#stx-pair? _hd1030010470_)
                                           (let ((_e1030310475_
                                                  (gx#stx-e _hd1030010470_)))
                                             (let ((_lp-hd1030410478_
                                                    (##car _e1030310475_))
                                                   (_lp-tl1030510480_
                                                    (##cdr _e1030310475_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1030410478_)
                                                   (let ((_e1030810483_
                                                          (gx#stx-e
                                                           _lp-hd1030410478_)))
                                                     (let ((_hd1030910486_
                                                            (##car _e1030810483_))
                                                           (_tl1031010488_
                                                            (##cdr _e1030810483_)))
                                                       (if (gx#identifier?
                                                            _hd1030910486_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1030910486_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1031010488_)
                           (let ((_e1031110491_ (gx#stx-e _tl1031010488_)))
                             (let ((_hd1031210494_ (##car _e1031110491_))
                                   (_tl1031310496_ (##cdr _e1031110491_)))
                               (if (gx#stx-null? _tl1031310496_)
                                   (_loop1030210467_
                                    _lp-tl1030510480_
                                    (cons _hd1031210494_ _xarg1030610472_))
                                   (_g1019910353_ _g1020210356_))))
                           (_g1019910353_ _g1020210356_))
                       (_g1019910353_ _g1020210356_))
                   (_g1019910353_ _g1020210356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1019910353_
                                                    _g1020210356_))))
                                           (let ((_xarg1030710499_
                                                  (reverse _xarg1030610472_)))
                                             (if (gx#stx-null? _tl1027710403_)
                                                 ((lambda (_L10502_
                                                           _L10503_
                                                           _L10504_
                                                           _L10505_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1054210545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1054310547_)
                                (cons _g1054210545_ _g1054310547_))
                              '()
                              _L10505_)))
                    (if (eq? (gxc#identifier-symbol _L10504_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1054910552_
                                                           _g1055010554_)
                                                    (cons _g1054910552_
                                                          _g1055010554_))
                                                  '()
                                                  _L10505_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1055610559_
                                                           _g1055710561_)
                                                    (cons _g1055610559_
                                                          _g1055710561_))
                                                  '()
                                                  _L10502_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1056310566_
                                                      _g1056410568_)
                                               (cons _g1056310566_
                                                     _g1056410568_))
                                             '()
                                             _L10505_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1057010573_
                                                      _g1057110575_)
                                               (cons _g1057010573_
                                                     _g1057110575_))
                                             '()
                                             _L10502_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t10578_ (gxc#identifier-symbol _L10503_)))
                  (let ((_type10580_
                         (gxc#optimizer-resolve-type _type-t10578_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type10580_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t10578_)
                          '#f))))
                (_g1019910353_ _g1020210356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1030710499_
                                                  _hd1029710457_
                                                  _hd1028810433_
                                                  _arg1027410395_)
                                                 (_g1019910353_
                                                  _g1020210356_)))))))
                             (_loop1030210467_ _target1029910462_ '()))
                           (_g1019910353_ _g1020210356_)))))
                 (_g1019910353_ _g1020210356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1019910353_
                                                      _g1020210356_))
                                                 (_g1019910353_
                                                  _g1020210356_))))
                                         (_g1019910353_ _g1020210356_))
                                     (_g1019910353_ _g1020210356_))
                                 (_g1019910353_ _g1020210356_))))
                         (_g1019910353_ _g1020210356_))))
                 (_g1019910353_ _g1020210356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1019910353_
                                                      _g1020210356_))))
                                             (_g1019910353_ _g1020210356_))
                                         (_g1019910353_ _g1020210356_))
                                     (_g1019910353_ _g1020210356_))))
                             (_g1019910353_ _g1020210356_))))
                     (_g1019910353_ _g1020210356_))
                 (_g1019910353_ _g1020210356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1019910353_
                                                      _g1020210356_))))
                                             (_g1019910353_ _g1020210356_))))
                                     (_g1019910353_ _g1020210356_)))))))
                 (_loop1026910379_ _target1026610374_ '()))
               (_g1019910353_ _g1020210356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1019910353_ _g1020210356_))
                                         (_g1019910353_ _g1020210356_))))
                                 (_g1019910353_ _g1020210356_))))
                         (_g1019910353_ _g1020210356_)))))
              (let ((_g1019710768_
                     (lambda (_g1020210586_)
                       (if (gx#stx-pair? _g1020210586_)
                           (let ((_e1020810588_ (gx#stx-e _g1020210586_)))
                             (let ((_hd1020910591_ (##car _e1020810588_))
                                   (_tl1021010593_ (##cdr _e1020810588_)))
                               (if (gx#stx-pair? _tl1021010593_)
                                   (let ((_e1021110596_
                                          (gx#stx-e _tl1021010593_)))
                                     (let ((_hd1021210599_
                                            (##car _e1021110596_))
                                           (_tl1021310601_
                                            (##cdr _e1021110596_)))
                                       (if (gx#stx-pair? _tl1021310601_)
                                           (let ((_e1021410604_
                                                  (gx#stx-e _tl1021310601_)))
                                             (let ((_hd1021510607_
                                                    (##car _e1021410604_))
                                                   (_tl1021610609_
                                                    (##cdr _e1021410604_)))
                                               (if (gx#stx-pair?
                                                    _hd1021510607_)
                                                   (let ((_e1021710612_
                                                          (gx#stx-e
                                                           _hd1021510607_)))
                                                     (let ((_hd1021810615_
                                                            (##car _e1021710612_))
                                                           (_tl1021910617_
                                                            (##cdr _e1021710612_)))
                                                       (if (gx#identifier?
                                                            _hd1021810615_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1021810615_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1021910617_)
                           (let ((_e1022010620_ (gx#stx-e _tl1021910617_)))
                             (let ((_hd1022110623_ (##car _e1022010620_))
                                   (_tl1022210625_ (##cdr _e1022010620_)))
                               (if (gx#stx-pair? _hd1022110623_)
                                   (let ((_e1022310628_
                                          (gx#stx-e _hd1022110623_)))
                                     (let ((_hd1022410631_
                                            (##car _e1022310628_))
                                           (_tl1022510633_
                                            (##cdr _e1022310628_)))
                                       (if (gx#identifier? _hd1022410631_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1022410631_)
                                               (if (gx#stx-pair?
                                                    _tl1022510633_)
                                                   (let ((_e1022610636_
                                                          (gx#stx-e
                                                           _tl1022510633_)))
                                                     (let ((_hd1022710639_
                                                            (##car _e1022610636_))
                                                           (_tl1022810641_
                                                            (##cdr _e1022610636_)))
                                                       (if (gx#stx-null?
                                                            _tl1022810641_)
                                                           (if (gx#stx-pair?
                                                                _tl1022210625_)
                                                               (let ((_e1022910644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1022210625_)))
                         (let ((_hd1023010647_ (##car _e1022910644_))
                               (_tl1023110649_ (##cdr _e1022910644_)))
                           (if (gx#stx-pair? _hd1023010647_)
                               (let ((_e1023210652_ (gx#stx-e _hd1023010647_)))
                                 (let ((_hd1023310655_ (##car _e1023210652_))
                                       (_tl1023410657_ (##cdr _e1023210652_)))
                                   (if (gx#identifier? _hd1023310655_)
                                       (if (gx#stx-eq? '%#ref _hd1023310655_)
                                           (if (gx#stx-pair? _tl1023410657_)
                                               (let ((_e1023510660_
                                                      (gx#stx-e
                                                       _tl1023410657_)))
                                                 (let ((_hd1023610663_
                                                        (##car _e1023510660_))
                                                       (_tl1023710665_
                                                        (##cdr _e1023510660_)))
                                                   (if (gx#stx-null?
                                                        _tl1023710665_)
                                                       (if (gx#stx-pair?
                                                            _tl1023110649_)
                                                           (let ((_e1023810668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1023110649_)))
                     (let ((_hd1023910671_ (##car _e1023810668_))
                           (_tl1024010673_ (##cdr _e1023810668_)))
                       (if (gx#stx-pair? _hd1023910671_)
                           (let ((_e1024110676_ (gx#stx-e _hd1023910671_)))
                             (let ((_hd1024210679_ (##car _e1024110676_))
                                   (_tl1024310681_ (##cdr _e1024110676_)))
                               (if (gx#identifier? _hd1024210679_)
                                   (if (gx#stx-eq? '%#ref _hd1024210679_)
                                       (if (gx#stx-pair? _tl1024310681_)
                                           (let ((_e1024410684_
                                                  (gx#stx-e _tl1024310681_)))
                                             (let ((_hd1024510687_
                                                    (##car _e1024410684_))
                                                   (_tl1024610689_
                                                    (##cdr _e1024410684_)))
                                               (if (gx#stx-null?
                                                    _tl1024610689_)
                                                   (if (gx#stx-pair?
                                                        _tl1024010673_)
                                                       (let ((_e1024710692_
                                                              (gx#stx-e
                                                               _tl1024010673_)))
                                                         (let ((_hd1024810695_
                                                                (##car _e1024710692_))
                                                               (_tl1024910697_
                                                                (##cdr _e1024710692_)))
                                                           (if (gx#stx-pair?
                                                                _hd1024810695_)
                                                               (let ((_e1025010700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1024810695_)))
                         (let ((_hd1025110703_ (##car _e1025010700_))
                               (_tl1025210705_ (##cdr _e1025010700_)))
                           (if (gx#identifier? _hd1025110703_)
                               (if (gx#stx-eq? '%#ref _hd1025110703_)
                                   (if (gx#stx-pair? _tl1025210705_)
                                       (let ((_e1025310708_
                                              (gx#stx-e _tl1025210705_)))
                                         (let ((_hd1025410711_
                                                (##car _e1025310708_))
                                               (_tl1025510713_
                                                (##cdr _e1025310708_)))
                                           (if (gx#stx-null? _tl1025510713_)
                                               (if (gx#stx-null?
                                                    _tl1024910697_)
                                                   (if (gx#stx-null?
                                                        _tl1021610609_)
                                                       ((lambda (_L10716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10717_
                         _L10718_
                         _L10719_
                         _L10720_)
                  (if (if (gx#identifier? _L10720_)
                          (if (eq? (gxc#identifier-symbol _L10719_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L10718_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L10720_ _L10716_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t10763_ (gxc#identifier-symbol _L10717_)))
                        (let ((_type10765_
                               (gxc#optimizer-resolve-type _type-t10763_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type10765_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t10763_)
                                '#f))))
                      (_g1019810583_ _g1020210586_)))
                _hd1025410711_
                _hd1024510687_
                _hd1023610663_
                _hd1022710639_
                _hd1021210599_)
               (_g1019810583_ _g1020210586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1019810583_
                                                    _g1020210586_))
                                               (_g1019810583_ _g1020210586_))))
                                       (_g1019810583_ _g1020210586_))
                                   (_g1019810583_ _g1020210586_))
                               (_g1019810583_ _g1020210586_))))
                       (_g1019810583_ _g1020210586_))))
               (_g1019810583_ _g1020210586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1019810583_
                                                    _g1020210586_))))
                                           (_g1019810583_ _g1020210586_))
                                       (_g1019810583_ _g1020210586_))
                                   (_g1019810583_ _g1020210586_))))
                           (_g1019810583_ _g1020210586_))))
                   (_g1019810583_ _g1020210586_))
               (_g1019810583_ _g1020210586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1019810583_ _g1020210586_))
                                           (_g1019810583_ _g1020210586_))
                                       (_g1019810583_ _g1020210586_))))
                               (_g1019810583_ _g1020210586_))))
                       (_g1019810583_ _g1020210586_))
                   (_g1019810583_ _g1020210586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1019810583_
                                                    _g1020210586_))
                                               (_g1019810583_ _g1020210586_))
                                           (_g1019810583_ _g1020210586_))))
                                   (_g1019810583_ _g1020210586_))))
                           (_g1019810583_ _g1020210586_))
                       (_g1019810583_ _g1020210586_))
                   (_g1019810583_ _g1020210586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1019810583_
                                                    _g1020210586_))))
                                           (_g1019810583_ _g1020210586_))))
                                   (_g1019810583_ _g1020210586_))))
                           (_g1019810583_ _g1020210586_)))))
                (_g1019710768_ _stx10196_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx10142_)
      (let ((_clause-e10144_
             (lambda (_form10194_)
               (##structure
                gxc#!lambda::t
                'case-lambda-clause
                (gxc#lambda-form-arity _form10194_)
                (gxc#dispatch-lambda-form-delegate _form10194_)))))
        (let ((_g1014710157_
               (lambda (_g1014810154_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1014810154_))))
          (let ((_g1014610164_ (lambda (_g1014810160_) ((lambda () '#f)))))
            (let ((_g1014510191_
                   (lambda (_g1014810167_)
                     (if (gx#stx-pair? _g1014810167_)
                         (let ((_e1015010169_ (gx#stx-e _g1014810167_)))
                           (let ((_hd1015110172_ (##car _e1015010169_))
                                 (_tl1015210174_ (##cdr _e1015010169_)))
                             ((lambda (_L10177_)
                                (if (andmap gxc#dispatch-lambda-form? _L10177_)
                                    (let ((_clauses10189_
                                           (map _clause-e10144_ _L10177_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses10189_))
                                    (_g1014610164_ _g1014810167_)))
                              _tl1015210174_)))
                         (_g1014610164_ _g1014810167_)))))
              (_g1014510191_ _stx10142_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx10047_)
      (let ((_g1005010070_
             (lambda (_g1005110067_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1005110067_))))
        (let ((_g1004910077_ (lambda (_g1005110073_) ((lambda () '#f)))))
          (let ((_g1004810139_
                 (lambda (_g1005110080_)
                   (if (gx#stx-pair? _g1005110080_)
                       (let ((_e1005410082_ (gx#stx-e _g1005110080_)))
                         (let ((_hd1005510085_ (##car _e1005410082_))
                               (_tl1005610087_ (##cdr _e1005410082_)))
                           (if (gx#stx-pair? _tl1005610087_)
                               (let ((_e1005710090_ (gx#stx-e _tl1005610087_)))
                                 (let ((_hd1005810093_ (##car _e1005710090_))
                                       (_tl1005910095_ (##cdr _e1005710090_)))
                                   (if (gx#stx-pair? _hd1005810093_)
                                       (let ((_e1006010098_
                                              (gx#stx-e _hd1005810093_)))
                                         (let ((_hd1006110101_
                                                (##car _e1006010098_))
                                               (_tl1006210103_
                                                (##cdr _e1006010098_)))
                                           (if (gx#identifier? _hd1006110101_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1006110101_)
                                                   (if (gx#stx-pair?
                                                        _tl1006210103_)
                                                       (let ((_e1006310106_
                                                              (gx#stx-e
                                                               _tl1006210103_)))
                                                         (let ((_hd1006410109_
                                                                (##car _e1006310106_))
                                                               (_tl1006510111_
                                                                (##cdr _e1006310106_)))
                                                           (if (gx#stx-null?
                                                                _tl1006510111_)
                                                               ((lambda (_L10114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L10115_)
                          (let ((_type-e1013210134_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L10115_))))
                            (if _type-e1013210134_
                                (let ((_type-e10137_ _type-e1013210134_))
                                  (_type-e10137_ _stx10047_ _L10114_))
                                '#f)))
                        _tl1005910095_
                        _hd1006410109_)
                       (_g1004910077_ _g1005110080_))))
               (_g1004910077_ _g1005110080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1004910077_
                                                    _g1005110080_))
                                               (_g1004910077_ _g1005110080_))))
                                       (_g1004910077_ _g1005110080_))))
                               (_g1004910077_ _g1005110080_))))
                       (_g1004910077_ _g1005110080_)))))
            (_g1004810139_ _stx10047_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx9532_ _args9533_)
      (let ((_g95379650_
             (lambda (_g95389647_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95389647_))))
        (let ((_g95369657_
               (lambda (_g95389653_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx9532_))
                      '#f))))))
          (let ((_g95359864_
                 (lambda (_g95389660_)
                   (if (gx#stx-pair? _g95389660_)
                       (let ((_e95989662_ (gx#stx-e _g95389660_)))
                         (let ((_hd95999665_ (##car _e95989662_))
                               (_tl96009667_ (##cdr _e95989662_)))
                           (if (gx#stx-pair? _hd95999665_)
                               (let ((_e96019670_ (gx#stx-e _hd95999665_)))
                                 (let ((_hd96029673_ (##car _e96019670_))
                                       (_tl96039675_ (##cdr _e96019670_)))
                                   (if (gx#identifier? _hd96029673_)
                                       (if (gx#stx-eq? '%#quote _hd96029673_)
                                           (if (gx#stx-pair? _tl96039675_)
                                               (let ((_e96049678_
                                                      (gx#stx-e _tl96039675_)))
                                                 (let ((_hd96059681_
                                                        (##car _e96049678_))
                                                       (_tl96069683_
                                                        (##cdr _e96049678_)))
                                                   (if (gx#stx-null?
                                                        _tl96069683_)
                                                       (if (gx#stx-pair?
                                                            _tl96009667_)
                                                           (let ((_e96079686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl96009667_)))
                     (let ((_hd96089689_ (##car _e96079686_))
                           (_tl96099691_ (##cdr _e96079686_)))
                       (if (gx#stx-pair? _hd96089689_)
                           (let ((_e96109694_ (gx#stx-e _hd96089689_)))
                             (let ((_hd96119697_ (##car _e96109694_))
                                   (_tl96129699_ (##cdr _e96109694_)))
                               (if (gx#identifier? _hd96119697_)
                                   (if (gx#stx-eq? '%#ref _hd96119697_)
                                       (if (gx#stx-pair? _tl96129699_)
                                           (let ((_e96139702_
                                                  (gx#stx-e _tl96129699_)))
                                             (let ((_hd96149705_
                                                    (##car _e96139702_))
                                                   (_tl96159707_
                                                    (##cdr _e96139702_)))
                                               (if (gx#stx-null? _tl96159707_)
                                                   (if (gx#stx-pair?
                                                        _tl96099691_)
                                                       (let ((_e96169710_
                                                              (gx#stx-e
                                                               _tl96099691_)))
                                                         (let ((_hd96179713_
                                                                (##car _e96169710_))
                                                               (_tl96189715_
                                                                (##cdr _e96169710_)))
                                                           (if (gx#stx-pair?
                                                                _hd96179713_)
                                                               (let ((_e96199718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd96179713_)))
                         (let ((_hd96209721_ (##car _e96199718_))
                               (_tl96219723_ (##cdr _e96199718_)))
                           (if (gx#identifier? _hd96209721_)
                               (if (gx#stx-eq? '%#quote _hd96209721_)
                                   (if (gx#stx-pair? _tl96219723_)
                                       (let ((_e96229726_
                                              (gx#stx-e _tl96219723_)))
                                         (let ((_hd96239729_
                                                (##car _e96229726_))
                                               (_tl96249731_
                                                (##cdr _e96229726_)))
                                           (if (gx#stx-null? _tl96249731_)
                                               (if (gx#stx-pair? _tl96189715_)
                                                   (let ((_e96259734_
                                                          (gx#stx-e
                                                           _tl96189715_)))
                                                     (let ((_hd96269737_
                                                            (##car _e96259734_))
                                                           (_tl96279739_
                                                            (##cdr _e96259734_)))
                                                       (if (gx#stx-pair?
                                                            _tl96279739_)
                                                           (let ((_e96289742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl96279739_)))
                     (let ((_hd96299745_ (##car _e96289742_))
                           (_tl96309747_ (##cdr _e96289742_)))
                       (if (gx#stx-pair? _hd96299745_)
                           (let ((_e96319750_ (gx#stx-e _hd96299745_)))
                             (let ((_hd96329753_ (##car _e96319750_))
                                   (_tl96339755_ (##cdr _e96319750_)))
                               (if (gx#identifier? _hd96329753_)
                                   (if (gx#stx-eq? '%#quote _hd96329753_)
                                       (if (gx#stx-pair? _tl96339755_)
                                           (let ((_e96349758_
                                                  (gx#stx-e _tl96339755_)))
                                             (let ((_hd96359761_
                                                    (##car _e96349758_))
                                                   (_tl96369763_
                                                    (##cdr _e96349758_)))
                                               (if (gx#stx-null? _tl96369763_)
                                                   (if (gx#stx-pair?
                                                        _tl96309747_)
                                                       (let ((_e96379766_
                                                              (gx#stx-e
                                                               _tl96309747_)))
                                                         (let ((_hd96389769_
                                                                (##car _e96379766_))
                                                               (_tl96399771_
                                                                (##cdr _e96379766_)))
                                                           (if (gx#stx-pair?
                                                                _hd96389769_)
                                                               (let ((_e96409774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd96389769_)))
                         (let ((_hd96419777_ (##car _e96409774_))
                               (_tl96429779_ (##cdr _e96409774_)))
                           (if (gx#identifier? _hd96419777_)
                               (if (gx#stx-eq? '%#quote _hd96419777_)
                                   (if (gx#stx-pair? _tl96429779_)
                                       (let ((_e96439782_
                                              (gx#stx-e _tl96429779_)))
                                         (let ((_hd96449785_
                                                (##car _e96439782_))
                                               (_tl96459787_
                                                (##cdr _e96439782_)))
                                           (if (gx#stx-null? _tl96459787_)
                                               (if (gx#stx-null? _tl96399771_)
                                                   ((lambda (_L9790_
                                                             _L9791_
                                                             _L9792_
                                                             _L9793_
                                                             _L9794_
                                                             _L9795_)
                                                      (let ((_super-t9841_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9794_)
                         (gxc#identifier-symbol _L9794_)
                         '#f)))
                (let ((_super-type9843_
                       (if _super-t9841_
                           (gxc#optimizer-resolve-type _super-t9841_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type9843_
                              (not (##structure-instance-of?
                                    _super-type9843_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx9532_
                           _L9794_)
                          '#!void)
                      (let ((_fields9859_ (gx#stx-e _L9793_))
                            (_xfields9860_
                             (if _super-type9843_
                                 (let ((_super-fields98459848_
                                        (##structure-ref
                                         _super-type9843_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields98469850_
                                        (##structure-ref
                                         _super-type9843_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields98459848_
                                       (if _super-xfields98469850_
                                           (let ((_super-fields9853_
                                                  _super-fields98459848_)
                                                 (_super-xfields9854_
                                                  _super-xfields98469850_))
                                             (fx+ _super-fields9853_
                                                  _super-xfields9854_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist9861_ (gx#stx-e _L9791_))
                            (_ctor9862_
                             (let ((_$e9856_ (gx#stx-e _L9790_)))
                               (if _$e9856_
                                   (values _$e9856_)
                                   (if _super-type9843_
                                       (##structure-ref
                                        _super-type9843_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t9841_ '#!void '#f))))))
                        (let ((__obj14592
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj14592
                             (gx#stx-e _L9795_)
                             _super-t9841_
                             _fields9859_
                             _xfields9860_
                             _ctor9862_
                             _plist9861_)
                            __obj14592))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd96449785_
                                                    _hd96359761_
                                                    _hd96269737_
                                                    _hd96239729_
                                                    _hd96149705_
                                                    _hd96059681_)
                                                   (_g95369657_ _g95389660_))
                                               (_g95369657_ _g95389660_))))
                                       (_g95369657_ _g95389660_))
                                   (_g95369657_ _g95389660_))
                               (_g95369657_ _g95389660_))))
                       (_g95369657_ _g95389660_))))
               (_g95369657_ _g95389660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g95369657_ _g95389660_))))
                                           (_g95369657_ _g95389660_))
                                       (_g95369657_ _g95389660_))
                                   (_g95369657_ _g95389660_))))
                           (_g95369657_ _g95389660_))))
                   (_g95369657_ _g95389660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g95369657_ _g95389660_))
                                               (_g95369657_ _g95389660_))))
                                       (_g95369657_ _g95389660_))
                                   (_g95369657_ _g95389660_))
                               (_g95369657_ _g95389660_))))
                       (_g95369657_ _g95389660_))))
               (_g95369657_ _g95389660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g95369657_ _g95389660_))))
                                           (_g95369657_ _g95389660_))
                                       (_g95369657_ _g95389660_))
                                   (_g95369657_ _g95389660_))))
                           (_g95369657_ _g95389660_))))
                   (_g95369657_ _g95389660_))
               (_g95369657_ _g95389660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g95369657_ _g95389660_))
                                           (_g95369657_ _g95389660_))
                                       (_g95369657_ _g95389660_))))
                               (_g95369657_ _g95389660_))))
                       (_g95369657_ _g95389660_)))))
            (let ((_g953410044_
                   (lambda (_g95389867_)
                     (if (gx#stx-pair? _g95389867_)
                         (let ((_e95449869_ (gx#stx-e _g95389867_)))
                           (let ((_hd95459872_ (##car _e95449869_))
                                 (_tl95469874_ (##cdr _e95449869_)))
                             (if (gx#stx-pair? _hd95459872_)
                                 (let ((_e95479877_ (gx#stx-e _hd95459872_)))
                                   (let ((_hd95489880_ (##car _e95479877_))
                                         (_tl95499882_ (##cdr _e95479877_)))
                                     (if (gx#identifier? _hd95489880_)
                                         (if (gx#stx-eq? '%#quote _hd95489880_)
                                             (if (gx#stx-pair? _tl95499882_)
                                                 (let ((_e95509885_
                                                        (gx#stx-e
                                                         _tl95499882_)))
                                                   (let ((_hd95519888_
                                                          (##car _e95509885_))
                                                         (_tl95529890_
                                                          (##cdr _e95509885_)))
                                                     (if (gx#stx-null?
                                                          _tl95529890_)
                                                         (if (gx#stx-pair?
                                                              _tl95469874_)
                                                             (let ((_e95539893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl95469874_)))
                       (let ((_hd95549896_ (##car _e95539893_))
                             (_tl95559898_ (##cdr _e95539893_)))
                         (if (gx#stx-pair? _hd95549896_)
                             (let ((_e95569901_ (gx#stx-e _hd95549896_)))
                               (let ((_hd95579904_ (##car _e95569901_))
                                     (_tl95589906_ (##cdr _e95569901_)))
                                 (if (gx#identifier? _hd95579904_)
                                     (if (gx#stx-eq? '%#quote _hd95579904_)
                                         (if (gx#stx-pair? _tl95589906_)
                                             (let ((_e95599909_
                                                    (gx#stx-e _tl95589906_)))
                                               (let ((_hd95609912_
                                                      (##car _e95599909_))
                                                     (_tl95619914_
                                                      (##cdr _e95599909_)))
                                                 (if (gx#stx-datum?
                                                      _hd95609912_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd95609912_)
                         '#f)
                 (if (gx#stx-null? _tl95619914_)
                     (if (gx#stx-pair? _tl95559898_)
                         (let ((_e95629917_ (gx#stx-e _tl95559898_)))
                           (let ((_hd95639920_ (##car _e95629917_))
                                 (_tl95649922_ (##cdr _e95629917_)))
                             (if (gx#stx-pair? _hd95639920_)
                                 (let ((_e95659925_ (gx#stx-e _hd95639920_)))
                                   (let ((_hd95669928_ (##car _e95659925_))
                                         (_tl95679930_ (##cdr _e95659925_)))
                                     (if (gx#identifier? _hd95669928_)
                                         (if (gx#stx-eq? '%#quote _hd95669928_)
                                             (if (gx#stx-pair? _tl95679930_)
                                                 (let ((_e95689933_
                                                        (gx#stx-e
                                                         _tl95679930_)))
                                                   (let ((_hd95699936_
                                                          (##car _e95689933_))
                                                         (_tl95709938_
                                                          (##cdr _e95689933_)))
                                                     (if (gx#stx-null?
                                                          _tl95709938_)
                                                         (if (gx#stx-pair?
                                                              _tl95649922_)
                                                             (let ((_e95719941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl95649922_)))
                       (let ((_hd95729944_ (##car _e95719941_))
                             (_tl95739946_ (##cdr _e95719941_)))
                         (if (gx#stx-pair? _tl95739946_)
                             (let ((_e95749949_ (gx#stx-e _tl95739946_)))
                               (let ((_hd95759952_ (##car _e95749949_))
                                     (_tl95769954_ (##cdr _e95749949_)))
                                 (if (gx#stx-pair? _hd95759952_)
                                     (let ((_e95779957_
                                            (gx#stx-e _hd95759952_)))
                                       (let ((_hd95789960_ (##car _e95779957_))
                                             (_tl95799962_
                                              (##cdr _e95779957_)))
                                         (if (gx#identifier? _hd95789960_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd95789960_)
                                                 (if (gx#stx-pair?
                                                      _tl95799962_)
                                                     (let ((_e95809965_
                                                            (gx#stx-e
                                                             _tl95799962_)))
                                                       (let ((_hd95819968_
                                                              (##car _e95809965_))
                                                             (_tl95829970_
                                                              (##cdr _e95809965_)))
                                                         (if (gx#stx-null?
                                                              _tl95829970_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl95769954_)
                         (let ((_e95839973_ (gx#stx-e _tl95769954_)))
                           (let ((_hd95849976_ (##car _e95839973_))
                                 (_tl95859978_ (##cdr _e95839973_)))
                             (if (gx#stx-pair? _hd95849976_)
                                 (let ((_e95869981_ (gx#stx-e _hd95849976_)))
                                   (let ((_hd95879984_ (##car _e95869981_))
                                         (_tl95889986_ (##cdr _e95869981_)))
                                     (if (gx#identifier? _hd95879984_)
                                         (if (gx#stx-eq? '%#quote _hd95879984_)
                                             (if (gx#stx-pair? _tl95889986_)
                                                 (let ((_e95899989_
                                                        (gx#stx-e
                                                         _tl95889986_)))
                                                   (let ((_hd95909992_
                                                          (##car _e95899989_))
                                                         (_tl95919994_
                                                          (##cdr _e95899989_)))
                                                     (if (gx#stx-null?
                                                          _tl95919994_)
                                                         (if (gx#stx-null?
                                                              _tl95859978_)
                                                             ((lambda (_L9997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9998_
                               _L9999_
                               _L10000_
                               _L10001_)
                        (let ((__obj14593
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj14593
                             (gx#stx-e _L10001_)
                             '#f
                             (gx#stx-e _L10000_)
                             '0
                             (gx#stx-e _L9997_)
                             (gx#stx-e _L9998_))
                            __obj14593)))
                      _hd95909992_
                      _hd95819968_
                      _hd95729944_
                      _hd95699936_
                      _hd95519888_)
                     (_g95359864_ _g95389867_))
                 (_g95359864_ _g95389867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g95359864_ _g95389867_))
                                             (_g95359864_ _g95389867_))
                                         (_g95359864_ _g95389867_))))
                                 (_g95359864_ _g95389867_))))
                         (_g95359864_ _g95389867_))
                     (_g95359864_ _g95389867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g95359864_ _g95389867_))
                                                 (_g95359864_ _g95389867_))
                                             (_g95359864_ _g95389867_))))
                                     (_g95359864_ _g95389867_))))
                             (_g95359864_ _g95389867_))))
                     (_g95359864_ _g95389867_))
                 (_g95359864_ _g95389867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g95359864_ _g95389867_))
                                             (_g95359864_ _g95389867_))
                                         (_g95359864_ _g95389867_))))
                                 (_g95359864_ _g95389867_))))
                         (_g95359864_ _g95389867_))
                     (_g95359864_ _g95389867_))
                 (_g95359864_ _g95389867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g95359864_
                                                      _g95389867_))))
                                             (_g95359864_ _g95389867_))
                                         (_g95359864_ _g95389867_))
                                     (_g95359864_ _g95389867_))))
                             (_g95359864_ _g95389867_))))
                     (_g95359864_ _g95389867_))
                 (_g95359864_ _g95389867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g95359864_ _g95389867_))
                                             (_g95359864_ _g95389867_))
                                         (_g95359864_ _g95389867_))))
                                 (_g95359864_ _g95389867_))))
                         (_g95359864_ _g95389867_)))))
              (_g953410044_ _args9533_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx9458_ _args9459_)
      (let ((_g94629478_
             (lambda (_g94639475_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94639475_))))
        (let ((_g94619485_ (lambda (_g94639481_) ((lambda () '#f)))))
          (let ((_g94609529_
                 (lambda (_g94639488_)
                   (if (gx#stx-pair? _g94639488_)
                       (let ((_e94659490_ (gx#stx-e _g94639488_)))
                         (let ((_hd94669493_ (##car _e94659490_))
                               (_tl94679495_ (##cdr _e94659490_)))
                           (if (gx#stx-pair? _hd94669493_)
                               (let ((_e94689498_ (gx#stx-e _hd94669493_)))
                                 (let ((_hd94699501_ (##car _e94689498_))
                                       (_tl94709503_ (##cdr _e94689498_)))
                                   (if (gx#identifier? _hd94699501_)
                                       (if (gx#stx-eq? '%#ref _hd94699501_)
                                           (if (gx#stx-pair? _tl94709503_)
                                               (let ((_e94719506_
                                                      (gx#stx-e _tl94709503_)))
                                                 (let ((_hd94729509_
                                                        (##car _e94719506_))
                                                       (_tl94739511_
                                                        (##cdr _e94719506_)))
                                                   (if (gx#stx-null?
                                                        _tl94739511_)
                                                       (if (gx#stx-null?
                                                            _tl94679495_)
                                                           ((lambda (_L9514_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L9514_)))
                                                            _hd94729509_)
                                                           (_g94619485_
                                                            _g94639488_))
                                                       (_g94619485_
                                                        _g94639488_))))
                                               (_g94619485_ _g94639488_))
                                           (_g94619485_ _g94639488_))
                                       (_g94619485_ _g94639488_))))
                               (_g94619485_ _g94639488_))))
                       (_g94619485_ _g94639488_)))))
            (_g94609529_ _args9459_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx9342_ _args9343_)
      (let ((_g93469372_
             (lambda (_g93479369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93479369_))))
        (let ((_g93459379_ (lambda (_g93479375_) ((lambda () '#f)))))
          (let ((_g93449455_
                 (lambda (_g93479382_)
                   (if (gx#stx-pair? _g93479382_)
                       (let ((_e93509384_ (gx#stx-e _g93479382_)))
                         (let ((_hd93519387_ (##car _e93509384_))
                               (_tl93529389_ (##cdr _e93509384_)))
                           (if (gx#stx-pair? _hd93519387_)
                               (let ((_e93539392_ (gx#stx-e _hd93519387_)))
                                 (let ((_hd93549395_ (##car _e93539392_))
                                       (_tl93559397_ (##cdr _e93539392_)))
                                   (if (gx#identifier? _hd93549395_)
                                       (if (gx#stx-eq? '%#ref _hd93549395_)
                                           (if (gx#stx-pair? _tl93559397_)
                                               (let ((_e93569400_
                                                      (gx#stx-e _tl93559397_)))
                                                 (let ((_hd93579403_
                                                        (##car _e93569400_))
                                                       (_tl93589405_
                                                        (##cdr _e93569400_)))
                                                   (if (gx#stx-null?
                                                        _tl93589405_)
                                                       (if (gx#stx-pair?
                                                            _tl93529389_)
                                                           (let ((_e93599408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl93529389_)))
                     (let ((_hd93609411_ (##car _e93599408_))
                           (_tl93619413_ (##cdr _e93599408_)))
                       (if (gx#stx-pair? _hd93609411_)
                           (let ((_e93629416_ (gx#stx-e _hd93609411_)))
                             (let ((_hd93639419_ (##car _e93629416_))
                                   (_tl93649421_ (##cdr _e93629416_)))
                               (if (gx#identifier? _hd93639419_)
                                   (if (gx#stx-eq? '%#quote _hd93639419_)
                                       (if (gx#stx-pair? _tl93649421_)
                                           (let ((_e93659424_
                                                  (gx#stx-e _tl93649421_)))
                                             (let ((_hd93669427_
                                                    (##car _e93659424_))
                                                   (_tl93679429_
                                                    (##cdr _e93659424_)))
                                               (if (gx#stx-null? _tl93679429_)
                                                   (if (gx#stx-null?
                                                        _tl93619413_)
                                                       ((lambda (_L9432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9433_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L9433_)
                   (gx#stx-e _L9432_)))
                _hd93669427_
                _hd93579403_)
               (_g93459379_ _g93479382_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93459379_ _g93479382_))))
                                           (_g93459379_ _g93479382_))
                                       (_g93459379_ _g93479382_))
                                   (_g93459379_ _g93479382_))))
                           (_g93459379_ _g93479382_))))
                   (_g93459379_ _g93479382_))
               (_g93459379_ _g93479382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g93459379_ _g93479382_))
                                           (_g93459379_ _g93479382_))
                                       (_g93459379_ _g93479382_))))
                               (_g93459379_ _g93479382_))))
                       (_g93459379_ _g93479382_)))))
            (_g93449455_ _args9343_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx9226_ _args9227_)
      (let ((_g92309256_
             (lambda (_g92319253_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92319253_))))
        (let ((_g92299263_ (lambda (_g92319259_) ((lambda () '#f)))))
          (let ((_g92289339_
                 (lambda (_g92319266_)
                   (if (gx#stx-pair? _g92319266_)
                       (let ((_e92349268_ (gx#stx-e _g92319266_)))
                         (let ((_hd92359271_ (##car _e92349268_))
                               (_tl92369273_ (##cdr _e92349268_)))
                           (if (gx#stx-pair? _hd92359271_)
                               (let ((_e92379276_ (gx#stx-e _hd92359271_)))
                                 (let ((_hd92389279_ (##car _e92379276_))
                                       (_tl92399281_ (##cdr _e92379276_)))
                                   (if (gx#identifier? _hd92389279_)
                                       (if (gx#stx-eq? '%#ref _hd92389279_)
                                           (if (gx#stx-pair? _tl92399281_)
                                               (let ((_e92409284_
                                                      (gx#stx-e _tl92399281_)))
                                                 (let ((_hd92419287_
                                                        (##car _e92409284_))
                                                       (_tl92429289_
                                                        (##cdr _e92409284_)))
                                                   (if (gx#stx-null?
                                                        _tl92429289_)
                                                       (if (gx#stx-pair?
                                                            _tl92369273_)
                                                           (let ((_e92439292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl92369273_)))
                     (let ((_hd92449295_ (##car _e92439292_))
                           (_tl92459297_ (##cdr _e92439292_)))
                       (if (gx#stx-pair? _hd92449295_)
                           (let ((_e92469300_ (gx#stx-e _hd92449295_)))
                             (let ((_hd92479303_ (##car _e92469300_))
                                   (_tl92489305_ (##cdr _e92469300_)))
                               (if (gx#identifier? _hd92479303_)
                                   (if (gx#stx-eq? '%#quote _hd92479303_)
                                       (if (gx#stx-pair? _tl92489305_)
                                           (let ((_e92499308_
                                                  (gx#stx-e _tl92489305_)))
                                             (let ((_hd92509311_
                                                    (##car _e92499308_))
                                                   (_tl92519313_
                                                    (##cdr _e92499308_)))
                                               (if (gx#stx-null? _tl92519313_)
                                                   (if (gx#stx-null?
                                                        _tl92459297_)
                                                       ((lambda (_L9316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9317_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L9317_)
                   (gx#stx-e _L9316_)))
                _hd92509311_
                _hd92419287_)
               (_g92299263_ _g92319266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92299263_ _g92319266_))))
                                           (_g92299263_ _g92319266_))
                                       (_g92299263_ _g92319266_))
                                   (_g92299263_ _g92319266_))))
                           (_g92299263_ _g92319266_))))
                   (_g92299263_ _g92319266_))
               (_g92299263_ _g92319266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g92299263_ _g92319266_))
                                           (_g92299263_ _g92319266_))
                                       (_g92299263_ _g92319266_))))
                               (_g92299263_ _g92319266_))))
                       (_g92299263_ _g92319266_)))))
            (_g92289339_ _args9227_))))))
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
    (lambda (_stx9175_)
      (let ((_g91779190_
             (lambda (_g91789187_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91789187_))))
        (let ((_g91769223_
               (lambda (_g91789193_)
                 (if (gx#stx-pair? _g91789193_)
                     (let ((_e91809195_ (gx#stx-e _g91789193_)))
                       (let ((_hd91819198_ (##car _e91809195_))
                             (_tl91829200_ (##cdr _e91809195_)))
                         (if (gx#stx-pair? _tl91829200_)
                             (let ((_e91839203_ (gx#stx-e _tl91829200_)))
                               (let ((_hd91849206_ (##car _e91839203_))
                                     (_tl91859208_ (##cdr _e91839203_)))
                                 (if (gx#stx-null? _tl91859208_)
                                     ((lambda (_L9211_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L9211_)))
                                      _hd91849206_)
                                     (_g91779190_ _g91789193_))))
                             (_g91779190_ _g91789193_))))
                     (_g91779190_ _g91789193_)))))
          (_g91769223_ _stx9175_)))))
  (define gxc#optimize-call%
    (lambda (_stx9081_)
      (let ((_g90849104_
             (lambda (_g90859101_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90859101_))))
        (let ((_g90839111_
               (lambda (_g90859107_)
                 ((lambda () (gxc#xform-call% _stx9081_))))))
          (let ((_g90829172_
                 (lambda (_g90859114_)
                   (if (gx#stx-pair? _g90859114_)
                       (let ((_e90889116_ (gx#stx-e _g90859114_)))
                         (let ((_hd90899119_ (##car _e90889116_))
                               (_tl90909121_ (##cdr _e90889116_)))
                           (if (gx#stx-pair? _tl90909121_)
                               (let ((_e90919124_ (gx#stx-e _tl90909121_)))
                                 (let ((_hd90929127_ (##car _e90919124_))
                                       (_tl90939129_ (##cdr _e90919124_)))
                                   (if (gx#stx-pair? _hd90929127_)
                                       (let ((_e90949132_
                                              (gx#stx-e _hd90929127_)))
                                         (let ((_hd90959135_
                                                (##car _e90949132_))
                                               (_tl90969137_
                                                (##cdr _e90949132_)))
                                           (if (gx#identifier? _hd90959135_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd90959135_)
                                                   (if (gx#stx-pair?
                                                        _tl90969137_)
                                                       (let ((_e90979140_
                                                              (gx#stx-e
                                                               _tl90969137_)))
                                                         (let ((_hd90989143_
                                                                (##car _e90979140_))
                                                               (_tl90999145_
                                                                (##cdr _e90979140_)))
                                                           (if (gx#stx-null?
                                                                _tl90999145_)
                                                               ((lambda (_L9148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L9149_)
                          (let ((_rator-id9167_
                                 (gxc#identifier-symbol _L9149_)))
                            (let ((_rator-type9169_
                                   (gxc#optimizer-lookup-type _rator-id9167_)))
                              (let ()
                                (if _rator-type9169_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id9167_
                                       '" => "
                                       _rator-type9169_
                                       '" "
                                       (##structure-ref
                                        _rator-type9169_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type9169_
                                       'optimize-call
                                       _stx9081_
                                       _L9148_))
                                    (gxc#xform-call% _stx9081_))))))
                        _tl90939129_
                        _hd90989143_)
                       (_g90839111_ _g90859114_))))
               (_g90839111_ _g90859114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90839111_ _g90859114_))
                                               (_g90839111_ _g90859114_))))
                                       (_g90839111_ _g90859114_))))
                               (_g90839111_ _g90859114_))))
                       (_g90839111_ _g90859114_)))))
            (_g90829172_ _stx9081_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self9051_ _stx9052_ _args9053_)
      (let ((_self90549060_ _self9051_))
        (let ((_E90569064_
               (lambda () (error '"No clause matching" _self90549060_))))
          (let ((_K90579073_
                 (lambda (_alias-id9067_)
                   (let ((_alias-type9069_
                          (gxc#optimizer-lookup-type _alias-id9067_)))
                     (if (##structure-instance-of?
                          _alias-type9069_
                          'gxc#!type::t)
                         (call-method
                          _alias-type9069_
                          'optimize-call
                          _stx9052_
                          _args9053_)
                         (let ((_args9071_
                                (gx#stx-map1 gxc#compile-e _args9053_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref (cons _alias-id9067_ '()))
                                        _args9071_))
                            _stx9052_)))))))
            (if (struct-instance? gxc#!alias::t _self90549060_)
                (let ((_e90589076_ (##vector-ref _self90549060_ '1)))
                  (let ((_alias-id9079_ _e90589076_))
                    (_K90579073_ _alias-id9079_)))
                (_E90569064_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self8906_ _stx8907_ _args8908_)
      (let ((_self89098915_ _self8906_))
        (let ((_E89118919_
               (lambda () (error '"No clause matching" _self89098915_))))
          (let ((_K89129043_
                 (lambda (_struct-t8922_)
                   (let ((_struct-type8924_
                          (gxc#optimizer-resolve-type _struct-t8922_)))
                     (let ((_struct-type89258939_ _struct-type8924_))
                       (let ((_E89298943_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type89258939_))))
                         (let ((_else89288947_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8907_
                                   _struct-t8922_
                                   _struct-type8924_))))
                           (let ((_try-match89278955_
                                  (lambda ()
                                    (let ((_K89308952_
                                           (lambda ()
                                             (gxc#xform-call% _stx8907_))))
                                      (if (##eq? _struct-type89258939_ '#f)
                                          (_K89308952_)
                                          (_else89288947_))))))
                             (let ((_K89319018_
                                    (lambda (_plist8958_ _struct-type-id8959_)
                                      (let ((_g89628972_
                                             (lambda (_g89638969_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g89638969_))))
                                        (let ((_g89618979_
                                               (lambda (_g89638975_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx8907_))))))
                                          (let ((_g89609015_
                                                 (lambda (_g89638982_)
                                                   (if (gx#stx-pair?
                                                        _g89638982_)
                                                       (let ((_e89658984_
                                                              (gx#stx-e
                                                               _g89638982_)))
                                                         (let ((_hd89668987_
                                                                (##car _e89658984_))
                                                               (_tl89678989_
                                                                (##cdr _e89658984_)))
                                                           (if (gx#stx-null?
                                                                _tl89678989_)
                                                               ((lambda (_L8992_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr9012_ (gxc#compile-e _L8992_))
                                (_op9013_
                                 (if (if _plist8958_
                                         (assgetq 'final: _plist8958_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op9013_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id8959_ '()))
                                         (cons _expr9012_ '())))
                             _stx8907_)))
                        _hd89668987_)
                       (_g89618979_ _g89638982_))))
               (_g89618979_ _g89638982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g89609015_ _args8908_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type89258939_)
                                   (let ((_e89329021_
                                          (##vector-ref
                                           _struct-type89258939_
                                           '1)))
                                     (let ((_struct-type-id9024_ _e89329021_))
                                       (let ((_e89339026_
                                              (##vector-ref
                                               _struct-type89258939_
                                               '2)))
                                         (let ((_e89349029_
                                                (##vector-ref
                                                 _struct-type89258939_
                                                 '3)))
                                           (let ((_e89359032_
                                                  (##vector-ref
                                                   _struct-type89258939_
                                                   '4)))
                                             (let ((_e89369035_
                                                    (##vector-ref
                                                     _struct-type89258939_
                                                     '5)))
                                               (let ((_e89379038_
                                                      (##vector-ref
                                                       _struct-type89258939_
                                                       '6)))
                                                 (let ((_plist9041_
                                                        _e89379038_))
                                                   (_K89319018_
                                                    _plist9041_
                                                    _struct-type-id9024_)))))))))
                                   (_try-match89278955_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self89098915_)
                (let ((_e89139046_ (##vector-ref _self89098915_ '1)))
                  (let ((_struct-t9049_ _e89139046_))
                    (_K89129043_ _struct-t9049_)))
                (_E89118919_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self8802_ _stx8803_ _args8804_)
      (let ((_self88058811_ _self8802_))
        (let ((_E88078815_
               (lambda () (error '"No clause matching" _self88058811_))))
          (let ((_K88088898_
                 (lambda (_struct-t8818_)
                   (let ((_struct-type8820_
                          (gxc#optimizer-resolve-type _struct-t8818_)))
                     (let ((_struct-type88218834_ _struct-type8820_))
                       (let ((_E88258838_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type88218834_))))
                         (let ((_else88248842_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx8803_
                                   _struct-t8818_
                                   _struct-type8820_))))
                           (let ((_try-match88238850_
                                  (lambda ()
                                    (let ((_K88268847_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t8818_)
                                               (gxc#xform-call% _stx8803_)))))
                                      (if (##eq? _struct-type88218834_ '#f)
                                          (_K88268847_)
                                          (_else88248842_))))))
                             (let ((_K88278872_
                                    (lambda (_ctor8853_
                                             _xfields8854_
                                             _fields8855_
                                             _type-id8856_)
                                      (let ((_args8858_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args8804_)))
                                        (let ((_$e8860_
                                               (if _ctor8853_
                                                   (if _xfields8854_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type8820_
                                                        _ctor8853_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e8860_
                                              ((lambda (_kons8863_)
                                                 (let ((_$obj8865_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj8865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t8818_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields8855_ _xfields8854_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons8863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj8865_ '())) _args8858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx8803_))
                                          (cons (cons '%#ref
                                                      (cons _$obj8865_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx8803_)))
                                               _$e8860_)
                                              (if (let ((_$e8867_ _ctor8853_))
                                                    (if _$e8867_
                                                        _$e8867_
                                                        (not _xfields8854_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t8818_ '()))
                             _args8858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx8803_)
                                                  (let ((_arity8870_
                                                         (fx+ _fields8855_
                                                              _xfields8854_)))
                                                    (if (fx= _arity8870_
                                                             (length _args8858_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t8818_ '()))
                                   _args8858_)))
                 _stx8803_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx8803_
                 _struct-t8818_
                 _arity8870_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type88218834_)
                                   (let ((_e88288875_
                                          (##vector-ref
                                           _struct-type88218834_
                                           '1)))
                                     (let ((_type-id8878_ _e88288875_))
                                       (let ((_e88298880_
                                              (##vector-ref
                                               _struct-type88218834_
                                               '2)))
                                         (let ((_e88308883_
                                                (##vector-ref
                                                 _struct-type88218834_
                                                 '3)))
                                           (let ((_fields8886_ _e88308883_))
                                             (let ((_e88318888_
                                                    (##vector-ref
                                                     _struct-type88218834_
                                                     '4)))
                                               (let ((_xfields8891_
                                                      _e88318888_))
                                                 (let ((_e88328893_
                                                        (##vector-ref
                                                         _struct-type88218834_
                                                         '5)))
                                                   (let ((_ctor8896_
                                                          _e88328893_))
                                                     (_K88278872_
                                                      _ctor8896_
                                                      _xfields8891_
                                                      _fields8886_
                                                      _type-id8878_))))))))))
                                   (_try-match88238850_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self88058811_)
                (let ((_e88098901_ (##vector-ref _self88058811_ '1)))
                  (let ((_struct-t8904_ _e88098901_))
                    (_K88088898_ _struct-t8904_)))
                (_E88078815_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self8655_ _stx8656_ _args8657_)
      (let ((_self86588665_ _self8655_))
        (let ((_E86608669_
               (lambda () (error '"No clause matching" _self86588665_))))
          (let ((_K86618789_
                 (lambda (_off8672_ _struct-t8673_)
                   (let ((_struct-type8675_
                          (gxc#optimizer-resolve-type _struct-t8673_)))
                     (let ((_struct-type86768688_ _struct-type8675_))
                       (let ((_E86808692_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type86768688_))))
                         (let ((_else86798696_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8656_
                                   _struct-t8673_
                                   _struct-type8675_))))
                           (let ((_try-match86788704_
                                  (lambda ()
                                    (let ((_K86818701_
                                           (lambda ()
                                             (gxc#xform-call% _stx8656_))))
                                      (if (##eq? _struct-type86768688_ '#f)
                                          (_K86818701_)
                                          (_else86798696_))))))
                             (let ((_K86828768_
                                    (lambda (_xfields8707_
                                             _fields8708_
                                             _struct-type-id8709_)
                                      (if _xfields8707_
                                          (let ((_g87128722_
                                                 (lambda (_g87138719_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g87138719_))))
                                            (let ((_g87118729_
                                                   (lambda (_g87138725_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx8656_))))))
                                              (let ((_g87108765_
                                                     (lambda (_g87138732_)
                                                       (if (gx#stx-pair?
                                                            _g87138732_)
                                                           (let ((_e87158734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g87138732_)))
                     (let ((_hd87168737_ (##car _e87158734_))
                           (_tl87178739_ (##cdr _e87158734_)))
                       (if (gx#stx-null? _tl87178739_)
                           ((lambda (_L8742_)
                              (let ((_expr8762_ (gxc#compile-e _L8742_))
                                    (_off8763_
                                     (fx+ _off8672_ _xfields8707_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t8673_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off8763_ '()))
                                                   (cons _expr8762_ '()))))
                                 _stx8656_)))
                            _hd87168737_)
                           (_g87118729_ _g87138732_))))
                   (_g87118729_ _g87138732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g87108765_ _args8657_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id8709_)
                                            (gxc#xform-call% _stx8656_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type86768688_)
                                   (let ((_e86838771_
                                          (##vector-ref
                                           _struct-type86768688_
                                           '1)))
                                     (let ((_struct-type-id8774_ _e86838771_))
                                       (let ((_e86848776_
                                              (##vector-ref
                                               _struct-type86768688_
                                               '2)))
                                         (let ((_e86858779_
                                                (##vector-ref
                                                 _struct-type86768688_
                                                 '3)))
                                           (let ((_fields8782_ _e86858779_))
                                             (let ((_e86868784_
                                                    (##vector-ref
                                                     _struct-type86768688_
                                                     '4)))
                                               (let ((_xfields8787_
                                                      _e86868784_))
                                                 (_K86828768_
                                                  _xfields8787_
                                                  _fields8782_
                                                  _struct-type-id8774_))))))))
                                   (_try-match86788704_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self86588665_)
                (let ((_e86628792_ (##vector-ref _self86588665_ '1)))
                  (let ((_struct-t8795_ _e86628792_))
                    (let ((_e86638797_ (##vector-ref _self86588665_ '2)))
                      (let ((_off8800_ _e86638797_))
                        (_K86618789_ _off8800_ _struct-t8795_)))))
                (_E86608669_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self8491_ _stx8492_ _args8493_)
      (let ((_self84948501_ _self8491_))
        (let ((_E84968505_
               (lambda () (error '"No clause matching" _self84948501_))))
          (let ((_K84978642_
                 (lambda (_off8508_ _struct-t8509_)
                   (let ((_struct-type8511_
                          (gxc#optimizer-resolve-type _struct-t8509_)))
                     (let ((_struct-type85128524_ _struct-type8511_))
                       (let ((_E85168528_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type85128524_))))
                         (let ((_else85158532_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8492_
                                   _struct-t8509_
                                   _struct-type8511_))))
                           (let ((_try-match85148540_
                                  (lambda ()
                                    (let ((_K85178537_
                                           (lambda ()
                                             (gxc#xform-call% _stx8492_))))
                                      (if (##eq? _struct-type85128524_ '#f)
                                          (_K85178537_)
                                          (_else85158532_))))))
                             (let ((_K85188621_
                                    (lambda (_xfields8543_
                                             _fields8544_
                                             _struct-type-id8545_)
                                      (if _xfields8543_
                                          (let ((_g85488562_
                                                 (lambda (_g85498559_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g85498559_))))
                                            (let ((_g85478569_
                                                   (lambda (_g85498565_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx8492_))))))
                                              (let ((_g85468618_
                                                     (lambda (_g85498572_)
                                                       (if (gx#stx-pair?
                                                            _g85498572_)
                                                           (let ((_e85528574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g85498572_)))
                     (let ((_hd85538577_ (##car _e85528574_))
                           (_tl85548579_ (##cdr _e85528574_)))
                       (if (gx#stx-pair? _tl85548579_)
                           (let ((_e85558582_ (gx#stx-e _tl85548579_)))
                             (let ((_hd85568585_ (##car _e85558582_))
                                   (_tl85578587_ (##cdr _e85558582_)))
                               (if (gx#stx-null? _tl85578587_)
                                   ((lambda (_L8590_ _L8591_)
                                      (let ((_expr8614_
                                             (gxc#compile-e _L8591_))
                                            (_val8615_ (gxc#compile-e _L8590_))
                                            (_off8616_
                                             (fx+ _off8508_ _xfields8543_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t8509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off8616_ '()))
                   (cons _expr8614_ (cons _val8615_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx8492_)))
                                    _hd85568585_
                                    _hd85538577_)
                                   (_g85478569_ _g85498572_))))
                           (_g85478569_ _g85498572_))))
                   (_g85478569_ _g85498572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g85468618_ _args8493_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id8545_)
                                            (gxc#xform-call% _stx8492_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type85128524_)
                                   (let ((_e85198624_
                                          (##vector-ref
                                           _struct-type85128524_
                                           '1)))
                                     (let ((_struct-type-id8627_ _e85198624_))
                                       (let ((_e85208629_
                                              (##vector-ref
                                               _struct-type85128524_
                                               '2)))
                                         (let ((_e85218632_
                                                (##vector-ref
                                                 _struct-type85128524_
                                                 '3)))
                                           (let ((_fields8635_ _e85218632_))
                                             (let ((_e85228637_
                                                    (##vector-ref
                                                     _struct-type85128524_
                                                     '4)))
                                               (let ((_xfields8640_
                                                      _e85228637_))
                                                 (_K85188621_
                                                  _xfields8640_
                                                  _fields8635_
                                                  _struct-type-id8627_))))))))
                                   (_try-match85148540_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self84948501_)
                (let ((_e84988645_ (##vector-ref _self84948501_ '1)))
                  (let ((_struct-t8648_ _e84988645_))
                    (let ((_e84998650_ (##vector-ref _self84948501_ '2)))
                      (let ((_off8653_ _e84998650_))
                        (_K84978642_ _off8653_ _struct-t8648_)))))
                (_E84968505_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self8452_ _stx8453_ _args8454_)
      (let ((_self84558463_ _self8452_))
        (let ((_E84578467_
               (lambda () (error '"No clause matching" _self84558463_))))
          (let ((_K84588475_
                 (lambda (_dispatch8470_ _arity8471_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self8452_ _args8454_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx8453_
                          _arity8471_))
                     (if _dispatch8470_
                         (let ((_args8473_
                                (gx#stx-map1 gxc#compile-e _args8454_)))
                           (begin
                             (gxc#verbose
                              '"dispatch lambda => "
                              _dispatch8470_)
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch8470_ '()))
                                          _args8473_))
                              _stx8453_)))
                         (gxc#xform-call% _stx8453_))))))
            (if (struct-instance? gxc#!lambda::t _self84558463_)
                (let ((_e84598478_ (##vector-ref _self84558463_ '1)))
                  (let ((_e84608481_ (##vector-ref _self84558463_ '2)))
                    (let ((_arity8484_ _e84608481_))
                      (let ((_e84618486_ (##vector-ref _self84558463_ '3)))
                        (let ((_dispatch8489_ _e84618486_))
                          (_K84588475_ _dispatch8489_ _arity8484_))))))
                (_E84578467_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self8412_ _stx8413_ _args8414_)
      (let ((_self84158422_ _self8412_))
        (let ((_E84178426_
               (lambda () (error '"No clause matching" _self84158422_))))
          (let ((_K84188441_
                 (lambda (_clauses8429_)
                   (let ((_$e8435_
                          (find (lambda (_g84308432_)
                                  (gxc#!lambda-arity-match?
                                   _g84308432_
                                   _args8414_))
                                _clauses8429_)))
                     (if _$e8435_
                         ((lambda (_clause8438_)
                            (call-method
                             _clause8438_
                             'optimize-call
                             _stx8413_
                             _args8414_))
                          _$e8435_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx8413_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses8429_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses8429_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self84158422_)
                (let ((_e84198444_ (##vector-ref _self84158422_ '1)))
                  (let ((_e84208447_ (##vector-ref _self84158422_ '2)))
                    (let ((_clauses8450_ _e84208447_))
                      (_K84188441_ _clauses8450_))))
                (_E84178426_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self8348_ _args8349_)
      (let ((_self83508357_ _self8348_))
        (let ((_E83528361_
               (lambda () (error '"No clause matching" _self83508357_))))
          (let ((_K83538401_
                 (lambda (_arity8364_)
                   (let ((_arity83658374_ _arity8364_))
                     (let ((_E83688378_
                            (lambda ()
                              (error '"No clause matching" _arity83658374_))))
                       (let ((_try-match83678394_
                              (lambda ()
                                (let ((_K83698384_
                                       (lambda (_arity8382_)
                                         (fx>= (gx#stx-length _args8349_)
                                               _arity8382_))))
                                  (if (##pair? _arity83658374_)
                                      (let ((_hd83708387_
                                             (##car _arity83658374_))
                                            (_tl83718389_
                                             (##cdr _arity83658374_)))
                                        (let ((_arity8392_ _hd83708387_))
                                          (if (##null? _tl83718389_)
                                              (_K83698384_ _arity8392_)
                                              (_E83688378_))))
                                      (_E83688378_))))))
                         (let ((_K83728398_
                                (lambda ()
                                  (fx= (gx#stx-length _args8349_)
                                       _arity8364_))))
                           (if (fixnum? _arity83658374_)
                               (_K83728398_)
                               (_try-match83678394_)))))))))
            (if (struct-instance? gxc#!lambda::t _self83508357_)
                (let ((_e83548404_ (##vector-ref _self83508357_ '1)))
                  (let ((_e83558407_ (##vector-ref _self83508357_ '2)))
                    (let ((_arity8410_ _e83558407_))
                      (_K83538401_ _arity8410_))))
                (_E83528361_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx8288_)
      (let ((_g82908304_
             (lambda (_g82918301_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g82918301_))))
        (let ((_g82898345_
               (lambda (_g82918307_)
                 (if (gx#stx-pair? _g82918307_)
                     (let ((_e82948309_ (gx#stx-e _g82918307_)))
                       (let ((_hd82958312_ (##car _e82948309_))
                             (_tl82968314_ (##cdr _e82948309_)))
                         (if (gx#stx-pair? _tl82968314_)
                             (let ((_e82978317_ (gx#stx-e _tl82968314_)))
                               (let ((_hd82988320_ (##car _e82978317_))
                                     (_tl82998322_ (##cdr _e82978317_)))
                                 ((lambda (_L8325_ _L8326_)
                                    (let ((_ctx8339_
                                           (gx#syntax-local-e__0 _L8326_)))
                                      (let ((_code8341_
                                             (##structure-ref
                                              _ctx8339_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code8341_))
                                           gx#current-expander-context
                                           _ctx8339_)))))
                                  _tl82998322_
                                  _hd82988320_)))
                             (_g82908304_ _g82918307_))))
                     (_g82908304_ _g82918307_)))))
          (_g82898345_ _stx8288_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx8095_)
      (let ((_generate-e8097_
             (lambda (_id8277_)
               (let ((_sym8279_ (gxc#identifier-symbol _id8277_)))
                 (let ((_$e8281_ (gxc#optimizer-lookup-type _sym8279_)))
                   (if _$e8281_
                       ((lambda (_type8284_)
                          (let ((_typedecl8286_
                                 (call-method _type8284_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym8279_ (cons _typedecl8286_ '())))))
                        _$e8281_)
                       '(begin)))))))
        (let ((_g81008138_
               (lambda (_g81018135_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81018135_))))
          (let ((_g80998222_
                 (lambda (_g81018141_)
                   (if (gx#stx-pair? _g81018141_)
                       (let ((_e81168143_ (gx#stx-e _g81018141_)))
                         (let ((_hd81178146_ (##car _e81168143_))
                               (_tl81188148_ (##cdr _e81168143_)))
                           (if (gx#stx-pair? _tl81188148_)
                               (let ((_e81198151_ (gx#stx-e _tl81188148_)))
                                 (let ((_hd81208154_ (##car _e81198151_))
                                       (_tl81218156_ (##cdr _e81198151_)))
                                   (if (gx#stx-pair/null? _hd81208154_)
                                       (if (fx>= (gx#stx-length _hd81208154_)
                                                 '0)
                                           (let ((_g14626_
                                                  (gx#syntax-split-splice
                                                   _hd81208154_
                                                   '0)))
                                             (begin
                                               (let ((_g14627_
                                                      (values-count _g14626_)))
                                                 (if (not (fx= _g14627_ 2))
                                                     (error "Context expects 2 values"
                                                            _g14627_)))
                                               (let ((_target81228159_
                                                      (values-ref _g14626_ 0))
                                                     (_tl81248161_
                                                      (values-ref _g14626_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl81248161_)
                                                     (letrec ((_loop81258164_
                                                               (lambda (_hd81238167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id81298169_)
                         (if (gx#stx-pair? _hd81238167_)
                             (let ((_e81268172_ (gx#stx-e _hd81238167_)))
                               (let ((_lp-hd81278175_ (##car _e81268172_))
                                     (_lp-tl81288177_ (##cdr _e81268172_)))
                                 (_loop81258164_
                                  _lp-tl81288177_
                                  (cons _lp-hd81278175_ _id81298169_))))
                             (let ((_id81308180_ (reverse _id81298169_)))
                               (if (gx#stx-pair? _tl81218156_)
                                   (let ((_e81318183_ (gx#stx-e _tl81218156_)))
                                     (let ((_hd81328186_ (##car _e81318183_))
                                           (_tl81338188_ (##cdr _e81318183_)))
                                       (if (gx#stx-null? _tl81338188_)
                                           ((lambda (_L8191_)
                                              (let ((_ids8217_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g82098212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g82108214_)
                                (cons _g82098212_ _g82108214_))
                              '()
                              _L8191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types8219_
                                                       (map _generate-e8097_
                                                            _ids8217_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types8219_)))))
                                            _id81308180_)
                                           (_g81008138_ _g81018141_))))
                                   (_g81008138_ _g81018141_)))))))
               (_loop81258164_ _target81228159_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81008138_
                                                      _g81018141_)))))
                                           (_g81008138_ _g81018141_))
                                       (_g81008138_ _g81018141_))))
                               (_g81008138_ _g81018141_))))
                       (_g81008138_ _g81018141_)))))
            (let ((_g80988274_
                   (lambda (_g81018225_)
                     (if (gx#stx-pair? _g81018225_)
                         (let ((_e81038227_ (gx#stx-e _g81018225_)))
                           (let ((_hd81048230_ (##car _e81038227_))
                                 (_tl81058232_ (##cdr _e81038227_)))
                             (if (gx#stx-pair? _tl81058232_)
                                 (let ((_e81068235_ (gx#stx-e _tl81058232_)))
                                   (let ((_hd81078238_ (##car _e81068235_))
                                         (_tl81088240_ (##cdr _e81068235_)))
                                     (if (gx#stx-pair? _hd81078238_)
                                         (let ((_e81098243_
                                                (gx#stx-e _hd81078238_)))
                                           (let ((_hd81108246_
                                                  (##car _e81098243_))
                                                 (_tl81118248_
                                                  (##cdr _e81098243_)))
                                             (if (gx#stx-null? _tl81118248_)
                                                 (if (gx#stx-pair?
                                                      _tl81088240_)
                                                     (let ((_e81128251_
                                                            (gx#stx-e
                                                             _tl81088240_)))
                                                       (let ((_hd81138254_
                                                              (##car _e81128251_))
                                                             (_tl81148256_
                                                              (##cdr _e81128251_)))
                                                         (if (gx#stx-null?
                                                              _tl81148256_)
                                                             ((lambda (_L8259_)
                                                                (_generate-e8097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8259_))
                      _hd81108246_)
                     (_g80998222_ _g81018225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80998222_ _g81018225_))
                                                 (_g80998222_ _g81018225_))))
                                         (_g80998222_ _g81018225_))))
                                 (_g80998222_ _g81018225_))))
                         (_g80998222_ _g81018225_)))))
              (_g80988274_ _stx8095_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx7649_)
      (let ((_g76537755_
             (lambda (_g76547752_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g76547752_))))
        (let ((_g76527762_ (lambda (_g76547758_) ((lambda () '(begin))))))
          (let ((_g76517912_
                 (lambda (_g76547765_)
                   (if (gx#stx-pair? _g76547765_)
                       (let ((_e77127767_ (gx#stx-e _g76547765_)))
                         (let ((_hd77137770_ (##car _e77127767_))
                               (_tl77147772_ (##cdr _e77127767_)))
                           (if (gx#stx-pair? _tl77147772_)
                               (let ((_e77157775_ (gx#stx-e _tl77147772_)))
                                 (let ((_hd77167778_ (##car _e77157775_))
                                       (_tl77177780_ (##cdr _e77157775_)))
                                   (if (gx#stx-pair? _hd77167778_)
                                       (let ((_e77187783_
                                              (gx#stx-e _hd77167778_)))
                                         (let ((_hd77197786_
                                                (##car _e77187783_))
                                               (_tl77207788_
                                                (##cdr _e77187783_)))
                                           (if (gx#identifier? _hd77197786_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd77197786_)
                                                   (if (gx#stx-pair?
                                                        _tl77207788_)
                                                       (let ((_e77217791_
                                                              (gx#stx-e
                                                               _tl77207788_)))
                                                         (let ((_hd77227794_
                                                                (##car _e77217791_))
                                                               (_tl77237796_
                                                                (##cdr _e77217791_)))
                                                           (if (gx#stx-null?
                                                                _tl77237796_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl77177780_)
                           (let ((_e77247799_ (gx#stx-e _tl77177780_)))
                             (let ((_hd77257802_ (##car _e77247799_))
                                   (_tl77267804_ (##cdr _e77247799_)))
                               (if (gx#stx-pair? _hd77257802_)
                                   (let ((_e77277807_ (gx#stx-e _hd77257802_)))
                                     (let ((_hd77287810_ (##car _e77277807_))
                                           (_tl77297812_ (##cdr _e77277807_)))
                                       (if (gx#identifier? _hd77287810_)
                                           (if (gx#stx-eq? '%#ref _hd77287810_)
                                               (if (gx#stx-pair? _tl77297812_)
                                                   (let ((_e77307815_
                                                          (gx#stx-e
                                                           _tl77297812_)))
                                                     (let ((_hd77317818_
                                                            (##car _e77307815_))
                                                           (_tl77327820_
                                                            (##cdr _e77307815_)))
                                                       (if (gx#stx-null?
                                                            _tl77327820_)
                                                           (if (gx#stx-pair?
                                                                _tl77267804_)
                                                               (let ((_e77337823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl77267804_)))
                         (let ((_hd77347826_ (##car _e77337823_))
                               (_tl77357828_ (##cdr _e77337823_)))
                           (if (gx#stx-pair? _hd77347826_)
                               (let ((_e77367831_ (gx#stx-e _hd77347826_)))
                                 (let ((_hd77377834_ (##car _e77367831_))
                                       (_tl77387836_ (##cdr _e77367831_)))
                                   (if (gx#identifier? _hd77377834_)
                                       (if (gx#stx-eq? '%#quote _hd77377834_)
                                           (if (gx#stx-pair? _tl77387836_)
                                               (let ((_e77397839_
                                                      (gx#stx-e _tl77387836_)))
                                                 (let ((_hd77407842_
                                                        (##car _e77397839_))
                                                       (_tl77417844_
                                                        (##cdr _e77397839_)))
                                                   (if (gx#stx-null?
                                                        _tl77417844_)
                                                       (if (gx#stx-pair?
                                                            _tl77357828_)
                                                           (let ((_e77427847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl77357828_)))
                     (let ((_hd77437850_ (##car _e77427847_))
                           (_tl77447852_ (##cdr _e77427847_)))
                       (if (gx#stx-pair? _hd77437850_)
                           (let ((_e77457855_ (gx#stx-e _hd77437850_)))
                             (let ((_hd77467858_ (##car _e77457855_))
                                   (_tl77477860_ (##cdr _e77457855_)))
                               (if (gx#identifier? _hd77467858_)
                                   (if (gx#stx-eq? '%#ref _hd77467858_)
                                       (if (gx#stx-pair? _tl77477860_)
                                           (let ((_e77487863_
                                                  (gx#stx-e _tl77477860_)))
                                             (let ((_hd77497866_
                                                    (##car _e77487863_))
                                                   (_tl77507868_
                                                    (##cdr _e77487863_)))
                                               (if (gx#stx-null? _tl77507868_)
                                                   (if (gx#stx-null?
                                                        _tl77447852_)
                                                       ((lambda (_L7871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7872_
                         _L7873_
                         _L7874_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L7873_)
                                  (cons (gx#stx-e _L7872_)
                                        (cons (gxc#identifier-symbol _L7871_)
                                              (cons '#f '())))))
                      (_g76527762_ _g76547765_)))
                _hd77497866_
                _hd77407842_
                _hd77317818_
                _hd77227794_)
               (_g76527762_ _g76547765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76527762_ _g76547765_))))
                                           (_g76527762_ _g76547765_))
                                       (_g76527762_ _g76547765_))
                                   (_g76527762_ _g76547765_))))
                           (_g76527762_ _g76547765_))))
                   (_g76527762_ _g76547765_))
               (_g76527762_ _g76547765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g76527762_ _g76547765_))
                                           (_g76527762_ _g76547765_))
                                       (_g76527762_ _g76547765_))))
                               (_g76527762_ _g76547765_))))
                       (_g76527762_ _g76547765_))
                   (_g76527762_ _g76547765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76527762_ _g76547765_))
                                               (_g76527762_ _g76547765_))
                                           (_g76527762_ _g76547765_))))
                                   (_g76527762_ _g76547765_))))
                           (_g76527762_ _g76547765_))
                       (_g76527762_ _g76547765_))))
               (_g76527762_ _g76547765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76527762_ _g76547765_))
                                               (_g76527762_ _g76547765_))))
                                       (_g76527762_ _g76547765_))))
                               (_g76527762_ _g76547765_))))
                       (_g76527762_ _g76547765_)))))
            (let ((_g76508092_
                   (lambda (_g76547915_)
                     (if (gx#stx-pair? _g76547915_)
                         (let ((_e76607917_ (gx#stx-e _g76547915_)))
                           (let ((_hd76617920_ (##car _e76607917_))
                                 (_tl76627922_ (##cdr _e76607917_)))
                             (if (gx#stx-pair? _tl76627922_)
                                 (let ((_e76637925_ (gx#stx-e _tl76627922_)))
                                   (let ((_hd76647928_ (##car _e76637925_))
                                         (_tl76657930_ (##cdr _e76637925_)))
                                     (if (gx#stx-pair? _hd76647928_)
                                         (let ((_e76667933_
                                                (gx#stx-e _hd76647928_)))
                                           (let ((_hd76677936_
                                                  (##car _e76667933_))
                                                 (_tl76687938_
                                                  (##cdr _e76667933_)))
                                             (if (gx#identifier? _hd76677936_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd76677936_)
                                                     (if (gx#stx-pair?
                                                          _tl76687938_)
                                                         (let ((_e76697941_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76687938_)))
                   (let ((_hd76707944_ (##car _e76697941_))
                         (_tl76717946_ (##cdr _e76697941_)))
                     (if (gx#stx-null? _tl76717946_)
                         (if (gx#stx-pair? _tl76657930_)
                             (let ((_e76727949_ (gx#stx-e _tl76657930_)))
                               (let ((_hd76737952_ (##car _e76727949_))
                                     (_tl76747954_ (##cdr _e76727949_)))
                                 (if (gx#stx-pair? _hd76737952_)
                                     (let ((_e76757957_
                                            (gx#stx-e _hd76737952_)))
                                       (let ((_hd76767960_ (##car _e76757957_))
                                             (_tl76777962_
                                              (##cdr _e76757957_)))
                                         (if (gx#identifier? _hd76767960_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd76767960_)
                                                 (if (gx#stx-pair?
                                                      _tl76777962_)
                                                     (let ((_e76787965_
                                                            (gx#stx-e
                                                             _tl76777962_)))
                                                       (let ((_hd76797968_
                                                              (##car _e76787965_))
                                                             (_tl76807970_
                                                              (##cdr _e76787965_)))
                                                         (if (gx#stx-null?
                                                              _tl76807970_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl76747954_)
                         (let ((_e76817973_ (gx#stx-e _tl76747954_)))
                           (let ((_hd76827976_ (##car _e76817973_))
                                 (_tl76837978_ (##cdr _e76817973_)))
                             (if (gx#stx-pair? _hd76827976_)
                                 (let ((_e76847981_ (gx#stx-e _hd76827976_)))
                                   (let ((_hd76857984_ (##car _e76847981_))
                                         (_tl76867986_ (##cdr _e76847981_)))
                                     (if (gx#identifier? _hd76857984_)
                                         (if (gx#stx-eq? '%#quote _hd76857984_)
                                             (if (gx#stx-pair? _tl76867986_)
                                                 (let ((_e76877989_
                                                        (gx#stx-e
                                                         _tl76867986_)))
                                                   (let ((_hd76887992_
                                                          (##car _e76877989_))
                                                         (_tl76897994_
                                                          (##cdr _e76877989_)))
                                                     (if (gx#stx-null?
                                                          _tl76897994_)
                                                         (if (gx#stx-pair?
                                                              _tl76837978_)
                                                             (let ((_e76907997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl76837978_)))
                       (let ((_hd76918000_ (##car _e76907997_))
                             (_tl76928002_ (##cdr _e76907997_)))
                         (if (gx#stx-pair? _hd76918000_)
                             (let ((_e76938005_ (gx#stx-e _hd76918000_)))
                               (let ((_hd76948008_ (##car _e76938005_))
                                     (_tl76958010_ (##cdr _e76938005_)))
                                 (if (gx#identifier? _hd76948008_)
                                     (if (gx#stx-eq? '%#ref _hd76948008_)
                                         (if (gx#stx-pair? _tl76958010_)
                                             (let ((_e76968013_
                                                    (gx#stx-e _tl76958010_)))
                                               (let ((_hd76978016_
                                                      (##car _e76968013_))
                                                     (_tl76988018_
                                                      (##cdr _e76968013_)))
                                                 (if (gx#stx-null?
                                                      _tl76988018_)
                                                     (if (gx#stx-pair?
                                                          _tl76928002_)
                                                         (let ((_e76998021_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76928002_)))
                   (let ((_hd77008024_ (##car _e76998021_))
                         (_tl77018026_ (##cdr _e76998021_)))
                     (if (gx#stx-pair? _hd77008024_)
                         (let ((_e77028029_ (gx#stx-e _hd77008024_)))
                           (let ((_hd77038032_ (##car _e77028029_))
                                 (_tl77048034_ (##cdr _e77028029_)))
                             (if (gx#identifier? _hd77038032_)
                                 (if (gx#stx-eq? '%#quote _hd77038032_)
                                     (if (gx#stx-pair? _tl77048034_)
                                         (let ((_e77058037_
                                                (gx#stx-e _tl77048034_)))
                                           (let ((_hd77068040_
                                                  (##car _e77058037_))
                                                 (_tl77078042_
                                                  (##cdr _e77058037_)))
                                             (if (gx#stx-null? _tl77078042_)
                                                 (if (gx#stx-null?
                                                      _tl77018026_)
                                                     ((lambda (_L8045_
                                                               _L8046_
                                                               _L8047_
                                                               _L8048_
                                                               _L8049_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8049_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L8048_)
                                (cons (gx#stx-e _L8047_)
                                      (cons (gxc#identifier-symbol _L8046_)
                                            (cons (gx#stx-e _L8045_) '())))))
                    (_g76517912_ _g76547915_)))
              _hd77068040_
              _hd76978016_
              _hd76887992_
              _hd76797968_
              _hd76707944_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_ _g76547915_))
                                                 (_g76517912_ _g76547915_))))
                                         (_g76517912_ _g76547915_))
                                     (_g76517912_ _g76547915_))
                                 (_g76517912_ _g76547915_))))
                         (_g76517912_ _g76547915_))))
                 (_g76517912_ _g76547915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_
                                                      _g76547915_))))
                                             (_g76517912_ _g76547915_))
                                         (_g76517912_ _g76547915_))
                                     (_g76517912_ _g76547915_))))
                             (_g76517912_ _g76547915_))))
                     (_g76517912_ _g76547915_))
                 (_g76517912_ _g76547915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g76517912_ _g76547915_))
                                             (_g76517912_ _g76547915_))
                                         (_g76517912_ _g76547915_))))
                                 (_g76517912_ _g76547915_))))
                         (_g76517912_ _g76547915_))
                     (_g76517912_ _g76547915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_ _g76547915_))
                                                 (_g76517912_ _g76547915_))
                                             (_g76517912_ _g76547915_))))
                                     (_g76517912_ _g76547915_))))
                             (_g76517912_ _g76547915_))
                         (_g76517912_ _g76547915_))))
                 (_g76517912_ _g76547915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_ _g76547915_))
                                                 (_g76517912_ _g76547915_))))
                                         (_g76517912_ _g76547915_))))
                                 (_g76517912_ _g76547915_))))
                         (_g76517912_ _g76547915_)))))
              (_g76508092_ _stx7649_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self7625_)
      (let ((_self76267632_ _self7625_))
        (let ((_E76287636_
               (lambda () (error '"No clause matching" _self76267632_))))
          (let ((_K76297641_
                 (lambda (_alias-id7639_)
                   (cons '@alias (cons _alias-id7639_ '())))))
            (if (struct-instance? gxc#!alias::t _self76267632_)
                (let ((_e76307644_ (##vector-ref _self76267632_ '1)))
                  (let ((_alias-id7647_ _e76307644_))
                    (_K76297641_ _alias-id7647_)))
                (_E76287636_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self7569_)
      (let ((_self75707581_ _self7569_))
        (let ((_E75727585_
               (lambda () (error '"No clause matching" _self75707581_))))
          (let ((_K75737594_
                 (lambda (_plist7588_
                          _ctor7589_
                          _fields7590_
                          _super7591_
                          _type-id7592_)
                   (cons '@struct-type
                         (cons _type-id7592_
                               (cons _super7591_
                                     (cons _fields7590_
                                           (cons _ctor7589_
                                                 (cons _plist7588_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self75707581_)
                (let ((_e75747597_ (##vector-ref _self75707581_ '1)))
                  (let ((_type-id7600_ _e75747597_))
                    (let ((_e75757602_ (##vector-ref _self75707581_ '2)))
                      (let ((_super7605_ _e75757602_))
                        (let ((_e75767607_ (##vector-ref _self75707581_ '3)))
                          (let ((_fields7610_ _e75767607_))
                            (let ((_e75777612_
                                   (##vector-ref _self75707581_ '4)))
                              (let ((_e75787615_
                                     (##vector-ref _self75707581_ '5)))
                                (let ((_ctor7618_ _e75787615_))
                                  (let ((_e75797620_
                                         (##vector-ref _self75707581_ '6)))
                                    (let ((_plist7623_ _e75797620_))
                                      (_K75737594_
                                       _plist7623_
                                       _ctor7618_
                                       _fields7610_
                                       _super7605_
                                       _type-id7600_))))))))))))
                (_E75727585_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self7545_)
      (let ((_self75467552_ _self7545_))
        (let ((_E75487556_
               (lambda () (error '"No clause matching" _self75467552_))))
          (let ((_K75497561_
                 (lambda (_struct-t7559_)
                   (cons '@struct-pred (cons _struct-t7559_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self75467552_)
                (let ((_e75507564_ (##vector-ref _self75467552_ '1)))
                  (let ((_struct-t7567_ _e75507564_))
                    (_K75497561_ _struct-t7567_)))
                (_E75487556_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self7521_)
      (let ((_self75227528_ _self7521_))
        (let ((_E75247532_
               (lambda () (error '"No clause matching" _self75227528_))))
          (let ((_K75257537_
                 (lambda (_struct-t7535_)
                   (cons '@struct-cons (cons _struct-t7535_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self75227528_)
                (let ((_e75267540_ (##vector-ref _self75227528_ '1)))
                  (let ((_struct-t7543_ _e75267540_))
                    (_K75257537_ _struct-t7543_)))
                (_E75247532_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self7490_)
      (let ((_self74917498_ _self7490_))
        (let ((_E74937502_
               (lambda () (error '"No clause matching" _self74917498_))))
          (let ((_K74947508_
                 (lambda (_off7505_ _struct-t7506_)
                   (cons '@struct-getf
                         (cons _struct-t7506_ (cons _off7505_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self74917498_)
                (let ((_e74957511_ (##vector-ref _self74917498_ '1)))
                  (let ((_struct-t7514_ _e74957511_))
                    (let ((_e74967516_ (##vector-ref _self74917498_ '2)))
                      (let ((_off7519_ _e74967516_))
                        (_K74947508_ _off7519_ _struct-t7514_)))))
                (_E74937502_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self7459_)
      (let ((_self74607467_ _self7459_))
        (let ((_E74627471_
               (lambda () (error '"No clause matching" _self74607467_))))
          (let ((_K74637477_
                 (lambda (_off7474_ _struct-t7475_)
                   (cons '@struct-setf
                         (cons _struct-t7475_ (cons _off7474_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self74607467_)
                (let ((_e74647480_ (##vector-ref _self74607467_ '1)))
                  (let ((_struct-t7483_ _e74647480_))
                    (let ((_e74657485_ (##vector-ref _self74607467_ '2)))
                      (let ((_off7488_ _e74657485_))
                        (_K74637477_ _off7488_ _struct-t7483_)))))
                (_E74627471_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self7424_)
      (let ((_self74257433_ _self7424_))
        (let ((_E74277437_
               (lambda () (error '"No clause matching" _self74257433_))))
          (let ((_K74287443_
                 (lambda (_dispatch7440_ _arity7441_)
                   (cons '@lambda
                         (cons _arity7441_ (cons _dispatch7440_ '()))))))
            (if (struct-instance? gxc#!lambda::t _self74257433_)
                (let ((_e74297446_ (##vector-ref _self74257433_ '1)))
                  (let ((_e74307449_ (##vector-ref _self74257433_ '2)))
                    (let ((_arity7452_ _e74307449_))
                      (let ((_e74317454_ (##vector-ref _self74257433_ '3)))
                        (let ((_dispatch7457_ _e74317454_))
                          (_K74287443_ _dispatch7457_ _arity7452_))))))
                (_E74277437_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self7357_)
      (let ((_clause-e7359_
             (lambda (_clause7389_)
               (let ((_clause73907398_ _clause7389_))
                 (let ((_E73927402_
                        (lambda ()
                          (error '"No clause matching" _clause73907398_))))
                   (let ((_K73937408_
                          (lambda (_dispatch7405_ _arity7406_)
                            (cons _arity7406_ (cons _dispatch7405_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause73907398_)
                         (let ((_e73947411_
                                (##vector-ref _clause73907398_ '1)))
                           (let ((_e73957414_
                                  (##vector-ref _clause73907398_ '2)))
                             (let ((_arity7417_ _e73957414_))
                               (let ((_e73967419_
                                      (##vector-ref _clause73907398_ '3)))
                                 (let ((_dispatch7422_ _e73967419_))
                                   (_K73937408_
                                    _dispatch7422_
                                    _arity7417_))))))
                         (_E73927402_))))))))
        (let ((_self73607367_ _self7357_))
          (let ((_E73627371_
                 (lambda () (error '"No clause matching" _self73607367_))))
            (let ((_K73637378_
                   (lambda (_clauses7374_)
                     (let ((_clauses7376_ (map _clause-e7359_ _clauses7374_)))
                       (cons '@case-lambda _clauses7376_)))))
              (if (struct-instance? gxc#!case-lambda::t _self73607367_)
                  (let ((_e73647381_ (##vector-ref _self73607367_ '1)))
                    (let ((_e73657384_ (##vector-ref _self73607367_ '2)))
                      (let ((_clauses7387_ _e73657384_))
                        (_K73637378_ _clauses7387_))))
                  (_E73627371_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx7352_)
      (let ((_$e7354_ (gx#resolve-identifier__0 _stx7352_)))
        (if _$e7354_
            (##structure-ref _$e7354_ '1 gx#binding::t '#f)
            (gx#stx-e _stx7352_))))))
