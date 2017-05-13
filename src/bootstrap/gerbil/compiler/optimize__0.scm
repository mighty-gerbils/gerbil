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
    (lambda _$args17434_
      (apply make-struct-instance gxc#optimizer-info::t _$args17434_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self17432_)
      (direct-struct-instance-init!
       _self17432_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj17436 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj17436) __obj17436))))))
  (define gxc#optimize!
    (lambda (_ctx17426_)
      (begin
        (gxc#optimizer-load-prelude-ssxi _ctx17426_)
        (gxc#optimizer-load-ssxi-deps _ctx17426_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx17426_ '1 gx#expander-context::t '#f)
         '#t)
        (call-with-parameters
         (lambda ()
           (let ((_code17429_
                  (gxc#optimize-source
                   (##structure-ref _ctx17426_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx17426_
              _code17429_
              '11
              gx#module-context::t
              '#f)))
         gxc#current-compile-mutators
         (make-hash-table-eq)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx17387_)
      ((letrec ((_lp17389_
                 (lambda (_rest17391_)
                   (let ((_rest1739217400_ _rest17391_))
                     (let ((_E1739517404_
                            (lambda ()
                              (error '"No clause matching" _rest1739217400_))))
                       (let ((_else1739417408_ (lambda () '#!void)))
                         (let ((_K1739617414_
                                (lambda (_rest17411_ _hd17412_)
                                  (if (##structure-instance-of?
                                       _hd17412_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd17412_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx17387_)
                                              (_lp17389_
                                               (##structure-ref
                                                _hd17412_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd17412_)))
                                        (_lp17389_ _rest17411_))
                                      (if (##structure-direct-instance-of?
                                           _hd17412_
                                           'gx#module-import::t)
                                          (_lp17389_
                                           (cons (##structure-ref
                                                  _hd17412_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest17411_))
                                          (if (##structure-direct-instance-of?
                                               _hd17412_
                                               'gx#module-export::t)
                                              (_lp17389_
                                               (cons (##structure-ref
                                                      _hd17412_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest17411_))
                                              (if (##structure-direct-instance-of?
                                                   _hd17412_
                                                   'gx#import-set::t)
                                                  (_lp17389_
                                                   (cons (##structure-ref
                                                          _hd17412_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest17411_))
                                                  (error '"Unexpected module import"
                                                         _hd17412_))))))))
                           (if (##pair? _rest1739217400_)
                               (let ((_hd1739717417_ (##car _rest1739217400_))
                                     (_tl1739817419_ (##cdr _rest1739217400_)))
                                 (let ((_hd17422_ _hd1739717417_))
                                   (let ((_rest17424_ _tl1739817419_))
                                     (_K1739617414_ _rest17424_ _hd17422_))))
                               (_else1739417408_)))))))))
         _lp17389_)
       (##structure-ref _ctx17387_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx17382_)
      (let ((_$e17384_ (gx#core-context-prelude__opt-lambda10896 _ctx17382_)))
        (if _$e17384_ (gxc#optimizer-load-ssxi _$e17384_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx17362_)
      (if (if (##structure-instance-of? _ctx17362_ 'gx#module-context::t)
              (list? (##structure-ref _ctx17362_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht17364_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id17366_
                   (##structure-ref _ctx17362_ '1 gx#expander-context::t '#f)))
              (let ((_mod17368_ (table-ref _ht17364_ _id17366_ '#f)))
                (let ()
                  (let ((_$e17371_ _mod17368_))
                    (if _$e17371_
                        _$e17371_
                        (let ((_mod17374_
                               (gxc#optimizer-import-ssxi _ctx17362_)))
                          (let ((_val17379_
                                 (let ((_$e17376_ _mod17374_))
                                   (if _$e17376_ _$e17376_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht17364_ _id17366_ _val17379_)
                                _val17379_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx17339_)
      (let ((_catch-e17341_
             (lambda (_exn17360_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx17339_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn17360_))
                     '#!void)
                 '#f))))
        (let ((_import-e17342_
               (lambda ()
                 (let ((_str-id17345_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx17339_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path17353_
                          (let ((_odir1734617348_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1734617348_
                                (let ((_odir17351_ _odir1734617348_))
                                  (path-expand
                                   (string-append _str-id17345_ '".ss")
                                   _odir17351_))
                                '#f))))
                     (let ((_library-path17355_
                            (string->symbol
                             (string-append '":" _str-id17345_))))
                       (let ((_ssxi-path17357_
                              (if (if _artefact-path17353_
                                      (file-exists? _artefact-path17353_)
                                      '#f)
                                  _artefact-path17353_
                                  _library-path17355_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path17357_)
                             (gx#import-module__opt-lambda10931
                              _ssxi-path17357_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx17339_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e17341_ _import-e17342_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args17336_
      (apply make-struct-instance gxc#!type::t _$args17336_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args17333_
      (apply make-struct-instance gxc#!alias::t _$args17333_)))
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
    (lambda _$args17330_
      (apply make-struct-instance gxc#!struct-type::t _$args17330_)))
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
    (lambda _$args17327_
      (apply make-struct-instance gxc#!procedure::t _$args17327_)))
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
    (lambda _$args17324_
      (apply make-struct-instance gxc#!struct-pred::t _$args17324_)))
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
    (lambda _$args17321_
      (apply make-struct-instance gxc#!struct-cons::t _$args17321_)))
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
    (lambda _$args17318_
      (apply make-struct-instance gxc#!struct-getf::t _$args17318_)))
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
    (lambda _$args17315_
      (apply make-struct-instance gxc#!struct-setf::t _$args17315_)))
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
    (lambda _$args17312_
      (apply make-struct-instance gxc#!lambda::t _$args17312_)))
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
    (lambda _$args17309_
      (apply make-struct-instance gxc#!case-lambda::t _$args17309_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self17301_
             _id17302_
             _super17303_
             _fields17304_
             _xfields17305_
             _ctor17306_
             _plist17307_)
      (direct-struct-instance-init!
       _self17301_
       _id17302_
       _super17303_
       _fields17304_
       _xfields17305_
       _ctor17306_
       _plist17307_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda17265
      (lambda (_self17267_
               _id17268_
               _arity17269_
               _dispatch17270_
               _inline17271_
               _typedecl17272_)
        (direct-struct-instance-init!
         _self17267_
         _id17268_
         _arity17269_
         _dispatch17270_
         _inline17271_
         _typedecl17272_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self17277_ _id17278_ _arity17279_ _dispatch17280_)
          (let ((_inline17282_ '#f))
            (let ((_typedecl17284_ '#f))
              (direct-struct-instance-init!
               _self17277_
               _id17278_
               _arity17279_
               _dispatch17280_
               _inline17282_
               _typedecl17284_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self17286_
                 _id17287_
                 _arity17288_
                 _dispatch17289_
                 _inline17290_)
          (let ((_typedecl17292_ '#f))
            (direct-struct-instance-init!
             _self17286_
             _id17287_
             _arity17288_
             _dispatch17289_
             _inline17290_
             _typedecl17292_))))
      (define gxc#!lambda:::init!
        (lambda _g17442_
          (let ((_g17441_ (length _g17442_)))
            (cond ((fx= _g17441_ 4) (apply gxc#!lambda:::init!__0 _g17442_))
                  ((fx= _g17441_ 5) (apply gxc#!lambda:::init!__1 _g17442_))
                  ((fx= _g17441_ 6)
                   (apply direct-struct-instance-init! _g17442_))
                  (else (error "No clause matching arguments" _g17442_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type17259_)
      (let ((_$e17261_
             (##structure-ref _type17259_ '7 gxc#!struct-type::t '#f)))
        (if _$e17261_
            (values _$e17261_)
            (let ((_vtab17264_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type17259_
                 _vtab17264_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab17264_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type17250_ _method17251_)
      (let ((_vtab1725217254_
             (##structure-ref _type17250_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1725217254_
            (let ((_vtab17257_ _vtab1725217254_))
              (table-ref _vtab17257_ _method17251_ '#f))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym17247_ _type17248_)
      (begin
        (if (##structure-instance-of? _type17248_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym17247_ _type17248_))
        (gxc#verbose
         '"declare-type "
         _sym17247_
         '" "
         (##vector->list _type17248_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym17247_
         _type17248_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda17222
      (lambda (_type-t17224_ _method17225_ _sym17226_ _rebind?17227_)
        (let ((_type17229_ (gxc#optimizer-resolve-type _type-t17224_)))
          (if (##structure-instance-of? _type17229_ 'gxc#!struct-type::t)
              (let ((_vtab17231_ (gxc#!struct-type-vtab _type17229_)))
                (if _rebind?17227_
                    (if (hash-key? _vtab17231_ _method17225_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t17224_
                         '" "
                         _method17225_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t17224_
                         '" "
                         _method17225_))
                    (if (hash-key? _vtab17231_ _method17225_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t17224_
                           '" "
                           _method17225_
                           '" => "
                           _sym17226_)
                          (hash-put! _vtab17231_ _method17225_ _sym17226_)))))
              (if (not _type17229_)
                  (gxc#verbose '"declare-method: unknown type " _type-t17224_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t17224_
                         _type17229_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t17236_ _method17237_ _sym17238_)
          (let ((_rebind?17240_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda17222
             _type-t17236_
             _method17237_
             _sym17238_
             _rebind?17240_))))
      (define gxc#optimizer-declare-method!
        (lambda _g17444_
          (let ((_g17443_ (length _g17444_)))
            (cond ((fx= _g17443_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g17444_))
                  ((fx= _g17443_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda17222
                          _g17444_))
                  (else (error "No clause matching arguments" _g17444_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym17221_)
      (table-ref
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym17221_
       '#f)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym17213_)
      (let ((_type1721417216_ (gxc#optimizer-lookup-type _sym17213_)))
        (if _type1721417216_
            (let ((_type17219_ _type1721417216_))
              (if (##structure-instance-of? _type17219_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type17219_ '1 gxc#!type::t '#f))
                  _type17219_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t17208_ _method17209_)
      (let ((_type17211_ (gxc#optimizer-resolve-type _type-t17208_)))
        (if (##structure-instance-of? _type17211_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type17211_ _method17209_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx17204_)
      (begin
        (gxc#apply-collect-mutators _stx17204_)
        (let ((_stx17206_ (gxc#apply-lift-top-lambdas _stx17204_)))
          (begin
            (gxc#apply-collect-type-info _stx17206_)
            (gxc#apply-optimize-call _stx17206_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl17201_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl17201_ '%#lambda false)
           (hash-put! _tbl17201_ '%#case-lambda false)
           (hash-put! _tbl17201_ '%#let-values false)
           (hash-put! _tbl17201_ '%#letrec-values false)
           (hash-put! _tbl17201_ '%#letrec*-values false)
           (hash-put! _tbl17201_ '%#quote false)
           (hash-put! _tbl17201_ '%#quote-syntax false)
           (hash-put! _tbl17201_ '%#call false)
           (hash-put! _tbl17201_ '%#if false)
           (hash-put! _tbl17201_ '%#ref false)
           (hash-put! _tbl17201_ '%#set! false)
           (hash-put! _tbl17201_ '%#struct-instance? false)
           (hash-put! _tbl17201_ '%#struct-direct-instance? false)
           (hash-put! _tbl17201_ '%#struct-ref false)
           (hash-put! _tbl17201_ '%#struct-set! false)
           _tbl17201_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17197_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl17197_ '%#begin false)
           (hash-put! _tbl17197_ '%#begin-syntax false)
           (hash-put! _tbl17197_ '%#begin-foreign false)
           (hash-put! _tbl17197_ '%#module false)
           (hash-put! _tbl17197_ '%#import false)
           (hash-put! _tbl17197_ '%#export false)
           (hash-put! _tbl17197_ '%#provide false)
           (hash-put! _tbl17197_ '%#extern false)
           (hash-put! _tbl17197_ '%#define-values false)
           (hash-put! _tbl17197_ '%#define-syntax false)
           (hash-put! _tbl17197_ '%#define-alias false)
           (hash-put! _tbl17197_ '%#declare false)
           _tbl17197_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl17193_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17193_ (force gxc#&false-special-form))
           (hash-copy! _tbl17193_ (force gxc#&false-expression))
           _tbl17193_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl17189_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl17189_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl17189_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl17189_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl17189_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl17189_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl17189_ '%#quote gxc#xform-identity)
           (hash-put! _tbl17189_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl17189_ '%#call gxc#xform-identity)
           (hash-put! _tbl17189_ '%#if gxc#xform-identity)
           (hash-put! _tbl17189_ '%#ref gxc#xform-identity)
           (hash-put! _tbl17189_ '%#set! gxc#xform-identity)
           (hash-put! _tbl17189_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl17189_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl17189_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl17189_ '%#struct-set! gxc#xform-identity)
           _tbl17189_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17185_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl17185_ '%#begin gxc#xform-identity)
           (hash-put! _tbl17185_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl17185_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl17185_ '%#module gxc#xform-identity)
           (hash-put! _tbl17185_ '%#import gxc#xform-identity)
           (hash-put! _tbl17185_ '%#export gxc#xform-identity)
           (hash-put! _tbl17185_ '%#provide gxc#xform-identity)
           (hash-put! _tbl17185_ '%#extern gxc#xform-identity)
           (hash-put! _tbl17185_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl17185_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl17185_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl17185_ '%#declare gxc#xform-identity)
           _tbl17185_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl17181_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17181_ (force gxc#&identity-special-form))
           (hash-copy! _tbl17181_ (force gxc#&identity-expression))
           _tbl17181_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl17177_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl17177_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl17177_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl17177_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl17177_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl17177_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl17177_ '%#quote gxc#xform-identity)
           (hash-put! _tbl17177_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl17177_ '%#call gxc#xform-call%)
           (hash-put! _tbl17177_ '%#if gxc#xform-if%)
           (hash-put! _tbl17177_ '%#ref gxc#xform-identity)
           (hash-put! _tbl17177_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl17177_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl17177_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl17177_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl17177_ '%#struct-set! gxc#xform-struct-op%)
           _tbl17177_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl17173_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17173_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl17173_ (force gxc#&identity))
           (hash-put! _tbl17173_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl17173_ '%#module gxc#xform-module%)
           (hash-put! _tbl17173_ '%#define-values gxc#xform-define-values%)
           _tbl17173_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl17169_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17169_ (force gxc#&void))
           (hash-put! _tbl17169_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl17169_ '%#module gxc#collect-module%)
           (hash-put! _tbl17169_ '%#lambda gxc#collect-body-lambda%)
           (hash-put! _tbl17169_ '%#case-lambda gxc#collect-body-case-lambda%)
           (hash-put! _tbl17169_ '%#let-values gxc#collect-body-let-values%)
           (hash-put! _tbl17169_ '%#letrec-values gxc#collect-body-let-values%)
           (hash-put!
            _tbl17169_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (hash-put! _tbl17169_ '%#call gxc#collect-operands)
           (hash-put! _tbl17169_ '%#if gxc#collect-operands)
           (hash-put! _tbl17169_ '%#set! gxc#collect-mutators-setq%)
           (hash-put! _tbl17169_ '%#struct-instance? gxc#collect-operands)
           (hash-put!
            _tbl17169_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (hash-put! _tbl17169_ '%#struct-ref gxc#collect-operands)
           (hash-put! _tbl17169_ '%#struct-set! gxc#collect-operands)
           _tbl17169_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx17162_ . _args17164_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17162_ _args17164_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl17159_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17159_ (force gxc#&identity))
           (hash-put! _tbl17159_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl17159_ '%#module gxc#xform-module%)
           (hash-put!
            _tbl17159_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl17159_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx17152_ . _args17154_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17152_ _args17154_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl17149_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17149_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl17149_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl17149_ '%#ref gxc#expression-subst-ref%)
           _tbl17149_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx17142_ . _args17144_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17142_ _args17144_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl17139_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17139_ (force gxc#&void))
           (hash-put! _tbl17139_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl17139_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl17139_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl17139_ '%#call gxc#collect-type-call%)
           _tbl17139_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx17132_ . _args17134_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17132_ _args17134_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl17129_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17129_ (force gxc#&false))
           (hash-put! _tbl17129_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl17129_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl17129_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl17129_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl17129_ '%#ref gxc#basic-expression-type-ref%)
           _tbl17129_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx17122_ . _args17124_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17122_ _args17124_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl17119_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17119_ (force gxc#&basic-xform))
           (hash-put! _tbl17119_ '%#call gxc#optimize-call%)
           _tbl17119_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx17112_ . _args17114_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17112_ _args17114_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl17109_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17109_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl17109_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl17109_ '%#module gxc#generate-ssxi-module%)
           (hash-put!
            _tbl17109_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl17109_ '%#call gxc#generate-ssxi-call%)
           _tbl17109_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx17102_ . _args17104_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17102_ _args17104_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx17099_ . _args17100_) _stx17099_))
  (define gxc#xform-wrap-source
    (lambda (_stx17096_ _src-stx17097_)
      (gx#stx-wrap-source _stx17096_ (gx#stx-source _src-stx17097_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args17090_)
      (lambda (_g1709117093_)
        (apply gxc#compile-e _g1709117093_ _args17090_))))
  (define gxc#xform-begin%
    (lambda (_stx17049_ . _args17050_)
      (let ((_g1705217062_
             (lambda (_g1705317059_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1705317059_))))
        (let ((_g1705117087_
               (lambda (_g1705317065_)
                 (if (gx#stx-pair? _g1705317065_)
                     (let ((_e1705517067_ (gx#stx-e _g1705317065_)))
                       (let ((_hd1705617070_ (##car _e1705517067_))
                             (_tl1705717072_ (##cdr _e1705517067_)))
                         ((lambda (_L17075_)
                            (let ((_forms17085_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args17050_)
                                    _L17075_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms17085_)
                               _stx17049_)))
                          _tl1705717072_)))
                     (_g1705217062_ _g1705317065_)))))
          (_g1705117087_ _stx17049_)))))
  (define gxc#xform-module%
    (lambda (_stx16986_ . _args16987_)
      (let ((_g1698917003_
             (lambda (_g1699017000_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1699017000_))))
        (let ((_g1698817046_
               (lambda (_g1699017006_)
                 (if (gx#stx-pair? _g1699017006_)
                     (let ((_e1699317008_ (gx#stx-e _g1699017006_)))
                       (let ((_hd1699417011_ (##car _e1699317008_))
                             (_tl1699517013_ (##cdr _e1699317008_)))
                         (if (gx#stx-pair? _tl1699517013_)
                             (let ((_e1699617016_ (gx#stx-e _tl1699517013_)))
                               (let ((_hd1699717019_ (##car _e1699617016_))
                                     (_tl1699817021_ (##cdr _e1699617016_)))
                                 ((lambda (_L17024_ _L17025_)
                                    (let ((_ctx17038_
                                           (gx#syntax-local-e__0 _L17025_)))
                                      (let ((_code17040_
                                             (##structure-ref
                                              _ctx17038_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code17043_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code17040_
                                                         _args16987_))
                                                gx#current-expander-context
                                                _ctx17038_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx17038_
                                               _code17043_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L17025_
                                                           (cons _code17043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16986_)))))))
                                  _tl1699817021_
                                  _hd1699717019_)))
                             (_g1698917003_ _g1699017006_))))
                     (_g1698917003_ _g1699017006_)))))
          (_g1698817046_ _stx16986_)))))
  (define gxc#xform-define-values%
    (lambda (_stx16916_ . _args16917_)
      (let ((_g1691916936_
             (lambda (_g1692016933_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1692016933_))))
        (let ((_g1691816983_
               (lambda (_g1692016939_)
                 (if (gx#stx-pair? _g1692016939_)
                     (let ((_e1692316941_ (gx#stx-e _g1692016939_)))
                       (let ((_hd1692416944_ (##car _e1692316941_))
                             (_tl1692516946_ (##cdr _e1692316941_)))
                         (if (gx#stx-pair? _tl1692516946_)
                             (let ((_e1692616949_ (gx#stx-e _tl1692516946_)))
                               (let ((_hd1692716952_ (##car _e1692616949_))
                                     (_tl1692816954_ (##cdr _e1692616949_)))
                                 (if (gx#stx-pair? _tl1692816954_)
                                     (let ((_e1692916957_
                                            (gx#stx-e _tl1692816954_)))
                                       (let ((_hd1693016960_
                                              (##car _e1692916957_))
                                             (_tl1693116962_
                                              (##cdr _e1692916957_)))
                                         (if (gx#stx-null? _tl1693116962_)
                                             ((lambda (_L16965_ _L16966_)
                                                (let ((_expr16981_
                                                       (apply gxc#compile-e
                                                              _L16965_
                                                              _args16917_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16966_
                                                               (cons _expr16981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16916_)))
                                              _hd1693016960_
                                              _hd1692716952_)
                                             (_g1691916936_ _g1692016939_))))
                                     (_g1691916936_ _g1692016939_))))
                             (_g1691916936_ _g1692016939_))))
                     (_g1691916936_ _g1692016939_)))))
          (_g1691816983_ _stx16916_)))))
  (define gxc#xform-lambda%
    (lambda (_stx16859_ . _args16860_)
      (let ((_g1686216876_
             (lambda (_g1686316873_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1686316873_))))
        (let ((_g1686116913_
               (lambda (_g1686316879_)
                 (if (gx#stx-pair? _g1686316879_)
                     (let ((_e1686616881_ (gx#stx-e _g1686316879_)))
                       (let ((_hd1686716884_ (##car _e1686616881_))
                             (_tl1686816886_ (##cdr _e1686616881_)))
                         (if (gx#stx-pair? _tl1686816886_)
                             (let ((_e1686916889_ (gx#stx-e _tl1686816886_)))
                               (let ((_hd1687016892_ (##car _e1686916889_))
                                     (_tl1687116894_ (##cdr _e1686916889_)))
                                 ((lambda (_L16897_ _L16898_)
                                    (let ((_body16911_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16860_)
                                            _L16897_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L16898_ _body16911_))
                                       _stx16859_)))
                                  _tl1687116894_
                                  _hd1687016892_)))
                             (_g1686216876_ _g1686316879_))))
                     (_g1686216876_ _g1686316879_)))))
          (_g1686116913_ _stx16859_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16772_ . _args16773_)
      (let ((_clause-e16775_
             (lambda (_clause16816_)
               (let ((_g1681816829_
                      (lambda (_g1681916826_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1681916826_))))
                 (let ((_g1681716856_
                        (lambda (_g1681916832_)
                          (if (gx#stx-pair? _g1681916832_)
                              (let ((_e1682216834_ (gx#stx-e _g1681916832_)))
                                (let ((_hd1682316837_ (##car _e1682216834_))
                                      (_tl1682416839_ (##cdr _e1682216834_)))
                                  ((lambda (_L16842_ _L16843_)
                                     (let ((_body16854_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args16773_)
                                             _L16842_)))
                                       (cons _L16843_ _body16854_)))
                                   _tl1682416839_
                                   _hd1682316837_)))
                              (_g1681816829_ _g1681916832_)))))
                   (_g1681716856_ _clause16816_))))))
        (let ((_g1677716787_
               (lambda (_g1677816784_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1677816784_))))
          (let ((_g1677616813_
                 (lambda (_g1677816790_)
                   (if (gx#stx-pair? _g1677816790_)
                       (let ((_e1678016792_ (gx#stx-e _g1677816790_)))
                         (let ((_hd1678116795_ (##car _e1678016792_))
                               (_tl1678216797_ (##cdr _e1678016792_)))
                           ((lambda (_L16800_)
                              (let ((_clauses16811_
                                     (gx#stx-map1 _clause-e16775_ _L16800_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses16811_)
                                 _stx16772_)))
                            _tl1678216797_)))
                       (_g1677716787_ _g1677816790_)))))
            (_g1677616813_ _stx16772_))))))
  (define gxc#xform-let-values%
    (lambda (_stx16566_ . _args16567_)
      (let ((_g1656916602_
             (lambda (_g1657016599_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1657016599_))))
        (let ((_g1656816769_
               (lambda (_g1657016605_)
                 (if (gx#stx-pair? _g1657016605_)
                     (let ((_e1657516607_ (gx#stx-e _g1657016605_)))
                       (let ((_hd1657616610_ (##car _e1657516607_))
                             (_tl1657716612_ (##cdr _e1657516607_)))
                         (if (gx#stx-pair? _tl1657716612_)
                             (let ((_e1657816615_ (gx#stx-e _tl1657716612_)))
                               (let ((_hd1657916618_ (##car _e1657816615_))
                                     (_tl1658016620_ (##cdr _e1657816615_)))
                                 (if (gx#stx-pair/null? _hd1657916618_)
                                     (if (fx>= (gx#stx-length _hd1657916618_)
                                               '0)
                                         (let ((_g17445_
                                                (gx#syntax-split-splice
                                                 _hd1657916618_
                                                 '0)))
                                           (begin
                                             (let ((_g17446_
                                                    (values-count _g17445_)))
                                               (if (not (fx= _g17446_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17446_)))
                                             (let ((_target1658116623_
                                                    (values-ref _g17445_ 0))
                                                   (_tl1658316625_
                                                    (values-ref _g17445_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1658316625_)
                                                   (letrec ((_loop1658416628_
                                                             (lambda (_hd1658216631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1658816633_
                              _hd1658916635_)
                       (if (gx#stx-pair? _hd1658216631_)
                           (let ((_e1658516638_ (gx#stx-e _hd1658216631_)))
                             (let ((_lp-hd1658616641_ (##car _e1658516638_))
                                   (_lp-tl1658716643_ (##cdr _e1658516638_)))
                               (if (gx#stx-pair? _lp-hd1658616641_)
                                   (let ((_e1659216646_
                                          (gx#stx-e _lp-hd1658616641_)))
                                     (let ((_hd1659316649_
                                            (##car _e1659216646_))
                                           (_tl1659416651_
                                            (##cdr _e1659216646_)))
                                       (if (gx#stx-pair? _tl1659416651_)
                                           (let ((_e1659516654_
                                                  (gx#stx-e _tl1659416651_)))
                                             (let ((_hd1659616657_
                                                    (##car _e1659516654_))
                                                   (_tl1659716659_
                                                    (##cdr _e1659516654_)))
                                               (if (gx#stx-null?
                                                    _tl1659716659_)
                                                   (_loop1658416628_
                                                    _lp-tl1658716643_
                                                    (cons _hd1659616657_
                                                          _expr1658816633_)
                                                    (cons _hd1659316649_
                                                          _hd1658916635_))
                                                   (_g1656916602_
                                                    _g1657016605_))))
                                           (_g1656916602_ _g1657016605_))))
                                   (_g1656916602_ _g1657016605_))))
                           (let ((_expr1659016662_ (reverse _expr1658816633_))
                                 (_hd1659116664_ (reverse _hd1658916635_)))
                             ((lambda (_L16667_ _L16668_ _L16669_ _L16670_)
                                (let ((_g1668916705_
                                       (lambda (_g1669016702_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1669016702_))))
                                  (let ((_g1668816759_
                                         (lambda (_g1669016708_)
                                           (if (gx#stx-pair/null?
                                                _g1669016708_)
                                               (if (fx>= (gx#stx-length
                                                          _g1669016708_)
                                                         '0)
                                                   (let ((_g17447_
                                                          (gx#syntax-split-splice
                                                           _g1669016708_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17448_
                                                              (values-count
                                                               _g17447_)))
                                                         (if (not (fx= _g17448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g17448_)))
               (let ((_target1669216710_ (values-ref _g17447_ 0))
                     (_tl1669416712_ (values-ref _g17447_ 1)))
                 (if (gx#stx-null? _tl1669416712_)
                     (letrec ((_loop1669516715_
                               (lambda (_hd1669316718_ _expr1669916720_)
                                 (if (gx#stx-pair? _hd1669316718_)
                                     (let ((_e1669616723_
                                            (gx#syntax-e _hd1669316718_)))
                                       (let ((_lp-hd1669716726_
                                              (##car _e1669616723_))
                                             (_lp-tl1669816728_
                                              (##cdr _e1669616723_)))
                                         (_loop1669516715_
                                          _lp-tl1669816728_
                                          (cons _lp-hd1669716726_
                                                _expr1669916720_))))
                                     (let ((_expr1670016731_
                                            (reverse _expr1669916720_)))
                                       ((lambda (_L16734_)
                                          (let ()
                                            (let ((_body16747_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args16567_)
                                                    _L16667_)))
                                              (gxc#xform-wrap-source
                                               (cons _L16670_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L16734_
                                                              _L16669_)
                                                             (foldr (lambda (_g1674816752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1674916754_
                                     _g1675016756_)
                              (cons (cons _g1674916754_
                                          (cons _g1674816752_ '()))
                                    _g1675016756_))
                            '()
                            _L16734_
                            _L16669_))
                   _body16747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16566_))))
                                        _expr1670016731_))))))
                       (_loop1669516715_ _target1669216710_ '()))
                     (_g1668916705_ _g1669016708_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1668916705_
                                                    _g1669016708_))
                                               (_g1668916705_
                                                _g1669016708_)))))
                                    (_g1668816759_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args16567_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1676116764_
                                                        _g1676216766_)
                                                 (cons _g1676116764_
                                                       _g1676216766_))
                                               '()
                                               _L16668_)))))))
                              _tl1658016620_
                              _expr1659016662_
                              _hd1659116664_
                              _hd1657616610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1658416628_
                                                      _target1658116623_
                                                      '()
                                                      '()))
                                                   (_g1656916602_
                                                    _g1657016605_)))))
                                         (_g1656916602_ _g1657016605_))
                                     (_g1656916602_ _g1657016605_))))
                             (_g1656916602_ _g1657016605_))))
                     (_g1656916602_ _g1657016605_)))))
          (_g1656816769_ _stx16566_)))))
  (define gxc#xform-call%
    (lambda (_stx16508_ . _args16509_)
      (let ((_g1651116525_
             (lambda (_g1651216522_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1651216522_))))
        (let ((_g1651016563_
               (lambda (_g1651216528_)
                 (if (gx#stx-pair? _g1651216528_)
                     (let ((_e1651516530_ (gx#stx-e _g1651216528_)))
                       (let ((_hd1651616533_ (##car _e1651516530_))
                             (_tl1651716535_ (##cdr _e1651516530_)))
                         (if (gx#stx-pair? _tl1651716535_)
                             (let ((_e1651816538_ (gx#stx-e _tl1651716535_)))
                               (let ((_hd1651916541_ (##car _e1651816538_))
                                     (_tl1652016543_ (##cdr _e1651816538_)))
                                 ((lambda (_L16546_ _L16547_)
                                    (let ((_rator16560_
                                           (apply gxc#compile-e
                                                  _L16547_
                                                  _args16509_))
                                          (_rands16561_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args16509_)
                                            _L16546_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator16560_ _rands16561_))
                                       _stx16508_)))
                                  _tl1652016543_
                                  _hd1651916541_)))
                             (_g1651116525_ _g1651216528_))))
                     (_g1651116525_ _g1651216528_)))))
          (_g1651016563_ _stx16508_)))))
  (define gxc#xform-if%
    (lambda (_stx16467_ . _args16468_)
      (let ((_g1647016480_
             (lambda (_g1647116477_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1647116477_))))
        (let ((_g1646916505_
               (lambda (_g1647116483_)
                 (if (gx#stx-pair? _g1647116483_)
                     (let ((_e1647316485_ (gx#stx-e _g1647116483_)))
                       (let ((_hd1647416488_ (##car _e1647316485_))
                             (_tl1647516490_ (##cdr _e1647316485_)))
                         ((lambda (_L16493_)
                            (let ((_forms16503_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16468_)
                                    _L16493_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms16503_)
                               _stx16467_)))
                          _tl1647516490_)))
                     (_g1647016480_ _g1647116483_)))))
          (_g1646916505_ _stx16467_)))))
  (define gxc#xform-setq%
    (lambda (_stx16397_ . _args16398_)
      (let ((_g1640016417_
             (lambda (_g1640116414_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1640116414_))))
        (let ((_g1639916464_
               (lambda (_g1640116420_)
                 (if (gx#stx-pair? _g1640116420_)
                     (let ((_e1640416422_ (gx#stx-e _g1640116420_)))
                       (let ((_hd1640516425_ (##car _e1640416422_))
                             (_tl1640616427_ (##cdr _e1640416422_)))
                         (if (gx#stx-pair? _tl1640616427_)
                             (let ((_e1640716430_ (gx#stx-e _tl1640616427_)))
                               (let ((_hd1640816433_ (##car _e1640716430_))
                                     (_tl1640916435_ (##cdr _e1640716430_)))
                                 (if (gx#stx-pair? _tl1640916435_)
                                     (let ((_e1641016438_
                                            (gx#stx-e _tl1640916435_)))
                                       (let ((_hd1641116441_
                                              (##car _e1641016438_))
                                             (_tl1641216443_
                                              (##cdr _e1641016438_)))
                                         (if (gx#stx-null? _tl1641216443_)
                                             ((lambda (_L16446_ _L16447_)
                                                (let ((_expr16462_
                                                       (apply gxc#compile-e
                                                              _L16446_
                                                              _args16398_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L16447_
                                                               (cons _expr16462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16397_)))
                                              _hd1641116441_
                                              _hd1640816433_)
                                             (_g1640016417_ _g1640116420_))))
                                     (_g1640016417_ _g1640116420_))))
                             (_g1640016417_ _g1640116420_))))
                     (_g1640016417_ _g1640116420_)))))
          (_g1639916464_ _stx16397_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx16353_ . _args16354_)
      (let ((_g1635616367_
             (lambda (_g1635716364_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1635716364_))))
        (let ((_g1635516394_
               (lambda (_g1635716370_)
                 (if (gx#stx-pair? _g1635716370_)
                     (let ((_e1636016372_ (gx#stx-e _g1635716370_)))
                       (let ((_hd1636116375_ (##car _e1636016372_))
                             (_tl1636216377_ (##cdr _e1636016372_)))
                         ((lambda (_L16380_ _L16381_)
                            (let ((_op-args16392_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args16354_)
                                    _L16380_)))
                              (gxc#xform-wrap-source
                               (cons _L16381_ _op-args16392_)
                               _stx16353_)))
                          _tl1636216377_
                          _hd1636116375_)))
                     (_g1635616367_ _g1635716370_)))))
          (_g1635516394_ _stx16353_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16284_)
      (let ((_g1628616303_
             (lambda (_g1628716300_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1628716300_))))
        (let ((_g1628516350_
               (lambda (_g1628716306_)
                 (if (gx#stx-pair? _g1628716306_)
                     (let ((_e1629016308_ (gx#stx-e _g1628716306_)))
                       (let ((_hd1629116311_ (##car _e1629016308_))
                             (_tl1629216313_ (##cdr _e1629016308_)))
                         (if (gx#stx-pair? _tl1629216313_)
                             (let ((_e1629316316_ (gx#stx-e _tl1629216313_)))
                               (let ((_hd1629416319_ (##car _e1629316316_))
                                     (_tl1629516321_ (##cdr _e1629316316_)))
                                 (if (gx#stx-pair? _tl1629516321_)
                                     (let ((_e1629616324_
                                            (gx#stx-e _tl1629516321_)))
                                       (let ((_hd1629716327_
                                              (##car _e1629616324_))
                                             (_tl1629816329_
                                              (##cdr _e1629616324_)))
                                         (if (gx#stx-null? _tl1629816329_)
                                             ((lambda (_L16332_ _L16333_)
                                                (let ((_sym16348_
                                                       (gxc#identifier-symbol
                                                        _L16333_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym16348_)
                                                    (hash-put!
                                                     (gxc#current-compile-mutators)
                                                     _sym16348_
                                                     '#t)
                                                    (gxc#compile-e _L16332_))))
                                              _hd1629716327_
                                              _hd1629416319_)
                                             (_g1628616303_ _g1628716306_))))
                                     (_g1628616303_ _g1628716306_))))
                             (_g1628616303_ _g1628716306_))))
                     (_g1628616303_ _g1628716306_)))))
          (_g1628516350_ _stx16284_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form15518_)
      (let ((_g1552315680_
             (lambda (_g1552415677_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1552415677_))))
        (let ((_g1552215687_ (lambda (_g1552415683_) ((lambda () '#f)))))
          (let ((_g1552115827_
                 (lambda (_g1552415690_)
                   (if (gx#stx-pair? _g1552415690_)
                       (let ((_e1564015692_ (gx#stx-e _g1552415690_)))
                         (let ((_hd1564115695_ (##car _e1564015692_))
                               (_tl1564215697_ (##cdr _e1564015692_)))
                           (if (gx#stx-pair? _tl1564215697_)
                               (let ((_e1564315700_ (gx#stx-e _tl1564215697_)))
                                 (let ((_hd1564415703_ (##car _e1564315700_))
                                       (_tl1564515705_ (##cdr _e1564315700_)))
                                   (if (gx#stx-pair? _hd1564415703_)
                                       (let ((_e1564615708_
                                              (gx#stx-e _hd1564415703_)))
                                         (let ((_hd1564715711_
                                                (##car _e1564615708_))
                                               (_tl1564815713_
                                                (##cdr _e1564615708_)))
                                           (if (gx#identifier? _hd1564715711_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1564715711_)
                                                   (if (gx#stx-pair?
                                                        _tl1564815713_)
                                                       (let ((_e1564915716_
                                                              (gx#stx-e
                                                               _tl1564815713_)))
                                                         (let ((_hd1565015719_
                                                                (##car _e1564915716_))
                                                               (_tl1565115721_
                                                                (##cdr _e1564915716_)))
                                                           (if (gx#stx-pair?
                                                                _hd1565015719_)
                                                               (let ((_e1565215724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1565015719_)))
                         (let ((_hd1565315727_ (##car _e1565215724_))
                               (_tl1565415729_ (##cdr _e1565215724_)))
                           (if (gx#identifier? _hd1565315727_)
                               (if (gx#stx-eq? '%#ref _hd1565315727_)
                                   (if (gx#stx-pair? _tl1565415729_)
                                       (let ((_e1565515732_
                                              (gx#stx-e _tl1565415729_)))
                                         (let ((_hd1565615735_
                                                (##car _e1565515732_))
                                               (_tl1565715737_
                                                (##cdr _e1565515732_)))
                                           (if (gx#stx-null? _tl1565715737_)
                                               (if (gx#stx-pair?
                                                    _tl1565115721_)
                                                   (let ((_e1565815740_
                                                          (gx#stx-e
                                                           _tl1565115721_)))
                                                     (let ((_hd1565915743_
                                                            (##car _e1565815740_))
                                                           (_tl1566015745_
                                                            (##cdr _e1565815740_)))
                                                       (if (gx#stx-pair?
                                                            _hd1565915743_)
                                                           (let ((_e1566115748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1565915743_)))
                     (let ((_hd1566215751_ (##car _e1566115748_))
                           (_tl1566315753_ (##cdr _e1566115748_)))
                       (if (gx#identifier? _hd1566215751_)
                           (if (gx#stx-eq? '%#ref _hd1566215751_)
                               (if (gx#stx-pair? _tl1566315753_)
                                   (let ((_e1566415756_
                                          (gx#stx-e _tl1566315753_)))
                                     (let ((_hd1566515759_
                                            (##car _e1566415756_))
                                           (_tl1566615761_
                                            (##cdr _e1566415756_)))
                                       (if (gx#stx-null? _tl1566615761_)
                                           (if (gx#stx-pair? _tl1566015745_)
                                               (let ((_e1566715764_
                                                      (gx#stx-e
                                                       _tl1566015745_)))
                                                 (let ((_hd1566815767_
                                                        (##car _e1566715764_))
                                                       (_tl1566915769_
                                                        (##cdr _e1566715764_)))
                                                   (if (gx#stx-pair?
                                                        _hd1566815767_)
                                                       (let ((_e1567015772_
                                                              (gx#stx-e
                                                               _hd1566815767_)))
                                                         (let ((_hd1567115775_
                                                                (##car _e1567015772_))
                                                               (_tl1567215777_
                                                                (##cdr _e1567015772_)))
                                                           (if (gx#identifier?
                                                                _hd1567115775_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1567115775_)
                           (if (gx#stx-pair? _tl1567215777_)
                               (let ((_e1567315780_ (gx#stx-e _tl1567215777_)))
                                 (let ((_hd1567415783_ (##car _e1567315780_))
                                       (_tl1567515785_ (##cdr _e1567315780_)))
                                   (if (gx#stx-null? _tl1567515785_)
                                       (if (gx#stx-null? _tl1566915769_)
                                           (if (gx#stx-null? _tl1564515705_)
                                               ((lambda (_L15788_
                                                         _L15789_
                                                         _L15790_
                                                         _L15791_)
                                                  (if (if (gx#identifier?
                                                           _L15791_)
                                                          (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15790_)
                           'apply)
                      (if (gx#free-identifier=? _L15791_ _L15788_)
                          (not (gx#free-identifier=? _L15789_ _L15791_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1552215687_ _g1552415690_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1567415783_
                                                _hd1566515759_
                                                _hd1565615735_
                                                _hd1564115695_)
                                               (_g1552215687_ _g1552415690_))
                                           (_g1552215687_ _g1552415690_))
                                       (_g1552215687_ _g1552415690_))))
                               (_g1552215687_ _g1552415690_))
                           (_g1552215687_ _g1552415690_))
                       (_g1552215687_ _g1552415690_))))
               (_g1552215687_ _g1552415690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1552215687_ _g1552415690_))
                                           (_g1552215687_ _g1552415690_))))
                                   (_g1552215687_ _g1552415690_))
                               (_g1552215687_ _g1552415690_))
                           (_g1552215687_ _g1552415690_))))
                   (_g1552215687_ _g1552415690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1552215687_
                                                    _g1552415690_))
                                               (_g1552215687_ _g1552415690_))))
                                       (_g1552215687_ _g1552415690_))
                                   (_g1552215687_ _g1552415690_))
                               (_g1552215687_ _g1552415690_))))
                       (_g1552215687_ _g1552415690_))))
               (_g1552215687_ _g1552415690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1552215687_
                                                    _g1552415690_))
                                               (_g1552215687_ _g1552415690_))))
                                       (_g1552215687_ _g1552415690_))))
                               (_g1552215687_ _g1552415690_))))
                       (_g1552215687_ _g1552415690_)))))
            (let ((_g1552016087_
                   (lambda (_g1552415830_)
                     (if (gx#stx-pair? _g1552415830_)
                         (let ((_e1557615832_ (gx#stx-e _g1552415830_)))
                           (let ((_hd1557715835_ (##car _e1557615832_))
                                 (_tl1557815837_ (##cdr _e1557615832_)))
                             (if (gx#stx-pair/null? _hd1557715835_)
                                 (if (fx>= (gx#stx-length _hd1557715835_) '0)
                                     (let ((_g17449_
                                            (gx#syntax-split-splice
                                             _hd1557715835_
                                             '0)))
                                       (begin
                                         (let ((_g17450_
                                                (values-count _g17449_)))
                                           (if (not (fx= _g17450_ 2))
                                               (error "Context expects 2 values"
                                                      _g17450_)))
                                         (let ((_target1557915840_
                                                (values-ref _g17449_ 0))
                                               (_tl1558115842_
                                                (values-ref _g17449_ 1)))
                                           (letrec ((_loop1558215845_
                                                     (lambda (_hd1558015848_
                                                              _arg1558615850_)
                                                       (if (gx#stx-pair?
                                                            _hd1558015848_)
                                                           (let ((_e1558315853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1558015848_)))
                     (let ((_lp-hd1558415856_ (##car _e1558315853_))
                           (_lp-tl1558515858_ (##cdr _e1558315853_)))
                       (_loop1558215845_
                        _lp-tl1558515858_
                        (cons _lp-hd1558415856_ _arg1558615850_))))
                   (let ((_arg1558715861_ (reverse _arg1558615850_)))
                     (if (gx#stx-pair? _tl1557815837_)
                         (let ((_e1558815864_ (gx#stx-e _tl1557815837_)))
                           (let ((_hd1558915867_ (##car _e1558815864_))
                                 (_tl1559015869_ (##cdr _e1558815864_)))
                             (if (gx#stx-pair? _hd1558915867_)
                                 (let ((_e1559115872_
                                        (gx#stx-e _hd1558915867_)))
                                   (let ((_hd1559215875_ (##car _e1559115872_))
                                         (_tl1559315877_
                                          (##cdr _e1559115872_)))
                                     (if (gx#identifier? _hd1559215875_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1559215875_)
                                             (if (gx#stx-pair? _tl1559315877_)
                                                 (let ((_e1559415880_
                                                        (gx#stx-e
                                                         _tl1559315877_)))
                                                   (let ((_hd1559515883_
                                                          (##car _e1559415880_))
                                                         (_tl1559615885_
                                                          (##cdr _e1559415880_)))
                                                     (if (gx#stx-pair?
                                                          _hd1559515883_)
                                                         (let ((_e1559715888_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1559515883_)))
                   (let ((_hd1559815891_ (##car _e1559715888_))
                         (_tl1559915893_ (##cdr _e1559715888_)))
                     (if (gx#identifier? _hd1559815891_)
                         (if (gx#stx-eq? '%#ref _hd1559815891_)
                             (if (gx#stx-pair? _tl1559915893_)
                                 (let ((_e1560015896_
                                        (gx#stx-e _tl1559915893_)))
                                   (let ((_hd1560115899_ (##car _e1560015896_))
                                         (_tl1560215901_
                                          (##cdr _e1560015896_)))
                                     (if (gx#stx-null? _tl1560215901_)
                                         (if (gx#stx-pair? _tl1559615885_)
                                             (let ((_e1560315904_
                                                    (gx#stx-e _tl1559615885_)))
                                               (let ((_hd1560415907_
                                                      (##car _e1560315904_))
                                                     (_tl1560515909_
                                                      (##cdr _e1560315904_)))
                                                 (if (gx#stx-pair?
                                                      _hd1560415907_)
                                                     (let ((_e1560615912_
                                                            (gx#stx-e
                                                             _hd1560415907_)))
                                                       (let ((_hd1560715915_
                                                              (##car _e1560615912_))
                                                             (_tl1560815917_
                                                              (##cdr _e1560615912_)))
                                                         (if (gx#identifier?
                                                              _hd1560715915_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1560715915_)
                         (if (gx#stx-pair? _tl1560815917_)
                             (let ((_e1560915920_ (gx#stx-e _tl1560815917_)))
                               (let ((_hd1561015923_ (##car _e1560915920_))
                                     (_tl1561115925_ (##cdr _e1560915920_)))
                                 (if (gx#stx-null? _tl1561115925_)
                                     (if (gx#stx-pair/null? _tl1560515909_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1560515909_)
                                                   '1)
                                             (let ((_g17451_
                                                    (gx#syntax-split-splice
                                                     _tl1560515909_
                                                     '1)))
                                               (begin
                                                 (let ((_g17452_
                                                        (values-count
                                                         _g17451_)))
                                                   (if (not (fx= _g17452_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17452_)))
                                                 (let ((_target1561215928_
                                                        (values-ref
                                                         _g17451_
                                                         0))
                                                       (_tl1561415930_
                                                        (values-ref
                                                         _g17451_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1561415930_)
                                                       (let ((_e1562115933_
                                                              (gx#stx-e
                                                               _tl1561415930_)))
                                                         (let ((_hd1562215936_
                                                                (##car _e1562115933_))
                                                               (_tl1562315938_
                                                                (##cdr _e1562115933_)))
                                                           (if (gx#stx-pair?
                                                                _hd1562215936_)
                                                               (let ((_e1562415941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1562215936_)))
                         (let ((_hd1562515944_ (##car _e1562415941_))
                               (_tl1562615946_ (##cdr _e1562415941_)))
                           (if (gx#identifier? _hd1562515944_)
                               (if (gx#stx-eq? '%#ref _hd1562515944_)
                                   (if (gx#stx-pair? _tl1562615946_)
                                       (let ((_e1562715949_
                                              (gx#stx-e _tl1562615946_)))
                                         (let ((_hd1562815952_
                                                (##car _e1562715949_))
                                               (_tl1562915954_
                                                (##cdr _e1562715949_)))
                                           (if (gx#stx-null? _tl1562915954_)
                                               (if (gx#stx-null?
                                                    _tl1562315938_)
                                                   (letrec ((_loop1561515957_
                                                             (lambda (_hd1561315960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1561915962_)
                       (if (gx#stx-pair? _hd1561315960_)
                           (let ((_e1561615965_ (gx#stx-e _hd1561315960_)))
                             (let ((_lp-hd1561715968_ (##car _e1561615965_))
                                   (_lp-tl1561815970_ (##cdr _e1561615965_)))
                               (if (gx#stx-pair? _lp-hd1561715968_)
                                   (let ((_e1563015973_
                                          (gx#stx-e _lp-hd1561715968_)))
                                     (let ((_hd1563115976_
                                            (##car _e1563015973_))
                                           (_tl1563215978_
                                            (##cdr _e1563015973_)))
                                       (if (gx#identifier? _hd1563115976_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1563115976_)
                                               (if (gx#stx-pair?
                                                    _tl1563215978_)
                                                   (let ((_e1563315981_
                                                          (gx#stx-e
                                                           _tl1563215978_)))
                                                     (let ((_hd1563415984_
                                                            (##car _e1563315981_))
                                                           (_tl1563515986_
                                                            (##cdr _e1563315981_)))
                                                       (if (gx#stx-null?
                                                            _tl1563515986_)
                                                           (_loop1561515957_
                                                            _lp-tl1561815970_
                                                            (cons _hd1563415984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1561915962_))
                   (_g1552115827_ _g1552415830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1552115827_
                                                    _g1552415830_))
                                               (_g1552115827_ _g1552415830_))
                                           (_g1552115827_ _g1552415830_))))
                                   (_g1552115827_ _g1552415830_))))
                           (let ((_xarg1562015989_ (reverse _xarg1561915962_)))
                             (if (gx#stx-null? _tl1559015869_)
                                 ((lambda (_L15992_
                                           _L15993_
                                           _L15994_
                                           _L15995_
                                           _L15996_
                                           _L15997_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1604016043_
                                                               _g1604116045_)
                                                        (cons _g1604016043_
                                                              _g1604116045_))
                                                      '()
                                                      _L15997_)))
                                            (if (gx#identifier? _L15996_)
                                                (if (eq? (gxc#identifier-symbol
                                                          _L15995_)
                                                         'apply)
                                                    (if (fx= (gx#stx-length
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1604716050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1604816052_)
                                 (cons _g1604716050_ _g1604816052_))
                               '()
                               _L15997_)))
                     (gx#stx-length
                      (begin
                        '#!void
                        (foldr (lambda (_g1605416057_ _g1605516059_)
                                 (cons _g1605416057_ _g1605516059_))
                               '()
                               _L15993_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr (lambda (_g1606116064_ _g1606216066_)
                                       (cons _g1606116064_ _g1606216066_))
                                     '()
                                     _L15997_))
                            (begin
                              '#!void
                              (foldr (lambda (_g1606816071_ _g1606916073_)
                                       (cons _g1606816071_ _g1606916073_))
                                     '()
                                     _L15993_)))
                    (if (gx#free-identifier=? _L15996_ _L15992_)
                        (not (find (lambda (_g1607516077_)
                                     (gx#free-identifier=?
                                      _g1607516077_
                                      _L15994_))
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1607916082_
                                                     _g1608016084_)
                                              (cons _g1607916082_
                                                    _g1608016084_))
                                            (cons _L15996_ '())
                                            _L15997_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1552115827_ _g1552415830_)))
                                  _hd1562815952_
                                  _xarg1562015989_
                                  _hd1561015923_
                                  _hd1560115899_
                                  _tl1558115842_
                                  _arg1558715861_)
                                 (_g1552115827_ _g1552415830_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1561515957_
                                                      _target1561215928_
                                                      '()))
                                                   (_g1552115827_
                                                    _g1552415830_))
                                               (_g1552115827_ _g1552415830_))))
                                       (_g1552115827_ _g1552415830_))
                                   (_g1552115827_ _g1552415830_))
                               (_g1552115827_ _g1552415830_))))
                       (_g1552115827_ _g1552415830_))))
               (_g1552115827_ _g1552415830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1552115827_ _g1552415830_))
                                         (_g1552115827_ _g1552415830_))
                                     (_g1552115827_ _g1552415830_))))
                             (_g1552115827_ _g1552415830_))
                         (_g1552115827_ _g1552415830_))
                     (_g1552115827_ _g1552415830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1552115827_
                                                      _g1552415830_))))
                                             (_g1552115827_ _g1552415830_))
                                         (_g1552115827_ _g1552415830_))))
                                 (_g1552115827_ _g1552415830_))
                             (_g1552115827_ _g1552415830_))
                         (_g1552115827_ _g1552415830_))))
                 (_g1552115827_ _g1552415830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1552115827_ _g1552415830_))
                                             (_g1552115827_ _g1552415830_))
                                         (_g1552115827_ _g1552415830_))))
                                 (_g1552115827_ _g1552415830_))))
                         (_g1552115827_ _g1552415830_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1558215845_
                                              _target1557915840_
                                              '())))))
                                     (_g1552115827_ _g1552415830_))
                                 (_g1552115827_ _g1552415830_))))
                         (_g1552115827_ _g1552415830_)))))
              (let ((_g1551916281_
                     (lambda (_g1552416090_)
                       (if (gx#stx-pair? _g1552416090_)
                           (let ((_e1552816092_ (gx#stx-e _g1552416090_)))
                             (let ((_hd1552916095_ (##car _e1552816092_))
                                   (_tl1553016097_ (##cdr _e1552816092_)))
                               (if (gx#stx-pair/null? _hd1552916095_)
                                   (if (fx>= (gx#stx-length _hd1552916095_) '0)
                                       (let ((_g17453_
                                              (gx#syntax-split-splice
                                               _hd1552916095_
                                               '0)))
                                         (begin
                                           (let ((_g17454_
                                                  (values-count _g17453_)))
                                             (if (not (fx= _g17454_ 2))
                                                 (error "Context expects 2 values"
                                                        _g17454_)))
                                           (let ((_target1553116100_
                                                  (values-ref _g17453_ 0))
                                                 (_tl1553316102_
                                                  (values-ref _g17453_ 1)))
                                             (if (gx#stx-null? _tl1553316102_)
                                                 (letrec ((_loop1553416105_
                                                           (lambda (_hd1553216108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1553816110_)
                     (if (gx#stx-pair? _hd1553216108_)
                         (let ((_e1553516113_ (gx#stx-e _hd1553216108_)))
                           (let ((_lp-hd1553616116_ (##car _e1553516113_))
                                 (_lp-tl1553716118_ (##cdr _e1553516113_)))
                             (_loop1553416105_
                              _lp-tl1553716118_
                              (cons _lp-hd1553616116_ _arg1553816110_))))
                         (let ((_arg1553916121_ (reverse _arg1553816110_)))
                           (if (gx#stx-pair? _tl1553016097_)
                               (let ((_e1554016124_ (gx#stx-e _tl1553016097_)))
                                 (let ((_hd1554116127_ (##car _e1554016124_))
                                       (_tl1554216129_ (##cdr _e1554016124_)))
                                   (if (gx#stx-pair? _hd1554116127_)
                                       (let ((_e1554316132_
                                              (gx#stx-e _hd1554116127_)))
                                         (let ((_hd1554416135_
                                                (##car _e1554316132_))
                                               (_tl1554516137_
                                                (##cdr _e1554316132_)))
                                           (if (gx#identifier? _hd1554416135_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1554416135_)
                                                   (if (gx#stx-pair?
                                                        _tl1554516137_)
                                                       (let ((_e1554616140_
                                                              (gx#stx-e
                                                               _tl1554516137_)))
                                                         (let ((_hd1554716143_
                                                                (##car _e1554616140_))
                                                               (_tl1554816145_
                                                                (##cdr _e1554616140_)))
                                                           (if (gx#stx-pair?
                                                                _hd1554716143_)
                                                               (let ((_e1554916148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1554716143_)))
                         (let ((_hd1555016151_ (##car _e1554916148_))
                               (_tl1555116153_ (##cdr _e1554916148_)))
                           (if (gx#identifier? _hd1555016151_)
                               (if (gx#stx-eq? '%#ref _hd1555016151_)
                                   (if (gx#stx-pair? _tl1555116153_)
                                       (let ((_e1555216156_
                                              (gx#stx-e _tl1555116153_)))
                                         (let ((_hd1555316159_
                                                (##car _e1555216156_))
                                               (_tl1555416161_
                                                (##cdr _e1555216156_)))
                                           (if (gx#stx-null? _tl1555416161_)
                                               (if (gx#stx-pair/null?
                                                    _tl1554816145_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1554816145_)
                                                             '0)
                                                       (let ((_g17455_
                                                              (gx#syntax-split-splice
                                                               _tl1554816145_
                                                               '0)))
                                                         (begin
                                                           (let ((_g17456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g17455_)))
                     (if (not (fx= _g17456_ 2))
                         (error "Context expects 2 values" _g17456_)))
                   (let ((_target1555516164_ (values-ref _g17455_ 0))
                         (_tl1555716166_ (values-ref _g17455_ 1)))
                     (if (gx#stx-null? _tl1555716166_)
                         (letrec ((_loop1555816169_
                                   (lambda (_hd1555616172_ _xarg1556216174_)
                                     (if (gx#stx-pair? _hd1555616172_)
                                         (let ((_e1555916177_
                                                (gx#stx-e _hd1555616172_)))
                                           (let ((_lp-hd1556016180_
                                                  (##car _e1555916177_))
                                                 (_lp-tl1556116182_
                                                  (##cdr _e1555916177_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1556016180_)
                                                 (let ((_e1556416185_
                                                        (gx#stx-e
                                                         _lp-hd1556016180_)))
                                                   (let ((_hd1556516188_
                                                          (##car _e1556416185_))
                                                         (_tl1556616190_
                                                          (##cdr _e1556416185_)))
                                                     (if (gx#identifier?
                                                          _hd1556516188_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1556516188_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1556616190_)
                         (let ((_e1556716193_ (gx#stx-e _tl1556616190_)))
                           (let ((_hd1556816196_ (##car _e1556716193_))
                                 (_tl1556916198_ (##cdr _e1556716193_)))
                             (if (gx#stx-null? _tl1556916198_)
                                 (_loop1555816169_
                                  _lp-tl1556116182_
                                  (cons _hd1556816196_ _xarg1556216174_))
                                 (_g1552016087_ _g1552416090_))))
                         (_g1552016087_ _g1552416090_))
                     (_g1552016087_ _g1552416090_))
                 (_g1552016087_ _g1552416090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1552016087_
                                                  _g1552416090_))))
                                         (let ((_xarg1556316201_
                                                (reverse _xarg1556216174_)))
                                           (if (gx#stx-null? _tl1554216129_)
                                               ((lambda (_L16204_
                                                         _L16205_
                                                         _L16206_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1623416237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1623516239_)
                              (cons _g1623416237_ _g1623516239_))
                            '()
                            _L16206_)))
                  (if (fx= (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1624116244_ _g1624216246_)
                                       (cons _g1624116244_ _g1624216246_))
                                     '()
                                     _L16206_)))
                           (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1624816251_ _g1624916253_)
                                       (cons _g1624816251_ _g1624916253_))
                                     '()
                                     _L16204_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1625516258_
                                                    _g1625616260_)
                                             (cons _g1625516258_
                                                   _g1625616260_))
                                           '()
                                           _L16206_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1626216265_
                                                    _g1626316267_)
                                             (cons _g1626216265_
                                                   _g1626316267_))
                                           '()
                                           _L16204_)))
                          (not (find (lambda (_g1626916271_)
                                       (gx#free-identifier=?
                                        _g1626916271_
                                        _L16205_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1627316276_
                                                       _g1627416278_)
                                                (cons _g1627316276_
                                                      _g1627416278_))
                                              '()
                                              _L16206_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1552016087_ _g1552416090_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1556316201_
                                                _hd1555316159_
                                                _arg1553916121_)
                                               (_g1552016087_
                                                _g1552416090_)))))))
                           (_loop1555816169_ _target1555516164_ '()))
                         (_g1552016087_ _g1552416090_)))))
               (_g1552016087_ _g1552416090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1552016087_
                                                    _g1552416090_))
                                               (_g1552016087_ _g1552416090_))))
                                       (_g1552016087_ _g1552416090_))
                                   (_g1552016087_ _g1552416090_))
                               (_g1552016087_ _g1552416090_))))
                       (_g1552016087_ _g1552416090_))))
               (_g1552016087_ _g1552416090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1552016087_
                                                    _g1552416090_))
                                               (_g1552016087_ _g1552416090_))))
                                       (_g1552016087_ _g1552416090_))))
                               (_g1552016087_ _g1552416090_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1553416105_
                                                    _target1553116100_
                                                    '()))
                                                 (_g1552016087_
                                                  _g1552416090_)))))
                                       (_g1552016087_ _g1552416090_))
                                   (_g1552016087_ _g1552416090_))))
                           (_g1552016087_ _g1552416090_)))))
                (_g1551916281_ _form15518_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form14986_)
      (let ((_g1499015114_
             (lambda (_g1499115111_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1499115111_))))
        (let ((_g1498915231_
               (lambda (_g1499115117_)
                 (if (gx#stx-pair? _g1499115117_)
                     (let ((_e1508015119_ (gx#stx-e _g1499115117_)))
                       (let ((_hd1508115122_ (##car _e1508015119_))
                             (_tl1508215124_ (##cdr _e1508015119_)))
                         (if (gx#stx-pair? _tl1508215124_)
                             (let ((_e1508315127_ (gx#stx-e _tl1508215124_)))
                               (let ((_hd1508415130_ (##car _e1508315127_))
                                     (_tl1508515132_ (##cdr _e1508315127_)))
                                 (if (gx#stx-pair? _hd1508415130_)
                                     (let ((_e1508615135_
                                            (gx#stx-e _hd1508415130_)))
                                       (let ((_hd1508715138_
                                              (##car _e1508615135_))
                                             (_tl1508815140_
                                              (##cdr _e1508615135_)))
                                         (if (gx#identifier? _hd1508715138_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1508715138_)
                                                 (if (gx#stx-pair?
                                                      _tl1508815140_)
                                                     (let ((_e1508915143_
                                                            (gx#stx-e
                                                             _tl1508815140_)))
                                                       (let ((_hd1509015146_
                                                              (##car _e1508915143_))
                                                             (_tl1509115148_
                                                              (##cdr _e1508915143_)))
                                                         (if (gx#stx-pair?
                                                              _hd1509015146_)
                                                             (let ((_e1509215151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1509015146_)))
                       (let ((_hd1509315154_ (##car _e1509215151_))
                             (_tl1509415156_ (##cdr _e1509215151_)))
                         (if (gx#identifier? _hd1509315154_)
                             (if (gx#stx-eq? '%#ref _hd1509315154_)
                                 (if (gx#stx-pair? _tl1509415156_)
                                     (let ((_e1509515159_
                                            (gx#stx-e _tl1509415156_)))
                                       (let ((_hd1509615162_
                                              (##car _e1509515159_))
                                             (_tl1509715164_
                                              (##cdr _e1509515159_)))
                                         (if (gx#stx-null? _tl1509715164_)
                                             (if (gx#stx-pair? _tl1509115148_)
                                                 (let ((_e1509815167_
                                                        (gx#stx-e
                                                         _tl1509115148_)))
                                                   (let ((_hd1509915170_
                                                          (##car _e1509815167_))
                                                         (_tl1510015172_
                                                          (##cdr _e1509815167_)))
                                                     (if (gx#stx-pair?
                                                          _hd1509915170_)
                                                         (let ((_e1510115175_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1509915170_)))
                   (let ((_hd1510215178_ (##car _e1510115175_))
                         (_tl1510315180_ (##cdr _e1510115175_)))
                     (if (gx#identifier? _hd1510215178_)
                         (if (gx#stx-eq? '%#ref _hd1510215178_)
                             (if (gx#stx-pair? _tl1510315180_)
                                 (let ((_e1510415183_
                                        (gx#stx-e _tl1510315180_)))
                                   (let ((_hd1510515186_ (##car _e1510415183_))
                                         (_tl1510615188_
                                          (##cdr _e1510415183_)))
                                     (if (gx#stx-null? _tl1510615188_)
                                         (if (gx#stx-pair? _tl1510015172_)
                                             (let ((_e1510715191_
                                                    (gx#stx-e _tl1510015172_)))
                                               (let ((_hd1510815194_
                                                      (##car _e1510715191_))
                                                     (_tl1510915196_
                                                      (##cdr _e1510715191_)))
                                                 (if (gx#stx-null?
                                                      _tl1510915196_)
                                                     (if (gx#stx-null?
                                                          _tl1508515132_)
                                                         ((lambda (_L15199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15200_
                           _L15201_)
                    (gxc#identifier-symbol _L15199_))
                  _hd1510515186_
                  _hd1509615162_
                  _hd1508115122_)
                 (_g1499015114_ _g1499115117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1499015114_
                                                      _g1499115117_))))
                                             (_g1499015114_ _g1499115117_))
                                         (_g1499015114_ _g1499115117_))))
                                 (_g1499015114_ _g1499115117_))
                             (_g1499015114_ _g1499115117_))
                         (_g1499015114_ _g1499115117_))))
                 (_g1499015114_ _g1499115117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1499015114_ _g1499115117_))
                                             (_g1499015114_ _g1499115117_))))
                                     (_g1499015114_ _g1499115117_))
                                 (_g1499015114_ _g1499115117_))
                             (_g1499015114_ _g1499115117_))))
                     (_g1499015114_ _g1499115117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1499015114_
                                                      _g1499115117_))
                                                 (_g1499015114_ _g1499115117_))
                                             (_g1499015114_ _g1499115117_))))
                                     (_g1499015114_ _g1499115117_))))
                             (_g1499015114_ _g1499115117_))))
                     (_g1499015114_ _g1499115117_)))))
          (let ((_g1498815367_
                 (lambda (_g1499115234_)
                   (if (gx#stx-pair? _g1499115234_)
                       (let ((_e1504115236_ (gx#stx-e _g1499115234_)))
                         (let ((_hd1504215239_ (##car _e1504115236_))
                               (_tl1504315241_ (##cdr _e1504115236_)))
                           (if (gx#stx-pair/null? _hd1504215239_)
                               (if (fx>= (gx#stx-length _hd1504215239_) '0)
                                   (let ((_g17457_
                                          (gx#syntax-split-splice
                                           _hd1504215239_
                                           '0)))
                                     (begin
                                       (let ((_g17458_
                                              (values-count _g17457_)))
                                         (if (not (fx= _g17458_ 2))
                                             (error "Context expects 2 values"
                                                    _g17458_)))
                                       (let ((_target1504415244_
                                              (values-ref _g17457_ 0))
                                             (_tl1504615246_
                                              (values-ref _g17457_ 1)))
                                         (letrec ((_loop1504715249_
                                                   (lambda (_hd1504515252_
                                                            _arg1505115254_)
                                                     (if (gx#stx-pair?
                                                          _hd1504515252_)
                                                         (let ((_e1504815257_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1504515252_)))
                   (let ((_lp-hd1504915260_ (##car _e1504815257_))
                         (_lp-tl1505015262_ (##cdr _e1504815257_)))
                     (_loop1504715249_
                      _lp-tl1505015262_
                      (cons _lp-hd1504915260_ _arg1505115254_))))
                 (let ((_arg1505215265_ (reverse _arg1505115254_)))
                   (if (gx#stx-pair? _tl1504315241_)
                       (let ((_e1505315268_ (gx#stx-e _tl1504315241_)))
                         (let ((_hd1505415271_ (##car _e1505315268_))
                               (_tl1505515273_ (##cdr _e1505315268_)))
                           (if (gx#stx-pair? _hd1505415271_)
                               (let ((_e1505615276_ (gx#stx-e _hd1505415271_)))
                                 (let ((_hd1505715279_ (##car _e1505615276_))
                                       (_tl1505815281_ (##cdr _e1505615276_)))
                                   (if (gx#identifier? _hd1505715279_)
                                       (if (gx#stx-eq? '%#call _hd1505715279_)
                                           (if (gx#stx-pair? _tl1505815281_)
                                               (let ((_e1505915284_
                                                      (gx#stx-e
                                                       _tl1505815281_)))
                                                 (let ((_hd1506015287_
                                                        (##car _e1505915284_))
                                                       (_tl1506115289_
                                                        (##cdr _e1505915284_)))
                                                   (if (gx#stx-pair?
                                                        _hd1506015287_)
                                                       (let ((_e1506215292_
                                                              (gx#stx-e
                                                               _hd1506015287_)))
                                                         (let ((_hd1506315295_
                                                                (##car _e1506215292_))
                                                               (_tl1506415297_
                                                                (##cdr _e1506215292_)))
                                                           (if (gx#identifier?
                                                                _hd1506315295_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1506315295_)
                           (if (gx#stx-pair? _tl1506415297_)
                               (let ((_e1506515300_ (gx#stx-e _tl1506415297_)))
                                 (let ((_hd1506615303_ (##car _e1506515300_))
                                       (_tl1506715305_ (##cdr _e1506515300_)))
                                   (if (gx#stx-null? _tl1506715305_)
                                       (if (gx#stx-pair? _tl1506115289_)
                                           (let ((_e1506815308_
                                                  (gx#stx-e _tl1506115289_)))
                                             (let ((_hd1506915311_
                                                    (##car _e1506815308_))
                                                   (_tl1507015313_
                                                    (##cdr _e1506815308_)))
                                               (if (gx#stx-pair?
                                                    _hd1506915311_)
                                                   (let ((_e1507115316_
                                                          (gx#stx-e
                                                           _hd1506915311_)))
                                                     (let ((_hd1507215319_
                                                            (##car _e1507115316_))
                                                           (_tl1507315321_
                                                            (##cdr _e1507115316_)))
                                                       (if (gx#identifier?
                                                            _hd1507215319_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1507215319_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1507315321_)
                           (let ((_e1507415324_ (gx#stx-e _tl1507315321_)))
                             (let ((_hd1507515327_ (##car _e1507415324_))
                                   (_tl1507615329_ (##cdr _e1507415324_)))
                               (if (gx#stx-null? _tl1507615329_)
                                   (if (gx#stx-null? _tl1505515273_)
                                       ((lambda (_L15332_
                                                 _L15333_
                                                 _L15334_
                                                 _L15335_)
                                          (gxc#identifier-symbol _L15332_))
                                        _hd1507515327_
                                        _hd1506615303_
                                        _tl1504615246_
                                        _arg1505215265_)
                                       (_g1498915231_ _g1499115234_))
                                   (_g1498915231_ _g1499115234_))))
                           (_g1498915231_ _g1499115234_))
                       (_g1498915231_ _g1499115234_))
                   (_g1498915231_ _g1499115234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1498915231_
                                                    _g1499115234_))))
                                           (_g1498915231_ _g1499115234_))
                                       (_g1498915231_ _g1499115234_))))
                               (_g1498915231_ _g1499115234_))
                           (_g1498915231_ _g1499115234_))
                       (_g1498915231_ _g1499115234_))))
               (_g1498915231_ _g1499115234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1498915231_ _g1499115234_))
                                           (_g1498915231_ _g1499115234_))
                                       (_g1498915231_ _g1499115234_))))
                               (_g1498915231_ _g1499115234_))))
                       (_g1498915231_ _g1499115234_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1504715249_
                                            _target1504415244_
                                            '())))))
                                   (_g1498915231_ _g1499115234_))
                               (_g1498915231_ _g1499115234_))))
                       (_g1498915231_ _g1499115234_)))))
            (let ((_g1498715515_
                   (lambda (_g1499115370_)
                     (if (gx#stx-pair? _g1499115370_)
                         (let ((_e1499515372_ (gx#stx-e _g1499115370_)))
                           (let ((_hd1499615375_ (##car _e1499515372_))
                                 (_tl1499715377_ (##cdr _e1499515372_)))
                             (if (gx#stx-pair/null? _hd1499615375_)
                                 (if (fx>= (gx#stx-length _hd1499615375_) '0)
                                     (let ((_g17459_
                                            (gx#syntax-split-splice
                                             _hd1499615375_
                                             '0)))
                                       (begin
                                         (let ((_g17460_
                                                (values-count _g17459_)))
                                           (if (not (fx= _g17460_ 2))
                                               (error "Context expects 2 values"
                                                      _g17460_)))
                                         (let ((_target1499815380_
                                                (values-ref _g17459_ 0))
                                               (_tl1500015382_
                                                (values-ref _g17459_ 1)))
                                           (if (gx#stx-null? _tl1500015382_)
                                               (letrec ((_loop1500115385_
                                                         (lambda (_hd1499915388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1500515390_)
                   (if (gx#stx-pair? _hd1499915388_)
                       (let ((_e1500215393_ (gx#stx-e _hd1499915388_)))
                         (let ((_lp-hd1500315396_ (##car _e1500215393_))
                               (_lp-tl1500415398_ (##cdr _e1500215393_)))
                           (_loop1500115385_
                            _lp-tl1500415398_
                            (cons _lp-hd1500315396_ _arg1500515390_))))
                       (let ((_arg1500615401_ (reverse _arg1500515390_)))
                         (if (gx#stx-pair? _tl1499715377_)
                             (let ((_e1500715404_ (gx#stx-e _tl1499715377_)))
                               (let ((_hd1500815407_ (##car _e1500715404_))
                                     (_tl1500915409_ (##cdr _e1500715404_)))
                                 (if (gx#stx-pair? _hd1500815407_)
                                     (let ((_e1501015412_
                                            (gx#stx-e _hd1500815407_)))
                                       (let ((_hd1501115415_
                                              (##car _e1501015412_))
                                             (_tl1501215417_
                                              (##cdr _e1501015412_)))
                                         (if (gx#identifier? _hd1501115415_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1501115415_)
                                                 (if (gx#stx-pair?
                                                      _tl1501215417_)
                                                     (let ((_e1501315420_
                                                            (gx#stx-e
                                                             _tl1501215417_)))
                                                       (let ((_hd1501415423_
                                                              (##car _e1501315420_))
                                                             (_tl1501515425_
                                                              (##cdr _e1501315420_)))
                                                         (if (gx#stx-pair?
                                                              _hd1501415423_)
                                                             (let ((_e1501615428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1501415423_)))
                       (let ((_hd1501715431_ (##car _e1501615428_))
                             (_tl1501815433_ (##cdr _e1501615428_)))
                         (if (gx#identifier? _hd1501715431_)
                             (if (gx#stx-eq? '%#ref _hd1501715431_)
                                 (if (gx#stx-pair? _tl1501815433_)
                                     (let ((_e1501915436_
                                            (gx#stx-e _tl1501815433_)))
                                       (let ((_hd1502015439_
                                              (##car _e1501915436_))
                                             (_tl1502115441_
                                              (##cdr _e1501915436_)))
                                         (if (gx#stx-null? _tl1502115441_)
                                             (if (gx#stx-pair/null?
                                                  _tl1501515425_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1501515425_)
                                                           '0)
                                                     (let ((_g17461_
                                                            (gx#syntax-split-splice
                                                             _tl1501515425_
                                                             '0)))
                                                       (begin
                                                         (let ((_g17462_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g17461_)))
                   (if (not (fx= _g17462_ 2))
                       (error "Context expects 2 values" _g17462_)))
                 (let ((_target1502215444_ (values-ref _g17461_ 0))
                       (_tl1502415446_ (values-ref _g17461_ 1)))
                   (if (gx#stx-null? _tl1502415446_)
                       (letrec ((_loop1502515449_
                                 (lambda (_hd1502315452_ _xarg1502915454_)
                                   (if (gx#stx-pair? _hd1502315452_)
                                       (let ((_e1502615457_
                                              (gx#stx-e _hd1502315452_)))
                                         (let ((_lp-hd1502715460_
                                                (##car _e1502615457_))
                                               (_lp-tl1502815462_
                                                (##cdr _e1502615457_)))
                                           (if (gx#stx-pair? _lp-hd1502715460_)
                                               (let ((_e1503115465_
                                                      (gx#stx-e
                                                       _lp-hd1502715460_)))
                                                 (let ((_hd1503215468_
                                                        (##car _e1503115465_))
                                                       (_tl1503315470_
                                                        (##cdr _e1503115465_)))
                                                   (if (gx#identifier?
                                                        _hd1503215468_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1503215468_)
                                                           (if (gx#stx-pair?
                                                                _tl1503315470_)
                                                               (let ((_e1503415473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1503315470_)))
                         (let ((_hd1503515476_ (##car _e1503415473_))
                               (_tl1503615478_ (##cdr _e1503415473_)))
                           (if (gx#stx-null? _tl1503615478_)
                               (_loop1502515449_
                                _lp-tl1502815462_
                                (cons _hd1503515476_ _xarg1502915454_))
                               (_g1498815367_ _g1499115370_))))
                       (_g1498815367_ _g1499115370_))
                   (_g1498815367_ _g1499115370_))
               (_g1498815367_ _g1499115370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1498815367_ _g1499115370_))))
                                       (let ((_xarg1503015481_
                                              (reverse _xarg1502915454_)))
                                         (if (gx#stx-null? _tl1500915409_)
                                             ((lambda (_L15484_
                                                       _L15485_
                                                       _L15486_)
                                                (gxc#identifier-symbol
                                                 _L15485_))
                                              _xarg1503015481_
                                              _hd1502015439_
                                              _arg1500615401_)
                                             (_g1498815367_
                                              _g1499115370_)))))))
                         (_loop1502515449_ _target1502215444_ '()))
                       (_g1498815367_ _g1499115370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1498815367_
                                                      _g1499115370_))
                                                 (_g1498815367_ _g1499115370_))
                                             (_g1498815367_ _g1499115370_))))
                                     (_g1498815367_ _g1499115370_))
                                 (_g1498815367_ _g1499115370_))
                             (_g1498815367_ _g1499115370_))))
                     (_g1498815367_ _g1499115370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1498815367_
                                                      _g1499115370_))
                                                 (_g1498815367_ _g1499115370_))
                                             (_g1498815367_ _g1499115370_))))
                                     (_g1498815367_ _g1499115370_))))
                             (_g1498815367_ _g1499115370_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1500115385_
                                                  _target1499815380_
                                                  '()))
                                               (_g1498815367_
                                                _g1499115370_)))))
                                     (_g1498815367_ _g1499115370_))
                                 (_g1498815367_ _g1499115370_))))
                         (_g1498815367_ _g1499115370_)))))
              (_g1498715515_ _form14986_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form14829_)
      (let ((_g1483314864_
             (lambda (_g1483414861_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1483414861_))))
        (let ((_g1483214877_
               (lambda (_g1483414867_)
                 ((lambda (_L14869_) (cons '0 '())) _g1483414867_))))
          (let ((_g1483114926_
                 (lambda (_g1483414880_)
                   (if (gx#stx-pair/null? _g1483414880_)
                       (if (fx>= (gx#stx-length _g1483414880_) '0)
                           (let ((_g17463_
                                  (gx#syntax-split-splice _g1483414880_ '0)))
                             (begin
                               (let ((_g17464_ (values-count _g17463_)))
                                 (if (not (fx= _g17464_ 2))
                                     (error "Context expects 2 values"
                                            _g17464_)))
                               (let ((_target1485014882_
                                      (values-ref _g17463_ 0))
                                     (_tl1485214884_ (values-ref _g17463_ 1)))
                                 (letrec ((_loop1485314887_
                                           (lambda (_hd1485114890_
                                                    _arg1485714892_)
                                             (if (gx#stx-pair? _hd1485114890_)
                                                 (let ((_e1485414895_
                                                        (gx#stx-e
                                                         _hd1485114890_)))
                                                   (let ((_lp-hd1485514898_
                                                          (##car _e1485414895_))
                                                         (_lp-tl1485614900_
                                                          (##cdr _e1485414895_)))
                                                     (_loop1485314887_
                                                      _lp-tl1485614900_
                                                      (cons _lp-hd1485514898_
                                                            _arg1485714892_))))
                                                 (let ((_arg1485814903_
                                                        (reverse _arg1485714892_)))
                                                   ((lambda (_L14906_ _L14907_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1491814921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1491914923_)
                                (cons _g1491814921_ _g1491914923_))
                              '()
                              _L14907_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1485214884_
                                                    _arg1485814903_))))))
                                   (_loop1485314887_
                                    _target1485014882_
                                    '())))))
                           (_g1483214877_ _g1483414880_))
                       (_g1483214877_ _g1483414880_)))))
            (let ((_g1483014983_
                   (lambda (_g1483414929_)
                     (if (gx#stx-pair? _g1483414929_)
                         (let ((_e1483614931_ (gx#stx-e _g1483414929_)))
                           (let ((_hd1483714934_ (##car _e1483614931_))
                                 (_tl1483814936_ (##cdr _e1483614931_)))
                             (if (gx#stx-pair/null? _hd1483714934_)
                                 (if (fx>= (gx#stx-length _hd1483714934_) '0)
                                     (let ((_g17465_
                                            (gx#syntax-split-splice
                                             _hd1483714934_
                                             '0)))
                                       (begin
                                         (let ((_g17466_
                                                (values-count _g17465_)))
                                           (if (not (fx= _g17466_ 2))
                                               (error "Context expects 2 values"
                                                      _g17466_)))
                                         (let ((_target1483914939_
                                                (values-ref _g17465_ 0))
                                               (_tl1484114941_
                                                (values-ref _g17465_ 1)))
                                           (if (gx#stx-null? _tl1484114941_)
                                               (letrec ((_loop1484214944_
                                                         (lambda (_hd1484014947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1484614949_)
                   (if (gx#stx-pair? _hd1484014947_)
                       (let ((_e1484314952_ (gx#stx-e _hd1484014947_)))
                         (let ((_lp-hd1484414955_ (##car _e1484314952_))
                               (_lp-tl1484514957_ (##cdr _e1484314952_)))
                           (_loop1484214944_
                            _lp-tl1484514957_
                            (cons _lp-hd1484414955_ _arg1484614949_))))
                       (let ((_arg1484714960_ (reverse _arg1484614949_)))
                         ((lambda (_L14963_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1497514978_ _g1497614980_)
                                        (cons _g1497514978_ _g1497614980_))
                                      '()
                                      _L14963_))))
                          _arg1484714960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1484214944_
                                                  _target1483914939_
                                                  '()))
                                               (_g1483114926_
                                                _g1483414929_)))))
                                     (_g1483114926_ _g1483414929_))
                                 (_g1483114926_ _g1483414929_))))
                         (_g1483114926_ _g1483414929_)))))
              (_g1483014983_ _form14829_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx14102_)
      (let ((_lambda-expr?14104_
             (lambda (_expr14782_)
               (let ((_g1478514795_
                      (lambda (_g1478614792_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1478614792_))))
                 (let ((_g1478414802_
                        (lambda (_g1478614798_) ((lambda () '#f)))))
                   (let ((_g1478314826_
                          (lambda (_g1478614805_)
                            (if (gx#stx-pair? _g1478614805_)
                                (let ((_e1478814807_ (gx#stx-e _g1478614805_)))
                                  (let ((_hd1478914810_ (##car _e1478814807_))
                                        (_tl1479014812_ (##cdr _e1478814807_)))
                                    (if (gx#identifier? _hd1478914810_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1478914810_)
                                            ((lambda (_L14815_) '#t)
                                             _tl1479014812_)
                                            (_g1478414802_ _g1478614805_))
                                        (_g1478414802_ _g1478614805_))))
                                (_g1478414802_ _g1478614805_)))))
                     (_g1478314826_ _expr14782_)))))))
        (let ((_case-lambda-expr?14105_
               (lambda (_expr14735_)
                 (let ((_g1473814748_
                        (lambda (_g1473914745_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1473914745_))))
                   (let ((_g1473714755_
                          (lambda (_g1473914751_) ((lambda () '#f)))))
                     (let ((_g1473614779_
                            (lambda (_g1473914758_)
                              (if (gx#stx-pair? _g1473914758_)
                                  (let ((_e1474114760_
                                         (gx#stx-e _g1473914758_)))
                                    (let ((_hd1474214763_
                                           (##car _e1474114760_))
                                          (_tl1474314765_
                                           (##cdr _e1474114760_)))
                                      (if (gx#identifier? _hd1474214763_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1474214763_)
                                              ((lambda (_L14768_) '#t)
                                               _tl1474314765_)
                                              (_g1473714755_ _g1473914758_))
                                          (_g1473714755_ _g1473914758_))))
                                  (_g1473714755_ _g1473914758_)))))
                       (_g1473614779_ _expr14735_)))))))
          (let ((_lift-case-lambda-clauses14106_
                 (lambda (_id14496_ _clauses14497_)
                   ((letrec ((_lp14499_
                              (lambda (_rest14501_
                                       _ids14502_
                                       _impls14503_
                                       _clauses14504_)
                                (let ((_rest1450514513_ _rest14501_))
                                  (let ((_E1450814517_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1450514513_))))
                                    (let ((_else1450714521_
                                           (lambda ()
                                             (values (reverse _ids14502_)
                                                     (reverse _impls14503_)
                                                     (reverse _clauses14504_)))))
                                      (let ((_K1450914723_
                                             (lambda (_rest14524_
                                                      _clause14525_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause14525_)
                                                   (_lp14499_
                                                    _rest14524_
                                                    _ids14502_
                                                    _impls14503_
                                                    (cons _clause14525_
                                                          _clauses14504_))
                                                   (let ((_g1452714538_
                                                          (lambda (_g1452814535_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1452814535_))))
                                                     (let ((_g1452614720_
                                                            (lambda (_g1452814541_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1452814541_)
                          (let ((_e1453114543_ (gx#stx-e _g1452814541_)))
                            (let ((_hd1453214546_ (##car _e1453114543_))
                                  (_tl1453314548_ (##cdr _e1453114543_)))
                              ((lambda (_L14551_ _L14552_)
                                 (let ((_id14569_
                                        (make-symbol
                                         (gx#stx-e _id14496_)
                                         '"__"
                                         (length _clauses14504_))))
                                   (let ((_impl14571_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L14552_ _L14551_))
                                           _stx14102_)))
                                     (let ((_clause14717_
                                            (let ((_g1457514603_
                                                   (lambda (_g1457614600_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1457614600_))))
                                              (let ((_g1457414618_
                                                     (lambda (_g1457614606_)
                                                       ((lambda (_L14608_)
                                                          (cons _L14552_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id14569_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L14608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx14102_)
                              '())))
                _g1457614606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1457314667_
                                                       (lambda (_g1457614621_)
                                                         (if (gx#stx-pair/null?
                                                              _g1457614621_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1457614621_)
                               '0)
                         (let ((_g17469_
                                (gx#syntax-split-splice _g1457614621_ '0)))
                           (begin
                             (let ((_g17470_ (values-count _g17469_)))
                               (if (not (fx= _g17470_ 2))
                                   (error "Context expects 2 values"
                                          _g17470_)))
                             (let ((_target1458914623_ (values-ref _g17469_ 0))
                                   (_tl1459114625_ (values-ref _g17469_ 1)))
                               (letrec ((_loop1459214628_
                                         (lambda (_hd1459014631_
                                                  _arg1459614633_)
                                           (if (gx#stx-pair? _hd1459014631_)
                                               (let ((_e1459314636_
                                                      (gx#stx-e
                                                       _hd1459014631_)))
                                                 (let ((_lp-hd1459414639_
                                                        (##car _e1459314636_))
                                                       (_lp-tl1459514641_
                                                        (##cdr _e1459314636_)))
                                                   (_loop1459214628_
                                                    _lp-tl1459514641_
                                                    (cons _lp-hd1459414639_
                                                          _arg1459614633_))))
                                               (let ((_arg1459714644_
                                                      (reverse _arg1459614633_)))
                                                 ((lambda (_L14647_ _L14648_)
                                                    (cons _L14552_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id14569_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L14647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1465914662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1466014664_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1465914662_ '()))
                           _g1466014664_))
                   '()
                   _L14648_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx14102_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1459114625_
                                                  _arg1459714644_))))))
                                 (_loop1459214628_ _target1458914623_ '())))))
                         (_g1457414618_ _g1457614621_))
                     (_g1457414618_ _g1457614621_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1457214714_
                                                         (lambda (_g1457614670_)
                                                           (if (gx#stx-pair/null?
                                                                _g1457614670_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1457614670_)
                                 '0)
                           (let ((_g17471_
                                  (gx#syntax-split-splice _g1457614670_ '0)))
                             (begin
                               (let ((_g17472_ (values-count _g17471_)))
                                 (if (not (fx= _g17472_ 2))
                                     (error "Context expects 2 values"
                                            _g17472_)))
                               (let ((_target1457814672_
                                      (values-ref _g17471_ 0))
                                     (_tl1458014674_ (values-ref _g17471_ 1)))
                                 (if (gx#stx-null? _tl1458014674_)
                                     (letrec ((_loop1458114677_
                                               (lambda (_hd1457914680_
                                                        _arg1458514682_)
                                                 (if (gx#stx-pair?
                                                      _hd1457914680_)
                                                     (let ((_e1458214685_
                                                            (gx#stx-e
                                                             _hd1457914680_)))
                                                       (let ((_lp-hd1458314688_
                                                              (##car _e1458214685_))
                                                             (_lp-tl1458414690_
                                                              (##cdr _e1458214685_)))
                                                         (_loop1458114677_
                                                          _lp-tl1458414690_
                                                          (cons _lp-hd1458314688_
                                                                _arg1458514682_))))
                                                     (let ((_arg1458614693_
                                                            (reverse _arg1458514682_)))
                                                       ((lambda (_L14696_)
                                                          (cons _L14552_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id14569_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1470614709_
                                                             _g1470714711_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1470614709_ '()))
                    _g1470714711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L14696_))))
                               _stx14102_)
                              '())))
                _arg1458614693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1458114677_
                                        _target1457814672_
                                        '()))
                                     (_g1457314667_ _g1457614670_)))))
                           (_g1457314667_ _g1457614670_))
                       (_g1457314667_ _g1457614670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1457214714_
                                                     _L14552_)))))))
                                       (let ()
                                         (_lp14499_
                                          _rest14524_
                                          (cons _id14569_ _ids14502_)
                                          (cons _impl14571_ _impls14503_)
                                          (cons _clause14717_
                                                _clauses14504_)))))))
                               _tl1453314548_
                               _hd1453214546_)))
                          (_g1452714538_ _g1452814541_)))))
               (_g1452614720_ _clause14525_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1450514513_)
                                            (let ((_hd1451014726_
                                                   (##car _rest1450514513_))
                                                  (_tl1451114728_
                                                   (##cdr _rest1450514513_)))
                                              (let ((_clause14731_
                                                     _hd1451014726_))
                                                (let ((_rest14733_
                                                       _tl1451114728_))
                                                  (_K1450914723_
                                                   _rest14733_
                                                   _clause14731_))))
                                            (_else1450714521_)))))))))
                      _lp14499_)
                    _clauses14497_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def14107_
                   (lambda (_id14493_ _impl14494_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id14493_ '()) (cons _impl14494_ '())))
                      _stx14102_))))
              (let ((_g1411214186_
                     (lambda (_g1411314183_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1411314183_))))
                (let ((_g1411114193_
                       (lambda (_g1411314189_) ((lambda () _stx14102_)))))
                  (let ((_g1411014329_
                         (lambda (_g1411314196_)
                           (if (gx#stx-pair? _g1411314196_)
                               (let ((_e1414914198_ (gx#stx-e _g1411314196_)))
                                 (let ((_hd1415014201_ (##car _e1414914198_))
                                       (_tl1415114203_ (##cdr _e1414914198_)))
                                   (if (gx#stx-pair? _tl1415114203_)
                                       (let ((_e1415214206_
                                              (gx#stx-e _tl1415114203_)))
                                         (let ((_hd1415314209_
                                                (##car _e1415214206_))
                                               (_tl1415414211_
                                                (##cdr _e1415214206_)))
                                           (if (gx#stx-pair? _hd1415314209_)
                                               (let ((_e1415514214_
                                                      (gx#stx-e
                                                       _hd1415314209_)))
                                                 (let ((_hd1415614217_
                                                        (##car _e1415514214_))
                                                       (_tl1415714219_
                                                        (##cdr _e1415514214_)))
                                                   (if (gx#stx-null?
                                                        _tl1415714219_)
                                                       (if (gx#stx-pair?
                                                            _tl1415414211_)
                                                           (let ((_e1415814222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1415414211_)))
                     (let ((_hd1415914225_ (##car _e1415814222_))
                           (_tl1416014227_ (##cdr _e1415814222_)))
                       (if (gx#stx-pair? _hd1415914225_)
                           (let ((_e1416114230_ (gx#stx-e _hd1415914225_)))
                             (let ((_hd1416214233_ (##car _e1416114230_))
                                   (_tl1416314235_ (##cdr _e1416114230_)))
                               (if (gx#identifier? _hd1416214233_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1416214233_)
                                       (if (gx#stx-pair? _tl1416314235_)
                                           (let ((_e1416414238_
                                                  (gx#stx-e _tl1416314235_)))
                                             (let ((_hd1416514241_
                                                    (##car _e1416414238_))
                                                   (_tl1416614243_
                                                    (##cdr _e1416414238_)))
                                               (if (gx#stx-pair?
                                                    _hd1416514241_)
                                                   (let ((_e1416714246_
                                                          (gx#stx-e
                                                           _hd1416514241_)))
                                                     (let ((_hd1416814249_
                                                            (##car _e1416714246_))
                                                           (_tl1416914251_
                                                            (##cdr _e1416714246_)))
                                                       (if (gx#stx-pair?
                                                            _hd1416814249_)
                                                           (let ((_e1417014254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1416814249_)))
                     (let ((_hd1417114257_ (##car _e1417014254_))
                           (_tl1417214259_ (##cdr _e1417014254_)))
                       (if (gx#stx-pair? _hd1417114257_)
                           (let ((_e1417314262_ (gx#stx-e _hd1417114257_)))
                             (let ((_hd1417414265_ (##car _e1417314262_))
                                   (_tl1417514267_ (##cdr _e1417314262_)))
                               (if (gx#stx-null? _tl1417514267_)
                                   (if (gx#stx-pair? _tl1417214259_)
                                       (let ((_e1417614270_
                                              (gx#stx-e _tl1417214259_)))
                                         (let ((_hd1417714273_
                                                (##car _e1417614270_))
                                               (_tl1417814275_
                                                (##cdr _e1417614270_)))
                                           (if (gx#stx-null? _tl1417814275_)
                                               (if (gx#stx-null?
                                                    _tl1416914251_)
                                                   (if (gx#stx-pair?
                                                        _tl1416614243_)
                                                       (let ((_e1417914278_
                                                              (gx#stx-e
                                                               _tl1416614243_)))
                                                         (let ((_hd1418014281_
                                                                (##car _e1417914278_))
                                                               (_tl1418114283_
                                                                (##cdr _e1417914278_)))
                                                           (if (gx#stx-null?
                                                                _tl1418114283_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1416014227_)
                           ((lambda (_L14286_ _L14287_ _L14288_ _L14289_)
                              (if (if (gx#identifier? _L14289_)
                                      (if (gx#identifier? _L14288_)
                                          (if (_lambda-expr?14104_ _L14287_)
                                              (_case-lambda-expr?14105_
                                               _L14286_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id14324_
                                         (make-symbol
                                          (gx#stx-e _L14289_)
                                          '"__"
                                          (gx#stx-e _L14288_))))
                                    (let ((_new-case-lambda-expr14326_
                                           (gxc#apply-expression-subst
                                            _L14286_
                                            _L14288_
                                            _lambda-id14324_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L14289_)
                                           '" => "
                                           _lambda-id14324_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id14324_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id14324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L14287_ '())))
                _stx14102_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L14289_ '())
                                   (cons _new-case-lambda-expr14326_ '())))
                       _stx14102_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx14102_)))))
                                  (_g1411114193_ _g1411314196_)))
                            _hd1418014281_
                            _hd1417714273_
                            _hd1417414265_
                            _hd1415614217_)
                           (_g1411114193_ _g1411314196_))
                       (_g1411114193_ _g1411314196_))))
               (_g1411114193_ _g1411314196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1411114193_
                                                    _g1411314196_))
                                               (_g1411114193_ _g1411314196_))))
                                       (_g1411114193_ _g1411314196_))
                                   (_g1411114193_ _g1411314196_))))
                           (_g1411114193_ _g1411314196_))))
                   (_g1411114193_ _g1411314196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1411114193_
                                                    _g1411314196_))))
                                           (_g1411114193_ _g1411314196_))
                                       (_g1411114193_ _g1411314196_))
                                   (_g1411114193_ _g1411314196_))))
                           (_g1411114193_ _g1411314196_))))
                   (_g1411114193_ _g1411314196_))
               (_g1411114193_ _g1411314196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1411114193_ _g1411314196_))))
                                       (_g1411114193_ _g1411314196_))))
                               (_g1411114193_ _g1411314196_)))))
                    (let ((_g1410914426_
                           (lambda (_g1411314332_)
                             (if (gx#stx-pair? _g1411314332_)
                                 (let ((_e1413314334_
                                        (gx#stx-e _g1411314332_)))
                                   (let ((_hd1413414337_ (##car _e1413314334_))
                                         (_tl1413514339_
                                          (##cdr _e1413314334_)))
                                     (if (gx#stx-pair? _tl1413514339_)
                                         (let ((_e1413614342_
                                                (gx#stx-e _tl1413514339_)))
                                           (let ((_hd1413714345_
                                                  (##car _e1413614342_))
                                                 (_tl1413814347_
                                                  (##cdr _e1413614342_)))
                                             (if (gx#stx-pair? _hd1413714345_)
                                                 (let ((_e1413914350_
                                                        (gx#stx-e
                                                         _hd1413714345_)))
                                                   (let ((_hd1414014353_
                                                          (##car _e1413914350_))
                                                         (_tl1414114355_
                                                          (##cdr _e1413914350_)))
                                                     (if (gx#stx-null?
                                                          _tl1414114355_)
                                                         (if (gx#stx-pair?
                                                              _tl1413814347_)
                                                             (let ((_e1414214358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1413814347_)))
                       (let ((_hd1414314361_ (##car _e1414214358_))
                             (_tl1414414363_ (##cdr _e1414214358_)))
                         (if (gx#stx-null? _tl1414414363_)
                             ((lambda (_L14366_ _L14367_)
                                (if (if (gx#identifier? _L14367_)
                                        (_case-lambda-expr?14105_ _L14366_)
                                        '#f)
                                    (let ((_g1438314393_
                                           (lambda (_g1438414390_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1438414390_))))
                                      (let ((_g1438214423_
                                             (lambda (_g1438414396_)
                                               (if (gx#stx-pair? _g1438414396_)
                                                   (let ((_e1438614398_
                                                          (gx#stx-e
                                                           _g1438414396_)))
                                                     (let ((_hd1438714401_
                                                            (##car _e1438614398_))
                                                           (_tl1438814403_
                                                            (##cdr _e1438614398_)))
                                                       ((lambda (_L14406_)
                                                          (let ((_g17467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses14106_ _L14367_ _L14406_)))
                    (begin
                      (let ((_g17468_ (values-count _g17467_)))
                        (if (not (fx= _g17468_ 3))
                            (error "Context expects 3 values" _g17468_)))
                      (let ((_ids14416_ (values-ref _g17467_ 0))
                            (_impls14417_ (values-ref _g17467_ 1))
                            (_clauses14418_ (values-ref _g17467_ 2)))
                        (let ((_defs14420_
                               (map _case-lambda-clause-def14107_
                                    _ids14416_
                                    _impls14417_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L14367_)
                               '" => "
                               _ids14416_)
                              (for-each gx#core-bind-runtime! _ids14416_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L14367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses14418_)
                              _L14366_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx14102_)
                                                  '())
                                            _defs14420_))
                               _stx14102_))))))))
                _tl1438814403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1438314393_
                                                    _g1438414396_)))))
                                        (_g1438214423_ _L14366_)))
                                    (_g1411014329_ _g1411314332_)))
                              _hd1414314361_
                              _hd1414014353_)
                             (_g1411014329_ _g1411314332_))))
                     (_g1411014329_ _g1411314332_))
                 (_g1411014329_ _g1411314332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1411014329_
                                                  _g1411314332_))))
                                         (_g1411014329_ _g1411314332_))))
                                 (_g1411014329_ _g1411314332_)))))
                      (let ((_g1410814490_
                             (lambda (_g1411314429_)
                               (if (gx#stx-pair? _g1411314429_)
                                   (let ((_e1411614431_
                                          (gx#stx-e _g1411314429_)))
                                     (let ((_hd1411714434_
                                            (##car _e1411614431_))
                                           (_tl1411814436_
                                            (##cdr _e1411614431_)))
                                       (if (gx#stx-pair? _tl1411814436_)
                                           (let ((_e1411914439_
                                                  (gx#stx-e _tl1411814436_)))
                                             (let ((_hd1412014442_
                                                    (##car _e1411914439_))
                                                   (_tl1412114444_
                                                    (##cdr _e1411914439_)))
                                               (if (gx#stx-pair?
                                                    _hd1412014442_)
                                                   (let ((_e1412214447_
                                                          (gx#stx-e
                                                           _hd1412014442_)))
                                                     (let ((_hd1412314450_
                                                            (##car _e1412214447_))
                                                           (_tl1412414452_
                                                            (##cdr _e1412214447_)))
                                                       (if (gx#stx-null?
                                                            _tl1412414452_)
                                                           (if (gx#stx-pair?
                                                                _tl1412114444_)
                                                               (let ((_e1412514455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1412114444_)))
                         (let ((_hd1412614458_ (##car _e1412514455_))
                               (_tl1412714460_ (##cdr _e1412514455_)))
                           (if (gx#stx-pair? _hd1412614458_)
                               (let ((_e1412814463_ (gx#stx-e _hd1412614458_)))
                                 (let ((_hd1412914466_ (##car _e1412814463_))
                                       (_tl1413014468_ (##cdr _e1412814463_)))
                                   (if (gx#identifier? _hd1412914466_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1412914466_)
                                           (if (gx#stx-null? _tl1412714460_)
                                               ((lambda (_L14471_ _L14472_)
                                                  (if (if (gx#identifier?
                                                           _L14472_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14471_)
                  '#f)
              _stx14102_
              (_g1410914426_ _g1411314429_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1413014468_
                                                _hd1412314450_)
                                               (_g1410914426_ _g1411314429_))
                                           (_g1410914426_ _g1411314429_))
                                       (_g1410914426_ _g1411314429_))))
                               (_g1410914426_ _g1411314429_))))
                       (_g1410914426_ _g1411314429_))
                   (_g1410914426_ _g1411314429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1410914426_
                                                    _g1411314429_))))
                                           (_g1410914426_ _g1411314429_))))
                                   (_g1410914426_ _g1411314429_)))))
                        (_g1410814490_ _stx14102_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14040_ _id14041_ _new-id14042_)
      (let ((_g1404514058_
             (lambda (_g1404614055_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1404614055_))))
        (let ((_g1404414065_
               (lambda (_g1404614061_) ((lambda () _stx14040_)))))
          (let ((_g1404314099_
                 (lambda (_g1404614068_)
                   (if (gx#stx-pair? _g1404614068_)
                       (let ((_e1404814070_ (gx#stx-e _g1404614068_)))
                         (let ((_hd1404914073_ (##car _e1404814070_))
                               (_tl1405014075_ (##cdr _e1404814070_)))
                           (if (gx#stx-pair? _tl1405014075_)
                               (let ((_e1405114078_ (gx#stx-e _tl1405014075_)))
                                 (let ((_hd1405214081_ (##car _e1405114078_))
                                       (_tl1405314083_ (##cdr _e1405114078_)))
                                   (if (gx#stx-null? _tl1405314083_)
                                       ((lambda (_L14086_)
                                          (if (gx#free-identifier=?
                                               _L14086_
                                               _id14041_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14042_ '()))
                                               _stx14040_)
                                              (_g1404414065_ _g1404614068_)))
                                        _hd1405214081_)
                                       (_g1404414065_ _g1404614068_))))
                               (_g1404414065_ _g1404614068_))))
                       (_g1404414065_ _g1404614068_)))))
            (_g1404314099_ _stx14040_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx13943_)
      (let ((_g1394613966_
             (lambda (_g1394713963_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1394713963_))))
        (let ((_g1394513973_ (lambda (_g1394713969_) ((lambda () '#!void)))))
          (let ((_g1394414037_
                 (lambda (_g1394713976_)
                   (if (gx#stx-pair? _g1394713976_)
                       (let ((_e1395013978_ (gx#stx-e _g1394713976_)))
                         (let ((_hd1395113981_ (##car _e1395013978_))
                               (_tl1395213983_ (##cdr _e1395013978_)))
                           (if (gx#stx-pair? _tl1395213983_)
                               (let ((_e1395313986_ (gx#stx-e _tl1395213983_)))
                                 (let ((_hd1395413989_ (##car _e1395313986_))
                                       (_tl1395513991_ (##cdr _e1395313986_)))
                                   (if (gx#stx-pair? _hd1395413989_)
                                       (let ((_e1395613994_
                                              (gx#stx-e _hd1395413989_)))
                                         (let ((_hd1395713997_
                                                (##car _e1395613994_))
                                               (_tl1395813999_
                                                (##cdr _e1395613994_)))
                                           (if (gx#stx-null? _tl1395813999_)
                                               (if (gx#stx-pair?
                                                    _tl1395513991_)
                                                   (let ((_e1395914002_
                                                          (gx#stx-e
                                                           _tl1395513991_)))
                                                     (let ((_hd1396014005_
                                                            (##car _e1395914002_))
                                                           (_tl1396114007_
                                                            (##cdr _e1395914002_)))
                                                       (if (gx#stx-null?
                                                            _tl1396114007_)
                                                           ((lambda (_L14010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14011_)
                      (let ((_sym14029_ (gxc#identifier-symbol _L14011_)))
                        (if (table-ref
                             (gxc#current-compile-mutators)
                             _sym14029_
                             '#f)
                            (gxc#verbose
                             '"skipping type declaration for mutable binding "
                             _sym14029_)
                            (let ((_type1403014032_
                                   (gxc#apply-basic-expression-type _L14010_)))
                              (if _type1403014032_
                                  (let ((_type14035_ _type1403014032_))
                                    (gxc#optimizer-declare-type!
                                     _sym14029_
                                     _type14035_))
                                  '#f)))))
                    _hd1396014005_
                    _hd1395713997_)
                   (_g1394513973_ _g1394713976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1394513973_
                                                    _g1394713976_))
                                               (_g1394513973_ _g1394713976_))))
                                       (_g1394513973_ _g1394713976_))))
                               (_g1394513973_ _g1394713976_))))
                       (_g1394513973_ _g1394713976_)))))
            (_g1394414037_ _stx13943_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13497_)
      (let ((_g1350113603_
             (lambda (_g1350213600_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1350213600_))))
        (let ((_g1350013610_ (lambda (_g1350213606_) ((lambda () '#!void)))))
          (let ((_g1349913760_
                 (lambda (_g1350213613_)
                   (if (gx#stx-pair? _g1350213613_)
                       (let ((_e1356013615_ (gx#stx-e _g1350213613_)))
                         (let ((_hd1356113618_ (##car _e1356013615_))
                               (_tl1356213620_ (##cdr _e1356013615_)))
                           (if (gx#stx-pair? _tl1356213620_)
                               (let ((_e1356313623_ (gx#stx-e _tl1356213620_)))
                                 (let ((_hd1356413626_ (##car _e1356313623_))
                                       (_tl1356513628_ (##cdr _e1356313623_)))
                                   (if (gx#stx-pair? _hd1356413626_)
                                       (let ((_e1356613631_
                                              (gx#stx-e _hd1356413626_)))
                                         (let ((_hd1356713634_
                                                (##car _e1356613631_))
                                               (_tl1356813636_
                                                (##cdr _e1356613631_)))
                                           (if (gx#identifier? _hd1356713634_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1356713634_)
                                                   (if (gx#stx-pair?
                                                        _tl1356813636_)
                                                       (let ((_e1356913639_
                                                              (gx#stx-e
                                                               _tl1356813636_)))
                                                         (let ((_hd1357013642_
                                                                (##car _e1356913639_))
                                                               (_tl1357113644_
                                                                (##cdr _e1356913639_)))
                                                           (if (gx#stx-null?
                                                                _tl1357113644_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1356513628_)
                           (let ((_e1357213647_ (gx#stx-e _tl1356513628_)))
                             (let ((_hd1357313650_ (##car _e1357213647_))
                                   (_tl1357413652_ (##cdr _e1357213647_)))
                               (if (gx#stx-pair? _hd1357313650_)
                                   (let ((_e1357513655_
                                          (gx#stx-e _hd1357313650_)))
                                     (let ((_hd1357613658_
                                            (##car _e1357513655_))
                                           (_tl1357713660_
                                            (##cdr _e1357513655_)))
                                       (if (gx#identifier? _hd1357613658_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1357613658_)
                                               (if (gx#stx-pair?
                                                    _tl1357713660_)
                                                   (let ((_e1357813663_
                                                          (gx#stx-e
                                                           _tl1357713660_)))
                                                     (let ((_hd1357913666_
                                                            (##car _e1357813663_))
                                                           (_tl1358013668_
                                                            (##cdr _e1357813663_)))
                                                       (if (gx#stx-null?
                                                            _tl1358013668_)
                                                           (if (gx#stx-pair?
                                                                _tl1357413652_)
                                                               (let ((_e1358113671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1357413652_)))
                         (let ((_hd1358213674_ (##car _e1358113671_))
                               (_tl1358313676_ (##cdr _e1358113671_)))
                           (if (gx#stx-pair? _hd1358213674_)
                               (let ((_e1358413679_ (gx#stx-e _hd1358213674_)))
                                 (let ((_hd1358513682_ (##car _e1358413679_))
                                       (_tl1358613684_ (##cdr _e1358413679_)))
                                   (if (gx#identifier? _hd1358513682_)
                                       (if (gx#stx-eq? '%#quote _hd1358513682_)
                                           (if (gx#stx-pair? _tl1358613684_)
                                               (let ((_e1358713687_
                                                      (gx#stx-e
                                                       _tl1358613684_)))
                                                 (let ((_hd1358813690_
                                                        (##car _e1358713687_))
                                                       (_tl1358913692_
                                                        (##cdr _e1358713687_)))
                                                   (if (gx#stx-null?
                                                        _tl1358913692_)
                                                       (if (gx#stx-pair?
                                                            _tl1358313676_)
                                                           (let ((_e1359013695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1358313676_)))
                     (let ((_hd1359113698_ (##car _e1359013695_))
                           (_tl1359213700_ (##cdr _e1359013695_)))
                       (if (gx#stx-pair? _hd1359113698_)
                           (let ((_e1359313703_ (gx#stx-e _hd1359113698_)))
                             (let ((_hd1359413706_ (##car _e1359313703_))
                                   (_tl1359513708_ (##cdr _e1359313703_)))
                               (if (gx#identifier? _hd1359413706_)
                                   (if (gx#stx-eq? '%#ref _hd1359413706_)
                                       (if (gx#stx-pair? _tl1359513708_)
                                           (let ((_e1359613711_
                                                  (gx#stx-e _tl1359513708_)))
                                             (let ((_hd1359713714_
                                                    (##car _e1359613711_))
                                                   (_tl1359813716_
                                                    (##cdr _e1359613711_)))
                                               (if (gx#stx-null?
                                                    _tl1359813716_)
                                                   (if (gx#stx-null?
                                                        _tl1359213700_)
                                                       ((lambda (_L13719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13720_
                         _L13721_
                         _L13722_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda17222
                       (gxc#identifier-symbol _L13721_)
                       (gx#stx-e _L13720_)
                       (gxc#identifier-symbol _L13719_)
                       '#f)
                      (_g1350013610_ _g1350213613_)))
                _hd1359713714_
                _hd1358813690_
                _hd1357913666_
                _hd1357013642_)
               (_g1350013610_ _g1350213613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1350013610_
                                                    _g1350213613_))))
                                           (_g1350013610_ _g1350213613_))
                                       (_g1350013610_ _g1350213613_))
                                   (_g1350013610_ _g1350213613_))))
                           (_g1350013610_ _g1350213613_))))
                   (_g1350013610_ _g1350213613_))
               (_g1350013610_ _g1350213613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1350013610_ _g1350213613_))
                                           (_g1350013610_ _g1350213613_))
                                       (_g1350013610_ _g1350213613_))))
                               (_g1350013610_ _g1350213613_))))
                       (_g1350013610_ _g1350213613_))
                   (_g1350013610_ _g1350213613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1350013610_
                                                    _g1350213613_))
                                               (_g1350013610_ _g1350213613_))
                                           (_g1350013610_ _g1350213613_))))
                                   (_g1350013610_ _g1350213613_))))
                           (_g1350013610_ _g1350213613_))
                       (_g1350013610_ _g1350213613_))))
               (_g1350013610_ _g1350213613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1350013610_
                                                    _g1350213613_))
                                               (_g1350013610_ _g1350213613_))))
                                       (_g1350013610_ _g1350213613_))))
                               (_g1350013610_ _g1350213613_))))
                       (_g1350013610_ _g1350213613_)))))
            (let ((_g1349813940_
                   (lambda (_g1350213763_)
                     (if (gx#stx-pair? _g1350213763_)
                         (let ((_e1350813765_ (gx#stx-e _g1350213763_)))
                           (let ((_hd1350913768_ (##car _e1350813765_))
                                 (_tl1351013770_ (##cdr _e1350813765_)))
                             (if (gx#stx-pair? _tl1351013770_)
                                 (let ((_e1351113773_
                                        (gx#stx-e _tl1351013770_)))
                                   (let ((_hd1351213776_ (##car _e1351113773_))
                                         (_tl1351313778_
                                          (##cdr _e1351113773_)))
                                     (if (gx#stx-pair? _hd1351213776_)
                                         (let ((_e1351413781_
                                                (gx#stx-e _hd1351213776_)))
                                           (let ((_hd1351513784_
                                                  (##car _e1351413781_))
                                                 (_tl1351613786_
                                                  (##cdr _e1351413781_)))
                                             (if (gx#identifier?
                                                  _hd1351513784_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1351513784_)
                                                     (if (gx#stx-pair?
                                                          _tl1351613786_)
                                                         (let ((_e1351713789_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1351613786_)))
                   (let ((_hd1351813792_ (##car _e1351713789_))
                         (_tl1351913794_ (##cdr _e1351713789_)))
                     (if (gx#stx-null? _tl1351913794_)
                         (if (gx#stx-pair? _tl1351313778_)
                             (let ((_e1352013797_ (gx#stx-e _tl1351313778_)))
                               (let ((_hd1352113800_ (##car _e1352013797_))
                                     (_tl1352213802_ (##cdr _e1352013797_)))
                                 (if (gx#stx-pair? _hd1352113800_)
                                     (let ((_e1352313805_
                                            (gx#stx-e _hd1352113800_)))
                                       (let ((_hd1352413808_
                                              (##car _e1352313805_))
                                             (_tl1352513810_
                                              (##cdr _e1352313805_)))
                                         (if (gx#identifier? _hd1352413808_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1352413808_)
                                                 (if (gx#stx-pair?
                                                      _tl1352513810_)
                                                     (let ((_e1352613813_
                                                            (gx#stx-e
                                                             _tl1352513810_)))
                                                       (let ((_hd1352713816_
                                                              (##car _e1352613813_))
                                                             (_tl1352813818_
                                                              (##cdr _e1352613813_)))
                                                         (if (gx#stx-null?
                                                              _tl1352813818_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1352213802_)
                         (let ((_e1352913821_ (gx#stx-e _tl1352213802_)))
                           (let ((_hd1353013824_ (##car _e1352913821_))
                                 (_tl1353113826_ (##cdr _e1352913821_)))
                             (if (gx#stx-pair? _hd1353013824_)
                                 (let ((_e1353213829_
                                        (gx#stx-e _hd1353013824_)))
                                   (let ((_hd1353313832_ (##car _e1353213829_))
                                         (_tl1353413834_
                                          (##cdr _e1353213829_)))
                                     (if (gx#identifier? _hd1353313832_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1353313832_)
                                             (if (gx#stx-pair? _tl1353413834_)
                                                 (let ((_e1353513837_
                                                        (gx#stx-e
                                                         _tl1353413834_)))
                                                   (let ((_hd1353613840_
                                                          (##car _e1353513837_))
                                                         (_tl1353713842_
                                                          (##cdr _e1353513837_)))
                                                     (if (gx#stx-null?
                                                          _tl1353713842_)
                                                         (if (gx#stx-pair?
                                                              _tl1353113826_)
                                                             (let ((_e1353813845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1353113826_)))
                       (let ((_hd1353913848_ (##car _e1353813845_))
                             (_tl1354013850_ (##cdr _e1353813845_)))
                         (if (gx#stx-pair? _hd1353913848_)
                             (let ((_e1354113853_ (gx#stx-e _hd1353913848_)))
                               (let ((_hd1354213856_ (##car _e1354113853_))
                                     (_tl1354313858_ (##cdr _e1354113853_)))
                                 (if (gx#identifier? _hd1354213856_)
                                     (if (gx#stx-eq? '%#ref _hd1354213856_)
                                         (if (gx#stx-pair? _tl1354313858_)
                                             (let ((_e1354413861_
                                                    (gx#stx-e _tl1354313858_)))
                                               (let ((_hd1354513864_
                                                      (##car _e1354413861_))
                                                     (_tl1354613866_
                                                      (##cdr _e1354413861_)))
                                                 (if (gx#stx-null?
                                                      _tl1354613866_)
                                                     (if (gx#stx-pair?
                                                          _tl1354013850_)
                                                         (let ((_e1354713869_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1354013850_)))
                   (let ((_hd1354813872_ (##car _e1354713869_))
                         (_tl1354913874_ (##cdr _e1354713869_)))
                     (if (gx#stx-pair? _hd1354813872_)
                         (let ((_e1355013877_ (gx#stx-e _hd1354813872_)))
                           (let ((_hd1355113880_ (##car _e1355013877_))
                                 (_tl1355213882_ (##cdr _e1355013877_)))
                             (if (gx#identifier? _hd1355113880_)
                                 (if (gx#stx-eq? '%#quote _hd1355113880_)
                                     (if (gx#stx-pair? _tl1355213882_)
                                         (let ((_e1355313885_
                                                (gx#stx-e _tl1355213882_)))
                                           (let ((_hd1355413888_
                                                  (##car _e1355313885_))
                                                 (_tl1355513890_
                                                  (##cdr _e1355313885_)))
                                             (if (gx#stx-null? _tl1355513890_)
                                                 (if (gx#stx-null?
                                                      _tl1354913874_)
                                                     ((lambda (_L13893_
                                                               _L13894_
                                                               _L13895_
                                                               _L13896_
                                                               _L13897_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13897_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda17222
                     (gxc#identifier-symbol _L13896_)
                     (gx#stx-e _L13895_)
                     (gxc#identifier-symbol _L13894_)
                     (gx#stx-e _L13893_))
                    (_g1349913760_ _g1350213763_)))
              _hd1355413888_
              _hd1354513864_
              _hd1353613840_
              _hd1352713816_
              _hd1351813792_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1349913760_
                                                      _g1350213763_))
                                                 (_g1349913760_
                                                  _g1350213763_))))
                                         (_g1349913760_ _g1350213763_))
                                     (_g1349913760_ _g1350213763_))
                                 (_g1349913760_ _g1350213763_))))
                         (_g1349913760_ _g1350213763_))))
                 (_g1349913760_ _g1350213763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1349913760_
                                                      _g1350213763_))))
                                             (_g1349913760_ _g1350213763_))
                                         (_g1349913760_ _g1350213763_))
                                     (_g1349913760_ _g1350213763_))))
                             (_g1349913760_ _g1350213763_))))
                     (_g1349913760_ _g1350213763_))
                 (_g1349913760_ _g1350213763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1349913760_ _g1350213763_))
                                             (_g1349913760_ _g1350213763_))
                                         (_g1349913760_ _g1350213763_))))
                                 (_g1349913760_ _g1350213763_))))
                         (_g1349913760_ _g1350213763_))
                     (_g1349913760_ _g1350213763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1349913760_
                                                      _g1350213763_))
                                                 (_g1349913760_ _g1350213763_))
                                             (_g1349913760_ _g1350213763_))))
                                     (_g1349913760_ _g1350213763_))))
                             (_g1349913760_ _g1350213763_))
                         (_g1349913760_ _g1350213763_))))
                 (_g1349913760_ _g1350213763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1349913760_
                                                      _g1350213763_))
                                                 (_g1349913760_
                                                  _g1350213763_))))
                                         (_g1349913760_ _g1350213763_))))
                                 (_g1349913760_ _g1350213763_))))
                         (_g1349913760_ _g1350213763_)))))
              (_g1349813940_ _stx13497_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13437_)
      (let ((_g1344013453_
             (lambda (_g1344113450_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1344113450_))))
        (let ((_g1343913460_ (lambda (_g1344113456_) ((lambda () '#f)))))
          (let ((_g1343813494_
                 (lambda (_g1344113463_)
                   (if (gx#stx-pair? _g1344113463_)
                       (let ((_e1344313465_ (gx#stx-e _g1344113463_)))
                         (let ((_hd1344413468_ (##car _e1344313465_))
                               (_tl1344513470_ (##cdr _e1344313465_)))
                           (if (gx#stx-pair? _tl1344513470_)
                               (let ((_e1344613473_ (gx#stx-e _tl1344513470_)))
                                 (let ((_hd1344713476_ (##car _e1344613473_))
                                       (_tl1344813478_ (##cdr _e1344613473_)))
                                   (if (gx#stx-null? _tl1344813478_)
                                       ((lambda (_L13481_)
                                          (gxc#compile-e _L13481_))
                                        _hd1344713476_)
                                       (_g1343913460_ _g1344113463_))))
                               (_g1343913460_ _g1344113463_))))
                       (_g1343913460_ _g1344113463_)))))
            (_g1343813494_ _stx13437_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12862_)
      (let ((_g1286712988_
             (lambda (_g1286812985_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1286812985_))))
        (let ((_g1286612995_ (lambda (_g1286812991_) ((lambda () '#f)))))
          (let ((_g1286513019_
                 (lambda (_g1286812998_)
                   (if (gx#stx-pair? _g1286812998_)
                       (let ((_e1298113000_ (gx#stx-e _g1286812998_)))
                         (let ((_hd1298213003_ (##car _e1298113000_))
                               (_tl1298313005_ (##cdr _e1298113000_)))
                           ((lambda (_L13008_)
                              (if (gxc#dispatch-lambda-form? _L13008_)
                                  (let ((__obj17437
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj17437
                                       'lambda
                                       (gxc#lambda-form-arity _L13008_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13008_))
                                      __obj17437))
                                  (_g1286612995_ _g1286812998_)))
                            _tl1298313005_)))
                       (_g1286612995_ _g1286812998_)))))
            (let ((_g1286413249_
                   (lambda (_g1286813022_)
                     (if (gx#stx-pair? _g1286813022_)
                         (let ((_e1292613024_ (gx#stx-e _g1286813022_)))
                           (let ((_hd1292713027_ (##car _e1292613024_))
                                 (_tl1292813029_ (##cdr _e1292613024_)))
                             (if (gx#stx-pair? _tl1292813029_)
                                 (let ((_e1292913032_
                                        (gx#stx-e _tl1292813029_)))
                                   (let ((_hd1293013035_ (##car _e1292913032_))
                                         (_tl1293113037_
                                          (##cdr _e1292913032_)))
                                     (if (gx#stx-pair/null? _hd1293013035_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1293013035_)
                                                   '0)
                                             (let ((_g17473_
                                                    (gx#syntax-split-splice
                                                     _hd1293013035_
                                                     '0)))
                                               (begin
                                                 (let ((_g17474_
                                                        (values-count
                                                         _g17473_)))
                                                   (if (not (fx= _g17474_ 2))
                                                       (error "Context expects 2 values"
                                                              _g17474_)))
                                                 (let ((_target1293213040_
                                                        (values-ref
                                                         _g17473_
                                                         0))
                                                       (_tl1293413042_
                                                        (values-ref
                                                         _g17473_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1293413042_)
                                                       (letrec ((_loop1293513045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1293313048_ _arg1293913050_)
                           (if (gx#stx-pair? _hd1293313048_)
                               (let ((_e1293613053_ (gx#stx-e _hd1293313048_)))
                                 (let ((_lp-hd1293713056_
                                        (##car _e1293613053_))
                                       (_lp-tl1293813058_
                                        (##cdr _e1293613053_)))
                                   (_loop1293513045_
                                    _lp-tl1293813058_
                                    (cons _lp-hd1293713056_ _arg1293913050_))))
                               (let ((_arg1294013061_
                                      (reverse _arg1293913050_)))
                                 (if (gx#stx-pair? _tl1293113037_)
                                     (let ((_e1294113064_
                                            (gx#stx-e _tl1293113037_)))
                                       (let ((_hd1294213067_
                                              (##car _e1294113064_))
                                             (_tl1294313069_
                                              (##cdr _e1294113064_)))
                                         (if (gx#stx-pair? _hd1294213067_)
                                             (let ((_e1294413072_
                                                    (gx#stx-e _hd1294213067_)))
                                               (let ((_hd1294513075_
                                                      (##car _e1294413072_))
                                                     (_tl1294613077_
                                                      (##cdr _e1294413072_)))
                                                 (if (gx#identifier?
                                                      _hd1294513075_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1294513075_)
                                                         (if (gx#stx-pair?
                                                              _tl1294613077_)
                                                             (let ((_e1294713080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1294613077_)))
                       (let ((_hd1294813083_ (##car _e1294713080_))
                             (_tl1294913085_ (##cdr _e1294713080_)))
                         (if (gx#stx-pair? _hd1294813083_)
                             (let ((_e1295013088_ (gx#stx-e _hd1294813083_)))
                               (let ((_hd1295113091_ (##car _e1295013088_))
                                     (_tl1295213093_ (##cdr _e1295013088_)))
                                 (if (gx#identifier? _hd1295113091_)
                                     (if (gx#stx-eq? '%#ref _hd1295113091_)
                                         (if (gx#stx-pair? _tl1295213093_)
                                             (let ((_e1295313096_
                                                    (gx#stx-e _tl1295213093_)))
                                               (let ((_hd1295413099_
                                                      (##car _e1295313096_))
                                                     (_tl1295513101_
                                                      (##cdr _e1295313096_)))
                                                 (if (gx#stx-null?
                                                      _tl1295513101_)
                                                     (if (gx#stx-pair?
                                                          _tl1294913085_)
                                                         (let ((_e1295613104_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1294913085_)))
                   (let ((_hd1295713107_ (##car _e1295613104_))
                         (_tl1295813109_ (##cdr _e1295613104_)))
                     (if (gx#stx-pair? _hd1295713107_)
                         (let ((_e1295913112_ (gx#stx-e _hd1295713107_)))
                           (let ((_hd1296013115_ (##car _e1295913112_))
                                 (_tl1296113117_ (##cdr _e1295913112_)))
                             (if (gx#identifier? _hd1296013115_)
                                 (if (gx#stx-eq? '%#ref _hd1296013115_)
                                     (if (gx#stx-pair? _tl1296113117_)
                                         (let ((_e1296213120_
                                                (gx#stx-e _tl1296113117_)))
                                           (let ((_hd1296313123_
                                                  (##car _e1296213120_))
                                                 (_tl1296413125_
                                                  (##cdr _e1296213120_)))
                                             (if (gx#stx-null? _tl1296413125_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1295813109_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1295813109_)
                                                               '0)
                                                         (let ((_g17475_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1295813109_
                         '0)))
                   (begin
                     (let ((_g17476_ (values-count _g17475_)))
                       (if (not (fx= _g17476_ 2))
                           (error "Context expects 2 values" _g17476_)))
                     (let ((_target1296513128_ (values-ref _g17475_ 0))
                           (_tl1296713130_ (values-ref _g17475_ 1)))
                       (if (gx#stx-null? _tl1296713130_)
                           (letrec ((_loop1296813133_
                                     (lambda (_hd1296613136_ _xarg1297213138_)
                                       (if (gx#stx-pair? _hd1296613136_)
                                           (let ((_e1296913141_
                                                  (gx#stx-e _hd1296613136_)))
                                             (let ((_lp-hd1297013144_
                                                    (##car _e1296913141_))
                                                   (_lp-tl1297113146_
                                                    (##cdr _e1296913141_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1297013144_)
                                                   (let ((_e1297413149_
                                                          (gx#stx-e
                                                           _lp-hd1297013144_)))
                                                     (let ((_hd1297513152_
                                                            (##car _e1297413149_))
                                                           (_tl1297613154_
                                                            (##cdr _e1297413149_)))
                                                       (if (gx#identifier?
                                                            _hd1297513152_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1297513152_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1297613154_)
                           (let ((_e1297713157_ (gx#stx-e _tl1297613154_)))
                             (let ((_hd1297813160_ (##car _e1297713157_))
                                   (_tl1297913162_ (##cdr _e1297713157_)))
                               (if (gx#stx-null? _tl1297913162_)
                                   (_loop1296813133_
                                    _lp-tl1297113146_
                                    (cons _hd1297813160_ _xarg1297213138_))
                                   (_g1286513019_ _g1286813022_))))
                           (_g1286513019_ _g1286813022_))
                       (_g1286513019_ _g1286813022_))
                   (_g1286513019_ _g1286813022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1286513019_
                                                    _g1286813022_))))
                                           (let ((_xarg1297313165_
                                                  (reverse _xarg1297213138_)))
                                             (if (gx#stx-null? _tl1294313069_)
                                                 ((lambda (_L13168_
                                                           _L13169_
                                                           _L13170_
                                                           _L13171_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1320813211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1320913213_)
                                (cons _g1320813211_ _g1320913213_))
                              '()
                              _L13171_)))
                    (if (eq? (gxc#identifier-symbol _L13170_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1321513218_
                                                           _g1321613220_)
                                                    (cons _g1321513218_
                                                          _g1321613220_))
                                                  '()
                                                  _L13171_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1322213225_
                                                           _g1322313227_)
                                                    (cons _g1322213225_
                                                          _g1322313227_))
                                                  '()
                                                  _L13168_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1322913232_
                                                      _g1323013234_)
                                               (cons _g1322913232_
                                                     _g1323013234_))
                                             '()
                                             _L13171_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1323613239_
                                                      _g1323713241_)
                                               (cons _g1323613239_
                                                     _g1323713241_))
                                             '()
                                             _L13168_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13244_ (gxc#identifier-symbol _L13169_)))
                  (let ((_type13246_
                         (gxc#optimizer-resolve-type _type-t13244_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13246_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13244_)
                          '#f))))
                (_g1286513019_ _g1286813022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1297313165_
                                                  _hd1296313123_
                                                  _hd1295413099_
                                                  _arg1294013061_)
                                                 (_g1286513019_
                                                  _g1286813022_)))))))
                             (_loop1296813133_ _target1296513128_ '()))
                           (_g1286513019_ _g1286813022_)))))
                 (_g1286513019_ _g1286813022_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1286513019_
                                                      _g1286813022_))
                                                 (_g1286513019_
                                                  _g1286813022_))))
                                         (_g1286513019_ _g1286813022_))
                                     (_g1286513019_ _g1286813022_))
                                 (_g1286513019_ _g1286813022_))))
                         (_g1286513019_ _g1286813022_))))
                 (_g1286513019_ _g1286813022_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1286513019_
                                                      _g1286813022_))))
                                             (_g1286513019_ _g1286813022_))
                                         (_g1286513019_ _g1286813022_))
                                     (_g1286513019_ _g1286813022_))))
                             (_g1286513019_ _g1286813022_))))
                     (_g1286513019_ _g1286813022_))
                 (_g1286513019_ _g1286813022_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1286513019_
                                                      _g1286813022_))))
                                             (_g1286513019_ _g1286813022_))))
                                     (_g1286513019_ _g1286813022_)))))))
                 (_loop1293513045_ _target1293213040_ '()))
               (_g1286513019_ _g1286813022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1286513019_ _g1286813022_))
                                         (_g1286513019_ _g1286813022_))))
                                 (_g1286513019_ _g1286813022_))))
                         (_g1286513019_ _g1286813022_)))))
              (let ((_g1286313434_
                     (lambda (_g1286813252_)
                       (if (gx#stx-pair? _g1286813252_)
                           (let ((_e1287413254_ (gx#stx-e _g1286813252_)))
                             (let ((_hd1287513257_ (##car _e1287413254_))
                                   (_tl1287613259_ (##cdr _e1287413254_)))
                               (if (gx#stx-pair? _tl1287613259_)
                                   (let ((_e1287713262_
                                          (gx#stx-e _tl1287613259_)))
                                     (let ((_hd1287813265_
                                            (##car _e1287713262_))
                                           (_tl1287913267_
                                            (##cdr _e1287713262_)))
                                       (if (gx#stx-pair? _tl1287913267_)
                                           (let ((_e1288013270_
                                                  (gx#stx-e _tl1287913267_)))
                                             (let ((_hd1288113273_
                                                    (##car _e1288013270_))
                                                   (_tl1288213275_
                                                    (##cdr _e1288013270_)))
                                               (if (gx#stx-pair?
                                                    _hd1288113273_)
                                                   (let ((_e1288313278_
                                                          (gx#stx-e
                                                           _hd1288113273_)))
                                                     (let ((_hd1288413281_
                                                            (##car _e1288313278_))
                                                           (_tl1288513283_
                                                            (##cdr _e1288313278_)))
                                                       (if (gx#identifier?
                                                            _hd1288413281_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1288413281_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1288513283_)
                           (let ((_e1288613286_ (gx#stx-e _tl1288513283_)))
                             (let ((_hd1288713289_ (##car _e1288613286_))
                                   (_tl1288813291_ (##cdr _e1288613286_)))
                               (if (gx#stx-pair? _hd1288713289_)
                                   (let ((_e1288913294_
                                          (gx#stx-e _hd1288713289_)))
                                     (let ((_hd1289013297_
                                            (##car _e1288913294_))
                                           (_tl1289113299_
                                            (##cdr _e1288913294_)))
                                       (if (gx#identifier? _hd1289013297_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1289013297_)
                                               (if (gx#stx-pair?
                                                    _tl1289113299_)
                                                   (let ((_e1289213302_
                                                          (gx#stx-e
                                                           _tl1289113299_)))
                                                     (let ((_hd1289313305_
                                                            (##car _e1289213302_))
                                                           (_tl1289413307_
                                                            (##cdr _e1289213302_)))
                                                       (if (gx#stx-null?
                                                            _tl1289413307_)
                                                           (if (gx#stx-pair?
                                                                _tl1288813291_)
                                                               (let ((_e1289513310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1288813291_)))
                         (let ((_hd1289613313_ (##car _e1289513310_))
                               (_tl1289713315_ (##cdr _e1289513310_)))
                           (if (gx#stx-pair? _hd1289613313_)
                               (let ((_e1289813318_ (gx#stx-e _hd1289613313_)))
                                 (let ((_hd1289913321_ (##car _e1289813318_))
                                       (_tl1290013323_ (##cdr _e1289813318_)))
                                   (if (gx#identifier? _hd1289913321_)
                                       (if (gx#stx-eq? '%#ref _hd1289913321_)
                                           (if (gx#stx-pair? _tl1290013323_)
                                               (let ((_e1290113326_
                                                      (gx#stx-e
                                                       _tl1290013323_)))
                                                 (let ((_hd1290213329_
                                                        (##car _e1290113326_))
                                                       (_tl1290313331_
                                                        (##cdr _e1290113326_)))
                                                   (if (gx#stx-null?
                                                        _tl1290313331_)
                                                       (if (gx#stx-pair?
                                                            _tl1289713315_)
                                                           (let ((_e1290413334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1289713315_)))
                     (let ((_hd1290513337_ (##car _e1290413334_))
                           (_tl1290613339_ (##cdr _e1290413334_)))
                       (if (gx#stx-pair? _hd1290513337_)
                           (let ((_e1290713342_ (gx#stx-e _hd1290513337_)))
                             (let ((_hd1290813345_ (##car _e1290713342_))
                                   (_tl1290913347_ (##cdr _e1290713342_)))
                               (if (gx#identifier? _hd1290813345_)
                                   (if (gx#stx-eq? '%#ref _hd1290813345_)
                                       (if (gx#stx-pair? _tl1290913347_)
                                           (let ((_e1291013350_
                                                  (gx#stx-e _tl1290913347_)))
                                             (let ((_hd1291113353_
                                                    (##car _e1291013350_))
                                                   (_tl1291213355_
                                                    (##cdr _e1291013350_)))
                                               (if (gx#stx-null?
                                                    _tl1291213355_)
                                                   (if (gx#stx-pair?
                                                        _tl1290613339_)
                                                       (let ((_e1291313358_
                                                              (gx#stx-e
                                                               _tl1290613339_)))
                                                         (let ((_hd1291413361_
                                                                (##car _e1291313358_))
                                                               (_tl1291513363_
                                                                (##cdr _e1291313358_)))
                                                           (if (gx#stx-pair?
                                                                _hd1291413361_)
                                                               (let ((_e1291613366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1291413361_)))
                         (let ((_hd1291713369_ (##car _e1291613366_))
                               (_tl1291813371_ (##cdr _e1291613366_)))
                           (if (gx#identifier? _hd1291713369_)
                               (if (gx#stx-eq? '%#ref _hd1291713369_)
                                   (if (gx#stx-pair? _tl1291813371_)
                                       (let ((_e1291913374_
                                              (gx#stx-e _tl1291813371_)))
                                         (let ((_hd1292013377_
                                                (##car _e1291913374_))
                                               (_tl1292113379_
                                                (##cdr _e1291913374_)))
                                           (if (gx#stx-null? _tl1292113379_)
                                               (if (gx#stx-null?
                                                    _tl1291513363_)
                                                   (if (gx#stx-null?
                                                        _tl1288213275_)
                                                       ((lambda (_L13382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13383_
                         _L13384_
                         _L13385_
                         _L13386_)
                  (if (if (gx#identifier? _L13386_)
                          (if (eq? (gxc#identifier-symbol _L13385_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L13384_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13386_ _L13382_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13429_ (gxc#identifier-symbol _L13383_)))
                        (let ((_type13431_
                               (gxc#optimizer-resolve-type _type-t13429_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13431_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13429_)
                                '#f))))
                      (_g1286413249_ _g1286813252_)))
                _hd1292013377_
                _hd1291113353_
                _hd1290213329_
                _hd1289313305_
                _hd1287813265_)
               (_g1286413249_ _g1286813252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1286413249_
                                                    _g1286813252_))
                                               (_g1286413249_ _g1286813252_))))
                                       (_g1286413249_ _g1286813252_))
                                   (_g1286413249_ _g1286813252_))
                               (_g1286413249_ _g1286813252_))))
                       (_g1286413249_ _g1286813252_))))
               (_g1286413249_ _g1286813252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1286413249_
                                                    _g1286813252_))))
                                           (_g1286413249_ _g1286813252_))
                                       (_g1286413249_ _g1286813252_))
                                   (_g1286413249_ _g1286813252_))))
                           (_g1286413249_ _g1286813252_))))
                   (_g1286413249_ _g1286813252_))
               (_g1286413249_ _g1286813252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1286413249_ _g1286813252_))
                                           (_g1286413249_ _g1286813252_))
                                       (_g1286413249_ _g1286813252_))))
                               (_g1286413249_ _g1286813252_))))
                       (_g1286413249_ _g1286813252_))
                   (_g1286413249_ _g1286813252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1286413249_
                                                    _g1286813252_))
                                               (_g1286413249_ _g1286813252_))
                                           (_g1286413249_ _g1286813252_))))
                                   (_g1286413249_ _g1286813252_))))
                           (_g1286413249_ _g1286813252_))
                       (_g1286413249_ _g1286813252_))
                   (_g1286413249_ _g1286813252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1286413249_
                                                    _g1286813252_))))
                                           (_g1286413249_ _g1286813252_))))
                                   (_g1286413249_ _g1286813252_))))
                           (_g1286413249_ _g1286813252_)))))
                (_g1286313434_ _stx12862_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12808_)
      (let ((_clause-e12810_
             (lambda (_form12860_)
               (let ((__obj17438 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj17438
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12860_)
                    (gxc#dispatch-lambda-form-delegate _form12860_))
                   __obj17438)))))
        (let ((_g1281312823_
               (lambda (_g1281412820_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1281412820_))))
          (let ((_g1281212830_ (lambda (_g1281412826_) ((lambda () '#f)))))
            (let ((_g1281112857_
                   (lambda (_g1281412833_)
                     (if (gx#stx-pair? _g1281412833_)
                         (let ((_e1281612835_ (gx#stx-e _g1281412833_)))
                           (let ((_hd1281712838_ (##car _e1281612835_))
                                 (_tl1281812840_ (##cdr _e1281612835_)))
                             ((lambda (_L12843_)
                                (if (andmap gxc#dispatch-lambda-form? _L12843_)
                                    (let ((_clauses12855_
                                           (map _clause-e12810_ _L12843_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12855_))
                                    (_g1281212830_ _g1281412833_)))
                              _tl1281812840_)))
                         (_g1281212830_ _g1281412833_)))))
              (_g1281112857_ _stx12808_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12713_)
      (let ((_g1271612736_
             (lambda (_g1271712733_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1271712733_))))
        (let ((_g1271512743_ (lambda (_g1271712739_) ((lambda () '#f)))))
          (let ((_g1271412805_
                 (lambda (_g1271712746_)
                   (if (gx#stx-pair? _g1271712746_)
                       (let ((_e1272012748_ (gx#stx-e _g1271712746_)))
                         (let ((_hd1272112751_ (##car _e1272012748_))
                               (_tl1272212753_ (##cdr _e1272012748_)))
                           (if (gx#stx-pair? _tl1272212753_)
                               (let ((_e1272312756_ (gx#stx-e _tl1272212753_)))
                                 (let ((_hd1272412759_ (##car _e1272312756_))
                                       (_tl1272512761_ (##cdr _e1272312756_)))
                                   (if (gx#stx-pair? _hd1272412759_)
                                       (let ((_e1272612764_
                                              (gx#stx-e _hd1272412759_)))
                                         (let ((_hd1272712767_
                                                (##car _e1272612764_))
                                               (_tl1272812769_
                                                (##cdr _e1272612764_)))
                                           (if (gx#identifier? _hd1272712767_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1272712767_)
                                                   (if (gx#stx-pair?
                                                        _tl1272812769_)
                                                       (let ((_e1272912772_
                                                              (gx#stx-e
                                                               _tl1272812769_)))
                                                         (let ((_hd1273012775_
                                                                (##car _e1272912772_))
                                                               (_tl1273112777_
                                                                (##cdr _e1272912772_)))
                                                           (if (gx#stx-null?
                                                                _tl1273112777_)
                                                               ((lambda (_L12780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12781_)
                          (let ((_type-e1279812800_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L12781_)
                                  '#f)))
                            (if _type-e1279812800_
                                (let ((_type-e12803_ _type-e1279812800_))
                                  (_type-e12803_ _stx12713_ _L12780_))
                                '#f)))
                        _tl1272512761_
                        _hd1273012775_)
                       (_g1271512743_ _g1271712746_))))
               (_g1271512743_ _g1271712746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1271512743_
                                                    _g1271712746_))
                                               (_g1271512743_ _g1271712746_))))
                                       (_g1271512743_ _g1271712746_))))
                               (_g1271512743_ _g1271712746_))))
                       (_g1271512743_ _g1271712746_)))))
            (_g1271412805_ _stx12713_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12198_ _args12199_)
      (let ((_g1220312316_
             (lambda (_g1220412313_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1220412313_))))
        (let ((_g1220212323_
               (lambda (_g1220412319_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12198_))
                      '#f))))))
          (let ((_g1220112530_
                 (lambda (_g1220412326_)
                   (if (gx#stx-pair? _g1220412326_)
                       (let ((_e1226412328_ (gx#stx-e _g1220412326_)))
                         (let ((_hd1226512331_ (##car _e1226412328_))
                               (_tl1226612333_ (##cdr _e1226412328_)))
                           (if (gx#stx-pair? _hd1226512331_)
                               (let ((_e1226712336_ (gx#stx-e _hd1226512331_)))
                                 (let ((_hd1226812339_ (##car _e1226712336_))
                                       (_tl1226912341_ (##cdr _e1226712336_)))
                                   (if (gx#identifier? _hd1226812339_)
                                       (if (gx#stx-eq? '%#quote _hd1226812339_)
                                           (if (gx#stx-pair? _tl1226912341_)
                                               (let ((_e1227012344_
                                                      (gx#stx-e
                                                       _tl1226912341_)))
                                                 (let ((_hd1227112347_
                                                        (##car _e1227012344_))
                                                       (_tl1227212349_
                                                        (##cdr _e1227012344_)))
                                                   (if (gx#stx-null?
                                                        _tl1227212349_)
                                                       (if (gx#stx-pair?
                                                            _tl1226612333_)
                                                           (let ((_e1227312352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1226612333_)))
                     (let ((_hd1227412355_ (##car _e1227312352_))
                           (_tl1227512357_ (##cdr _e1227312352_)))
                       (if (gx#stx-pair? _hd1227412355_)
                           (let ((_e1227612360_ (gx#stx-e _hd1227412355_)))
                             (let ((_hd1227712363_ (##car _e1227612360_))
                                   (_tl1227812365_ (##cdr _e1227612360_)))
                               (if (gx#identifier? _hd1227712363_)
                                   (if (gx#stx-eq? '%#ref _hd1227712363_)
                                       (if (gx#stx-pair? _tl1227812365_)
                                           (let ((_e1227912368_
                                                  (gx#stx-e _tl1227812365_)))
                                             (let ((_hd1228012371_
                                                    (##car _e1227912368_))
                                                   (_tl1228112373_
                                                    (##cdr _e1227912368_)))
                                               (if (gx#stx-null?
                                                    _tl1228112373_)
                                                   (if (gx#stx-pair?
                                                        _tl1227512357_)
                                                       (let ((_e1228212376_
                                                              (gx#stx-e
                                                               _tl1227512357_)))
                                                         (let ((_hd1228312379_
                                                                (##car _e1228212376_))
                                                               (_tl1228412381_
                                                                (##cdr _e1228212376_)))
                                                           (if (gx#stx-pair?
                                                                _hd1228312379_)
                                                               (let ((_e1228512384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1228312379_)))
                         (let ((_hd1228612387_ (##car _e1228512384_))
                               (_tl1228712389_ (##cdr _e1228512384_)))
                           (if (gx#identifier? _hd1228612387_)
                               (if (gx#stx-eq? '%#quote _hd1228612387_)
                                   (if (gx#stx-pair? _tl1228712389_)
                                       (let ((_e1228812392_
                                              (gx#stx-e _tl1228712389_)))
                                         (let ((_hd1228912395_
                                                (##car _e1228812392_))
                                               (_tl1229012397_
                                                (##cdr _e1228812392_)))
                                           (if (gx#stx-null? _tl1229012397_)
                                               (if (gx#stx-pair?
                                                    _tl1228412381_)
                                                   (let ((_e1229112400_
                                                          (gx#stx-e
                                                           _tl1228412381_)))
                                                     (let ((_hd1229212403_
                                                            (##car _e1229112400_))
                                                           (_tl1229312405_
                                                            (##cdr _e1229112400_)))
                                                       (if (gx#stx-pair?
                                                            _tl1229312405_)
                                                           (let ((_e1229412408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1229312405_)))
                     (let ((_hd1229512411_ (##car _e1229412408_))
                           (_tl1229612413_ (##cdr _e1229412408_)))
                       (if (gx#stx-pair? _hd1229512411_)
                           (let ((_e1229712416_ (gx#stx-e _hd1229512411_)))
                             (let ((_hd1229812419_ (##car _e1229712416_))
                                   (_tl1229912421_ (##cdr _e1229712416_)))
                               (if (gx#identifier? _hd1229812419_)
                                   (if (gx#stx-eq? '%#quote _hd1229812419_)
                                       (if (gx#stx-pair? _tl1229912421_)
                                           (let ((_e1230012424_
                                                  (gx#stx-e _tl1229912421_)))
                                             (let ((_hd1230112427_
                                                    (##car _e1230012424_))
                                                   (_tl1230212429_
                                                    (##cdr _e1230012424_)))
                                               (if (gx#stx-null?
                                                    _tl1230212429_)
                                                   (if (gx#stx-pair?
                                                        _tl1229612413_)
                                                       (let ((_e1230312432_
                                                              (gx#stx-e
                                                               _tl1229612413_)))
                                                         (let ((_hd1230412435_
                                                                (##car _e1230312432_))
                                                               (_tl1230512437_
                                                                (##cdr _e1230312432_)))
                                                           (if (gx#stx-pair?
                                                                _hd1230412435_)
                                                               (let ((_e1230612440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1230412435_)))
                         (let ((_hd1230712443_ (##car _e1230612440_))
                               (_tl1230812445_ (##cdr _e1230612440_)))
                           (if (gx#identifier? _hd1230712443_)
                               (if (gx#stx-eq? '%#quote _hd1230712443_)
                                   (if (gx#stx-pair? _tl1230812445_)
                                       (let ((_e1230912448_
                                              (gx#stx-e _tl1230812445_)))
                                         (let ((_hd1231012451_
                                                (##car _e1230912448_))
                                               (_tl1231112453_
                                                (##cdr _e1230912448_)))
                                           (if (gx#stx-null? _tl1231112453_)
                                               (if (gx#stx-null?
                                                    _tl1230512437_)
                                                   ((lambda (_L12456_
                                                             _L12457_
                                                             _L12458_
                                                             _L12459_
                                                             _L12460_
                                                             _L12461_)
                                                      (let ((_super-t12507_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12460_)
                         (gxc#identifier-symbol _L12460_)
                         '#f)))
                (let ((_super-type12509_
                       (if _super-t12507_
                           (gxc#optimizer-resolve-type _super-t12507_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12509_
                              (not (##structure-instance-of?
                                    _super-type12509_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12198_
                           _L12460_)
                          '#!void)
                      (let ((_fields12525_ (gx#stx-e _L12459_))
                            (_xfields12526_
                             (if _super-type12509_
                                 (let ((_super-fields1251112514_
                                        (##structure-ref
                                         _super-type12509_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1251212516_
                                        (##structure-ref
                                         _super-type12509_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1251112514_
                                       (if _super-xfields1251212516_
                                           (let ((_super-fields12519_
                                                  _super-fields1251112514_)
                                                 (_super-xfields12520_
                                                  _super-xfields1251212516_))
                                             (fx+ _super-fields12519_
                                                  _super-xfields12520_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12527_ (gx#stx-e _L12457_))
                            (_ctor12528_
                             (let ((_$e12522_ (gx#stx-e _L12456_)))
                               (if _$e12522_
                                   (values _$e12522_)
                                   (if _super-type12509_
                                       (##structure-ref
                                        _super-type12509_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12507_ '#!void '#f))))))
                        (let ((__obj17439
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17439
                             (gx#stx-e _L12461_)
                             _super-t12507_
                             _fields12525_
                             _xfields12526_
                             _ctor12528_
                             _plist12527_)
                            __obj17439))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1231012451_
                                                    _hd1230112427_
                                                    _hd1229212403_
                                                    _hd1228912395_
                                                    _hd1228012371_
                                                    _hd1227112347_)
                                                   (_g1220212323_
                                                    _g1220412326_))
                                               (_g1220212323_ _g1220412326_))))
                                       (_g1220212323_ _g1220412326_))
                                   (_g1220212323_ _g1220412326_))
                               (_g1220212323_ _g1220412326_))))
                       (_g1220212323_ _g1220412326_))))
               (_g1220212323_ _g1220412326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1220212323_
                                                    _g1220412326_))))
                                           (_g1220212323_ _g1220412326_))
                                       (_g1220212323_ _g1220412326_))
                                   (_g1220212323_ _g1220412326_))))
                           (_g1220212323_ _g1220412326_))))
                   (_g1220212323_ _g1220412326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1220212323_
                                                    _g1220412326_))
                                               (_g1220212323_ _g1220412326_))))
                                       (_g1220212323_ _g1220412326_))
                                   (_g1220212323_ _g1220412326_))
                               (_g1220212323_ _g1220412326_))))
                       (_g1220212323_ _g1220412326_))))
               (_g1220212323_ _g1220412326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1220212323_
                                                    _g1220412326_))))
                                           (_g1220212323_ _g1220412326_))
                                       (_g1220212323_ _g1220412326_))
                                   (_g1220212323_ _g1220412326_))))
                           (_g1220212323_ _g1220412326_))))
                   (_g1220212323_ _g1220412326_))
               (_g1220212323_ _g1220412326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1220212323_ _g1220412326_))
                                           (_g1220212323_ _g1220412326_))
                                       (_g1220212323_ _g1220412326_))))
                               (_g1220212323_ _g1220412326_))))
                       (_g1220212323_ _g1220412326_)))))
            (let ((_g1220012710_
                   (lambda (_g1220412533_)
                     (if (gx#stx-pair? _g1220412533_)
                         (let ((_e1221012535_ (gx#stx-e _g1220412533_)))
                           (let ((_hd1221112538_ (##car _e1221012535_))
                                 (_tl1221212540_ (##cdr _e1221012535_)))
                             (if (gx#stx-pair? _hd1221112538_)
                                 (let ((_e1221312543_
                                        (gx#stx-e _hd1221112538_)))
                                   (let ((_hd1221412546_ (##car _e1221312543_))
                                         (_tl1221512548_
                                          (##cdr _e1221312543_)))
                                     (if (gx#identifier? _hd1221412546_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1221412546_)
                                             (if (gx#stx-pair? _tl1221512548_)
                                                 (let ((_e1221612551_
                                                        (gx#stx-e
                                                         _tl1221512548_)))
                                                   (let ((_hd1221712554_
                                                          (##car _e1221612551_))
                                                         (_tl1221812556_
                                                          (##cdr _e1221612551_)))
                                                     (if (gx#stx-null?
                                                          _tl1221812556_)
                                                         (if (gx#stx-pair?
                                                              _tl1221212540_)
                                                             (let ((_e1221912559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1221212540_)))
                       (let ((_hd1222012562_ (##car _e1221912559_))
                             (_tl1222112564_ (##cdr _e1221912559_)))
                         (if (gx#stx-pair? _hd1222012562_)
                             (let ((_e1222212567_ (gx#stx-e _hd1222012562_)))
                               (let ((_hd1222312570_ (##car _e1222212567_))
                                     (_tl1222412572_ (##cdr _e1222212567_)))
                                 (if (gx#identifier? _hd1222312570_)
                                     (if (gx#stx-eq? '%#quote _hd1222312570_)
                                         (if (gx#stx-pair? _tl1222412572_)
                                             (let ((_e1222512575_
                                                    (gx#stx-e _tl1222412572_)))
                                               (let ((_hd1222612578_
                                                      (##car _e1222512575_))
                                                     (_tl1222712580_
                                                      (##cdr _e1222512575_)))
                                                 (if (gx#stx-datum?
                                                      _hd1222612578_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1222612578_)
                         '#f)
                 (if (gx#stx-null? _tl1222712580_)
                     (if (gx#stx-pair? _tl1222112564_)
                         (let ((_e1222812583_ (gx#stx-e _tl1222112564_)))
                           (let ((_hd1222912586_ (##car _e1222812583_))
                                 (_tl1223012588_ (##cdr _e1222812583_)))
                             (if (gx#stx-pair? _hd1222912586_)
                                 (let ((_e1223112591_
                                        (gx#stx-e _hd1222912586_)))
                                   (let ((_hd1223212594_ (##car _e1223112591_))
                                         (_tl1223312596_
                                          (##cdr _e1223112591_)))
                                     (if (gx#identifier? _hd1223212594_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1223212594_)
                                             (if (gx#stx-pair? _tl1223312596_)
                                                 (let ((_e1223412599_
                                                        (gx#stx-e
                                                         _tl1223312596_)))
                                                   (let ((_hd1223512602_
                                                          (##car _e1223412599_))
                                                         (_tl1223612604_
                                                          (##cdr _e1223412599_)))
                                                     (if (gx#stx-null?
                                                          _tl1223612604_)
                                                         (if (gx#stx-pair?
                                                              _tl1223012588_)
                                                             (let ((_e1223712607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1223012588_)))
                       (let ((_hd1223812610_ (##car _e1223712607_))
                             (_tl1223912612_ (##cdr _e1223712607_)))
                         (if (gx#stx-pair? _tl1223912612_)
                             (let ((_e1224012615_ (gx#stx-e _tl1223912612_)))
                               (let ((_hd1224112618_ (##car _e1224012615_))
                                     (_tl1224212620_ (##cdr _e1224012615_)))
                                 (if (gx#stx-pair? _hd1224112618_)
                                     (let ((_e1224312623_
                                            (gx#stx-e _hd1224112618_)))
                                       (let ((_hd1224412626_
                                              (##car _e1224312623_))
                                             (_tl1224512628_
                                              (##cdr _e1224312623_)))
                                         (if (gx#identifier? _hd1224412626_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1224412626_)
                                                 (if (gx#stx-pair?
                                                      _tl1224512628_)
                                                     (let ((_e1224612631_
                                                            (gx#stx-e
                                                             _tl1224512628_)))
                                                       (let ((_hd1224712634_
                                                              (##car _e1224612631_))
                                                             (_tl1224812636_
                                                              (##cdr _e1224612631_)))
                                                         (if (gx#stx-null?
                                                              _tl1224812636_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1224212620_)
                         (let ((_e1224912639_ (gx#stx-e _tl1224212620_)))
                           (let ((_hd1225012642_ (##car _e1224912639_))
                                 (_tl1225112644_ (##cdr _e1224912639_)))
                             (if (gx#stx-pair? _hd1225012642_)
                                 (let ((_e1225212647_
                                        (gx#stx-e _hd1225012642_)))
                                   (let ((_hd1225312650_ (##car _e1225212647_))
                                         (_tl1225412652_
                                          (##cdr _e1225212647_)))
                                     (if (gx#identifier? _hd1225312650_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1225312650_)
                                             (if (gx#stx-pair? _tl1225412652_)
                                                 (let ((_e1225512655_
                                                        (gx#stx-e
                                                         _tl1225412652_)))
                                                   (let ((_hd1225612658_
                                                          (##car _e1225512655_))
                                                         (_tl1225712660_
                                                          (##cdr _e1225512655_)))
                                                     (if (gx#stx-null?
                                                          _tl1225712660_)
                                                         (if (gx#stx-null?
                                                              _tl1225112644_)
                                                             ((lambda (_L12663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12664_
                               _L12665_
                               _L12666_
                               _L12667_)
                        (let ((__obj17440
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj17440
                             (gx#stx-e _L12667_)
                             '#f
                             (gx#stx-e _L12666_)
                             '0
                             (gx#stx-e _L12663_)
                             (gx#stx-e _L12664_))
                            __obj17440)))
                      _hd1225612658_
                      _hd1224712634_
                      _hd1223812610_
                      _hd1223512602_
                      _hd1221712554_)
                     (_g1220112530_ _g1220412533_))
                 (_g1220112530_ _g1220412533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1220112530_ _g1220412533_))
                                             (_g1220112530_ _g1220412533_))
                                         (_g1220112530_ _g1220412533_))))
                                 (_g1220112530_ _g1220412533_))))
                         (_g1220112530_ _g1220412533_))
                     (_g1220112530_ _g1220412533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1220112530_
                                                      _g1220412533_))
                                                 (_g1220112530_ _g1220412533_))
                                             (_g1220112530_ _g1220412533_))))
                                     (_g1220112530_ _g1220412533_))))
                             (_g1220112530_ _g1220412533_))))
                     (_g1220112530_ _g1220412533_))
                 (_g1220112530_ _g1220412533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1220112530_ _g1220412533_))
                                             (_g1220112530_ _g1220412533_))
                                         (_g1220112530_ _g1220412533_))))
                                 (_g1220112530_ _g1220412533_))))
                         (_g1220112530_ _g1220412533_))
                     (_g1220112530_ _g1220412533_))
                 (_g1220112530_ _g1220412533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1220112530_
                                                      _g1220412533_))))
                                             (_g1220112530_ _g1220412533_))
                                         (_g1220112530_ _g1220412533_))
                                     (_g1220112530_ _g1220412533_))))
                             (_g1220112530_ _g1220412533_))))
                     (_g1220112530_ _g1220412533_))
                 (_g1220112530_ _g1220412533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1220112530_ _g1220412533_))
                                             (_g1220112530_ _g1220412533_))
                                         (_g1220112530_ _g1220412533_))))
                                 (_g1220112530_ _g1220412533_))))
                         (_g1220112530_ _g1220412533_)))))
              (_g1220012710_ _args12199_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12124_ _args12125_)
      (let ((_g1212812144_
             (lambda (_g1212912141_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1212912141_))))
        (let ((_g1212712151_ (lambda (_g1212912147_) ((lambda () '#f)))))
          (let ((_g1212612195_
                 (lambda (_g1212912154_)
                   (if (gx#stx-pair? _g1212912154_)
                       (let ((_e1213112156_ (gx#stx-e _g1212912154_)))
                         (let ((_hd1213212159_ (##car _e1213112156_))
                               (_tl1213312161_ (##cdr _e1213112156_)))
                           (if (gx#stx-pair? _hd1213212159_)
                               (let ((_e1213412164_ (gx#stx-e _hd1213212159_)))
                                 (let ((_hd1213512167_ (##car _e1213412164_))
                                       (_tl1213612169_ (##cdr _e1213412164_)))
                                   (if (gx#identifier? _hd1213512167_)
                                       (if (gx#stx-eq? '%#ref _hd1213512167_)
                                           (if (gx#stx-pair? _tl1213612169_)
                                               (let ((_e1213712172_
                                                      (gx#stx-e
                                                       _tl1213612169_)))
                                                 (let ((_hd1213812175_
                                                        (##car _e1213712172_))
                                                       (_tl1213912177_
                                                        (##cdr _e1213712172_)))
                                                   (if (gx#stx-null?
                                                        _tl1213912177_)
                                                       (if (gx#stx-null?
                                                            _tl1213312161_)
                                                           ((lambda (_L12180_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L12180_)))
                                                            _hd1213812175_)
                                                           (_g1212712151_
                                                            _g1212912154_))
                                                       (_g1212712151_
                                                        _g1212912154_))))
                                               (_g1212712151_ _g1212912154_))
                                           (_g1212712151_ _g1212912154_))
                                       (_g1212712151_ _g1212912154_))))
                               (_g1212712151_ _g1212912154_))))
                       (_g1212712151_ _g1212912154_)))))
            (_g1212612195_ _args12125_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12008_ _args12009_)
      (let ((_g1201212038_
             (lambda (_g1201312035_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1201312035_))))
        (let ((_g1201112045_ (lambda (_g1201312041_) ((lambda () '#f)))))
          (let ((_g1201012121_
                 (lambda (_g1201312048_)
                   (if (gx#stx-pair? _g1201312048_)
                       (let ((_e1201612050_ (gx#stx-e _g1201312048_)))
                         (let ((_hd1201712053_ (##car _e1201612050_))
                               (_tl1201812055_ (##cdr _e1201612050_)))
                           (if (gx#stx-pair? _hd1201712053_)
                               (let ((_e1201912058_ (gx#stx-e _hd1201712053_)))
                                 (let ((_hd1202012061_ (##car _e1201912058_))
                                       (_tl1202112063_ (##cdr _e1201912058_)))
                                   (if (gx#identifier? _hd1202012061_)
                                       (if (gx#stx-eq? '%#ref _hd1202012061_)
                                           (if (gx#stx-pair? _tl1202112063_)
                                               (let ((_e1202212066_
                                                      (gx#stx-e
                                                       _tl1202112063_)))
                                                 (let ((_hd1202312069_
                                                        (##car _e1202212066_))
                                                       (_tl1202412071_
                                                        (##cdr _e1202212066_)))
                                                   (if (gx#stx-null?
                                                        _tl1202412071_)
                                                       (if (gx#stx-pair?
                                                            _tl1201812055_)
                                                           (let ((_e1202512074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1201812055_)))
                     (let ((_hd1202612077_ (##car _e1202512074_))
                           (_tl1202712079_ (##cdr _e1202512074_)))
                       (if (gx#stx-pair? _hd1202612077_)
                           (let ((_e1202812082_ (gx#stx-e _hd1202612077_)))
                             (let ((_hd1202912085_ (##car _e1202812082_))
                                   (_tl1203012087_ (##cdr _e1202812082_)))
                               (if (gx#identifier? _hd1202912085_)
                                   (if (gx#stx-eq? '%#quote _hd1202912085_)
                                       (if (gx#stx-pair? _tl1203012087_)
                                           (let ((_e1203112090_
                                                  (gx#stx-e _tl1203012087_)))
                                             (let ((_hd1203212093_
                                                    (##car _e1203112090_))
                                                   (_tl1203312095_
                                                    (##cdr _e1203112090_)))
                                               (if (gx#stx-null?
                                                    _tl1203312095_)
                                                   (if (gx#stx-null?
                                                        _tl1202712079_)
                                                       ((lambda (_L12098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12099_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L12099_)
                   (gx#stx-e _L12098_)))
                _hd1203212093_
                _hd1202312069_)
               (_g1201112045_ _g1201312048_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1201112045_
                                                    _g1201312048_))))
                                           (_g1201112045_ _g1201312048_))
                                       (_g1201112045_ _g1201312048_))
                                   (_g1201112045_ _g1201312048_))))
                           (_g1201112045_ _g1201312048_))))
                   (_g1201112045_ _g1201312048_))
               (_g1201112045_ _g1201312048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1201112045_ _g1201312048_))
                                           (_g1201112045_ _g1201312048_))
                                       (_g1201112045_ _g1201312048_))))
                               (_g1201112045_ _g1201312048_))))
                       (_g1201112045_ _g1201312048_)))))
            (_g1201012121_ _args12009_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11892_ _args11893_)
      (let ((_g1189611922_
             (lambda (_g1189711919_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1189711919_))))
        (let ((_g1189511929_ (lambda (_g1189711925_) ((lambda () '#f)))))
          (let ((_g1189412005_
                 (lambda (_g1189711932_)
                   (if (gx#stx-pair? _g1189711932_)
                       (let ((_e1190011934_ (gx#stx-e _g1189711932_)))
                         (let ((_hd1190111937_ (##car _e1190011934_))
                               (_tl1190211939_ (##cdr _e1190011934_)))
                           (if (gx#stx-pair? _hd1190111937_)
                               (let ((_e1190311942_ (gx#stx-e _hd1190111937_)))
                                 (let ((_hd1190411945_ (##car _e1190311942_))
                                       (_tl1190511947_ (##cdr _e1190311942_)))
                                   (if (gx#identifier? _hd1190411945_)
                                       (if (gx#stx-eq? '%#ref _hd1190411945_)
                                           (if (gx#stx-pair? _tl1190511947_)
                                               (let ((_e1190611950_
                                                      (gx#stx-e
                                                       _tl1190511947_)))
                                                 (let ((_hd1190711953_
                                                        (##car _e1190611950_))
                                                       (_tl1190811955_
                                                        (##cdr _e1190611950_)))
                                                   (if (gx#stx-null?
                                                        _tl1190811955_)
                                                       (if (gx#stx-pair?
                                                            _tl1190211939_)
                                                           (let ((_e1190911958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1190211939_)))
                     (let ((_hd1191011961_ (##car _e1190911958_))
                           (_tl1191111963_ (##cdr _e1190911958_)))
                       (if (gx#stx-pair? _hd1191011961_)
                           (let ((_e1191211966_ (gx#stx-e _hd1191011961_)))
                             (let ((_hd1191311969_ (##car _e1191211966_))
                                   (_tl1191411971_ (##cdr _e1191211966_)))
                               (if (gx#identifier? _hd1191311969_)
                                   (if (gx#stx-eq? '%#quote _hd1191311969_)
                                       (if (gx#stx-pair? _tl1191411971_)
                                           (let ((_e1191511974_
                                                  (gx#stx-e _tl1191411971_)))
                                             (let ((_hd1191611977_
                                                    (##car _e1191511974_))
                                                   (_tl1191711979_
                                                    (##cdr _e1191511974_)))
                                               (if (gx#stx-null?
                                                    _tl1191711979_)
                                                   (if (gx#stx-null?
                                                        _tl1191111963_)
                                                       ((lambda (_L11982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11983_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L11983_)
                   (gx#stx-e _L11982_)))
                _hd1191611977_
                _hd1190711953_)
               (_g1189511929_ _g1189711932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1189511929_
                                                    _g1189711932_))))
                                           (_g1189511929_ _g1189711932_))
                                       (_g1189511929_ _g1189711932_))
                                   (_g1189511929_ _g1189711932_))))
                           (_g1189511929_ _g1189711932_))))
                   (_g1189511929_ _g1189711932_))
               (_g1189511929_ _g1189711932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1189511929_ _g1189711932_))
                                           (_g1189511929_ _g1189711932_))
                                       (_g1189511929_ _g1189711932_))))
                               (_g1189511929_ _g1189711932_))))
                       (_g1189511929_ _g1189711932_)))))
            (_g1189412005_ _args11893_))))))
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
    (lambda (_stx11841_)
      (let ((_g1184311856_
             (lambda (_g1184411853_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1184411853_))))
        (let ((_g1184211889_
               (lambda (_g1184411859_)
                 (if (gx#stx-pair? _g1184411859_)
                     (let ((_e1184611861_ (gx#stx-e _g1184411859_)))
                       (let ((_hd1184711864_ (##car _e1184611861_))
                             (_tl1184811866_ (##cdr _e1184611861_)))
                         (if (gx#stx-pair? _tl1184811866_)
                             (let ((_e1184911869_ (gx#stx-e _tl1184811866_)))
                               (let ((_hd1185011872_ (##car _e1184911869_))
                                     (_tl1185111874_ (##cdr _e1184911869_)))
                                 (if (gx#stx-null? _tl1185111874_)
                                     ((lambda (_L11877_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L11877_)))
                                      _hd1185011872_)
                                     (_g1184311856_ _g1184411859_))))
                             (_g1184311856_ _g1184411859_))))
                     (_g1184311856_ _g1184411859_)))))
          (_g1184211889_ _stx11841_)))))
  (define gxc#optimize-call%
    (lambda (_stx11747_)
      (let ((_g1175011770_
             (lambda (_g1175111767_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1175111767_))))
        (let ((_g1174911777_
               (lambda (_g1175111773_)
                 ((lambda () (gxc#xform-call% _stx11747_))))))
          (let ((_g1174811838_
                 (lambda (_g1175111780_)
                   (if (gx#stx-pair? _g1175111780_)
                       (let ((_e1175411782_ (gx#stx-e _g1175111780_)))
                         (let ((_hd1175511785_ (##car _e1175411782_))
                               (_tl1175611787_ (##cdr _e1175411782_)))
                           (if (gx#stx-pair? _tl1175611787_)
                               (let ((_e1175711790_ (gx#stx-e _tl1175611787_)))
                                 (let ((_hd1175811793_ (##car _e1175711790_))
                                       (_tl1175911795_ (##cdr _e1175711790_)))
                                   (if (gx#stx-pair? _hd1175811793_)
                                       (let ((_e1176011798_
                                              (gx#stx-e _hd1175811793_)))
                                         (let ((_hd1176111801_
                                                (##car _e1176011798_))
                                               (_tl1176211803_
                                                (##cdr _e1176011798_)))
                                           (if (gx#identifier? _hd1176111801_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1176111801_)
                                                   (if (gx#stx-pair?
                                                        _tl1176211803_)
                                                       (let ((_e1176311806_
                                                              (gx#stx-e
                                                               _tl1176211803_)))
                                                         (let ((_hd1176411809_
                                                                (##car _e1176311806_))
                                                               (_tl1176511811_
                                                                (##cdr _e1176311806_)))
                                                           (if (gx#stx-null?
                                                                _tl1176511811_)
                                                               ((lambda (_L11814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11815_)
                          (let ((_rator-id11833_
                                 (gxc#identifier-symbol _L11815_)))
                            (let ((_rator-type11835_
                                   (gxc#optimizer-lookup-type
                                    _rator-id11833_)))
                              (let ()
                                (if _rator-type11835_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11833_
                                       '" => "
                                       _rator-type11835_
                                       '" "
                                       (##structure-ref
                                        _rator-type11835_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11835_
                                       'optimize-call
                                       _stx11747_
                                       _L11814_))
                                    (gxc#xform-call% _stx11747_))))))
                        _tl1175911795_
                        _hd1176411809_)
                       (_g1174911777_ _g1175111780_))))
               (_g1174911777_ _g1175111780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1174911777_
                                                    _g1175111780_))
                                               (_g1174911777_ _g1175111780_))))
                                       (_g1174911777_ _g1175111780_))))
                               (_g1174911777_ _g1175111780_))))
                       (_g1174911777_ _g1175111780_)))))
            (_g1174811838_ _stx11747_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self11717_ _stx11718_ _args11719_)
      (let ((_self1172011726_ _self11717_))
        (let ((_E1172211730_
               (lambda () (error '"No clause matching" _self1172011726_))))
          (let ((_K1172311739_
                 (lambda (_alias-id11733_)
                   (let ((_alias-type11735_
                          (gxc#optimizer-lookup-type _alias-id11733_)))
                     (if (##structure-instance-of?
                          _alias-type11735_
                          'gxc#!type::t)
                         (call-method
                          _alias-type11735_
                          'optimize-call
                          _stx11718_
                          _args11719_)
                         (let ((_args11737_
                                (gx#stx-map1 gxc#compile-e _args11719_)))
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _alias-id11733_ '()))
                                         _args11737_))
                             _stx11718_))))))))
            (if (struct-instance? gxc#!alias::t _self1172011726_)
                (let ((_e1172411742_ (##vector-ref _self1172011726_ '1)))
                  (let ((_alias-id11745_ _e1172411742_))
                    (_K1172311739_ _alias-id11745_)))
                (_E1172211730_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11572_ _stx11573_ _args11574_)
      (let ((_self1157511581_ _self11572_))
        (let ((_E1157711585_
               (lambda () (error '"No clause matching" _self1157511581_))))
          (let ((_K1157811709_
                 (lambda (_struct-t11588_)
                   (let ((_struct-type11590_
                          (gxc#optimizer-resolve-type _struct-t11588_)))
                     (let ((_struct-type1159111605_ _struct-type11590_))
                       (let ((_E1159511609_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1159111605_))))
                         (let ((_else1159411613_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11573_
                                   _struct-t11588_
                                   _struct-type11590_))))
                           (let ((_try-match1159311621_
                                  (lambda ()
                                    (let ((_K1159611618_
                                           (lambda ()
                                             (gxc#xform-call% _stx11573_))))
                                      (if (##eq? _struct-type1159111605_ '#f)
                                          (_K1159611618_)
                                          (_else1159411613_))))))
                             (let ((_K1159711684_
                                    (lambda (_plist11624_
                                             _struct-type-id11625_)
                                      (let ((_g1162811638_
                                             (lambda (_g1162911635_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1162911635_))))
                                        (let ((_g1162711645_
                                               (lambda (_g1162911641_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11573_))))))
                                          (let ((_g1162611681_
                                                 (lambda (_g1162911648_)
                                                   (if (gx#stx-pair?
                                                        _g1162911648_)
                                                       (let ((_e1163111650_
                                                              (gx#stx-e
                                                               _g1162911648_)))
                                                         (let ((_hd1163211653_
                                                                (##car _e1163111650_))
                                                               (_tl1163311655_
                                                                (##cdr _e1163111650_)))
                                                           (if (gx#stx-null?
                                                                _tl1163311655_)
                                                               ((lambda (_L11658_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11678_ (gxc#compile-e _L11658_))
                                (_op11679_
                                 (if (if _plist11624_
                                         (assgetq 'final: _plist11624_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11679_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11625_
                                                     '()))
                                         (cons _expr11678_ '())))
                             _stx11573_)))
                        _hd1163211653_)
                       (_g1162711645_ _g1162911648_))))
               (_g1162711645_ _g1162911648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1162611681_ _args11574_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1159111605_)
                                   (let ((_e1159811687_
                                          (##vector-ref
                                           _struct-type1159111605_
                                           '1)))
                                     (let ((_struct-type-id11690_
                                            _e1159811687_))
                                       (let ((_e1159911692_
                                              (##vector-ref
                                               _struct-type1159111605_
                                               '2)))
                                         (let ((_e1160011695_
                                                (##vector-ref
                                                 _struct-type1159111605_
                                                 '3)))
                                           (let ((_e1160111698_
                                                  (##vector-ref
                                                   _struct-type1159111605_
                                                   '4)))
                                             (let ((_e1160211701_
                                                    (##vector-ref
                                                     _struct-type1159111605_
                                                     '5)))
                                               (let ((_e1160311704_
                                                      (##vector-ref
                                                       _struct-type1159111605_
                                                       '6)))
                                                 (let ((_plist11707_
                                                        _e1160311704_))
                                                   (_K1159711684_
                                                    _plist11707_
                                                    _struct-type-id11690_)))))))))
                                   (_try-match1159311621_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1157511581_)
                (let ((_e1157911712_ (##vector-ref _self1157511581_ '1)))
                  (let ((_struct-t11715_ _e1157911712_))
                    (_K1157811709_ _struct-t11715_)))
                (_E1157711585_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11468_ _stx11469_ _args11470_)
      (let ((_self1147111477_ _self11468_))
        (let ((_E1147311481_
               (lambda () (error '"No clause matching" _self1147111477_))))
          (let ((_K1147411564_
                 (lambda (_struct-t11484_)
                   (let ((_struct-type11486_
                          (gxc#optimizer-resolve-type _struct-t11484_)))
                     (let ((_struct-type1148711500_ _struct-type11486_))
                       (let ((_E1149111504_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1148711500_))))
                         (let ((_else1149011508_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11469_
                                   _struct-t11484_
                                   _struct-type11486_))))
                           (let ((_try-match1148911516_
                                  (lambda ()
                                    (let ((_K1149211513_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11484_)
                                               (gxc#xform-call% _stx11469_)))))
                                      (if (##eq? _struct-type1148711500_ '#f)
                                          (_K1149211513_)
                                          (_else1149011508_))))))
                             (let ((_K1149311538_
                                    (lambda (_ctor11519_
                                             _xfields11520_
                                             _fields11521_
                                             _type-id11522_)
                                      (let ((_args11524_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args11470_)))
                                        (let ((_$e11526_
                                               (if _ctor11519_
                                                   (if _xfields11520_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11486_
                                                        _ctor11519_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11526_
                                              ((lambda (_kons11529_)
                                                 (let ((_$obj11531_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11484_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11521_ _xfields11520_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11531_ '())) _args11524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11469_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11531_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11469_)))
                                               _$e11526_)
                                              (if (let ((_$e11533_
                                                         _ctor11519_))
                                                    (if _$e11533_
                                                        _$e11533_
                                                        (not _xfields11520_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11484_ '()))
                             _args11524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11469_)
                                                  (let ((_arity11536_
                                                         (fx+ _fields11521_
                                                              _xfields11520_)))
                                                    (if (fx= _arity11536_
                                                             (length _args11524_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11484_ '()))
                                   _args11524_)))
                 _stx11469_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11469_
                 _struct-t11484_
                 _arity11536_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1148711500_)
                                   (let ((_e1149411541_
                                          (##vector-ref
                                           _struct-type1148711500_
                                           '1)))
                                     (let ((_type-id11544_ _e1149411541_))
                                       (let ((_e1149511546_
                                              (##vector-ref
                                               _struct-type1148711500_
                                               '2)))
                                         (let ((_e1149611549_
                                                (##vector-ref
                                                 _struct-type1148711500_
                                                 '3)))
                                           (let ((_fields11552_ _e1149611549_))
                                             (let ((_e1149711554_
                                                    (##vector-ref
                                                     _struct-type1148711500_
                                                     '4)))
                                               (let ((_xfields11557_
                                                      _e1149711554_))
                                                 (let ((_e1149811559_
                                                        (##vector-ref
                                                         _struct-type1148711500_
                                                         '5)))
                                                   (let ((_ctor11562_
                                                          _e1149811559_))
                                                     (_K1149311538_
                                                      _ctor11562_
                                                      _xfields11557_
                                                      _fields11552_
                                                      _type-id11544_))))))))))
                                   (_try-match1148911516_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1147111477_)
                (let ((_e1147511567_ (##vector-ref _self1147111477_ '1)))
                  (let ((_struct-t11570_ _e1147511567_))
                    (_K1147411564_ _struct-t11570_)))
                (_E1147311481_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11321_ _stx11322_ _args11323_)
      (let ((_self1132411331_ _self11321_))
        (let ((_E1132611335_
               (lambda () (error '"No clause matching" _self1132411331_))))
          (let ((_K1132711455_
                 (lambda (_off11338_ _struct-t11339_)
                   (let ((_struct-type11341_
                          (gxc#optimizer-resolve-type _struct-t11339_)))
                     (let ((_struct-type1134211354_ _struct-type11341_))
                       (let ((_E1134611358_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1134211354_))))
                         (let ((_else1134511362_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11322_
                                   _struct-t11339_
                                   _struct-type11341_))))
                           (let ((_try-match1134411370_
                                  (lambda ()
                                    (let ((_K1134711367_
                                           (lambda ()
                                             (gxc#xform-call% _stx11322_))))
                                      (if (##eq? _struct-type1134211354_ '#f)
                                          (_K1134711367_)
                                          (_else1134511362_))))))
                             (let ((_K1134811434_
                                    (lambda (_xfields11373_
                                             _fields11374_
                                             _struct-type-id11375_)
                                      (if _xfields11373_
                                          (let ((_g1137811388_
                                                 (lambda (_g1137911385_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1137911385_))))
                                            (let ((_g1137711395_
                                                   (lambda (_g1137911391_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11322_))))))
                                              (let ((_g1137611431_
                                                     (lambda (_g1137911398_)
                                                       (if (gx#stx-pair?
                                                            _g1137911398_)
                                                           (let ((_e1138111400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1137911398_)))
                     (let ((_hd1138211403_ (##car _e1138111400_))
                           (_tl1138311405_ (##cdr _e1138111400_)))
                       (if (gx#stx-null? _tl1138311405_)
                           ((lambda (_L11408_)
                              (let ((_expr11428_ (gxc#compile-e _L11408_))
                                    (_off11429_
                                     (fx+ _off11338_ _xfields11373_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11339_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11429_ '()))
                                                   (cons _expr11428_ '()))))
                                 _stx11322_)))
                            _hd1138211403_)
                           (_g1137711395_ _g1137911398_))))
                   (_g1137711395_ _g1137911398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1137611431_ _args11323_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11375_)
                                            (gxc#xform-call% _stx11322_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1134211354_)
                                   (let ((_e1134911437_
                                          (##vector-ref
                                           _struct-type1134211354_
                                           '1)))
                                     (let ((_struct-type-id11440_
                                            _e1134911437_))
                                       (let ((_e1135011442_
                                              (##vector-ref
                                               _struct-type1134211354_
                                               '2)))
                                         (let ((_e1135111445_
                                                (##vector-ref
                                                 _struct-type1134211354_
                                                 '3)))
                                           (let ((_fields11448_ _e1135111445_))
                                             (let ((_e1135211450_
                                                    (##vector-ref
                                                     _struct-type1134211354_
                                                     '4)))
                                               (let ((_xfields11453_
                                                      _e1135211450_))
                                                 (_K1134811434_
                                                  _xfields11453_
                                                  _fields11448_
                                                  _struct-type-id11440_))))))))
                                   (_try-match1134411370_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1132411331_)
                (let ((_e1132811458_ (##vector-ref _self1132411331_ '1)))
                  (let ((_struct-t11461_ _e1132811458_))
                    (let ((_e1132911463_ (##vector-ref _self1132411331_ '2)))
                      (let ((_off11466_ _e1132911463_))
                        (_K1132711455_ _off11466_ _struct-t11461_)))))
                (_E1132611335_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11157_ _stx11158_ _args11159_)
      (let ((_self1116011167_ _self11157_))
        (let ((_E1116211171_
               (lambda () (error '"No clause matching" _self1116011167_))))
          (let ((_K1116311308_
                 (lambda (_off11174_ _struct-t11175_)
                   (let ((_struct-type11177_
                          (gxc#optimizer-resolve-type _struct-t11175_)))
                     (let ((_struct-type1117811190_ _struct-type11177_))
                       (let ((_E1118211194_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1117811190_))))
                         (let ((_else1118111198_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11158_
                                   _struct-t11175_
                                   _struct-type11177_))))
                           (let ((_try-match1118011206_
                                  (lambda ()
                                    (let ((_K1118311203_
                                           (lambda ()
                                             (gxc#xform-call% _stx11158_))))
                                      (if (##eq? _struct-type1117811190_ '#f)
                                          (_K1118311203_)
                                          (_else1118111198_))))))
                             (let ((_K1118411287_
                                    (lambda (_xfields11209_
                                             _fields11210_
                                             _struct-type-id11211_)
                                      (if _xfields11209_
                                          (let ((_g1121411228_
                                                 (lambda (_g1121511225_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1121511225_))))
                                            (let ((_g1121311235_
                                                   (lambda (_g1121511231_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11158_))))))
                                              (let ((_g1121211284_
                                                     (lambda (_g1121511238_)
                                                       (if (gx#stx-pair?
                                                            _g1121511238_)
                                                           (let ((_e1121811240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1121511238_)))
                     (let ((_hd1121911243_ (##car _e1121811240_))
                           (_tl1122011245_ (##cdr _e1121811240_)))
                       (if (gx#stx-pair? _tl1122011245_)
                           (let ((_e1122111248_ (gx#stx-e _tl1122011245_)))
                             (let ((_hd1122211251_ (##car _e1122111248_))
                                   (_tl1122311253_ (##cdr _e1122111248_)))
                               (if (gx#stx-null? _tl1122311253_)
                                   ((lambda (_L11256_ _L11257_)
                                      (let ((_expr11280_
                                             (gxc#compile-e _L11257_))
                                            (_val11281_
                                             (gxc#compile-e _L11256_))
                                            (_off11282_
                                             (fx+ _off11174_
                                                  _xfields11209_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11282_ '()))
                   (cons _expr11280_ (cons _val11281_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11158_)))
                                    _hd1122211251_
                                    _hd1121911243_)
                                   (_g1121311235_ _g1121511238_))))
                           (_g1121311235_ _g1121511238_))))
                   (_g1121311235_ _g1121511238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1121211284_ _args11159_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11211_)
                                            (gxc#xform-call% _stx11158_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1117811190_)
                                   (let ((_e1118511290_
                                          (##vector-ref
                                           _struct-type1117811190_
                                           '1)))
                                     (let ((_struct-type-id11293_
                                            _e1118511290_))
                                       (let ((_e1118611295_
                                              (##vector-ref
                                               _struct-type1117811190_
                                               '2)))
                                         (let ((_e1118711298_
                                                (##vector-ref
                                                 _struct-type1117811190_
                                                 '3)))
                                           (let ((_fields11301_ _e1118711298_))
                                             (let ((_e1118811303_
                                                    (##vector-ref
                                                     _struct-type1117811190_
                                                     '4)))
                                               (let ((_xfields11306_
                                                      _e1118811303_))
                                                 (_K1118411287_
                                                  _xfields11306_
                                                  _fields11301_
                                                  _struct-type-id11293_))))))))
                                   (_try-match1118011206_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1116011167_)
                (let ((_e1116411311_ (##vector-ref _self1116011167_ '1)))
                  (let ((_struct-t11314_ _e1116411311_))
                    (let ((_e1116511316_ (##vector-ref _self1116011167_ '2)))
                      (let ((_off11319_ _e1116511316_))
                        (_K1116311308_ _off11319_ _struct-t11314_)))))
                (_E1116211171_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11111_ _stx11112_ _args11113_)
      (let ((_self1111411123_ _self11111_))
        (let ((_E1111611127_
               (lambda () (error '"No clause matching" _self1111411123_))))
          (let ((_K1111711136_
                 (lambda (_inline11130_ _dispatch11131_ _arity11132_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11111_ _args11113_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11112_
                          _arity11132_))
                     (if _inline11130_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11130_ _stx11112_)
                             _stx11112_)))
                         (if _dispatch11131_
                             (let ((_args11134_
                                    (gx#stx-map1 gxc#compile-e _args11113_)))
                               (begin
                                 (gxc#verbose
                                  '"dispatch lambda => "
                                  _dispatch11131_)
                                 (gxc#compile-e
                                  (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _dispatch11131_
                                                           '()))
                                               _args11134_))
                                   _stx11112_))))
                             (gxc#xform-call% _stx11112_)))))))
            (if (struct-instance? gxc#!lambda::t _self1111411123_)
                (let ((_e1111811139_ (##vector-ref _self1111411123_ '1)))
                  (let ((_e1111911142_ (##vector-ref _self1111411123_ '2)))
                    (let ((_arity11145_ _e1111911142_))
                      (let ((_e1112011147_ (##vector-ref _self1111411123_ '3)))
                        (let ((_dispatch11150_ _e1112011147_))
                          (let ((_e1112111152_
                                 (##vector-ref _self1111411123_ '4)))
                            (let ((_inline11155_ _e1112111152_))
                              (_K1111711136_
                               _inline11155_
                               _dispatch11150_
                               _arity11145_))))))))
                (_E1111611127_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11071_ _stx11072_ _args11073_)
      (let ((_self1107411081_ _self11071_))
        (let ((_E1107611085_
               (lambda () (error '"No clause matching" _self1107411081_))))
          (let ((_K1107711100_
                 (lambda (_clauses11088_)
                   (let ((_$e11094_
                          (find (lambda (_g1108911091_)
                                  (gxc#!lambda-arity-match?
                                   _g1108911091_
                                   _args11073_))
                                _clauses11088_)))
                     (if _$e11094_
                         ((lambda (_clause11097_)
                            (call-method
                             _clause11097_
                             'optimize-call
                             _stx11072_
                             _args11073_))
                          _$e11094_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11072_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11088_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11088_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1107411081_)
                (let ((_e1107811103_ (##vector-ref _self1107411081_ '1)))
                  (let ((_e1107911106_ (##vector-ref _self1107411081_ '2)))
                    (let ((_clauses11109_ _e1107911106_))
                      (_K1107711100_ _clauses11109_))))
                (_E1107611085_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11007_ _args11008_)
      (let ((_self1100911016_ _self11007_))
        (let ((_E1101111020_
               (lambda () (error '"No clause matching" _self1100911016_))))
          (let ((_K1101211060_
                 (lambda (_arity11023_)
                   (let ((_arity1102411033_ _arity11023_))
                     (let ((_E1102711037_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1102411033_))))
                       (let ((_try-match1102611053_
                              (lambda ()
                                (let ((_K1102811043_
                                       (lambda (_arity11041_)
                                         (fx>= (gx#stx-length _args11008_)
                                               _arity11041_))))
                                  (if (##pair? _arity1102411033_)
                                      (let ((_hd1102911046_
                                             (##car _arity1102411033_))
                                            (_tl1103011048_
                                             (##cdr _arity1102411033_)))
                                        (let ((_arity11051_ _hd1102911046_))
                                          (if (##null? _tl1103011048_)
                                              (_K1102811043_ _arity11051_)
                                              (_E1102711037_))))
                                      (_E1102711037_))))))
                         (let ((_K1103111057_
                                (lambda ()
                                  (fx= (gx#stx-length _args11008_)
                                       _arity11023_))))
                           (if (fixnum? _arity1102411033_)
                               (_K1103111057_)
                               (_try-match1102611053_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1100911016_)
                (let ((_e1101311063_ (##vector-ref _self1100911016_ '1)))
                  (let ((_e1101411066_ (##vector-ref _self1100911016_ '2)))
                    (let ((_arity11069_ _e1101411066_))
                      (_K1101211060_ _arity11069_))))
                (_E1101111020_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx10947_)
      (let ((_g1094910963_
             (lambda (_g1095010960_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1095010960_))))
        (let ((_g1094811004_
               (lambda (_g1095010966_)
                 (if (gx#stx-pair? _g1095010966_)
                     (let ((_e1095310968_ (gx#stx-e _g1095010966_)))
                       (let ((_hd1095410971_ (##car _e1095310968_))
                             (_tl1095510973_ (##cdr _e1095310968_)))
                         (if (gx#stx-pair? _tl1095510973_)
                             (let ((_e1095610976_ (gx#stx-e _tl1095510973_)))
                               (let ((_hd1095710979_ (##car _e1095610976_))
                                     (_tl1095810981_ (##cdr _e1095610976_)))
                                 ((lambda (_L10984_ _L10985_)
                                    (let ((_ctx10998_
                                           (gx#syntax-local-e__0 _L10985_)))
                                      (let ((_code11000_
                                             (##structure-ref
                                              _ctx10998_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11000_))
                                           gx#current-expander-context
                                           _ctx10998_)))))
                                  _tl1095810981_
                                  _hd1095710979_)))
                             (_g1094910963_ _g1095010966_))))
                     (_g1094910963_ _g1095010966_)))))
          (_g1094811004_ _stx10947_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10754_)
      (let ((_generate-e10756_
             (lambda (_id10936_)
               (let ((_sym10938_ (gxc#identifier-symbol _id10936_)))
                 (let ((_$e10940_ (gxc#optimizer-lookup-type _sym10938_)))
                   (if _$e10940_
                       ((lambda (_type10943_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym10938_)
                            (let ((_typedecl10945_
                                   (call-method _type10943_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym10938_
                                          (cons _typedecl10945_ '()))))))
                        _$e10940_)
                       '(begin)))))))
        (let ((_g1075910797_
               (lambda (_g1076010794_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1076010794_))))
          (let ((_g1075810881_
                 (lambda (_g1076010800_)
                   (if (gx#stx-pair? _g1076010800_)
                       (let ((_e1077510802_ (gx#stx-e _g1076010800_)))
                         (let ((_hd1077610805_ (##car _e1077510802_))
                               (_tl1077710807_ (##cdr _e1077510802_)))
                           (if (gx#stx-pair? _tl1077710807_)
                               (let ((_e1077810810_ (gx#stx-e _tl1077710807_)))
                                 (let ((_hd1077910813_ (##car _e1077810810_))
                                       (_tl1078010815_ (##cdr _e1077810810_)))
                                   (if (gx#stx-pair/null? _hd1077910813_)
                                       (if (fx>= (gx#stx-length _hd1077910813_)
                                                 '0)
                                           (let ((_g17477_
                                                  (gx#syntax-split-splice
                                                   _hd1077910813_
                                                   '0)))
                                             (begin
                                               (let ((_g17478_
                                                      (values-count _g17477_)))
                                                 (if (not (fx= _g17478_ 2))
                                                     (error "Context expects 2 values"
                                                            _g17478_)))
                                               (let ((_target1078110818_
                                                      (values-ref _g17477_ 0))
                                                     (_tl1078310820_
                                                      (values-ref _g17477_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1078310820_)
                                                     (letrec ((_loop1078410823_
                                                               (lambda (_hd1078210826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1078810828_)
                         (if (gx#stx-pair? _hd1078210826_)
                             (let ((_e1078510831_ (gx#stx-e _hd1078210826_)))
                               (let ((_lp-hd1078610834_ (##car _e1078510831_))
                                     (_lp-tl1078710836_ (##cdr _e1078510831_)))
                                 (_loop1078410823_
                                  _lp-tl1078710836_
                                  (cons _lp-hd1078610834_ _id1078810828_))))
                             (let ((_id1078910839_ (reverse _id1078810828_)))
                               (if (gx#stx-pair? _tl1078010815_)
                                   (let ((_e1079010842_
                                          (gx#stx-e _tl1078010815_)))
                                     (let ((_hd1079110845_
                                            (##car _e1079010842_))
                                           (_tl1079210847_
                                            (##cdr _e1079010842_)))
                                       (if (gx#stx-null? _tl1079210847_)
                                           ((lambda (_L10850_)
                                              (let ((_ids10876_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1086810871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1086910873_)
                                (cons _g1086810871_ _g1086910873_))
                              '()
                              _L10850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types10878_
                                                       (map _generate-e10756_
                                                            _ids10876_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types10878_)))))
                                            _id1078910839_)
                                           (_g1075910797_ _g1076010800_))))
                                   (_g1075910797_ _g1076010800_)))))))
               (_loop1078410823_ _target1078110818_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1075910797_
                                                      _g1076010800_)))))
                                           (_g1075910797_ _g1076010800_))
                                       (_g1075910797_ _g1076010800_))))
                               (_g1075910797_ _g1076010800_))))
                       (_g1075910797_ _g1076010800_)))))
            (let ((_g1075710933_
                   (lambda (_g1076010884_)
                     (if (gx#stx-pair? _g1076010884_)
                         (let ((_e1076210886_ (gx#stx-e _g1076010884_)))
                           (let ((_hd1076310889_ (##car _e1076210886_))
                                 (_tl1076410891_ (##cdr _e1076210886_)))
                             (if (gx#stx-pair? _tl1076410891_)
                                 (let ((_e1076510894_
                                        (gx#stx-e _tl1076410891_)))
                                   (let ((_hd1076610897_ (##car _e1076510894_))
                                         (_tl1076710899_
                                          (##cdr _e1076510894_)))
                                     (if (gx#stx-pair? _hd1076610897_)
                                         (let ((_e1076810902_
                                                (gx#stx-e _hd1076610897_)))
                                           (let ((_hd1076910905_
                                                  (##car _e1076810902_))
                                                 (_tl1077010907_
                                                  (##cdr _e1076810902_)))
                                             (if (gx#stx-null? _tl1077010907_)
                                                 (if (gx#stx-pair?
                                                      _tl1076710899_)
                                                     (let ((_e1077110910_
                                                            (gx#stx-e
                                                             _tl1076710899_)))
                                                       (let ((_hd1077210913_
                                                              (##car _e1077110910_))
                                                             (_tl1077310915_
                                                              (##cdr _e1077110910_)))
                                                         (if (gx#stx-null?
                                                              _tl1077310915_)
                                                             ((lambda (_L10918_)
                                                                (_generate-e10756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10918_))
                      _hd1076910905_)
                     (_g1075810881_ _g1076010884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1075810881_
                                                      _g1076010884_))
                                                 (_g1075810881_
                                                  _g1076010884_))))
                                         (_g1075810881_ _g1076010884_))))
                                 (_g1075810881_ _g1076010884_))))
                         (_g1075810881_ _g1076010884_)))))
              (_g1075710933_ _stx10754_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10308_)
      (let ((_g1031210414_
             (lambda (_g1031310411_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1031310411_))))
        (let ((_g1031110421_ (lambda (_g1031310417_) ((lambda () '(begin))))))
          (let ((_g1031010571_
                 (lambda (_g1031310424_)
                   (if (gx#stx-pair? _g1031310424_)
                       (let ((_e1037110426_ (gx#stx-e _g1031310424_)))
                         (let ((_hd1037210429_ (##car _e1037110426_))
                               (_tl1037310431_ (##cdr _e1037110426_)))
                           (if (gx#stx-pair? _tl1037310431_)
                               (let ((_e1037410434_ (gx#stx-e _tl1037310431_)))
                                 (let ((_hd1037510437_ (##car _e1037410434_))
                                       (_tl1037610439_ (##cdr _e1037410434_)))
                                   (if (gx#stx-pair? _hd1037510437_)
                                       (let ((_e1037710442_
                                              (gx#stx-e _hd1037510437_)))
                                         (let ((_hd1037810445_
                                                (##car _e1037710442_))
                                               (_tl1037910447_
                                                (##cdr _e1037710442_)))
                                           (if (gx#identifier? _hd1037810445_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1037810445_)
                                                   (if (gx#stx-pair?
                                                        _tl1037910447_)
                                                       (let ((_e1038010450_
                                                              (gx#stx-e
                                                               _tl1037910447_)))
                                                         (let ((_hd1038110453_
                                                                (##car _e1038010450_))
                                                               (_tl1038210455_
                                                                (##cdr _e1038010450_)))
                                                           (if (gx#stx-null?
                                                                _tl1038210455_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1037610439_)
                           (let ((_e1038310458_ (gx#stx-e _tl1037610439_)))
                             (let ((_hd1038410461_ (##car _e1038310458_))
                                   (_tl1038510463_ (##cdr _e1038310458_)))
                               (if (gx#stx-pair? _hd1038410461_)
                                   (let ((_e1038610466_
                                          (gx#stx-e _hd1038410461_)))
                                     (let ((_hd1038710469_
                                            (##car _e1038610466_))
                                           (_tl1038810471_
                                            (##cdr _e1038610466_)))
                                       (if (gx#identifier? _hd1038710469_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1038710469_)
                                               (if (gx#stx-pair?
                                                    _tl1038810471_)
                                                   (let ((_e1038910474_
                                                          (gx#stx-e
                                                           _tl1038810471_)))
                                                     (let ((_hd1039010477_
                                                            (##car _e1038910474_))
                                                           (_tl1039110479_
                                                            (##cdr _e1038910474_)))
                                                       (if (gx#stx-null?
                                                            _tl1039110479_)
                                                           (if (gx#stx-pair?
                                                                _tl1038510463_)
                                                               (let ((_e1039210482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1038510463_)))
                         (let ((_hd1039310485_ (##car _e1039210482_))
                               (_tl1039410487_ (##cdr _e1039210482_)))
                           (if (gx#stx-pair? _hd1039310485_)
                               (let ((_e1039510490_ (gx#stx-e _hd1039310485_)))
                                 (let ((_hd1039610493_ (##car _e1039510490_))
                                       (_tl1039710495_ (##cdr _e1039510490_)))
                                   (if (gx#identifier? _hd1039610493_)
                                       (if (gx#stx-eq? '%#quote _hd1039610493_)
                                           (if (gx#stx-pair? _tl1039710495_)
                                               (let ((_e1039810498_
                                                      (gx#stx-e
                                                       _tl1039710495_)))
                                                 (let ((_hd1039910501_
                                                        (##car _e1039810498_))
                                                       (_tl1040010503_
                                                        (##cdr _e1039810498_)))
                                                   (if (gx#stx-null?
                                                        _tl1040010503_)
                                                       (if (gx#stx-pair?
                                                            _tl1039410487_)
                                                           (let ((_e1040110506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1039410487_)))
                     (let ((_hd1040210509_ (##car _e1040110506_))
                           (_tl1040310511_ (##cdr _e1040110506_)))
                       (if (gx#stx-pair? _hd1040210509_)
                           (let ((_e1040410514_ (gx#stx-e _hd1040210509_)))
                             (let ((_hd1040510517_ (##car _e1040410514_))
                                   (_tl1040610519_ (##cdr _e1040410514_)))
                               (if (gx#identifier? _hd1040510517_)
                                   (if (gx#stx-eq? '%#ref _hd1040510517_)
                                       (if (gx#stx-pair? _tl1040610519_)
                                           (let ((_e1040710522_
                                                  (gx#stx-e _tl1040610519_)))
                                             (let ((_hd1040810525_
                                                    (##car _e1040710522_))
                                                   (_tl1040910527_
                                                    (##cdr _e1040710522_)))
                                               (if (gx#stx-null?
                                                    _tl1040910527_)
                                                   (if (gx#stx-null?
                                                        _tl1040310511_)
                                                       ((lambda (_L10530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10531_
                         _L10532_
                         _L10533_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L10532_)
                                  (cons (gx#stx-e _L10531_)
                                        (cons (gxc#identifier-symbol _L10530_)
                                              (cons '#f '())))))
                      (_g1031110421_ _g1031310424_)))
                _hd1040810525_
                _hd1039910501_
                _hd1039010477_
                _hd1038110453_)
               (_g1031110421_ _g1031310424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1031110421_
                                                    _g1031310424_))))
                                           (_g1031110421_ _g1031310424_))
                                       (_g1031110421_ _g1031310424_))
                                   (_g1031110421_ _g1031310424_))))
                           (_g1031110421_ _g1031310424_))))
                   (_g1031110421_ _g1031310424_))
               (_g1031110421_ _g1031310424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1031110421_ _g1031310424_))
                                           (_g1031110421_ _g1031310424_))
                                       (_g1031110421_ _g1031310424_))))
                               (_g1031110421_ _g1031310424_))))
                       (_g1031110421_ _g1031310424_))
                   (_g1031110421_ _g1031310424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1031110421_
                                                    _g1031310424_))
                                               (_g1031110421_ _g1031310424_))
                                           (_g1031110421_ _g1031310424_))))
                                   (_g1031110421_ _g1031310424_))))
                           (_g1031110421_ _g1031310424_))
                       (_g1031110421_ _g1031310424_))))
               (_g1031110421_ _g1031310424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1031110421_
                                                    _g1031310424_))
                                               (_g1031110421_ _g1031310424_))))
                                       (_g1031110421_ _g1031310424_))))
                               (_g1031110421_ _g1031310424_))))
                       (_g1031110421_ _g1031310424_)))))
            (let ((_g1030910751_
                   (lambda (_g1031310574_)
                     (if (gx#stx-pair? _g1031310574_)
                         (let ((_e1031910576_ (gx#stx-e _g1031310574_)))
                           (let ((_hd1032010579_ (##car _e1031910576_))
                                 (_tl1032110581_ (##cdr _e1031910576_)))
                             (if (gx#stx-pair? _tl1032110581_)
                                 (let ((_e1032210584_
                                        (gx#stx-e _tl1032110581_)))
                                   (let ((_hd1032310587_ (##car _e1032210584_))
                                         (_tl1032410589_
                                          (##cdr _e1032210584_)))
                                     (if (gx#stx-pair? _hd1032310587_)
                                         (let ((_e1032510592_
                                                (gx#stx-e _hd1032310587_)))
                                           (let ((_hd1032610595_
                                                  (##car _e1032510592_))
                                                 (_tl1032710597_
                                                  (##cdr _e1032510592_)))
                                             (if (gx#identifier?
                                                  _hd1032610595_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1032610595_)
                                                     (if (gx#stx-pair?
                                                          _tl1032710597_)
                                                         (let ((_e1032810600_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1032710597_)))
                   (let ((_hd1032910603_ (##car _e1032810600_))
                         (_tl1033010605_ (##cdr _e1032810600_)))
                     (if (gx#stx-null? _tl1033010605_)
                         (if (gx#stx-pair? _tl1032410589_)
                             (let ((_e1033110608_ (gx#stx-e _tl1032410589_)))
                               (let ((_hd1033210611_ (##car _e1033110608_))
                                     (_tl1033310613_ (##cdr _e1033110608_)))
                                 (if (gx#stx-pair? _hd1033210611_)
                                     (let ((_e1033410616_
                                            (gx#stx-e _hd1033210611_)))
                                       (let ((_hd1033510619_
                                              (##car _e1033410616_))
                                             (_tl1033610621_
                                              (##cdr _e1033410616_)))
                                         (if (gx#identifier? _hd1033510619_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1033510619_)
                                                 (if (gx#stx-pair?
                                                      _tl1033610621_)
                                                     (let ((_e1033710624_
                                                            (gx#stx-e
                                                             _tl1033610621_)))
                                                       (let ((_hd1033810627_
                                                              (##car _e1033710624_))
                                                             (_tl1033910629_
                                                              (##cdr _e1033710624_)))
                                                         (if (gx#stx-null?
                                                              _tl1033910629_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1033310613_)
                         (let ((_e1034010632_ (gx#stx-e _tl1033310613_)))
                           (let ((_hd1034110635_ (##car _e1034010632_))
                                 (_tl1034210637_ (##cdr _e1034010632_)))
                             (if (gx#stx-pair? _hd1034110635_)
                                 (let ((_e1034310640_
                                        (gx#stx-e _hd1034110635_)))
                                   (let ((_hd1034410643_ (##car _e1034310640_))
                                         (_tl1034510645_
                                          (##cdr _e1034310640_)))
                                     (if (gx#identifier? _hd1034410643_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1034410643_)
                                             (if (gx#stx-pair? _tl1034510645_)
                                                 (let ((_e1034610648_
                                                        (gx#stx-e
                                                         _tl1034510645_)))
                                                   (let ((_hd1034710651_
                                                          (##car _e1034610648_))
                                                         (_tl1034810653_
                                                          (##cdr _e1034610648_)))
                                                     (if (gx#stx-null?
                                                          _tl1034810653_)
                                                         (if (gx#stx-pair?
                                                              _tl1034210637_)
                                                             (let ((_e1034910656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1034210637_)))
                       (let ((_hd1035010659_ (##car _e1034910656_))
                             (_tl1035110661_ (##cdr _e1034910656_)))
                         (if (gx#stx-pair? _hd1035010659_)
                             (let ((_e1035210664_ (gx#stx-e _hd1035010659_)))
                               (let ((_hd1035310667_ (##car _e1035210664_))
                                     (_tl1035410669_ (##cdr _e1035210664_)))
                                 (if (gx#identifier? _hd1035310667_)
                                     (if (gx#stx-eq? '%#ref _hd1035310667_)
                                         (if (gx#stx-pair? _tl1035410669_)
                                             (let ((_e1035510672_
                                                    (gx#stx-e _tl1035410669_)))
                                               (let ((_hd1035610675_
                                                      (##car _e1035510672_))
                                                     (_tl1035710677_
                                                      (##cdr _e1035510672_)))
                                                 (if (gx#stx-null?
                                                      _tl1035710677_)
                                                     (if (gx#stx-pair?
                                                          _tl1035110661_)
                                                         (let ((_e1035810680_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1035110661_)))
                   (let ((_hd1035910683_ (##car _e1035810680_))
                         (_tl1036010685_ (##cdr _e1035810680_)))
                     (if (gx#stx-pair? _hd1035910683_)
                         (let ((_e1036110688_ (gx#stx-e _hd1035910683_)))
                           (let ((_hd1036210691_ (##car _e1036110688_))
                                 (_tl1036310693_ (##cdr _e1036110688_)))
                             (if (gx#identifier? _hd1036210691_)
                                 (if (gx#stx-eq? '%#quote _hd1036210691_)
                                     (if (gx#stx-pair? _tl1036310693_)
                                         (let ((_e1036410696_
                                                (gx#stx-e _tl1036310693_)))
                                           (let ((_hd1036510699_
                                                  (##car _e1036410696_))
                                                 (_tl1036610701_
                                                  (##cdr _e1036410696_)))
                                             (if (gx#stx-null? _tl1036610701_)
                                                 (if (gx#stx-null?
                                                      _tl1036010685_)
                                                     ((lambda (_L10704_
                                                               _L10705_
                                                               _L10706_
                                                               _L10707_
                                                               _L10708_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10708_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L10707_)
                                (cons (gx#stx-e _L10706_)
                                      (cons (gxc#identifier-symbol _L10705_)
                                            (cons (gx#stx-e _L10704_) '())))))
                    (_g1031010571_ _g1031310574_)))
              _hd1036510699_
              _hd1035610675_
              _hd1034710651_
              _hd1033810627_
              _hd1032910603_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1031010571_
                                                      _g1031310574_))
                                                 (_g1031010571_
                                                  _g1031310574_))))
                                         (_g1031010571_ _g1031310574_))
                                     (_g1031010571_ _g1031310574_))
                                 (_g1031010571_ _g1031310574_))))
                         (_g1031010571_ _g1031310574_))))
                 (_g1031010571_ _g1031310574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1031010571_
                                                      _g1031310574_))))
                                             (_g1031010571_ _g1031310574_))
                                         (_g1031010571_ _g1031310574_))
                                     (_g1031010571_ _g1031310574_))))
                             (_g1031010571_ _g1031310574_))))
                     (_g1031010571_ _g1031310574_))
                 (_g1031010571_ _g1031310574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1031010571_ _g1031310574_))
                                             (_g1031010571_ _g1031310574_))
                                         (_g1031010571_ _g1031310574_))))
                                 (_g1031010571_ _g1031310574_))))
                         (_g1031010571_ _g1031310574_))
                     (_g1031010571_ _g1031310574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1031010571_
                                                      _g1031310574_))
                                                 (_g1031010571_ _g1031310574_))
                                             (_g1031010571_ _g1031310574_))))
                                     (_g1031010571_ _g1031310574_))))
                             (_g1031010571_ _g1031310574_))
                         (_g1031010571_ _g1031310574_))))
                 (_g1031010571_ _g1031310574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1031010571_
                                                      _g1031310574_))
                                                 (_g1031010571_
                                                  _g1031310574_))))
                                         (_g1031010571_ _g1031310574_))))
                                 (_g1031010571_ _g1031310574_))))
                         (_g1031010571_ _g1031310574_)))))
              (_g1030910751_ _stx10308_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10284_)
      (let ((_self1028510291_ _self10284_))
        (let ((_E1028710295_
               (lambda () (error '"No clause matching" _self1028510291_))))
          (let ((_K1028810300_
                 (lambda (_alias-id10298_)
                   (cons '@alias (cons _alias-id10298_ '())))))
            (if (struct-instance? gxc#!alias::t _self1028510291_)
                (let ((_e1028910303_ (##vector-ref _self1028510291_ '1)))
                  (let ((_alias-id10306_ _e1028910303_))
                    (_K1028810300_ _alias-id10306_)))
                (_E1028710295_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10228_)
      (let ((_self1022910240_ _self10228_))
        (let ((_E1023110244_
               (lambda () (error '"No clause matching" _self1022910240_))))
          (let ((_K1023210253_
                 (lambda (_plist10247_
                          _ctor10248_
                          _fields10249_
                          _super10250_
                          _type-id10251_)
                   (cons '@struct-type
                         (cons _type-id10251_
                               (cons _super10250_
                                     (cons _fields10249_
                                           (cons _ctor10248_
                                                 (cons _plist10247_
                                                       '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self1022910240_)
                (let ((_e1023310256_ (##vector-ref _self1022910240_ '1)))
                  (let ((_type-id10259_ _e1023310256_))
                    (let ((_e1023410261_ (##vector-ref _self1022910240_ '2)))
                      (let ((_super10264_ _e1023410261_))
                        (let ((_e1023510266_
                               (##vector-ref _self1022910240_ '3)))
                          (let ((_fields10269_ _e1023510266_))
                            (let ((_e1023610271_
                                   (##vector-ref _self1022910240_ '4)))
                              (let ((_e1023710274_
                                     (##vector-ref _self1022910240_ '5)))
                                (let ((_ctor10277_ _e1023710274_))
                                  (let ((_e1023810279_
                                         (##vector-ref _self1022910240_ '6)))
                                    (let ((_plist10282_ _e1023810279_))
                                      (_K1023210253_
                                       _plist10282_
                                       _ctor10277_
                                       _fields10269_
                                       _super10264_
                                       _type-id10259_))))))))))))
                (_E1023110244_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10204_)
      (let ((_self1020510211_ _self10204_))
        (let ((_E1020710215_
               (lambda () (error '"No clause matching" _self1020510211_))))
          (let ((_K1020810220_
                 (lambda (_struct-t10218_)
                   (cons '@struct-pred (cons _struct-t10218_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self1020510211_)
                (let ((_e1020910223_ (##vector-ref _self1020510211_ '1)))
                  (let ((_struct-t10226_ _e1020910223_))
                    (_K1020810220_ _struct-t10226_)))
                (_E1020710215_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10180_)
      (let ((_self1018110187_ _self10180_))
        (let ((_E1018310191_
               (lambda () (error '"No clause matching" _self1018110187_))))
          (let ((_K1018410196_
                 (lambda (_struct-t10194_)
                   (cons '@struct-cons (cons _struct-t10194_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self1018110187_)
                (let ((_e1018510199_ (##vector-ref _self1018110187_ '1)))
                  (let ((_struct-t10202_ _e1018510199_))
                    (_K1018410196_ _struct-t10202_)))
                (_E1018310191_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10149_)
      (let ((_self1015010157_ _self10149_))
        (let ((_E1015210161_
               (lambda () (error '"No clause matching" _self1015010157_))))
          (let ((_K1015310167_
                 (lambda (_off10164_ _struct-t10165_)
                   (cons '@struct-getf
                         (cons _struct-t10165_ (cons _off10164_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self1015010157_)
                (let ((_e1015410170_ (##vector-ref _self1015010157_ '1)))
                  (let ((_struct-t10173_ _e1015410170_))
                    (let ((_e1015510175_ (##vector-ref _self1015010157_ '2)))
                      (let ((_off10178_ _e1015510175_))
                        (_K1015310167_ _off10178_ _struct-t10173_)))))
                (_E1015210161_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10118_)
      (let ((_self1011910126_ _self10118_))
        (let ((_E1012110130_
               (lambda () (error '"No clause matching" _self1011910126_))))
          (let ((_K1012210136_
                 (lambda (_off10133_ _struct-t10134_)
                   (cons '@struct-setf
                         (cons _struct-t10134_ (cons _off10133_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self1011910126_)
                (let ((_e1012310139_ (##vector-ref _self1011910126_ '1)))
                  (let ((_struct-t10142_ _e1012310139_))
                    (let ((_e1012410144_ (##vector-ref _self1011910126_ '2)))
                      (let ((_off10147_ _e1012410144_))
                        (_K1012210136_ _off10147_ _struct-t10142_)))))
                (_E1012110130_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10066_)
      (let ((_self1006710077_ _self10066_))
        (let ((_E1006910081_
               (lambda () (error '"No clause matching" _self1006710077_))))
          (let ((_K1007010092_
                 (lambda (_typedecl10084_
                          _inline10085_
                          _dispatch10086_
                          _arity10087_)
                   (if _inline10085_
                       (let ((_$e10089_ _typedecl10084_))
                         (if _$e10089_
                             _$e10089_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10087_
                                   (cons _dispatch10086_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self1006710077_)
                (let ((_e1007110095_ (##vector-ref _self1006710077_ '1)))
                  (let ((_e1007210098_ (##vector-ref _self1006710077_ '2)))
                    (let ((_arity10101_ _e1007210098_))
                      (let ((_e1007310103_ (##vector-ref _self1006710077_ '3)))
                        (let ((_dispatch10106_ _e1007310103_))
                          (let ((_e1007410108_
                                 (##vector-ref _self1006710077_ '4)))
                            (let ((_inline10111_ _e1007410108_))
                              (let ((_e1007510113_
                                     (##vector-ref _self1006710077_ '5)))
                                (let ((_typedecl10116_ _e1007510113_))
                                  (_K1007010092_
                                   _typedecl10116_
                                   _inline10111_
                                   _dispatch10106_
                                   _arity10101_))))))))))
                (_E1006910081_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self9999_)
      (let ((_clause-e10001_
             (lambda (_clause10031_)
               (let ((_clause1003210040_ _clause10031_))
                 (let ((_E1003410044_
                        (lambda ()
                          (error '"No clause matching" _clause1003210040_))))
                   (let ((_K1003510050_
                          (lambda (_dispatch10047_ _arity10048_)
                            (cons _arity10048_ (cons _dispatch10047_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause1003210040_)
                         (let ((_e1003610053_
                                (##vector-ref _clause1003210040_ '1)))
                           (let ((_e1003710056_
                                  (##vector-ref _clause1003210040_ '2)))
                             (let ((_arity10059_ _e1003710056_))
                               (let ((_e1003810061_
                                      (##vector-ref _clause1003210040_ '3)))
                                 (let ((_dispatch10064_ _e1003810061_))
                                   (_K1003510050_
                                    _dispatch10064_
                                    _arity10059_))))))
                         (_E1003410044_))))))))
        (let ((_self1000210009_ _self9999_))
          (let ((_E1000410013_
                 (lambda () (error '"No clause matching" _self1000210009_))))
            (let ((_K1000510020_
                   (lambda (_clauses10016_)
                     (let ((_clauses10018_
                            (map _clause-e10001_ _clauses10016_)))
                       (cons '@case-lambda _clauses10018_)))))
              (if (struct-instance? gxc#!case-lambda::t _self1000210009_)
                  (let ((_e1000610023_ (##vector-ref _self1000210009_ '1)))
                    (let ((_e1000710026_ (##vector-ref _self1000210009_ '2)))
                      (let ((_clauses10029_ _e1000710026_))
                        (_K1000510020_ _clauses10029_))))
                  (_E1000410013_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx9994_)
      (let ((_$e9996_ (gx#resolve-identifier__0 _stx9994_)))
        (if _$e9996_
            (##structure-ref _$e9996_ '1 gx#binding::t '#f)
            (gx#stx-e _stx9994_))))))
