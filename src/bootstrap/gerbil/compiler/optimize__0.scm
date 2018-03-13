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
     ':init!
     '(type ssxi)))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args27367_
      (apply make-struct-instance gxc#optimizer-info::t _$args27367_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27365_)
      (if (##fx< '2 (##vector-length _self27365_))
          (begin
            (##vector-set! _self27365_ '1 (make-hash-table-eq))
            (##vector-set! _self27365_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27365_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27379 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27379) __obj27379))))))
  (define gxc#optimize!
    (lambda (_ctx27237_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27237_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27237_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27240_
                  (gxc#optimize-source
                   (##structure-ref _ctx27237_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27237_
              _code27240_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27182_)
      (letrec* ((_deps27184_
                 (let* ((_imports27228_
                         (##structure-ref
                          _ctx27182_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27230_ (gx#core-context-prelude__% _ctx27182_)))
                   (if _$e27230_
                       ((lambda (_g2723227234_)
                          (cons _g2723227234_ _imports27228_))
                        _$e27230_)
                       _imports27228_))))
        (let _lp27186_ ((_rest27188_ _deps27184_))
          (let* ((_rest2718927197_ _rest27188_)
                 (_E2719227201_
                  (lambda () (error '"No clause matching" _rest2718927197_)))
                 (_else2719127205_ (lambda () '#!void))
                 (_K2719327216_
                  (lambda (_rest27208_ _hd27209_)
                    (if (##structure-instance-of?
                         _hd27209_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27209_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27211_
                                       (gx#core-context-prelude__% _hd27209_)))
                                  (if _$e27211_
                                      ((lambda (_pre27214_)
                                         (_lp27186_
                                          (cons _pre27214_
                                                (##structure-ref
                                                 _hd27209_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27211_)
                                      (_lp27186_
                                       (##structure-ref
                                        _hd27209_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27209_)))
                          (_lp27186_ _rest27208_))
                        (if (##structure-instance-of?
                             _hd27209_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27209_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27186_
                                     (##structure-ref
                                      _hd27209_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27209_)))
                              (_lp27186_ _rest27208_))
                            (if (##structure-direct-instance-of?
                                 _hd27209_
                                 'gx#module-import::t)
                                (_lp27186_
                                 (cons (##direct-structure-ref
                                        _hd27209_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27208_))
                                (if (##structure-direct-instance-of?
                                     _hd27209_
                                     'gx#module-export::t)
                                    (_lp27186_
                                     (cons (##direct-structure-ref
                                            _hd27209_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27208_))
                                    (if (##structure-direct-instance-of?
                                         _hd27209_
                                         'gx#import-set::t)
                                        (_lp27186_
                                         (cons (##direct-structure-ref
                                                _hd27209_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27208_))
                                        (error '"Unexpected module import"
                                               _hd27209_)))))))))
            (if (##pair? _rest2718927197_)
                (let ((_hd2719427219_ (##car _rest2718927197_))
                      (_tl2719527221_ (##cdr _rest2718927197_)))
                  (let* ((_hd27224_ _hd2719427219_)
                         (_rest27226_ _tl2719527221_))
                    (_K2719327216_ _rest27226_ _hd27224_)))
                (_else2719127205_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27162_)
      (if (if (##structure-instance-of? _ctx27162_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27162_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27164_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27166_
                  (##structure-ref _ctx27162_ '1 gx#expander-context::t '#f))
                 (_mod27168_ (table-ref _ht27164_ _id27166_ '#f)))
            (let ((_$e27171_ _mod27168_))
              (if _$e27171_
                  _$e27171_
                  (let* ((_mod27174_ (gxc#optimizer-import-ssxi _ctx27162_))
                         (_val27179_
                          (let ((_$e27176_ _mod27174_))
                            (if _$e27176_ _$e27176_ '#!void))))
                    (begin
                      (table-set! _ht27164_ _id27166_ _val27179_)
                      _val27179_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27139_)
      (letrec ((_catch-e27141_
                (lambda (_exn27160_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27139_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27160_))
                        '#!void)
                    '#f)))
               (_import-e27142_
                (lambda ()
                  (let* ((_str-id27145_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx27139_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27153_
                          (let ((_odir2714627148_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2714627148_
                                (let ((_odir27151_ _odir2714627148_))
                                  (path-expand
                                   (string-append _str-id27145_ '".ss")
                                   _odir27151_))
                                '#f)))
                         (_library-path27155_
                          (string->symbol
                           (string-append '":" _str-id27145_ '".ss")))
                         (_ssxi-path27157_
                          (if (if _artefact-path27153_
                                  (file-exists? _artefact-path27153_)
                                  '#f)
                              _artefact-path27153_
                              _library-path27155_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27157_)
                      (gx#import-module__% _ssxi-path27157_ '#t '#t))))))
        (if (##structure-ref _ctx27139_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27141_ _import-e27142_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27136_
      (apply make-struct-instance gxc#!type::t _$args27136_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27133_
      (apply make-struct-instance gxc#!alias::t _$args27133_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!
     '(super fields xfields ctor plist methods)))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args27130_
      (apply make-struct-instance gxc#!struct-type::t _$args27130_)))
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
    (make-struct-type
     'gxc#!procedure::t
     gxc#!type::t
     '0
     '!procedure
     '()
     '#f
     '()))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args27127_
      (apply make-struct-instance gxc#!procedure::t _$args27127_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f
     '()))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args27124_
      (apply make-struct-instance gxc#!struct-pred::t _$args27124_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f
     '()))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args27121_
      (apply make-struct-instance gxc#!struct-cons::t _$args27121_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args27118_
      (apply make-struct-instance gxc#!struct-getf::t _$args27118_)))
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
     '#f
     '(off unchecked?)))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args27115_
      (apply make-struct-instance gxc#!struct-setf::t _$args27115_)))
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
     ':init!
     '(arity dispatch inline inline-typedecl)))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args27112_
      (apply make-struct-instance gxc#!lambda::t _$args27112_)))
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
     '#f
     '(clauses)))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args27109_
      (apply make-struct-instance gxc#!case-lambda::t _$args27109_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!kw-lambda::t
    (make-struct-type
     'gxc#!kw-lambda::t
     gxc#!procedure::t
     '2
     '!kw-lambda
     '()
     '#f
     '(table dispatch)))
  (define gxc#!kw-lambda? (make-struct-predicate gxc#!kw-lambda::t))
  (define gxc#make-!kw-lambda
    (lambda _$args27106_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27106_)))
  (define gxc#!kw-lambda-table
    (make-struct-field-accessor gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch
    (make-struct-field-accessor gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-table-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-primary::t
    (make-struct-type
     'gxc#!kw-lambda-primary::t
     gxc#!procedure::t
     '2
     '!kw-lambda-primary
     '()
     '#f
     '(keys main)))
  (define gxc#!kw-lambda-primary?
    (make-struct-predicate gxc#!kw-lambda-primary::t))
  (define gxc#make-!kw-lambda-primary
    (lambda _$args27103_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27103_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27095_
             _id27096_
             _super27097_
             _fields27098_
             _xfields27099_
             _ctor27100_
             _plist27101_)
      (if (##fx< '7 (##vector-length _self27095_))
          (begin
            (##vector-set! _self27095_ '1 _id27096_)
            (##vector-set! _self27095_ '2 _super27097_)
            (##vector-set! _self27095_ '3 _fields27098_)
            (##vector-set! _self27095_ '4 _xfields27099_)
            (##vector-set! _self27095_ '5 _ctor27100_)
            (##vector-set! _self27095_ '6 _plist27101_)
            (##vector-set! _self27095_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27095_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self26939_
               _id26940_
               _arity26941_
               _dispatch26942_
               _inline26943_
               _typedecl26944_)
        (if (##fx< '5 (##vector-length _self26939_))
            (begin
              (##vector-set! _self26939_ '1 _id26940_)
              (##vector-set! _self26939_ '2 _arity26941_)
              (##vector-set! _self26939_ '3 _dispatch26942_)
              (##vector-set! _self26939_ '4 _inline26943_)
              (##vector-set! _self26939_ '5 _typedecl26944_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self26939_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self26949_ _id26950_ _arity26951_ _dispatch26952_)
          (let* ((_inline26954_ '#f) (_typedecl26956_ '#f))
            (if (##fx< '5 (##vector-length _self26949_))
                (begin
                  (##vector-set! _self26949_ '1 _id26950_)
                  (##vector-set! _self26949_ '2 _arity26951_)
                  (##vector-set! _self26949_ '3 _dispatch26952_)
                  (##vector-set! _self26949_ '4 _inline26954_)
                  (##vector-set! _self26949_ '5 _typedecl26956_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26949_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self26958_
                 _id26959_
                 _arity26960_
                 _dispatch26961_
                 _inline26962_)
          (let ((_typedecl26964_ '#f))
            (if (##fx< '5 (##vector-length _self26958_))
                (begin
                  (##vector-set! _self26958_ '1 _id26959_)
                  (##vector-set! _self26958_ '2 _arity26960_)
                  (##vector-set! _self26958_ '3 _dispatch26961_)
                  (##vector-set! _self26958_ '4 _inline26962_)
                  (##vector-set! _self26958_ '5 _typedecl26964_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26958_)))))
      (define gxc#!lambda:::init!
        (lambda _g27387_
          (let ((_g27386_ (length _g27387_)))
            (cond ((fx= _g27386_ 4) (apply gxc#!lambda:::init!__0 _g27387_))
                  ((fx= _g27386_ 5) (apply gxc#!lambda:::init!__1 _g27387_))
                  ((fx= _g27386_ 6)
                   (apply (lambda (_self26966_
                                   _id26967_
                                   _arity26968_
                                   _dispatch26969_
                                   _inline26970_
                                   _typedecl26971_)
                            (if (##fx< '5 (##vector-length _self26966_))
                                (begin
                                  (##vector-set! _self26966_ '1 _id26967_)
                                  (##vector-set! _self26966_ '2 _arity26968_)
                                  (##vector-set!
                                   _self26966_
                                   '3
                                   _dispatch26969_)
                                  (##vector-set! _self26966_ '4 _inline26970_)
                                  (##vector-set!
                                   _self26966_
                                   '5
                                   _typedecl26971_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self26966_)))
                          _g27387_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27387_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type26809_)
      (let ((_$e26811_
             (##structure-ref _type26809_ '7 gxc#!struct-type::t '#f)))
        (if _$e26811_
            (values _$e26811_)
            (let ((_vtab26814_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type26809_
                 _vtab26814_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab26814_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type26800_ _method26801_)
      (let ((_vtab2680226804_
             (##structure-ref _type26800_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2680226804_
            (let ((_vtab26807_ _vtab2680226804_))
              (table-ref _vtab26807_ _method26801_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym26784_ _type26785_ _local?26786_)
        (begin
          (if (##structure-instance-of? _type26785_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym26784_
                     _type26785_))
          (gxc#verbose
           '"declare-type "
           _sym26784_
           '" "
           (struct->list _type26785_))
          (table-set!
           (if _local?26786_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym26784_
           _type26785_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym26791_ _type26792_)
          (let ((_local?26794_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym26791_
             _type26792_
             _local?26794_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27389_
          (let ((_g27388_ (length _g27389_)))
            (cond ((fx= _g27388_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27389_))
                  ((fx= _g27388_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27389_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27389_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t26760_ _method26761_ _sym26762_ _rebind?26763_)
        (let ((_type26765_ (gxc#optimizer-resolve-type _type-t26760_)))
          (if (##structure-instance-of? _type26765_ 'gxc#!struct-type::t)
              (let ((_vtab26767_ (gxc#!struct-type-vtab _type26765_)))
                (if _rebind?26763_
                    (if (hash-key? _vtab26767_ _method26761_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t26760_
                         '" "
                         _method26761_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t26760_
                         '" "
                         _method26761_))
                    (if (hash-key? _vtab26767_ _method26761_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t26760_
                           '" "
                           _method26761_
                           '" => "
                           _sym26762_)
                          (table-set! _vtab26767_ _method26761_ _sym26762_)))))
              (if (not _type26765_)
                  (gxc#verbose '"declare-method: unknown type " _type-t26760_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t26760_
                         _type26765_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t26772_ _method26773_ _sym26774_)
          (let ((_rebind?26776_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t26772_
             _method26773_
             _sym26774_
             _rebind?26776_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27391_
          (let ((_g27390_ (length _g27391_)))
            (cond ((fx= _g27390_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27391_))
                  ((fx= _g27390_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27391_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27391_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym26748_)
      (let ((_$e26756_
             (let ((_ht2674926751_ (gxc#current-compile-local-type)))
               (if _ht2674926751_
                   (let ((_ht26754_ _ht2674926751_))
                     (table-ref _ht26754_ _sym26748_ '#f))
                   '#f))))
        (if _$e26756_
            _$e26756_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym26748_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym26740_)
      (let ((_type2674126743_ (gxc#optimizer-lookup-type _sym26740_)))
        (if _type2674126743_
            (let ((_type26746_ _type2674126743_))
              (if (##structure-instance-of? _type26746_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type26746_ '1 gxc#!type::t '#f))
                  _type26746_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t26735_ _method26736_)
      (let ((_type26738_ (gxc#optimizer-resolve-type _type-t26735_)))
        (if (##structure-instance-of? _type26738_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type26738_ _method26736_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx26731_)
      (begin
        (gxc#apply-collect-mutators _stx26731_)
        (let ((_stx26733_ (gxc#apply-lift-top-lambdas _stx26731_)))
          (begin
            (gxc#apply-collect-type-info _stx26733_)
            (gxc#apply-optimize-call _stx26733_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl26728_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26728_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl26728_ '%#lambda gxc#xform-identity)
           (table-set! _tbl26728_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl26728_ '%#let-values gxc#xform-identity)
           (table-set! _tbl26728_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl26728_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl26728_ '%#quote gxc#xform-identity)
           (table-set! _tbl26728_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26728_ '%#call gxc#xform-identity)
           (table-set! _tbl26728_ '%#if gxc#xform-identity)
           (table-set! _tbl26728_ '%#ref gxc#xform-identity)
           (table-set! _tbl26728_ '%#set! gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl26728_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl26728_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl26728_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl26724_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26724_ '%#begin gxc#xform-identity)
           (table-set! _tbl26724_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl26724_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl26724_ '%#module gxc#xform-identity)
           (table-set! _tbl26724_ '%#import gxc#xform-identity)
           (table-set! _tbl26724_ '%#export gxc#xform-identity)
           (table-set! _tbl26724_ '%#provide gxc#xform-identity)
           (table-set! _tbl26724_ '%#extern gxc#xform-identity)
           (table-set! _tbl26724_ '%#define-values gxc#xform-identity)
           (table-set! _tbl26724_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl26724_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl26724_ '%#declare gxc#xform-identity)
           _tbl26724_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl26720_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26720_ (force gxc#&identity-special-form))
           (hash-copy! _tbl26720_ (force gxc#&identity-expression))
           _tbl26720_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl26716_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl26716_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl26716_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl26716_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl26716_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl26716_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl26716_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl26716_ '%#quote gxc#xform-identity)
           (table-set! _tbl26716_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26716_ '%#call gxc#xform-operands)
           (table-set! _tbl26716_ '%#if gxc#xform-operands)
           (table-set! _tbl26716_ '%#ref gxc#xform-identity)
           (table-set! _tbl26716_ '%#set! gxc#xform-setq%)
           (table-set! _tbl26716_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl26716_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl26716_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl26716_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl26716_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl26716_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl26716_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl26716_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl26716_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl26712_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26712_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl26712_ (force gxc#&identity))
           (table-set! _tbl26712_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26712_ '%#module gxc#xform-module%)
           (table-set! _tbl26712_ '%#define-values gxc#xform-define-values%)
           _tbl26712_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl26708_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26708_ (force gxc#&void))
           (table-set! _tbl26708_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26708_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26708_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26708_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26708_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26708_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl26708_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl26708_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl26708_ '%#call gxc#collect-operands)
           (table-set! _tbl26708_ '%#if gxc#collect-operands)
           (table-set! _tbl26708_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl26708_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl26708_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl26708_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl26708_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl26708_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl26708_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl26708_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl26708_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl26708_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx26701_ . _args26703_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26701_ _args26703_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl26698_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26698_ (force gxc#&basic-xform))
           (table-set!
            _tbl26698_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26698_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26698_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26698_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26698_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26691_ . _args26693_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26691_ _args26693_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl26688_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26688_ (force gxc#&basic-xform-expression))
           (table-set! _tbl26688_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26688_ '%#ref gxc#expression-subst-ref%)
           _tbl26688_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx26681_ . _args26683_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26681_ _args26683_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl26678_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26678_ (force gxc#&void))
           (table-set! _tbl26678_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26678_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26678_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26678_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26678_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26678_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26678_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26678_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26678_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26678_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26678_ '%#if gxc#collect-operands)
           (table-set! _tbl26678_ '%#set! gxc#collect-body-setq%)
           _tbl26678_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26671_ . _args26673_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26671_ _args26673_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl26668_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26668_ (force gxc#&false))
           (table-set! _tbl26668_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26668_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26668_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26668_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl26668_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26668_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26668_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26661_ . _args26663_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26661_ _args26663_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl26658_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26658_ (force gxc#&basic-xform))
           (table-set! _tbl26658_ '%#call gxc#optimize-call%)
           _tbl26658_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx26651_ . _args26653_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26651_ _args26653_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl26648_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26648_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl26648_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl26648_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl26648_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl26648_ '%#call gxc#generate-ssxi-call%)
           _tbl26648_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx26641_ . _args26643_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26641_ _args26643_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx26638_ . _args26639_) _stx26638_))
  (define gxc#xform-wrap-source
    (lambda (_stx26635_ _src-stx26636_)
      (gx#stx-wrap-source _stx26635_ (gx#stx-source _src-stx26636_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args26629_)
      (lambda (_g2663026632_)
        (apply gxc#compile-e _g2663026632_ _args26629_))))
  (define gxc#xform-begin%
    (lambda (_stx26588_ . _args26589_)
      (let* ((_g2659126601_
              (lambda (_g2659226598_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2659226598_)))
             (_g2659026626_
              (lambda (_g2659226604_)
                (if (gx#stx-pair? _g2659226604_)
                    (let ((_e2659426606_ (gx#stx-e _g2659226604_)))
                      (let ((_hd2659526609_ (##car _e2659426606_))
                            (_tl2659626611_ (##cdr _e2659426606_)))
                        ((lambda (_L26614_)
                           (let ((_forms26624_
                                  (map (gxc#xform-apply-compile-e _args26589_)
                                       _L26614_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms26624_)
                              _stx26588_)))
                         _tl2659626611_)))
                    (_g2659126601_ _g2659226604_)))))
        (_g2659026626_ _stx26588_))))
  (define gxc#xform-module%
    (lambda (_stx26525_ . _args26526_)
      (let* ((_g2652826542_
              (lambda (_g2652926539_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2652926539_)))
             (_g2652726585_
              (lambda (_g2652926545_)
                (if (gx#stx-pair? _g2652926545_)
                    (let ((_e2653226547_ (gx#stx-e _g2652926545_)))
                      (let ((_hd2653326550_ (##car _e2653226547_))
                            (_tl2653426552_ (##cdr _e2653226547_)))
                        (if (gx#stx-pair? _tl2653426552_)
                            (let ((_e2653526555_ (gx#stx-e _tl2653426552_)))
                              (let ((_hd2653626558_ (##car _e2653526555_))
                                    (_tl2653726560_ (##cdr _e2653526555_)))
                                ((lambda (_L26563_ _L26564_)
                                   (let* ((_ctx26577_
                                           (gx#syntax-local-e__0 _L26564_))
                                          (_code26579_
                                           (##structure-ref
                                            _ctx26577_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code26582_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code26579_
                                                     _args26526_))
                                            gx#current-expander-context
                                            _ctx26577_)))
                                     (begin
                                       (##structure-set!
                                        _ctx26577_
                                        _code26582_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L26564_
                                                    (cons _code26582_ '())))
                                        _stx26525_))))
                                 _tl2653726560_
                                 _hd2653626558_)))
                            (_g2652826542_ _g2652926545_))))
                    (_g2652826542_ _g2652926545_)))))
        (_g2652726585_ _stx26525_))))
  (define gxc#xform-define-values%
    (lambda (_stx26455_ . _args26456_)
      (let* ((_g2645826475_
              (lambda (_g2645926472_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2645926472_)))
             (_g2645726522_
              (lambda (_g2645926478_)
                (if (gx#stx-pair? _g2645926478_)
                    (let ((_e2646226480_ (gx#stx-e _g2645926478_)))
                      (let ((_hd2646326483_ (##car _e2646226480_))
                            (_tl2646426485_ (##cdr _e2646226480_)))
                        (if (gx#stx-pair? _tl2646426485_)
                            (let ((_e2646526488_ (gx#stx-e _tl2646426485_)))
                              (let ((_hd2646626491_ (##car _e2646526488_))
                                    (_tl2646726493_ (##cdr _e2646526488_)))
                                (if (gx#stx-pair? _tl2646726493_)
                                    (let ((_e2646826496_
                                           (gx#stx-e _tl2646726493_)))
                                      (let ((_hd2646926499_
                                             (##car _e2646826496_))
                                            (_tl2647026501_
                                             (##cdr _e2646826496_)))
                                        (if (gx#stx-null? _tl2647026501_)
                                            ((lambda (_L26504_ _L26505_)
                                               (let ((_expr26520_
                                                      (apply gxc#compile-e
                                                             _L26504_
                                                             _args26456_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26505_
                                                              (cons _expr26520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26455_)))
                                             _hd2646926499_
                                             _hd2646626491_)
                                            (_g2645826475_ _g2645926478_))))
                                    (_g2645826475_ _g2645926478_))))
                            (_g2645826475_ _g2645926478_))))
                    (_g2645826475_ _g2645926478_)))))
        (_g2645726522_ _stx26455_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26385_ . _args26386_)
      (let* ((_g2638826405_
              (lambda (_g2638926402_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2638926402_)))
             (_g2638726452_
              (lambda (_g2638926408_)
                (if (gx#stx-pair? _g2638926408_)
                    (let ((_e2639226410_ (gx#stx-e _g2638926408_)))
                      (let ((_hd2639326413_ (##car _e2639226410_))
                            (_tl2639426415_ (##cdr _e2639226410_)))
                        (if (gx#stx-pair? _tl2639426415_)
                            (let ((_e2639526418_ (gx#stx-e _tl2639426415_)))
                              (let ((_hd2639626421_ (##car _e2639526418_))
                                    (_tl2639726423_ (##cdr _e2639526418_)))
                                (if (gx#stx-pair? _tl2639726423_)
                                    (let ((_e2639826426_
                                           (gx#stx-e _tl2639726423_)))
                                      (let ((_hd2639926429_
                                             (##car _e2639826426_))
                                            (_tl2640026431_
                                             (##cdr _e2639826426_)))
                                        (if (gx#stx-null? _tl2640026431_)
                                            ((lambda (_L26434_ _L26435_)
                                               (let ((_expr26450_
                                                      (apply gxc#compile-e
                                                             _L26434_
                                                             _args26386_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26435_
                                                              (cons _expr26450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26385_)))
                                             _hd2639926429_
                                             _hd2639626421_)
                                            (_g2638826405_ _g2638926408_))))
                                    (_g2638826405_ _g2638926408_))))
                            (_g2638826405_ _g2638926408_))))
                    (_g2638826405_ _g2638926408_)))))
        (_g2638726452_ _stx26385_))))
  (define gxc#xform-lambda%
    (lambda (_stx26328_ . _args26329_)
      (let* ((_g2633126345_
              (lambda (_g2633226342_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2633226342_)))
             (_g2633026382_
              (lambda (_g2633226348_)
                (if (gx#stx-pair? _g2633226348_)
                    (let ((_e2633526350_ (gx#stx-e _g2633226348_)))
                      (let ((_hd2633626353_ (##car _e2633526350_))
                            (_tl2633726355_ (##cdr _e2633526350_)))
                        (if (gx#stx-pair? _tl2633726355_)
                            (let ((_e2633826358_ (gx#stx-e _tl2633726355_)))
                              (let ((_hd2633926361_ (##car _e2633826358_))
                                    (_tl2634026363_ (##cdr _e2633826358_)))
                                ((lambda (_L26366_ _L26367_)
                                   (let ((_body26380_
                                          (map (gxc#xform-apply-compile-e
                                                _args26329_)
                                               _L26366_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26367_ _body26380_))
                                      _stx26328_)))
                                 _tl2634026363_
                                 _hd2633926361_)))
                            (_g2633126345_ _g2633226348_))))
                    (_g2633126345_ _g2633226348_)))))
        (_g2633026382_ _stx26328_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26241_ . _args26242_)
      (letrec ((_clause-e26244_
                (lambda (_clause26285_)
                  (let* ((_g2628726298_
                          (lambda (_g2628826295_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2628826295_)))
                         (_g2628626325_
                          (lambda (_g2628826301_)
                            (if (gx#stx-pair? _g2628826301_)
                                (let ((_e2629126303_ (gx#stx-e _g2628826301_)))
                                  (let ((_hd2629226306_ (##car _e2629126303_))
                                        (_tl2629326308_ (##cdr _e2629126303_)))
                                    ((lambda (_L26311_ _L26312_)
                                       (let ((_body26323_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26242_)
                                                   _L26311_)))
                                         (cons _L26312_ _body26323_)))
                                     _tl2629326308_
                                     _hd2629226306_)))
                                (_g2628726298_ _g2628826301_)))))
                    (_g2628626325_ _clause26285_)))))
        (let* ((_g2624626256_
                (lambda (_g2624726253_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2624726253_)))
               (_g2624526282_
                (lambda (_g2624726259_)
                  (if (gx#stx-pair? _g2624726259_)
                      (let ((_e2624926261_ (gx#stx-e _g2624726259_)))
                        (let ((_hd2625026264_ (##car _e2624926261_))
                              (_tl2625126266_ (##cdr _e2624926261_)))
                          ((lambda (_L26269_)
                             (let ((_clauses26280_
                                    (map _clause-e26244_ _L26269_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26280_)
                                _stx26241_)))
                           _tl2625126266_)))
                      (_g2624626256_ _g2624726259_)))))
          (_g2624526282_ _stx26241_)))))
  (define gxc#xform-let-values%
    (lambda (_stx26035_ . _args26036_)
      (let* ((_g2603826071_
              (lambda (_g2603926068_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2603926068_)))
             (_g2603726238_
              (lambda (_g2603926074_)
                (if (gx#stx-pair? _g2603926074_)
                    (let ((_e2604426076_ (gx#stx-e _g2603926074_)))
                      (let ((_hd2604526079_ (##car _e2604426076_))
                            (_tl2604626081_ (##cdr _e2604426076_)))
                        (if (gx#stx-pair? _tl2604626081_)
                            (let ((_e2604726084_ (gx#stx-e _tl2604626081_)))
                              (let ((_hd2604826087_ (##car _e2604726084_))
                                    (_tl2604926089_ (##cdr _e2604726084_)))
                                (if (gx#stx-pair/null? _hd2604826087_)
                                    (if (fx>= (gx#stx-length _hd2604826087_)
                                              '0)
                                        (let ((_g27392_
                                               (gx#syntax-split-splice
                                                _hd2604826087_
                                                '0)))
                                          (begin
                                            (let ((_g27393_
                                                   (values-count _g27392_)))
                                              (if (not (fx= _g27393_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27393_)))
                                            (let ((_target2605026092_
                                                   (values-ref _g27392_ 0))
                                                  (_tl2605226094_
                                                   (values-ref _g27392_ 1)))
                                              (if (gx#stx-null? _tl2605226094_)
                                                  (letrec ((_loop2605326097_
                                                            (lambda (_hd2605126100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2605726102_
                             _hd2605826104_)
                      (if (gx#stx-pair? _hd2605126100_)
                          (let ((_e2605426107_ (gx#stx-e _hd2605126100_)))
                            (let ((_lp-hd2605526110_ (##car _e2605426107_))
                                  (_lp-tl2605626112_ (##cdr _e2605426107_)))
                              (if (gx#stx-pair? _lp-hd2605526110_)
                                  (let ((_e2606126115_
                                         (gx#stx-e _lp-hd2605526110_)))
                                    (let ((_hd2606226118_
                                           (##car _e2606126115_))
                                          (_tl2606326120_
                                           (##cdr _e2606126115_)))
                                      (if (gx#stx-pair? _tl2606326120_)
                                          (let ((_e2606426123_
                                                 (gx#stx-e _tl2606326120_)))
                                            (let ((_hd2606526126_
                                                   (##car _e2606426123_))
                                                  (_tl2606626128_
                                                   (##cdr _e2606426123_)))
                                              (if (gx#stx-null? _tl2606626128_)
                                                  (_loop2605326097_
                                                   _lp-tl2605626112_
                                                   (cons _hd2606526126_
                                                         _expr2605726102_)
                                                   (cons _hd2606226118_
                                                         _hd2605826104_))
                                                  (_g2603826071_
                                                   _g2603926074_))))
                                          (_g2603826071_ _g2603926074_))))
                                  (_g2603826071_ _g2603926074_))))
                          (let ((_expr2605926131_ (reverse _expr2605726102_))
                                (_hd2606026133_ (reverse _hd2605826104_)))
                            ((lambda (_L26136_ _L26137_ _L26138_ _L26139_)
                               (let* ((_g2615826174_
                                       (lambda (_g2615926171_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2615926171_)))
                                      (_g2615726228_
                                       (lambda (_g2615926177_)
                                         (if (gx#stx-pair/null? _g2615926177_)
                                             (if (fx>= (gx#stx-length
                                                        _g2615926177_)
                                                       '0)
                                                 (let ((_g27394_
                                                        (gx#syntax-split-splice
                                                         _g2615926177_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27395_
                                                            (values-count
                                                             _g27394_)))
                                                       (if (not (fx= _g27395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g27395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2616126179_
                                                            (values-ref
                                                             _g27394_
                                                             0))
                                                           (_tl2616326181_
                                                            (values-ref
                                                             _g27394_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2616326181_)
                                                           (letrec ((_loop2616426184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2616226187_ _expr2616826189_)
                               (if (gx#stx-pair? _hd2616226187_)
                                   (let ((_e2616526192_
                                          (gx#syntax-e _hd2616226187_)))
                                     (let ((_lp-hd2616626195_
                                            (##car _e2616526192_))
                                           (_lp-tl2616726197_
                                            (##cdr _e2616526192_)))
                                       (_loop2616426184_
                                        _lp-tl2616726197_
                                        (cons _lp-hd2616626195_
                                              _expr2616826189_))))
                                   (let ((_expr2616926200_
                                          (reverse _expr2616826189_)))
                                     ((lambda (_L26203_)
                                        (let ()
                                          (let ((_body26216_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26036_)
                                                      _L26136_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26139_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26203_
                                                            _L26138_)
                                                           (foldr2 (lambda (_g2621726221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2621826223_
                                    _g2621926225_)
                             (cons (cons _g2621826223_
                                         (cons _g2621726221_ '()))
                                   _g2621926225_))
                           '()
                           _L26203_
                           _L26138_))
                 _body26216_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx26035_))))
                                      _expr2616926200_))))))
                     (_loop2616426184_ _target2616126179_ '()))
                   (_g2615826174_ _g2615926177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2615826174_ _g2615926177_))
                                             (_g2615826174_ _g2615926177_)))))
                                 (_g2615726228_
                                  (map (gxc#xform-apply-compile-e _args26036_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2623026233_
                                                          _g2623126235_)
                                                   (cons _g2623026233_
                                                         _g2623126235_))
                                                 '()
                                                 _L26137_))))))
                             _tl2604926089_
                             _expr2605926131_
                             _hd2606026133_
                             _hd2604526079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2605326097_
                                                     _target2605026092_
                                                     '()
                                                     '()))
                                                  (_g2603826071_
                                                   _g2603926074_)))))
                                        (_g2603826071_ _g2603926074_))
                                    (_g2603826071_ _g2603926074_))))
                            (_g2603826071_ _g2603926074_))))
                    (_g2603826071_ _g2603926074_)))))
        (_g2603726238_ _stx26035_))))
  (define gxc#xform-operands
    (lambda (_stx25991_ . _args25992_)
      (let* ((_g2599426005_
              (lambda (_g2599526002_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2599526002_)))
             (_g2599326032_
              (lambda (_g2599526008_)
                (if (gx#stx-pair? _g2599526008_)
                    (let ((_e2599826010_ (gx#stx-e _g2599526008_)))
                      (let ((_hd2599926013_ (##car _e2599826010_))
                            (_tl2600026015_ (##cdr _e2599826010_)))
                        ((lambda (_L26018_ _L26019_)
                           (let ((_rands26030_
                                  (map (gxc#xform-apply-compile-e _args25992_)
                                       _L26018_)))
                             (gxc#xform-wrap-source
                              (cons _L26019_ _rands26030_)
                              _stx25991_)))
                         _tl2600026015_
                         _hd2599926013_)))
                    (_g2599426005_ _g2599526008_)))))
        (_g2599326032_ _stx25991_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx25921_ . _args25922_)
      (let* ((_g2592425941_
              (lambda (_g2592525938_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2592525938_)))
             (_g2592325988_
              (lambda (_g2592525944_)
                (if (gx#stx-pair? _g2592525944_)
                    (let ((_e2592825946_ (gx#stx-e _g2592525944_)))
                      (let ((_hd2592925949_ (##car _e2592825946_))
                            (_tl2593025951_ (##cdr _e2592825946_)))
                        (if (gx#stx-pair? _tl2593025951_)
                            (let ((_e2593125954_ (gx#stx-e _tl2593025951_)))
                              (let ((_hd2593225957_ (##car _e2593125954_))
                                    (_tl2593325959_ (##cdr _e2593125954_)))
                                (if (gx#stx-pair? _tl2593325959_)
                                    (let ((_e2593425962_
                                           (gx#stx-e _tl2593325959_)))
                                      (let ((_hd2593525965_
                                             (##car _e2593425962_))
                                            (_tl2593625967_
                                             (##cdr _e2593425962_)))
                                        (if (gx#stx-null? _tl2593625967_)
                                            ((lambda (_L25970_ _L25971_)
                                               (let ((_expr25986_
                                                      (apply gxc#compile-e
                                                             _L25970_
                                                             _args25922_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L25971_
                                                              (cons _expr25986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx25921_)))
                                             _hd2593525965_
                                             _hd2593225957_)
                                            (_g2592425941_ _g2592525944_))))
                                    (_g2592425941_ _g2592525944_))))
                            (_g2592425941_ _g2592525944_))))
                    (_g2592425941_ _g2592525944_)))))
        (_g2592325988_ _stx25921_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx25852_)
      (let* ((_g2585425871_
              (lambda (_g2585525868_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2585525868_)))
             (_g2585325918_
              (lambda (_g2585525874_)
                (if (gx#stx-pair? _g2585525874_)
                    (let ((_e2585825876_ (gx#stx-e _g2585525874_)))
                      (let ((_hd2585925879_ (##car _e2585825876_))
                            (_tl2586025881_ (##cdr _e2585825876_)))
                        (if (gx#stx-pair? _tl2586025881_)
                            (let ((_e2586125884_ (gx#stx-e _tl2586025881_)))
                              (let ((_hd2586225887_ (##car _e2586125884_))
                                    (_tl2586325889_ (##cdr _e2586125884_)))
                                (if (gx#stx-pair? _tl2586325889_)
                                    (let ((_e2586425892_
                                           (gx#stx-e _tl2586325889_)))
                                      (let ((_hd2586525895_
                                             (##car _e2586425892_))
                                            (_tl2586625897_
                                             (##cdr _e2586425892_)))
                                        (if (gx#stx-null? _tl2586625897_)
                                            ((lambda (_L25900_ _L25901_)
                                               (let ((_sym25916_
                                                      (gxc#identifier-symbol
                                                       _L25901_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym25916_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym25916_
                                                    '#t)
                                                   (gxc#compile-e _L25900_))))
                                             _hd2586525895_
                                             _hd2586225887_)
                                            (_g2585425871_ _g2585525874_))))
                                    (_g2585425871_ _g2585525874_))))
                            (_g2585425871_ _g2585525874_))))
                    (_g2585425871_ _g2585525874_)))))
        (_g2585325918_ _stx25852_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25086_)
      (let* ((_g2509125248_
              (lambda (_g2509225245_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2509225245_)))
             (_g2509025255_ (lambda (_g2509225251_) ((lambda () '#f))))
             (_g2508925395_
              (lambda (_g2509225258_)
                (if (gx#stx-pair? _g2509225258_)
                    (let ((_e2520825260_ (gx#stx-e _g2509225258_)))
                      (let ((_hd2520925263_ (##car _e2520825260_))
                            (_tl2521025265_ (##cdr _e2520825260_)))
                        (if (gx#stx-pair? _tl2521025265_)
                            (let ((_e2521125268_ (gx#stx-e _tl2521025265_)))
                              (let ((_hd2521225271_ (##car _e2521125268_))
                                    (_tl2521325273_ (##cdr _e2521125268_)))
                                (if (gx#stx-pair? _hd2521225271_)
                                    (let ((_e2521425276_
                                           (gx#stx-e _hd2521225271_)))
                                      (let ((_hd2521525279_
                                             (##car _e2521425276_))
                                            (_tl2521625281_
                                             (##cdr _e2521425276_)))
                                        (if (gx#identifier? _hd2521525279_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2521525279_)
                                                (if (gx#stx-pair?
                                                     _tl2521625281_)
                                                    (let ((_e2521725284_
                                                           (gx#stx-e
                                                            _tl2521625281_)))
                                                      (let ((_hd2521825287_
                                                             (##car _e2521725284_))
                                                            (_tl2521925289_
                                                             (##cdr _e2521725284_)))
                                                        (if (gx#stx-pair?
                                                             _hd2521825287_)
                                                            (let ((_e2522025292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2521825287_)))
                      (let ((_hd2522125295_ (##car _e2522025292_))
                            (_tl2522225297_ (##cdr _e2522025292_)))
                        (if (gx#identifier? _hd2522125295_)
                            (if (gx#stx-eq? '%#ref _hd2522125295_)
                                (if (gx#stx-pair? _tl2522225297_)
                                    (let ((_e2522325300_
                                           (gx#stx-e _tl2522225297_)))
                                      (let ((_hd2522425303_
                                             (##car _e2522325300_))
                                            (_tl2522525305_
                                             (##cdr _e2522325300_)))
                                        (if (gx#stx-null? _tl2522525305_)
                                            (if (gx#stx-pair? _tl2521925289_)
                                                (let ((_e2522625308_
                                                       (gx#stx-e
                                                        _tl2521925289_)))
                                                  (let ((_hd2522725311_
                                                         (##car _e2522625308_))
                                                        (_tl2522825313_
                                                         (##cdr _e2522625308_)))
                                                    (if (gx#stx-pair?
                                                         _hd2522725311_)
                                                        (let ((_e2522925316_
                                                               (gx#stx-e
                                                                _hd2522725311_)))
                                                          (let ((_hd2523025319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2522925316_))
                        (_tl2523125321_ (##cdr _e2522925316_)))
                    (if (gx#identifier? _hd2523025319_)
                        (if (gx#stx-eq? '%#ref _hd2523025319_)
                            (if (gx#stx-pair? _tl2523125321_)
                                (let ((_e2523225324_
                                       (gx#stx-e _tl2523125321_)))
                                  (let ((_hd2523325327_ (##car _e2523225324_))
                                        (_tl2523425329_ (##cdr _e2523225324_)))
                                    (if (gx#stx-null? _tl2523425329_)
                                        (if (gx#stx-pair? _tl2522825313_)
                                            (let ((_e2523525332_
                                                   (gx#stx-e _tl2522825313_)))
                                              (let ((_hd2523625335_
                                                     (##car _e2523525332_))
                                                    (_tl2523725337_
                                                     (##cdr _e2523525332_)))
                                                (if (gx#stx-pair?
                                                     _hd2523625335_)
                                                    (let ((_e2523825340_
                                                           (gx#stx-e
                                                            _hd2523625335_)))
                                                      (let ((_hd2523925343_
                                                             (##car _e2523825340_))
                                                            (_tl2524025345_
                                                             (##cdr _e2523825340_)))
                                                        (if (gx#identifier?
                                                             _hd2523925343_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2523925343_)
                        (if (gx#stx-pair? _tl2524025345_)
                            (let ((_e2524125348_ (gx#stx-e _tl2524025345_)))
                              (let ((_hd2524225351_ (##car _e2524125348_))
                                    (_tl2524325353_ (##cdr _e2524125348_)))
                                (if (gx#stx-null? _tl2524325353_)
                                    (if (gx#stx-null? _tl2523725337_)
                                        (if (gx#stx-null? _tl2521325273_)
                                            ((lambda (_L25356_
                                                      _L25357_
                                                      _L25358_
                                                      _L25359_)
                                               (if (if (gx#identifier?
                                                        _L25359_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25358_)
                        'apply)
                   (if (gx#free-identifier=? _L25359_ _L25356_)
                       (not (gx#free-identifier=? _L25357_ _L25359_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2509025255_
                                                    _g2509225258_)))
                                             _hd2524225351_
                                             _hd2523325327_
                                             _hd2522425303_
                                             _hd2520925263_)
                                            (_g2509025255_ _g2509225258_))
                                        (_g2509025255_ _g2509225258_))
                                    (_g2509025255_ _g2509225258_))))
                            (_g2509025255_ _g2509225258_))
                        (_g2509025255_ _g2509225258_))
                    (_g2509025255_ _g2509225258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2509025255_
                                                     _g2509225258_))))
                                            (_g2509025255_ _g2509225258_))
                                        (_g2509025255_ _g2509225258_))))
                                (_g2509025255_ _g2509225258_))
                            (_g2509025255_ _g2509225258_))
                        (_g2509025255_ _g2509225258_))))
                (_g2509025255_ _g2509225258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2509025255_ _g2509225258_))
                                            (_g2509025255_ _g2509225258_))))
                                    (_g2509025255_ _g2509225258_))
                                (_g2509025255_ _g2509225258_))
                            (_g2509025255_ _g2509225258_))))
                    (_g2509025255_ _g2509225258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2509025255_
                                                     _g2509225258_))
                                                (_g2509025255_ _g2509225258_))
                                            (_g2509025255_ _g2509225258_))))
                                    (_g2509025255_ _g2509225258_))))
                            (_g2509025255_ _g2509225258_))))
                    (_g2509025255_ _g2509225258_))))
             (_g2508825655_
              (lambda (_g2509225398_)
                (if (gx#stx-pair? _g2509225398_)
                    (let ((_e2514425400_ (gx#stx-e _g2509225398_)))
                      (let ((_hd2514525403_ (##car _e2514425400_))
                            (_tl2514625405_ (##cdr _e2514425400_)))
                        (if (gx#stx-pair/null? _hd2514525403_)
                            (if (fx>= (gx#stx-length _hd2514525403_) '0)
                                (let ((_g27396_
                                       (gx#syntax-split-splice
                                        _hd2514525403_
                                        '0)))
                                  (begin
                                    (let ((_g27397_ (values-count _g27396_)))
                                      (if (not (fx= _g27397_ 2))
                                          (error "Context expects 2 values"
                                                 _g27397_)))
                                    (let ((_target2514725408_
                                           (values-ref _g27396_ 0))
                                          (_tl2514925410_
                                           (values-ref _g27396_ 1)))
                                      (letrec ((_loop2515025413_
                                                (lambda (_hd2514825416_
                                                         _arg2515425418_)
                                                  (if (gx#stx-pair?
                                                       _hd2514825416_)
                                                      (let ((_e2515125421_
                                                             (gx#stx-e
                                                              _hd2514825416_)))
                                                        (let ((_lp-hd2515225424_
                                                               (##car _e2515125421_))
                                                              (_lp-tl2515325426_
                                                               (##cdr _e2515125421_)))
                                                          (_loop2515025413_
                                                           _lp-tl2515325426_
                                                           (cons _lp-hd2515225424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2515425418_))))
              (let ((_arg2515525429_ (reverse _arg2515425418_)))
                (if (gx#stx-pair? _tl2514625405_)
                    (let ((_e2515625432_ (gx#stx-e _tl2514625405_)))
                      (let ((_hd2515725435_ (##car _e2515625432_))
                            (_tl2515825437_ (##cdr _e2515625432_)))
                        (if (gx#stx-pair? _hd2515725435_)
                            (let ((_e2515925440_ (gx#stx-e _hd2515725435_)))
                              (let ((_hd2516025443_ (##car _e2515925440_))
                                    (_tl2516125445_ (##cdr _e2515925440_)))
                                (if (gx#identifier? _hd2516025443_)
                                    (if (gx#stx-eq? '%#call _hd2516025443_)
                                        (if (gx#stx-pair? _tl2516125445_)
                                            (let ((_e2516225448_
                                                   (gx#stx-e _tl2516125445_)))
                                              (let ((_hd2516325451_
                                                     (##car _e2516225448_))
                                                    (_tl2516425453_
                                                     (##cdr _e2516225448_)))
                                                (if (gx#stx-pair?
                                                     _hd2516325451_)
                                                    (let ((_e2516525456_
                                                           (gx#stx-e
                                                            _hd2516325451_)))
                                                      (let ((_hd2516625459_
                                                             (##car _e2516525456_))
                                                            (_tl2516725461_
                                                             (##cdr _e2516525456_)))
                                                        (if (gx#identifier?
                                                             _hd2516625459_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2516625459_)
                        (if (gx#stx-pair? _tl2516725461_)
                            (let ((_e2516825464_ (gx#stx-e _tl2516725461_)))
                              (let ((_hd2516925467_ (##car _e2516825464_))
                                    (_tl2517025469_ (##cdr _e2516825464_)))
                                (if (gx#stx-null? _tl2517025469_)
                                    (if (gx#stx-pair? _tl2516425453_)
                                        (let ((_e2517125472_
                                               (gx#stx-e _tl2516425453_)))
                                          (let ((_hd2517225475_
                                                 (##car _e2517125472_))
                                                (_tl2517325477_
                                                 (##cdr _e2517125472_)))
                                            (if (gx#stx-pair? _hd2517225475_)
                                                (let ((_e2517425480_
                                                       (gx#stx-e
                                                        _hd2517225475_)))
                                                  (let ((_hd2517525483_
                                                         (##car _e2517425480_))
                                                        (_tl2517625485_
                                                         (##cdr _e2517425480_)))
                                                    (if (gx#identifier?
                                                         _hd2517525483_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2517525483_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2517625485_)
                        (let ((_e2517725488_ (gx#stx-e _tl2517625485_)))
                          (let ((_hd2517825491_ (##car _e2517725488_))
                                (_tl2517925493_ (##cdr _e2517725488_)))
                            (if (gx#stx-null? _tl2517925493_)
                                (if (gx#stx-pair/null? _tl2517325477_)
                                    (if (fx>= (gx#stx-length _tl2517325477_)
                                              '1)
                                        (let ((_g27398_
                                               (gx#syntax-split-splice
                                                _tl2517325477_
                                                '1)))
                                          (begin
                                            (let ((_g27399_
                                                   (values-count _g27398_)))
                                              (if (not (fx= _g27399_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27399_)))
                                            (let ((_target2518025496_
                                                   (values-ref _g27398_ 0))
                                                  (_tl2518225498_
                                                   (values-ref _g27398_ 1)))
                                              (if (gx#stx-pair? _tl2518225498_)
                                                  (let ((_e2518925501_
                                                         (gx#stx-e
                                                          _tl2518225498_)))
                                                    (let ((_hd2519025504_
                                                           (##car _e2518925501_))
                                                          (_tl2519125506_
                                                           (##cdr _e2518925501_)))
                                                      (if (gx#stx-pair?
                                                           _hd2519025504_)
                                                          (let ((_e2519225509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2519025504_)))
                    (let ((_hd2519325512_ (##car _e2519225509_))
                          (_tl2519425514_ (##cdr _e2519225509_)))
                      (if (gx#identifier? _hd2519325512_)
                          (if (gx#stx-eq? '%#ref _hd2519325512_)
                              (if (gx#stx-pair? _tl2519425514_)
                                  (let ((_e2519525517_
                                         (gx#stx-e _tl2519425514_)))
                                    (let ((_hd2519625520_
                                           (##car _e2519525517_))
                                          (_tl2519725522_
                                           (##cdr _e2519525517_)))
                                      (if (gx#stx-null? _tl2519725522_)
                                          (if (gx#stx-null? _tl2519125506_)
                                              (letrec ((_loop2518325525_
                                                        (lambda (_hd2518125528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2518725530_)
                  (if (gx#stx-pair? _hd2518125528_)
                      (let ((_e2518425533_ (gx#stx-e _hd2518125528_)))
                        (let ((_lp-hd2518525536_ (##car _e2518425533_))
                              (_lp-tl2518625538_ (##cdr _e2518425533_)))
                          (if (gx#stx-pair? _lp-hd2518525536_)
                              (let ((_e2519825541_
                                     (gx#stx-e _lp-hd2518525536_)))
                                (let ((_hd2519925544_ (##car _e2519825541_))
                                      (_tl2520025546_ (##cdr _e2519825541_)))
                                  (if (gx#identifier? _hd2519925544_)
                                      (if (gx#stx-eq? '%#ref _hd2519925544_)
                                          (if (gx#stx-pair? _tl2520025546_)
                                              (let ((_e2520125549_
                                                     (gx#stx-e
                                                      _tl2520025546_)))
                                                (let ((_hd2520225552_
                                                       (##car _e2520125549_))
                                                      (_tl2520325554_
                                                       (##cdr _e2520125549_)))
                                                  (if (gx#stx-null?
                                                       _tl2520325554_)
                                                      (_loop2518325525_
                                                       _lp-tl2518625538_
                                                       (cons _hd2520225552_
                                                             _xarg2518725530_))
                                                      (_g2508925395_
                                                       _g2509225398_))))
                                              (_g2508925395_ _g2509225398_))
                                          (_g2508925395_ _g2509225398_))
                                      (_g2508925395_ _g2509225398_))))
                              (_g2508925395_ _g2509225398_))))
                      (let ((_xarg2518825557_ (reverse _xarg2518725530_)))
                        (if (gx#stx-null? _tl2515825437_)
                            ((lambda (_L25560_
                                      _L25561_
                                      _L25562_
                                      _L25563_
                                      _L25564_
                                      _L25565_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2560825611_
                                                           _g2560925613_)
                                                    (cons _g2560825611_
                                                          _g2560925613_))
                                                  '()
                                                  _L25565_)))
                                       (if (gx#identifier? _L25564_)
                                           (if (eq? (gxc#identifier-symbol
                                                     _L25563_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2561525618_ _g2561625620_)
                                    (cons _g2561525618_ _g2561625620_))
                                  '()
                                  _L25565_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2562225625_ _g2562325627_)
                                    (cons _g2562225625_ _g2562325627_))
                                  '()
                                  _L25561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2562925632_ _g2563025634_)
                                    (cons _g2562925632_ _g2563025634_))
                                  '()
                                  _L25565_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2563625639_ _g2563725641_)
                                    (cons _g2563625639_ _g2563725641_))
                                  '()
                                  _L25561_)))
               (if (gx#free-identifier=? _L25564_ _L25560_)
                   (not (find (lambda (_g2564325645_)
                                (gx#free-identifier=? _g2564325645_ _L25562_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2564725650_ _g2564825652_)
                                          (cons _g2564725650_ _g2564825652_))
                                        (cons _L25564_ '())
                                        _L25565_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2508925395_ _g2509225398_)))
                             _hd2519625520_
                             _xarg2518825557_
                             _hd2517825491_
                             _hd2516925467_
                             _tl2514925410_
                             _arg2515525429_)
                            (_g2508925395_ _g2509225398_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2518325525_
                                                 _target2518025496_
                                                 '()))
                                              (_g2508925395_ _g2509225398_))
                                          (_g2508925395_ _g2509225398_))))
                                  (_g2508925395_ _g2509225398_))
                              (_g2508925395_ _g2509225398_))
                          (_g2508925395_ _g2509225398_))))
                  (_g2508925395_ _g2509225398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2508925395_
                                                   _g2509225398_)))))
                                        (_g2508925395_ _g2509225398_))
                                    (_g2508925395_ _g2509225398_))
                                (_g2508925395_ _g2509225398_))))
                        (_g2508925395_ _g2509225398_))
                    (_g2508925395_ _g2509225398_))
                (_g2508925395_ _g2509225398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2508925395_
                                                 _g2509225398_))))
                                        (_g2508925395_ _g2509225398_))
                                    (_g2508925395_ _g2509225398_))))
                            (_g2508925395_ _g2509225398_))
                        (_g2508925395_ _g2509225398_))
                    (_g2508925395_ _g2509225398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2508925395_
                                                     _g2509225398_))))
                                            (_g2508925395_ _g2509225398_))
                                        (_g2508925395_ _g2509225398_))
                                    (_g2508925395_ _g2509225398_))))
                            (_g2508925395_ _g2509225398_))))
                    (_g2508925395_ _g2509225398_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2515025413_
                                         _target2514725408_
                                         '())))))
                                (_g2508925395_ _g2509225398_))
                            (_g2508925395_ _g2509225398_))))
                    (_g2508925395_ _g2509225398_))))
             (_g2508725849_
              (lambda (_g2509225658_)
                (if (gx#stx-pair? _g2509225658_)
                    (let ((_e2509625660_ (gx#stx-e _g2509225658_)))
                      (let ((_hd2509725663_ (##car _e2509625660_))
                            (_tl2509825665_ (##cdr _e2509625660_)))
                        (if (gx#stx-pair/null? _hd2509725663_)
                            (if (fx>= (gx#stx-length _hd2509725663_) '0)
                                (let ((_g27400_
                                       (gx#syntax-split-splice
                                        _hd2509725663_
                                        '0)))
                                  (begin
                                    (let ((_g27401_ (values-count _g27400_)))
                                      (if (not (fx= _g27401_ 2))
                                          (error "Context expects 2 values"
                                                 _g27401_)))
                                    (let ((_target2509925668_
                                           (values-ref _g27400_ 0))
                                          (_tl2510125670_
                                           (values-ref _g27400_ 1)))
                                      (if (gx#stx-null? _tl2510125670_)
                                          (letrec ((_loop2510225673_
                                                    (lambda (_hd2510025676_
                                                             _arg2510625678_)
                                                      (if (gx#stx-pair?
                                                           _hd2510025676_)
                                                          (let ((_e2510325681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2510025676_)))
                    (let ((_lp-hd2510425684_ (##car _e2510325681_))
                          (_lp-tl2510525686_ (##cdr _e2510325681_)))
                      (_loop2510225673_
                       _lp-tl2510525686_
                       (cons _lp-hd2510425684_ _arg2510625678_))))
                  (let ((_arg2510725689_ (reverse _arg2510625678_)))
                    (if (gx#stx-pair? _tl2509825665_)
                        (let ((_e2510825692_ (gx#stx-e _tl2509825665_)))
                          (let ((_hd2510925695_ (##car _e2510825692_))
                                (_tl2511025697_ (##cdr _e2510825692_)))
                            (if (gx#stx-pair? _hd2510925695_)
                                (let ((_e2511125700_
                                       (gx#stx-e _hd2510925695_)))
                                  (let ((_hd2511225703_ (##car _e2511125700_))
                                        (_tl2511325705_ (##cdr _e2511125700_)))
                                    (if (gx#identifier? _hd2511225703_)
                                        (if (gx#stx-eq? '%#call _hd2511225703_)
                                            (if (gx#stx-pair? _tl2511325705_)
                                                (let ((_e2511425708_
                                                       (gx#stx-e
                                                        _tl2511325705_)))
                                                  (let ((_hd2511525711_
                                                         (##car _e2511425708_))
                                                        (_tl2511625713_
                                                         (##cdr _e2511425708_)))
                                                    (if (gx#stx-pair?
                                                         _hd2511525711_)
                                                        (let ((_e2511725716_
                                                               (gx#stx-e
                                                                _hd2511525711_)))
                                                          (let ((_hd2511825719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2511725716_))
                        (_tl2511925721_ (##cdr _e2511725716_)))
                    (if (gx#identifier? _hd2511825719_)
                        (if (gx#stx-eq? '%#ref _hd2511825719_)
                            (if (gx#stx-pair? _tl2511925721_)
                                (let ((_e2512025724_
                                       (gx#stx-e _tl2511925721_)))
                                  (let ((_hd2512125727_ (##car _e2512025724_))
                                        (_tl2512225729_ (##cdr _e2512025724_)))
                                    (if (gx#stx-null? _tl2512225729_)
                                        (if (gx#stx-pair/null? _tl2511625713_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2511625713_)
                                                      '0)
                                                (let ((_g27402_
                                                       (gx#syntax-split-splice
                                                        _tl2511625713_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27403_
                                                           (values-count
                                                            _g27402_)))
                                                      (if (not (fx= _g27403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2512325732_
                                                           (values-ref
                                                            _g27402_
                                                            0))
                                                          (_tl2512525734_
                                                           (values-ref
                                                            _g27402_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2512525734_)
                                                          (letrec ((_loop2512625737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2512425740_ _xarg2513025742_)
                              (if (gx#stx-pair? _hd2512425740_)
                                  (let ((_e2512725745_
                                         (gx#stx-e _hd2512425740_)))
                                    (let ((_lp-hd2512825748_
                                           (##car _e2512725745_))
                                          (_lp-tl2512925750_
                                           (##cdr _e2512725745_)))
                                      (if (gx#stx-pair? _lp-hd2512825748_)
                                          (let ((_e2513225753_
                                                 (gx#stx-e _lp-hd2512825748_)))
                                            (let ((_hd2513325756_
                                                   (##car _e2513225753_))
                                                  (_tl2513425758_
                                                   (##cdr _e2513225753_)))
                                              (if (gx#identifier?
                                                   _hd2513325756_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2513325756_)
                                                      (if (gx#stx-pair?
                                                           _tl2513425758_)
                                                          (let ((_e2513525761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2513425758_)))
                    (let ((_hd2513625764_ (##car _e2513525761_))
                          (_tl2513725766_ (##cdr _e2513525761_)))
                      (if (gx#stx-null? _tl2513725766_)
                          (_loop2512625737_
                           _lp-tl2512925750_
                           (cons _hd2513625764_ _xarg2513025742_))
                          (_g2508825655_ _g2509225658_))))
                  (_g2508825655_ _g2509225658_))
              (_g2508825655_ _g2509225658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2508825655_
                                                   _g2509225658_))))
                                          (_g2508825655_ _g2509225658_))))
                                  (let ((_xarg2513125769_
                                         (reverse _xarg2513025742_)))
                                    (if (gx#stx-null? _tl2511025697_)
                                        ((lambda (_L25772_ _L25773_ _L25774_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2580225805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2580325807_)
                        (cons _g2580225805_ _g2580325807_))
                      '()
                      _L25774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2580925812_ _g2581025814_)
                                        (cons _g2580925812_ _g2581025814_))
                                      '()
                                      _L25774_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2581625819_ _g2581725821_)
                                        (cons _g2581625819_ _g2581725821_))
                                      '()
                                      _L25772_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2582325826_ _g2582425828_)
                                        (cons _g2582325826_ _g2582425828_))
                                      '()
                                      _L25774_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2583025833_ _g2583125835_)
                                        (cons _g2583025833_ _g2583125835_))
                                      '()
                                      _L25772_)))
                   (not (find (lambda (_g2583725839_)
                                (gx#free-identifier=? _g2583725839_ _L25773_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2584125844_ _g2584225846_)
                                          (cons _g2584125844_ _g2584225846_))
                                        '()
                                        _L25774_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2508825655_ _g2509225658_)))
                                         _xarg2513125769_
                                         _hd2512125727_
                                         _arg2510725689_)
                                        (_g2508825655_ _g2509225658_)))))))
                    (_loop2512625737_ _target2512325732_ '()))
                  (_g2508825655_ _g2509225658_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2508825655_ _g2509225658_))
                                            (_g2508825655_ _g2509225658_))
                                        (_g2508825655_ _g2509225658_))))
                                (_g2508825655_ _g2509225658_))
                            (_g2508825655_ _g2509225658_))
                        (_g2508825655_ _g2509225658_))))
                (_g2508825655_ _g2509225658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2508825655_ _g2509225658_))
                                            (_g2508825655_ _g2509225658_))
                                        (_g2508825655_ _g2509225658_))))
                                (_g2508825655_ _g2509225658_))))
                        (_g2508825655_ _g2509225658_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2510225673_
                                             _target2509925668_
                                             '()))
                                          (_g2508825655_ _g2509225658_)))))
                                (_g2508825655_ _g2509225658_))
                            (_g2508825655_ _g2509225658_))))
                    (_g2508825655_ _g2509225658_)))))
        (_g2508725849_ _form25086_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form24554_)
      (let* ((_g2455824682_
              (lambda (_g2455924679_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2455924679_)))
             (_g2455724799_
              (lambda (_g2455924685_)
                (if (gx#stx-pair? _g2455924685_)
                    (let ((_e2464824687_ (gx#stx-e _g2455924685_)))
                      (let ((_hd2464924690_ (##car _e2464824687_))
                            (_tl2465024692_ (##cdr _e2464824687_)))
                        (if (gx#stx-pair? _tl2465024692_)
                            (let ((_e2465124695_ (gx#stx-e _tl2465024692_)))
                              (let ((_hd2465224698_ (##car _e2465124695_))
                                    (_tl2465324700_ (##cdr _e2465124695_)))
                                (if (gx#stx-pair? _hd2465224698_)
                                    (let ((_e2465424703_
                                           (gx#stx-e _hd2465224698_)))
                                      (let ((_hd2465524706_
                                             (##car _e2465424703_))
                                            (_tl2465624708_
                                             (##cdr _e2465424703_)))
                                        (if (gx#identifier? _hd2465524706_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2465524706_)
                                                (if (gx#stx-pair?
                                                     _tl2465624708_)
                                                    (let ((_e2465724711_
                                                           (gx#stx-e
                                                            _tl2465624708_)))
                                                      (let ((_hd2465824714_
                                                             (##car _e2465724711_))
                                                            (_tl2465924716_
                                                             (##cdr _e2465724711_)))
                                                        (if (gx#stx-pair?
                                                             _hd2465824714_)
                                                            (let ((_e2466024719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2465824714_)))
                      (let ((_hd2466124722_ (##car _e2466024719_))
                            (_tl2466224724_ (##cdr _e2466024719_)))
                        (if (gx#identifier? _hd2466124722_)
                            (if (gx#stx-eq? '%#ref _hd2466124722_)
                                (if (gx#stx-pair? _tl2466224724_)
                                    (let ((_e2466324727_
                                           (gx#stx-e _tl2466224724_)))
                                      (let ((_hd2466424730_
                                             (##car _e2466324727_))
                                            (_tl2466524732_
                                             (##cdr _e2466324727_)))
                                        (if (gx#stx-null? _tl2466524732_)
                                            (if (gx#stx-pair? _tl2465924716_)
                                                (let ((_e2466624735_
                                                       (gx#stx-e
                                                        _tl2465924716_)))
                                                  (let ((_hd2466724738_
                                                         (##car _e2466624735_))
                                                        (_tl2466824740_
                                                         (##cdr _e2466624735_)))
                                                    (if (gx#stx-pair?
                                                         _hd2466724738_)
                                                        (let ((_e2466924743_
                                                               (gx#stx-e
                                                                _hd2466724738_)))
                                                          (let ((_hd2467024746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2466924743_))
                        (_tl2467124748_ (##cdr _e2466924743_)))
                    (if (gx#identifier? _hd2467024746_)
                        (if (gx#stx-eq? '%#ref _hd2467024746_)
                            (if (gx#stx-pair? _tl2467124748_)
                                (let ((_e2467224751_
                                       (gx#stx-e _tl2467124748_)))
                                  (let ((_hd2467324754_ (##car _e2467224751_))
                                        (_tl2467424756_ (##cdr _e2467224751_)))
                                    (if (gx#stx-null? _tl2467424756_)
                                        (if (gx#stx-pair? _tl2466824740_)
                                            (let ((_e2467524759_
                                                   (gx#stx-e _tl2466824740_)))
                                              (let ((_hd2467624762_
                                                     (##car _e2467524759_))
                                                    (_tl2467724764_
                                                     (##cdr _e2467524759_)))
                                                (if (gx#stx-null?
                                                     _tl2467724764_)
                                                    (if (gx#stx-null?
                                                         _tl2465324700_)
                                                        ((lambda (_L24767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24768_
                          _L24769_)
                   (gxc#identifier-symbol _L24767_))
                 _hd2467324754_
                 _hd2466424730_
                 _hd2464924690_)
                (_g2455824682_ _g2455924685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2455824682_
                                                     _g2455924685_))))
                                            (_g2455824682_ _g2455924685_))
                                        (_g2455824682_ _g2455924685_))))
                                (_g2455824682_ _g2455924685_))
                            (_g2455824682_ _g2455924685_))
                        (_g2455824682_ _g2455924685_))))
                (_g2455824682_ _g2455924685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2455824682_ _g2455924685_))
                                            (_g2455824682_ _g2455924685_))))
                                    (_g2455824682_ _g2455924685_))
                                (_g2455824682_ _g2455924685_))
                            (_g2455824682_ _g2455924685_))))
                    (_g2455824682_ _g2455924685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2455824682_
                                                     _g2455924685_))
                                                (_g2455824682_ _g2455924685_))
                                            (_g2455824682_ _g2455924685_))))
                                    (_g2455824682_ _g2455924685_))))
                            (_g2455824682_ _g2455924685_))))
                    (_g2455824682_ _g2455924685_))))
             (_g2455624935_
              (lambda (_g2455924802_)
                (if (gx#stx-pair? _g2455924802_)
                    (let ((_e2460924804_ (gx#stx-e _g2455924802_)))
                      (let ((_hd2461024807_ (##car _e2460924804_))
                            (_tl2461124809_ (##cdr _e2460924804_)))
                        (if (gx#stx-pair/null? _hd2461024807_)
                            (if (fx>= (gx#stx-length _hd2461024807_) '0)
                                (let ((_g27404_
                                       (gx#syntax-split-splice
                                        _hd2461024807_
                                        '0)))
                                  (begin
                                    (let ((_g27405_ (values-count _g27404_)))
                                      (if (not (fx= _g27405_ 2))
                                          (error "Context expects 2 values"
                                                 _g27405_)))
                                    (let ((_target2461224812_
                                           (values-ref _g27404_ 0))
                                          (_tl2461424814_
                                           (values-ref _g27404_ 1)))
                                      (letrec ((_loop2461524817_
                                                (lambda (_hd2461324820_
                                                         _arg2461924822_)
                                                  (if (gx#stx-pair?
                                                       _hd2461324820_)
                                                      (let ((_e2461624825_
                                                             (gx#stx-e
                                                              _hd2461324820_)))
                                                        (let ((_lp-hd2461724828_
                                                               (##car _e2461624825_))
                                                              (_lp-tl2461824830_
                                                               (##cdr _e2461624825_)))
                                                          (_loop2461524817_
                                                           _lp-tl2461824830_
                                                           (cons _lp-hd2461724828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2461924822_))))
              (let ((_arg2462024833_ (reverse _arg2461924822_)))
                (if (gx#stx-pair? _tl2461124809_)
                    (let ((_e2462124836_ (gx#stx-e _tl2461124809_)))
                      (let ((_hd2462224839_ (##car _e2462124836_))
                            (_tl2462324841_ (##cdr _e2462124836_)))
                        (if (gx#stx-pair? _hd2462224839_)
                            (let ((_e2462424844_ (gx#stx-e _hd2462224839_)))
                              (let ((_hd2462524847_ (##car _e2462424844_))
                                    (_tl2462624849_ (##cdr _e2462424844_)))
                                (if (gx#identifier? _hd2462524847_)
                                    (if (gx#stx-eq? '%#call _hd2462524847_)
                                        (if (gx#stx-pair? _tl2462624849_)
                                            (let ((_e2462724852_
                                                   (gx#stx-e _tl2462624849_)))
                                              (let ((_hd2462824855_
                                                     (##car _e2462724852_))
                                                    (_tl2462924857_
                                                     (##cdr _e2462724852_)))
                                                (if (gx#stx-pair?
                                                     _hd2462824855_)
                                                    (let ((_e2463024860_
                                                           (gx#stx-e
                                                            _hd2462824855_)))
                                                      (let ((_hd2463124863_
                                                             (##car _e2463024860_))
                                                            (_tl2463224865_
                                                             (##cdr _e2463024860_)))
                                                        (if (gx#identifier?
                                                             _hd2463124863_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2463124863_)
                        (if (gx#stx-pair? _tl2463224865_)
                            (let ((_e2463324868_ (gx#stx-e _tl2463224865_)))
                              (let ((_hd2463424871_ (##car _e2463324868_))
                                    (_tl2463524873_ (##cdr _e2463324868_)))
                                (if (gx#stx-null? _tl2463524873_)
                                    (if (gx#stx-pair? _tl2462924857_)
                                        (let ((_e2463624876_
                                               (gx#stx-e _tl2462924857_)))
                                          (let ((_hd2463724879_
                                                 (##car _e2463624876_))
                                                (_tl2463824881_
                                                 (##cdr _e2463624876_)))
                                            (if (gx#stx-pair? _hd2463724879_)
                                                (let ((_e2463924884_
                                                       (gx#stx-e
                                                        _hd2463724879_)))
                                                  (let ((_hd2464024887_
                                                         (##car _e2463924884_))
                                                        (_tl2464124889_
                                                         (##cdr _e2463924884_)))
                                                    (if (gx#identifier?
                                                         _hd2464024887_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2464024887_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2464124889_)
                        (let ((_e2464224892_ (gx#stx-e _tl2464124889_)))
                          (let ((_hd2464324895_ (##car _e2464224892_))
                                (_tl2464424897_ (##cdr _e2464224892_)))
                            (if (gx#stx-null? _tl2464424897_)
                                (if (gx#stx-null? _tl2462324841_)
                                    ((lambda (_L24900_
                                              _L24901_
                                              _L24902_
                                              _L24903_)
                                       (gxc#identifier-symbol _L24900_))
                                     _hd2464324895_
                                     _hd2463424871_
                                     _tl2461424814_
                                     _arg2462024833_)
                                    (_g2455724799_ _g2455924802_))
                                (_g2455724799_ _g2455924802_))))
                        (_g2455724799_ _g2455924802_))
                    (_g2455724799_ _g2455924802_))
                (_g2455724799_ _g2455924802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2455724799_
                                                 _g2455924802_))))
                                        (_g2455724799_ _g2455924802_))
                                    (_g2455724799_ _g2455924802_))))
                            (_g2455724799_ _g2455924802_))
                        (_g2455724799_ _g2455924802_))
                    (_g2455724799_ _g2455924802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2455724799_
                                                     _g2455924802_))))
                                            (_g2455724799_ _g2455924802_))
                                        (_g2455724799_ _g2455924802_))
                                    (_g2455724799_ _g2455924802_))))
                            (_g2455724799_ _g2455924802_))))
                    (_g2455724799_ _g2455924802_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2461524817_
                                         _target2461224812_
                                         '())))))
                                (_g2455724799_ _g2455924802_))
                            (_g2455724799_ _g2455924802_))))
                    (_g2455724799_ _g2455924802_))))
             (_g2455525083_
              (lambda (_g2455924938_)
                (if (gx#stx-pair? _g2455924938_)
                    (let ((_e2456324940_ (gx#stx-e _g2455924938_)))
                      (let ((_hd2456424943_ (##car _e2456324940_))
                            (_tl2456524945_ (##cdr _e2456324940_)))
                        (if (gx#stx-pair/null? _hd2456424943_)
                            (if (fx>= (gx#stx-length _hd2456424943_) '0)
                                (let ((_g27406_
                                       (gx#syntax-split-splice
                                        _hd2456424943_
                                        '0)))
                                  (begin
                                    (let ((_g27407_ (values-count _g27406_)))
                                      (if (not (fx= _g27407_ 2))
                                          (error "Context expects 2 values"
                                                 _g27407_)))
                                    (let ((_target2456624948_
                                           (values-ref _g27406_ 0))
                                          (_tl2456824950_
                                           (values-ref _g27406_ 1)))
                                      (if (gx#stx-null? _tl2456824950_)
                                          (letrec ((_loop2456924953_
                                                    (lambda (_hd2456724956_
                                                             _arg2457324958_)
                                                      (if (gx#stx-pair?
                                                           _hd2456724956_)
                                                          (let ((_e2457024961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2456724956_)))
                    (let ((_lp-hd2457124964_ (##car _e2457024961_))
                          (_lp-tl2457224966_ (##cdr _e2457024961_)))
                      (_loop2456924953_
                       _lp-tl2457224966_
                       (cons _lp-hd2457124964_ _arg2457324958_))))
                  (let ((_arg2457424969_ (reverse _arg2457324958_)))
                    (if (gx#stx-pair? _tl2456524945_)
                        (let ((_e2457524972_ (gx#stx-e _tl2456524945_)))
                          (let ((_hd2457624975_ (##car _e2457524972_))
                                (_tl2457724977_ (##cdr _e2457524972_)))
                            (if (gx#stx-pair? _hd2457624975_)
                                (let ((_e2457824980_
                                       (gx#stx-e _hd2457624975_)))
                                  (let ((_hd2457924983_ (##car _e2457824980_))
                                        (_tl2458024985_ (##cdr _e2457824980_)))
                                    (if (gx#identifier? _hd2457924983_)
                                        (if (gx#stx-eq? '%#call _hd2457924983_)
                                            (if (gx#stx-pair? _tl2458024985_)
                                                (let ((_e2458124988_
                                                       (gx#stx-e
                                                        _tl2458024985_)))
                                                  (let ((_hd2458224991_
                                                         (##car _e2458124988_))
                                                        (_tl2458324993_
                                                         (##cdr _e2458124988_)))
                                                    (if (gx#stx-pair?
                                                         _hd2458224991_)
                                                        (let ((_e2458424996_
                                                               (gx#stx-e
                                                                _hd2458224991_)))
                                                          (let ((_hd2458524999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2458424996_))
                        (_tl2458625001_ (##cdr _e2458424996_)))
                    (if (gx#identifier? _hd2458524999_)
                        (if (gx#stx-eq? '%#ref _hd2458524999_)
                            (if (gx#stx-pair? _tl2458625001_)
                                (let ((_e2458725004_
                                       (gx#stx-e _tl2458625001_)))
                                  (let ((_hd2458825007_ (##car _e2458725004_))
                                        (_tl2458925009_ (##cdr _e2458725004_)))
                                    (if (gx#stx-null? _tl2458925009_)
                                        (if (gx#stx-pair/null? _tl2458324993_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2458324993_)
                                                      '0)
                                                (let ((_g27408_
                                                       (gx#syntax-split-splice
                                                        _tl2458324993_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27409_
                                                           (values-count
                                                            _g27408_)))
                                                      (if (not (fx= _g27409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27409_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2459025012_
                                                           (values-ref
                                                            _g27408_
                                                            0))
                                                          (_tl2459225014_
                                                           (values-ref
                                                            _g27408_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2459225014_)
                                                          (letrec ((_loop2459325017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2459125020_ _xarg2459725022_)
                              (if (gx#stx-pair? _hd2459125020_)
                                  (let ((_e2459425025_
                                         (gx#stx-e _hd2459125020_)))
                                    (let ((_lp-hd2459525028_
                                           (##car _e2459425025_))
                                          (_lp-tl2459625030_
                                           (##cdr _e2459425025_)))
                                      (if (gx#stx-pair? _lp-hd2459525028_)
                                          (let ((_e2459925033_
                                                 (gx#stx-e _lp-hd2459525028_)))
                                            (let ((_hd2460025036_
                                                   (##car _e2459925033_))
                                                  (_tl2460125038_
                                                   (##cdr _e2459925033_)))
                                              (if (gx#identifier?
                                                   _hd2460025036_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2460025036_)
                                                      (if (gx#stx-pair?
                                                           _tl2460125038_)
                                                          (let ((_e2460225041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2460125038_)))
                    (let ((_hd2460325044_ (##car _e2460225041_))
                          (_tl2460425046_ (##cdr _e2460225041_)))
                      (if (gx#stx-null? _tl2460425046_)
                          (_loop2459325017_
                           _lp-tl2459625030_
                           (cons _hd2460325044_ _xarg2459725022_))
                          (_g2455624935_ _g2455924938_))))
                  (_g2455624935_ _g2455924938_))
              (_g2455624935_ _g2455924938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2455624935_
                                                   _g2455924938_))))
                                          (_g2455624935_ _g2455924938_))))
                                  (let ((_xarg2459825049_
                                         (reverse _xarg2459725022_)))
                                    (if (gx#stx-null? _tl2457724977_)
                                        ((lambda (_L25052_ _L25053_ _L25054_)
                                           (gxc#identifier-symbol _L25053_))
                                         _xarg2459825049_
                                         _hd2458825007_
                                         _arg2457424969_)
                                        (_g2455624935_ _g2455924938_)))))))
                    (_loop2459325017_ _target2459025012_ '()))
                  (_g2455624935_ _g2455924938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2455624935_ _g2455924938_))
                                            (_g2455624935_ _g2455924938_))
                                        (_g2455624935_ _g2455924938_))))
                                (_g2455624935_ _g2455924938_))
                            (_g2455624935_ _g2455924938_))
                        (_g2455624935_ _g2455924938_))))
                (_g2455624935_ _g2455924938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2455624935_ _g2455924938_))
                                            (_g2455624935_ _g2455924938_))
                                        (_g2455624935_ _g2455924938_))))
                                (_g2455624935_ _g2455924938_))))
                        (_g2455624935_ _g2455924938_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2456924953_
                                             _target2456624948_
                                             '()))
                                          (_g2455624935_ _g2455924938_)))))
                                (_g2455624935_ _g2455924938_))
                            (_g2455624935_ _g2455924938_))))
                    (_g2455624935_ _g2455924938_)))))
        (_g2455525083_ _form24554_))))
  (define gxc#lambda-form-arity
    (lambda (_form24358_)
      (let* ((_g2436024374_
              (lambda (_g2436124371_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2436124371_)))
             (_g2435924551_
              (lambda (_g2436124377_)
                (if (gx#stx-pair? _g2436124377_)
                    (let ((_e2436424379_ (gx#stx-e _g2436124377_)))
                      (let ((_hd2436524382_ (##car _e2436424379_))
                            (_tl2436624384_ (##cdr _e2436424379_)))
                        (if (gx#stx-pair? _tl2436624384_)
                            (let ((_e2436724387_ (gx#stx-e _tl2436624384_)))
                              (let ((_hd2436824390_ (##car _e2436724387_))
                                    (_tl2436924392_ (##cdr _e2436724387_)))
                                (if (gx#stx-null? _tl2436924392_)
                                    ((lambda (_L24395_ _L24396_)
                                       (let* ((_g2441124439_
                                               (lambda (_g2441224436_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2441224436_)))
                                              (_g2441024452_
                                               (lambda (_g2441224442_)
                                                 ((lambda (_L24444_)
                                                    (cons '0 '()))
                                                  _g2441224442_)))
                                              (_g2440924501_
                                               (lambda (_g2441224455_)
                                                 (if (gx#stx-pair/null?
                                                      _g2441224455_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2441224455_)
                                                               '0)
                                                         (let ((_g27410_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2441224455_
                         '0)))
                   (begin
                     (let ((_g27411_ (values-count _g27410_)))
                       (if (not (fx= _g27411_ 2))
                           (error "Context expects 2 values" _g27411_)))
                     (let ((_target2442524457_ (values-ref _g27410_ 0))
                           (_tl2442724459_ (values-ref _g27410_ 1)))
                       (letrec ((_loop2442824462_
                                 (lambda (_hd2442624465_ _arg2443224467_)
                                   (if (gx#stx-pair? _hd2442624465_)
                                       (let ((_e2442924470_
                                              (gx#stx-e _hd2442624465_)))
                                         (let ((_lp-hd2443024473_
                                                (##car _e2442924470_))
                                               (_lp-tl2443124475_
                                                (##cdr _e2442924470_)))
                                           (_loop2442824462_
                                            _lp-tl2443124475_
                                            (cons _lp-hd2443024473_
                                                  _arg2443224467_))))
                                       (let ((_arg2443324478_
                                              (reverse _arg2443224467_)))
                                         ((lambda (_L24481_ _L24482_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2449324496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2449424498_)
                              (cons _g2449324496_ _g2449424498_))
                            '()
                            _L24482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2442724459_
                                          _arg2443324478_))))))
                         (_loop2442824462_ _target2442524457_ '())))))
                 (_g2441024452_ _g2441224455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2441024452_
                                                      _g2441224455_))))
                                              (_g2440824548_
                                               (lambda (_g2441224504_)
                                                 (if (gx#stx-pair/null?
                                                      _g2441224504_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2441224504_)
                                                               '0)
                                                         (let ((_g27412_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2441224504_
                         '0)))
                   (begin
                     (let ((_g27413_ (values-count _g27412_)))
                       (if (not (fx= _g27413_ 2))
                           (error "Context expects 2 values" _g27413_)))
                     (let ((_target2441424506_ (values-ref _g27412_ 0))
                           (_tl2441624508_ (values-ref _g27412_ 1)))
                       (if (gx#stx-null? _tl2441624508_)
                           (letrec ((_loop2441724511_
                                     (lambda (_hd2441524514_ _arg2442124516_)
                                       (if (gx#stx-pair? _hd2441524514_)
                                           (let ((_e2441824519_
                                                  (gx#stx-e _hd2441524514_)))
                                             (let ((_lp-hd2441924522_
                                                    (##car _e2441824519_))
                                                   (_lp-tl2442024524_
                                                    (##cdr _e2441824519_)))
                                               (_loop2441724511_
                                                _lp-tl2442024524_
                                                (cons _lp-hd2441924522_
                                                      _arg2442124516_))))
                                           (let ((_arg2442224527_
                                                  (reverse _arg2442124516_)))
                                             ((lambda (_L24530_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2454024543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2454124545_)
                            (cons _g2454024543_ _g2454124545_))
                          '()
                          _L24530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2442224527_))))))
                             (_loop2441724511_ _target2441424506_ '()))
                           (_g2440924501_ _g2441224504_)))))
                 (_g2440924501_ _g2441224504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2440924501_
                                                      _g2441224504_)))))
                                         (_g2440824548_ _L24396_)))
                                     _hd2436824390_
                                     _hd2436524382_)
                                    (_g2436024374_ _g2436124377_))))
                            (_g2436024374_ _g2436124377_))))
                    (_g2436024374_ _g2436124377_)))))
        (_g2435924551_ _form24358_))))
  (define gxc#lambda-expr?
    (lambda (_expr24311_)
      (let* ((_g2431424324_
              (lambda (_g2431524321_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2431524321_)))
             (_g2431324331_ (lambda (_g2431524327_) ((lambda () '#f))))
             (_g2431224355_
              (lambda (_g2431524334_)
                (if (gx#stx-pair? _g2431524334_)
                    (let ((_e2431724336_ (gx#stx-e _g2431524334_)))
                      (let ((_hd2431824339_ (##car _e2431724336_))
                            (_tl2431924341_ (##cdr _e2431724336_)))
                        (if (gx#identifier? _hd2431824339_)
                            (if (gx#stx-eq? '%#lambda _hd2431824339_)
                                ((lambda (_L24344_) '#t) _tl2431924341_)
                                (_g2431324331_ _g2431524334_))
                            (_g2431324331_ _g2431524334_))))
                    (_g2431324331_ _g2431524334_)))))
        (_g2431224355_ _expr24311_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24264_)
      (let* ((_g2426724277_
              (lambda (_g2426824274_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2426824274_)))
             (_g2426624284_ (lambda (_g2426824280_) ((lambda () '#f))))
             (_g2426524308_
              (lambda (_g2426824287_)
                (if (gx#stx-pair? _g2426824287_)
                    (let ((_e2427024289_ (gx#stx-e _g2426824287_)))
                      (let ((_hd2427124292_ (##car _e2427024289_))
                            (_tl2427224294_ (##cdr _e2427024289_)))
                        (if (gx#identifier? _hd2427124292_)
                            (if (gx#stx-eq? '%#case-lambda _hd2427124292_)
                                ((lambda (_L24297_) '#t) _tl2427224294_)
                                (_g2426624284_ _g2426824287_))
                            (_g2426624284_ _g2426824287_))))
                    (_g2426624284_ _g2426824287_)))))
        (_g2426524308_ _expr24264_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24133_)
      (let* ((_g2413624166_
              (lambda (_g2413724163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2413724163_)))
             (_g2413524173_ (lambda (_g2413724169_) ((lambda () '#f))))
             (_g2413424261_
              (lambda (_g2413724176_)
                (if (gx#stx-pair? _g2413724176_)
                    (let ((_e2414124178_ (gx#stx-e _g2413724176_)))
                      (let ((_hd2414224181_ (##car _e2414124178_))
                            (_tl2414324183_ (##cdr _e2414124178_)))
                        (if (gx#identifier? _hd2414224181_)
                            (if (gx#stx-eq? '%#let-values _hd2414224181_)
                                (if (gx#stx-pair? _tl2414324183_)
                                    (let ((_e2414424186_
                                           (gx#stx-e _tl2414324183_)))
                                      (let ((_hd2414524189_
                                             (##car _e2414424186_))
                                            (_tl2414624191_
                                             (##cdr _e2414424186_)))
                                        (if (gx#stx-pair? _hd2414524189_)
                                            (let ((_e2414724194_
                                                   (gx#stx-e _hd2414524189_)))
                                              (let ((_hd2414824197_
                                                     (##car _e2414724194_))
                                                    (_tl2414924199_
                                                     (##cdr _e2414724194_)))
                                                (if (gx#stx-pair?
                                                     _hd2414824197_)
                                                    (let ((_e2415024202_
                                                           (gx#stx-e
                                                            _hd2414824197_)))
                                                      (let ((_hd2415124205_
                                                             (##car _e2415024202_))
                                                            (_tl2415224207_
                                                             (##cdr _e2415024202_)))
                                                        (if (gx#stx-pair?
                                                             _hd2415124205_)
                                                            (let ((_e2415324210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2415124205_)))
                      (let ((_hd2415424213_ (##car _e2415324210_))
                            (_tl2415524215_ (##cdr _e2415324210_)))
                        (if (gx#stx-null? _tl2415524215_)
                            (if (gx#stx-pair? _tl2415224207_)
                                (let ((_e2415624218_
                                       (gx#stx-e _tl2415224207_)))
                                  (let ((_hd2415724221_ (##car _e2415624218_))
                                        (_tl2415824223_ (##cdr _e2415624218_)))
                                    (if (gx#stx-null? _tl2415824223_)
                                        (if (gx#stx-null? _tl2414924199_)
                                            (if (gx#stx-pair? _tl2414624191_)
                                                (let ((_e2415924226_
                                                       (gx#stx-e
                                                        _tl2414624191_)))
                                                  (let ((_hd2416024229_
                                                         (##car _e2415924226_))
                                                        (_tl2416124231_
                                                         (##cdr _e2415924226_)))
                                                    (if (gx#stx-null?
                                                         _tl2416124231_)
                                                        ((lambda (_L24234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24235_
                          _L24236_)
                   (if (gx#identifier? _L24236_)
                       (if (gxc#lambda-expr? _L24235_)
                           (gxc#case-lambda-expr? _L24234_)
                           '#f)
                       '#f))
                 _hd2416024229_
                 _hd2415724221_
                 _hd2415424213_)
                (_g2413524173_ _g2413724176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2413524173_ _g2413724176_))
                                            (_g2413524173_ _g2413724176_))
                                        (_g2413524173_ _g2413724176_))))
                                (_g2413524173_ _g2413724176_))
                            (_g2413524173_ _g2413724176_))))
                    (_g2413524173_ _g2413724176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2413524173_
                                                     _g2413724176_))))
                                            (_g2413524173_ _g2413724176_))))
                                    (_g2413524173_ _g2413724176_))
                                (_g2413524173_ _g2413724176_))
                            (_g2413524173_ _g2413724176_))))
                    (_g2413524173_ _g2413724176_)))))
        (_g2413424261_ _expr24133_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23458_)
      (let* ((_g2346123619_
              (lambda (_g2346223616_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2346223616_)))
             (_g2346023626_ (lambda (_g2346223622_) ((lambda () '#f))))
             (_g2345924130_
              (lambda (_g2346223629_)
                (if (gx#stx-pair? _g2346223629_)
                    (let ((_e2347423631_ (gx#stx-e _g2346223629_)))
                      (let ((_hd2347523634_ (##car _e2347423631_))
                            (_tl2347623636_ (##cdr _e2347423631_)))
                        (if (gx#identifier? _hd2347523634_)
                            (if (gx#stx-eq? '%#let-values _hd2347523634_)
                                (if (gx#stx-pair? _tl2347623636_)
                                    (let ((_e2347723639_
                                           (gx#stx-e _tl2347623636_)))
                                      (let ((_hd2347823642_
                                             (##car _e2347723639_))
                                            (_tl2347923644_
                                             (##cdr _e2347723639_)))
                                        (if (gx#stx-pair? _hd2347823642_)
                                            (let ((_e2348023647_
                                                   (gx#stx-e _hd2347823642_)))
                                              (let ((_hd2348123650_
                                                     (##car _e2348023647_))
                                                    (_tl2348223652_
                                                     (##cdr _e2348023647_)))
                                                (if (gx#stx-pair?
                                                     _hd2348123650_)
                                                    (let ((_e2348323655_
                                                           (gx#stx-e
                                                            _hd2348123650_)))
                                                      (let ((_hd2348423658_
                                                             (##car _e2348323655_))
                                                            (_tl2348523660_
                                                             (##cdr _e2348323655_)))
                                                        (if (gx#stx-pair?
                                                             _hd2348423658_)
                                                            (let ((_e2348623663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2348423658_)))
                      (let ((_hd2348723666_ (##car _e2348623663_))
                            (_tl2348823668_ (##cdr _e2348623663_)))
                        (if (gx#stx-null? _tl2348823668_)
                            (if (gx#stx-pair? _tl2348523660_)
                                (let ((_e2348923671_
                                       (gx#stx-e _tl2348523660_)))
                                  (let ((_hd2349023674_ (##car _e2348923671_))
                                        (_tl2349123676_ (##cdr _e2348923671_)))
                                    (if (gx#stx-pair? _hd2349023674_)
                                        (let ((_e2349223679_
                                               (gx#stx-e _hd2349023674_)))
                                          (let ((_hd2349323682_
                                                 (##car _e2349223679_))
                                                (_tl2349423684_
                                                 (##cdr _e2349223679_)))
                                            (if (gx#identifier? _hd2349323682_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2349323682_)
                                                    (if (gx#stx-pair?
                                                         _tl2349423684_)
                                                        (let ((_e2349523687_
                                                               (gx#stx-e
                                                                _tl2349423684_)))
                                                          (let ((_hd2349623690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2349523687_))
                        (_tl2349723692_ (##cdr _e2349523687_)))
                    (if (gx#stx-pair? _hd2349623690_)
                        (let ((_e2349823695_ (gx#stx-e _hd2349623690_)))
                          (let ((_hd2349923698_ (##car _e2349823695_))
                                (_tl2350023700_ (##cdr _e2349823695_)))
                            (if (gx#stx-pair? _hd2349923698_)
                                (let ((_e2350123703_
                                       (gx#stx-e _hd2349923698_)))
                                  (let ((_hd2350223706_ (##car _e2350123703_))
                                        (_tl2350323708_ (##cdr _e2350123703_)))
                                    (if (gx#stx-pair? _hd2350223706_)
                                        (let ((_e2350423711_
                                               (gx#stx-e _hd2350223706_)))
                                          (let ((_hd2350523714_
                                                 (##car _e2350423711_))
                                                (_tl2350623716_
                                                 (##cdr _e2350423711_)))
                                            (if (gx#stx-null? _tl2350623716_)
                                                (if (gx#stx-pair?
                                                     _tl2350323708_)
                                                    (let ((_e2350723719_
                                                           (gx#stx-e
                                                            _tl2350323708_)))
                                                      (let ((_hd2350823722_
                                                             (##car _e2350723719_))
                                                            (_tl2350923724_
                                                             (##cdr _e2350723719_)))
                                                        (if (gx#stx-null?
                                                             _tl2350923724_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2350023700_)
                        (if (gx#stx-pair? _tl2349723692_)
                            (let ((_e2351023727_ (gx#stx-e _tl2349723692_)))
                              (let ((_hd2351123730_ (##car _e2351023727_))
                                    (_tl2351223732_ (##cdr _e2351023727_)))
                                (if (gx#stx-pair? _hd2351123730_)
                                    (let ((_e2351323735_
                                           (gx#stx-e _hd2351123730_)))
                                      (let ((_hd2351423738_
                                             (##car _e2351323735_))
                                            (_tl2351523740_
                                             (##cdr _e2351323735_)))
                                        (if (gx#identifier? _hd2351423738_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2351423738_)
                                                (if (gx#stx-pair?
                                                     _tl2351523740_)
                                                    (let ((_e2351623743_
                                                           (gx#stx-e
                                                            _tl2351523740_)))
                                                      (let ((_hd2351723746_
                                                             (##car _e2351623743_))
                                                            (_tl2351823748_
                                                             (##cdr _e2351623743_)))
                                                        (if (gx#stx-pair?
                                                             _hd2351723746_)
                                                            (let ((_e2351923751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2351723746_)))
                      (let ((_hd2352023754_ (##car _e2351923751_))
                            (_tl2352123756_ (##cdr _e2351923751_)))
                        (if (gx#stx-pair? _tl2351823748_)
                            (let ((_e2352223759_ (gx#stx-e _tl2351823748_)))
                              (let ((_hd2352323762_ (##car _e2352223759_))
                                    (_tl2352423764_ (##cdr _e2352223759_)))
                                (if (gx#stx-pair? _hd2352323762_)
                                    (let ((_e2352523767_
                                           (gx#stx-e _hd2352323762_)))
                                      (let ((_hd2352623770_
                                             (##car _e2352523767_))
                                            (_tl2352723772_
                                             (##cdr _e2352523767_)))
                                        (if (gx#identifier? _hd2352623770_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2352623770_)
                                                (if (gx#stx-pair?
                                                     _tl2352723772_)
                                                    (let ((_e2352823775_
                                                           (gx#stx-e
                                                            _tl2352723772_)))
                                                      (let ((_hd2352923778_
                                                             (##car _e2352823775_))
                                                            (_tl2353023780_
                                                             (##cdr _e2352823775_)))
                                                        (if (gx#stx-pair?
                                                             _hd2352923778_)
                                                            (let ((_e2353123783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2352923778_)))
                      (let ((_hd2353223786_ (##car _e2353123783_))
                            (_tl2353323788_ (##cdr _e2353123783_)))
                        (if (gx#identifier? _hd2353223786_)
                            (if (gx#stx-eq? '%#ref _hd2353223786_)
                                (if (gx#stx-pair? _tl2353323788_)
                                    (let ((_e2353423791_
                                           (gx#stx-e _tl2353323788_)))
                                      (let ((_hd2353523794_
                                             (##car _e2353423791_))
                                            (_tl2353623796_
                                             (##cdr _e2353423791_)))
                                        (if (gx#stx-null? _tl2353623796_)
                                            (if (gx#stx-pair? _tl2353023780_)
                                                (let ((_e2353723799_
                                                       (gx#stx-e
                                                        _tl2353023780_)))
                                                  (let ((_hd2353823802_
                                                         (##car _e2353723799_))
                                                        (_tl2353923804_
                                                         (##cdr _e2353723799_)))
                                                    (if (gx#stx-pair?
                                                         _hd2353823802_)
                                                        (let ((_e2354023807_
                                                               (gx#stx-e
                                                                _hd2353823802_)))
                                                          (let ((_hd2354123810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2354023807_))
                        (_tl2354223812_ (##cdr _e2354023807_)))
                    (if (gx#identifier? _hd2354123810_)
                        (if (gx#stx-eq? '%#ref _hd2354123810_)
                            (if (gx#stx-pair? _tl2354223812_)
                                (let ((_e2354323815_
                                       (gx#stx-e _tl2354223812_)))
                                  (let ((_hd2354423818_ (##car _e2354323815_))
                                        (_tl2354523820_ (##cdr _e2354323815_)))
                                    (if (gx#stx-null? _tl2354523820_)
                                        (if (gx#stx-pair? _tl2353923804_)
                                            (let ((_e2354623823_
                                                   (gx#stx-e _tl2353923804_)))
                                              (let ((_hd2354723826_
                                                     (##car _e2354623823_))
                                                    (_tl2354823828_
                                                     (##cdr _e2354623823_)))
                                                (if (gx#stx-pair?
                                                     _hd2354723826_)
                                                    (let ((_e2354923831_
                                                           (gx#stx-e
                                                            _hd2354723826_)))
                                                      (let ((_hd2355023834_
                                                             (##car _e2354923831_))
                                                            (_tl2355123836_
                                                             (##cdr _e2354923831_)))
                                                        (if (gx#identifier?
                                                             _hd2355023834_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2355023834_)
                        (if (gx#stx-pair? _tl2355123836_)
                            (let ((_e2355223839_ (gx#stx-e _tl2355123836_)))
                              (let ((_hd2355323842_ (##car _e2355223839_))
                                    (_tl2355423844_ (##cdr _e2355223839_)))
                                (if (gx#stx-null? _tl2355423844_)
                                    (if (gx#stx-null? _tl2352423764_)
                                        (if (gx#stx-null? _tl2351223732_)
                                            (if (gx#stx-null? _tl2349123676_)
                                                (if (gx#stx-null?
                                                     _tl2348223652_)
                                                    (if (gx#stx-pair?
                                                         _tl2347923644_)
                                                        (let ((_e2355523847_
                                                               (gx#stx-e
                                                                _tl2347923644_)))
                                                          (let ((_hd2355623850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2355523847_))
                        (_tl2355723852_ (##cdr _e2355523847_)))
                    (if (gx#stx-pair? _hd2355623850_)
                        (let ((_e2355823855_ (gx#stx-e _hd2355623850_)))
                          (let ((_hd2355923858_ (##car _e2355823855_))
                                (_tl2356023860_ (##cdr _e2355823855_)))
                            (if (gx#identifier? _hd2355923858_)
                                (if (gx#stx-eq? '%#lambda _hd2355923858_)
                                    (if (gx#stx-pair? _tl2356023860_)
                                        (let ((_e2356123863_
                                               (gx#stx-e _tl2356023860_)))
                                          (let ((_hd2356223866_
                                                 (##car _e2356123863_))
                                                (_tl2356323868_
                                                 (##cdr _e2356123863_)))
                                            (if (gx#stx-pair? _tl2356323868_)
                                                (let ((_e2356423871_
                                                       (gx#stx-e
                                                        _tl2356323868_)))
                                                  (let ((_hd2356523874_
                                                         (##car _e2356423871_))
                                                        (_tl2356623876_
                                                         (##cdr _e2356423871_)))
                                                    (if (gx#stx-pair?
                                                         _hd2356523874_)
                                                        (let ((_e2356723879_
                                                               (gx#stx-e
                                                                _hd2356523874_)))
                                                          (let ((_hd2356823882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2356723879_))
                        (_tl2356923884_ (##cdr _e2356723879_)))
                    (if (gx#identifier? _hd2356823882_)
                        (if (gx#stx-eq? '%#call _hd2356823882_)
                            (if (gx#stx-pair? _tl2356923884_)
                                (let ((_e2357023887_
                                       (gx#stx-e _tl2356923884_)))
                                  (let ((_hd2357123890_ (##car _e2357023887_))
                                        (_tl2357223892_ (##cdr _e2357023887_)))
                                    (if (gx#stx-pair? _hd2357123890_)
                                        (let ((_e2357323895_
                                               (gx#stx-e _hd2357123890_)))
                                          (let ((_hd2357423898_
                                                 (##car _e2357323895_))
                                                (_tl2357523900_
                                                 (##cdr _e2357323895_)))
                                            (if (gx#identifier? _hd2357423898_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2357423898_)
                                                    (if (gx#stx-pair?
                                                         _tl2357523900_)
                                                        (let ((_e2357623903_
                                                               (gx#stx-e
                                                                _tl2357523900_)))
                                                          (let ((_hd2357723906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2357623903_))
                        (_tl2357823908_ (##cdr _e2357623903_)))
                    (if (gx#stx-null? _tl2357823908_)
                        (if (gx#stx-pair? _tl2357223892_)
                            (let ((_e2357923911_ (gx#stx-e _tl2357223892_)))
                              (let ((_hd2358023914_ (##car _e2357923911_))
                                    (_tl2358123916_ (##cdr _e2357923911_)))
                                (if (gx#stx-pair? _hd2358023914_)
                                    (let ((_e2358223919_
                                           (gx#stx-e _hd2358023914_)))
                                      (let ((_hd2358323922_
                                             (##car _e2358223919_))
                                            (_tl2358423924_
                                             (##cdr _e2358223919_)))
                                        (if (gx#identifier? _hd2358323922_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2358323922_)
                                                (if (gx#stx-pair?
                                                     _tl2358423924_)
                                                    (let ((_e2358523927_
                                                           (gx#stx-e
                                                            _tl2358423924_)))
                                                      (let ((_hd2358623930_
                                                             (##car _e2358523927_))
                                                            (_tl2358723932_
                                                             (##cdr _e2358523927_)))
                                                        (if (gx#stx-null?
                                                             _tl2358723932_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2358123916_)
                        (let ((_e2358823935_ (gx#stx-e _tl2358123916_)))
                          (let ((_hd2358923938_ (##car _e2358823935_))
                                (_tl2359023940_ (##cdr _e2358823935_)))
                            (if (gx#stx-pair? _hd2358923938_)
                                (let ((_e2359123943_
                                       (gx#stx-e _hd2358923938_)))
                                  (let ((_hd2359223946_ (##car _e2359123943_))
                                        (_tl2359323948_ (##cdr _e2359123943_)))
                                    (if (gx#identifier? _hd2359223946_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2359223946_)
                                            (if (gx#stx-pair? _tl2359323948_)
                                                (let ((_e2359423951_
                                                       (gx#stx-e
                                                        _tl2359323948_)))
                                                  (let ((_hd2359523954_
                                                         (##car _e2359423951_))
                                                        (_tl2359623956_
                                                         (##cdr _e2359423951_)))
                                                    (if (gx#stx-null?
                                                         _tl2359623956_)
                                                        (if (gx#stx-pair?
                                                             _tl2359023940_)
                                                            (let ((_e2359723959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2359023940_)))
                      (let ((_hd2359823962_ (##car _e2359723959_))
                            (_tl2359923964_ (##cdr _e2359723959_)))
                        (if (gx#stx-pair? _hd2359823962_)
                            (let ((_e2360023967_ (gx#stx-e _hd2359823962_)))
                              (let ((_hd2360123970_ (##car _e2360023967_))
                                    (_tl2360223972_ (##cdr _e2360023967_)))
                                (if (gx#identifier? _hd2360123970_)
                                    (if (gx#stx-eq? '%#ref _hd2360123970_)
                                        (if (gx#stx-pair? _tl2360223972_)
                                            (let ((_e2360323975_
                                                   (gx#stx-e _tl2360223972_)))
                                              (let ((_hd2360423978_
                                                     (##car _e2360323975_))
                                                    (_tl2360523980_
                                                     (##cdr _e2360323975_)))
                                                (if (gx#stx-null?
                                                     _tl2360523980_)
                                                    (if (gx#stx-pair?
                                                         _tl2359923964_)
                                                        (let ((_e2360623983_
                                                               (gx#stx-e
                                                                _tl2359923964_)))
                                                          (let ((_hd2360723986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2360623983_))
                        (_tl2360823988_ (##cdr _e2360623983_)))
                    (if (gx#stx-pair? _hd2360723986_)
                        (let ((_e2360923991_ (gx#stx-e _hd2360723986_)))
                          (let ((_hd2361023994_ (##car _e2360923991_))
                                (_tl2361123996_ (##cdr _e2360923991_)))
                            (if (gx#identifier? _hd2361023994_)
                                (if (gx#stx-eq? '%#ref _hd2361023994_)
                                    (if (gx#stx-pair? _tl2361123996_)
                                        (let ((_e2361223999_
                                               (gx#stx-e _tl2361123996_)))
                                          (let ((_hd2361324002_
                                                 (##car _e2361223999_))
                                                (_tl2361424004_
                                                 (##cdr _e2361223999_)))
                                            (if (gx#stx-null? _tl2361424004_)
                                                (if (gx#stx-null?
                                                     _tl2360823988_)
                                                    (if (gx#stx-null?
                                                         _tl2356623876_)
                                                        (if (gx#stx-null?
                                                             _tl2355723852_)
                                                            ((lambda (_L24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24008_
                              _L24009_
                              _L24010_
                              _L24011_
                              _L24012_
                              _L24013_
                              _L24014_
                              _L24015_
                              _L24016_
                              _L24017_)
                       (if (eq? (gxc#identifier-symbol _L24014_) 'apply)
                           (if (eq? (gxc#identifier-symbol _L24010_) 'apply)
                               (if (eq? (gxc#identifier-symbol _L24009_)
                                        'keyword-dispatch)
                                   (if (gx#free-identifier=? _L24017_ _L24008_)
                                       (if (gx#free-identifier=?
                                            _L24016_
                                            _L24013_)
                                           (if (gx#free-identifier=?
                                                _L24011_
                                                _L24007_)
                                               (gx#free-identifier=?
                                                _L24015_
                                                _L24012_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2361324002_
                     _hd2360423978_
                     _hd2358623930_
                     _hd2357723906_
                     _hd2356223866_
                     _hd2355323842_
                     _hd2354423818_
                     _hd2353523794_
                     _hd2352023754_
                     _hd2350523714_
                     _hd2348723666_)
                    (_g2346023626_ _g2346223629_))
                (_g2346023626_ _g2346223629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_
                                                 _g2346223629_))))
                                        (_g2346023626_ _g2346223629_))
                                    (_g2346023626_ _g2346223629_))
                                (_g2346023626_ _g2346223629_))))
                        (_g2346023626_ _g2346223629_))))
                (_g2346023626_ _g2346223629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))))
                                            (_g2346023626_ _g2346223629_))
                                        (_g2346023626_ _g2346223629_))
                                    (_g2346023626_ _g2346223629_))))
                            (_g2346023626_ _g2346223629_))))
                    (_g2346023626_ _g2346223629_))
                (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2346023626_ _g2346223629_))
                                            (_g2346023626_ _g2346223629_))
                                        (_g2346023626_ _g2346223629_))))
                                (_g2346023626_ _g2346223629_))))
                        (_g2346023626_ _g2346223629_))
                    (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_ _g2346223629_))
                                            (_g2346023626_ _g2346223629_))))
                                    (_g2346023626_ _g2346223629_))))
                            (_g2346023626_ _g2346223629_))
                        (_g2346023626_ _g2346223629_))))
                (_g2346023626_ _g2346223629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_
                                                 _g2346223629_))))
                                        (_g2346023626_ _g2346223629_))))
                                (_g2346023626_ _g2346223629_))
                            (_g2346023626_ _g2346223629_))
                        (_g2346023626_ _g2346223629_))))
                (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2346023626_
                                                 _g2346223629_))))
                                        (_g2346023626_ _g2346223629_))
                                    (_g2346023626_ _g2346223629_))
                                (_g2346023626_ _g2346223629_))))
                        (_g2346023626_ _g2346223629_))))
                (_g2346023626_ _g2346223629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_ _g2346223629_))
                                            (_g2346023626_ _g2346223629_))
                                        (_g2346023626_ _g2346223629_))
                                    (_g2346023626_ _g2346223629_))))
                            (_g2346023626_ _g2346223629_))
                        (_g2346023626_ _g2346223629_))
                    (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))))
                                            (_g2346023626_ _g2346223629_))
                                        (_g2346023626_ _g2346223629_))))
                                (_g2346023626_ _g2346223629_))
                            (_g2346023626_ _g2346223629_))
                        (_g2346023626_ _g2346223629_))))
                (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2346023626_ _g2346223629_))
                                            (_g2346023626_ _g2346223629_))))
                                    (_g2346023626_ _g2346223629_))
                                (_g2346023626_ _g2346223629_))
                            (_g2346023626_ _g2346223629_))))
                    (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_ _g2346223629_))
                                            (_g2346023626_ _g2346223629_))))
                                    (_g2346023626_ _g2346223629_))))
                            (_g2346023626_ _g2346223629_))))
                    (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_ _g2346223629_))
                                            (_g2346023626_ _g2346223629_))))
                                    (_g2346023626_ _g2346223629_))))
                            (_g2346023626_ _g2346223629_))
                        (_g2346023626_ _g2346223629_))
                    (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_
                                                 _g2346223629_))))
                                        (_g2346023626_ _g2346223629_))))
                                (_g2346023626_ _g2346223629_))))
                        (_g2346023626_ _g2346223629_))))
                (_g2346023626_ _g2346223629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))
                                                (_g2346023626_
                                                 _g2346223629_))))
                                        (_g2346023626_ _g2346223629_))))
                                (_g2346023626_ _g2346223629_))
                            (_g2346023626_ _g2346223629_))))
                    (_g2346023626_ _g2346223629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2346023626_
                                                     _g2346223629_))))
                                            (_g2346023626_ _g2346223629_))))
                                    (_g2346023626_ _g2346223629_))
                                (_g2346023626_ _g2346223629_))
                            (_g2346023626_ _g2346223629_))))
                    (_g2346023626_ _g2346223629_)))))
        (_g2345924130_ _expr23458_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23200_ _id23201_ _clauses23202_ _gensym?23203_)
        (let _lp23205_ ((_rest23207_ _clauses23202_)
                        (_ids23208_ '())
                        (_impls23209_ '())
                        (_clauses23210_ '()))
          (let* ((_rest2321123219_ _rest23207_)
                 (_E2321423223_
                  (lambda () (error '"No clause matching" _rest2321123219_)))
                 (_else2321323227_
                  (lambda ()
                    (values (reverse _ids23208_)
                            (reverse _impls23209_)
                            (reverse _clauses23210_))))
                 (_K2321523432_
                  (lambda (_rest23230_ _clause23231_)
                    (if (gxc#dispatch-lambda-form? _clause23231_)
                        (_lp23205_
                         _rest23230_
                         _ids23208_
                         _impls23209_
                         (cons _clause23231_ _clauses23210_))
                        (let* ((_g2323323244_
                                (lambda (_g2323423241_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2323423241_)))
                               (_g2323223429_
                                (lambda (_g2323423247_)
                                  (if (gx#stx-pair? _g2323423247_)
                                      (let ((_e2323723249_
                                             (gx#stx-e _g2323423247_)))
                                        (let ((_hd2323823252_
                                               (##car _e2323723249_))
                                              (_tl2323923254_
                                               (##cdr _e2323723249_)))
                                          ((lambda (_L23257_ _L23258_)
                                             (let* ((_id23275_
                                                     (make-symbol
                                                      (gx#stx-e _id23201_)
                                                      '"__"
                                                      (length _clauses23210_)
                                                      (if _gensym?23203_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23277_
                                                     (gx#core-quote-syntax__1
                                                      _id23275_
                                                      (gx#stx-source
                                                       _stx23200_)))
                                                    (_impl23279_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23257_))
              _stx23200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23426_
                                                     (let* ((_g2328323311_
                                                             (lambda (_g2328423308_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2328423308_)))
                                                            (_g2328223327_
                                                             (lambda (_g2328423314_)
                                                               ((lambda (_L23316_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23258_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23316_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23200_)
                                      '())))
                        _g2328423314_)))
                    (_g2328123376_
                     (lambda (_g2328423330_)
                       (if (gx#stx-pair/null? _g2328423330_)
                           (if (fx>= (gx#stx-length _g2328423330_) '0)
                               (let ((_g27414_
                                      (gx#syntax-split-splice
                                       _g2328423330_
                                       '0)))
                                 (begin
                                   (let ((_g27415_ (values-count _g27414_)))
                                     (if (not (fx= _g27415_ 2))
                                         (error "Context expects 2 values"
                                                _g27415_)))
                                   (let ((_target2329723332_
                                          (values-ref _g27414_ 0))
                                         (_tl2329923334_
                                          (values-ref _g27414_ 1)))
                                     (letrec ((_loop2330023337_
                                               (lambda (_hd2329823340_
                                                        _arg2330423342_)
                                                 (if (gx#stx-pair?
                                                      _hd2329823340_)
                                                     (let ((_e2330123345_
                                                            (gx#stx-e
                                                             _hd2329823340_)))
                                                       (let ((_lp-hd2330223348_
                                                              (##car _e2330123345_))
                                                             (_lp-tl2330323350_
                                                              (##cdr _e2330123345_)))
                                                         (_loop2330023337_
                                                          _lp-tl2330323350_
                                                          (cons _lp-hd2330223348_
                                                                _arg2330423342_))))
                                                     (let ((_arg2330523353_
                                                            (reverse _arg2330423342_)))
                                                       ((lambda (_L23356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23357_)
                  (cons _L23258_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23277_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23356_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2336823371_ _g2336923373_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2336823371_ '()))
                                   _g2336923373_))
                           '()
                           _L23357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23200_)
                              '())))
                _tl2329923334_
                _arg2330523353_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2330023337_
                                        _target2329723332_
                                        '())))))
                               (_g2328223327_ _g2328423330_))
                           (_g2328223327_ _g2328423330_))))
                    (_g2328023423_
                     (lambda (_g2328423379_)
                       (if (gx#stx-pair/null? _g2328423379_)
                           (if (fx>= (gx#stx-length _g2328423379_) '0)
                               (let ((_g27416_
                                      (gx#syntax-split-splice
                                       _g2328423379_
                                       '0)))
                                 (begin
                                   (let ((_g27417_ (values-count _g27416_)))
                                     (if (not (fx= _g27417_ 2))
                                         (error "Context expects 2 values"
                                                _g27417_)))
                                   (let ((_target2328623381_
                                          (values-ref _g27416_ 0))
                                         (_tl2328823383_
                                          (values-ref _g27416_ 1)))
                                     (if (gx#stx-null? _tl2328823383_)
                                         (letrec ((_loop2328923386_
                                                   (lambda (_hd2328723389_
                                                            _arg2329323391_)
                                                     (if (gx#stx-pair?
                                                          _hd2328723389_)
                                                         (let ((_e2329023394_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2328723389_)))
                   (let ((_lp-hd2329123397_ (##car _e2329023394_))
                         (_lp-tl2329223399_ (##cdr _e2329023394_)))
                     (_loop2328923386_
                      _lp-tl2329223399_
                      (cons _lp-hd2329123397_ _arg2329323391_))))
                 (let ((_arg2329423402_ (reverse _arg2329323391_)))
                   ((lambda (_L23405_)
                      (cons _L23258_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23277_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2341523418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2341623420_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2341523418_ '()))
                         _g2341623420_))
                 '()
                 _L23405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23200_)
                                  '())))
                    _arg2329423402_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2328923386_
                                            _target2328623381_
                                            '()))
                                         (_g2328123376_ _g2328423379_)))))
                               (_g2328123376_ _g2328423379_))
                           (_g2328123376_ _g2328423379_)))))
               (_g2328023423_ _L23258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23205_
                                                _rest23230_
                                                (cons _id23277_ _ids23208_)
                                                (cons _impl23279_ _impls23209_)
                                                (cons _clause23426_
                                                      _clauses23210_))))
                                           _tl2323923254_
                                           _hd2323823252_)))
                                      (_g2323323244_ _g2323423247_)))))
                          (_g2323223429_ _clause23231_))))))
            (if (##pair? _rest2321123219_)
                (let ((_hd2321623435_ (##car _rest2321123219_))
                      (_tl2321723437_ (##cdr _rest2321123219_)))
                  (let* ((_clause23440_ _hd2321623435_)
                         (_rest23442_ _tl2321723437_))
                    (_K2321523432_ _rest23442_ _clause23440_)))
                (_else2321323227_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23447_ _id23448_ _clauses23449_)
          (let ((_gensym?23451_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23447_
             _id23448_
             _clauses23449_
             _gensym?23451_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27419_
          (let ((_g27418_ (length _g27419_)))
            (cond ((fx= _g27418_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27419_))
                  ((fx= _g27418_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27419_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27419_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22477_)
      (letrec ((_case-lambda-clause-def22479_
                (lambda (_id23196_ _impl23197_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23196_ '())
                               (cons (gxc#compile-e _impl23197_) '())))
                   _stx22477_)))
               (_opt-lambda-dispatch-name22480_
                (lambda (_id23192_)
                  (if (uninterned-symbol? _id23192_)
                      (let ((_str23194_ (symbol->string _id23192_)))
                        (if (string-prefix? _str23194_ '"opt-lambda")
                            '"%"
                            _id23192_))
                      _id23192_)))
               (_kw-lambda-dispatch-name22481_
                (lambda (_id23187_ _name23188_)
                  (if (uninterned-symbol? _id23187_)
                      (let ((_str23190_ (symbol->string _id23187_)))
                        (if (string-prefix? _str23190_ '"kw-lambda")
                            _name23188_
                            _id23187_))
                      _id23187_))))
        (let* ((_g2248622545_
                (lambda (_g2248722542_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2248722542_)))
               (_g2248522591_
                (lambda (_g2248722548_)
                  (if (gx#stx-pair? _g2248722548_)
                      (let ((_e2253222550_ (gx#stx-e _g2248722548_)))
                        (let ((_hd2253322553_ (##car _e2253222550_))
                              (_tl2253422555_ (##cdr _e2253222550_)))
                          (if (gx#stx-pair? _tl2253422555_)
                              (let ((_e2253522558_ (gx#stx-e _tl2253422555_)))
                                (let ((_hd2253622561_ (##car _e2253522558_))
                                      (_tl2253722563_ (##cdr _e2253522558_)))
                                  (if (gx#stx-pair? _tl2253722563_)
                                      (let ((_e2253822566_
                                             (gx#stx-e _tl2253722563_)))
                                        (let ((_hd2253922569_
                                               (##car _e2253822566_))
                                              (_tl2254022571_
                                               (##cdr _e2253822566_)))
                                          (if (gx#stx-null? _tl2254022571_)
                                              ((lambda (_L22574_ _L22575_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22575_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22574_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22477_))
                                               _hd2253922569_
                                               _hd2253622561_)
                                              (_g2248622545_ _g2248722548_))))
                                      (_g2248622545_ _g2248722548_))))
                              (_g2248622545_ _g2248722548_))))
                      (_g2248622545_ _g2248722548_))))
               (_g2248422877_
                (lambda (_g2248722594_)
                  (if (gx#stx-pair? _g2248722594_)
                      (let ((_e2251822596_ (gx#stx-e _g2248722594_)))
                        (let ((_hd2251922599_ (##car _e2251822596_))
                              (_tl2252022601_ (##cdr _e2251822596_)))
                          (if (gx#stx-pair? _tl2252022601_)
                              (let ((_e2252122604_ (gx#stx-e _tl2252022601_)))
                                (let ((_hd2252222607_ (##car _e2252122604_))
                                      (_tl2252322609_ (##cdr _e2252122604_)))
                                  (if (gx#stx-pair? _hd2252222607_)
                                      (let ((_e2252422612_
                                             (gx#stx-e _hd2252222607_)))
                                        (let ((_hd2252522615_
                                               (##car _e2252422612_))
                                              (_tl2252622617_
                                               (##cdr _e2252422612_)))
                                          (if (gx#stx-null? _tl2252622617_)
                                              (if (gx#stx-pair? _tl2252322609_)
                                                  (let ((_e2252722620_
                                                         (gx#stx-e
                                                          _tl2252322609_)))
                                                    (let ((_hd2252822623_
                                                           (##car _e2252722620_))
                                                          (_tl2252922625_
                                                           (##cdr _e2252722620_)))
                                                      (if (gx#stx-null?
                                                           _tl2252922625_)
                                                          ((lambda (_L22628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22629_)
                     (if (if (gx#identifier? _L22629_)
                             (gxc#kw-lambda-expr? _L22628_)
                             '#f)
                         (let* ((_g2264522698_
                                 (lambda (_g2264622695_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2264622695_)))
                                (_g2264422874_
                                 (lambda (_g2264622701_)
                                   (if (gx#stx-pair? _g2264622701_)
                                       (let ((_e2265222703_
                                              (gx#stx-e _g2264622701_)))
                                         (let ((_hd2265322706_
                                                (##car _e2265222703_))
                                               (_tl2265422708_
                                                (##cdr _e2265222703_)))
                                           (if (gx#stx-pair? _tl2265422708_)
                                               (let ((_e2265522711_
                                                      (gx#stx-e
                                                       _tl2265422708_)))
                                                 (let ((_hd2265622714_
                                                        (##car _e2265522711_))
                                                       (_tl2265722716_
                                                        (##cdr _e2265522711_)))
                                                   (if (gx#stx-pair?
                                                        _hd2265622714_)
                                                       (let ((_e2265822719_
                                                              (gx#stx-e
                                                               _hd2265622714_)))
                                                         (let ((_hd2265922722_
                                                                (##car _e2265822719_))
                                                               (_tl2266022724_
                                                                (##cdr _e2265822719_)))
                                                           (if (gx#stx-pair?
                                                                _hd2265922722_)
                                                               (let ((_e2266122727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2265922722_)))
                         (let ((_hd2266222730_ (##car _e2266122727_))
                               (_tl2266322732_ (##cdr _e2266122727_)))
                           (if (gx#stx-pair? _hd2266222730_)
                               (let ((_e2266422735_ (gx#stx-e _hd2266222730_)))
                                 (let ((_hd2266522738_ (##car _e2266422735_))
                                       (_tl2266622740_ (##cdr _e2266422735_)))
                                   (if (gx#stx-null? _tl2266622740_)
                                       (if (gx#stx-pair? _tl2266322732_)
                                           (let ((_e2266722743_
                                                  (gx#stx-e _tl2266322732_)))
                                             (let ((_hd2266822746_
                                                    (##car _e2266722743_))
                                                   (_tl2266922748_
                                                    (##cdr _e2266722743_)))
                                               (if (gx#stx-pair?
                                                    _hd2266822746_)
                                                   (let ((_e2267022751_
                                                          (gx#stx-e
                                                           _hd2266822746_)))
                                                     (let ((_hd2267122754_
                                                            (##car _e2267022751_))
                                                           (_tl2267222756_
                                                            (##cdr _e2267022751_)))
                                                       (if (gx#stx-pair?
                                                            _tl2267222756_)
                                                           (let ((_e2267322759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2267222756_)))
                     (let ((_hd2267422762_ (##car _e2267322759_))
                           (_tl2267522764_ (##cdr _e2267322759_)))
                       (if (gx#stx-pair? _hd2267422762_)
                           (let ((_e2267622767_ (gx#stx-e _hd2267422762_)))
                             (let ((_hd2267722770_ (##car _e2267622767_))
                                   (_tl2267822772_ (##cdr _e2267622767_)))
                               (if (gx#stx-pair? _hd2267722770_)
                                   (let ((_e2267922775_
                                          (gx#stx-e _hd2267722770_)))
                                     (let ((_hd2268022778_
                                            (##car _e2267922775_))
                                           (_tl2268122780_
                                            (##cdr _e2267922775_)))
                                       (if (gx#stx-pair? _hd2268022778_)
                                           (let ((_e2268222783_
                                                  (gx#stx-e _hd2268022778_)))
                                             (let ((_hd2268322786_
                                                    (##car _e2268222783_))
                                                   (_tl2268422788_
                                                    (##cdr _e2268222783_)))
                                               (if (gx#stx-null?
                                                    _tl2268422788_)
                                                   (if (gx#stx-pair?
                                                        _tl2268122780_)
                                                       (let ((_e2268522791_
                                                              (gx#stx-e
                                                               _tl2268122780_)))
                                                         (let ((_hd2268622794_
                                                                (##car _e2268522791_))
                                                               (_tl2268722796_
                                                                (##cdr _e2268522791_)))
                                                           (if (gx#stx-null?
                                                                _tl2268722796_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2267822772_)
                           (if (gx#stx-pair? _tl2267522764_)
                               (let ((_e2268822799_ (gx#stx-e _tl2267522764_)))
                                 (let ((_hd2268922802_ (##car _e2268822799_))
                                       (_tl2269022804_ (##cdr _e2268822799_)))
                                   (if (gx#stx-null? _tl2269022804_)
                                       (if (gx#stx-null? _tl2266922748_)
                                           (if (gx#stx-null? _tl2266022724_)
                                               (if (gx#stx-pair?
                                                    _tl2265722716_)
                                                   (let ((_e2269122807_
                                                          (gx#stx-e
                                                           _tl2265722716_)))
                                                     (let ((_hd2269222810_
                                                            (##car _e2269122807_))
                                                           (_tl2269322812_
                                                            (##cdr _e2269122807_)))
                                                       (if (gx#stx-null?
                                                            _tl2269322812_)
                                                           ((lambda (_L22815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22816_
                             _L22817_
                             _L22818_
                             _L22819_)
                      (let* ((_get-kws-id22859_
                              (make-symbol
                               (gx#stx-e _L22629_)
                               '"__"
                               (_kw-lambda-dispatch-name22481_
                                (gx#stx-e _L22819_)
                                '"@")))
                             (_get-kws-id22861_
                              (gx#core-quote-syntax__1
                               _get-kws-id22859_
                               (gx#stx-source _stx22477_)))
                             (_main-id22863_
                              (make-symbol
                               (gx#stx-e _L22629_)
                               '"__"
                               (_kw-lambda-dispatch-name22481_
                                (gx#stx-e _L22818_)
                                '"%")))
                             (_main-id22865_
                              (gx#core-quote-syntax__1
                               _main-id22863_
                               (gx#stx-source _stx22477_)))
                             (_g27420_
                              (gx#core-bind-runtime!__0 _get-kws-id22861_))
                             (_g27421_
                              (gx#core-bind-runtime!__0 _main-id22865_))
                             (_new-kw-dispatch22869_
                              (gxc#apply-expression-subst
                               _L22815_
                               _L22819_
                               _get-kws-id22861_))
                             (_new-get-kws22871_
                              (gxc#apply-expression-subst
                               _L22816_
                               _L22818_
                               _main-id22865_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#identifier-symbol _L22629_)
                           '" => "
                           (gxc#identifier-symbol _get-kws-id22861_)
                           '" => "
                           (gxc#identifier-symbol _main-id22865_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id22865_ '())
                                                     (cons _L22817_ '())))
                                         _stx22477_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id22861_
                                                                '())
                                                          (cons _new-get-kws22871_
                                                                '())))
                                              _stx22477_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L22629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch22869_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22477_)
                                                   '()))))
                           _stx22477_))))
                    _hd2269222810_
                    _hd2268922802_
                    _hd2268622794_
                    _hd2268322786_
                    _hd2266522738_)
                   (_g2264522698_ _g2264622701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2264522698_
                                                    _g2264622701_))
                                               (_g2264522698_ _g2264622701_))
                                           (_g2264522698_ _g2264622701_))
                                       (_g2264522698_ _g2264622701_))))
                               (_g2264522698_ _g2264622701_))
                           (_g2264522698_ _g2264622701_))
                       (_g2264522698_ _g2264622701_))))
               (_g2264522698_ _g2264622701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2264522698_
                                                    _g2264622701_))))
                                           (_g2264522698_ _g2264622701_))))
                                   (_g2264522698_ _g2264622701_))))
                           (_g2264522698_ _g2264622701_))))
                   (_g2264522698_ _g2264622701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2264522698_
                                                    _g2264622701_))))
                                           (_g2264522698_ _g2264622701_))
                                       (_g2264522698_ _g2264622701_))))
                               (_g2264522698_ _g2264622701_))))
                       (_g2264522698_ _g2264622701_))))
               (_g2264522698_ _g2264622701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2264522698_ _g2264622701_))))
                                       (_g2264522698_ _g2264622701_)))))
                           (_g2264422874_ _L22628_))
                         (_g2248522591_ _g2248722594_)))
                   _hd2252822623_
                   _hd2252522615_)
                  (_g2248522591_ _g2248722594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2248522591_
                                                   _g2248722594_))
                                              (_g2248522591_ _g2248722594_))))
                                      (_g2248522591_ _g2248722594_))))
                              (_g2248522591_ _g2248722594_))))
                      (_g2248522591_ _g2248722594_))))
               (_g2248323059_
                (lambda (_g2248722880_)
                  (if (gx#stx-pair? _g2248722880_)
                      (let ((_e2250422882_ (gx#stx-e _g2248722880_)))
                        (let ((_hd2250522885_ (##car _e2250422882_))
                              (_tl2250622887_ (##cdr _e2250422882_)))
                          (if (gx#stx-pair? _tl2250622887_)
                              (let ((_e2250722890_ (gx#stx-e _tl2250622887_)))
                                (let ((_hd2250822893_ (##car _e2250722890_))
                                      (_tl2250922895_ (##cdr _e2250722890_)))
                                  (if (gx#stx-pair? _hd2250822893_)
                                      (let ((_e2251022898_
                                             (gx#stx-e _hd2250822893_)))
                                        (let ((_hd2251122901_
                                               (##car _e2251022898_))
                                              (_tl2251222903_
                                               (##cdr _e2251022898_)))
                                          (if (gx#stx-null? _tl2251222903_)
                                              (if (gx#stx-pair? _tl2250922895_)
                                                  (let ((_e2251322906_
                                                         (gx#stx-e
                                                          _tl2250922895_)))
                                                    (let ((_hd2251422909_
                                                           (##car _e2251322906_))
                                                          (_tl2251522911_
                                                           (##cdr _e2251322906_)))
                                                      (if (gx#stx-null?
                                                           _tl2251522911_)
                                                          ((lambda (_L22914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22915_)
                     (if (if (gx#identifier? _L22915_)
                             (gxc#opt-lambda-expr? _L22914_)
                             '#f)
                         (let* ((_g2293122961_
                                 (lambda (_g2293222958_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2293222958_)))
                                (_g2293023056_
                                 (lambda (_g2293222964_)
                                   (if (gx#stx-pair? _g2293222964_)
                                       (let ((_e2293622966_
                                              (gx#stx-e _g2293222964_)))
                                         (let ((_hd2293722969_
                                                (##car _e2293622966_))
                                               (_tl2293822971_
                                                (##cdr _e2293622966_)))
                                           (if (gx#stx-pair? _tl2293822971_)
                                               (let ((_e2293922974_
                                                      (gx#stx-e
                                                       _tl2293822971_)))
                                                 (let ((_hd2294022977_
                                                        (##car _e2293922974_))
                                                       (_tl2294122979_
                                                        (##cdr _e2293922974_)))
                                                   (if (gx#stx-pair?
                                                        _hd2294022977_)
                                                       (let ((_e2294222982_
                                                              (gx#stx-e
                                                               _hd2294022977_)))
                                                         (let ((_hd2294322985_
                                                                (##car _e2294222982_))
                                                               (_tl2294422987_
                                                                (##cdr _e2294222982_)))
                                                           (if (gx#stx-pair?
                                                                _hd2294322985_)
                                                               (let ((_e2294522990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2294322985_)))
                         (let ((_hd2294622993_ (##car _e2294522990_))
                               (_tl2294722995_ (##cdr _e2294522990_)))
                           (if (gx#stx-pair? _hd2294622993_)
                               (let ((_e2294822998_ (gx#stx-e _hd2294622993_)))
                                 (let ((_hd2294923001_ (##car _e2294822998_))
                                       (_tl2295023003_ (##cdr _e2294822998_)))
                                   (if (gx#stx-null? _tl2295023003_)
                                       (if (gx#stx-pair? _tl2294722995_)
                                           (let ((_e2295123006_
                                                  (gx#stx-e _tl2294722995_)))
                                             (let ((_hd2295223009_
                                                    (##car _e2295123006_))
                                                   (_tl2295323011_
                                                    (##cdr _e2295123006_)))
                                               (if (gx#stx-null?
                                                    _tl2295323011_)
                                                   (if (gx#stx-null?
                                                        _tl2294422987_)
                                                       (if (gx#stx-pair?
                                                            _tl2294122979_)
                                                           (let ((_e2295423014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2294122979_)))
                     (let ((_hd2295523017_ (##car _e2295423014_))
                           (_tl2295623019_ (##cdr _e2295423014_)))
                       (if (gx#stx-null? _tl2295623019_)
                           ((lambda (_L23022_ _L23023_ _L23024_)
                              (let* ((_lambda-id23048_
                                      (make-symbol
                                       (gx#stx-e _L22915_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22480_
                                        (gx#stx-e _L23024_))))
                                     (_lambda-id23050_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23048_
                                       (gx#stx-source _stx22477_)))
                                     (_g27422_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23050_))
                                     (_new-case-lambda-expr23053_
                                      (gxc#apply-expression-subst
                                       _L23022_
                                       _L23024_
                                       _lambda-id23050_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#identifier-symbol _L22915_)
                                   '" => "
                                   (gxc#identifier-symbol _lambda-id23050_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L23023_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22477_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L22915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23053_ '())))
               _stx22477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22477_))))
                            _hd2295523017_
                            _hd2295223009_
                            _hd2294923001_)
                           (_g2293122961_ _g2293222964_))))
                   (_g2293122961_ _g2293222964_))
               (_g2293122961_ _g2293222964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2293122961_
                                                    _g2293222964_))))
                                           (_g2293122961_ _g2293222964_))
                                       (_g2293122961_ _g2293222964_))))
                               (_g2293122961_ _g2293222964_))))
                       (_g2293122961_ _g2293222964_))))
               (_g2293122961_ _g2293222964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2293122961_ _g2293222964_))))
                                       (_g2293122961_ _g2293222964_)))))
                           (_g2293023056_ _L22914_))
                         (_g2248422877_ _g2248722880_)))
                   _hd2251422909_
                   _hd2251122901_)
                  (_g2248422877_ _g2248722880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2248422877_
                                                   _g2248722880_))
                                              (_g2248422877_ _g2248722880_))))
                                      (_g2248422877_ _g2248722880_))))
                              (_g2248422877_ _g2248722880_))))
                      (_g2248422877_ _g2248722880_))))
               (_g2248223184_
                (lambda (_g2248723062_)
                  (if (gx#stx-pair? _g2248723062_)
                      (let ((_e2249023064_ (gx#stx-e _g2248723062_)))
                        (let ((_hd2249123067_ (##car _e2249023064_))
                              (_tl2249223069_ (##cdr _e2249023064_)))
                          (if (gx#stx-pair? _tl2249223069_)
                              (let ((_e2249323072_ (gx#stx-e _tl2249223069_)))
                                (let ((_hd2249423075_ (##car _e2249323072_))
                                      (_tl2249523077_ (##cdr _e2249323072_)))
                                  (if (gx#stx-pair? _hd2249423075_)
                                      (let ((_e2249623080_
                                             (gx#stx-e _hd2249423075_)))
                                        (let ((_hd2249723083_
                                               (##car _e2249623080_))
                                              (_tl2249823085_
                                               (##cdr _e2249623080_)))
                                          (if (gx#stx-null? _tl2249823085_)
                                              (if (gx#stx-pair? _tl2249523077_)
                                                  (let ((_e2249923088_
                                                         (gx#stx-e
                                                          _tl2249523077_)))
                                                    (let ((_hd2250023091_
                                                           (##car _e2249923088_))
                                                          (_tl2250123093_
                                                           (##cdr _e2249923088_)))
                                                      (if (gx#stx-null?
                                                           _tl2250123093_)
                                                          ((lambda (_L23096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23097_)
                     (if (if (gx#identifier? _L23097_)
                             (gxc#case-lambda-expr? _L23096_)
                             '#f)
                         (let* ((_g2311423128_
                                 (lambda (_g2311523125_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2311523125_)))
                                (_g2311323159_
                                 (lambda (_g2311523131_)
                                   (if (gx#stx-pair? _g2311523131_)
                                       (let ((_e2312123133_
                                              (gx#stx-e _g2311523131_)))
                                         (let ((_hd2312223136_
                                                (##car _e2312123133_))
                                               (_tl2312323138_
                                                (##cdr _e2312123133_)))
                                           ((lambda (_L23141_)
                                              (let ((_g27423_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22477_
                                                      _L23097_
                                                      _L23141_)))
                                                (begin
                                                  (let ((_g27424_
                                                         (values-count
                                                          _g27423_)))
                                                    (if (not (fx= _g27424_ 3))
                                                        (error "Context expects 3 values"
                                                               _g27424_)))
                                                  (let ((_ids23151_
                                                         (values-ref
                                                          _g27423_
                                                          0))
                                                        (_impls23152_
                                                         (values-ref
                                                          _g27423_
                                                          1))
                                                        (_clauses23153_
                                                         (values-ref
                                                          _g27423_
                                                          2)))
                                                    (let* ((_g27425_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23151_))
                                                           (_defs23156_
                                                            (map _case-lambda-clause-def22479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23151_
                         _impls23152_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#identifier-symbol _L23097_)
                 '" => "
                 (map gxc#identifier-symbol _ids23151_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23097_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23153_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22477_)
                                     '())
                               _defs23156_))
                 _stx22477_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2312323138_)))
                                       (_g2311423128_ _g2311523131_))))
                                (_g2311223181_
                                 (lambda (_g2311523162_)
                                   (if (gx#stx-pair? _g2311523162_)
                                       (let ((_e2311723164_
                                              (gx#stx-e _g2311523162_)))
                                         (let ((_hd2311823167_
                                                (##car _e2311723164_))
                                               (_tl2311923169_
                                                (##cdr _e2311723164_)))
                                           ((lambda (_L23172_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23172_)
                                                  _stx22477_
                                                  (_g2311323159_
                                                   _g2311523162_)))
                                            _tl2311923169_)))
                                       (_g2311323159_ _g2311523162_)))))
                           (_g2311223181_ _L23096_))
                         (_g2248323059_ _g2248723062_)))
                   _hd2250023091_
                   _hd2249723083_)
                  (_g2248323059_ _g2248723062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2248323059_
                                                   _g2248723062_))
                                              (_g2248323059_ _g2248723062_))))
                                      (_g2248323059_ _g2248723062_))))
                              (_g2248323059_ _g2248723062_))))
                      (_g2248323059_ _g2248723062_)))))
          (_g2248223184_ _stx22477_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21409_)
      (letrec* ((_bind-e__2737027371_
                 (lambda (_id22461_ _expr22462_ _compile?22463_)
                   (cons (cons _id22461_ '())
                         (cons (if _compile?22463_
                                   (gxc#compile-e _expr22462_)
                                   _expr22462_)
                               '()))))
                (_bind-e__0__2737227373_
                 (lambda (_id22468_ _expr22469_)
                   (let ((_compile?22471_ '#t))
                     (_bind-e__2737027371_
                      _id22468_
                      _expr22469_
                      _compile?22471_))))
                (_bind-e21411_
                 (lambda _g27427_
                   (let ((_g27426_ (length _g27427_)))
                     (cond ((fx= _g27426_ 2)
                            (apply _bind-e__0__2737227373_ _g27427_))
                           ((fx= _g27426_ 3)
                            (apply _bind-e__2737027371_ _g27427_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27427_))))))
                (_compile-bindings21412_
                 (lambda (_bindings22045_)
                   (let _lp22047_ ((_rest22049_ _bindings22045_)
                                   (_lift122050_ '())
                                   (_lift222051_ '())
                                   (_bind22052_ '()))
                     (let* ((_rest2205322061_ _rest22049_)
                            (_E2205622065_
                             (lambda ()
                               (error '"No clause matching" _rest2205322061_)))
                            (_else2205522069_
                             (lambda ()
                               (values (reverse _lift122050_)
                                       (reverse _lift222051_)
                                       (reverse _bind22052_))))
                            (_K2205722448_
                             (lambda (_rest22072_ _hd22073_)
                               (let* ((_g2207722113_
                                       (lambda (_g2207822110_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2207822110_)))
                                      (_g2207622154_
                                       (lambda (_g2207822116_)
                                         (if (gx#stx-pair? _g2207822116_)
                                             (let ((_e2210322118_
                                                    (gx#stx-e _g2207822116_)))
                                               (let ((_hd2210422121_
                                                      (##car _e2210322118_))
                                                     (_tl2210522123_
                                                      (##cdr _e2210322118_)))
                                                 (if (gx#stx-pair?
                                                      _tl2210522123_)
                                                     (let ((_e2210622126_
                                                            (gx#stx-e
                                                             _tl2210522123_)))
                                                       (let ((_hd2210722129_
                                                              (##car _e2210622126_))
                                                             (_tl2210822131_
                                                              (##cdr _e2210622126_)))
                                                         (if (gx#stx-null?
                                                              _tl2210822131_)
                                                             ((lambda (_L22134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22135_)
                        (_lp22047_
                         _rest22072_
                         _lift122050_
                         _lift222051_
                         (cons (cons _L22135_
                                     (cons (gxc#compile-e _L22134_) '()))
                               _bind22052_)))
                      _hd2210722129_
                      _hd2210422121_)
                     (_g2207722113_ _g2207822116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2207722113_
                                                      _g2207822116_))))
                                             (_g2207722113_ _g2207822116_))))
                                      (_g2207522326_
                                       (lambda (_g2207822157_)
                                         (if (gx#stx-pair? _g2207822157_)
                                             (let ((_e2209222159_
                                                    (gx#stx-e _g2207822157_)))
                                               (let ((_hd2209322162_
                                                      (##car _e2209222159_))
                                                     (_tl2209422164_
                                                      (##cdr _e2209222159_)))
                                                 (if (gx#stx-pair?
                                                      _hd2209322162_)
                                                     (let ((_e2209522167_
                                                            (gx#stx-e
                                                             _hd2209322162_)))
                                                       (let ((_hd2209622170_
                                                              (##car _e2209522167_))
                                                             (_tl2209722172_
                                                              (##cdr _e2209522167_)))
                                                         (if (gx#stx-null?
                                                              _tl2209722172_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2209422164_)
                         (let ((_e2209822175_ (gx#stx-e _tl2209422164_)))
                           (let ((_hd2209922178_ (##car _e2209822175_))
                                 (_tl2210022180_ (##cdr _e2209822175_)))
                             (if (gx#stx-null? _tl2210022180_)
                                 ((lambda (_L22183_ _L22184_)
                                    (if (if (gx#identifier? _L22184_)
                                            (gxc#opt-lambda-expr? _L22183_)
                                            '#f)
                                        (let* ((_g2219822228_
                                                (lambda (_g2219922225_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2219922225_)))
                                               (_g2219722323_
                                                (lambda (_g2219922231_)
                                                  (if (gx#stx-pair?
                                                       _g2219922231_)
                                                      (let ((_e2220322233_
                                                             (gx#stx-e
                                                              _g2219922231_)))
                                                        (let ((_hd2220422236_
                                                               (##car _e2220322233_))
                                                              (_tl2220522238_
                                                               (##cdr _e2220322233_)))
                                                          (if (gx#stx-pair?
                                                               _tl2220522238_)
                                                              (let ((_e2220622241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2220522238_)))
                        (let ((_hd2220722244_ (##car _e2220622241_))
                              (_tl2220822246_ (##cdr _e2220622241_)))
                          (if (gx#stx-pair? _hd2220722244_)
                              (let ((_e2220922249_ (gx#stx-e _hd2220722244_)))
                                (let ((_hd2221022252_ (##car _e2220922249_))
                                      (_tl2221122254_ (##cdr _e2220922249_)))
                                  (if (gx#stx-pair? _hd2221022252_)
                                      (let ((_e2221222257_
                                             (gx#stx-e _hd2221022252_)))
                                        (let ((_hd2221322260_
                                               (##car _e2221222257_))
                                              (_tl2221422262_
                                               (##cdr _e2221222257_)))
                                          (if (gx#stx-pair? _hd2221322260_)
                                              (let ((_e2221522265_
                                                     (gx#stx-e
                                                      _hd2221322260_)))
                                                (let ((_hd2221622268_
                                                       (##car _e2221522265_))
                                                      (_tl2221722270_
                                                       (##cdr _e2221522265_)))
                                                  (if (gx#stx-null?
                                                       _tl2221722270_)
                                                      (if (gx#stx-pair?
                                                           _tl2221422262_)
                                                          (let ((_e2221822273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2221422262_)))
                    (let ((_hd2221922276_ (##car _e2221822273_))
                          (_tl2222022278_ (##cdr _e2221822273_)))
                      (if (gx#stx-null? _tl2222022278_)
                          (if (gx#stx-null? _tl2221122254_)
                              (if (gx#stx-pair? _tl2220822246_)
                                  (let ((_e2222122281_
                                         (gx#stx-e _tl2220822246_)))
                                    (let ((_hd2222222284_
                                           (##car _e2222122281_))
                                          (_tl2222322286_
                                           (##cdr _e2222122281_)))
                                      (if (gx#stx-null? _tl2222322286_)
                                          ((lambda (_L22289_ _L22290_ _L22291_)
                                             (let* ((_lambda-id22315_
                                                     (make-symbol
                                                      (gx#stx-e _L22184_)
                                                      (gensym '__)))
                                                    (_lambda-id22317_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22315_
                                                      (gx#stx-source
                                                       _stx21409_)))
                                                    (_g27428_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22317_))
                                                    (_new-case-lambda-expr22320_
                                                     (gxc#apply-expression-subst
                                                      _L22289_
                                                      _L22291_
                                                      _lambda-id22317_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L22184_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id22317_))
                                                 (_lp22047_
                                                  (cons (_bind-e__2737027371_
                                                         _L22184_
                                                         _new-case-lambda-expr22320_
                                                         '#f)
                                                        _rest22072_)
                                                  (cons (_bind-e__0__2737227373_
                                                         _lambda-id22317_
                                                         _L22290_)
                                                        _lift122050_)
                                                  _lift222051_
                                                  _bind22052_))))
                                           _hd2222222284_
                                           _hd2221922276_
                                           _hd2221622268_)
                                          (_g2219822228_ _g2219922231_))))
                                  (_g2219822228_ _g2219922231_))
                              (_g2219822228_ _g2219922231_))
                          (_g2219822228_ _g2219922231_))))
                  (_g2219822228_ _g2219922231_))
              (_g2219822228_ _g2219922231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2219822228_ _g2219922231_))))
                                      (_g2219822228_ _g2219922231_))))
                              (_g2219822228_ _g2219922231_))))
                      (_g2219822228_ _g2219922231_))))
              (_g2219822228_ _g2219922231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2219722323_ _L22183_))
                                        (_g2207622154_ _g2207822157_)))
                                  _hd2209922178_
                                  _hd2209622170_)
                                 (_g2207622154_ _g2207822157_))))
                         (_g2207622154_ _g2207822157_))
                     (_g2207622154_ _g2207822157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2207622154_
                                                      _g2207822157_))))
                                             (_g2207622154_ _g2207822157_))))
                                      (_g2207422445_
                                       (lambda (_g2207822329_)
                                         (if (gx#stx-pair? _g2207822329_)
                                             (let ((_e2208122331_
                                                    (gx#stx-e _g2207822329_)))
                                               (let ((_hd2208222334_
                                                      (##car _e2208122331_))
                                                     (_tl2208322336_
                                                      (##cdr _e2208122331_)))
                                                 (if (gx#stx-pair?
                                                      _hd2208222334_)
                                                     (let ((_e2208422339_
                                                            (gx#stx-e
                                                             _hd2208222334_)))
                                                       (let ((_hd2208522342_
                                                              (##car _e2208422339_))
                                                             (_tl2208622344_
                                                              (##cdr _e2208422339_)))
                                                         (if (gx#stx-null?
                                                              _tl2208622344_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2208322336_)
                         (let ((_e2208722347_ (gx#stx-e _tl2208322336_)))
                           (let ((_hd2208822350_ (##car _e2208722347_))
                                 (_tl2208922352_ (##cdr _e2208722347_)))
                             (if (gx#stx-null? _tl2208922352_)
                                 ((lambda (_L22355_ _L22356_)
                                    (if (if (gx#identifier? _L22356_)
                                            (gxc#case-lambda-expr? _L22355_)
                                            '#f)
                                        (let* ((_g2237122385_
                                                (lambda (_g2237222382_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2237222382_)))
                                               (_g2237022420_
                                                (lambda (_g2237222388_)
                                                  (if (gx#stx-pair?
                                                       _g2237222388_)
                                                      (let ((_e2237822390_
                                                             (gx#stx-e
                                                              _g2237222388_)))
                                                        (let ((_hd2237922393_
                                                               (##car _e2237822390_))
                                                              (_tl2238022395_
                                                               (##cdr _e2237822390_)))
                                                          ((lambda (_L22398_)
                                                             (let ((_g27429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21409_
                             _L22356_
                             _L22398_
                             '#t)))
                       (begin
                         (let ((_g27430_ (values-count _g27429_)))
                           (if (not (fx= _g27430_ 3))
                               (error "Context expects 3 values" _g27430_)))
                         (let ((_ids22408_ (values-ref _g27429_ 0))
                               (_impls22409_ (values-ref _g27429_ 1))
                               (_clauses22410_ (values-ref _g27429_ 2)))
                           (let* ((_g27431_
                                   (for-each gx#core-bind-runtime! _ids22408_))
                                  (_xbind22413_
                                   (map _bind-e21411_ _ids22408_ _impls22409_))
                                  (_expr*22415_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22410_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22417_
                                   (_bind-e__2737027371_
                                    _L22356_
                                    _expr*22415_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L22356_)
                                '" => "
                                (map gxc#identifier-symbol _ids22408_))
                               (_lp22047_
                                _rest22072_
                                _lift122050_
                                (foldl1 cons _lift222051_ _xbind22413_)
                                (cons _bind*22417_ _bind22052_))))))))
                   _tl2238022395_)))
              (_g2237122385_ _g2237222388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2236922442_
                                                (lambda (_g2237222423_)
                                                  (if (gx#stx-pair?
                                                       _g2237222423_)
                                                      (let ((_e2237422425_
                                                             (gx#stx-e
                                                              _g2237222423_)))
                                                        (let ((_hd2237522428_
                                                               (##car _e2237422425_))
                                                              (_tl2237622430_
                                                               (##cdr _e2237422425_)))
                                                          ((lambda (_L22433_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22433_)
                         (_lp22047_
                          _rest22072_
                          _lift122050_
                          _lift222051_
                          (cons (_bind-e__2737027371_ _L22356_ _L22355_ '#f)
                                _bind22052_))
                         (_g2237022420_ _g2237222423_)))
                   _tl2237622430_)))
              (_g2237022420_ _g2237222423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2236922442_ _L22355_))
                                        (_g2207522326_ _g2207822329_)))
                                  _hd2208822350_
                                  _hd2208522342_)
                                 (_g2207522326_ _g2207822329_))))
                         (_g2207522326_ _g2207822329_))
                     (_g2207522326_ _g2207822329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2207522326_
                                                      _g2207822329_))))
                                             (_g2207522326_ _g2207822329_)))))
                                 (_g2207422445_ _hd22073_)))))
                       (if (##pair? _rest2205322061_)
                           (let ((_hd2205822451_ (##car _rest2205322061_))
                                 (_tl2205922453_ (##cdr _rest2205322061_)))
                             (let* ((_hd22456_ _hd2205822451_)
                                    (_rest22458_ _tl2205922453_))
                               (_K2205722448_ _rest22458_ _hd22456_)))
                           (_else2205522069_))))))
                (_lift-kw-lambda?21413_
                 (lambda (_bind21969_)
                   (let* ((_g2197221989_
                           (lambda (_g2197321986_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2197321986_)))
                          (_g2197121996_
                           (lambda (_g2197321992_) ((lambda () '#f))))
                          (_g2197022042_
                           (lambda (_g2197321999_)
                             (if (gx#stx-pair? _g2197321999_)
                                 (let ((_e2197622001_
                                        (gx#stx-e _g2197321999_)))
                                   (let ((_hd2197722004_ (##car _e2197622001_))
                                         (_tl2197822006_
                                          (##cdr _e2197622001_)))
                                     (if (gx#stx-pair? _hd2197722004_)
                                         (let ((_e2197922009_
                                                (gx#stx-e _hd2197722004_)))
                                           (let ((_hd2198022012_
                                                  (##car _e2197922009_))
                                                 (_tl2198122014_
                                                  (##cdr _e2197922009_)))
                                             (if (gx#stx-null? _tl2198122014_)
                                                 (if (gx#stx-pair?
                                                      _tl2197822006_)
                                                     (let ((_e2198222017_
                                                            (gx#stx-e
                                                             _tl2197822006_)))
                                                       (let ((_hd2198322020_
                                                              (##car _e2198222017_))
                                                             (_tl2198422022_
                                                              (##cdr _e2198222017_)))
                                                         (if (gx#stx-null?
                                                              _tl2198422022_)
                                                             ((lambda (_L22025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22026_)
                        (if (gx#identifier? _L22026_)
                            (gxc#kw-lambda-expr? _L22025_)
                            '#f))
                      _hd2198322020_
                      _hd2198022012_)
                     (_g2197121996_ _g2197321999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2197121996_
                                                      _g2197321999_))
                                                 (_g2197121996_
                                                  _g2197321999_))))
                                         (_g2197121996_ _g2197321999_))))
                                 (_g2197121996_ _g2197321999_)))))
                     (_g2197022042_ _bind21969_))))
                (_lift-kw-lambda-bindings21414_
                 (lambda (_bindings21581_)
                   (let _lp21583_ ((_rest21585_ _bindings21581_)
                                   (_lift121586_ '())
                                   (_lift221587_ '())
                                   (_bind21588_ '()))
                     (let* ((_rest2158921597_ _rest21585_)
                            (_E2159221601_
                             (lambda ()
                               (error '"No clause matching" _rest2158921597_)))
                            (_else2159121605_
                             (lambda ()
                               (values (reverse _lift121586_)
                                       (reverse _lift221587_)
                                       (reverse _bind21588_))))
                            (_K2159321957_
                             (lambda (_rest21608_ _hd21609_)
                               (let* ((_g2161221637_
                                       (lambda (_g2161321634_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2161321634_)))
                                      (_g2161121678_
                                       (lambda (_g2161321640_)
                                         (if (gx#stx-pair? _g2161321640_)
                                             (let ((_e2162721642_
                                                    (gx#stx-e _g2161321640_)))
                                               (let ((_hd2162821645_
                                                      (##car _e2162721642_))
                                                     (_tl2162921647_
                                                      (##cdr _e2162721642_)))
                                                 (if (gx#stx-pair?
                                                      _tl2162921647_)
                                                     (let ((_e2163021650_
                                                            (gx#stx-e
                                                             _tl2162921647_)))
                                                       (let ((_hd2163121653_
                                                              (##car _e2163021650_))
                                                             (_tl2163221655_
                                                              (##cdr _e2163021650_)))
                                                         (if (gx#stx-null?
                                                              _tl2163221655_)
                                                             ((lambda (_L21658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21659_)
                        (_lp21583_
                         _rest21608_
                         _lift121586_
                         _lift221587_
                         (cons (cons _L21659_ (cons _L21658_ '()))
                               _bind21588_)))
                      _hd2163121653_
                      _hd2162821645_)
                     (_g2161221637_ _g2161321640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2161221637_
                                                      _g2161321640_))))
                                             (_g2161221637_ _g2161321640_))))
                                      (_g2161021954_
                                       (lambda (_g2161321681_)
                                         (if (gx#stx-pair? _g2161321681_)
                                             (let ((_e2161621683_
                                                    (gx#stx-e _g2161321681_)))
                                               (let ((_hd2161721686_
                                                      (##car _e2161621683_))
                                                     (_tl2161821688_
                                                      (##cdr _e2161621683_)))
                                                 (if (gx#stx-pair?
                                                      _hd2161721686_)
                                                     (let ((_e2161921691_
                                                            (gx#stx-e
                                                             _hd2161721686_)))
                                                       (let ((_hd2162021694_
                                                              (##car _e2161921691_))
                                                             (_tl2162121696_
                                                              (##cdr _e2161921691_)))
                                                         (if (gx#stx-null?
                                                              _tl2162121696_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2161821688_)
                         (let ((_e2162221699_ (gx#stx-e _tl2161821688_)))
                           (let ((_hd2162321702_ (##car _e2162221699_))
                                 (_tl2162421704_ (##cdr _e2162221699_)))
                             (if (gx#stx-null? _tl2162421704_)
                                 ((lambda (_L21707_ _L21708_)
                                    (if (if (gx#identifier? _L21708_)
                                            (gxc#kw-lambda-expr? _L21707_)
                                            '#f)
                                        (let* ((_g2172221775_
                                                (lambda (_g2172321772_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2172321772_)))
                                               (_g2172121951_
                                                (lambda (_g2172321778_)
                                                  (if (gx#stx-pair?
                                                       _g2172321778_)
                                                      (let ((_e2172921780_
                                                             (gx#stx-e
                                                              _g2172321778_)))
                                                        (let ((_hd2173021783_
                                                               (##car _e2172921780_))
                                                              (_tl2173121785_
                                                               (##cdr _e2172921780_)))
                                                          (if (gx#stx-pair?
                                                               _tl2173121785_)
                                                              (let ((_e2173221788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2173121785_)))
                        (let ((_hd2173321791_ (##car _e2173221788_))
                              (_tl2173421793_ (##cdr _e2173221788_)))
                          (if (gx#stx-pair? _hd2173321791_)
                              (let ((_e2173521796_ (gx#stx-e _hd2173321791_)))
                                (let ((_hd2173621799_ (##car _e2173521796_))
                                      (_tl2173721801_ (##cdr _e2173521796_)))
                                  (if (gx#stx-pair? _hd2173621799_)
                                      (let ((_e2173821804_
                                             (gx#stx-e _hd2173621799_)))
                                        (let ((_hd2173921807_
                                               (##car _e2173821804_))
                                              (_tl2174021809_
                                               (##cdr _e2173821804_)))
                                          (if (gx#stx-pair? _hd2173921807_)
                                              (let ((_e2174121812_
                                                     (gx#stx-e
                                                      _hd2173921807_)))
                                                (let ((_hd2174221815_
                                                       (##car _e2174121812_))
                                                      (_tl2174321817_
                                                       (##cdr _e2174121812_)))
                                                  (if (gx#stx-null?
                                                       _tl2174321817_)
                                                      (if (gx#stx-pair?
                                                           _tl2174021809_)
                                                          (let ((_e2174421820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2174021809_)))
                    (let ((_hd2174521823_ (##car _e2174421820_))
                          (_tl2174621825_ (##cdr _e2174421820_)))
                      (if (gx#stx-pair? _hd2174521823_)
                          (let ((_e2174721828_ (gx#stx-e _hd2174521823_)))
                            (let ((_hd2174821831_ (##car _e2174721828_))
                                  (_tl2174921833_ (##cdr _e2174721828_)))
                              (if (gx#stx-pair? _tl2174921833_)
                                  (let ((_e2175021836_
                                         (gx#stx-e _tl2174921833_)))
                                    (let ((_hd2175121839_
                                           (##car _e2175021836_))
                                          (_tl2175221841_
                                           (##cdr _e2175021836_)))
                                      (if (gx#stx-pair? _hd2175121839_)
                                          (let ((_e2175321844_
                                                 (gx#stx-e _hd2175121839_)))
                                            (let ((_hd2175421847_
                                                   (##car _e2175321844_))
                                                  (_tl2175521849_
                                                   (##cdr _e2175321844_)))
                                              (if (gx#stx-pair? _hd2175421847_)
                                                  (let ((_e2175621852_
                                                         (gx#stx-e
                                                          _hd2175421847_)))
                                                    (let ((_hd2175721855_
                                                           (##car _e2175621852_))
                                                          (_tl2175821857_
                                                           (##cdr _e2175621852_)))
                                                      (if (gx#stx-pair?
                                                           _hd2175721855_)
                                                          (let ((_e2175921860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2175721855_)))
                    (let ((_hd2176021863_ (##car _e2175921860_))
                          (_tl2176121865_ (##cdr _e2175921860_)))
                      (if (gx#stx-null? _tl2176121865_)
                          (if (gx#stx-pair? _tl2175821857_)
                              (let ((_e2176221868_ (gx#stx-e _tl2175821857_)))
                                (let ((_hd2176321871_ (##car _e2176221868_))
                                      (_tl2176421873_ (##cdr _e2176221868_)))
                                  (if (gx#stx-null? _tl2176421873_)
                                      (if (gx#stx-null? _tl2175521849_)
                                          (if (gx#stx-pair? _tl2175221841_)
                                              (let ((_e2176521876_
                                                     (gx#stx-e
                                                      _tl2175221841_)))
                                                (let ((_hd2176621879_
                                                       (##car _e2176521876_))
                                                      (_tl2176721881_
                                                       (##cdr _e2176521876_)))
                                                  (if (gx#stx-null?
                                                       _tl2176721881_)
                                                      (if (gx#stx-null?
                                                           _tl2174621825_)
                                                          (if (gx#stx-null?
                                                               _tl2173721801_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2173421793_)
                          (let ((_e2176821884_ (gx#stx-e _tl2173421793_)))
                            (let ((_hd2176921887_ (##car _e2176821884_))
                                  (_tl2177021889_ (##cdr _e2176821884_)))
                              (if (gx#stx-null? _tl2177021889_)
                                  ((lambda (_L21892_
                                            _L21893_
                                            _L21894_
                                            _L21895_
                                            _L21896_)
                                     (let* ((_get-kws-id21936_
                                             (make-symbol
                                              (gx#stx-e _L21708_)
                                              (gensym '__)))
                                            (_get-kws-id21938_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id21936_
                                              (gx#stx-source _stx21409_)))
                                            (_main-id21940_
                                             (make-symbol
                                              (gx#stx-e _L21708_)
                                              (gensym '__)))
                                            (_main-id21942_
                                             (gx#core-quote-syntax__1
                                              _main-id21940_
                                              (gx#stx-source _stx21409_)))
                                            (_g27432_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21938_))
                                            (_g27433_
                                             (gx#core-bind-runtime!__0
                                              _main-id21942_))
                                            (_new-kw-dispatch21946_
                                             (gxc#apply-expression-subst
                                              _L21892_
                                              _L21896_
                                              _get-kws-id21938_))
                                            (_new-get-kws21948_
                                             (gxc#apply-expression-subst
                                              _L21893_
                                              _L21895_
                                              _main-id21942_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L21708_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id21938_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id21942_))
                                         (_lp21583_
                                          _rest21608_
                                          (cons (_bind-e__2737027371_
                                                 _main-id21942_
                                                 _L21894_
                                                 '#f)
                                                _lift121586_)
                                          (cons (_bind-e__2737027371_
                                                 _get-kws-id21938_
                                                 _new-get-kws21948_
                                                 '#f)
                                                _lift221587_)
                                          (cons (_bind-e__2737027371_
                                                 _L21708_
                                                 _new-kw-dispatch21946_
                                                 '#f)
                                                _bind21588_)))))
                                   _hd2176921887_
                                   _hd2176621879_
                                   _hd2176321871_
                                   _hd2176021863_
                                   _hd2174221815_)
                                  (_g2172221775_ _g2172321778_))))
                          (_g2172221775_ _g2172321778_))
                      (_g2172221775_ _g2172321778_))
                  (_g2172221775_ _g2172321778_))
              (_g2172221775_ _g2172321778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2172221775_ _g2172321778_))
                                          (_g2172221775_ _g2172321778_))
                                      (_g2172221775_ _g2172321778_))))
                              (_g2172221775_ _g2172321778_))
                          (_g2172221775_ _g2172321778_))))
                  (_g2172221775_ _g2172321778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2172221775_
                                                   _g2172321778_))))
                                          (_g2172221775_ _g2172321778_))))
                                  (_g2172221775_ _g2172321778_))))
                          (_g2172221775_ _g2172321778_))))
                  (_g2172221775_ _g2172321778_))
              (_g2172221775_ _g2172321778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2172221775_ _g2172321778_))))
                                      (_g2172221775_ _g2172321778_))))
                              (_g2172221775_ _g2172321778_))))
                      (_g2172221775_ _g2172321778_))))
              (_g2172221775_ _g2172321778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2172121951_ _L21707_))
                                        (_g2161121678_ _g2161321681_)))
                                  _hd2162321702_
                                  _hd2162021694_)
                                 (_g2161121678_ _g2161321681_))))
                         (_g2161121678_ _g2161321681_))
                     (_g2161121678_ _g2161321681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2161121678_
                                                      _g2161321681_))))
                                             (_g2161121678_ _g2161321681_)))))
                                 (_g2161021954_ _hd21609_)))))
                       (if (##pair? _rest2158921597_)
                           (let ((_hd2159421960_ (##car _rest2158921597_))
                                 (_tl2159521962_ (##cdr _rest2158921597_)))
                             (let* ((_hd21965_ _hd2159421960_)
                                    (_rest21967_ _tl2159521962_))
                               (_K2159321957_ _rest21967_ _hd21965_)))
                           (_else2159121605_)))))))
        (let* ((_g2141721443_
                (lambda (_g2141821440_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2141821440_)))
               (_g2141621450_
                (lambda (_g2141821446_)
                  ((lambda () (gxc#xform-let-values% _stx21409_)))))
               (_g2141521578_
                (lambda (_g2141821453_)
                  (if (gx#stx-pair? _g2141821453_)
                      (let ((_e2142121455_ (gx#stx-e _g2141821453_)))
                        (let ((_hd2142221458_ (##car _e2142121455_))
                              (_tl2142321460_ (##cdr _e2142121455_)))
                          (if (gx#stx-pair? _tl2142321460_)
                              (let ((_e2142421463_ (gx#stx-e _tl2142321460_)))
                                (let ((_hd2142521466_ (##car _e2142421463_))
                                      (_tl2142621468_ (##cdr _e2142421463_)))
                                  (if (gx#stx-pair/null? _hd2142521466_)
                                      (if (fx>= (gx#stx-length _hd2142521466_)
                                                '0)
                                          (let ((_g27434_
                                                 (gx#syntax-split-splice
                                                  _hd2142521466_
                                                  '0)))
                                            (begin
                                              (let ((_g27435_
                                                     (values-count _g27434_)))
                                                (if (not (fx= _g27435_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27435_)))
                                              (let ((_target2142721471_
                                                     (values-ref _g27434_ 0))
                                                    (_tl2142921473_
                                                     (values-ref _g27434_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2142921473_)
                                                    (letrec ((_loop2143021476_
                                                              (lambda (_hd2142821479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2143421481_)
                        (if (gx#stx-pair? _hd2142821479_)
                            (let ((_e2143121484_ (gx#stx-e _hd2142821479_)))
                              (let ((_lp-hd2143221487_ (##car _e2143121484_))
                                    (_lp-tl2143321489_ (##cdr _e2143121484_)))
                                (_loop2143021476_
                                 _lp-tl2143321489_
                                 (cons _lp-hd2143221487_ _bind2143421481_))))
                            (let ((_bind2143521492_
                                   (reverse _bind2143421481_)))
                              (if (gx#stx-pair? _tl2142621468_)
                                  (let ((_e2143621495_
                                         (gx#stx-e _tl2142621468_)))
                                    (let ((_hd2143721498_
                                           (##car _e2143621495_))
                                          (_tl2143821500_
                                           (##cdr _e2143621495_)))
                                      (if (gx#stx-null? _tl2143821500_)
                                          ((lambda (_L21503_ _L21504_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2152421527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2152521529_)
                             (cons _g2152421527_ _g2152521529_))
                           '()
                           _L21504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?21413_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2153221535_ _g2153321537_)
                                    (cons _g2153221535_ _g2153321537_))
                                  '()
                                  _L21504_)))
                (let ((_g27436_
                       (_lift-kw-lambda-bindings21414_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2153921542_ _g2154021544_)
                                    (cons _g2153921542_ _g2154021544_))
                                  '()
                                  _L21504_)))))
                  (begin
                    (let ((_g27437_ (values-count _g27436_)))
                      (if (not (fx= _g27437_ 3))
                          (error "Context expects 3 values" _g27437_)))
                    (let ((_lift121547_ (values-ref _g27436_ 0))
                          (_lift221548_ (values-ref _g27436_ 1))
                          (_hd21549_ (values-ref _g27436_ 2)))
                      (let* ((_expr21551_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21549_ (cons _L21503_ '())))
                               _stx21409_))
                             (_expr21553_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift221548_
                                           (cons _expr21551_ '())))
                               _stx21409_))
                             (_expr21555_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift121547_
                                           (cons _expr21553_ '())))
                               _stx21409_)))
                        (gxc#lift-top-lambda-let-values% _expr21555_)))))
                (let ((_g27438_
                       (_compile-bindings21412_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2155721560_ _g2155821562_)
                                    (cons _g2155721560_ _g2155821562_))
                                  '()
                                  _L21504_)))))
                  (begin
                    (let ((_g27439_ (values-count _g27438_)))
                      (if (not (fx= _g27439_ 3))
                          (error "Context expects 3 values" _g27439_)))
                    (let ((_lift121565_ (values-ref _g27438_ 0))
                          (_lift221566_ (values-ref _g27438_ 1))
                          (_hd21567_ (values-ref _g27438_ 2)))
                      (let* ((_body21569_ (gxc#compile-e _L21503_))
                             (_expr21571_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21567_ (cons _body21569_ '())))
                               _stx21409_))
                             (_expr21573_
                              (if (null? _lift221566_)
                                  _expr21571_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift221566_
                                               (cons _expr21571_ '())))
                                   _stx21409_)))
                             (_expr21575_
                              (if (null? _lift121565_)
                                  _expr21573_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift121565_
                                               (cons _expr21573_ '())))
                                   _stx21409_))))
                        _expr21575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27380
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27380)
                                                      __obj27380)))
                                                 (_g2141621450_
                                                  _g2141821453_)))
                                           _hd2143721498_
                                           _bind2143521492_)
                                          (_g2141621450_ _g2141821453_))))
                                  (_g2141621450_ _g2141821453_)))))))
              (_loop2143021476_ _target2142721471_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2141621450_
                                                     _g2141821453_)))))
                                          (_g2141621450_ _g2141821453_))
                                      (_g2141621450_ _g2141821453_))))
                              (_g2141621450_ _g2141821453_))))
                      (_g2141621450_ _g2141821453_)))))
          (_g2141521578_ _stx21409_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx20553_)
      (letrec* ((_bind-e__2737527376_
                 (lambda (_id21393_ _expr21394_ _compile?21395_)
                   (cons (cons _id21393_ '())
                         (cons (if _compile?21395_
                                   (gxc#compile-e _expr21394_)
                                   _expr21394_)
                               '()))))
                (_bind-e__0__2737727378_
                 (lambda (_id21400_ _expr21401_)
                   (let ((_compile?21403_ '#t))
                     (_bind-e__2737527376_
                      _id21400_
                      _expr21401_
                      _compile?21403_))))
                (_bind-e20555_
                 (lambda _g27441_
                   (let ((_g27440_ (length _g27441_)))
                     (cond ((fx= _g27440_ 2)
                            (apply _bind-e__0__2737727378_ _g27441_))
                           ((fx= _g27440_ 3)
                            (apply _bind-e__2737527376_ _g27441_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27441_))))))
                (_compile-bindings20556_
                 (lambda (_rest20691_)
                   (let _lp20693_ ((_rest20695_ _rest20691_) (_bind20696_ '()))
                     (let* ((_rest2069720705_ _rest20695_)
                            (_E2070020709_
                             (lambda ()
                               (error '"No clause matching" _rest2069720705_)))
                            (_else2069920713_
                             (lambda () (reverse _bind20696_)))
                            (_K2070121380_
                             (lambda (_rest20716_ _hd20717_)
                               (let* ((_g2072220769_
                                       (lambda (_g2072320766_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2072320766_)))
                                      (_g2072120810_
                                       (lambda (_g2072320772_)
                                         (if (gx#stx-pair? _g2072320772_)
                                             (let ((_e2075920774_
                                                    (gx#stx-e _g2072320772_)))
                                               (let ((_hd2076020777_
                                                      (##car _e2075920774_))
                                                     (_tl2076120779_
                                                      (##cdr _e2075920774_)))
                                                 (if (gx#stx-pair?
                                                      _tl2076120779_)
                                                     (let ((_e2076220782_
                                                            (gx#stx-e
                                                             _tl2076120779_)))
                                                       (let ((_hd2076320785_
                                                              (##car _e2076220782_))
                                                             (_tl2076420787_
                                                              (##cdr _e2076220782_)))
                                                         (if (gx#stx-null?
                                                              _tl2076420787_)
                                                             ((lambda (_L20790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20791_)
                        (_lp20693_
                         _rest20716_
                         (cons (cons _L20791_
                                     (cons (gxc#compile-e _L20790_) '()))
                               _bind20696_)))
                      _hd2076320785_
                      _hd2076020777_)
                     (_g2072220769_ _g2072320772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2072220769_
                                                      _g2072320772_))))
                                             (_g2072220769_ _g2072320772_))))
                                      (_g2072021086_
                                       (lambda (_g2072320813_)
                                         (if (gx#stx-pair? _g2072320813_)
                                             (let ((_e2074820815_
                                                    (gx#stx-e _g2072320813_)))
                                               (let ((_hd2074920818_
                                                      (##car _e2074820815_))
                                                     (_tl2075020820_
                                                      (##cdr _e2074820815_)))
                                                 (if (gx#stx-pair?
                                                      _hd2074920818_)
                                                     (let ((_e2075120823_
                                                            (gx#stx-e
                                                             _hd2074920818_)))
                                                       (let ((_hd2075220826_
                                                              (##car _e2075120823_))
                                                             (_tl2075320828_
                                                              (##cdr _e2075120823_)))
                                                         (if (gx#stx-null?
                                                              _tl2075320828_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2075020820_)
                         (let ((_e2075420831_ (gx#stx-e _tl2075020820_)))
                           (let ((_hd2075520834_ (##car _e2075420831_))
                                 (_tl2075620836_ (##cdr _e2075420831_)))
                             (if (gx#stx-null? _tl2075620836_)
                                 ((lambda (_L20839_ _L20840_)
                                    (if (if (gx#identifier? _L20840_)
                                            (gxc#kw-lambda-expr? _L20839_)
                                            '#f)
                                        (let* ((_g2085420907_
                                                (lambda (_g2085520904_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2085520904_)))
                                               (_g2085321083_
                                                (lambda (_g2085520910_)
                                                  (if (gx#stx-pair?
                                                       _g2085520910_)
                                                      (let ((_e2086120912_
                                                             (gx#stx-e
                                                              _g2085520910_)))
                                                        (let ((_hd2086220915_
                                                               (##car _e2086120912_))
                                                              (_tl2086320917_
                                                               (##cdr _e2086120912_)))
                                                          (if (gx#stx-pair?
                                                               _tl2086320917_)
                                                              (let ((_e2086420920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2086320917_)))
                        (let ((_hd2086520923_ (##car _e2086420920_))
                              (_tl2086620925_ (##cdr _e2086420920_)))
                          (if (gx#stx-pair? _hd2086520923_)
                              (let ((_e2086720928_ (gx#stx-e _hd2086520923_)))
                                (let ((_hd2086820931_ (##car _e2086720928_))
                                      (_tl2086920933_ (##cdr _e2086720928_)))
                                  (if (gx#stx-pair? _hd2086820931_)
                                      (let ((_e2087020936_
                                             (gx#stx-e _hd2086820931_)))
                                        (let ((_hd2087120939_
                                               (##car _e2087020936_))
                                              (_tl2087220941_
                                               (##cdr _e2087020936_)))
                                          (if (gx#stx-pair? _hd2087120939_)
                                              (let ((_e2087320944_
                                                     (gx#stx-e
                                                      _hd2087120939_)))
                                                (let ((_hd2087420947_
                                                       (##car _e2087320944_))
                                                      (_tl2087520949_
                                                       (##cdr _e2087320944_)))
                                                  (if (gx#stx-null?
                                                       _tl2087520949_)
                                                      (if (gx#stx-pair?
                                                           _tl2087220941_)
                                                          (let ((_e2087620952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2087220941_)))
                    (let ((_hd2087720955_ (##car _e2087620952_))
                          (_tl2087820957_ (##cdr _e2087620952_)))
                      (if (gx#stx-pair? _hd2087720955_)
                          (let ((_e2087920960_ (gx#stx-e _hd2087720955_)))
                            (let ((_hd2088020963_ (##car _e2087920960_))
                                  (_tl2088120965_ (##cdr _e2087920960_)))
                              (if (gx#stx-pair? _tl2088120965_)
                                  (let ((_e2088220968_
                                         (gx#stx-e _tl2088120965_)))
                                    (let ((_hd2088320971_
                                           (##car _e2088220968_))
                                          (_tl2088420973_
                                           (##cdr _e2088220968_)))
                                      (if (gx#stx-pair? _hd2088320971_)
                                          (let ((_e2088520976_
                                                 (gx#stx-e _hd2088320971_)))
                                            (let ((_hd2088620979_
                                                   (##car _e2088520976_))
                                                  (_tl2088720981_
                                                   (##cdr _e2088520976_)))
                                              (if (gx#stx-pair? _hd2088620979_)
                                                  (let ((_e2088820984_
                                                         (gx#stx-e
                                                          _hd2088620979_)))
                                                    (let ((_hd2088920987_
                                                           (##car _e2088820984_))
                                                          (_tl2089020989_
                                                           (##cdr _e2088820984_)))
                                                      (if (gx#stx-pair?
                                                           _hd2088920987_)
                                                          (let ((_e2089120992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2088920987_)))
                    (let ((_hd2089220995_ (##car _e2089120992_))
                          (_tl2089320997_ (##cdr _e2089120992_)))
                      (if (gx#stx-null? _tl2089320997_)
                          (if (gx#stx-pair? _tl2089020989_)
                              (let ((_e2089421000_ (gx#stx-e _tl2089020989_)))
                                (let ((_hd2089521003_ (##car _e2089421000_))
                                      (_tl2089621005_ (##cdr _e2089421000_)))
                                  (if (gx#stx-null? _tl2089621005_)
                                      (if (gx#stx-null? _tl2088720981_)
                                          (if (gx#stx-pair? _tl2088420973_)
                                              (let ((_e2089721008_
                                                     (gx#stx-e
                                                      _tl2088420973_)))
                                                (let ((_hd2089821011_
                                                       (##car _e2089721008_))
                                                      (_tl2089921013_
                                                       (##cdr _e2089721008_)))
                                                  (if (gx#stx-null?
                                                       _tl2089921013_)
                                                      (if (gx#stx-null?
                                                           _tl2087820957_)
                                                          (if (gx#stx-null?
                                                               _tl2086920933_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2086620925_)
                          (let ((_e2090021016_ (gx#stx-e _tl2086620925_)))
                            (let ((_hd2090121019_ (##car _e2090021016_))
                                  (_tl2090221021_ (##cdr _e2090021016_)))
                              (if (gx#stx-null? _tl2090221021_)
                                  ((lambda (_L21024_
                                            _L21025_
                                            _L21026_
                                            _L21027_
                                            _L21028_)
                                     (let* ((_get-kws-id21068_
                                             (make-symbol
                                              (gx#stx-e _L20840_)
                                              (gensym '__)))
                                            (_get-kws-id21070_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id21068_
                                              (gx#stx-source _stx20553_)))
                                            (_main-id21072_
                                             (make-symbol
                                              (gx#stx-e _L20840_)
                                              (gensym '__)))
                                            (_main-id21074_
                                             (gx#core-quote-syntax__1
                                              _main-id21072_
                                              (gx#stx-source _stx20553_)))
                                            (_g27442_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21070_))
                                            (_g27443_
                                             (gx#core-bind-runtime!__0
                                              _main-id21074_))
                                            (_new-kw-dispatch21078_
                                             (gxc#apply-expression-subst
                                              _L21024_
                                              _L21028_
                                              _get-kws-id21070_))
                                            (_new-get-kws21080_
                                             (gxc#apply-expression-subst
                                              _L21025_
                                              _L21027_
                                              _main-id21074_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L20840_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id21070_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id21074_))
                                         (_lp20693_
                                          (cons (_bind-e__2737527376_
                                                 _main-id21074_
                                                 _L21026_
                                                 '#f)
                                                (cons (_bind-e__2737527376_
                                                       _get-kws-id21070_
                                                       _new-get-kws21080_
                                                       '#f)
                                                      (cons (_bind-e__2737527376_
                                                             _L20840_
                                                             _new-kw-dispatch21078_
                                                             '#f)
                                                            _rest20716_)))
                                          _bind20696_))))
                                   _hd2090121019_
                                   _hd2089821011_
                                   _hd2089521003_
                                   _hd2089220995_
                                   _hd2087420947_)
                                  (_g2085420907_ _g2085520910_))))
                          (_g2085420907_ _g2085520910_))
                      (_g2085420907_ _g2085520910_))
                  (_g2085420907_ _g2085520910_))
              (_g2085420907_ _g2085520910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2085420907_ _g2085520910_))
                                          (_g2085420907_ _g2085520910_))
                                      (_g2085420907_ _g2085520910_))))
                              (_g2085420907_ _g2085520910_))
                          (_g2085420907_ _g2085520910_))))
                  (_g2085420907_ _g2085520910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2085420907_
                                                   _g2085520910_))))
                                          (_g2085420907_ _g2085520910_))))
                                  (_g2085420907_ _g2085520910_))))
                          (_g2085420907_ _g2085520910_))))
                  (_g2085420907_ _g2085520910_))
              (_g2085420907_ _g2085520910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2085420907_ _g2085520910_))))
                                      (_g2085420907_ _g2085520910_))))
                              (_g2085420907_ _g2085520910_))))
                      (_g2085420907_ _g2085520910_))))
              (_g2085420907_ _g2085520910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2085321083_ _L20839_))
                                        (_g2072120810_ _g2072320813_)))
                                  _hd2075520834_
                                  _hd2075220826_)
                                 (_g2072120810_ _g2072320813_))))
                         (_g2072120810_ _g2072320813_))
                     (_g2072120810_ _g2072320813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2072120810_
                                                      _g2072320813_))))
                                             (_g2072120810_ _g2072320813_))))
                                      (_g2071921258_
                                       (lambda (_g2072321089_)
                                         (if (gx#stx-pair? _g2072321089_)
                                             (let ((_e2073721091_
                                                    (gx#stx-e _g2072321089_)))
                                               (let ((_hd2073821094_
                                                      (##car _e2073721091_))
                                                     (_tl2073921096_
                                                      (##cdr _e2073721091_)))
                                                 (if (gx#stx-pair?
                                                      _hd2073821094_)
                                                     (let ((_e2074021099_
                                                            (gx#stx-e
                                                             _hd2073821094_)))
                                                       (let ((_hd2074121102_
                                                              (##car _e2074021099_))
                                                             (_tl2074221104_
                                                              (##cdr _e2074021099_)))
                                                         (if (gx#stx-null?
                                                              _tl2074221104_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2073921096_)
                         (let ((_e2074321107_ (gx#stx-e _tl2073921096_)))
                           (let ((_hd2074421110_ (##car _e2074321107_))
                                 (_tl2074521112_ (##cdr _e2074321107_)))
                             (if (gx#stx-null? _tl2074521112_)
                                 ((lambda (_L21115_ _L21116_)
                                    (if (if (gx#identifier? _L21116_)
                                            (gxc#opt-lambda-expr? _L21115_)
                                            '#f)
                                        (let* ((_g2113021160_
                                                (lambda (_g2113121157_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2113121157_)))
                                               (_g2112921255_
                                                (lambda (_g2113121163_)
                                                  (if (gx#stx-pair?
                                                       _g2113121163_)
                                                      (let ((_e2113521165_
                                                             (gx#stx-e
                                                              _g2113121163_)))
                                                        (let ((_hd2113621168_
                                                               (##car _e2113521165_))
                                                              (_tl2113721170_
                                                               (##cdr _e2113521165_)))
                                                          (if (gx#stx-pair?
                                                               _tl2113721170_)
                                                              (let ((_e2113821173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2113721170_)))
                        (let ((_hd2113921176_ (##car _e2113821173_))
                              (_tl2114021178_ (##cdr _e2113821173_)))
                          (if (gx#stx-pair? _hd2113921176_)
                              (let ((_e2114121181_ (gx#stx-e _hd2113921176_)))
                                (let ((_hd2114221184_ (##car _e2114121181_))
                                      (_tl2114321186_ (##cdr _e2114121181_)))
                                  (if (gx#stx-pair? _hd2114221184_)
                                      (let ((_e2114421189_
                                             (gx#stx-e _hd2114221184_)))
                                        (let ((_hd2114521192_
                                               (##car _e2114421189_))
                                              (_tl2114621194_
                                               (##cdr _e2114421189_)))
                                          (if (gx#stx-pair? _hd2114521192_)
                                              (let ((_e2114721197_
                                                     (gx#stx-e
                                                      _hd2114521192_)))
                                                (let ((_hd2114821200_
                                                       (##car _e2114721197_))
                                                      (_tl2114921202_
                                                       (##cdr _e2114721197_)))
                                                  (if (gx#stx-null?
                                                       _tl2114921202_)
                                                      (if (gx#stx-pair?
                                                           _tl2114621194_)
                                                          (let ((_e2115021205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2114621194_)))
                    (let ((_hd2115121208_ (##car _e2115021205_))
                          (_tl2115221210_ (##cdr _e2115021205_)))
                      (if (gx#stx-null? _tl2115221210_)
                          (if (gx#stx-null? _tl2114321186_)
                              (if (gx#stx-pair? _tl2114021178_)
                                  (let ((_e2115321213_
                                         (gx#stx-e _tl2114021178_)))
                                    (let ((_hd2115421216_
                                           (##car _e2115321213_))
                                          (_tl2115521218_
                                           (##cdr _e2115321213_)))
                                      (if (gx#stx-null? _tl2115521218_)
                                          ((lambda (_L21221_ _L21222_ _L21223_)
                                             (let* ((_lambda-id21247_
                                                     (make-symbol
                                                      (gx#stx-e _L21116_)
                                                      (gensym '__)))
                                                    (_lambda-id21249_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21247_
                                                      (gx#stx-source
                                                       _stx20553_)))
                                                    (_g27444_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21249_))
                                                    (_new-case-lambda-expr21252_
                                                     (gxc#apply-expression-subst
                                                      _L21221_
                                                      _L21223_
                                                      _lambda-id21249_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L21116_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id21249_))
                                                 (_lp20693_
                                                  (cons (_bind-e__2737527376_
                                                         _L21116_
                                                         _new-case-lambda-expr21252_
                                                         '#f)
                                                        _rest20716_)
                                                  (cons (_bind-e__0__2737727378_
                                                         _lambda-id21249_
                                                         _L21222_)
                                                        _bind20696_)))))
                                           _hd2115421216_
                                           _hd2115121208_
                                           _hd2114821200_)
                                          (_g2113021160_ _g2113121163_))))
                                  (_g2113021160_ _g2113121163_))
                              (_g2113021160_ _g2113121163_))
                          (_g2113021160_ _g2113121163_))))
                  (_g2113021160_ _g2113121163_))
              (_g2113021160_ _g2113121163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2113021160_ _g2113121163_))))
                                      (_g2113021160_ _g2113121163_))))
                              (_g2113021160_ _g2113121163_))))
                      (_g2113021160_ _g2113121163_))))
              (_g2113021160_ _g2113121163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2112921255_ _L21115_))
                                        (_g2072021086_ _g2072321089_)))
                                  _hd2074421110_
                                  _hd2074121102_)
                                 (_g2072021086_ _g2072321089_))))
                         (_g2072021086_ _g2072321089_))
                     (_g2072021086_ _g2072321089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2072021086_
                                                      _g2072321089_))))
                                             (_g2072021086_ _g2072321089_))))
                                      (_g2071821377_
                                       (lambda (_g2072321261_)
                                         (if (gx#stx-pair? _g2072321261_)
                                             (let ((_e2072621263_
                                                    (gx#stx-e _g2072321261_)))
                                               (let ((_hd2072721266_
                                                      (##car _e2072621263_))
                                                     (_tl2072821268_
                                                      (##cdr _e2072621263_)))
                                                 (if (gx#stx-pair?
                                                      _hd2072721266_)
                                                     (let ((_e2072921271_
                                                            (gx#stx-e
                                                             _hd2072721266_)))
                                                       (let ((_hd2073021274_
                                                              (##car _e2072921271_))
                                                             (_tl2073121276_
                                                              (##cdr _e2072921271_)))
                                                         (if (gx#stx-null?
                                                              _tl2073121276_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2072821268_)
                         (let ((_e2073221279_ (gx#stx-e _tl2072821268_)))
                           (let ((_hd2073321282_ (##car _e2073221279_))
                                 (_tl2073421284_ (##cdr _e2073221279_)))
                             (if (gx#stx-null? _tl2073421284_)
                                 ((lambda (_L21287_ _L21288_)
                                    (if (if (gx#identifier? _L21288_)
                                            (gxc#case-lambda-expr? _L21287_)
                                            '#f)
                                        (let* ((_g2130321317_
                                                (lambda (_g2130421314_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2130421314_)))
                                               (_g2130221352_
                                                (lambda (_g2130421320_)
                                                  (if (gx#stx-pair?
                                                       _g2130421320_)
                                                      (let ((_e2131021322_
                                                             (gx#stx-e
                                                              _g2130421320_)))
                                                        (let ((_hd2131121325_
                                                               (##car _e2131021322_))
                                                              (_tl2131221327_
                                                               (##cdr _e2131021322_)))
                                                          ((lambda (_L21330_)
                                                             (let ((_g27445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx20553_
                             _L21288_
                             _L21330_
                             '#t)))
                       (begin
                         (let ((_g27446_ (values-count _g27445_)))
                           (if (not (fx= _g27446_ 3))
                               (error "Context expects 3 values" _g27446_)))
                         (let ((_ids21340_ (values-ref _g27445_ 0))
                               (_impls21341_ (values-ref _g27445_ 1))
                               (_clauses21342_ (values-ref _g27445_ 2)))
                           (let* ((_g27447_
                                   (for-each gx#core-bind-runtime! _ids21340_))
                                  (_xbind21345_
                                   (map _bind-e20555_ _ids21340_ _impls21341_))
                                  (_expr*21347_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21342_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21349_
                                   (_bind-e__2737527376_
                                    _L21288_
                                    _expr*21347_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L21288_)
                                '" => "
                                (map gxc#identifier-symbol _ids21340_))
                               (_lp20693_
                                _rest20716_
                                (cons _bind*21349_
                                      (foldl1 cons
                                              _bind20696_
                                              _xbind21345_)))))))))
                   _tl2131221327_)))
              (_g2130321317_ _g2130421320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2130121374_
                                                (lambda (_g2130421355_)
                                                  (if (gx#stx-pair?
                                                       _g2130421355_)
                                                      (let ((_e2130621357_
                                                             (gx#stx-e
                                                              _g2130421355_)))
                                                        (let ((_hd2130721360_
                                                               (##car _e2130621357_))
                                                              (_tl2130821362_
                                                               (##cdr _e2130621357_)))
                                                          ((lambda (_L21365_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21365_)
                         (_lp20693_
                          _rest20716_
                          (cons (_bind-e__2737527376_ _L21288_ _L21287_ '#f)
                                _bind20696_))
                         (_g2130221352_ _g2130421355_)))
                   _tl2130821362_)))
              (_g2130221352_ _g2130421355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2130121374_ _L21287_))
                                        (_g2071921258_ _g2072321261_)))
                                  _hd2073321282_
                                  _hd2073021274_)
                                 (_g2071921258_ _g2072321261_))))
                         (_g2071921258_ _g2072321261_))
                     (_g2071921258_ _g2072321261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2071921258_
                                                      _g2072321261_))))
                                             (_g2071921258_ _g2072321261_)))))
                                 (_g2071821377_ _hd20717_)))))
                       (if (##pair? _rest2069720705_)
                           (let ((_hd2070221383_ (##car _rest2069720705_))
                                 (_tl2070321385_ (##cdr _rest2069720705_)))
                             (let* ((_hd21388_ _hd2070221383_)
                                    (_rest21390_ _tl2070321385_))
                               (_K2070121380_ _rest21390_ _hd21388_)))
                           (_else2069920713_)))))))
        (let* ((_g2055920586_
                (lambda (_g2056020583_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2056020583_)))
               (_g2055820593_
                (lambda (_g2056020589_)
                  ((lambda () (gxc#xform-let-values% _stx20553_)))))
               (_g2055720688_
                (lambda (_g2056020596_)
                  (if (gx#stx-pair? _g2056020596_)
                      (let ((_e2056420598_ (gx#stx-e _g2056020596_)))
                        (let ((_hd2056520601_ (##car _e2056420598_))
                              (_tl2056620603_ (##cdr _e2056420598_)))
                          (if (gx#stx-pair? _tl2056620603_)
                              (let ((_e2056720606_ (gx#stx-e _tl2056620603_)))
                                (let ((_hd2056820609_ (##car _e2056720606_))
                                      (_tl2056920611_ (##cdr _e2056720606_)))
                                  (if (gx#stx-pair/null? _hd2056820609_)
                                      (if (fx>= (gx#stx-length _hd2056820609_)
                                                '0)
                                          (let ((_g27448_
                                                 (gx#syntax-split-splice
                                                  _hd2056820609_
                                                  '0)))
                                            (begin
                                              (let ((_g27449_
                                                     (values-count _g27448_)))
                                                (if (not (fx= _g27449_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27449_)))
                                              (let ((_target2057020614_
                                                     (values-ref _g27448_ 0))
                                                    (_tl2057220616_
                                                     (values-ref _g27448_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2057220616_)
                                                    (letrec ((_loop2057320619_
                                                              (lambda (_hd2057120622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2057720624_)
                        (if (gx#stx-pair? _hd2057120622_)
                            (let ((_e2057420627_ (gx#stx-e _hd2057120622_)))
                              (let ((_lp-hd2057520630_ (##car _e2057420627_))
                                    (_lp-tl2057620632_ (##cdr _e2057420627_)))
                                (_loop2057320619_
                                 _lp-tl2057620632_
                                 (cons _lp-hd2057520630_ _bind2057720624_))))
                            (let ((_bind2057820635_
                                   (reverse _bind2057720624_)))
                              (if (gx#stx-pair? _tl2056920611_)
                                  (let ((_e2057920638_
                                         (gx#stx-e _tl2056920611_)))
                                    (let ((_hd2058020641_
                                           (##car _e2057920638_))
                                          (_tl2058120643_
                                           (##cdr _e2057920638_)))
                                      (if (gx#stx-null? _tl2058120643_)
                                          ((lambda (_L20646_ _L20647_ _L20648_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2066920672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2067020674_)
                             (cons _g2066920672_ _g2067020674_))
                           '()
                           _L20647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd20685_
                                                           (_compile-bindings20556_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2067720680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2067820682_)
                                (cons _g2067720680_ _g2067820682_))
                              '()
                              _L20647_))))
                  (_body20686_ (gxc#compile-e _L20646_)))
              (gxc#xform-wrap-source
               (cons _L20648_ (cons _hd20685_ (cons _body20686_ '())))
               _stx20553_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27381
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27381)
                                                      __obj27381)))
                                                 (_g2055820593_
                                                  _g2056020596_)))
                                           _hd2058020641_
                                           _bind2057820635_
                                           _hd2056520601_)
                                          (_g2055820593_ _g2056020596_))))
                                  (_g2055820593_ _g2056020596_)))))))
              (_loop2057320619_ _target2057020614_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2055820593_
                                                     _g2056020596_)))))
                                          (_g2055820593_ _g2056020596_))
                                      (_g2055820593_ _g2056020596_))))
                              (_g2055820593_ _g2056020596_))))
                      (_g2055820593_ _g2056020596_)))))
          (_g2055720688_ _stx20553_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20471_)
      (let* ((_g2047420491_
              (lambda (_g2047520488_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2047520488_)))
             (_g2047320498_ (lambda (_g2047520494_) ((lambda () '#f))))
             (_g2047220550_
              (lambda (_g2047520501_)
                (if (gx#stx-pair? _g2047520501_)
                    (let ((_e2047820503_ (gx#stx-e _g2047520501_)))
                      (let ((_hd2047920506_ (##car _e2047820503_))
                            (_tl2048020508_ (##cdr _e2047820503_)))
                        (if (gx#stx-pair? _hd2047920506_)
                            (let ((_e2048120511_ (gx#stx-e _hd2047920506_)))
                              (let ((_hd2048220514_ (##car _e2048120511_))
                                    (_tl2048320516_ (##cdr _e2048120511_)))
                                (if (gx#stx-null? _tl2048320516_)
                                    (if (gx#stx-pair? _tl2048020508_)
                                        (let ((_e2048420519_
                                               (gx#stx-e _tl2048020508_)))
                                          (let ((_hd2048520522_
                                                 (##car _e2048420519_))
                                                (_tl2048620524_
                                                 (##cdr _e2048420519_)))
                                            (if (gx#stx-null? _tl2048620524_)
                                                ((lambda (_L20527_ _L20528_)
                                                   (if (gx#identifier?
                                                        _L20528_)
                                                       (let ((_$e20544_
                                                              (gxc#case-lambda-expr?
                                                               _L20527_)))
                                                         (if _$e20544_
                                                             _$e20544_
                                                             (let ((_$e20547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L20527_)))
                       (if _$e20547_
                           _$e20547_
                           (gxc#kw-lambda-expr? _L20527_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2048520522_
                                                 _hd2048220514_)
                                                (_g2047320498_
                                                 _g2047520501_))))
                                        (_g2047320498_ _g2047520501_))
                                    (_g2047320498_ _g2047520501_))))
                            (_g2047320498_ _g2047520501_))))
                    (_g2047320498_ _g2047520501_)))))
        (_g2047220550_ _bind20471_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20409_ _id20410_ _new-id20411_)
      (let* ((_g2041420427_
              (lambda (_g2041520424_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2041520424_)))
             (_g2041320434_ (lambda (_g2041520430_) ((lambda () _stx20409_))))
             (_g2041220468_
              (lambda (_g2041520437_)
                (if (gx#stx-pair? _g2041520437_)
                    (let ((_e2041720439_ (gx#stx-e _g2041520437_)))
                      (let ((_hd2041820442_ (##car _e2041720439_))
                            (_tl2041920444_ (##cdr _e2041720439_)))
                        (if (gx#stx-pair? _tl2041920444_)
                            (let ((_e2042020447_ (gx#stx-e _tl2041920444_)))
                              (let ((_hd2042120450_ (##car _e2042020447_))
                                    (_tl2042220452_ (##cdr _e2042020447_)))
                                (if (gx#stx-null? _tl2042220452_)
                                    ((lambda (_L20455_)
                                       (if (gx#free-identifier=?
                                            _L20455_
                                            _id20410_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20411_ '()))
                                            _stx20409_)
                                           (_g2041320434_ _g2041520437_)))
                                     _hd2042120450_)
                                    (_g2041320434_ _g2041520437_))))
                            (_g2041320434_ _g2041520437_))))
                    (_g2041320434_ _g2041520437_)))))
        (_g2041220468_ _stx20409_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20265_)
      (let* ((_g2026820299_
              (lambda (_g2026920296_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2026920296_)))
             (_g2026720344_
              (lambda (_g2026920302_)
                (if (gx#stx-pair? _g2026920302_)
                    (let ((_e2028620304_ (gx#stx-e _g2026920302_)))
                      (let ((_hd2028720307_ (##car _e2028620304_))
                            (_tl2028820309_ (##cdr _e2028620304_)))
                        (if (gx#stx-pair? _tl2028820309_)
                            (let ((_e2028920312_ (gx#stx-e _tl2028820309_)))
                              (let ((_hd2029020315_ (##car _e2028920312_))
                                    (_tl2029120317_ (##cdr _e2028920312_)))
                                (if (gx#stx-pair? _tl2029120317_)
                                    (let ((_e2029220320_
                                           (gx#stx-e _tl2029120317_)))
                                      (let ((_hd2029320323_
                                             (##car _e2029220320_))
                                            (_tl2029420325_
                                             (##cdr _e2029220320_)))
                                        (if (gx#stx-null? _tl2029420325_)
                                            ((lambda (_L20328_ _L20329_)
                                               (gxc#compile-e _L20328_))
                                             _hd2029320323_
                                             _hd2029020315_)
                                            (_g2026820299_ _g2026920302_))))
                                    (_g2026820299_ _g2026920302_))))
                            (_g2026820299_ _g2026920302_))))
                    (_g2026820299_ _g2026920302_))))
             (_g2026620406_
              (lambda (_g2026920347_)
                (if (gx#stx-pair? _g2026920347_)
                    (let ((_e2027220349_ (gx#stx-e _g2026920347_)))
                      (let ((_hd2027320352_ (##car _e2027220349_))
                            (_tl2027420354_ (##cdr _e2027220349_)))
                        (if (gx#stx-pair? _tl2027420354_)
                            (let ((_e2027520357_ (gx#stx-e _tl2027420354_)))
                              (let ((_hd2027620360_ (##car _e2027520357_))
                                    (_tl2027720362_ (##cdr _e2027520357_)))
                                (if (gx#stx-pair? _hd2027620360_)
                                    (let ((_e2027820365_
                                           (gx#stx-e _hd2027620360_)))
                                      (let ((_hd2027920368_
                                             (##car _e2027820365_))
                                            (_tl2028020370_
                                             (##cdr _e2027820365_)))
                                        (if (gx#stx-null? _tl2028020370_)
                                            (if (gx#stx-pair? _tl2027720362_)
                                                (let ((_e2028120373_
                                                       (gx#stx-e
                                                        _tl2027720362_)))
                                                  (let ((_hd2028220376_
                                                         (##car _e2028120373_))
                                                        (_tl2028320378_
                                                         (##cdr _e2028120373_)))
                                                    (if (gx#stx-null?
                                                         _tl2028320378_)
                                                        ((lambda (_L20381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20382_)
                   (if (gx#identifier? _L20382_)
                       (let ((_sym20398_ (gxc#identifier-symbol _L20382_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20398_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20398_)
                               (let ((_type2039920401_
                                      (gxc#apply-basic-expression-type
                                       _L20381_)))
                                 (if _type2039920401_
                                     (let ((_type20404_ _type2039920401_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20398_
                                        _type20404_))
                                     '#f)))
                           (gxc#compile-e _L20381_)))
                       (_g2026720344_ _g2026920347_)))
                 _hd2028220376_
                 _hd2027920368_)
                (_g2026720344_ _g2026920347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2026720344_ _g2026920347_))
                                            (_g2026720344_ _g2026920347_))))
                                    (_g2026720344_ _g2026920347_))))
                            (_g2026720344_ _g2026920347_))))
                    (_g2026720344_ _g2026920347_)))))
        (_g2026620406_ _stx20265_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20050_)
      (letrec ((_collect-e20052_
                (lambda (_hd20209_ _expr20210_)
                  (let* ((_g2021320223_
                          (lambda (_g2021420220_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2021420220_)))
                         (_g2021220230_
                          (lambda (_g2021420226_) ((lambda () '#!void))))
                         (_g2021120262_
                          (lambda (_g2021420233_)
                            (if (gx#stx-pair? _g2021420233_)
                                (let ((_e2021620235_ (gx#stx-e _g2021420233_)))
                                  (let ((_hd2021720238_ (##car _e2021620235_))
                                        (_tl2021820240_ (##cdr _e2021620235_)))
                                    (if (gx#stx-null? _tl2021820240_)
                                        ((lambda (_L20243_)
                                           (if (gx#identifier? _L20243_)
                                               (let ((_sym20254_
                                                      (gxc#identifier-symbol
                                                       _L20243_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20254_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20254_)
                                                     (let ((_type2025520257_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20210_)))
                                                       (if _type2025520257_
                                                           (let ((_type20260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2025520257_))
                     (gxc#optimizer-declare-type!__%
                      _sym20254_
                      _type20260_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2021220230_ _g2021420233_)))
                                         _hd2021720238_)
                                        (_g2021220230_ _g2021420233_))))
                                (_g2021220230_ _g2021420233_)))))
                    (_g2021120262_ _hd20209_)))))
        (let* ((_g2005420089_
                (lambda (_g2005520086_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2005520086_)))
               (_g2005320206_
                (lambda (_g2005520092_)
                  (if (gx#stx-pair? _g2005520092_)
                      (let ((_e2005920094_ (gx#stx-e _g2005520092_)))
                        (let ((_hd2006020097_ (##car _e2005920094_))
                              (_tl2006120099_ (##cdr _e2005920094_)))
                          (if (gx#stx-pair? _tl2006120099_)
                              (let ((_e2006220102_ (gx#stx-e _tl2006120099_)))
                                (let ((_hd2006320105_ (##car _e2006220102_))
                                      (_tl2006420107_ (##cdr _e2006220102_)))
                                  (if (gx#stx-pair/null? _hd2006320105_)
                                      (if (fx>= (gx#stx-length _hd2006320105_)
                                                '0)
                                          (let ((_g27450_
                                                 (gx#syntax-split-splice
                                                  _hd2006320105_
                                                  '0)))
                                            (begin
                                              (let ((_g27451_
                                                     (values-count _g27450_)))
                                                (if (not (fx= _g27451_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27451_)))
                                              (let ((_target2006520110_
                                                     (values-ref _g27450_ 0))
                                                    (_tl2006720112_
                                                     (values-ref _g27450_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2006720112_)
                                                    (letrec ((_loop2006820115_
                                                              (lambda (_hd2006620118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2007220120_
                               _hd2007320122_)
                        (if (gx#stx-pair? _hd2006620118_)
                            (let ((_e2006920125_ (gx#stx-e _hd2006620118_)))
                              (let ((_lp-hd2007020128_ (##car _e2006920125_))
                                    (_lp-tl2007120130_ (##cdr _e2006920125_)))
                                (if (gx#stx-pair? _lp-hd2007020128_)
                                    (let ((_e2007620133_
                                           (gx#stx-e _lp-hd2007020128_)))
                                      (let ((_hd2007720136_
                                             (##car _e2007620133_))
                                            (_tl2007820138_
                                             (##cdr _e2007620133_)))
                                        (if (gx#stx-pair? _tl2007820138_)
                                            (let ((_e2007920141_
                                                   (gx#stx-e _tl2007820138_)))
                                              (let ((_hd2008020144_
                                                     (##car _e2007920141_))
                                                    (_tl2008120146_
                                                     (##cdr _e2007920141_)))
                                                (if (gx#stx-null?
                                                     _tl2008120146_)
                                                    (_loop2006820115_
                                                     _lp-tl2007120130_
                                                     (cons _hd2008020144_
                                                           _expr2007220120_)
                                                     (cons _hd2007720136_
                                                           _hd2007320122_))
                                                    (_g2005420089_
                                                     _g2005520092_))))
                                            (_g2005420089_ _g2005520092_))))
                                    (_g2005420089_ _g2005520092_))))
                            (let ((_expr2007420149_ (reverse _expr2007220120_))
                                  (_hd2007520151_ (reverse _hd2007320122_)))
                              (if (gx#stx-pair? _tl2006420107_)
                                  (let ((_e2008220154_
                                         (gx#stx-e _tl2006420107_)))
                                    (let ((_hd2008320157_
                                           (##car _e2008220154_))
                                          (_tl2008420159_
                                           (##cdr _e2008220154_)))
                                      (if (gx#stx-null? _tl2008420159_)
                                          ((lambda (_L20162_ _L20163_ _L20164_)
                                             (begin
                                               (for-each
                                                _collect-e20052_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2018420187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2018520189_)
                    (cons _g2018420187_ _g2018520189_))
                  '()
                  _L20164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2019120194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2019220196_)
                    (cons _g2019120194_ _g2019220196_))
                  '()
                  _L20163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2019820201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2019920203_)
                    (cons _g2019820201_ _g2019920203_))
                  '()
                  _L20163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20162_)))
                                           _hd2008320157_
                                           _expr2007420149_
                                           _hd2007520151_)
                                          (_g2005420089_ _g2005520092_))))
                                  (_g2005420089_ _g2005520092_)))))))
              (_loop2006820115_ _target2006520110_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2005420089_
                                                     _g2005520092_)))))
                                          (_g2005420089_ _g2005520092_))
                                      (_g2005420089_ _g2005520092_))))
                              (_g2005420089_ _g2005520092_))))
                      (_g2005420089_ _g2005520092_)))))
          (_g2005320206_ _stx20050_)))))
  (define gxc#collect-type-call%
    (lambda (_stx19604_)
      (let* ((_g1960819710_
              (lambda (_g1960919707_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1960919707_)))
             (_g1960719717_ (lambda (_g1960919713_) ((lambda () '#!void))))
             (_g1960619867_
              (lambda (_g1960919720_)
                (if (gx#stx-pair? _g1960919720_)
                    (let ((_e1966719722_ (gx#stx-e _g1960919720_)))
                      (let ((_hd1966819725_ (##car _e1966719722_))
                            (_tl1966919727_ (##cdr _e1966719722_)))
                        (if (gx#stx-pair? _tl1966919727_)
                            (let ((_e1967019730_ (gx#stx-e _tl1966919727_)))
                              (let ((_hd1967119733_ (##car _e1967019730_))
                                    (_tl1967219735_ (##cdr _e1967019730_)))
                                (if (gx#stx-pair? _hd1967119733_)
                                    (let ((_e1967319738_
                                           (gx#stx-e _hd1967119733_)))
                                      (let ((_hd1967419741_
                                             (##car _e1967319738_))
                                            (_tl1967519743_
                                             (##cdr _e1967319738_)))
                                        (if (gx#identifier? _hd1967419741_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1967419741_)
                                                (if (gx#stx-pair?
                                                     _tl1967519743_)
                                                    (let ((_e1967619746_
                                                           (gx#stx-e
                                                            _tl1967519743_)))
                                                      (let ((_hd1967719749_
                                                             (##car _e1967619746_))
                                                            (_tl1967819751_
                                                             (##cdr _e1967619746_)))
                                                        (if (gx#stx-null?
                                                             _tl1967819751_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1967219735_)
                        (let ((_e1967919754_ (gx#stx-e _tl1967219735_)))
                          (let ((_hd1968019757_ (##car _e1967919754_))
                                (_tl1968119759_ (##cdr _e1967919754_)))
                            (if (gx#stx-pair? _hd1968019757_)
                                (let ((_e1968219762_
                                       (gx#stx-e _hd1968019757_)))
                                  (let ((_hd1968319765_ (##car _e1968219762_))
                                        (_tl1968419767_ (##cdr _e1968219762_)))
                                    (if (gx#identifier? _hd1968319765_)
                                        (if (gx#stx-eq? '%#ref _hd1968319765_)
                                            (if (gx#stx-pair? _tl1968419767_)
                                                (let ((_e1968519770_
                                                       (gx#stx-e
                                                        _tl1968419767_)))
                                                  (let ((_hd1968619773_
                                                         (##car _e1968519770_))
                                                        (_tl1968719775_
                                                         (##cdr _e1968519770_)))
                                                    (if (gx#stx-null?
                                                         _tl1968719775_)
                                                        (if (gx#stx-pair?
                                                             _tl1968119759_)
                                                            (let ((_e1968819778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1968119759_)))
                      (let ((_hd1968919781_ (##car _e1968819778_))
                            (_tl1969019783_ (##cdr _e1968819778_)))
                        (if (gx#stx-pair? _hd1968919781_)
                            (let ((_e1969119786_ (gx#stx-e _hd1968919781_)))
                              (let ((_hd1969219789_ (##car _e1969119786_))
                                    (_tl1969319791_ (##cdr _e1969119786_)))
                                (if (gx#identifier? _hd1969219789_)
                                    (if (gx#stx-eq? '%#quote _hd1969219789_)
                                        (if (gx#stx-pair? _tl1969319791_)
                                            (let ((_e1969419794_
                                                   (gx#stx-e _tl1969319791_)))
                                              (let ((_hd1969519797_
                                                     (##car _e1969419794_))
                                                    (_tl1969619799_
                                                     (##cdr _e1969419794_)))
                                                (if (gx#stx-null?
                                                     _tl1969619799_)
                                                    (if (gx#stx-pair?
                                                         _tl1969019783_)
                                                        (let ((_e1969719802_
                                                               (gx#stx-e
                                                                _tl1969019783_)))
                                                          (let ((_hd1969819805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1969719802_))
                        (_tl1969919807_ (##cdr _e1969719802_)))
                    (if (gx#stx-pair? _hd1969819805_)
                        (let ((_e1970019810_ (gx#stx-e _hd1969819805_)))
                          (let ((_hd1970119813_ (##car _e1970019810_))
                                (_tl1970219815_ (##cdr _e1970019810_)))
                            (if (gx#identifier? _hd1970119813_)
                                (if (gx#stx-eq? '%#ref _hd1970119813_)
                                    (if (gx#stx-pair? _tl1970219815_)
                                        (let ((_e1970319818_
                                               (gx#stx-e _tl1970219815_)))
                                          (let ((_hd1970419821_
                                                 (##car _e1970319818_))
                                                (_tl1970519823_
                                                 (##cdr _e1970319818_)))
                                            (if (gx#stx-null? _tl1970519823_)
                                                (if (gx#stx-null?
                                                     _tl1969919807_)
                                                    ((lambda (_L19826_
                                                              _L19827_
                                                              _L19828_
                                                              _L19829_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#identifier-symbol _L19828_)
                    (gx#stx-e _L19827_)
                    (gxc#identifier-symbol _L19826_)
                    '#f)
                   (_g1960719717_ _g1960919720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1970419821_
                                                     _hd1969519797_
                                                     _hd1968619773_
                                                     _hd1967719749_)
                                                    (_g1960719717_
                                                     _g1960919720_))
                                                (_g1960719717_
                                                 _g1960919720_))))
                                        (_g1960719717_ _g1960919720_))
                                    (_g1960719717_ _g1960919720_))
                                (_g1960719717_ _g1960919720_))))
                        (_g1960719717_ _g1960919720_))))
                (_g1960719717_ _g1960919720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960719717_
                                                     _g1960919720_))))
                                            (_g1960719717_ _g1960919720_))
                                        (_g1960719717_ _g1960919720_))
                                    (_g1960719717_ _g1960919720_))))
                            (_g1960719717_ _g1960919720_))))
                    (_g1960719717_ _g1960919720_))
                (_g1960719717_ _g1960919720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1960719717_ _g1960919720_))
                                            (_g1960719717_ _g1960919720_))
                                        (_g1960719717_ _g1960919720_))))
                                (_g1960719717_ _g1960919720_))))
                        (_g1960719717_ _g1960919720_))
                    (_g1960719717_ _g1960919720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960719717_
                                                     _g1960919720_))
                                                (_g1960719717_ _g1960919720_))
                                            (_g1960719717_ _g1960919720_))))
                                    (_g1960719717_ _g1960919720_))))
                            (_g1960719717_ _g1960919720_))))
                    (_g1960719717_ _g1960919720_))))
             (_g1960520047_
              (lambda (_g1960919870_)
                (if (gx#stx-pair? _g1960919870_)
                    (let ((_e1961519872_ (gx#stx-e _g1960919870_)))
                      (let ((_hd1961619875_ (##car _e1961519872_))
                            (_tl1961719877_ (##cdr _e1961519872_)))
                        (if (gx#stx-pair? _tl1961719877_)
                            (let ((_e1961819880_ (gx#stx-e _tl1961719877_)))
                              (let ((_hd1961919883_ (##car _e1961819880_))
                                    (_tl1962019885_ (##cdr _e1961819880_)))
                                (if (gx#stx-pair? _hd1961919883_)
                                    (let ((_e1962119888_
                                           (gx#stx-e _hd1961919883_)))
                                      (let ((_hd1962219891_
                                             (##car _e1962119888_))
                                            (_tl1962319893_
                                             (##cdr _e1962119888_)))
                                        (if (gx#identifier? _hd1962219891_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1962219891_)
                                                (if (gx#stx-pair?
                                                     _tl1962319893_)
                                                    (let ((_e1962419896_
                                                           (gx#stx-e
                                                            _tl1962319893_)))
                                                      (let ((_hd1962519899_
                                                             (##car _e1962419896_))
                                                            (_tl1962619901_
                                                             (##cdr _e1962419896_)))
                                                        (if (gx#stx-null?
                                                             _tl1962619901_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1962019885_)
                        (let ((_e1962719904_ (gx#stx-e _tl1962019885_)))
                          (let ((_hd1962819907_ (##car _e1962719904_))
                                (_tl1962919909_ (##cdr _e1962719904_)))
                            (if (gx#stx-pair? _hd1962819907_)
                                (let ((_e1963019912_
                                       (gx#stx-e _hd1962819907_)))
                                  (let ((_hd1963119915_ (##car _e1963019912_))
                                        (_tl1963219917_ (##cdr _e1963019912_)))
                                    (if (gx#identifier? _hd1963119915_)
                                        (if (gx#stx-eq? '%#ref _hd1963119915_)
                                            (if (gx#stx-pair? _tl1963219917_)
                                                (let ((_e1963319920_
                                                       (gx#stx-e
                                                        _tl1963219917_)))
                                                  (let ((_hd1963419923_
                                                         (##car _e1963319920_))
                                                        (_tl1963519925_
                                                         (##cdr _e1963319920_)))
                                                    (if (gx#stx-null?
                                                         _tl1963519925_)
                                                        (if (gx#stx-pair?
                                                             _tl1962919909_)
                                                            (let ((_e1963619928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1962919909_)))
                      (let ((_hd1963719931_ (##car _e1963619928_))
                            (_tl1963819933_ (##cdr _e1963619928_)))
                        (if (gx#stx-pair? _hd1963719931_)
                            (let ((_e1963919936_ (gx#stx-e _hd1963719931_)))
                              (let ((_hd1964019939_ (##car _e1963919936_))
                                    (_tl1964119941_ (##cdr _e1963919936_)))
                                (if (gx#identifier? _hd1964019939_)
                                    (if (gx#stx-eq? '%#quote _hd1964019939_)
                                        (if (gx#stx-pair? _tl1964119941_)
                                            (let ((_e1964219944_
                                                   (gx#stx-e _tl1964119941_)))
                                              (let ((_hd1964319947_
                                                     (##car _e1964219944_))
                                                    (_tl1964419949_
                                                     (##cdr _e1964219944_)))
                                                (if (gx#stx-null?
                                                     _tl1964419949_)
                                                    (if (gx#stx-pair?
                                                         _tl1963819933_)
                                                        (let ((_e1964519952_
                                                               (gx#stx-e
                                                                _tl1963819933_)))
                                                          (let ((_hd1964619955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1964519952_))
                        (_tl1964719957_ (##cdr _e1964519952_)))
                    (if (gx#stx-pair? _hd1964619955_)
                        (let ((_e1964819960_ (gx#stx-e _hd1964619955_)))
                          (let ((_hd1964919963_ (##car _e1964819960_))
                                (_tl1965019965_ (##cdr _e1964819960_)))
                            (if (gx#identifier? _hd1964919963_)
                                (if (gx#stx-eq? '%#ref _hd1964919963_)
                                    (if (gx#stx-pair? _tl1965019965_)
                                        (let ((_e1965119968_
                                               (gx#stx-e _tl1965019965_)))
                                          (let ((_hd1965219971_
                                                 (##car _e1965119968_))
                                                (_tl1965319973_
                                                 (##cdr _e1965119968_)))
                                            (if (gx#stx-null? _tl1965319973_)
                                                (if (gx#stx-pair?
                                                     _tl1964719957_)
                                                    (let ((_e1965419976_
                                                           (gx#stx-e
                                                            _tl1964719957_)))
                                                      (let ((_hd1965519979_
                                                             (##car _e1965419976_))
                                                            (_tl1965619981_
                                                             (##cdr _e1965419976_)))
                                                        (if (gx#stx-pair?
                                                             _hd1965519979_)
                                                            (let ((_e1965719984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1965519979_)))
                      (let ((_hd1965819987_ (##car _e1965719984_))
                            (_tl1965919989_ (##cdr _e1965719984_)))
                        (if (gx#identifier? _hd1965819987_)
                            (if (gx#stx-eq? '%#quote _hd1965819987_)
                                (if (gx#stx-pair? _tl1965919989_)
                                    (let ((_e1966019992_
                                           (gx#stx-e _tl1965919989_)))
                                      (let ((_hd1966119995_
                                             (##car _e1966019992_))
                                            (_tl1966219997_
                                             (##cdr _e1966019992_)))
                                        (if (gx#stx-null? _tl1966219997_)
                                            (if (gx#stx-null? _tl1965619981_)
                                                ((lambda (_L20000_
                                                          _L20001_
                                                          _L20002_
                                                          _L20003_
                                                          _L20004_)
                                                   (if (eq? (gxc#identifier-symbol
                                                             _L20004_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#identifier-symbol
                                                         _L20003_)
                                                        (gx#stx-e _L20002_)
                                                        (gxc#identifier-symbol
                                                         _L20001_)
                                                        (gx#stx-e _L20000_))
                                                       (_g1960619867_
                                                        _g1960919870_)))
                                                 _hd1966119995_
                                                 _hd1965219971_
                                                 _hd1964319947_
                                                 _hd1963419923_
                                                 _hd1962519899_)
                                                (_g1960619867_ _g1960919870_))
                                            (_g1960619867_ _g1960919870_))))
                                    (_g1960619867_ _g1960919870_))
                                (_g1960619867_ _g1960919870_))
                            (_g1960619867_ _g1960919870_))))
                    (_g1960619867_ _g1960919870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960619867_
                                                     _g1960919870_))
                                                (_g1960619867_
                                                 _g1960919870_))))
                                        (_g1960619867_ _g1960919870_))
                                    (_g1960619867_ _g1960919870_))
                                (_g1960619867_ _g1960919870_))))
                        (_g1960619867_ _g1960919870_))))
                (_g1960619867_ _g1960919870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960619867_
                                                     _g1960919870_))))
                                            (_g1960619867_ _g1960919870_))
                                        (_g1960619867_ _g1960919870_))
                                    (_g1960619867_ _g1960919870_))))
                            (_g1960619867_ _g1960919870_))))
                    (_g1960619867_ _g1960919870_))
                (_g1960619867_ _g1960919870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1960619867_ _g1960919870_))
                                            (_g1960619867_ _g1960919870_))
                                        (_g1960619867_ _g1960919870_))))
                                (_g1960619867_ _g1960919870_))))
                        (_g1960619867_ _g1960919870_))
                    (_g1960619867_ _g1960919870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960619867_
                                                     _g1960919870_))
                                                (_g1960619867_ _g1960919870_))
                                            (_g1960619867_ _g1960919870_))))
                                    (_g1960619867_ _g1960919870_))))
                            (_g1960619867_ _g1960919870_))))
                    (_g1960619867_ _g1960919870_)))))
        (_g1960520047_ _stx19604_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx19544_)
      (let* ((_g1954719560_
              (lambda (_g1954819557_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1954819557_)))
             (_g1954619567_ (lambda (_g1954819563_) ((lambda () '#f))))
             (_g1954519601_
              (lambda (_g1954819570_)
                (if (gx#stx-pair? _g1954819570_)
                    (let ((_e1955019572_ (gx#stx-e _g1954819570_)))
                      (let ((_hd1955119575_ (##car _e1955019572_))
                            (_tl1955219577_ (##cdr _e1955019572_)))
                        (if (gx#stx-pair? _tl1955219577_)
                            (let ((_e1955319580_ (gx#stx-e _tl1955219577_)))
                              (let ((_hd1955419583_ (##car _e1955319580_))
                                    (_tl1955519585_ (##cdr _e1955319580_)))
                                (if (gx#stx-null? _tl1955519585_)
                                    ((lambda (_L19588_)
                                       (gxc#compile-e _L19588_))
                                     _hd1955419583_)
                                    (_g1954619567_ _g1954819570_))))
                            (_g1954619567_ _g1954819570_))))
                    (_g1954619567_ _g1954819570_)))))
        (_g1954519601_ _stx19544_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19477_)
      (let* ((_g1947919496_
              (lambda (_g1948019493_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1948019493_)))
             (_g1947819541_
              (lambda (_g1948019499_)
                (if (gx#stx-pair? _g1948019499_)
                    (let ((_e1948319501_ (gx#stx-e _g1948019499_)))
                      (let ((_hd1948419504_ (##car _e1948319501_))
                            (_tl1948519506_ (##cdr _e1948319501_)))
                        (if (gx#stx-pair? _tl1948519506_)
                            (let ((_e1948619509_ (gx#stx-e _tl1948519506_)))
                              (let ((_hd1948719512_ (##car _e1948619509_))
                                    (_tl1948819514_ (##cdr _e1948619509_)))
                                (if (gx#stx-pair? _tl1948819514_)
                                    (let ((_e1948919517_
                                           (gx#stx-e _tl1948819514_)))
                                      (let ((_hd1949019520_
                                             (##car _e1948919517_))
                                            (_tl1949119522_
                                             (##cdr _e1948919517_)))
                                        (if (gx#stx-null? _tl1949119522_)
                                            ((lambda (_L19525_ _L19526_)
                                               (gxc#compile-e _L19525_))
                                             _hd1949019520_
                                             _hd1948719512_)
                                            (_g1947919496_ _g1948019499_))))
                                    (_g1947919496_ _g1948019499_))))
                            (_g1947919496_ _g1948019499_))))
                    (_g1947919496_ _g1948019499_)))))
        (_g1947819541_ _stx19477_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18118_)
      (let* ((_g1812518424_
              (lambda (_g1812618421_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1812618421_)))
             (_g1812418431_ (lambda (_g1812618427_) ((lambda () '#f))))
             (_g1812318820_
              (lambda (_g1812618434_)
                (if (gx#stx-pair? _g1812618434_)
                    (let ((_e1831518436_ (gx#stx-e _g1812618434_)))
                      (let ((_hd1831618439_ (##car _e1831518436_))
                            (_tl1831718441_ (##cdr _e1831518436_)))
                        (if (gx#stx-pair? _tl1831718441_)
                            (let ((_e1831818444_ (gx#stx-e _tl1831718441_)))
                              (let ((_hd1831918447_ (##car _e1831818444_))
                                    (_tl1832018449_ (##cdr _e1831818444_)))
                                (if (gx#stx-pair? _hd1831918447_)
                                    (let ((_e1832118452_
                                           (gx#stx-e _hd1831918447_)))
                                      (let ((_hd1832218455_
                                             (##car _e1832118452_))
                                            (_tl1832318457_
                                             (##cdr _e1832118452_)))
                                        (if (gx#stx-pair? _tl1832018449_)
                                            (let ((_e1832418460_
                                                   (gx#stx-e _tl1832018449_)))
                                              (let ((_hd1832518463_
                                                     (##car _e1832418460_))
                                                    (_tl1832618465_
                                                     (##cdr _e1832418460_)))
                                                (if (gx#stx-pair?
                                                     _hd1832518463_)
                                                    (let ((_e1832718468_
                                                           (gx#stx-e
                                                            _hd1832518463_)))
                                                      (let ((_hd1832818471_
                                                             (##car _e1832718468_))
                                                            (_tl1832918473_
                                                             (##cdr _e1832718468_)))
                                                        (if (gx#identifier?
                                                             _hd1832818471_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1832818471_)
                        (if (gx#stx-pair? _tl1832918473_)
                            (let ((_e1833018476_ (gx#stx-e _tl1832918473_)))
                              (let ((_hd1833118479_ (##car _e1833018476_))
                                    (_tl1833218481_ (##cdr _e1833018476_)))
                                (if (gx#stx-pair? _hd1833118479_)
                                    (let ((_e1833318484_
                                           (gx#stx-e _hd1833118479_)))
                                      (let ((_hd1833418487_
                                             (##car _e1833318484_))
                                            (_tl1833518489_
                                             (##cdr _e1833318484_)))
                                        (if (gx#identifier? _hd1833418487_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1833418487_)
                                                (if (gx#stx-pair?
                                                     _tl1833518489_)
                                                    (let ((_e1833618492_
                                                           (gx#stx-e
                                                            _tl1833518489_)))
                                                      (let ((_hd1833718495_
                                                             (##car _e1833618492_))
                                                            (_tl1833818497_
                                                             (##cdr _e1833618492_)))
                                                        (if (gx#stx-null?
                                                             _tl1833818497_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1833218481_)
                        (let ((_e1833918500_ (gx#stx-e _tl1833218481_)))
                          (let ((_hd1834018503_ (##car _e1833918500_))
                                (_tl1834118505_ (##cdr _e1833918500_)))
                            (if (gx#stx-pair? _hd1834018503_)
                                (let ((_e1834218508_
                                       (gx#stx-e _hd1834018503_)))
                                  (let ((_hd1834318511_ (##car _e1834218508_))
                                        (_tl1834418513_ (##cdr _e1834218508_)))
                                    (if (gx#identifier? _hd1834318511_)
                                        (if (gx#stx-eq? '%#ref _hd1834318511_)
                                            (if (gx#stx-pair? _tl1834418513_)
                                                (let ((_e1834518516_
                                                       (gx#stx-e
                                                        _tl1834418513_)))
                                                  (let ((_hd1834618519_
                                                         (##car _e1834518516_))
                                                        (_tl1834718521_
                                                         (##cdr _e1834518516_)))
                                                    (if (gx#stx-null?
                                                         _tl1834718521_)
                                                        (if (gx#stx-pair?
                                                             _tl1834118505_)
                                                            (let ((_e1834818524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1834118505_)))
                      (let ((_hd1834918527_ (##car _e1834818524_))
                            (_tl1835018529_ (##cdr _e1834818524_)))
                        (if (gx#stx-pair? _hd1834918527_)
                            (let ((_e1835118532_ (gx#stx-e _hd1834918527_)))
                              (let ((_hd1835218535_ (##car _e1835118532_))
                                    (_tl1835318537_ (##cdr _e1835118532_)))
                                (if (gx#identifier? _hd1835218535_)
                                    (if (gx#stx-eq? '%#ref _hd1835218535_)
                                        (if (gx#stx-pair? _tl1835318537_)
                                            (let ((_e1835418540_
                                                   (gx#stx-e _tl1835318537_)))
                                              (let ((_hd1835518543_
                                                     (##car _e1835418540_))
                                                    (_tl1835618545_
                                                     (##cdr _e1835418540_)))
                                                (if (gx#stx-null?
                                                     _tl1835618545_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1835018529_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1835018529_)
                          '1)
                    (let ((_g27452_
                           (gx#syntax-split-splice _tl1835018529_ '1)))
                      (begin
                        (let ((_g27453_ (values-count _g27452_)))
                          (if (not (fx= _g27453_ 2))
                              (error "Context expects 2 values" _g27453_)))
                        (let ((_target1835718548_ (values-ref _g27452_ 0))
                              (_tl1835918550_ (values-ref _g27452_ 1)))
                          (if (gx#stx-pair? _tl1835918550_)
                              (let ((_e1837218553_ (gx#stx-e _tl1835918550_)))
                                (let ((_hd1837318556_ (##car _e1837218553_))
                                      (_tl1837418558_ (##cdr _e1837218553_)))
                                  (if (gx#stx-pair? _hd1837318556_)
                                      (let ((_e1837518561_
                                             (gx#stx-e _hd1837318556_)))
                                        (let ((_hd1837618564_
                                               (##car _e1837518561_))
                                              (_tl1837718566_
                                               (##cdr _e1837518561_)))
                                          (if (gx#identifier? _hd1837618564_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1837618564_)
                                                  (if (gx#stx-pair?
                                                       _tl1837718566_)
                                                      (let ((_e1837818569_
                                                             (gx#stx-e
                                                              _tl1837718566_)))
                                                        (let ((_hd1837918572_
                                                               (##car _e1837818569_))
                                                              (_tl1838018574_
                                                               (##cdr _e1837818569_)))
                                                          (if (gx#stx-null?
                                                               _tl1838018574_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1837418558_)
                          (letrec ((_loop1836018577_
                                    (lambda (_hd1835818580_
                                             _-absent-value1836418582_
                                             _key1836518584_
                                             _-xkwvar1836618586_
                                             _-hash-ref1836718588_)
                                      (if (gx#stx-pair? _hd1835818580_)
                                          (let ((_e1836118591_
                                                 (gx#stx-e _hd1835818580_)))
                                            (let ((_lp-hd1836218594_
                                                   (##car _e1836118591_))
                                                  (_lp-tl1836318596_
                                                   (##cdr _e1836118591_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1836218594_)
                                                  (let ((_e1838118599_
                                                         (gx#stx-e
                                                          _lp-hd1836218594_)))
                                                    (let ((_hd1838218602_
                                                           (##car _e1838118599_))
                                                          (_tl1838318604_
                                                           (##cdr _e1838118599_)))
                                                      (if (gx#identifier?
                                                           _hd1838218602_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1838218602_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1838318604_)
                          (let ((_e1838418607_ (gx#stx-e _tl1838318604_)))
                            (let ((_hd1838518610_ (##car _e1838418607_))
                                  (_tl1838618612_ (##cdr _e1838418607_)))
                              (if (gx#stx-pair? _hd1838518610_)
                                  (let ((_e1838718615_
                                         (gx#stx-e _hd1838518610_)))
                                    (let ((_hd1838818618_
                                           (##car _e1838718615_))
                                          (_tl1838918620_
                                           (##cdr _e1838718615_)))
                                      (if (gx#identifier? _hd1838818618_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1838818618_)
                                              (if (gx#stx-pair? _tl1838918620_)
                                                  (let ((_e1839018623_
                                                         (gx#stx-e
                                                          _tl1838918620_)))
                                                    (let ((_hd1839118626_
                                                           (##car _e1839018623_))
                                                          (_tl1839218628_
                                                           (##cdr _e1839018623_)))
                                                      (if (gx#stx-null?
                                                           _tl1839218628_)
                                                          (if (gx#stx-pair?
                                                               _tl1838618612_)
                                                              (let ((_e1839318631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1838618612_)))
                        (let ((_hd1839418634_ (##car _e1839318631_))
                              (_tl1839518636_ (##cdr _e1839318631_)))
                          (if (gx#stx-pair? _hd1839418634_)
                              (let ((_e1839618639_ (gx#stx-e _hd1839418634_)))
                                (let ((_hd1839718642_ (##car _e1839618639_))
                                      (_tl1839818644_ (##cdr _e1839618639_)))
                                  (if (gx#identifier? _hd1839718642_)
                                      (if (gx#stx-eq? '%#ref _hd1839718642_)
                                          (if (gx#stx-pair? _tl1839818644_)
                                              (let ((_e1839918647_
                                                     (gx#stx-e
                                                      _tl1839818644_)))
                                                (let ((_hd1840018650_
                                                       (##car _e1839918647_))
                                                      (_tl1840118652_
                                                       (##cdr _e1839918647_)))
                                                  (if (gx#stx-null?
                                                       _tl1840118652_)
                                                      (if (gx#stx-pair?
                                                           _tl1839518636_)
                                                          (let ((_e1840218655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1839518636_)))
                    (let ((_hd1840318658_ (##car _e1840218655_))
                          (_tl1840418660_ (##cdr _e1840218655_)))
                      (if (gx#stx-pair? _hd1840318658_)
                          (let ((_e1840518663_ (gx#stx-e _hd1840318658_)))
                            (let ((_hd1840618666_ (##car _e1840518663_))
                                  (_tl1840718668_ (##cdr _e1840518663_)))
                              (if (gx#identifier? _hd1840618666_)
                                  (if (gx#stx-eq? '%#quote _hd1840618666_)
                                      (if (gx#stx-pair? _tl1840718668_)
                                          (let ((_e1840818671_
                                                 (gx#stx-e _tl1840718668_)))
                                            (let ((_hd1840918674_
                                                   (##car _e1840818671_))
                                                  (_tl1841018676_
                                                   (##cdr _e1840818671_)))
                                              (if (gx#stx-null? _tl1841018676_)
                                                  (if (gx#stx-pair?
                                                       _tl1840418660_)
                                                      (let ((_e1841118679_
                                                             (gx#stx-e
                                                              _tl1840418660_)))
                                                        (let ((_hd1841218682_
                                                               (##car _e1841118679_))
                                                              (_tl1841318684_
                                                               (##cdr _e1841118679_)))
                                                          (if (gx#stx-pair?
                                                               _hd1841218682_)
                                                              (let ((_e1841418687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1841218682_)))
                        (let ((_hd1841518690_ (##car _e1841418687_))
                              (_tl1841618692_ (##cdr _e1841418687_)))
                          (if (gx#identifier? _hd1841518690_)
                              (if (gx#stx-eq? '%#ref _hd1841518690_)
                                  (if (gx#stx-pair? _tl1841618692_)
                                      (let ((_e1841718695_
                                             (gx#stx-e _tl1841618692_)))
                                        (let ((_hd1841818698_
                                               (##car _e1841718695_))
                                              (_tl1841918700_
                                               (##cdr _e1841718695_)))
                                          (if (gx#stx-null? _tl1841918700_)
                                              (if (gx#stx-null? _tl1841318684_)
                                                  (_loop1836018577_
                                                   _lp-tl1836318596_
                                                   (cons _hd1841818698_
                                                         _-absent-value1836418582_)
                                                   (cons _hd1840918674_
                                                         _key1836518584_)
                                                   (cons _hd1840018650_
                                                         _-xkwvar1836618586_)
                                                   (cons _hd1839118626_
                                                         _-hash-ref1836718588_))
                                                  (_g1812418431_
                                                   _g1812618434_))
                                              (_g1812418431_ _g1812618434_))))
                                      (_g1812418431_ _g1812618434_))
                                  (_g1812418431_ _g1812618434_))
                              (_g1812418431_ _g1812618434_))))
                      (_g1812418431_ _g1812618434_))))
              (_g1812418431_ _g1812618434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812418431_
                                                   _g1812618434_))))
                                          (_g1812418431_ _g1812618434_))
                                      (_g1812418431_ _g1812618434_))
                                  (_g1812418431_ _g1812618434_))))
                          (_g1812418431_ _g1812618434_))))
                  (_g1812418431_ _g1812618434_))
              (_g1812418431_ _g1812618434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1812418431_ _g1812618434_))
                                          (_g1812418431_ _g1812618434_))
                                      (_g1812418431_ _g1812618434_))))
                              (_g1812418431_ _g1812618434_))))
                      (_g1812418431_ _g1812618434_))
                  (_g1812418431_ _g1812618434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812418431_
                                                   _g1812618434_))
                                              (_g1812418431_ _g1812618434_))
                                          (_g1812418431_ _g1812618434_))))
                                  (_g1812418431_ _g1812618434_))))
                          (_g1812418431_ _g1812618434_))
                      (_g1812418431_ _g1812618434_))
                  (_g1812418431_ _g1812618434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812418431_
                                                   _g1812618434_))))
                                          (let ((_-absent-value1836818703_
                                                 (reverse _-absent-value1836418582_))
                                                (_key1836918705_
                                                 (reverse _key1836518584_))
                                                (_-xkwvar1837018707_
                                                 (reverse _-xkwvar1836618586_))
                                                (_-hash-ref1837118709_
                                                 (reverse _-hash-ref1836718588_)))
                                            (if (gx#stx-null? _tl1832618465_)
                                                ((lambda (_L18712_
                                                          _L18713_
                                                          _L18714_
                                                          _L18715_
                                                          _L18716_
                                                          _L18717_
                                                          _L18718_
                                                          _L18719_
                                                          _L18720_
                                                          _L18721_)
                                                   (if (if (gx#identifier?
                                                            _L18721_)
                                                           (if (gx#identifier?
                                                                _L18720_)
                                                               (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L18719_)
                                'apply)
                           (if (gx#free-identifier=? _L18721_ _L18717_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1877618779_
                                                               _g1877718781_)
                                                        (cons _g1877618779_
                                                              _g1877718781_))
                                                      '()
                                                      _L18714_)))
                                   (if (andmap1 (lambda (_id18784_)
                                                  (eq? (gxc#identifier-symbol
                                                        _id18784_)
                                                       'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1878518788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1878618790_)
                    (cons _g1878518788_ _g1878618790_))
                  '()
                  _L18716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_id18793_)
                                                      (eq? (gxc#identifier-symbol
                                                            _id18793_)
                                                           'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1879418797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1879518799_)
                        (cons _g1879418797_ _g1879518799_))
                      '()
                      _L18713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1880118803_)
                                                      (gx#free-identifier=?
                                                       _g1880118803_
                                                       _L18721_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1880518808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1880618810_)
                        (cons _g1880518808_ _g1880618810_))
                      '()
                      _L18715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               (##structure
                gxc#!kw-lambda-primary::t
                'kw-lambda-dispatch
                (map gx#stx-e
                     (begin
                       '#!void
                       (foldr1 (lambda (_g1881218815_ _g1881318817_)
                                 (cons _g1881218815_ _g1881318817_))
                               '()
                               _L18714_)))
                (gxc#identifier-symbol _L18718_))
               (_g1812418431_ _g1812618434_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1837918572_
                                                 _-absent-value1836818703_
                                                 _key1836918705_
                                                 _-xkwvar1837018707_
                                                 _-hash-ref1837118709_
                                                 _hd1835518543_
                                                 _hd1834618519_
                                                 _hd1833718495_
                                                 _tl1832318457_
                                                 _hd1832218455_)
                                                (_g1812418431_
                                                 _g1812618434_)))))))
                            (_loop1836018577_
                             _target1835718548_
                             '()
                             '()
                             '()
                             '()))
                          (_g1812418431_ _g1812618434_))
                      (_g1812418431_ _g1812618434_))))
              (_g1812418431_ _g1812618434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812418431_
                                                   _g1812618434_))
                                              (_g1812418431_ _g1812618434_))))
                                      (_g1812418431_ _g1812618434_))))
                              (_g1812418431_ _g1812618434_)))))
                    (_g1812418431_ _g1812618434_))
                (_g1812418431_ _g1812618434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812418431_
                                                     _g1812618434_))))
                                            (_g1812418431_ _g1812618434_))
                                        (_g1812418431_ _g1812618434_))
                                    (_g1812418431_ _g1812618434_))))
                            (_g1812418431_ _g1812618434_))))
                    (_g1812418431_ _g1812618434_))
                (_g1812418431_ _g1812618434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1812418431_ _g1812618434_))
                                            (_g1812418431_ _g1812618434_))
                                        (_g1812418431_ _g1812618434_))))
                                (_g1812418431_ _g1812618434_))))
                        (_g1812418431_ _g1812618434_))
                    (_g1812418431_ _g1812618434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812418431_
                                                     _g1812618434_))
                                                (_g1812418431_ _g1812618434_))
                                            (_g1812418431_ _g1812618434_))))
                                    (_g1812418431_ _g1812618434_))))
                            (_g1812418431_ _g1812618434_))
                        (_g1812418431_ _g1812618434_))
                    (_g1812418431_ _g1812618434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812418431_
                                                     _g1812618434_))))
                                            (_g1812418431_ _g1812618434_))))
                                    (_g1812418431_ _g1812618434_))))
                            (_g1812418431_ _g1812618434_))))
                    (_g1812418431_ _g1812618434_))))
             (_g1812219037_
              (lambda (_g1812618823_)
                (if (gx#stx-pair? _g1812618823_)
                    (let ((_e1824818825_ (gx#stx-e _g1812618823_)))
                      (let ((_hd1824918828_ (##car _e1824818825_))
                            (_tl1825018830_ (##cdr _e1824818825_)))
                        (if (gx#stx-pair? _tl1825018830_)
                            (let ((_e1825118833_ (gx#stx-e _tl1825018830_)))
                              (let ((_hd1825218836_ (##car _e1825118833_))
                                    (_tl1825318838_ (##cdr _e1825118833_)))
                                (if (gx#stx-pair? _tl1825318838_)
                                    (let ((_e1825418841_
                                           (gx#stx-e _tl1825318838_)))
                                      (let ((_hd1825518844_
                                             (##car _e1825418841_))
                                            (_tl1825618846_
                                             (##cdr _e1825418841_)))
                                        (if (gx#stx-pair? _hd1825518844_)
                                            (let ((_e1825718849_
                                                   (gx#stx-e _hd1825518844_)))
                                              (let ((_hd1825818852_
                                                     (##car _e1825718849_))
                                                    (_tl1825918854_
                                                     (##cdr _e1825718849_)))
                                                (if (gx#identifier?
                                                     _hd1825818852_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1825818852_)
                                                        (if (gx#stx-pair?
                                                             _tl1825918854_)
                                                            (let ((_e1826018857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1825918854_)))
                      (let ((_hd1826118860_ (##car _e1826018857_))
                            (_tl1826218862_ (##cdr _e1826018857_)))
                        (if (gx#stx-pair? _hd1826118860_)
                            (let ((_e1826318865_ (gx#stx-e _hd1826118860_)))
                              (let ((_hd1826418868_ (##car _e1826318865_))
                                    (_tl1826518870_ (##cdr _e1826318865_)))
                                (if (gx#identifier? _hd1826418868_)
                                    (if (gx#stx-eq? '%#ref _hd1826418868_)
                                        (if (gx#stx-pair? _tl1826518870_)
                                            (let ((_e1826618873_
                                                   (gx#stx-e _tl1826518870_)))
                                              (let ((_hd1826718876_
                                                     (##car _e1826618873_))
                                                    (_tl1826818878_
                                                     (##cdr _e1826618873_)))
                                                (if (gx#stx-null?
                                                     _tl1826818878_)
                                                    (if (gx#stx-pair?
                                                         _tl1826218862_)
                                                        (let ((_e1826918881_
                                                               (gx#stx-e
                                                                _tl1826218862_)))
                                                          (let ((_hd1827018884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1826918881_))
                        (_tl1827118886_ (##cdr _e1826918881_)))
                    (if (gx#stx-pair? _hd1827018884_)
                        (let ((_e1827218889_ (gx#stx-e _hd1827018884_)))
                          (let ((_hd1827318892_ (##car _e1827218889_))
                                (_tl1827418894_ (##cdr _e1827218889_)))
                            (if (gx#identifier? _hd1827318892_)
                                (if (gx#stx-eq? '%#ref _hd1827318892_)
                                    (if (gx#stx-pair? _tl1827418894_)
                                        (let ((_e1827518897_
                                               (gx#stx-e _tl1827418894_)))
                                          (let ((_hd1827618900_
                                                 (##car _e1827518897_))
                                                (_tl1827718902_
                                                 (##cdr _e1827518897_)))
                                            (if (gx#stx-null? _tl1827718902_)
                                                (if (gx#stx-pair?
                                                     _tl1827118886_)
                                                    (let ((_e1827818905_
                                                           (gx#stx-e
                                                            _tl1827118886_)))
                                                      (let ((_hd1827918908_
                                                             (##car _e1827818905_))
                                                            (_tl1828018910_
                                                             (##cdr _e1827818905_)))
                                                        (if (gx#stx-pair?
                                                             _hd1827918908_)
                                                            (let ((_e1828118913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1827918908_)))
                      (let ((_hd1828218916_ (##car _e1828118913_))
                            (_tl1828318918_ (##cdr _e1828118913_)))
                        (if (gx#identifier? _hd1828218916_)
                            (if (gx#stx-eq? '%#quote _hd1828218916_)
                                (if (gx#stx-pair? _tl1828318918_)
                                    (let ((_e1828418921_
                                           (gx#stx-e _tl1828318918_)))
                                      (let ((_hd1828518924_
                                             (##car _e1828418921_))
                                            (_tl1828618926_
                                             (##cdr _e1828418921_)))
                                        (if (gx#stx-null? _tl1828618926_)
                                            (if (gx#stx-pair? _tl1828018910_)
                                                (let ((_e1828718929_
                                                       (gx#stx-e
                                                        _tl1828018910_)))
                                                  (let ((_hd1828818932_
                                                         (##car _e1828718929_))
                                                        (_tl1828918934_
                                                         (##cdr _e1828718929_)))
                                                    (if (gx#stx-pair?
                                                         _hd1828818932_)
                                                        (let ((_e1829018937_
                                                               (gx#stx-e
                                                                _hd1828818932_)))
                                                          (let ((_hd1829118940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1829018937_))
                        (_tl1829218942_ (##cdr _e1829018937_)))
                    (if (gx#identifier? _hd1829118940_)
                        (if (gx#stx-eq? '%#ref _hd1829118940_)
                            (if (gx#stx-pair? _tl1829218942_)
                                (let ((_e1829318945_
                                       (gx#stx-e _tl1829218942_)))
                                  (let ((_hd1829418948_ (##car _e1829318945_))
                                        (_tl1829518950_ (##cdr _e1829318945_)))
                                    (if (gx#stx-null? _tl1829518950_)
                                        (if (gx#stx-pair? _tl1828918934_)
                                            (let ((_e1829618953_
                                                   (gx#stx-e _tl1828918934_)))
                                              (let ((_hd1829718956_
                                                     (##car _e1829618953_))
                                                    (_tl1829818958_
                                                     (##cdr _e1829618953_)))
                                                (if (gx#stx-pair?
                                                     _hd1829718956_)
                                                    (let ((_e1829918961_
                                                           (gx#stx-e
                                                            _hd1829718956_)))
                                                      (let ((_hd1830018964_
                                                             (##car _e1829918961_))
                                                            (_tl1830118966_
                                                             (##cdr _e1829918961_)))
                                                        (if (gx#identifier?
                                                             _hd1830018964_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1830018964_)
                        (if (gx#stx-pair? _tl1830118966_)
                            (let ((_e1830218969_ (gx#stx-e _tl1830118966_)))
                              (let ((_hd1830318972_ (##car _e1830218969_))
                                    (_tl1830418974_ (##cdr _e1830218969_)))
                                (if (gx#stx-null? _tl1830418974_)
                                    (if (gx#stx-null? _tl1829818958_)
                                        (if (gx#stx-null? _tl1825618846_)
                                            ((lambda (_L18977_
                                                      _L18978_
                                                      _L18979_
                                                      _L18980_
                                                      _L18981_
                                                      _L18982_)
                                               (if (if (gx#identifier?
                                                        _L18982_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18981_)
                        'apply)
                   (if (eq? (gxc#identifier-symbol _L18980_) 'keyword-dispatch)
                       (gx#free-identifier=? _L18982_ _L18977_)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_tab19032_
                                                           (gx#stx-e _L18979_))
                                                          (_keys19034_
                                                           (if _tab19032_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab19032_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys19034_
                                                      (gxc#identifier-symbol
                                                       _L18978_)))
                                                   (_g1812318820_
                                                    _g1812618823_)))
                                             _hd1830318972_
                                             _hd1829418948_
                                             _hd1828518924_
                                             _hd1827618900_
                                             _hd1826718876_
                                             _hd1825218836_)
                                            (_g1812318820_ _g1812618823_))
                                        (_g1812318820_ _g1812618823_))
                                    (_g1812318820_ _g1812618823_))))
                            (_g1812318820_ _g1812618823_))
                        (_g1812318820_ _g1812618823_))
                    (_g1812318820_ _g1812618823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812318820_
                                                     _g1812618823_))))
                                            (_g1812318820_ _g1812618823_))
                                        (_g1812318820_ _g1812618823_))))
                                (_g1812318820_ _g1812618823_))
                            (_g1812318820_ _g1812618823_))
                        (_g1812318820_ _g1812618823_))))
                (_g1812318820_ _g1812618823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1812318820_ _g1812618823_))
                                            (_g1812318820_ _g1812618823_))))
                                    (_g1812318820_ _g1812618823_))
                                (_g1812318820_ _g1812618823_))
                            (_g1812318820_ _g1812618823_))))
                    (_g1812318820_ _g1812618823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812318820_
                                                     _g1812618823_))
                                                (_g1812318820_
                                                 _g1812618823_))))
                                        (_g1812318820_ _g1812618823_))
                                    (_g1812318820_ _g1812618823_))
                                (_g1812318820_ _g1812618823_))))
                        (_g1812318820_ _g1812618823_))))
                (_g1812318820_ _g1812618823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812318820_
                                                     _g1812618823_))))
                                            (_g1812318820_ _g1812618823_))
                                        (_g1812318820_ _g1812618823_))
                                    (_g1812318820_ _g1812618823_))))
                            (_g1812318820_ _g1812618823_))))
                    (_g1812318820_ _g1812618823_))
                (_g1812318820_ _g1812618823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812318820_
                                                     _g1812618823_))))
                                            (_g1812318820_ _g1812618823_))))
                                    (_g1812318820_ _g1812618823_))))
                            (_g1812318820_ _g1812618823_))))
                    (_g1812318820_ _g1812618823_))))
             (_g1812119059_
              (lambda (_g1812619040_)
                (if (gx#stx-pair? _g1812619040_)
                    (let ((_e1823919042_ (gx#stx-e _g1812619040_)))
                      (let ((_hd1824019045_ (##car _e1823919042_))
                            (_tl1824119047_ (##cdr _e1823919042_)))
                        ((lambda (_L19050_)
                           (if (gxc#dispatch-lambda-form? _L19050_)
                               (let ((__obj27382
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27382
                                    'lambda
                                    (gxc#lambda-form-arity _L19050_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19050_))
                                   __obj27382))
                               (_g1812219037_ _g1812619040_)))
                         _tl1824119047_)))
                    (_g1812219037_ _g1812619040_))))
             (_g1812019289_
              (lambda (_g1812619062_)
                (if (gx#stx-pair? _g1812619062_)
                    (let ((_e1818419064_ (gx#stx-e _g1812619062_)))
                      (let ((_hd1818519067_ (##car _e1818419064_))
                            (_tl1818619069_ (##cdr _e1818419064_)))
                        (if (gx#stx-pair? _tl1818619069_)
                            (let ((_e1818719072_ (gx#stx-e _tl1818619069_)))
                              (let ((_hd1818819075_ (##car _e1818719072_))
                                    (_tl1818919077_ (##cdr _e1818719072_)))
                                (if (gx#stx-pair/null? _hd1818819075_)
                                    (if (fx>= (gx#stx-length _hd1818819075_)
                                              '0)
                                        (let ((_g27454_
                                               (gx#syntax-split-splice
                                                _hd1818819075_
                                                '0)))
                                          (begin
                                            (let ((_g27455_
                                                   (values-count _g27454_)))
                                              (if (not (fx= _g27455_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27455_)))
                                            (let ((_target1819019080_
                                                   (values-ref _g27454_ 0))
                                                  (_tl1819219082_
                                                   (values-ref _g27454_ 1)))
                                              (if (gx#stx-null? _tl1819219082_)
                                                  (letrec ((_loop1819319085_
                                                            (lambda (_hd1819119088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1819719090_)
                      (if (gx#stx-pair? _hd1819119088_)
                          (let ((_e1819419093_ (gx#stx-e _hd1819119088_)))
                            (let ((_lp-hd1819519096_ (##car _e1819419093_))
                                  (_lp-tl1819619098_ (##cdr _e1819419093_)))
                              (_loop1819319085_
                               _lp-tl1819619098_
                               (cons _lp-hd1819519096_ _arg1819719090_))))
                          (let ((_arg1819819101_ (reverse _arg1819719090_)))
                            (if (gx#stx-pair? _tl1818919077_)
                                (let ((_e1819919104_
                                       (gx#stx-e _tl1818919077_)))
                                  (let ((_hd1820019107_ (##car _e1819919104_))
                                        (_tl1820119109_ (##cdr _e1819919104_)))
                                    (if (gx#stx-pair? _hd1820019107_)
                                        (let ((_e1820219112_
                                               (gx#stx-e _hd1820019107_)))
                                          (let ((_hd1820319115_
                                                 (##car _e1820219112_))
                                                (_tl1820419117_
                                                 (##cdr _e1820219112_)))
                                            (if (gx#identifier? _hd1820319115_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1820319115_)
                                                    (if (gx#stx-pair?
                                                         _tl1820419117_)
                                                        (let ((_e1820519120_
                                                               (gx#stx-e
                                                                _tl1820419117_)))
                                                          (let ((_hd1820619123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1820519120_))
                        (_tl1820719125_ (##cdr _e1820519120_)))
                    (if (gx#stx-pair? _hd1820619123_)
                        (let ((_e1820819128_ (gx#stx-e _hd1820619123_)))
                          (let ((_hd1820919131_ (##car _e1820819128_))
                                (_tl1821019133_ (##cdr _e1820819128_)))
                            (if (gx#identifier? _hd1820919131_)
                                (if (gx#stx-eq? '%#ref _hd1820919131_)
                                    (if (gx#stx-pair? _tl1821019133_)
                                        (let ((_e1821119136_
                                               (gx#stx-e _tl1821019133_)))
                                          (let ((_hd1821219139_
                                                 (##car _e1821119136_))
                                                (_tl1821319141_
                                                 (##cdr _e1821119136_)))
                                            (if (gx#stx-null? _tl1821319141_)
                                                (if (gx#stx-pair?
                                                     _tl1820719125_)
                                                    (let ((_e1821419144_
                                                           (gx#stx-e
                                                            _tl1820719125_)))
                                                      (let ((_hd1821519147_
                                                             (##car _e1821419144_))
                                                            (_tl1821619149_
                                                             (##cdr _e1821419144_)))
                                                        (if (gx#stx-pair?
                                                             _hd1821519147_)
                                                            (let ((_e1821719152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1821519147_)))
                      (let ((_hd1821819155_ (##car _e1821719152_))
                            (_tl1821919157_ (##cdr _e1821719152_)))
                        (if (gx#identifier? _hd1821819155_)
                            (if (gx#stx-eq? '%#ref _hd1821819155_)
                                (if (gx#stx-pair? _tl1821919157_)
                                    (let ((_e1822019160_
                                           (gx#stx-e _tl1821919157_)))
                                      (let ((_hd1822119163_
                                             (##car _e1822019160_))
                                            (_tl1822219165_
                                             (##cdr _e1822019160_)))
                                        (if (gx#stx-null? _tl1822219165_)
                                            (if (gx#stx-pair/null?
                                                 _tl1821619149_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1821619149_)
                                                          '0)
                                                    (let ((_g27456_
                                                           (gx#syntax-split-splice
                                                            _tl1821619149_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27457_
                                                               (values-count
                                                                _g27456_)))
                                                          (if (not (fx= _g27457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g27457_)))
                (let ((_target1822319168_ (values-ref _g27456_ 0))
                      (_tl1822519170_ (values-ref _g27456_ 1)))
                  (if (gx#stx-null? _tl1822519170_)
                      (letrec ((_loop1822619173_
                                (lambda (_hd1822419176_ _xarg1823019178_)
                                  (if (gx#stx-pair? _hd1822419176_)
                                      (let ((_e1822719181_
                                             (gx#stx-e _hd1822419176_)))
                                        (let ((_lp-hd1822819184_
                                               (##car _e1822719181_))
                                              (_lp-tl1822919186_
                                               (##cdr _e1822719181_)))
                                          (if (gx#stx-pair? _lp-hd1822819184_)
                                              (let ((_e1823219189_
                                                     (gx#stx-e
                                                      _lp-hd1822819184_)))
                                                (let ((_hd1823319192_
                                                       (##car _e1823219189_))
                                                      (_tl1823419194_
                                                       (##cdr _e1823219189_)))
                                                  (if (gx#identifier?
                                                       _hd1823319192_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1823319192_)
                                                          (if (gx#stx-pair?
                                                               _tl1823419194_)
                                                              (let ((_e1823519197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1823419194_)))
                        (let ((_hd1823619200_ (##car _e1823519197_))
                              (_tl1823719202_ (##cdr _e1823519197_)))
                          (if (gx#stx-null? _tl1823719202_)
                              (_loop1822619173_
                               _lp-tl1822919186_
                               (cons _hd1823619200_ _xarg1823019178_))
                              (_g1812119059_ _g1812619062_))))
                      (_g1812119059_ _g1812619062_))
                  (_g1812119059_ _g1812619062_))
              (_g1812119059_ _g1812619062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1812119059_ _g1812619062_))))
                                      (let ((_xarg1823119205_
                                             (reverse _xarg1823019178_)))
                                        (if (gx#stx-null? _tl1820119109_)
                                            ((lambda (_L19208_
                                                      _L19209_
                                                      _L19210_
                                                      _L19211_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1924819251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1924919253_)
                            (cons _g1924819251_ _g1924919253_))
                          '()
                          _L19211_)))
               (if (eq? (gxc#identifier-symbol _L19210_) 'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1925519258_
                                                       _g1925619260_)
                                                (cons _g1925519258_
                                                      _g1925619260_))
                                              '()
                                              _L19211_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1926219265_
                                                       _g1926319267_)
                                                (cons _g1926219265_
                                                      _g1926319267_))
                                              '()
                                              _L19208_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1926919272_ _g1927019274_)
                                            (cons _g1926919272_ _g1927019274_))
                                          '()
                                          _L19211_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1927619279_ _g1927719281_)
                                            (cons _g1927619279_ _g1927719281_))
                                          '()
                                          _L19208_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19284_
                                                           (gxc#identifier-symbol
                                                            _L19209_))
                                                          (_type19286_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19284_)))
                                                     (if (##structure-instance-of?
                                                          _type19286_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19284_)
                                                         '#f))
                                                   (_g1812119059_
                                                    _g1812619062_)))
                                             _xarg1823119205_
                                             _hd1822119163_
                                             _hd1821219139_
                                             _arg1819819101_)
                                            (_g1812119059_ _g1812619062_)))))))
                        (_loop1822619173_ _target1822319168_ '()))
                      (_g1812119059_ _g1812619062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812119059_
                                                     _g1812619062_))
                                                (_g1812119059_ _g1812619062_))
                                            (_g1812119059_ _g1812619062_))))
                                    (_g1812119059_ _g1812619062_))
                                (_g1812119059_ _g1812619062_))
                            (_g1812119059_ _g1812619062_))))
                    (_g1812119059_ _g1812619062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812119059_
                                                     _g1812619062_))
                                                (_g1812119059_
                                                 _g1812619062_))))
                                        (_g1812119059_ _g1812619062_))
                                    (_g1812119059_ _g1812619062_))
                                (_g1812119059_ _g1812619062_))))
                        (_g1812119059_ _g1812619062_))))
                (_g1812119059_ _g1812619062_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812119059_
                                                     _g1812619062_))
                                                (_g1812119059_
                                                 _g1812619062_))))
                                        (_g1812119059_ _g1812619062_))))
                                (_g1812119059_ _g1812619062_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1819319085_
                                                     _target1819019080_
                                                     '()))
                                                  (_g1812119059_
                                                   _g1812619062_)))))
                                        (_g1812119059_ _g1812619062_))
                                    (_g1812119059_ _g1812619062_))))
                            (_g1812119059_ _g1812619062_))))
                    (_g1812119059_ _g1812619062_))))
             (_g1811919474_
              (lambda (_g1812619292_)
                (if (gx#stx-pair? _g1812619292_)
                    (let ((_e1813219294_ (gx#stx-e _g1812619292_)))
                      (let ((_hd1813319297_ (##car _e1813219294_))
                            (_tl1813419299_ (##cdr _e1813219294_)))
                        (if (gx#stx-pair? _tl1813419299_)
                            (let ((_e1813519302_ (gx#stx-e _tl1813419299_)))
                              (let ((_hd1813619305_ (##car _e1813519302_))
                                    (_tl1813719307_ (##cdr _e1813519302_)))
                                (if (gx#stx-pair? _tl1813719307_)
                                    (let ((_e1813819310_
                                           (gx#stx-e _tl1813719307_)))
                                      (let ((_hd1813919313_
                                             (##car _e1813819310_))
                                            (_tl1814019315_
                                             (##cdr _e1813819310_)))
                                        (if (gx#stx-pair? _hd1813919313_)
                                            (let ((_e1814119318_
                                                   (gx#stx-e _hd1813919313_)))
                                              (let ((_hd1814219321_
                                                     (##car _e1814119318_))
                                                    (_tl1814319323_
                                                     (##cdr _e1814119318_)))
                                                (if (gx#identifier?
                                                     _hd1814219321_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1814219321_)
                                                        (if (gx#stx-pair?
                                                             _tl1814319323_)
                                                            (let ((_e1814419326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1814319323_)))
                      (let ((_hd1814519329_ (##car _e1814419326_))
                            (_tl1814619331_ (##cdr _e1814419326_)))
                        (if (gx#stx-pair? _hd1814519329_)
                            (let ((_e1814719334_ (gx#stx-e _hd1814519329_)))
                              (let ((_hd1814819337_ (##car _e1814719334_))
                                    (_tl1814919339_ (##cdr _e1814719334_)))
                                (if (gx#identifier? _hd1814819337_)
                                    (if (gx#stx-eq? '%#ref _hd1814819337_)
                                        (if (gx#stx-pair? _tl1814919339_)
                                            (let ((_e1815019342_
                                                   (gx#stx-e _tl1814919339_)))
                                              (let ((_hd1815119345_
                                                     (##car _e1815019342_))
                                                    (_tl1815219347_
                                                     (##cdr _e1815019342_)))
                                                (if (gx#stx-null?
                                                     _tl1815219347_)
                                                    (if (gx#stx-pair?
                                                         _tl1814619331_)
                                                        (let ((_e1815319350_
                                                               (gx#stx-e
                                                                _tl1814619331_)))
                                                          (let ((_hd1815419353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1815319350_))
                        (_tl1815519355_ (##cdr _e1815319350_)))
                    (if (gx#stx-pair? _hd1815419353_)
                        (let ((_e1815619358_ (gx#stx-e _hd1815419353_)))
                          (let ((_hd1815719361_ (##car _e1815619358_))
                                (_tl1815819363_ (##cdr _e1815619358_)))
                            (if (gx#identifier? _hd1815719361_)
                                (if (gx#stx-eq? '%#ref _hd1815719361_)
                                    (if (gx#stx-pair? _tl1815819363_)
                                        (let ((_e1815919366_
                                               (gx#stx-e _tl1815819363_)))
                                          (let ((_hd1816019369_
                                                 (##car _e1815919366_))
                                                (_tl1816119371_
                                                 (##cdr _e1815919366_)))
                                            (if (gx#stx-null? _tl1816119371_)
                                                (if (gx#stx-pair?
                                                     _tl1815519355_)
                                                    (let ((_e1816219374_
                                                           (gx#stx-e
                                                            _tl1815519355_)))
                                                      (let ((_hd1816319377_
                                                             (##car _e1816219374_))
                                                            (_tl1816419379_
                                                             (##cdr _e1816219374_)))
                                                        (if (gx#stx-pair?
                                                             _hd1816319377_)
                                                            (let ((_e1816519382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1816319377_)))
                      (let ((_hd1816619385_ (##car _e1816519382_))
                            (_tl1816719387_ (##cdr _e1816519382_)))
                        (if (gx#identifier? _hd1816619385_)
                            (if (gx#stx-eq? '%#ref _hd1816619385_)
                                (if (gx#stx-pair? _tl1816719387_)
                                    (let ((_e1816819390_
                                           (gx#stx-e _tl1816719387_)))
                                      (let ((_hd1816919393_
                                             (##car _e1816819390_))
                                            (_tl1817019395_
                                             (##cdr _e1816819390_)))
                                        (if (gx#stx-null? _tl1817019395_)
                                            (if (gx#stx-pair? _tl1816419379_)
                                                (let ((_e1817119398_
                                                       (gx#stx-e
                                                        _tl1816419379_)))
                                                  (let ((_hd1817219401_
                                                         (##car _e1817119398_))
                                                        (_tl1817319403_
                                                         (##cdr _e1817119398_)))
                                                    (if (gx#stx-pair?
                                                         _hd1817219401_)
                                                        (let ((_e1817419406_
                                                               (gx#stx-e
                                                                _hd1817219401_)))
                                                          (let ((_hd1817519409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1817419406_))
                        (_tl1817619411_ (##cdr _e1817419406_)))
                    (if (gx#identifier? _hd1817519409_)
                        (if (gx#stx-eq? '%#ref _hd1817519409_)
                            (if (gx#stx-pair? _tl1817619411_)
                                (let ((_e1817719414_
                                       (gx#stx-e _tl1817619411_)))
                                  (let ((_hd1817819417_ (##car _e1817719414_))
                                        (_tl1817919419_ (##cdr _e1817719414_)))
                                    (if (gx#stx-null? _tl1817919419_)
                                        (if (gx#stx-null? _tl1817319403_)
                                            (if (gx#stx-null? _tl1814019315_)
                                                ((lambda (_L19422_
                                                          _L19423_
                                                          _L19424_
                                                          _L19425_
                                                          _L19426_)
                                                   (if (if (gx#identifier?
                                                            _L19426_)
                                                           (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19425_)
                            'apply)
                       (if (eq? (gxc#identifier-symbol _L19424_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L19426_ _L19422_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19469_ (gxc#identifier-symbol _L19423_))
                      (_type19471_ (gxc#optimizer-resolve-type _type-t19469_)))
                 (if (##structure-instance-of?
                      _type19471_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19469_)
                     '#f))
               (_g1812019289_ _g1812619292_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1817819417_
                                                 _hd1816919393_
                                                 _hd1816019369_
                                                 _hd1815119345_
                                                 _hd1813619305_)
                                                (_g1812019289_ _g1812619292_))
                                            (_g1812019289_ _g1812619292_))
                                        (_g1812019289_ _g1812619292_))))
                                (_g1812019289_ _g1812619292_))
                            (_g1812019289_ _g1812619292_))
                        (_g1812019289_ _g1812619292_))))
                (_g1812019289_ _g1812619292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1812019289_ _g1812619292_))
                                            (_g1812019289_ _g1812619292_))))
                                    (_g1812019289_ _g1812619292_))
                                (_g1812019289_ _g1812619292_))
                            (_g1812019289_ _g1812619292_))))
                    (_g1812019289_ _g1812619292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812019289_
                                                     _g1812619292_))
                                                (_g1812019289_
                                                 _g1812619292_))))
                                        (_g1812019289_ _g1812619292_))
                                    (_g1812019289_ _g1812619292_))
                                (_g1812019289_ _g1812619292_))))
                        (_g1812019289_ _g1812619292_))))
                (_g1812019289_ _g1812619292_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812019289_
                                                     _g1812619292_))))
                                            (_g1812019289_ _g1812619292_))
                                        (_g1812019289_ _g1812619292_))
                                    (_g1812019289_ _g1812619292_))))
                            (_g1812019289_ _g1812619292_))))
                    (_g1812019289_ _g1812619292_))
                (_g1812019289_ _g1812619292_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812019289_
                                                     _g1812619292_))))
                                            (_g1812019289_ _g1812619292_))))
                                    (_g1812019289_ _g1812619292_))))
                            (_g1812019289_ _g1812619292_))))
                    (_g1812019289_ _g1812619292_)))))
        (_g1811919474_ _stx18118_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18064_)
      (letrec ((_clause-e18066_
                (lambda (_form18116_)
                  (let ((__obj27383 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27383
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18116_)
                       (gxc#dispatch-lambda-form-delegate _form18116_))
                      __obj27383)))))
        (let* ((_g1806918079_
                (lambda (_g1807018076_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1807018076_)))
               (_g1806818086_ (lambda (_g1807018082_) ((lambda () '#f))))
               (_g1806718113_
                (lambda (_g1807018089_)
                  (if (gx#stx-pair? _g1807018089_)
                      (let ((_e1807218091_ (gx#stx-e _g1807018089_)))
                        (let ((_hd1807318094_ (##car _e1807218091_))
                              (_tl1807418096_ (##cdr _e1807218091_)))
                          ((lambda (_L18099_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18099_)
                                 (let ((_clauses18111_
                                        (map _clause-e18066_ _L18099_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18111_))
                                 (_g1806818086_ _g1807018089_)))
                           _tl1807418096_)))
                      (_g1806818086_ _g1807018089_)))))
          (_g1806718113_ _stx18064_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx17969_)
      (let* ((_g1797217992_
              (lambda (_g1797317989_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1797317989_)))
             (_g1797117999_ (lambda (_g1797317995_) ((lambda () '#f))))
             (_g1797018061_
              (lambda (_g1797318002_)
                (if (gx#stx-pair? _g1797318002_)
                    (let ((_e1797618004_ (gx#stx-e _g1797318002_)))
                      (let ((_hd1797718007_ (##car _e1797618004_))
                            (_tl1797818009_ (##cdr _e1797618004_)))
                        (if (gx#stx-pair? _tl1797818009_)
                            (let ((_e1797918012_ (gx#stx-e _tl1797818009_)))
                              (let ((_hd1798018015_ (##car _e1797918012_))
                                    (_tl1798118017_ (##cdr _e1797918012_)))
                                (if (gx#stx-pair? _hd1798018015_)
                                    (let ((_e1798218020_
                                           (gx#stx-e _hd1798018015_)))
                                      (let ((_hd1798318023_
                                             (##car _e1798218020_))
                                            (_tl1798418025_
                                             (##cdr _e1798218020_)))
                                        (if (gx#identifier? _hd1798318023_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1798318023_)
                                                (if (gx#stx-pair?
                                                     _tl1798418025_)
                                                    (let ((_e1798518028_
                                                           (gx#stx-e
                                                            _tl1798418025_)))
                                                      (let ((_hd1798618031_
                                                             (##car _e1798518028_))
                                                            (_tl1798718033_
                                                             (##cdr _e1798518028_)))
                                                        (if (gx#stx-null?
                                                             _tl1798718033_)
                                                            ((lambda (_L18036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18037_)
                       (let ((_type-e1805418056_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#identifier-symbol _L18037_)
                               '#f)))
                         (if _type-e1805418056_
                             (let ((_type-e18059_ _type-e1805418056_))
                               (_type-e18059_ _stx17969_ _L18036_))
                             '#f)))
                     _tl1798118017_
                     _hd1798618031_)
                    (_g1797117999_ _g1797318002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1797117999_
                                                     _g1797318002_))
                                                (_g1797117999_ _g1797318002_))
                                            (_g1797117999_ _g1797318002_))))
                                    (_g1797117999_ _g1797318002_))))
                            (_g1797117999_ _g1797318002_))))
                    (_g1797117999_ _g1797318002_)))))
        (_g1797018061_ _stx17969_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17454_ _args17455_)
      (let* ((_g1745917572_
              (lambda (_g1746017569_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1746017569_)))
             (_g1745817579_
              (lambda (_g1746017575_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17454_))
                     '#f)))))
             (_g1745717786_
              (lambda (_g1746017582_)
                (if (gx#stx-pair? _g1746017582_)
                    (let ((_e1752017584_ (gx#stx-e _g1746017582_)))
                      (let ((_hd1752117587_ (##car _e1752017584_))
                            (_tl1752217589_ (##cdr _e1752017584_)))
                        (if (gx#stx-pair? _hd1752117587_)
                            (let ((_e1752317592_ (gx#stx-e _hd1752117587_)))
                              (let ((_hd1752417595_ (##car _e1752317592_))
                                    (_tl1752517597_ (##cdr _e1752317592_)))
                                (if (gx#identifier? _hd1752417595_)
                                    (if (gx#stx-eq? '%#quote _hd1752417595_)
                                        (if (gx#stx-pair? _tl1752517597_)
                                            (let ((_e1752617600_
                                                   (gx#stx-e _tl1752517597_)))
                                              (let ((_hd1752717603_
                                                     (##car _e1752617600_))
                                                    (_tl1752817605_
                                                     (##cdr _e1752617600_)))
                                                (if (gx#stx-null?
                                                     _tl1752817605_)
                                                    (if (gx#stx-pair?
                                                         _tl1752217589_)
                                                        (let ((_e1752917608_
                                                               (gx#stx-e
                                                                _tl1752217589_)))
                                                          (let ((_hd1753017611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1752917608_))
                        (_tl1753117613_ (##cdr _e1752917608_)))
                    (if (gx#stx-pair? _hd1753017611_)
                        (let ((_e1753217616_ (gx#stx-e _hd1753017611_)))
                          (let ((_hd1753317619_ (##car _e1753217616_))
                                (_tl1753417621_ (##cdr _e1753217616_)))
                            (if (gx#identifier? _hd1753317619_)
                                (if (gx#stx-eq? '%#ref _hd1753317619_)
                                    (if (gx#stx-pair? _tl1753417621_)
                                        (let ((_e1753517624_
                                               (gx#stx-e _tl1753417621_)))
                                          (let ((_hd1753617627_
                                                 (##car _e1753517624_))
                                                (_tl1753717629_
                                                 (##cdr _e1753517624_)))
                                            (if (gx#stx-null? _tl1753717629_)
                                                (if (gx#stx-pair?
                                                     _tl1753117613_)
                                                    (let ((_e1753817632_
                                                           (gx#stx-e
                                                            _tl1753117613_)))
                                                      (let ((_hd1753917635_
                                                             (##car _e1753817632_))
                                                            (_tl1754017637_
                                                             (##cdr _e1753817632_)))
                                                        (if (gx#stx-pair?
                                                             _hd1753917635_)
                                                            (let ((_e1754117640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1753917635_)))
                      (let ((_hd1754217643_ (##car _e1754117640_))
                            (_tl1754317645_ (##cdr _e1754117640_)))
                        (if (gx#identifier? _hd1754217643_)
                            (if (gx#stx-eq? '%#quote _hd1754217643_)
                                (if (gx#stx-pair? _tl1754317645_)
                                    (let ((_e1754417648_
                                           (gx#stx-e _tl1754317645_)))
                                      (let ((_hd1754517651_
                                             (##car _e1754417648_))
                                            (_tl1754617653_
                                             (##cdr _e1754417648_)))
                                        (if (gx#stx-null? _tl1754617653_)
                                            (if (gx#stx-pair? _tl1754017637_)
                                                (let ((_e1754717656_
                                                       (gx#stx-e
                                                        _tl1754017637_)))
                                                  (let ((_hd1754817659_
                                                         (##car _e1754717656_))
                                                        (_tl1754917661_
                                                         (##cdr _e1754717656_)))
                                                    (if (gx#stx-pair?
                                                         _tl1754917661_)
                                                        (let ((_e1755017664_
                                                               (gx#stx-e
                                                                _tl1754917661_)))
                                                          (let ((_hd1755117667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1755017664_))
                        (_tl1755217669_ (##cdr _e1755017664_)))
                    (if (gx#stx-pair? _hd1755117667_)
                        (let ((_e1755317672_ (gx#stx-e _hd1755117667_)))
                          (let ((_hd1755417675_ (##car _e1755317672_))
                                (_tl1755517677_ (##cdr _e1755317672_)))
                            (if (gx#identifier? _hd1755417675_)
                                (if (gx#stx-eq? '%#quote _hd1755417675_)
                                    (if (gx#stx-pair? _tl1755517677_)
                                        (let ((_e1755617680_
                                               (gx#stx-e _tl1755517677_)))
                                          (let ((_hd1755717683_
                                                 (##car _e1755617680_))
                                                (_tl1755817685_
                                                 (##cdr _e1755617680_)))
                                            (if (gx#stx-null? _tl1755817685_)
                                                (if (gx#stx-pair?
                                                     _tl1755217669_)
                                                    (let ((_e1755917688_
                                                           (gx#stx-e
                                                            _tl1755217669_)))
                                                      (let ((_hd1756017691_
                                                             (##car _e1755917688_))
                                                            (_tl1756117693_
                                                             (##cdr _e1755917688_)))
                                                        (if (gx#stx-pair?
                                                             _hd1756017691_)
                                                            (let ((_e1756217696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1756017691_)))
                      (let ((_hd1756317699_ (##car _e1756217696_))
                            (_tl1756417701_ (##cdr _e1756217696_)))
                        (if (gx#identifier? _hd1756317699_)
                            (if (gx#stx-eq? '%#quote _hd1756317699_)
                                (if (gx#stx-pair? _tl1756417701_)
                                    (let ((_e1756517704_
                                           (gx#stx-e _tl1756417701_)))
                                      (let ((_hd1756617707_
                                             (##car _e1756517704_))
                                            (_tl1756717709_
                                             (##cdr _e1756517704_)))
                                        (if (gx#stx-null? _tl1756717709_)
                                            ((lambda (_L17712_
                                                      _L17713_
                                                      _L17714_
                                                      _L17715_
                                                      _L17716_
                                                      _L17717_)
                                               (let* ((_super-t17763_
                                                       (if (gx#stx-e _L17716_)
                                                           (gxc#identifier-symbol
                                                            _L17716_)
                                                           '#f))
                                                      (_super-type17765_
                                                       (if _super-t17763_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t17763_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type17765_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type17765_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17454_
                _L17716_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields17781_
                                                          (gx#stx-e _L17715_))
                                                         (_xfields17782_
                                                          (if _super-type17765_
                                                              (let ((_super-fields1776717770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type17765_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1776817772_
                             (##structure-ref
                              _super-type17765_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1776717770_
                            (if _super-xfields1776817772_
                                (let ((_super-fields17775_
                                       _super-fields1776717770_)
                                      (_super-xfields17776_
                                       _super-xfields1776817772_))
                                  (fx+ _super-fields17775_
                                       _super-xfields17776_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist17783_ (gx#stx-e _L17713_))
                 (_ctor17784_
                  (let ((_$e17778_ (gx#stx-e _L17712_)))
                    (if _$e17778_
                        (values _$e17778_)
                        (if _super-type17765_
                            (##structure-ref
                             _super-type17765_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t17763_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27384
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27384
                                                          (gx#stx-e _L17717_)
                                                          _super-t17763_
                                                          _fields17781_
                                                          _xfields17782_
                                                          _ctor17784_
                                                          _plist17783_)
                                                         __obj27384))))))
                                             _hd1756617707_
                                             _hd1755717683_
                                             _hd1754817659_
                                             _hd1754517651_
                                             _hd1753617627_
                                             _hd1752717603_)
                                            (_g1745817579_ _g1746017582_))))
                                    (_g1745817579_ _g1746017582_))
                                (_g1745817579_ _g1746017582_))
                            (_g1745817579_ _g1746017582_))))
                    (_g1745817579_ _g1746017582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745817579_
                                                     _g1746017582_))
                                                (_g1745817579_
                                                 _g1746017582_))))
                                        (_g1745817579_ _g1746017582_))
                                    (_g1745817579_ _g1746017582_))
                                (_g1745817579_ _g1746017582_))))
                        (_g1745817579_ _g1746017582_))))
                (_g1745817579_ _g1746017582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1745817579_ _g1746017582_))
                                            (_g1745817579_ _g1746017582_))))
                                    (_g1745817579_ _g1746017582_))
                                (_g1745817579_ _g1746017582_))
                            (_g1745817579_ _g1746017582_))))
                    (_g1745817579_ _g1746017582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745817579_
                                                     _g1746017582_))
                                                (_g1745817579_
                                                 _g1746017582_))))
                                        (_g1745817579_ _g1746017582_))
                                    (_g1745817579_ _g1746017582_))
                                (_g1745817579_ _g1746017582_))))
                        (_g1745817579_ _g1746017582_))))
                (_g1745817579_ _g1746017582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745817579_
                                                     _g1746017582_))))
                                            (_g1745817579_ _g1746017582_))
                                        (_g1745817579_ _g1746017582_))
                                    (_g1745817579_ _g1746017582_))))
                            (_g1745817579_ _g1746017582_))))
                    (_g1745817579_ _g1746017582_))))
             (_g1745617966_
              (lambda (_g1746017789_)
                (if (gx#stx-pair? _g1746017789_)
                    (let ((_e1746617791_ (gx#stx-e _g1746017789_)))
                      (let ((_hd1746717794_ (##car _e1746617791_))
                            (_tl1746817796_ (##cdr _e1746617791_)))
                        (if (gx#stx-pair? _hd1746717794_)
                            (let ((_e1746917799_ (gx#stx-e _hd1746717794_)))
                              (let ((_hd1747017802_ (##car _e1746917799_))
                                    (_tl1747117804_ (##cdr _e1746917799_)))
                                (if (gx#identifier? _hd1747017802_)
                                    (if (gx#stx-eq? '%#quote _hd1747017802_)
                                        (if (gx#stx-pair? _tl1747117804_)
                                            (let ((_e1747217807_
                                                   (gx#stx-e _tl1747117804_)))
                                              (let ((_hd1747317810_
                                                     (##car _e1747217807_))
                                                    (_tl1747417812_
                                                     (##cdr _e1747217807_)))
                                                (if (gx#stx-null?
                                                     _tl1747417812_)
                                                    (if (gx#stx-pair?
                                                         _tl1746817796_)
                                                        (let ((_e1747517815_
                                                               (gx#stx-e
                                                                _tl1746817796_)))
                                                          (let ((_hd1747617818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1747517815_))
                        (_tl1747717820_ (##cdr _e1747517815_)))
                    (if (gx#stx-pair? _hd1747617818_)
                        (let ((_e1747817823_ (gx#stx-e _hd1747617818_)))
                          (let ((_hd1747917826_ (##car _e1747817823_))
                                (_tl1748017828_ (##cdr _e1747817823_)))
                            (if (gx#identifier? _hd1747917826_)
                                (if (gx#stx-eq? '%#quote _hd1747917826_)
                                    (if (gx#stx-pair? _tl1748017828_)
                                        (let ((_e1748117831_
                                               (gx#stx-e _tl1748017828_)))
                                          (let ((_hd1748217834_
                                                 (##car _e1748117831_))
                                                (_tl1748317836_
                                                 (##cdr _e1748117831_)))
                                            (if (gx#stx-datum? _hd1748217834_)
                                                (if (equal? (gx#stx-e
                                                             _hd1748217834_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1748317836_)
                                                        (if (gx#stx-pair?
                                                             _tl1747717820_)
                                                            (let ((_e1748417839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1747717820_)))
                      (let ((_hd1748517842_ (##car _e1748417839_))
                            (_tl1748617844_ (##cdr _e1748417839_)))
                        (if (gx#stx-pair? _hd1748517842_)
                            (let ((_e1748717847_ (gx#stx-e _hd1748517842_)))
                              (let ((_hd1748817850_ (##car _e1748717847_))
                                    (_tl1748917852_ (##cdr _e1748717847_)))
                                (if (gx#identifier? _hd1748817850_)
                                    (if (gx#stx-eq? '%#quote _hd1748817850_)
                                        (if (gx#stx-pair? _tl1748917852_)
                                            (let ((_e1749017855_
                                                   (gx#stx-e _tl1748917852_)))
                                              (let ((_hd1749117858_
                                                     (##car _e1749017855_))
                                                    (_tl1749217860_
                                                     (##cdr _e1749017855_)))
                                                (if (gx#stx-null?
                                                     _tl1749217860_)
                                                    (if (gx#stx-pair?
                                                         _tl1748617844_)
                                                        (let ((_e1749317863_
                                                               (gx#stx-e
                                                                _tl1748617844_)))
                                                          (let ((_hd1749417866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1749317863_))
                        (_tl1749517868_ (##cdr _e1749317863_)))
                    (if (gx#stx-pair? _tl1749517868_)
                        (let ((_e1749617871_ (gx#stx-e _tl1749517868_)))
                          (let ((_hd1749717874_ (##car _e1749617871_))
                                (_tl1749817876_ (##cdr _e1749617871_)))
                            (if (gx#stx-pair? _hd1749717874_)
                                (let ((_e1749917879_
                                       (gx#stx-e _hd1749717874_)))
                                  (let ((_hd1750017882_ (##car _e1749917879_))
                                        (_tl1750117884_ (##cdr _e1749917879_)))
                                    (if (gx#identifier? _hd1750017882_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1750017882_)
                                            (if (gx#stx-pair? _tl1750117884_)
                                                (let ((_e1750217887_
                                                       (gx#stx-e
                                                        _tl1750117884_)))
                                                  (let ((_hd1750317890_
                                                         (##car _e1750217887_))
                                                        (_tl1750417892_
                                                         (##cdr _e1750217887_)))
                                                    (if (gx#stx-null?
                                                         _tl1750417892_)
                                                        (if (gx#stx-pair?
                                                             _tl1749817876_)
                                                            (let ((_e1750517895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1749817876_)))
                      (let ((_hd1750617898_ (##car _e1750517895_))
                            (_tl1750717900_ (##cdr _e1750517895_)))
                        (if (gx#stx-pair? _hd1750617898_)
                            (let ((_e1750817903_ (gx#stx-e _hd1750617898_)))
                              (let ((_hd1750917906_ (##car _e1750817903_))
                                    (_tl1751017908_ (##cdr _e1750817903_)))
                                (if (gx#identifier? _hd1750917906_)
                                    (if (gx#stx-eq? '%#quote _hd1750917906_)
                                        (if (gx#stx-pair? _tl1751017908_)
                                            (let ((_e1751117911_
                                                   (gx#stx-e _tl1751017908_)))
                                              (let ((_hd1751217914_
                                                     (##car _e1751117911_))
                                                    (_tl1751317916_
                                                     (##cdr _e1751117911_)))
                                                (if (gx#stx-null?
                                                     _tl1751317916_)
                                                    ((lambda (_L17919_
                                                              _L17920_
                                                              _L17921_
                                                              _L17922_
                                                              _L17923_)
                                                       (let ((__obj27385
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27385
                                                            (gx#stx-e _L17923_)
                                                            '#f
                                                            (gx#stx-e _L17922_)
                                                            '0
                                                            (gx#stx-e _L17919_)
                                                            (gx#stx-e
                                                             _L17920_))
                                                           __obj27385)))
                                                     _hd1751217914_
                                                     _hd1750317890_
                                                     _hd1749417866_
                                                     _hd1749117858_
                                                     _hd1747317810_)
                                                    (_g1745717786_
                                                     _g1746017789_))))
                                            (_g1745717786_ _g1746017789_))
                                        (_g1745717786_ _g1746017789_))
                                    (_g1745717786_ _g1746017789_))))
                            (_g1745717786_ _g1746017789_))))
                    (_g1745717786_ _g1746017789_))
                (_g1745717786_ _g1746017789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1745717786_ _g1746017789_))
                                            (_g1745717786_ _g1746017789_))
                                        (_g1745717786_ _g1746017789_))))
                                (_g1745717786_ _g1746017789_))))
                        (_g1745717786_ _g1746017789_))))
                (_g1745717786_ _g1746017789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745717786_
                                                     _g1746017789_))))
                                            (_g1745717786_ _g1746017789_))
                                        (_g1745717786_ _g1746017789_))
                                    (_g1745717786_ _g1746017789_))))
                            (_g1745717786_ _g1746017789_))))
                    (_g1745717786_ _g1746017789_))
                (_g1745717786_ _g1746017789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745717786_
                                                     _g1746017789_))
                                                (_g1745717786_
                                                 _g1746017789_))))
                                        (_g1745717786_ _g1746017789_))
                                    (_g1745717786_ _g1746017789_))
                                (_g1745717786_ _g1746017789_))))
                        (_g1745717786_ _g1746017789_))))
                (_g1745717786_ _g1746017789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745717786_
                                                     _g1746017789_))))
                                            (_g1745717786_ _g1746017789_))
                                        (_g1745717786_ _g1746017789_))
                                    (_g1745717786_ _g1746017789_))))
                            (_g1745717786_ _g1746017789_))))
                    (_g1745717786_ _g1746017789_)))))
        (_g1745617966_ _args17455_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17380_ _args17381_)
      (let* ((_g1738417400_
              (lambda (_g1738517397_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1738517397_)))
             (_g1738317407_ (lambda (_g1738517403_) ((lambda () '#f))))
             (_g1738217451_
              (lambda (_g1738517410_)
                (if (gx#stx-pair? _g1738517410_)
                    (let ((_e1738717412_ (gx#stx-e _g1738517410_)))
                      (let ((_hd1738817415_ (##car _e1738717412_))
                            (_tl1738917417_ (##cdr _e1738717412_)))
                        (if (gx#stx-pair? _hd1738817415_)
                            (let ((_e1739017420_ (gx#stx-e _hd1738817415_)))
                              (let ((_hd1739117423_ (##car _e1739017420_))
                                    (_tl1739217425_ (##cdr _e1739017420_)))
                                (if (gx#identifier? _hd1739117423_)
                                    (if (gx#stx-eq? '%#ref _hd1739117423_)
                                        (if (gx#stx-pair? _tl1739217425_)
                                            (let ((_e1739317428_
                                                   (gx#stx-e _tl1739217425_)))
                                              (let ((_hd1739417431_
                                                     (##car _e1739317428_))
                                                    (_tl1739517433_
                                                     (##cdr _e1739317428_)))
                                                (if (gx#stx-null?
                                                     _tl1739517433_)
                                                    (if (gx#stx-null?
                                                         _tl1738917417_)
                                                        ((lambda (_L17436_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#identifier-symbol
                                                             _L17436_)))
                                                         _hd1739417431_)
                                                        (_g1738317407_
                                                         _g1738517410_))
                                                    (_g1738317407_
                                                     _g1738517410_))))
                                            (_g1738317407_ _g1738517410_))
                                        (_g1738317407_ _g1738517410_))
                                    (_g1738317407_ _g1738517410_))))
                            (_g1738317407_ _g1738517410_))))
                    (_g1738317407_ _g1738517410_)))))
        (_g1738217451_ _args17381_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17251_ _args17252_ _unchecked?17253_)
        (let* ((_g1725617282_
                (lambda (_g1725717279_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1725717279_)))
               (_g1725517289_ (lambda (_g1725717285_) ((lambda () '#f))))
               (_g1725417365_
                (lambda (_g1725717292_)
                  (if (gx#stx-pair? _g1725717292_)
                      (let ((_e1726017294_ (gx#stx-e _g1725717292_)))
                        (let ((_hd1726117297_ (##car _e1726017294_))
                              (_tl1726217299_ (##cdr _e1726017294_)))
                          (if (gx#stx-pair? _hd1726117297_)
                              (let ((_e1726317302_ (gx#stx-e _hd1726117297_)))
                                (let ((_hd1726417305_ (##car _e1726317302_))
                                      (_tl1726517307_ (##cdr _e1726317302_)))
                                  (if (gx#identifier? _hd1726417305_)
                                      (if (gx#stx-eq? '%#ref _hd1726417305_)
                                          (if (gx#stx-pair? _tl1726517307_)
                                              (let ((_e1726617310_
                                                     (gx#stx-e
                                                      _tl1726517307_)))
                                                (let ((_hd1726717313_
                                                       (##car _e1726617310_))
                                                      (_tl1726817315_
                                                       (##cdr _e1726617310_)))
                                                  (if (gx#stx-null?
                                                       _tl1726817315_)
                                                      (if (gx#stx-pair?
                                                           _tl1726217299_)
                                                          (let ((_e1726917318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1726217299_)))
                    (let ((_hd1727017321_ (##car _e1726917318_))
                          (_tl1727117323_ (##cdr _e1726917318_)))
                      (if (gx#stx-pair? _hd1727017321_)
                          (let ((_e1727217326_ (gx#stx-e _hd1727017321_)))
                            (let ((_hd1727317329_ (##car _e1727217326_))
                                  (_tl1727417331_ (##cdr _e1727217326_)))
                              (if (gx#identifier? _hd1727317329_)
                                  (if (gx#stx-eq? '%#quote _hd1727317329_)
                                      (if (gx#stx-pair? _tl1727417331_)
                                          (let ((_e1727517334_
                                                 (gx#stx-e _tl1727417331_)))
                                            (let ((_hd1727617337_
                                                   (##car _e1727517334_))
                                                  (_tl1727717339_
                                                   (##cdr _e1727517334_)))
                                              (if (gx#stx-null? _tl1727717339_)
                                                  (if (gx#stx-null?
                                                       _tl1727117323_)
                                                      ((lambda (_L17342_
                                                                _L17343_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#identifier-symbol
                                                           _L17343_)
                                                          (gx#stx-e _L17342_)
                                                          _unchecked?17253_))
                                                       _hd1727617337_
                                                       _hd1726717313_)
                                                      (_g1725517289_
                                                       _g1725717292_))
                                                  (_g1725517289_
                                                   _g1725717292_))))
                                          (_g1725517289_ _g1725717292_))
                                      (_g1725517289_ _g1725717292_))
                                  (_g1725517289_ _g1725717292_))))
                          (_g1725517289_ _g1725717292_))))
                  (_g1725517289_ _g1725717292_))
              (_g1725517289_ _g1725717292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1725517289_ _g1725717292_))
                                          (_g1725517289_ _g1725717292_))
                                      (_g1725517289_ _g1725717292_))))
                              (_g1725517289_ _g1725717292_))))
                      (_g1725517289_ _g1725717292_)))))
          (_g1725417365_ _args17252_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17371_ _args17372_)
          (let ((_unchecked?17374_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17371_
             _args17372_
             _unchecked?17374_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27459_
          (let ((_g27458_ (length _g27459_)))
            (cond ((fx= _g27458_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27459_))
                  ((fx= _g27458_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27459_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27459_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17121_ _args17122_ _unchecked?17123_)
        (let* ((_g1712617152_
                (lambda (_g1712717149_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1712717149_)))
               (_g1712517159_ (lambda (_g1712717155_) ((lambda () '#f))))
               (_g1712417235_
                (lambda (_g1712717162_)
                  (if (gx#stx-pair? _g1712717162_)
                      (let ((_e1713017164_ (gx#stx-e _g1712717162_)))
                        (let ((_hd1713117167_ (##car _e1713017164_))
                              (_tl1713217169_ (##cdr _e1713017164_)))
                          (if (gx#stx-pair? _hd1713117167_)
                              (let ((_e1713317172_ (gx#stx-e _hd1713117167_)))
                                (let ((_hd1713417175_ (##car _e1713317172_))
                                      (_tl1713517177_ (##cdr _e1713317172_)))
                                  (if (gx#identifier? _hd1713417175_)
                                      (if (gx#stx-eq? '%#ref _hd1713417175_)
                                          (if (gx#stx-pair? _tl1713517177_)
                                              (let ((_e1713617180_
                                                     (gx#stx-e
                                                      _tl1713517177_)))
                                                (let ((_hd1713717183_
                                                       (##car _e1713617180_))
                                                      (_tl1713817185_
                                                       (##cdr _e1713617180_)))
                                                  (if (gx#stx-null?
                                                       _tl1713817185_)
                                                      (if (gx#stx-pair?
                                                           _tl1713217169_)
                                                          (let ((_e1713917188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1713217169_)))
                    (let ((_hd1714017191_ (##car _e1713917188_))
                          (_tl1714117193_ (##cdr _e1713917188_)))
                      (if (gx#stx-pair? _hd1714017191_)
                          (let ((_e1714217196_ (gx#stx-e _hd1714017191_)))
                            (let ((_hd1714317199_ (##car _e1714217196_))
                                  (_tl1714417201_ (##cdr _e1714217196_)))
                              (if (gx#identifier? _hd1714317199_)
                                  (if (gx#stx-eq? '%#quote _hd1714317199_)
                                      (if (gx#stx-pair? _tl1714417201_)
                                          (let ((_e1714517204_
                                                 (gx#stx-e _tl1714417201_)))
                                            (let ((_hd1714617207_
                                                   (##car _e1714517204_))
                                                  (_tl1714717209_
                                                   (##cdr _e1714517204_)))
                                              (if (gx#stx-null? _tl1714717209_)
                                                  (if (gx#stx-null?
                                                       _tl1714117193_)
                                                      ((lambda (_L17212_
                                                                _L17213_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#identifier-symbol
                                                           _L17213_)
                                                          (gx#stx-e _L17212_)
                                                          _unchecked?17123_))
                                                       _hd1714617207_
                                                       _hd1713717183_)
                                                      (_g1712517159_
                                                       _g1712717162_))
                                                  (_g1712517159_
                                                   _g1712717162_))))
                                          (_g1712517159_ _g1712717162_))
                                      (_g1712517159_ _g1712717162_))
                                  (_g1712517159_ _g1712717162_))))
                          (_g1712517159_ _g1712717162_))))
                  (_g1712517159_ _g1712717162_))
              (_g1712517159_ _g1712717162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1712517159_ _g1712717162_))
                                          (_g1712517159_ _g1712717162_))
                                      (_g1712517159_ _g1712717162_))))
                              (_g1712517159_ _g1712717162_))))
                      (_g1712517159_ _g1712717162_)))))
          (_g1712417235_ _args17122_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17241_ _args17242_)
          (let ((_unchecked?17244_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17241_
             _args17242_
             _unchecked?17244_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27461_
          (let ((_g27460_ (length _g27461_)))
            (cond ((fx= _g27460_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27461_))
                  ((fx= _g27460_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27461_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27461_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17117_ _args17118_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17117_
       _args17118_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17114_ _args17115_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17114_
       _args17115_
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
    (lambda (_stx17063_)
      (let* ((_g1706517078_
              (lambda (_g1706617075_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1706617075_)))
             (_g1706417111_
              (lambda (_g1706617081_)
                (if (gx#stx-pair? _g1706617081_)
                    (let ((_e1706817083_ (gx#stx-e _g1706617081_)))
                      (let ((_hd1706917086_ (##car _e1706817083_))
                            (_tl1707017088_ (##cdr _e1706817083_)))
                        (if (gx#stx-pair? _tl1707017088_)
                            (let ((_e1707117091_ (gx#stx-e _tl1707017088_)))
                              (let ((_hd1707217094_ (##car _e1707117091_))
                                    (_tl1707317096_ (##cdr _e1707117091_)))
                                (if (gx#stx-null? _tl1707317096_)
                                    ((lambda (_L17099_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L17099_)))
                                     _hd1707217094_)
                                    (_g1706517078_ _g1706617081_))))
                            (_g1706517078_ _g1706617081_))))
                    (_g1706517078_ _g1706617081_)))))
        (_g1706417111_ _stx17063_))))
  (define gxc#optimize-call%
    (lambda (_stx16969_)
      (let* ((_g1697216992_
              (lambda (_g1697316989_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1697316989_)))
             (_g1697116999_
              (lambda (_g1697316995_)
                ((lambda () (gxc#xform-call% _stx16969_)))))
             (_g1697017060_
              (lambda (_g1697317002_)
                (if (gx#stx-pair? _g1697317002_)
                    (let ((_e1697617004_ (gx#stx-e _g1697317002_)))
                      (let ((_hd1697717007_ (##car _e1697617004_))
                            (_tl1697817009_ (##cdr _e1697617004_)))
                        (if (gx#stx-pair? _tl1697817009_)
                            (let ((_e1697917012_ (gx#stx-e _tl1697817009_)))
                              (let ((_hd1698017015_ (##car _e1697917012_))
                                    (_tl1698117017_ (##cdr _e1697917012_)))
                                (if (gx#stx-pair? _hd1698017015_)
                                    (let ((_e1698217020_
                                           (gx#stx-e _hd1698017015_)))
                                      (let ((_hd1698317023_
                                             (##car _e1698217020_))
                                            (_tl1698417025_
                                             (##cdr _e1698217020_)))
                                        (if (gx#identifier? _hd1698317023_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1698317023_)
                                                (if (gx#stx-pair?
                                                     _tl1698417025_)
                                                    (let ((_e1698517028_
                                                           (gx#stx-e
                                                            _tl1698417025_)))
                                                      (let ((_hd1698617031_
                                                             (##car _e1698517028_))
                                                            (_tl1698717033_
                                                             (##cdr _e1698517028_)))
                                                        (if (gx#stx-null?
                                                             _tl1698717033_)
                                                            ((lambda (_L17036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17037_)
                       (let* ((_rator-id17055_
                               (gxc#identifier-symbol _L17037_))
                              (_rator-type17057_
                               (gxc#optimizer-resolve-type _rator-id17055_)))
                         (if (##structure-instance-of?
                              _rator-type17057_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17055_
                                '" => "
                                _rator-type17057_
                                '" "
                                (##structure-ref
                                 _rator-type17057_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17057_
                                'optimize-call
                                _stx16969_
                                _L17036_))
                             (if (not _rator-type17057_)
                                 (gxc#xform-call% _stx16969_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx16969_
                                  _rator-type17057_)))))
                     _tl1698117017_
                     _hd1698617031_)
                    (_g1697116999_ _g1697317002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1697116999_
                                                     _g1697317002_))
                                                (_g1697116999_ _g1697317002_))
                                            (_g1697116999_ _g1697317002_))))
                                    (_g1697116999_ _g1697317002_))))
                            (_g1697116999_ _g1697317002_))))
                    (_g1697116999_ _g1697317002_)))))
        (_g1697017060_ _stx16969_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self16823_ _stx16824_ _args16825_)
      (let* ((_self1682616832_ _self16823_)
             (_E1682816836_
              (lambda () (error '"No clause matching" _self1682616832_)))
             (_K1682916961_
              (lambda (_struct-t16839_)
                (let* ((_struct-type16841_
                        (gxc#optimizer-resolve-type _struct-t16839_))
                       (_struct-type1684216856_ _struct-type16841_)
                       (_E1684616860_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1684216856_)))
                       (_else1684516864_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16824_
                           _struct-t16839_
                           _struct-type16841_)))
                       (_try-match1684416872_
                        (lambda ()
                          (let ((_K1684716869_
                                 (lambda () (gxc#xform-call% _stx16824_))))
                            (if (##eq? _struct-type1684216856_ '#f)
                                (_K1684716869_)
                                (_else1684516864_)))))
                       (_K1684816936_
                        (lambda (_plist16875_ _struct-type-id16876_)
                          (let* ((_g1687916889_
                                  (lambda (_g1688016886_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1688016886_)))
                                 (_g1687816896_
                                  (lambda (_g1688016892_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx16824_)))))
                                 (_g1687716933_
                                  (lambda (_g1688016899_)
                                    (if (gx#stx-pair? _g1688016899_)
                                        (let ((_e1688216901_
                                               (gx#stx-e _g1688016899_)))
                                          (let ((_hd1688316904_
                                                 (##car _e1688216901_))
                                                (_tl1688416906_
                                                 (##cdr _e1688216901_)))
                                            (if (gx#stx-null? _tl1688416906_)
                                                ((lambda (_L16909_)
                                                   (let ((_expr16930_
                                                          (gxc#compile-e
                                                           _L16909_))
                                                         (_op16931_
                                                          (if (if _plist16875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist16875_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op16931_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id16876_ '()))
                          (cons _expr16930_ '())))
              _stx16824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1688316904_)
                                                (_g1687816896_
                                                 _g1688016899_))))
                                        (_g1687816896_ _g1688016899_)))))
                            (_g1687716933_ _args16825_)))))
                  (if (##structure-instance-of?
                       _struct-type1684216856_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1684916939_
                              (##vector-ref _struct-type1684216856_ '1))
                             (_struct-type-id16942_ _e1684916939_)
                             (_e1685016944_
                              (##vector-ref _struct-type1684216856_ '2))
                             (_e1685116947_
                              (##vector-ref _struct-type1684216856_ '3))
                             (_e1685216950_
                              (##vector-ref _struct-type1684216856_ '4))
                             (_e1685316953_
                              (##vector-ref _struct-type1684216856_ '5))
                             (_e1685416956_
                              (##vector-ref _struct-type1684216856_ '6))
                             (_plist16959_ _e1685416956_))
                        (_K1684816936_ _plist16959_ _struct-type-id16942_))
                      (_try-match1684416872_))))))
        (if (##structure-instance-of?
             _self1682616832_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1683016964_ (##vector-ref _self1682616832_ '1))
                   (_struct-t16967_ _e1683016964_))
              (_K1682916961_ _struct-t16967_))
            (_E1682816836_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self16597_ _stx16598_ _args16599_)
      (let* ((_self1660016606_ _self16597_)
             (_E1660216610_
              (lambda () (error '"No clause matching" _self1660016606_)))
             (_K1660316693_
              (lambda (_struct-t16613_)
                (let* ((_struct-type16615_
                        (gxc#optimizer-resolve-type _struct-t16613_))
                       (_struct-type1661616629_ _struct-type16615_)
                       (_E1662016633_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1661616629_)))
                       (_else1661916637_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx16598_
                           _struct-t16613_
                           _struct-type16615_)))
                       (_try-match1661816645_
                        (lambda ()
                          (let ((_K1662116642_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t16613_)
                                     (gxc#xform-call% _stx16598_)))))
                            (if (##eq? _struct-type1661616629_ '#f)
                                (_K1662116642_)
                                (_else1661916637_)))))
                       (_K1662216667_
                        (lambda (_ctor16648_
                                 _xfields16649_
                                 _fields16650_
                                 _type-id16651_)
                          (let* ((_args16653_ (map gxc#compile-e _args16599_))
                                 (_$e16655_
                                  (if _ctor16648_
                                      (if _xfields16649_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type16615_
                                           _ctor16648_)
                                          '#f)
                                      '#f)))
                            (if _$e16655_
                                ((lambda (_kons16658_)
                                   (let ((_$obj16660_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj16660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t16613_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields16650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields16649_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#begin
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref (cons _kons16658_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj16660_ '()))
                                                _args16653_)))
                              _stx16598_))
                            (cons (cons '%#ref (cons _$obj16660_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx16598_)))
                                 _$e16655_)
                                (if (let ((_$e16662_ _ctor16648_))
                                      (if _$e16662_
                                          _$e16662_
                                          (not _xfields16649_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t16613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args16653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx16598_)
                                    (let ((_arity16665_
                                           (fx+ _fields16650_ _xfields16649_)))
                                      (if (fx= _arity16665_
                                               (length _args16653_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t16613_ '())) _args16653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx16598_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx16598_
                                           _struct-t16613_
                                           _arity16665_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1661616629_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1662316670_
                              (##vector-ref _struct-type1661616629_ '1))
                             (_type-id16673_ _e1662316670_)
                             (_e1662416675_
                              (##vector-ref _struct-type1661616629_ '2))
                             (_e1662516678_
                              (##vector-ref _struct-type1661616629_ '3))
                             (_fields16681_ _e1662516678_)
                             (_e1662616683_
                              (##vector-ref _struct-type1661616629_ '4))
                             (_xfields16686_ _e1662616683_)
                             (_e1662716688_
                              (##vector-ref _struct-type1661616629_ '5))
                             (_ctor16691_ _e1662716688_))
                        (_K1662216667_
                         _ctor16691_
                         _xfields16686_
                         _fields16681_
                         _type-id16673_))
                      (_try-match1661816645_))))))
        (if (##structure-instance-of?
             _self1660016606_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1660416696_ (##vector-ref _self1660016606_ '1))
                   (_struct-t16699_ _e1660416696_))
              (_K1660316693_ _struct-t16699_))
            (_E1660216610_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16308_ _stx16309_ _args16310_)
      (let* ((_self1631116319_ _self16308_)
             (_E1631316323_
              (lambda () (error '"No clause matching" _self1631116319_)))
             (_K1631416457_
              (lambda (_unchecked?16326_ _off16327_ _struct-t16328_)
                (let* ((_struct-type16330_
                        (gxc#optimizer-resolve-type _struct-t16328_))
                       (_struct-type1633116345_ _struct-type16330_)
                       (_E1633516349_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1633116345_)))
                       (_else1633416353_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16309_
                           _struct-t16328_
                           _struct-type16330_)))
                       (_try-match1633316361_
                        (lambda ()
                          (let ((_K1633616358_
                                 (lambda () (gxc#xform-call% _stx16309_))))
                            (if (##eq? _struct-type1633116345_ '#f)
                                (_K1633616358_)
                                (_else1633416353_)))))
                       (_K1633716428_
                        (lambda (_plist16364_
                                 _xfields16365_
                                 _fields16366_
                                 _struct-type-id16367_)
                          (if _xfields16365_
                              (let* ((_g1637016380_
                                      (lambda (_g1637116377_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1637116377_)))
                                     (_g1636916387_
                                      (lambda (_g1637116383_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16309_)))))
                                     (_g1636816425_
                                      (lambda (_g1637116390_)
                                        (if (gx#stx-pair? _g1637116390_)
                                            (let ((_e1637316392_
                                                   (gx#stx-e _g1637116390_)))
                                              (let ((_hd1637416395_
                                                     (##car _e1637316392_))
                                                    (_tl1637516397_
                                                     (##cdr _e1637316392_)))
                                                (if (gx#stx-null?
                                                     _tl1637516397_)
                                                    ((lambda (_L16400_)
                                                       (let ((_expr16421_
                                                              (gxc#compile-e
                                                               _L16400_))
                                                             (_off16422_
                                                              (fx+ _off16327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16365_
                           '1))
                     (_op16423_
                      (if _unchecked?16326_
                          '%#struct-unchecked-ref
                          (if (if _plist16364_
                                  (assgetq 'final: _plist16364_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16423_
                        (cons (cons '%#ref (cons _struct-t16328_ '()))
                              (cons (cons '%#quote (cons _off16422_ '()))
                                    (cons _expr16421_ '()))))
                  _stx16309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1637416395_)
                                                    (_g1636916387_
                                                     _g1637116390_))))
                                            (_g1636916387_ _g1637116390_)))))
                                (_g1636816425_ _args16310_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16367_)
                                (gxc#xform-call% _stx16309_))))))
                  (if (##structure-instance-of?
                       _struct-type1633116345_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1633816431_
                              (##vector-ref _struct-type1633116345_ '1))
                             (_struct-type-id16434_ _e1633816431_)
                             (_e1633916436_
                              (##vector-ref _struct-type1633116345_ '2))
                             (_e1634016439_
                              (##vector-ref _struct-type1633116345_ '3))
                             (_fields16442_ _e1634016439_)
                             (_e1634116444_
                              (##vector-ref _struct-type1633116345_ '4))
                             (_xfields16447_ _e1634116444_)
                             (_e1634216449_
                              (##vector-ref _struct-type1633116345_ '5))
                             (_e1634316452_
                              (##vector-ref _struct-type1633116345_ '6))
                             (_plist16455_ _e1634316452_))
                        (_K1633716428_
                         _plist16455_
                         _xfields16447_
                         _fields16442_
                         _struct-type-id16434_))
                      (_try-match1633316361_))))))
        (if (##structure-instance-of?
             _self1631116319_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1631516460_ (##vector-ref _self1631116319_ '1))
                   (_struct-t16463_ _e1631516460_)
                   (_e1631616465_ (##vector-ref _self1631116319_ '2))
                   (_off16468_ _e1631616465_)
                   (_e1631716470_ (##vector-ref _self1631116319_ '3))
                   (_unchecked?16473_ _e1631716470_))
              (_K1631416457_ _unchecked?16473_ _off16468_ _struct-t16463_))
            (_E1631316323_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self16002_ _stx16003_ _args16004_)
      (let* ((_self1600516013_ _self16002_)
             (_E1600716017_
              (lambda () (error '"No clause matching" _self1600516013_)))
             (_K1600816168_
              (lambda (_unchecked?16020_ _off16021_ _struct-t16022_)
                (let* ((_struct-type16024_
                        (gxc#optimizer-resolve-type _struct-t16022_))
                       (_struct-type1602516039_ _struct-type16024_)
                       (_E1602916043_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1602516039_)))
                       (_else1602816047_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16003_
                           _struct-t16022_
                           _struct-type16024_)))
                       (_try-match1602716055_
                        (lambda ()
                          (let ((_K1603016052_
                                 (lambda () (gxc#xform-call% _stx16003_))))
                            (if (##eq? _struct-type1602516039_ '#f)
                                (_K1603016052_)
                                (_else1602816047_)))))
                       (_K1603116139_
                        (lambda (_plist16058_
                                 _xfields16059_
                                 _fields16060_
                                 _struct-type-id16061_)
                          (if _xfields16059_
                              (let* ((_g1606416078_
                                      (lambda (_g1606516075_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1606516075_)))
                                     (_g1606316085_
                                      (lambda (_g1606516081_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx16003_)))))
                                     (_g1606216136_
                                      (lambda (_g1606516088_)
                                        (if (gx#stx-pair? _g1606516088_)
                                            (let ((_e1606816090_
                                                   (gx#stx-e _g1606516088_)))
                                              (let ((_hd1606916093_
                                                     (##car _e1606816090_))
                                                    (_tl1607016095_
                                                     (##cdr _e1606816090_)))
                                                (if (gx#stx-pair?
                                                     _tl1607016095_)
                                                    (let ((_e1607116098_
                                                           (gx#stx-e
                                                            _tl1607016095_)))
                                                      (let ((_hd1607216101_
                                                             (##car _e1607116098_))
                                                            (_tl1607316103_
                                                             (##cdr _e1607116098_)))
                                                        (if (gx#stx-null?
                                                             _tl1607316103_)
                                                            ((lambda (_L16106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16107_)
                       (let ((_expr16131_ (gxc#compile-e _L16107_))
                             (_val16132_ (gxc#compile-e _L16106_))
                             (_off16133_ (fx+ _off16021_ _xfields16059_ '1))
                             (_op16134_
                              (if _unchecked?16020_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16058_
                                          (assgetq 'final: _plist16058_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16134_
                                (cons (cons '%#ref (cons _struct-t16022_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16133_ '()))
                                            (cons _expr16131_
                                                  (cons _val16132_ '())))))
                          _stx16003_)))
                     _hd1607216101_
                     _hd1606916093_)
                    (_g1606316085_ _g1606516088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1606316085_
                                                     _g1606516088_))))
                                            (_g1606316085_ _g1606516088_)))))
                                (_g1606216136_ _args16004_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16061_)
                                (gxc#xform-call% _stx16003_))))))
                  (if (##structure-instance-of?
                       _struct-type1602516039_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1603216142_
                              (##vector-ref _struct-type1602516039_ '1))
                             (_struct-type-id16145_ _e1603216142_)
                             (_e1603316147_
                              (##vector-ref _struct-type1602516039_ '2))
                             (_e1603416150_
                              (##vector-ref _struct-type1602516039_ '3))
                             (_fields16153_ _e1603416150_)
                             (_e1603516155_
                              (##vector-ref _struct-type1602516039_ '4))
                             (_xfields16158_ _e1603516155_)
                             (_e1603616160_
                              (##vector-ref _struct-type1602516039_ '5))
                             (_e1603716163_
                              (##vector-ref _struct-type1602516039_ '6))
                             (_plist16166_ _e1603716163_))
                        (_K1603116139_
                         _plist16166_
                         _xfields16158_
                         _fields16153_
                         _struct-type-id16145_))
                      (_try-match1602716055_))))))
        (if (##structure-instance-of?
             _self1600516013_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1600916171_ (##vector-ref _self1600516013_ '1))
                   (_struct-t16174_ _e1600916171_)
                   (_e1601016176_ (##vector-ref _self1600516013_ '2))
                   (_off16179_ _e1601016176_)
                   (_e1601116181_ (##vector-ref _self1600516013_ '3))
                   (_unchecked?16184_ _e1601116181_))
              (_K1600816168_ _unchecked?16184_ _off16179_ _struct-t16174_))
            (_E1600716017_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self15836_ _stx15837_ _args15838_)
      (let* ((_self1583915848_ _self15836_)
             (_E1584115852_
              (lambda () (error '"No clause matching" _self1583915848_)))
             (_K1584215859_
              (lambda (_inline15855_ _dispatch15856_ _arity15857_)
                (begin
                  (if (gxc#!lambda-arity-match? _self15836_ _args15838_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx15837_
                       _arity15857_))
                  (if _inline15855_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline15855_ _stx15837_)
                          _stx15837_)))
                      (if _dispatch15856_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch15856_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch15856_ '()))
                                          _args15838_))
                              _stx15837_)))
                          (gxc#xform-call% _stx15837_)))))))
        (if (##structure-instance-of?
             _self1583915848_
             (##type-id gxc#!lambda::t))
            (let* ((_e1584315862_ (##vector-ref _self1583915848_ '1))
                   (_e1584415865_ (##vector-ref _self1583915848_ '2))
                   (_arity15868_ _e1584415865_)
                   (_e1584515870_ (##vector-ref _self1583915848_ '3))
                   (_dispatch15873_ _e1584515870_)
                   (_e1584615875_ (##vector-ref _self1583915848_ '4))
                   (_inline15878_ _e1584615875_))
              (_K1584215859_ _inline15878_ _dispatch15873_ _arity15868_))
            (_E1584115852_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self15675_ _stx15676_ _args15677_)
      (let* ((_self1567815685_ _self15675_)
             (_E1568015689_
              (lambda () (error '"No clause matching" _self1567815685_)))
             (_K1568115703_
              (lambda (_clauses15692_)
                (let ((_$e15698_
                       (find (lambda (_g1569315695_)
                               (gxc#!lambda-arity-match?
                                _g1569315695_
                                _args15677_))
                             _clauses15692_)))
                  (if _$e15698_
                      ((lambda (_clause15701_)
                         (call-method
                          _clause15701_
                          'optimize-call
                          _stx15676_
                          _args15677_))
                       _$e15698_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx15676_
                       (map gxc#!lambda-arity _clauses15692_)))))))
        (if (##structure-instance-of?
             _self1567815685_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1568215706_ (##vector-ref _self1567815685_ '1))
                   (_e1568315709_ (##vector-ref _self1567815685_ '2))
                   (_clauses15712_ _e1568315709_))
              (_K1568115703_ _clauses15712_))
            (_E1568015689_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15489_ _args15490_)
      (let* ((_self1549115498_ _self15489_)
             (_E1549315502_
              (lambda () (error '"No clause matching" _self1549115498_)))
             (_K1549415542_
              (lambda (_arity15505_)
                (let* ((_arity1550615515_ _arity15505_)
                       (_E1550915519_
                        (lambda ()
                          (error '"No clause matching" _arity1550615515_)))
                       (_try-match1550815535_
                        (lambda ()
                          (let ((_K1551015525_
                                 (lambda (_arity15523_)
                                   (fx>= (length _args15490_) _arity15523_))))
                            (if (##pair? _arity1550615515_)
                                (let ((_hd1551115528_
                                       (##car _arity1550615515_))
                                      (_tl1551215530_
                                       (##cdr _arity1550615515_)))
                                  (let ((_arity15533_ _hd1551115528_))
                                    (if (##null? _tl1551215530_)
                                        (_K1551015525_ _arity15533_)
                                        (_E1550915519_))))
                                (_E1550915519_)))))
                       (_K1551315539_
                        (lambda () (fx= (length _args15490_) _arity15505_))))
                  (if (fixnum? _arity1550615515_)
                      (_K1551315539_)
                      (_try-match1550815535_))))))
        (if (##structure-instance-of?
             _self1549115498_
             (##type-id gxc#!lambda::t))
            (let* ((_e1549515545_ (##vector-ref _self1549115498_ '1))
                   (_e1549615548_ (##vector-ref _self1549115498_ '2))
                   (_arity15551_ _e1549615548_))
              (_K1549415542_ _arity15551_))
            (_E1549315502_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15374_ _stx15375_ _args15376_)
      (let* ((_self1537715385_ _self15374_)
             (_E1537915389_
              (lambda () (error '"No clause matching" _self1537715385_)))
             (_K1538015473_
              (lambda (_dispatch15392_ _table15393_)
                (let* ((_g1539415403_
                        (gxc#optimizer-lookup-type _dispatch15392_))
                       (_E1539715407_
                        (lambda ()
                          (error '"No clause matching" _g1539415403_)))
                       (_else1539615411_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15392_)
                            (gxc#xform-call% _stx15375_))))
                       (_K1539815457_
                        (lambda (_main15414_ _keys15415_)
                          (let ((_g27462_
                                 (gxc#!kw-lambda-split-args
                                  _stx15375_
                                  _args15376_)))
                            (begin
                              (let ((_g27463_ (values-count _g27462_)))
                                (if (not (fx= _g27463_ 2))
                                    (error "Context expects 2 values"
                                           _g27463_)))
                              (let ((_pargs15417_ (values-ref _g27462_ 0))
                                    (_kwargs15418_ (values-ref _g27462_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15414_)
                                  (if _table15393_
                                      (let ((_xargs15425_
                                             (map (lambda (_key15420_)
                                                    (let ((_$e15422_
                                                           (assgetq _key15420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15418_)))
              (if _$e15422_ (values _$e15422_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15415_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15427_)
                                             (if (memq (car _kw15427_)
                                                       _keys15415_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx15375_
                                                  _keys15415_
                                                  _kw15427_)))
                                           _kwargs15418_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15417_ _xargs15425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15375_))))
                                      (let* ((_kwt15429_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15432_
                                              (map (lambda (_g27464_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15418_))
                                             (_kwbind15437_
                                              (map (lambda (_kw15434_
                                                            _kwvar15435_)
                                                     (cons (cons _kwvar15435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15434_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15418_
                                                   _kwvars15432_))
                                             (_kwset15442_
                                              (map (lambda (_kw15439_
                                                            _kwvar15440_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15429_ '()))
                               (cons (cons '%#quote (cons (car _kw15439_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15440_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15418_
                                                   _kwvars15432_))
                                             (_xkwargs15447_
                                              (map (lambda (_kw15444_
                                                            _kwvar15445_)
                                                     (cons (car _kw15444_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15445_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15418_
                                                   _kwvars15432_))
                                             (_xargs15454_
                                              (map (lambda (_key15449_)
                                                     (let ((_$e15451_
                                                            (assgetq _key15449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15447_)))
               (if _$e15451_ (values _$e15451_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15415_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15437_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15429_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15418_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15375_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15414_ '()))
                               (cons (cons '%#ref (cons _kwt15429_ '()))
                                     (foldr1 cons _pargs15417_ _xargs15454_))))
                   _stx15375_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15442_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15375_)))))))))))
                  (if (##structure-instance-of?
                       _g1539415403_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1539915460_ (##vector-ref _g1539415403_ '1))
                             (_e1540015463_ (##vector-ref _g1539415403_ '2))
                             (_keys15466_ _e1540015463_)
                             (_e1540115468_ (##vector-ref _g1539415403_ '3))
                             (_main15471_ _e1540115468_))
                        (_K1539815457_ _main15471_ _keys15466_))
                      (_else1539615411_))))))
        (if (##structure-instance-of?
             _self1537715385_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1538115476_ (##vector-ref _self1537715385_ '1))
                   (_e1538215479_ (##vector-ref _self1537715385_ '2))
                   (_table15482_ _e1538215479_)
                   (_e1538315484_ (##vector-ref _self1537715385_ '3))
                   (_dispatch15487_ _e1538315484_))
              (_K1538015473_ _dispatch15487_ _table15482_))
            (_E1537915389_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx14997_ _args14998_)
      (let _lp15000_ ((_rest15002_ _args14998_)
                      (_pargs15003_ '())
                      (_kwargs15004_ '()))
        (let* ((_g1501015060_
                (lambda (_g1501115057_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1501115057_)))
               (_g1500915067_
                (lambda (_g1501115063_)
                  (if (gx#stx-null? _g1501115063_)
                      ((lambda ()
                         (values (reverse _pargs15003_)
                                 (reverse _kwargs15004_))))
                      (_g1501015060_ _g1501115063_))))
               (_g1500815095_
                (lambda (_g1501115070_)
                  (if (gx#stx-pair? _g1501115070_)
                      (let ((_e1505315072_ (gx#stx-e _g1501115070_)))
                        (let ((_hd1505415075_ (##car _e1505315072_))
                              (_tl1505515077_ (##cdr _e1505315072_)))
                          ((lambda (_L15080_ _L15081_)
                             (_lp15000_
                              _L15080_
                              (cons _L15081_ _pargs15003_)
                              _kwargs15004_))
                           _tl1505515077_
                           _hd1505415075_)))
                      (_g1500915067_ _g1501115070_))))
               (_g1500715153_
                (lambda (_g1501115098_)
                  (if (gx#stx-pair? _g1501115098_)
                      (let ((_e1503915100_ (gx#stx-e _g1501115098_)))
                        (let ((_hd1504015103_ (##car _e1503915100_))
                              (_tl1504115105_ (##cdr _e1503915100_)))
                          (if (gx#stx-pair? _hd1504015103_)
                              (let ((_e1504215108_ (gx#stx-e _hd1504015103_)))
                                (let ((_hd1504315111_ (##car _e1504215108_))
                                      (_tl1504415113_ (##cdr _e1504215108_)))
                                  (if (gx#identifier? _hd1504315111_)
                                      (if (gx#stx-eq? '%#quote _hd1504315111_)
                                          (if (gx#stx-pair? _tl1504415113_)
                                              (let ((_e1504515116_
                                                     (gx#stx-e
                                                      _tl1504415113_)))
                                                (let ((_hd1504615119_
                                                       (##car _e1504515116_))
                                                      (_tl1504715121_
                                                       (##cdr _e1504515116_)))
                                                  (if (gx#stx-null?
                                                       _tl1504715121_)
                                                      (if (gx#stx-pair?
                                                           _tl1504115105_)
                                                          (let ((_e1504815124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1504115105_)))
                    (let ((_hd1504915127_ (##car _e1504815124_))
                          (_tl1505015129_ (##cdr _e1504815124_)))
                      ((lambda (_L15132_ _L15133_ _L15134_)
                         (if (gx#stx-keyword? _L15134_)
                             (let ((_kw15151_ (gx#stx-e _L15134_)))
                               (if (assq _kw15151_ _kwargs15004_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx14997_
                                    _kw15151_)
                                   (_lp15000_
                                    _L15132_
                                    _pargs15003_
                                    (cons (cons _kw15151_ _L15133_)
                                          _kwargs15004_))))
                             (_g1500815095_ _g1501115098_)))
                       _tl1505015129_
                       _hd1504915127_
                       _hd1504615119_)))
                  (_g1500815095_ _g1501115098_))
              (_g1500815095_ _g1501115098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1500815095_ _g1501115098_))
                                          (_g1500815095_ _g1501115098_))
                                      (_g1500815095_ _g1501115098_))))
                              (_g1500815095_ _g1501115098_))))
                      (_g1500815095_ _g1501115098_))))
               (_g1500615195_
                (lambda (_g1501115156_)
                  (if (gx#stx-pair? _g1501115156_)
                      (let ((_e1502715158_ (gx#stx-e _g1501115156_)))
                        (let ((_hd1502815161_ (##car _e1502715158_))
                              (_tl1502915163_ (##cdr _e1502715158_)))
                          (if (gx#stx-pair? _hd1502815161_)
                              (let ((_e1503015166_ (gx#stx-e _hd1502815161_)))
                                (let ((_hd1503115169_ (##car _e1503015166_))
                                      (_tl1503215171_ (##cdr _e1503015166_)))
                                  (if (gx#identifier? _hd1503115169_)
                                      (if (gx#stx-eq? '%#quote _hd1503115169_)
                                          (if (gx#stx-pair? _tl1503215171_)
                                              (let ((_e1503315174_
                                                     (gx#stx-e
                                                      _tl1503215171_)))
                                                (let ((_hd1503415177_
                                                       (##car _e1503315174_))
                                                      (_tl1503515179_
                                                       (##cdr _e1503315174_)))
                                                  (if (gx#stx-datum?
                                                       _hd1503415177_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1503415177_)
                          '#!rest)
                  (if (gx#stx-null? _tl1503515179_)
                      ((lambda (_L15182_)
                         (values (foldl1 cons _L15182_ _pargs15003_)
                                 (reverse _kwargs15004_)))
                       _tl1502915163_)
                      (_g1500715153_ _g1501115156_))
                  (_g1500715153_ _g1501115156_))
              (_g1500715153_ _g1501115156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1500715153_ _g1501115156_))
                                          (_g1500715153_ _g1501115156_))
                                      (_g1500715153_ _g1501115156_))))
                              (_g1500715153_ _g1501115156_))))
                      (_g1500715153_ _g1501115156_))))
               (_g1500515249_
                (lambda (_g1501115198_)
                  (if (gx#stx-pair? _g1501115198_)
                      (let ((_e1501415200_ (gx#stx-e _g1501115198_)))
                        (let ((_hd1501515203_ (##car _e1501415200_))
                              (_tl1501615205_ (##cdr _e1501415200_)))
                          (if (gx#stx-pair? _hd1501515203_)
                              (let ((_e1501715208_ (gx#stx-e _hd1501515203_)))
                                (let ((_hd1501815211_ (##car _e1501715208_))
                                      (_tl1501915213_ (##cdr _e1501715208_)))
                                  (if (gx#identifier? _hd1501815211_)
                                      (if (gx#stx-eq? '%#quote _hd1501815211_)
                                          (if (gx#stx-pair? _tl1501915213_)
                                              (let ((_e1502015216_
                                                     (gx#stx-e
                                                      _tl1501915213_)))
                                                (let ((_hd1502115219_
                                                       (##car _e1502015216_))
                                                      (_tl1502215221_
                                                       (##cdr _e1502015216_)))
                                                  (if (gx#stx-datum?
                                                       _hd1502115219_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1502115219_)
                          '#!key)
                  (if (gx#stx-null? _tl1502215221_)
                      (if (gx#stx-pair? _tl1501615205_)
                          (let ((_e1502315224_ (gx#stx-e _tl1501615205_)))
                            (let ((_hd1502415227_ (##car _e1502315224_))
                                  (_tl1502515229_ (##cdr _e1502315224_)))
                              ((lambda (_L15232_ _L15233_)
                                 (_lp15000_
                                  _L15232_
                                  (cons _L15233_ _pargs15003_)
                                  _kwargs15004_))
                               _tl1502515229_
                               _hd1502415227_)))
                          (_g1500615195_ _g1501115198_))
                      (_g1500615195_ _g1501115198_))
                  (_g1500615195_ _g1501115198_))
              (_g1500615195_ _g1501115198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1500615195_ _g1501115198_))
                                          (_g1500615195_ _g1501115198_))
                                      (_g1500615195_ _g1501115198_))))
                              (_g1500615195_ _g1501115198_))))
                      (_g1500615195_ _g1501115198_)))))
          (_g1500515249_ _rest15002_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self14993_ _stx14994_ _args14995_) (gxc#xform-call% _stx14994_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#generate-ssxi-module%
    (lambda (_stx14811_)
      (let* ((_g1481314827_
              (lambda (_g1481414824_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1481414824_)))
             (_g1481214868_
              (lambda (_g1481414830_)
                (if (gx#stx-pair? _g1481414830_)
                    (let ((_e1481714832_ (gx#stx-e _g1481414830_)))
                      (let ((_hd1481814835_ (##car _e1481714832_))
                            (_tl1481914837_ (##cdr _e1481714832_)))
                        (if (gx#stx-pair? _tl1481914837_)
                            (let ((_e1482014840_ (gx#stx-e _tl1481914837_)))
                              (let ((_hd1482114843_ (##car _e1482014840_))
                                    (_tl1482214845_ (##cdr _e1482014840_)))
                                ((lambda (_L14848_ _L14849_)
                                   (let* ((_ctx14862_
                                           (gx#syntax-local-e__0 _L14849_))
                                          (_code14864_
                                           (##structure-ref
                                            _ctx14862_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14864_))
                                      gx#current-expander-context
                                      _ctx14862_)))
                                 _tl1482214845_
                                 _hd1482114843_)))
                            (_g1481314827_ _g1481414830_))))
                    (_g1481314827_ _g1481414830_)))))
        (_g1481214868_ _stx14811_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14621_)
      (letrec ((_generate-e14623_
                (lambda (_id14800_)
                  (let* ((_sym14802_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id14800_)
                              '#f))
                         (_$e14804_
                          (if _sym14802_
                              (gxc#optimizer-lookup-type _sym14802_)
                              '#f)))
                    (if _$e14804_
                        ((lambda (_type14807_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14802_)
                             (let ((_typedecl14809_
                                    (call-method _type14807_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14802_
                                           (cons _typedecl14809_ '()))))))
                         _$e14804_)
                        '(begin))))))
        (let* ((_g1462614664_
                (lambda (_g1462714661_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1462714661_)))
               (_g1462514745_
                (lambda (_g1462714667_)
                  (if (gx#stx-pair? _g1462714667_)
                      (let ((_e1464214669_ (gx#stx-e _g1462714667_)))
                        (let ((_hd1464314672_ (##car _e1464214669_))
                              (_tl1464414674_ (##cdr _e1464214669_)))
                          (if (gx#stx-pair? _tl1464414674_)
                              (let ((_e1464514677_ (gx#stx-e _tl1464414674_)))
                                (let ((_hd1464614680_ (##car _e1464514677_))
                                      (_tl1464714682_ (##cdr _e1464514677_)))
                                  (if (gx#stx-pair/null? _hd1464614680_)
                                      (if (fx>= (gx#stx-length _hd1464614680_)
                                                '0)
                                          (let ((_g27465_
                                                 (gx#syntax-split-splice
                                                  _hd1464614680_
                                                  '0)))
                                            (begin
                                              (let ((_g27466_
                                                     (values-count _g27465_)))
                                                (if (not (fx= _g27466_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27466_)))
                                              (let ((_target1464814685_
                                                     (values-ref _g27465_ 0))
                                                    (_tl1465014687_
                                                     (values-ref _g27465_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1465014687_)
                                                    (letrec ((_loop1465114690_
                                                              (lambda (_hd1464914693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1465514695_)
                        (if (gx#stx-pair? _hd1464914693_)
                            (let ((_e1465214698_ (gx#stx-e _hd1464914693_)))
                              (let ((_lp-hd1465314701_ (##car _e1465214698_))
                                    (_lp-tl1465414703_ (##cdr _e1465214698_)))
                                (_loop1465114690_
                                 _lp-tl1465414703_
                                 (cons _lp-hd1465314701_ _id1465514695_))))
                            (let ((_id1465614706_ (reverse _id1465514695_)))
                              (if (gx#stx-pair? _tl1464714682_)
                                  (let ((_e1465714709_
                                         (gx#stx-e _tl1464714682_)))
                                    (let ((_hd1465814712_
                                           (##car _e1465714709_))
                                          (_tl1465914714_
                                           (##cdr _e1465714709_)))
                                      (if (gx#stx-null? _tl1465914714_)
                                          ((lambda (_L14717_)
                                             (let ((_types14743_
                                                    (map _generate-e14623_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1473514738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1473614740_)
                             (cons _g1473514738_ _g1473614740_))
                           '()
                           _L14717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14743_)))
                                           _id1465614706_)
                                          (_g1462614664_ _g1462714667_))))
                                  (_g1462614664_ _g1462714667_)))))))
              (_loop1465114690_ _target1464814685_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1462614664_
                                                     _g1462714667_)))))
                                          (_g1462614664_ _g1462714667_))
                                      (_g1462614664_ _g1462714667_))))
                              (_g1462614664_ _g1462714667_))))
                      (_g1462614664_ _g1462714667_))))
               (_g1462414797_
                (lambda (_g1462714748_)
                  (if (gx#stx-pair? _g1462714748_)
                      (let ((_e1462914750_ (gx#stx-e _g1462714748_)))
                        (let ((_hd1463014753_ (##car _e1462914750_))
                              (_tl1463114755_ (##cdr _e1462914750_)))
                          (if (gx#stx-pair? _tl1463114755_)
                              (let ((_e1463214758_ (gx#stx-e _tl1463114755_)))
                                (let ((_hd1463314761_ (##car _e1463214758_))
                                      (_tl1463414763_ (##cdr _e1463214758_)))
                                  (if (gx#stx-pair? _hd1463314761_)
                                      (let ((_e1463514766_
                                             (gx#stx-e _hd1463314761_)))
                                        (let ((_hd1463614769_
                                               (##car _e1463514766_))
                                              (_tl1463714771_
                                               (##cdr _e1463514766_)))
                                          (if (gx#stx-null? _tl1463714771_)
                                              (if (gx#stx-pair? _tl1463414763_)
                                                  (let ((_e1463814774_
                                                         (gx#stx-e
                                                          _tl1463414763_)))
                                                    (let ((_hd1463914777_
                                                           (##car _e1463814774_))
                                                          (_tl1464014779_
                                                           (##cdr _e1463814774_)))
                                                      (if (gx#stx-null?
                                                           _tl1464014779_)
                                                          ((lambda (_L14782_)
                                                             (_generate-e14623_
                                                              _L14782_))
                                                           _hd1463614769_)
                                                          (_g1462514745_
                                                           _g1462714748_))))
                                                  (_g1462514745_
                                                   _g1462714748_))
                                              (_g1462514745_ _g1462714748_))))
                                      (_g1462514745_ _g1462714748_))))
                              (_g1462514745_ _g1462714748_))))
                      (_g1462514745_ _g1462714748_)))))
          (_g1462414797_ _stx14621_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14175_)
      (let* ((_g1417914281_
              (lambda (_g1418014278_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1418014278_)))
             (_g1417814288_ (lambda (_g1418014284_) ((lambda () '(begin)))))
             (_g1417714438_
              (lambda (_g1418014291_)
                (if (gx#stx-pair? _g1418014291_)
                    (let ((_e1423814293_ (gx#stx-e _g1418014291_)))
                      (let ((_hd1423914296_ (##car _e1423814293_))
                            (_tl1424014298_ (##cdr _e1423814293_)))
                        (if (gx#stx-pair? _tl1424014298_)
                            (let ((_e1424114301_ (gx#stx-e _tl1424014298_)))
                              (let ((_hd1424214304_ (##car _e1424114301_))
                                    (_tl1424314306_ (##cdr _e1424114301_)))
                                (if (gx#stx-pair? _hd1424214304_)
                                    (let ((_e1424414309_
                                           (gx#stx-e _hd1424214304_)))
                                      (let ((_hd1424514312_
                                             (##car _e1424414309_))
                                            (_tl1424614314_
                                             (##cdr _e1424414309_)))
                                        (if (gx#identifier? _hd1424514312_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1424514312_)
                                                (if (gx#stx-pair?
                                                     _tl1424614314_)
                                                    (let ((_e1424714317_
                                                           (gx#stx-e
                                                            _tl1424614314_)))
                                                      (let ((_hd1424814320_
                                                             (##car _e1424714317_))
                                                            (_tl1424914322_
                                                             (##cdr _e1424714317_)))
                                                        (if (gx#stx-null?
                                                             _tl1424914322_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1424314306_)
                        (let ((_e1425014325_ (gx#stx-e _tl1424314306_)))
                          (let ((_hd1425114328_ (##car _e1425014325_))
                                (_tl1425214330_ (##cdr _e1425014325_)))
                            (if (gx#stx-pair? _hd1425114328_)
                                (let ((_e1425314333_
                                       (gx#stx-e _hd1425114328_)))
                                  (let ((_hd1425414336_ (##car _e1425314333_))
                                        (_tl1425514338_ (##cdr _e1425314333_)))
                                    (if (gx#identifier? _hd1425414336_)
                                        (if (gx#stx-eq? '%#ref _hd1425414336_)
                                            (if (gx#stx-pair? _tl1425514338_)
                                                (let ((_e1425614341_
                                                       (gx#stx-e
                                                        _tl1425514338_)))
                                                  (let ((_hd1425714344_
                                                         (##car _e1425614341_))
                                                        (_tl1425814346_
                                                         (##cdr _e1425614341_)))
                                                    (if (gx#stx-null?
                                                         _tl1425814346_)
                                                        (if (gx#stx-pair?
                                                             _tl1425214330_)
                                                            (let ((_e1425914349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1425214330_)))
                      (let ((_hd1426014352_ (##car _e1425914349_))
                            (_tl1426114354_ (##cdr _e1425914349_)))
                        (if (gx#stx-pair? _hd1426014352_)
                            (let ((_e1426214357_ (gx#stx-e _hd1426014352_)))
                              (let ((_hd1426314360_ (##car _e1426214357_))
                                    (_tl1426414362_ (##cdr _e1426214357_)))
                                (if (gx#identifier? _hd1426314360_)
                                    (if (gx#stx-eq? '%#quote _hd1426314360_)
                                        (if (gx#stx-pair? _tl1426414362_)
                                            (let ((_e1426514365_
                                                   (gx#stx-e _tl1426414362_)))
                                              (let ((_hd1426614368_
                                                     (##car _e1426514365_))
                                                    (_tl1426714370_
                                                     (##cdr _e1426514365_)))
                                                (if (gx#stx-null?
                                                     _tl1426714370_)
                                                    (if (gx#stx-pair?
                                                         _tl1426114354_)
                                                        (let ((_e1426814373_
                                                               (gx#stx-e
                                                                _tl1426114354_)))
                                                          (let ((_hd1426914376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1426814373_))
                        (_tl1427014378_ (##cdr _e1426814373_)))
                    (if (gx#stx-pair? _hd1426914376_)
                        (let ((_e1427114381_ (gx#stx-e _hd1426914376_)))
                          (let ((_hd1427214384_ (##car _e1427114381_))
                                (_tl1427314386_ (##cdr _e1427114381_)))
                            (if (gx#identifier? _hd1427214384_)
                                (if (gx#stx-eq? '%#ref _hd1427214384_)
                                    (if (gx#stx-pair? _tl1427314386_)
                                        (let ((_e1427414389_
                                               (gx#stx-e _tl1427314386_)))
                                          (let ((_hd1427514392_
                                                 (##car _e1427414389_))
                                                (_tl1427614394_
                                                 (##cdr _e1427414389_)))
                                            (if (gx#stx-null? _tl1427614394_)
                                                (if (gx#stx-null?
                                                     _tl1427014378_)
                                                    ((lambda (_L14397_
                                                              _L14398_
                                                              _L14399_
                                                              _L14400_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#identifier-symbol _L14399_)
                               (cons (gx#stx-e _L14398_)
                                     (cons (gxc#identifier-symbol _L14397_)
                                           (cons '#f '())))))
                   (_g1417814288_ _g1418014291_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1427514392_
                                                     _hd1426614368_
                                                     _hd1425714344_
                                                     _hd1424814320_)
                                                    (_g1417814288_
                                                     _g1418014291_))
                                                (_g1417814288_
                                                 _g1418014291_))))
                                        (_g1417814288_ _g1418014291_))
                                    (_g1417814288_ _g1418014291_))
                                (_g1417814288_ _g1418014291_))))
                        (_g1417814288_ _g1418014291_))))
                (_g1417814288_ _g1418014291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417814288_
                                                     _g1418014291_))))
                                            (_g1417814288_ _g1418014291_))
                                        (_g1417814288_ _g1418014291_))
                                    (_g1417814288_ _g1418014291_))))
                            (_g1417814288_ _g1418014291_))))
                    (_g1417814288_ _g1418014291_))
                (_g1417814288_ _g1418014291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1417814288_ _g1418014291_))
                                            (_g1417814288_ _g1418014291_))
                                        (_g1417814288_ _g1418014291_))))
                                (_g1417814288_ _g1418014291_))))
                        (_g1417814288_ _g1418014291_))
                    (_g1417814288_ _g1418014291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417814288_
                                                     _g1418014291_))
                                                (_g1417814288_ _g1418014291_))
                                            (_g1417814288_ _g1418014291_))))
                                    (_g1417814288_ _g1418014291_))))
                            (_g1417814288_ _g1418014291_))))
                    (_g1417814288_ _g1418014291_))))
             (_g1417614618_
              (lambda (_g1418014441_)
                (if (gx#stx-pair? _g1418014441_)
                    (let ((_e1418614443_ (gx#stx-e _g1418014441_)))
                      (let ((_hd1418714446_ (##car _e1418614443_))
                            (_tl1418814448_ (##cdr _e1418614443_)))
                        (if (gx#stx-pair? _tl1418814448_)
                            (let ((_e1418914451_ (gx#stx-e _tl1418814448_)))
                              (let ((_hd1419014454_ (##car _e1418914451_))
                                    (_tl1419114456_ (##cdr _e1418914451_)))
                                (if (gx#stx-pair? _hd1419014454_)
                                    (let ((_e1419214459_
                                           (gx#stx-e _hd1419014454_)))
                                      (let ((_hd1419314462_
                                             (##car _e1419214459_))
                                            (_tl1419414464_
                                             (##cdr _e1419214459_)))
                                        (if (gx#identifier? _hd1419314462_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1419314462_)
                                                (if (gx#stx-pair?
                                                     _tl1419414464_)
                                                    (let ((_e1419514467_
                                                           (gx#stx-e
                                                            _tl1419414464_)))
                                                      (let ((_hd1419614470_
                                                             (##car _e1419514467_))
                                                            (_tl1419714472_
                                                             (##cdr _e1419514467_)))
                                                        (if (gx#stx-null?
                                                             _tl1419714472_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1419114456_)
                        (let ((_e1419814475_ (gx#stx-e _tl1419114456_)))
                          (let ((_hd1419914478_ (##car _e1419814475_))
                                (_tl1420014480_ (##cdr _e1419814475_)))
                            (if (gx#stx-pair? _hd1419914478_)
                                (let ((_e1420114483_
                                       (gx#stx-e _hd1419914478_)))
                                  (let ((_hd1420214486_ (##car _e1420114483_))
                                        (_tl1420314488_ (##cdr _e1420114483_)))
                                    (if (gx#identifier? _hd1420214486_)
                                        (if (gx#stx-eq? '%#ref _hd1420214486_)
                                            (if (gx#stx-pair? _tl1420314488_)
                                                (let ((_e1420414491_
                                                       (gx#stx-e
                                                        _tl1420314488_)))
                                                  (let ((_hd1420514494_
                                                         (##car _e1420414491_))
                                                        (_tl1420614496_
                                                         (##cdr _e1420414491_)))
                                                    (if (gx#stx-null?
                                                         _tl1420614496_)
                                                        (if (gx#stx-pair?
                                                             _tl1420014480_)
                                                            (let ((_e1420714499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1420014480_)))
                      (let ((_hd1420814502_ (##car _e1420714499_))
                            (_tl1420914504_ (##cdr _e1420714499_)))
                        (if (gx#stx-pair? _hd1420814502_)
                            (let ((_e1421014507_ (gx#stx-e _hd1420814502_)))
                              (let ((_hd1421114510_ (##car _e1421014507_))
                                    (_tl1421214512_ (##cdr _e1421014507_)))
                                (if (gx#identifier? _hd1421114510_)
                                    (if (gx#stx-eq? '%#quote _hd1421114510_)
                                        (if (gx#stx-pair? _tl1421214512_)
                                            (let ((_e1421314515_
                                                   (gx#stx-e _tl1421214512_)))
                                              (let ((_hd1421414518_
                                                     (##car _e1421314515_))
                                                    (_tl1421514520_
                                                     (##cdr _e1421314515_)))
                                                (if (gx#stx-null?
                                                     _tl1421514520_)
                                                    (if (gx#stx-pair?
                                                         _tl1420914504_)
                                                        (let ((_e1421614523_
                                                               (gx#stx-e
                                                                _tl1420914504_)))
                                                          (let ((_hd1421714526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1421614523_))
                        (_tl1421814528_ (##cdr _e1421614523_)))
                    (if (gx#stx-pair? _hd1421714526_)
                        (let ((_e1421914531_ (gx#stx-e _hd1421714526_)))
                          (let ((_hd1422014534_ (##car _e1421914531_))
                                (_tl1422114536_ (##cdr _e1421914531_)))
                            (if (gx#identifier? _hd1422014534_)
                                (if (gx#stx-eq? '%#ref _hd1422014534_)
                                    (if (gx#stx-pair? _tl1422114536_)
                                        (let ((_e1422214539_
                                               (gx#stx-e _tl1422114536_)))
                                          (let ((_hd1422314542_
                                                 (##car _e1422214539_))
                                                (_tl1422414544_
                                                 (##cdr _e1422214539_)))
                                            (if (gx#stx-null? _tl1422414544_)
                                                (if (gx#stx-pair?
                                                     _tl1421814528_)
                                                    (let ((_e1422514547_
                                                           (gx#stx-e
                                                            _tl1421814528_)))
                                                      (let ((_hd1422614550_
                                                             (##car _e1422514547_))
                                                            (_tl1422714552_
                                                             (##cdr _e1422514547_)))
                                                        (if (gx#stx-pair?
                                                             _hd1422614550_)
                                                            (let ((_e1422814555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1422614550_)))
                      (let ((_hd1422914558_ (##car _e1422814555_))
                            (_tl1423014560_ (##cdr _e1422814555_)))
                        (if (gx#identifier? _hd1422914558_)
                            (if (gx#stx-eq? '%#quote _hd1422914558_)
                                (if (gx#stx-pair? _tl1423014560_)
                                    (let ((_e1423114563_
                                           (gx#stx-e _tl1423014560_)))
                                      (let ((_hd1423214566_
                                             (##car _e1423114563_))
                                            (_tl1423314568_
                                             (##cdr _e1423114563_)))
                                        (if (gx#stx-null? _tl1423314568_)
                                            (if (gx#stx-null? _tl1422714552_)
                                                ((lambda (_L14571_
                                                          _L14572_
                                                          _L14573_
                                                          _L14574_
                                                          _L14575_)
                                                   (if (eq? (gxc#identifier-symbol
                                                             _L14575_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14574_)
                           (cons (gx#stx-e _L14573_)
                                 (cons (gxc#identifier-symbol _L14572_)
                                       (cons (gx#stx-e _L14571_) '())))))
               (_g1417714438_ _g1418014441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1423214566_
                                                 _hd1422314542_
                                                 _hd1421414518_
                                                 _hd1420514494_
                                                 _hd1419614470_)
                                                (_g1417714438_ _g1418014441_))
                                            (_g1417714438_ _g1418014441_))))
                                    (_g1417714438_ _g1418014441_))
                                (_g1417714438_ _g1418014441_))
                            (_g1417714438_ _g1418014441_))))
                    (_g1417714438_ _g1418014441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417714438_
                                                     _g1418014441_))
                                                (_g1417714438_
                                                 _g1418014441_))))
                                        (_g1417714438_ _g1418014441_))
                                    (_g1417714438_ _g1418014441_))
                                (_g1417714438_ _g1418014441_))))
                        (_g1417714438_ _g1418014441_))))
                (_g1417714438_ _g1418014441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417714438_
                                                     _g1418014441_))))
                                            (_g1417714438_ _g1418014441_))
                                        (_g1417714438_ _g1418014441_))
                                    (_g1417714438_ _g1418014441_))))
                            (_g1417714438_ _g1418014441_))))
                    (_g1417714438_ _g1418014441_))
                (_g1417714438_ _g1418014441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1417714438_ _g1418014441_))
                                            (_g1417714438_ _g1418014441_))
                                        (_g1417714438_ _g1418014441_))))
                                (_g1417714438_ _g1418014441_))))
                        (_g1417714438_ _g1418014441_))
                    (_g1417714438_ _g1418014441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417714438_
                                                     _g1418014441_))
                                                (_g1417714438_ _g1418014441_))
                                            (_g1417714438_ _g1418014441_))))
                                    (_g1417714438_ _g1418014441_))))
                            (_g1417714438_ _g1418014441_))))
                    (_g1417714438_ _g1418014441_)))))
        (_g1417614618_ _stx14175_))))
  (define gxc#!alias::typedecl
    (lambda (_self14151_)
      (let* ((_self1415214158_ _self14151_)
             (_E1415414162_
              (lambda () (error '"No clause matching" _self1415214158_)))
             (_K1415514167_
              (lambda (_alias-id14165_)
                (cons '@alias (cons _alias-id14165_ '())))))
        (if (##structure-instance-of?
             _self1415214158_
             (##type-id gxc#!alias::t))
            (let* ((_e1415614170_ (##vector-ref _self1415214158_ '1))
                   (_alias-id14173_ _e1415614170_))
              (_K1415514167_ _alias-id14173_))
            (_E1415414162_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13973_)
      (let* ((_self1397413985_ _self13973_)
             (_E1397613989_
              (lambda () (error '"No clause matching" _self1397413985_)))
             (_K1397713998_
              (lambda (_plist13992_
                       _ctor13993_
                       _fields13994_
                       _super13995_
                       _type-id13996_)
                (cons '@struct-type
                      (cons _type-id13996_
                            (cons _super13995_
                                  (cons _fields13994_
                                        (cons _ctor13993_
                                              (cons _plist13992_ '())))))))))
        (if (##structure-instance-of?
             _self1397413985_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1397814001_ (##vector-ref _self1397413985_ '1))
                   (_type-id14004_ _e1397814001_)
                   (_e1397914006_ (##vector-ref _self1397413985_ '2))
                   (_super14009_ _e1397914006_)
                   (_e1398014011_ (##vector-ref _self1397413985_ '3))
                   (_fields14014_ _e1398014011_)
                   (_e1398114016_ (##vector-ref _self1397413985_ '4))
                   (_e1398214019_ (##vector-ref _self1397413985_ '5))
                   (_ctor14022_ _e1398214019_)
                   (_e1398314024_ (##vector-ref _self1397413985_ '6))
                   (_plist14027_ _e1398314024_))
              (_K1397713998_
               _plist14027_
               _ctor14022_
               _fields14014_
               _super14009_
               _type-id14004_))
            (_E1397613989_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13827_)
      (let* ((_self1382813834_ _self13827_)
             (_E1383013838_
              (lambda () (error '"No clause matching" _self1382813834_)))
             (_K1383113843_
              (lambda (_struct-t13841_)
                (cons '@struct-pred (cons _struct-t13841_ '())))))
        (if (##structure-instance-of?
             _self1382813834_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1383213846_ (##vector-ref _self1382813834_ '1))
                   (_struct-t13849_ _e1383213846_))
              (_K1383113843_ _struct-t13849_))
            (_E1383013838_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13681_)
      (let* ((_self1368213688_ _self13681_)
             (_E1368413692_
              (lambda () (error '"No clause matching" _self1368213688_)))
             (_K1368513697_
              (lambda (_struct-t13695_)
                (cons '@struct-cons (cons _struct-t13695_ '())))))
        (if (##structure-instance-of?
             _self1368213688_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1368613700_ (##vector-ref _self1368213688_ '1))
                   (_struct-t13703_ _e1368613700_))
              (_K1368513697_ _struct-t13703_))
            (_E1368413692_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self13521_)
      (let* ((_self1352213530_ _self13521_)
             (_E1352413534_
              (lambda () (error '"No clause matching" _self1352213530_)))
             (_K1352513541_
              (lambda (_unchecked?13537_ _off13538_ _struct-t13539_)
                (cons '@struct-getf
                      (cons _struct-t13539_
                            (cons _off13538_ (cons _unchecked?13537_ '())))))))
        (if (##structure-instance-of?
             _self1352213530_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1352613544_ (##vector-ref _self1352213530_ '1))
                   (_struct-t13547_ _e1352613544_)
                   (_e1352713549_ (##vector-ref _self1352213530_ '2))
                   (_off13552_ _e1352713549_)
                   (_e1352813554_ (##vector-ref _self1352213530_ '3))
                   (_unchecked?13557_ _e1352813554_))
              (_K1352513541_ _unchecked?13557_ _off13552_ _struct-t13547_))
            (_E1352413534_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13361_)
      (let* ((_self1336213370_ _self13361_)
             (_E1336413374_
              (lambda () (error '"No clause matching" _self1336213370_)))
             (_K1336513381_
              (lambda (_unchecked?13377_ _off13378_ _struct-t13379_)
                (cons '@struct-setf
                      (cons _struct-t13379_
                            (cons _off13378_ (cons _unchecked?13377_ '())))))))
        (if (##structure-instance-of?
             _self1336213370_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1336613384_ (##vector-ref _self1336213370_ '1))
                   (_struct-t13387_ _e1336613384_)
                   (_e1336713389_ (##vector-ref _self1336213370_ '2))
                   (_off13392_ _e1336713389_)
                   (_e1336813394_ (##vector-ref _self1336213370_ '3))
                   (_unchecked?13397_ _e1336813394_))
              (_K1336513381_ _unchecked?13397_ _off13392_ _struct-t13387_))
            (_E1336413374_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13187_)
      (let* ((_self1318813198_ _self13187_)
             (_E1319013202_
              (lambda () (error '"No clause matching" _self1318813198_)))
             (_K1319113213_
              (lambda (_typedecl13205_
                       _inline13206_
                       _dispatch13207_
                       _arity13208_)
                (if _inline13206_
                    (let ((_$e13210_ _typedecl13205_))
                      (if _$e13210_
                          _$e13210_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13208_ (cons _dispatch13207_ '())))))))
        (if (##structure-instance-of?
             _self1318813198_
             (##type-id gxc#!lambda::t))
            (let* ((_e1319213216_ (##vector-ref _self1318813198_ '1))
                   (_e1319313219_ (##vector-ref _self1318813198_ '2))
                   (_arity13222_ _e1319313219_)
                   (_e1319413224_ (##vector-ref _self1318813198_ '3))
                   (_dispatch13227_ _e1319413224_)
                   (_e1319513229_ (##vector-ref _self1318813198_ '4))
                   (_inline13232_ _e1319513229_)
                   (_e1319613234_ (##vector-ref _self1318813198_ '5))
                   (_typedecl13237_ _e1319613234_))
              (_K1319113213_
               _typedecl13237_
               _inline13232_
               _dispatch13227_
               _arity13222_))
            (_E1319013202_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12998_)
      (letrec ((_clause-e13000_
                (lambda (_clause13030_)
                  (let* ((_clause1303113039_ _clause13030_)
                         (_E1303313043_
                          (lambda ()
                            (error '"No clause matching" _clause1303113039_)))
                         (_K1303413049_
                          (lambda (_dispatch13046_ _arity13047_)
                            (cons _arity13047_ (cons _dispatch13046_ '())))))
                    (if (##structure-instance-of?
                         _clause1303113039_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1303513052_
                                (##vector-ref _clause1303113039_ '1))
                               (_e1303613055_
                                (##vector-ref _clause1303113039_ '2))
                               (_arity13058_ _e1303613055_)
                               (_e1303713060_
                                (##vector-ref _clause1303113039_ '3))
                               (_dispatch13063_ _e1303713060_))
                          (_K1303413049_ _dispatch13063_ _arity13058_))
                        (_E1303313043_))))))
        (let* ((_self1300113008_ _self12998_)
               (_E1300313012_
                (lambda () (error '"No clause matching" _self1300113008_)))
               (_K1300413019_
                (lambda (_clauses13015_)
                  (let ((_clauses13017_ (map _clause-e13000_ _clauses13015_)))
                    (cons '@case-lambda _clauses13017_)))))
          (if (##structure-instance-of?
               _self1300113008_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1300513022_ (##vector-ref _self1300113008_ '1))
                     (_e1300613025_ (##vector-ref _self1300113008_ '2))
                     (_clauses13028_ _e1300613025_))
                (_K1300413019_ _clauses13028_))
              (_E1300313012_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self12841_)
      (let* ((_self1284212850_ _self12841_)
             (_E1284412854_
              (lambda () (error '"No clause matching" _self1284212850_)))
             (_K1284512860_
              (lambda (_dispatch12857_ _table12858_)
                (cons '@kw-lambda
                      (cons _table12858_ (cons _dispatch12857_ '()))))))
        (if (##structure-instance-of?
             _self1284212850_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1284612863_ (##vector-ref _self1284212850_ '1))
                   (_e1284712866_ (##vector-ref _self1284212850_ '2))
                   (_table12869_ _e1284712866_)
                   (_e1284812871_ (##vector-ref _self1284212850_ '3))
                   (_dispatch12874_ _e1284812871_))
              (_K1284512860_ _dispatch12874_ _table12869_))
            (_E1284412854_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self12684_)
      (let* ((_self1268512693_ _self12684_)
             (_E1268712697_
              (lambda () (error '"No clause matching" _self1268512693_)))
             (_K1268812703_
              (lambda (_main12700_ _keys12701_)
                (cons '@kw-lambda-dispatch
                      (cons _keys12701_ (cons _main12700_ '()))))))
        (if (##structure-instance-of?
             _self1268512693_
             (##type-id gxc#!kw-lambda-primary::t))
            (let* ((_e1268912706_ (##vector-ref _self1268512693_ '1))
                   (_e1269012709_ (##vector-ref _self1268512693_ '2))
                   (_keys12712_ _e1269012709_)
                   (_e1269112714_ (##vector-ref _self1268512693_ '3))
                   (_main12717_ _e1269112714_))
              (_K1268812703_ _main12717_ _keys12712_))
            (_E1268712697_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12560_)
      (if (##structure-direct-instance-of? _stx12560_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx12560_)
          (gx#stx-e _stx12560_)))))
