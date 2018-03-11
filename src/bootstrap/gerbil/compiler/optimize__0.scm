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
    (lambda _$args27352_
      (apply make-struct-instance gxc#optimizer-info::t _$args27352_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27350_)
      (if (##fx< '2 (##vector-length _self27350_))
          (begin
            (##vector-set! _self27350_ '1 (make-hash-table-eq))
            (##vector-set! _self27350_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27350_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27364 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27364) __obj27364))))))
  (define gxc#optimize!
    (lambda (_ctx27222_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27222_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27222_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27225_
                  (gxc#optimize-source
                   (##structure-ref _ctx27222_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27222_
              _code27225_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27167_)
      (letrec* ((_deps27169_
                 (let* ((_imports27213_
                         (##structure-ref
                          _ctx27167_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27215_ (gx#core-context-prelude__% _ctx27167_)))
                   (if _$e27215_
                       ((lambda (_g2721727219_)
                          (cons _g2721727219_ _imports27213_))
                        _$e27215_)
                       _imports27213_))))
        (let _lp27171_ ((_rest27173_ _deps27169_))
          (let* ((_rest2717427182_ _rest27173_)
                 (_E2717727186_
                  (lambda () (error '"No clause matching" _rest2717427182_)))
                 (_else2717627190_ (lambda () '#!void))
                 (_K2717827201_
                  (lambda (_rest27193_ _hd27194_)
                    (if (##structure-instance-of?
                         _hd27194_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27194_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27196_
                                       (gx#core-context-prelude__% _hd27194_)))
                                  (if _$e27196_
                                      ((lambda (_pre27199_)
                                         (_lp27171_
                                          (cons _pre27199_
                                                (##structure-ref
                                                 _hd27194_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27196_)
                                      (_lp27171_
                                       (##structure-ref
                                        _hd27194_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27194_)))
                          (_lp27171_ _rest27193_))
                        (if (##structure-instance-of?
                             _hd27194_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27194_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27171_
                                     (##structure-ref
                                      _hd27194_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27194_)))
                              (_lp27171_ _rest27193_))
                            (if (##structure-direct-instance-of?
                                 _hd27194_
                                 'gx#module-import::t)
                                (_lp27171_
                                 (cons (##direct-structure-ref
                                        _hd27194_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27193_))
                                (if (##structure-direct-instance-of?
                                     _hd27194_
                                     'gx#module-export::t)
                                    (_lp27171_
                                     (cons (##direct-structure-ref
                                            _hd27194_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27193_))
                                    (if (##structure-direct-instance-of?
                                         _hd27194_
                                         'gx#import-set::t)
                                        (_lp27171_
                                         (cons (##direct-structure-ref
                                                _hd27194_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27193_))
                                        (error '"Unexpected module import"
                                               _hd27194_)))))))))
            (if (##pair? _rest2717427182_)
                (let ((_hd2717927204_ (##car _rest2717427182_))
                      (_tl2718027206_ (##cdr _rest2717427182_)))
                  (let* ((_hd27209_ _hd2717927204_)
                         (_rest27211_ _tl2718027206_))
                    (_K2717827201_ _rest27211_ _hd27209_)))
                (_else2717627190_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27147_)
      (if (if (##structure-instance-of? _ctx27147_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27147_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27149_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27151_
                  (##structure-ref _ctx27147_ '1 gx#expander-context::t '#f))
                 (_mod27153_ (table-ref _ht27149_ _id27151_ '#f)))
            (let ((_$e27156_ _mod27153_))
              (if _$e27156_
                  _$e27156_
                  (let* ((_mod27159_ (gxc#optimizer-import-ssxi _ctx27147_))
                         (_val27164_
                          (let ((_$e27161_ _mod27159_))
                            (if _$e27161_ _$e27161_ '#!void))))
                    (begin
                      (table-set! _ht27149_ _id27151_ _val27164_)
                      _val27164_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27124_)
      (letrec ((_catch-e27126_
                (lambda (_exn27145_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27124_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27145_))
                        '#!void)
                    '#f)))
               (_import-e27127_
                (lambda ()
                  (let* ((_str-id27130_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx27124_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27138_
                          (let ((_odir2713127133_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2713127133_
                                (let ((_odir27136_ _odir2713127133_))
                                  (path-expand
                                   (string-append _str-id27130_ '".ss")
                                   _odir27136_))
                                '#f)))
                         (_library-path27140_
                          (string->symbol
                           (string-append '":" _str-id27130_ '".ss")))
                         (_ssxi-path27142_
                          (if (if _artefact-path27138_
                                  (file-exists? _artefact-path27138_)
                                  '#f)
                              _artefact-path27138_
                              _library-path27140_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27142_)
                      (gx#import-module__% _ssxi-path27142_ '#t '#t))))))
        (if (##structure-ref _ctx27124_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27126_ _import-e27127_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27121_
      (apply make-struct-instance gxc#!type::t _$args27121_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27118_
      (apply make-struct-instance gxc#!alias::t _$args27118_)))
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
    (lambda _$args27115_
      (apply make-struct-instance gxc#!struct-type::t _$args27115_)))
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
    (lambda _$args27112_
      (apply make-struct-instance gxc#!procedure::t _$args27112_)))
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
    (lambda _$args27109_
      (apply make-struct-instance gxc#!struct-pred::t _$args27109_)))
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
    (lambda _$args27106_
      (apply make-struct-instance gxc#!struct-cons::t _$args27106_)))
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
    (lambda _$args27103_
      (apply make-struct-instance gxc#!struct-getf::t _$args27103_)))
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
    (lambda _$args27100_
      (apply make-struct-instance gxc#!struct-setf::t _$args27100_)))
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
    (lambda _$args27097_
      (apply make-struct-instance gxc#!lambda::t _$args27097_)))
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
    (lambda _$args27094_
      (apply make-struct-instance gxc#!case-lambda::t _$args27094_)))
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
    (lambda _$args27091_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27091_)))
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
    (lambda _$args27088_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27088_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27080_
             _id27081_
             _super27082_
             _fields27083_
             _xfields27084_
             _ctor27085_
             _plist27086_)
      (if (##fx< '7 (##vector-length _self27080_))
          (begin
            (##vector-set! _self27080_ '1 _id27081_)
            (##vector-set! _self27080_ '2 _super27082_)
            (##vector-set! _self27080_ '3 _fields27083_)
            (##vector-set! _self27080_ '4 _xfields27084_)
            (##vector-set! _self27080_ '5 _ctor27085_)
            (##vector-set! _self27080_ '6 _plist27086_)
            (##vector-set! _self27080_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27080_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self26924_
               _id26925_
               _arity26926_
               _dispatch26927_
               _inline26928_
               _typedecl26929_)
        (if (##fx< '5 (##vector-length _self26924_))
            (begin
              (##vector-set! _self26924_ '1 _id26925_)
              (##vector-set! _self26924_ '2 _arity26926_)
              (##vector-set! _self26924_ '3 _dispatch26927_)
              (##vector-set! _self26924_ '4 _inline26928_)
              (##vector-set! _self26924_ '5 _typedecl26929_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self26924_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self26934_ _id26935_ _arity26936_ _dispatch26937_)
          (let* ((_inline26939_ '#f) (_typedecl26941_ '#f))
            (if (##fx< '5 (##vector-length _self26934_))
                (begin
                  (##vector-set! _self26934_ '1 _id26935_)
                  (##vector-set! _self26934_ '2 _arity26936_)
                  (##vector-set! _self26934_ '3 _dispatch26937_)
                  (##vector-set! _self26934_ '4 _inline26939_)
                  (##vector-set! _self26934_ '5 _typedecl26941_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26934_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self26943_
                 _id26944_
                 _arity26945_
                 _dispatch26946_
                 _inline26947_)
          (let ((_typedecl26949_ '#f))
            (if (##fx< '5 (##vector-length _self26943_))
                (begin
                  (##vector-set! _self26943_ '1 _id26944_)
                  (##vector-set! _self26943_ '2 _arity26945_)
                  (##vector-set! _self26943_ '3 _dispatch26946_)
                  (##vector-set! _self26943_ '4 _inline26947_)
                  (##vector-set! _self26943_ '5 _typedecl26949_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self26943_)))))
      (define gxc#!lambda:::init!
        (lambda _g27372_
          (let ((_g27371_ (length _g27372_)))
            (cond ((fx= _g27371_ 4) (apply gxc#!lambda:::init!__0 _g27372_))
                  ((fx= _g27371_ 5) (apply gxc#!lambda:::init!__1 _g27372_))
                  ((fx= _g27371_ 6)
                   (apply (lambda (_self26951_
                                   _id26952_
                                   _arity26953_
                                   _dispatch26954_
                                   _inline26955_
                                   _typedecl26956_)
                            (if (##fx< '5 (##vector-length _self26951_))
                                (begin
                                  (##vector-set! _self26951_ '1 _id26952_)
                                  (##vector-set! _self26951_ '2 _arity26953_)
                                  (##vector-set!
                                   _self26951_
                                   '3
                                   _dispatch26954_)
                                  (##vector-set! _self26951_ '4 _inline26955_)
                                  (##vector-set!
                                   _self26951_
                                   '5
                                   _typedecl26956_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self26951_)))
                          _g27372_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27372_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type26794_)
      (let ((_$e26796_
             (##structure-ref _type26794_ '7 gxc#!struct-type::t '#f)))
        (if _$e26796_
            (values _$e26796_)
            (let ((_vtab26799_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type26794_
                 _vtab26799_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab26799_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type26785_ _method26786_)
      (let ((_vtab2678726789_
             (##structure-ref _type26785_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2678726789_
            (let ((_vtab26792_ _vtab2678726789_))
              (table-ref _vtab26792_ _method26786_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym26769_ _type26770_ _local?26771_)
        (begin
          (if (##structure-instance-of? _type26770_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym26769_
                     _type26770_))
          (gxc#verbose
           '"declare-type "
           _sym26769_
           '" "
           (struct->list _type26770_))
          (table-set!
           (if _local?26771_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym26769_
           _type26770_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym26776_ _type26777_)
          (let ((_local?26779_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym26776_
             _type26777_
             _local?26779_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27374_
          (let ((_g27373_ (length _g27374_)))
            (cond ((fx= _g27373_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27374_))
                  ((fx= _g27373_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27374_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27374_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t26745_ _method26746_ _sym26747_ _rebind?26748_)
        (let ((_type26750_ (gxc#optimizer-resolve-type _type-t26745_)))
          (if (##structure-instance-of? _type26750_ 'gxc#!struct-type::t)
              (let ((_vtab26752_ (gxc#!struct-type-vtab _type26750_)))
                (if _rebind?26748_
                    (if (hash-key? _vtab26752_ _method26746_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t26745_
                         '" "
                         _method26746_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t26745_
                         '" "
                         _method26746_))
                    (if (hash-key? _vtab26752_ _method26746_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t26745_
                           '" "
                           _method26746_
                           '" => "
                           _sym26747_)
                          (table-set! _vtab26752_ _method26746_ _sym26747_)))))
              (if (not _type26750_)
                  (gxc#verbose '"declare-method: unknown type " _type-t26745_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t26745_
                         _type26750_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t26757_ _method26758_ _sym26759_)
          (let ((_rebind?26761_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t26757_
             _method26758_
             _sym26759_
             _rebind?26761_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27376_
          (let ((_g27375_ (length _g27376_)))
            (cond ((fx= _g27375_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27376_))
                  ((fx= _g27375_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27376_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27376_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym26733_)
      (let ((_$e26741_
             (let ((_ht2673426736_ (gxc#current-compile-local-type)))
               (if _ht2673426736_
                   (let ((_ht26739_ _ht2673426736_))
                     (table-ref _ht26739_ _sym26733_ '#f))
                   '#f))))
        (if _$e26741_
            _$e26741_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym26733_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym26725_)
      (let ((_type2672626728_ (gxc#optimizer-lookup-type _sym26725_)))
        (if _type2672626728_
            (let ((_type26731_ _type2672626728_))
              (if (##structure-instance-of? _type26731_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type26731_ '1 gxc#!type::t '#f))
                  _type26731_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t26720_ _method26721_)
      (let ((_type26723_ (gxc#optimizer-resolve-type _type-t26720_)))
        (if (##structure-instance-of? _type26723_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type26723_ _method26721_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx26716_)
      (begin
        (gxc#apply-collect-mutators _stx26716_)
        (let ((_stx26718_ (gxc#apply-lift-top-lambdas _stx26716_)))
          (begin
            (gxc#apply-collect-type-info _stx26718_)
            (gxc#apply-optimize-call _stx26718_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl26713_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26713_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl26713_ '%#lambda gxc#xform-identity)
           (table-set! _tbl26713_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl26713_ '%#let-values gxc#xform-identity)
           (table-set! _tbl26713_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl26713_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl26713_ '%#quote gxc#xform-identity)
           (table-set! _tbl26713_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26713_ '%#call gxc#xform-identity)
           (table-set! _tbl26713_ '%#if gxc#xform-identity)
           (table-set! _tbl26713_ '%#ref gxc#xform-identity)
           (table-set! _tbl26713_ '%#set! gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl26713_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl26713_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl26713_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl26709_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26709_ '%#begin gxc#xform-identity)
           (table-set! _tbl26709_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl26709_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl26709_ '%#module gxc#xform-identity)
           (table-set! _tbl26709_ '%#import gxc#xform-identity)
           (table-set! _tbl26709_ '%#export gxc#xform-identity)
           (table-set! _tbl26709_ '%#provide gxc#xform-identity)
           (table-set! _tbl26709_ '%#extern gxc#xform-identity)
           (table-set! _tbl26709_ '%#define-values gxc#xform-identity)
           (table-set! _tbl26709_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl26709_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl26709_ '%#declare gxc#xform-identity)
           _tbl26709_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl26705_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26705_ (force gxc#&identity-special-form))
           (hash-copy! _tbl26705_ (force gxc#&identity-expression))
           _tbl26705_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl26701_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl26701_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl26701_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl26701_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl26701_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl26701_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl26701_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl26701_ '%#quote gxc#xform-identity)
           (table-set! _tbl26701_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26701_ '%#call gxc#xform-operands)
           (table-set! _tbl26701_ '%#if gxc#xform-operands)
           (table-set! _tbl26701_ '%#ref gxc#xform-identity)
           (table-set! _tbl26701_ '%#set! gxc#xform-setq%)
           (table-set! _tbl26701_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl26701_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl26701_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl26701_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl26701_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl26701_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl26701_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl26701_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl26701_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl26697_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26697_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl26697_ (force gxc#&identity))
           (table-set! _tbl26697_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26697_ '%#module gxc#xform-module%)
           (table-set! _tbl26697_ '%#define-values gxc#xform-define-values%)
           _tbl26697_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl26693_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26693_ (force gxc#&void))
           (table-set! _tbl26693_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26693_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26693_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26693_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26693_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26693_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl26693_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl26693_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl26693_ '%#call gxc#collect-operands)
           (table-set! _tbl26693_ '%#if gxc#collect-operands)
           (table-set! _tbl26693_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl26693_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl26693_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl26693_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl26693_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl26693_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl26693_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl26693_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl26693_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl26693_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx26686_ . _args26688_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26686_ _args26688_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl26683_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26683_ (force gxc#&basic-xform))
           (table-set!
            _tbl26683_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26683_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26683_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26683_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26683_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26676_ . _args26678_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26676_ _args26678_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl26673_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26673_ (force gxc#&basic-xform-expression))
           (table-set! _tbl26673_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26673_ '%#ref gxc#expression-subst-ref%)
           _tbl26673_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx26666_ . _args26668_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26666_ _args26668_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl26663_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26663_ (force gxc#&void))
           (table-set! _tbl26663_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26663_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26663_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26663_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26663_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26663_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26663_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26663_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26663_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26663_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26663_ '%#if gxc#collect-operands)
           (table-set! _tbl26663_ '%#set! gxc#collect-body-setq%)
           _tbl26663_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26656_ . _args26658_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26656_ _args26658_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl26653_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26653_ (force gxc#&false))
           (table-set! _tbl26653_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26653_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26653_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26653_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl26653_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26653_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26653_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26646_ . _args26648_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26646_ _args26648_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl26643_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26643_ (force gxc#&basic-xform))
           (table-set! _tbl26643_ '%#call gxc#optimize-call%)
           _tbl26643_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx26636_ . _args26638_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26636_ _args26638_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl26633_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26633_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl26633_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl26633_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl26633_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl26633_ '%#call gxc#generate-ssxi-call%)
           _tbl26633_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx26626_ . _args26628_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26626_ _args26628_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx26623_ . _args26624_) _stx26623_))
  (define gxc#xform-wrap-source
    (lambda (_stx26620_ _src-stx26621_)
      (gx#stx-wrap-source _stx26620_ (gx#stx-source _src-stx26621_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args26614_)
      (lambda (_g2661526617_)
        (apply gxc#compile-e _g2661526617_ _args26614_))))
  (define gxc#xform-begin%
    (lambda (_stx26573_ . _args26574_)
      (let* ((_g2657626586_
              (lambda (_g2657726583_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2657726583_)))
             (_g2657526611_
              (lambda (_g2657726589_)
                (if (gx#stx-pair? _g2657726589_)
                    (let ((_e2657926591_ (gx#stx-e _g2657726589_)))
                      (let ((_hd2658026594_ (##car _e2657926591_))
                            (_tl2658126596_ (##cdr _e2657926591_)))
                        ((lambda (_L26599_)
                           (let ((_forms26609_
                                  (map (gxc#xform-apply-compile-e _args26574_)
                                       _L26599_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms26609_)
                              _stx26573_)))
                         _tl2658126596_)))
                    (_g2657626586_ _g2657726589_)))))
        (_g2657526611_ _stx26573_))))
  (define gxc#xform-module%
    (lambda (_stx26510_ . _args26511_)
      (let* ((_g2651326527_
              (lambda (_g2651426524_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2651426524_)))
             (_g2651226570_
              (lambda (_g2651426530_)
                (if (gx#stx-pair? _g2651426530_)
                    (let ((_e2651726532_ (gx#stx-e _g2651426530_)))
                      (let ((_hd2651826535_ (##car _e2651726532_))
                            (_tl2651926537_ (##cdr _e2651726532_)))
                        (if (gx#stx-pair? _tl2651926537_)
                            (let ((_e2652026540_ (gx#stx-e _tl2651926537_)))
                              (let ((_hd2652126543_ (##car _e2652026540_))
                                    (_tl2652226545_ (##cdr _e2652026540_)))
                                ((lambda (_L26548_ _L26549_)
                                   (let* ((_ctx26562_
                                           (gx#syntax-local-e__0 _L26549_))
                                          (_code26564_
                                           (##structure-ref
                                            _ctx26562_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code26567_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code26564_
                                                     _args26511_))
                                            gx#current-expander-context
                                            _ctx26562_)))
                                     (begin
                                       (##structure-set!
                                        _ctx26562_
                                        _code26567_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L26549_
                                                    (cons _code26567_ '())))
                                        _stx26510_))))
                                 _tl2652226545_
                                 _hd2652126543_)))
                            (_g2651326527_ _g2651426530_))))
                    (_g2651326527_ _g2651426530_)))))
        (_g2651226570_ _stx26510_))))
  (define gxc#xform-define-values%
    (lambda (_stx26440_ . _args26441_)
      (let* ((_g2644326460_
              (lambda (_g2644426457_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2644426457_)))
             (_g2644226507_
              (lambda (_g2644426463_)
                (if (gx#stx-pair? _g2644426463_)
                    (let ((_e2644726465_ (gx#stx-e _g2644426463_)))
                      (let ((_hd2644826468_ (##car _e2644726465_))
                            (_tl2644926470_ (##cdr _e2644726465_)))
                        (if (gx#stx-pair? _tl2644926470_)
                            (let ((_e2645026473_ (gx#stx-e _tl2644926470_)))
                              (let ((_hd2645126476_ (##car _e2645026473_))
                                    (_tl2645226478_ (##cdr _e2645026473_)))
                                (if (gx#stx-pair? _tl2645226478_)
                                    (let ((_e2645326481_
                                           (gx#stx-e _tl2645226478_)))
                                      (let ((_hd2645426484_
                                             (##car _e2645326481_))
                                            (_tl2645526486_
                                             (##cdr _e2645326481_)))
                                        (if (gx#stx-null? _tl2645526486_)
                                            ((lambda (_L26489_ _L26490_)
                                               (let ((_expr26505_
                                                      (apply gxc#compile-e
                                                             _L26489_
                                                             _args26441_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26490_
                                                              (cons _expr26505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26440_)))
                                             _hd2645426484_
                                             _hd2645126476_)
                                            (_g2644326460_ _g2644426463_))))
                                    (_g2644326460_ _g2644426463_))))
                            (_g2644326460_ _g2644426463_))))
                    (_g2644326460_ _g2644426463_)))))
        (_g2644226507_ _stx26440_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26370_ . _args26371_)
      (let* ((_g2637326390_
              (lambda (_g2637426387_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2637426387_)))
             (_g2637226437_
              (lambda (_g2637426393_)
                (if (gx#stx-pair? _g2637426393_)
                    (let ((_e2637726395_ (gx#stx-e _g2637426393_)))
                      (let ((_hd2637826398_ (##car _e2637726395_))
                            (_tl2637926400_ (##cdr _e2637726395_)))
                        (if (gx#stx-pair? _tl2637926400_)
                            (let ((_e2638026403_ (gx#stx-e _tl2637926400_)))
                              (let ((_hd2638126406_ (##car _e2638026403_))
                                    (_tl2638226408_ (##cdr _e2638026403_)))
                                (if (gx#stx-pair? _tl2638226408_)
                                    (let ((_e2638326411_
                                           (gx#stx-e _tl2638226408_)))
                                      (let ((_hd2638426414_
                                             (##car _e2638326411_))
                                            (_tl2638526416_
                                             (##cdr _e2638326411_)))
                                        (if (gx#stx-null? _tl2638526416_)
                                            ((lambda (_L26419_ _L26420_)
                                               (let ((_expr26435_
                                                      (apply gxc#compile-e
                                                             _L26419_
                                                             _args26371_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26420_
                                                              (cons _expr26435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26370_)))
                                             _hd2638426414_
                                             _hd2638126406_)
                                            (_g2637326390_ _g2637426393_))))
                                    (_g2637326390_ _g2637426393_))))
                            (_g2637326390_ _g2637426393_))))
                    (_g2637326390_ _g2637426393_)))))
        (_g2637226437_ _stx26370_))))
  (define gxc#xform-lambda%
    (lambda (_stx26313_ . _args26314_)
      (let* ((_g2631626330_
              (lambda (_g2631726327_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2631726327_)))
             (_g2631526367_
              (lambda (_g2631726333_)
                (if (gx#stx-pair? _g2631726333_)
                    (let ((_e2632026335_ (gx#stx-e _g2631726333_)))
                      (let ((_hd2632126338_ (##car _e2632026335_))
                            (_tl2632226340_ (##cdr _e2632026335_)))
                        (if (gx#stx-pair? _tl2632226340_)
                            (let ((_e2632326343_ (gx#stx-e _tl2632226340_)))
                              (let ((_hd2632426346_ (##car _e2632326343_))
                                    (_tl2632526348_ (##cdr _e2632326343_)))
                                ((lambda (_L26351_ _L26352_)
                                   (let ((_body26365_
                                          (map (gxc#xform-apply-compile-e
                                                _args26314_)
                                               _L26351_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26352_ _body26365_))
                                      _stx26313_)))
                                 _tl2632526348_
                                 _hd2632426346_)))
                            (_g2631626330_ _g2631726333_))))
                    (_g2631626330_ _g2631726333_)))))
        (_g2631526367_ _stx26313_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26226_ . _args26227_)
      (letrec ((_clause-e26229_
                (lambda (_clause26270_)
                  (let* ((_g2627226283_
                          (lambda (_g2627326280_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2627326280_)))
                         (_g2627126310_
                          (lambda (_g2627326286_)
                            (if (gx#stx-pair? _g2627326286_)
                                (let ((_e2627626288_ (gx#stx-e _g2627326286_)))
                                  (let ((_hd2627726291_ (##car _e2627626288_))
                                        (_tl2627826293_ (##cdr _e2627626288_)))
                                    ((lambda (_L26296_ _L26297_)
                                       (let ((_body26308_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26227_)
                                                   _L26296_)))
                                         (cons _L26297_ _body26308_)))
                                     _tl2627826293_
                                     _hd2627726291_)))
                                (_g2627226283_ _g2627326286_)))))
                    (_g2627126310_ _clause26270_)))))
        (let* ((_g2623126241_
                (lambda (_g2623226238_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2623226238_)))
               (_g2623026267_
                (lambda (_g2623226244_)
                  (if (gx#stx-pair? _g2623226244_)
                      (let ((_e2623426246_ (gx#stx-e _g2623226244_)))
                        (let ((_hd2623526249_ (##car _e2623426246_))
                              (_tl2623626251_ (##cdr _e2623426246_)))
                          ((lambda (_L26254_)
                             (let ((_clauses26265_
                                    (map _clause-e26229_ _L26254_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26265_)
                                _stx26226_)))
                           _tl2623626251_)))
                      (_g2623126241_ _g2623226244_)))))
          (_g2623026267_ _stx26226_)))))
  (define gxc#xform-let-values%
    (lambda (_stx26020_ . _args26021_)
      (let* ((_g2602326056_
              (lambda (_g2602426053_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2602426053_)))
             (_g2602226223_
              (lambda (_g2602426059_)
                (if (gx#stx-pair? _g2602426059_)
                    (let ((_e2602926061_ (gx#stx-e _g2602426059_)))
                      (let ((_hd2603026064_ (##car _e2602926061_))
                            (_tl2603126066_ (##cdr _e2602926061_)))
                        (if (gx#stx-pair? _tl2603126066_)
                            (let ((_e2603226069_ (gx#stx-e _tl2603126066_)))
                              (let ((_hd2603326072_ (##car _e2603226069_))
                                    (_tl2603426074_ (##cdr _e2603226069_)))
                                (if (gx#stx-pair/null? _hd2603326072_)
                                    (if (fx>= (gx#stx-length _hd2603326072_)
                                              '0)
                                        (let ((_g27377_
                                               (gx#syntax-split-splice
                                                _hd2603326072_
                                                '0)))
                                          (begin
                                            (let ((_g27378_
                                                   (values-count _g27377_)))
                                              (if (not (fx= _g27378_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27378_)))
                                            (let ((_target2603526077_
                                                   (values-ref _g27377_ 0))
                                                  (_tl2603726079_
                                                   (values-ref _g27377_ 1)))
                                              (if (gx#stx-null? _tl2603726079_)
                                                  (letrec ((_loop2603826082_
                                                            (lambda (_hd2603626085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2604226087_
                             _hd2604326089_)
                      (if (gx#stx-pair? _hd2603626085_)
                          (let ((_e2603926092_ (gx#stx-e _hd2603626085_)))
                            (let ((_lp-hd2604026095_ (##car _e2603926092_))
                                  (_lp-tl2604126097_ (##cdr _e2603926092_)))
                              (if (gx#stx-pair? _lp-hd2604026095_)
                                  (let ((_e2604626100_
                                         (gx#stx-e _lp-hd2604026095_)))
                                    (let ((_hd2604726103_
                                           (##car _e2604626100_))
                                          (_tl2604826105_
                                           (##cdr _e2604626100_)))
                                      (if (gx#stx-pair? _tl2604826105_)
                                          (let ((_e2604926108_
                                                 (gx#stx-e _tl2604826105_)))
                                            (let ((_hd2605026111_
                                                   (##car _e2604926108_))
                                                  (_tl2605126113_
                                                   (##cdr _e2604926108_)))
                                              (if (gx#stx-null? _tl2605126113_)
                                                  (_loop2603826082_
                                                   _lp-tl2604126097_
                                                   (cons _hd2605026111_
                                                         _expr2604226087_)
                                                   (cons _hd2604726103_
                                                         _hd2604326089_))
                                                  (_g2602326056_
                                                   _g2602426059_))))
                                          (_g2602326056_ _g2602426059_))))
                                  (_g2602326056_ _g2602426059_))))
                          (let ((_expr2604426116_ (reverse _expr2604226087_))
                                (_hd2604526118_ (reverse _hd2604326089_)))
                            ((lambda (_L26121_ _L26122_ _L26123_ _L26124_)
                               (let* ((_g2614326159_
                                       (lambda (_g2614426156_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2614426156_)))
                                      (_g2614226213_
                                       (lambda (_g2614426162_)
                                         (if (gx#stx-pair/null? _g2614426162_)
                                             (if (fx>= (gx#stx-length
                                                        _g2614426162_)
                                                       '0)
                                                 (let ((_g27379_
                                                        (gx#syntax-split-splice
                                                         _g2614426162_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27380_
                                                            (values-count
                                                             _g27379_)))
                                                       (if (not (fx= _g27380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g27380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2614626164_
                                                            (values-ref
                                                             _g27379_
                                                             0))
                                                           (_tl2614826166_
                                                            (values-ref
                                                             _g27379_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2614826166_)
                                                           (letrec ((_loop2614926169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2614726172_ _expr2615326174_)
                               (if (gx#stx-pair? _hd2614726172_)
                                   (let ((_e2615026177_
                                          (gx#syntax-e _hd2614726172_)))
                                     (let ((_lp-hd2615126180_
                                            (##car _e2615026177_))
                                           (_lp-tl2615226182_
                                            (##cdr _e2615026177_)))
                                       (_loop2614926169_
                                        _lp-tl2615226182_
                                        (cons _lp-hd2615126180_
                                              _expr2615326174_))))
                                   (let ((_expr2615426185_
                                          (reverse _expr2615326174_)))
                                     ((lambda (_L26188_)
                                        (let ()
                                          (let ((_body26201_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26021_)
                                                      _L26121_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26124_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26188_
                                                            _L26123_)
                                                           (foldr2 (lambda (_g2620226206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2620326208_
                                    _g2620426210_)
                             (cons (cons _g2620326208_
                                         (cons _g2620226206_ '()))
                                   _g2620426210_))
                           '()
                           _L26188_
                           _L26123_))
                 _body26201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx26020_))))
                                      _expr2615426185_))))))
                     (_loop2614926169_ _target2614626164_ '()))
                   (_g2614326159_ _g2614426162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2614326159_ _g2614426162_))
                                             (_g2614326159_ _g2614426162_)))))
                                 (_g2614226213_
                                  (map (gxc#xform-apply-compile-e _args26021_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2621526218_
                                                          _g2621626220_)
                                                   (cons _g2621526218_
                                                         _g2621626220_))
                                                 '()
                                                 _L26122_))))))
                             _tl2603426074_
                             _expr2604426116_
                             _hd2604526118_
                             _hd2603026064_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2603826082_
                                                     _target2603526077_
                                                     '()
                                                     '()))
                                                  (_g2602326056_
                                                   _g2602426059_)))))
                                        (_g2602326056_ _g2602426059_))
                                    (_g2602326056_ _g2602426059_))))
                            (_g2602326056_ _g2602426059_))))
                    (_g2602326056_ _g2602426059_)))))
        (_g2602226223_ _stx26020_))))
  (define gxc#xform-operands
    (lambda (_stx25976_ . _args25977_)
      (let* ((_g2597925990_
              (lambda (_g2598025987_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2598025987_)))
             (_g2597826017_
              (lambda (_g2598025993_)
                (if (gx#stx-pair? _g2598025993_)
                    (let ((_e2598325995_ (gx#stx-e _g2598025993_)))
                      (let ((_hd2598425998_ (##car _e2598325995_))
                            (_tl2598526000_ (##cdr _e2598325995_)))
                        ((lambda (_L26003_ _L26004_)
                           (let ((_rands26015_
                                  (map (gxc#xform-apply-compile-e _args25977_)
                                       _L26003_)))
                             (gxc#xform-wrap-source
                              (cons _L26004_ _rands26015_)
                              _stx25976_)))
                         _tl2598526000_
                         _hd2598425998_)))
                    (_g2597925990_ _g2598025993_)))))
        (_g2597826017_ _stx25976_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx25906_ . _args25907_)
      (let* ((_g2590925926_
              (lambda (_g2591025923_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2591025923_)))
             (_g2590825973_
              (lambda (_g2591025929_)
                (if (gx#stx-pair? _g2591025929_)
                    (let ((_e2591325931_ (gx#stx-e _g2591025929_)))
                      (let ((_hd2591425934_ (##car _e2591325931_))
                            (_tl2591525936_ (##cdr _e2591325931_)))
                        (if (gx#stx-pair? _tl2591525936_)
                            (let ((_e2591625939_ (gx#stx-e _tl2591525936_)))
                              (let ((_hd2591725942_ (##car _e2591625939_))
                                    (_tl2591825944_ (##cdr _e2591625939_)))
                                (if (gx#stx-pair? _tl2591825944_)
                                    (let ((_e2591925947_
                                           (gx#stx-e _tl2591825944_)))
                                      (let ((_hd2592025950_
                                             (##car _e2591925947_))
                                            (_tl2592125952_
                                             (##cdr _e2591925947_)))
                                        (if (gx#stx-null? _tl2592125952_)
                                            ((lambda (_L25955_ _L25956_)
                                               (let ((_expr25971_
                                                      (apply gxc#compile-e
                                                             _L25955_
                                                             _args25907_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L25956_
                                                              (cons _expr25971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx25906_)))
                                             _hd2592025950_
                                             _hd2591725942_)
                                            (_g2590925926_ _g2591025929_))))
                                    (_g2590925926_ _g2591025929_))))
                            (_g2590925926_ _g2591025929_))))
                    (_g2590925926_ _g2591025929_)))))
        (_g2590825973_ _stx25906_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx25837_)
      (let* ((_g2583925856_
              (lambda (_g2584025853_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2584025853_)))
             (_g2583825903_
              (lambda (_g2584025859_)
                (if (gx#stx-pair? _g2584025859_)
                    (let ((_e2584325861_ (gx#stx-e _g2584025859_)))
                      (let ((_hd2584425864_ (##car _e2584325861_))
                            (_tl2584525866_ (##cdr _e2584325861_)))
                        (if (gx#stx-pair? _tl2584525866_)
                            (let ((_e2584625869_ (gx#stx-e _tl2584525866_)))
                              (let ((_hd2584725872_ (##car _e2584625869_))
                                    (_tl2584825874_ (##cdr _e2584625869_)))
                                (if (gx#stx-pair? _tl2584825874_)
                                    (let ((_e2584925877_
                                           (gx#stx-e _tl2584825874_)))
                                      (let ((_hd2585025880_
                                             (##car _e2584925877_))
                                            (_tl2585125882_
                                             (##cdr _e2584925877_)))
                                        (if (gx#stx-null? _tl2585125882_)
                                            ((lambda (_L25885_ _L25886_)
                                               (let ((_sym25901_
                                                      (gxc#generate-runtime-binding-id
                                                       _L25886_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym25901_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym25901_
                                                    '#t)
                                                   (gxc#compile-e _L25885_))))
                                             _hd2585025880_
                                             _hd2584725872_)
                                            (_g2583925856_ _g2584025859_))))
                                    (_g2583925856_ _g2584025859_))))
                            (_g2583925856_ _g2584025859_))))
                    (_g2583925856_ _g2584025859_)))))
        (_g2583825903_ _stx25837_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25071_)
      (let* ((_g2507625233_
              (lambda (_g2507725230_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2507725230_)))
             (_g2507525240_ (lambda (_g2507725236_) ((lambda () '#f))))
             (_g2507425380_
              (lambda (_g2507725243_)
                (if (gx#stx-pair? _g2507725243_)
                    (let ((_e2519325245_ (gx#stx-e _g2507725243_)))
                      (let ((_hd2519425248_ (##car _e2519325245_))
                            (_tl2519525250_ (##cdr _e2519325245_)))
                        (if (gx#stx-pair? _tl2519525250_)
                            (let ((_e2519625253_ (gx#stx-e _tl2519525250_)))
                              (let ((_hd2519725256_ (##car _e2519625253_))
                                    (_tl2519825258_ (##cdr _e2519625253_)))
                                (if (gx#stx-pair? _hd2519725256_)
                                    (let ((_e2519925261_
                                           (gx#stx-e _hd2519725256_)))
                                      (let ((_hd2520025264_
                                             (##car _e2519925261_))
                                            (_tl2520125266_
                                             (##cdr _e2519925261_)))
                                        (if (gx#identifier? _hd2520025264_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2520025264_)
                                                (if (gx#stx-pair?
                                                     _tl2520125266_)
                                                    (let ((_e2520225269_
                                                           (gx#stx-e
                                                            _tl2520125266_)))
                                                      (let ((_hd2520325272_
                                                             (##car _e2520225269_))
                                                            (_tl2520425274_
                                                             (##cdr _e2520225269_)))
                                                        (if (gx#stx-pair?
                                                             _hd2520325272_)
                                                            (let ((_e2520525277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2520325272_)))
                      (let ((_hd2520625280_ (##car _e2520525277_))
                            (_tl2520725282_ (##cdr _e2520525277_)))
                        (if (gx#identifier? _hd2520625280_)
                            (if (gx#stx-eq? '%#ref _hd2520625280_)
                                (if (gx#stx-pair? _tl2520725282_)
                                    (let ((_e2520825285_
                                           (gx#stx-e _tl2520725282_)))
                                      (let ((_hd2520925288_
                                             (##car _e2520825285_))
                                            (_tl2521025290_
                                             (##cdr _e2520825285_)))
                                        (if (gx#stx-null? _tl2521025290_)
                                            (if (gx#stx-pair? _tl2520425274_)
                                                (let ((_e2521125293_
                                                       (gx#stx-e
                                                        _tl2520425274_)))
                                                  (let ((_hd2521225296_
                                                         (##car _e2521125293_))
                                                        (_tl2521325298_
                                                         (##cdr _e2521125293_)))
                                                    (if (gx#stx-pair?
                                                         _hd2521225296_)
                                                        (let ((_e2521425301_
                                                               (gx#stx-e
                                                                _hd2521225296_)))
                                                          (let ((_hd2521525304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2521425301_))
                        (_tl2521625306_ (##cdr _e2521425301_)))
                    (if (gx#identifier? _hd2521525304_)
                        (if (gx#stx-eq? '%#ref _hd2521525304_)
                            (if (gx#stx-pair? _tl2521625306_)
                                (let ((_e2521725309_
                                       (gx#stx-e _tl2521625306_)))
                                  (let ((_hd2521825312_ (##car _e2521725309_))
                                        (_tl2521925314_ (##cdr _e2521725309_)))
                                    (if (gx#stx-null? _tl2521925314_)
                                        (if (gx#stx-pair? _tl2521325298_)
                                            (let ((_e2522025317_
                                                   (gx#stx-e _tl2521325298_)))
                                              (let ((_hd2522125320_
                                                     (##car _e2522025317_))
                                                    (_tl2522225322_
                                                     (##cdr _e2522025317_)))
                                                (if (gx#stx-pair?
                                                     _hd2522125320_)
                                                    (let ((_e2522325325_
                                                           (gx#stx-e
                                                            _hd2522125320_)))
                                                      (let ((_hd2522425328_
                                                             (##car _e2522325325_))
                                                            (_tl2522525330_
                                                             (##cdr _e2522325325_)))
                                                        (if (gx#identifier?
                                                             _hd2522425328_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2522425328_)
                        (if (gx#stx-pair? _tl2522525330_)
                            (let ((_e2522625333_ (gx#stx-e _tl2522525330_)))
                              (let ((_hd2522725336_ (##car _e2522625333_))
                                    (_tl2522825338_ (##cdr _e2522625333_)))
                                (if (gx#stx-null? _tl2522825338_)
                                    (if (gx#stx-null? _tl2522225322_)
                                        (if (gx#stx-null? _tl2519825258_)
                                            ((lambda (_L25341_
                                                      _L25342_
                                                      _L25343_
                                                      _L25344_)
                                               (if (if (gx#identifier?
                                                        _L25344_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25343_)
                        'apply)
                   (if (gx#free-identifier=? _L25344_ _L25341_)
                       (not (gx#free-identifier=? _L25342_ _L25344_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2507525240_
                                                    _g2507725243_)))
                                             _hd2522725336_
                                             _hd2521825312_
                                             _hd2520925288_
                                             _hd2519425248_)
                                            (_g2507525240_ _g2507725243_))
                                        (_g2507525240_ _g2507725243_))
                                    (_g2507525240_ _g2507725243_))))
                            (_g2507525240_ _g2507725243_))
                        (_g2507525240_ _g2507725243_))
                    (_g2507525240_ _g2507725243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2507525240_
                                                     _g2507725243_))))
                                            (_g2507525240_ _g2507725243_))
                                        (_g2507525240_ _g2507725243_))))
                                (_g2507525240_ _g2507725243_))
                            (_g2507525240_ _g2507725243_))
                        (_g2507525240_ _g2507725243_))))
                (_g2507525240_ _g2507725243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2507525240_ _g2507725243_))
                                            (_g2507525240_ _g2507725243_))))
                                    (_g2507525240_ _g2507725243_))
                                (_g2507525240_ _g2507725243_))
                            (_g2507525240_ _g2507725243_))))
                    (_g2507525240_ _g2507725243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2507525240_
                                                     _g2507725243_))
                                                (_g2507525240_ _g2507725243_))
                                            (_g2507525240_ _g2507725243_))))
                                    (_g2507525240_ _g2507725243_))))
                            (_g2507525240_ _g2507725243_))))
                    (_g2507525240_ _g2507725243_))))
             (_g2507325640_
              (lambda (_g2507725383_)
                (if (gx#stx-pair? _g2507725383_)
                    (let ((_e2512925385_ (gx#stx-e _g2507725383_)))
                      (let ((_hd2513025388_ (##car _e2512925385_))
                            (_tl2513125390_ (##cdr _e2512925385_)))
                        (if (gx#stx-pair/null? _hd2513025388_)
                            (if (fx>= (gx#stx-length _hd2513025388_) '0)
                                (let ((_g27381_
                                       (gx#syntax-split-splice
                                        _hd2513025388_
                                        '0)))
                                  (begin
                                    (let ((_g27382_ (values-count _g27381_)))
                                      (if (not (fx= _g27382_ 2))
                                          (error "Context expects 2 values"
                                                 _g27382_)))
                                    (let ((_target2513225393_
                                           (values-ref _g27381_ 0))
                                          (_tl2513425395_
                                           (values-ref _g27381_ 1)))
                                      (letrec ((_loop2513525398_
                                                (lambda (_hd2513325401_
                                                         _arg2513925403_)
                                                  (if (gx#stx-pair?
                                                       _hd2513325401_)
                                                      (let ((_e2513625406_
                                                             (gx#stx-e
                                                              _hd2513325401_)))
                                                        (let ((_lp-hd2513725409_
                                                               (##car _e2513625406_))
                                                              (_lp-tl2513825411_
                                                               (##cdr _e2513625406_)))
                                                          (_loop2513525398_
                                                           _lp-tl2513825411_
                                                           (cons _lp-hd2513725409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2513925403_))))
              (let ((_arg2514025414_ (reverse _arg2513925403_)))
                (if (gx#stx-pair? _tl2513125390_)
                    (let ((_e2514125417_ (gx#stx-e _tl2513125390_)))
                      (let ((_hd2514225420_ (##car _e2514125417_))
                            (_tl2514325422_ (##cdr _e2514125417_)))
                        (if (gx#stx-pair? _hd2514225420_)
                            (let ((_e2514425425_ (gx#stx-e _hd2514225420_)))
                              (let ((_hd2514525428_ (##car _e2514425425_))
                                    (_tl2514625430_ (##cdr _e2514425425_)))
                                (if (gx#identifier? _hd2514525428_)
                                    (if (gx#stx-eq? '%#call _hd2514525428_)
                                        (if (gx#stx-pair? _tl2514625430_)
                                            (let ((_e2514725433_
                                                   (gx#stx-e _tl2514625430_)))
                                              (let ((_hd2514825436_
                                                     (##car _e2514725433_))
                                                    (_tl2514925438_
                                                     (##cdr _e2514725433_)))
                                                (if (gx#stx-pair?
                                                     _hd2514825436_)
                                                    (let ((_e2515025441_
                                                           (gx#stx-e
                                                            _hd2514825436_)))
                                                      (let ((_hd2515125444_
                                                             (##car _e2515025441_))
                                                            (_tl2515225446_
                                                             (##cdr _e2515025441_)))
                                                        (if (gx#identifier?
                                                             _hd2515125444_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2515125444_)
                        (if (gx#stx-pair? _tl2515225446_)
                            (let ((_e2515325449_ (gx#stx-e _tl2515225446_)))
                              (let ((_hd2515425452_ (##car _e2515325449_))
                                    (_tl2515525454_ (##cdr _e2515325449_)))
                                (if (gx#stx-null? _tl2515525454_)
                                    (if (gx#stx-pair? _tl2514925438_)
                                        (let ((_e2515625457_
                                               (gx#stx-e _tl2514925438_)))
                                          (let ((_hd2515725460_
                                                 (##car _e2515625457_))
                                                (_tl2515825462_
                                                 (##cdr _e2515625457_)))
                                            (if (gx#stx-pair? _hd2515725460_)
                                                (let ((_e2515925465_
                                                       (gx#stx-e
                                                        _hd2515725460_)))
                                                  (let ((_hd2516025468_
                                                         (##car _e2515925465_))
                                                        (_tl2516125470_
                                                         (##cdr _e2515925465_)))
                                                    (if (gx#identifier?
                                                         _hd2516025468_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2516025468_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2516125470_)
                        (let ((_e2516225473_ (gx#stx-e _tl2516125470_)))
                          (let ((_hd2516325476_ (##car _e2516225473_))
                                (_tl2516425478_ (##cdr _e2516225473_)))
                            (if (gx#stx-null? _tl2516425478_)
                                (if (gx#stx-pair/null? _tl2515825462_)
                                    (if (fx>= (gx#stx-length _tl2515825462_)
                                              '1)
                                        (let ((_g27383_
                                               (gx#syntax-split-splice
                                                _tl2515825462_
                                                '1)))
                                          (begin
                                            (let ((_g27384_
                                                   (values-count _g27383_)))
                                              (if (not (fx= _g27384_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27384_)))
                                            (let ((_target2516525481_
                                                   (values-ref _g27383_ 0))
                                                  (_tl2516725483_
                                                   (values-ref _g27383_ 1)))
                                              (if (gx#stx-pair? _tl2516725483_)
                                                  (let ((_e2517425486_
                                                         (gx#stx-e
                                                          _tl2516725483_)))
                                                    (let ((_hd2517525489_
                                                           (##car _e2517425486_))
                                                          (_tl2517625491_
                                                           (##cdr _e2517425486_)))
                                                      (if (gx#stx-pair?
                                                           _hd2517525489_)
                                                          (let ((_e2517725494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2517525489_)))
                    (let ((_hd2517825497_ (##car _e2517725494_))
                          (_tl2517925499_ (##cdr _e2517725494_)))
                      (if (gx#identifier? _hd2517825497_)
                          (if (gx#stx-eq? '%#ref _hd2517825497_)
                              (if (gx#stx-pair? _tl2517925499_)
                                  (let ((_e2518025502_
                                         (gx#stx-e _tl2517925499_)))
                                    (let ((_hd2518125505_
                                           (##car _e2518025502_))
                                          (_tl2518225507_
                                           (##cdr _e2518025502_)))
                                      (if (gx#stx-null? _tl2518225507_)
                                          (if (gx#stx-null? _tl2517625491_)
                                              (letrec ((_loop2516825510_
                                                        (lambda (_hd2516625513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2517225515_)
                  (if (gx#stx-pair? _hd2516625513_)
                      (let ((_e2516925518_ (gx#stx-e _hd2516625513_)))
                        (let ((_lp-hd2517025521_ (##car _e2516925518_))
                              (_lp-tl2517125523_ (##cdr _e2516925518_)))
                          (if (gx#stx-pair? _lp-hd2517025521_)
                              (let ((_e2518325526_
                                     (gx#stx-e _lp-hd2517025521_)))
                                (let ((_hd2518425529_ (##car _e2518325526_))
                                      (_tl2518525531_ (##cdr _e2518325526_)))
                                  (if (gx#identifier? _hd2518425529_)
                                      (if (gx#stx-eq? '%#ref _hd2518425529_)
                                          (if (gx#stx-pair? _tl2518525531_)
                                              (let ((_e2518625534_
                                                     (gx#stx-e
                                                      _tl2518525531_)))
                                                (let ((_hd2518725537_
                                                       (##car _e2518625534_))
                                                      (_tl2518825539_
                                                       (##cdr _e2518625534_)))
                                                  (if (gx#stx-null?
                                                       _tl2518825539_)
                                                      (_loop2516825510_
                                                       _lp-tl2517125523_
                                                       (cons _hd2518725537_
                                                             _xarg2517225515_))
                                                      (_g2507425380_
                                                       _g2507725383_))))
                                              (_g2507425380_ _g2507725383_))
                                          (_g2507425380_ _g2507725383_))
                                      (_g2507425380_ _g2507725383_))))
                              (_g2507425380_ _g2507725383_))))
                      (let ((_xarg2517325542_ (reverse _xarg2517225515_)))
                        (if (gx#stx-null? _tl2514325422_)
                            ((lambda (_L25545_
                                      _L25546_
                                      _L25547_
                                      _L25548_
                                      _L25549_
                                      _L25550_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2559325596_
                                                           _g2559425598_)
                                                    (cons _g2559325596_
                                                          _g2559425598_))
                                                  '()
                                                  _L25550_)))
                                       (if (gx#identifier? _L25549_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L25548_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2560025603_ _g2560125605_)
                                    (cons _g2560025603_ _g2560125605_))
                                  '()
                                  _L25550_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2560725610_ _g2560825612_)
                                    (cons _g2560725610_ _g2560825612_))
                                  '()
                                  _L25546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2561425617_ _g2561525619_)
                                    (cons _g2561425617_ _g2561525619_))
                                  '()
                                  _L25550_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2562125624_ _g2562225626_)
                                    (cons _g2562125624_ _g2562225626_))
                                  '()
                                  _L25546_)))
               (if (gx#free-identifier=? _L25549_ _L25545_)
                   (not (find (lambda (_g2562825630_)
                                (gx#free-identifier=? _g2562825630_ _L25547_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2563225635_ _g2563325637_)
                                          (cons _g2563225635_ _g2563325637_))
                                        (cons _L25549_ '())
                                        _L25550_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2507425380_ _g2507725383_)))
                             _hd2518125505_
                             _xarg2517325542_
                             _hd2516325476_
                             _hd2515425452_
                             _tl2513425395_
                             _arg2514025414_)
                            (_g2507425380_ _g2507725383_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2516825510_
                                                 _target2516525481_
                                                 '()))
                                              (_g2507425380_ _g2507725383_))
                                          (_g2507425380_ _g2507725383_))))
                                  (_g2507425380_ _g2507725383_))
                              (_g2507425380_ _g2507725383_))
                          (_g2507425380_ _g2507725383_))))
                  (_g2507425380_ _g2507725383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2507425380_
                                                   _g2507725383_)))))
                                        (_g2507425380_ _g2507725383_))
                                    (_g2507425380_ _g2507725383_))
                                (_g2507425380_ _g2507725383_))))
                        (_g2507425380_ _g2507725383_))
                    (_g2507425380_ _g2507725383_))
                (_g2507425380_ _g2507725383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2507425380_
                                                 _g2507725383_))))
                                        (_g2507425380_ _g2507725383_))
                                    (_g2507425380_ _g2507725383_))))
                            (_g2507425380_ _g2507725383_))
                        (_g2507425380_ _g2507725383_))
                    (_g2507425380_ _g2507725383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2507425380_
                                                     _g2507725383_))))
                                            (_g2507425380_ _g2507725383_))
                                        (_g2507425380_ _g2507725383_))
                                    (_g2507425380_ _g2507725383_))))
                            (_g2507425380_ _g2507725383_))))
                    (_g2507425380_ _g2507725383_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2513525398_
                                         _target2513225393_
                                         '())))))
                                (_g2507425380_ _g2507725383_))
                            (_g2507425380_ _g2507725383_))))
                    (_g2507425380_ _g2507725383_))))
             (_g2507225834_
              (lambda (_g2507725643_)
                (if (gx#stx-pair? _g2507725643_)
                    (let ((_e2508125645_ (gx#stx-e _g2507725643_)))
                      (let ((_hd2508225648_ (##car _e2508125645_))
                            (_tl2508325650_ (##cdr _e2508125645_)))
                        (if (gx#stx-pair/null? _hd2508225648_)
                            (if (fx>= (gx#stx-length _hd2508225648_) '0)
                                (let ((_g27385_
                                       (gx#syntax-split-splice
                                        _hd2508225648_
                                        '0)))
                                  (begin
                                    (let ((_g27386_ (values-count _g27385_)))
                                      (if (not (fx= _g27386_ 2))
                                          (error "Context expects 2 values"
                                                 _g27386_)))
                                    (let ((_target2508425653_
                                           (values-ref _g27385_ 0))
                                          (_tl2508625655_
                                           (values-ref _g27385_ 1)))
                                      (if (gx#stx-null? _tl2508625655_)
                                          (letrec ((_loop2508725658_
                                                    (lambda (_hd2508525661_
                                                             _arg2509125663_)
                                                      (if (gx#stx-pair?
                                                           _hd2508525661_)
                                                          (let ((_e2508825666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2508525661_)))
                    (let ((_lp-hd2508925669_ (##car _e2508825666_))
                          (_lp-tl2509025671_ (##cdr _e2508825666_)))
                      (_loop2508725658_
                       _lp-tl2509025671_
                       (cons _lp-hd2508925669_ _arg2509125663_))))
                  (let ((_arg2509225674_ (reverse _arg2509125663_)))
                    (if (gx#stx-pair? _tl2508325650_)
                        (let ((_e2509325677_ (gx#stx-e _tl2508325650_)))
                          (let ((_hd2509425680_ (##car _e2509325677_))
                                (_tl2509525682_ (##cdr _e2509325677_)))
                            (if (gx#stx-pair? _hd2509425680_)
                                (let ((_e2509625685_
                                       (gx#stx-e _hd2509425680_)))
                                  (let ((_hd2509725688_ (##car _e2509625685_))
                                        (_tl2509825690_ (##cdr _e2509625685_)))
                                    (if (gx#identifier? _hd2509725688_)
                                        (if (gx#stx-eq? '%#call _hd2509725688_)
                                            (if (gx#stx-pair? _tl2509825690_)
                                                (let ((_e2509925693_
                                                       (gx#stx-e
                                                        _tl2509825690_)))
                                                  (let ((_hd2510025696_
                                                         (##car _e2509925693_))
                                                        (_tl2510125698_
                                                         (##cdr _e2509925693_)))
                                                    (if (gx#stx-pair?
                                                         _hd2510025696_)
                                                        (let ((_e2510225701_
                                                               (gx#stx-e
                                                                _hd2510025696_)))
                                                          (let ((_hd2510325704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2510225701_))
                        (_tl2510425706_ (##cdr _e2510225701_)))
                    (if (gx#identifier? _hd2510325704_)
                        (if (gx#stx-eq? '%#ref _hd2510325704_)
                            (if (gx#stx-pair? _tl2510425706_)
                                (let ((_e2510525709_
                                       (gx#stx-e _tl2510425706_)))
                                  (let ((_hd2510625712_ (##car _e2510525709_))
                                        (_tl2510725714_ (##cdr _e2510525709_)))
                                    (if (gx#stx-null? _tl2510725714_)
                                        (if (gx#stx-pair/null? _tl2510125698_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2510125698_)
                                                      '0)
                                                (let ((_g27387_
                                                       (gx#syntax-split-splice
                                                        _tl2510125698_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27388_
                                                           (values-count
                                                            _g27387_)))
                                                      (if (not (fx= _g27388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27388_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2510825717_
                                                           (values-ref
                                                            _g27387_
                                                            0))
                                                          (_tl2511025719_
                                                           (values-ref
                                                            _g27387_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2511025719_)
                                                          (letrec ((_loop2511125722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2510925725_ _xarg2511525727_)
                              (if (gx#stx-pair? _hd2510925725_)
                                  (let ((_e2511225730_
                                         (gx#stx-e _hd2510925725_)))
                                    (let ((_lp-hd2511325733_
                                           (##car _e2511225730_))
                                          (_lp-tl2511425735_
                                           (##cdr _e2511225730_)))
                                      (if (gx#stx-pair? _lp-hd2511325733_)
                                          (let ((_e2511725738_
                                                 (gx#stx-e _lp-hd2511325733_)))
                                            (let ((_hd2511825741_
                                                   (##car _e2511725738_))
                                                  (_tl2511925743_
                                                   (##cdr _e2511725738_)))
                                              (if (gx#identifier?
                                                   _hd2511825741_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2511825741_)
                                                      (if (gx#stx-pair?
                                                           _tl2511925743_)
                                                          (let ((_e2512025746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2511925743_)))
                    (let ((_hd2512125749_ (##car _e2512025746_))
                          (_tl2512225751_ (##cdr _e2512025746_)))
                      (if (gx#stx-null? _tl2512225751_)
                          (_loop2511125722_
                           _lp-tl2511425735_
                           (cons _hd2512125749_ _xarg2511525727_))
                          (_g2507325640_ _g2507725643_))))
                  (_g2507325640_ _g2507725643_))
              (_g2507325640_ _g2507725643_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2507325640_
                                                   _g2507725643_))))
                                          (_g2507325640_ _g2507725643_))))
                                  (let ((_xarg2511625754_
                                         (reverse _xarg2511525727_)))
                                    (if (gx#stx-null? _tl2509525682_)
                                        ((lambda (_L25757_ _L25758_ _L25759_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2578725790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2578825792_)
                        (cons _g2578725790_ _g2578825792_))
                      '()
                      _L25759_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2579425797_ _g2579525799_)
                                        (cons _g2579425797_ _g2579525799_))
                                      '()
                                      _L25759_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2580125804_ _g2580225806_)
                                        (cons _g2580125804_ _g2580225806_))
                                      '()
                                      _L25757_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2580825811_ _g2580925813_)
                                        (cons _g2580825811_ _g2580925813_))
                                      '()
                                      _L25759_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2581525818_ _g2581625820_)
                                        (cons _g2581525818_ _g2581625820_))
                                      '()
                                      _L25757_)))
                   (not (find (lambda (_g2582225824_)
                                (gx#free-identifier=? _g2582225824_ _L25758_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2582625829_ _g2582725831_)
                                          (cons _g2582625829_ _g2582725831_))
                                        '()
                                        _L25759_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2507325640_ _g2507725643_)))
                                         _xarg2511625754_
                                         _hd2510625712_
                                         _arg2509225674_)
                                        (_g2507325640_ _g2507725643_)))))))
                    (_loop2511125722_ _target2510825717_ '()))
                  (_g2507325640_ _g2507725643_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2507325640_ _g2507725643_))
                                            (_g2507325640_ _g2507725643_))
                                        (_g2507325640_ _g2507725643_))))
                                (_g2507325640_ _g2507725643_))
                            (_g2507325640_ _g2507725643_))
                        (_g2507325640_ _g2507725643_))))
                (_g2507325640_ _g2507725643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2507325640_ _g2507725643_))
                                            (_g2507325640_ _g2507725643_))
                                        (_g2507325640_ _g2507725643_))))
                                (_g2507325640_ _g2507725643_))))
                        (_g2507325640_ _g2507725643_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2508725658_
                                             _target2508425653_
                                             '()))
                                          (_g2507325640_ _g2507725643_)))))
                                (_g2507325640_ _g2507725643_))
                            (_g2507325640_ _g2507725643_))))
                    (_g2507325640_ _g2507725643_)))))
        (_g2507225834_ _form25071_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form24539_)
      (let* ((_g2454324667_
              (lambda (_g2454424664_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2454424664_)))
             (_g2454224784_
              (lambda (_g2454424670_)
                (if (gx#stx-pair? _g2454424670_)
                    (let ((_e2463324672_ (gx#stx-e _g2454424670_)))
                      (let ((_hd2463424675_ (##car _e2463324672_))
                            (_tl2463524677_ (##cdr _e2463324672_)))
                        (if (gx#stx-pair? _tl2463524677_)
                            (let ((_e2463624680_ (gx#stx-e _tl2463524677_)))
                              (let ((_hd2463724683_ (##car _e2463624680_))
                                    (_tl2463824685_ (##cdr _e2463624680_)))
                                (if (gx#stx-pair? _hd2463724683_)
                                    (let ((_e2463924688_
                                           (gx#stx-e _hd2463724683_)))
                                      (let ((_hd2464024691_
                                             (##car _e2463924688_))
                                            (_tl2464124693_
                                             (##cdr _e2463924688_)))
                                        (if (gx#identifier? _hd2464024691_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2464024691_)
                                                (if (gx#stx-pair?
                                                     _tl2464124693_)
                                                    (let ((_e2464224696_
                                                           (gx#stx-e
                                                            _tl2464124693_)))
                                                      (let ((_hd2464324699_
                                                             (##car _e2464224696_))
                                                            (_tl2464424701_
                                                             (##cdr _e2464224696_)))
                                                        (if (gx#stx-pair?
                                                             _hd2464324699_)
                                                            (let ((_e2464524704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2464324699_)))
                      (let ((_hd2464624707_ (##car _e2464524704_))
                            (_tl2464724709_ (##cdr _e2464524704_)))
                        (if (gx#identifier? _hd2464624707_)
                            (if (gx#stx-eq? '%#ref _hd2464624707_)
                                (if (gx#stx-pair? _tl2464724709_)
                                    (let ((_e2464824712_
                                           (gx#stx-e _tl2464724709_)))
                                      (let ((_hd2464924715_
                                             (##car _e2464824712_))
                                            (_tl2465024717_
                                             (##cdr _e2464824712_)))
                                        (if (gx#stx-null? _tl2465024717_)
                                            (if (gx#stx-pair? _tl2464424701_)
                                                (let ((_e2465124720_
                                                       (gx#stx-e
                                                        _tl2464424701_)))
                                                  (let ((_hd2465224723_
                                                         (##car _e2465124720_))
                                                        (_tl2465324725_
                                                         (##cdr _e2465124720_)))
                                                    (if (gx#stx-pair?
                                                         _hd2465224723_)
                                                        (let ((_e2465424728_
                                                               (gx#stx-e
                                                                _hd2465224723_)))
                                                          (let ((_hd2465524731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2465424728_))
                        (_tl2465624733_ (##cdr _e2465424728_)))
                    (if (gx#identifier? _hd2465524731_)
                        (if (gx#stx-eq? '%#ref _hd2465524731_)
                            (if (gx#stx-pair? _tl2465624733_)
                                (let ((_e2465724736_
                                       (gx#stx-e _tl2465624733_)))
                                  (let ((_hd2465824739_ (##car _e2465724736_))
                                        (_tl2465924741_ (##cdr _e2465724736_)))
                                    (if (gx#stx-null? _tl2465924741_)
                                        (if (gx#stx-pair? _tl2465324725_)
                                            (let ((_e2466024744_
                                                   (gx#stx-e _tl2465324725_)))
                                              (let ((_hd2466124747_
                                                     (##car _e2466024744_))
                                                    (_tl2466224749_
                                                     (##cdr _e2466024744_)))
                                                (if (gx#stx-null?
                                                     _tl2466224749_)
                                                    (if (gx#stx-null?
                                                         _tl2463824685_)
                                                        ((lambda (_L24752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24753_
                          _L24754_)
                   (gxc#generate-runtime-binding-id _L24752_))
                 _hd2465824739_
                 _hd2464924715_
                 _hd2463424675_)
                (_g2454324667_ _g2454424670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2454324667_
                                                     _g2454424670_))))
                                            (_g2454324667_ _g2454424670_))
                                        (_g2454324667_ _g2454424670_))))
                                (_g2454324667_ _g2454424670_))
                            (_g2454324667_ _g2454424670_))
                        (_g2454324667_ _g2454424670_))))
                (_g2454324667_ _g2454424670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2454324667_ _g2454424670_))
                                            (_g2454324667_ _g2454424670_))))
                                    (_g2454324667_ _g2454424670_))
                                (_g2454324667_ _g2454424670_))
                            (_g2454324667_ _g2454424670_))))
                    (_g2454324667_ _g2454424670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2454324667_
                                                     _g2454424670_))
                                                (_g2454324667_ _g2454424670_))
                                            (_g2454324667_ _g2454424670_))))
                                    (_g2454324667_ _g2454424670_))))
                            (_g2454324667_ _g2454424670_))))
                    (_g2454324667_ _g2454424670_))))
             (_g2454124920_
              (lambda (_g2454424787_)
                (if (gx#stx-pair? _g2454424787_)
                    (let ((_e2459424789_ (gx#stx-e _g2454424787_)))
                      (let ((_hd2459524792_ (##car _e2459424789_))
                            (_tl2459624794_ (##cdr _e2459424789_)))
                        (if (gx#stx-pair/null? _hd2459524792_)
                            (if (fx>= (gx#stx-length _hd2459524792_) '0)
                                (let ((_g27389_
                                       (gx#syntax-split-splice
                                        _hd2459524792_
                                        '0)))
                                  (begin
                                    (let ((_g27390_ (values-count _g27389_)))
                                      (if (not (fx= _g27390_ 2))
                                          (error "Context expects 2 values"
                                                 _g27390_)))
                                    (let ((_target2459724797_
                                           (values-ref _g27389_ 0))
                                          (_tl2459924799_
                                           (values-ref _g27389_ 1)))
                                      (letrec ((_loop2460024802_
                                                (lambda (_hd2459824805_
                                                         _arg2460424807_)
                                                  (if (gx#stx-pair?
                                                       _hd2459824805_)
                                                      (let ((_e2460124810_
                                                             (gx#stx-e
                                                              _hd2459824805_)))
                                                        (let ((_lp-hd2460224813_
                                                               (##car _e2460124810_))
                                                              (_lp-tl2460324815_
                                                               (##cdr _e2460124810_)))
                                                          (_loop2460024802_
                                                           _lp-tl2460324815_
                                                           (cons _lp-hd2460224813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2460424807_))))
              (let ((_arg2460524818_ (reverse _arg2460424807_)))
                (if (gx#stx-pair? _tl2459624794_)
                    (let ((_e2460624821_ (gx#stx-e _tl2459624794_)))
                      (let ((_hd2460724824_ (##car _e2460624821_))
                            (_tl2460824826_ (##cdr _e2460624821_)))
                        (if (gx#stx-pair? _hd2460724824_)
                            (let ((_e2460924829_ (gx#stx-e _hd2460724824_)))
                              (let ((_hd2461024832_ (##car _e2460924829_))
                                    (_tl2461124834_ (##cdr _e2460924829_)))
                                (if (gx#identifier? _hd2461024832_)
                                    (if (gx#stx-eq? '%#call _hd2461024832_)
                                        (if (gx#stx-pair? _tl2461124834_)
                                            (let ((_e2461224837_
                                                   (gx#stx-e _tl2461124834_)))
                                              (let ((_hd2461324840_
                                                     (##car _e2461224837_))
                                                    (_tl2461424842_
                                                     (##cdr _e2461224837_)))
                                                (if (gx#stx-pair?
                                                     _hd2461324840_)
                                                    (let ((_e2461524845_
                                                           (gx#stx-e
                                                            _hd2461324840_)))
                                                      (let ((_hd2461624848_
                                                             (##car _e2461524845_))
                                                            (_tl2461724850_
                                                             (##cdr _e2461524845_)))
                                                        (if (gx#identifier?
                                                             _hd2461624848_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2461624848_)
                        (if (gx#stx-pair? _tl2461724850_)
                            (let ((_e2461824853_ (gx#stx-e _tl2461724850_)))
                              (let ((_hd2461924856_ (##car _e2461824853_))
                                    (_tl2462024858_ (##cdr _e2461824853_)))
                                (if (gx#stx-null? _tl2462024858_)
                                    (if (gx#stx-pair? _tl2461424842_)
                                        (let ((_e2462124861_
                                               (gx#stx-e _tl2461424842_)))
                                          (let ((_hd2462224864_
                                                 (##car _e2462124861_))
                                                (_tl2462324866_
                                                 (##cdr _e2462124861_)))
                                            (if (gx#stx-pair? _hd2462224864_)
                                                (let ((_e2462424869_
                                                       (gx#stx-e
                                                        _hd2462224864_)))
                                                  (let ((_hd2462524872_
                                                         (##car _e2462424869_))
                                                        (_tl2462624874_
                                                         (##cdr _e2462424869_)))
                                                    (if (gx#identifier?
                                                         _hd2462524872_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2462524872_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2462624874_)
                        (let ((_e2462724877_ (gx#stx-e _tl2462624874_)))
                          (let ((_hd2462824880_ (##car _e2462724877_))
                                (_tl2462924882_ (##cdr _e2462724877_)))
                            (if (gx#stx-null? _tl2462924882_)
                                (if (gx#stx-null? _tl2460824826_)
                                    ((lambda (_L24885_
                                              _L24886_
                                              _L24887_
                                              _L24888_)
                                       (gxc#generate-runtime-binding-id
                                        _L24885_))
                                     _hd2462824880_
                                     _hd2461924856_
                                     _tl2459924799_
                                     _arg2460524818_)
                                    (_g2454224784_ _g2454424787_))
                                (_g2454224784_ _g2454424787_))))
                        (_g2454224784_ _g2454424787_))
                    (_g2454224784_ _g2454424787_))
                (_g2454224784_ _g2454424787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2454224784_
                                                 _g2454424787_))))
                                        (_g2454224784_ _g2454424787_))
                                    (_g2454224784_ _g2454424787_))))
                            (_g2454224784_ _g2454424787_))
                        (_g2454224784_ _g2454424787_))
                    (_g2454224784_ _g2454424787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2454224784_
                                                     _g2454424787_))))
                                            (_g2454224784_ _g2454424787_))
                                        (_g2454224784_ _g2454424787_))
                                    (_g2454224784_ _g2454424787_))))
                            (_g2454224784_ _g2454424787_))))
                    (_g2454224784_ _g2454424787_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2460024802_
                                         _target2459724797_
                                         '())))))
                                (_g2454224784_ _g2454424787_))
                            (_g2454224784_ _g2454424787_))))
                    (_g2454224784_ _g2454424787_))))
             (_g2454025068_
              (lambda (_g2454424923_)
                (if (gx#stx-pair? _g2454424923_)
                    (let ((_e2454824925_ (gx#stx-e _g2454424923_)))
                      (let ((_hd2454924928_ (##car _e2454824925_))
                            (_tl2455024930_ (##cdr _e2454824925_)))
                        (if (gx#stx-pair/null? _hd2454924928_)
                            (if (fx>= (gx#stx-length _hd2454924928_) '0)
                                (let ((_g27391_
                                       (gx#syntax-split-splice
                                        _hd2454924928_
                                        '0)))
                                  (begin
                                    (let ((_g27392_ (values-count _g27391_)))
                                      (if (not (fx= _g27392_ 2))
                                          (error "Context expects 2 values"
                                                 _g27392_)))
                                    (let ((_target2455124933_
                                           (values-ref _g27391_ 0))
                                          (_tl2455324935_
                                           (values-ref _g27391_ 1)))
                                      (if (gx#stx-null? _tl2455324935_)
                                          (letrec ((_loop2455424938_
                                                    (lambda (_hd2455224941_
                                                             _arg2455824943_)
                                                      (if (gx#stx-pair?
                                                           _hd2455224941_)
                                                          (let ((_e2455524946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2455224941_)))
                    (let ((_lp-hd2455624949_ (##car _e2455524946_))
                          (_lp-tl2455724951_ (##cdr _e2455524946_)))
                      (_loop2455424938_
                       _lp-tl2455724951_
                       (cons _lp-hd2455624949_ _arg2455824943_))))
                  (let ((_arg2455924954_ (reverse _arg2455824943_)))
                    (if (gx#stx-pair? _tl2455024930_)
                        (let ((_e2456024957_ (gx#stx-e _tl2455024930_)))
                          (let ((_hd2456124960_ (##car _e2456024957_))
                                (_tl2456224962_ (##cdr _e2456024957_)))
                            (if (gx#stx-pair? _hd2456124960_)
                                (let ((_e2456324965_
                                       (gx#stx-e _hd2456124960_)))
                                  (let ((_hd2456424968_ (##car _e2456324965_))
                                        (_tl2456524970_ (##cdr _e2456324965_)))
                                    (if (gx#identifier? _hd2456424968_)
                                        (if (gx#stx-eq? '%#call _hd2456424968_)
                                            (if (gx#stx-pair? _tl2456524970_)
                                                (let ((_e2456624973_
                                                       (gx#stx-e
                                                        _tl2456524970_)))
                                                  (let ((_hd2456724976_
                                                         (##car _e2456624973_))
                                                        (_tl2456824978_
                                                         (##cdr _e2456624973_)))
                                                    (if (gx#stx-pair?
                                                         _hd2456724976_)
                                                        (let ((_e2456924981_
                                                               (gx#stx-e
                                                                _hd2456724976_)))
                                                          (let ((_hd2457024984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2456924981_))
                        (_tl2457124986_ (##cdr _e2456924981_)))
                    (if (gx#identifier? _hd2457024984_)
                        (if (gx#stx-eq? '%#ref _hd2457024984_)
                            (if (gx#stx-pair? _tl2457124986_)
                                (let ((_e2457224989_
                                       (gx#stx-e _tl2457124986_)))
                                  (let ((_hd2457324992_ (##car _e2457224989_))
                                        (_tl2457424994_ (##cdr _e2457224989_)))
                                    (if (gx#stx-null? _tl2457424994_)
                                        (if (gx#stx-pair/null? _tl2456824978_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2456824978_)
                                                      '0)
                                                (let ((_g27393_
                                                       (gx#syntax-split-splice
                                                        _tl2456824978_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27394_
                                                           (values-count
                                                            _g27393_)))
                                                      (if (not (fx= _g27394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2457524997_
                                                           (values-ref
                                                            _g27393_
                                                            0))
                                                          (_tl2457724999_
                                                           (values-ref
                                                            _g27393_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2457724999_)
                                                          (letrec ((_loop2457825002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2457625005_ _xarg2458225007_)
                              (if (gx#stx-pair? _hd2457625005_)
                                  (let ((_e2457925010_
                                         (gx#stx-e _hd2457625005_)))
                                    (let ((_lp-hd2458025013_
                                           (##car _e2457925010_))
                                          (_lp-tl2458125015_
                                           (##cdr _e2457925010_)))
                                      (if (gx#stx-pair? _lp-hd2458025013_)
                                          (let ((_e2458425018_
                                                 (gx#stx-e _lp-hd2458025013_)))
                                            (let ((_hd2458525021_
                                                   (##car _e2458425018_))
                                                  (_tl2458625023_
                                                   (##cdr _e2458425018_)))
                                              (if (gx#identifier?
                                                   _hd2458525021_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2458525021_)
                                                      (if (gx#stx-pair?
                                                           _tl2458625023_)
                                                          (let ((_e2458725026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2458625023_)))
                    (let ((_hd2458825029_ (##car _e2458725026_))
                          (_tl2458925031_ (##cdr _e2458725026_)))
                      (if (gx#stx-null? _tl2458925031_)
                          (_loop2457825002_
                           _lp-tl2458125015_
                           (cons _hd2458825029_ _xarg2458225007_))
                          (_g2454124920_ _g2454424923_))))
                  (_g2454124920_ _g2454424923_))
              (_g2454124920_ _g2454424923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2454124920_
                                                   _g2454424923_))))
                                          (_g2454124920_ _g2454424923_))))
                                  (let ((_xarg2458325034_
                                         (reverse _xarg2458225007_)))
                                    (if (gx#stx-null? _tl2456224962_)
                                        ((lambda (_L25037_ _L25038_ _L25039_)
                                           (gxc#generate-runtime-binding-id
                                            _L25038_))
                                         _xarg2458325034_
                                         _hd2457324992_
                                         _arg2455924954_)
                                        (_g2454124920_ _g2454424923_)))))))
                    (_loop2457825002_ _target2457524997_ '()))
                  (_g2454124920_ _g2454424923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2454124920_ _g2454424923_))
                                            (_g2454124920_ _g2454424923_))
                                        (_g2454124920_ _g2454424923_))))
                                (_g2454124920_ _g2454424923_))
                            (_g2454124920_ _g2454424923_))
                        (_g2454124920_ _g2454424923_))))
                (_g2454124920_ _g2454424923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2454124920_ _g2454424923_))
                                            (_g2454124920_ _g2454424923_))
                                        (_g2454124920_ _g2454424923_))))
                                (_g2454124920_ _g2454424923_))))
                        (_g2454124920_ _g2454424923_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2455424938_
                                             _target2455124933_
                                             '()))
                                          (_g2454124920_ _g2454424923_)))))
                                (_g2454124920_ _g2454424923_))
                            (_g2454124920_ _g2454424923_))))
                    (_g2454124920_ _g2454424923_)))))
        (_g2454025068_ _form24539_))))
  (define gxc#lambda-form-arity
    (lambda (_form24343_)
      (let* ((_g2434524359_
              (lambda (_g2434624356_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2434624356_)))
             (_g2434424536_
              (lambda (_g2434624362_)
                (if (gx#stx-pair? _g2434624362_)
                    (let ((_e2434924364_ (gx#stx-e _g2434624362_)))
                      (let ((_hd2435024367_ (##car _e2434924364_))
                            (_tl2435124369_ (##cdr _e2434924364_)))
                        (if (gx#stx-pair? _tl2435124369_)
                            (let ((_e2435224372_ (gx#stx-e _tl2435124369_)))
                              (let ((_hd2435324375_ (##car _e2435224372_))
                                    (_tl2435424377_ (##cdr _e2435224372_)))
                                (if (gx#stx-null? _tl2435424377_)
                                    ((lambda (_L24380_ _L24381_)
                                       (let* ((_g2439624424_
                                               (lambda (_g2439724421_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2439724421_)))
                                              (_g2439524437_
                                               (lambda (_g2439724427_)
                                                 ((lambda (_L24429_)
                                                    (cons '0 '()))
                                                  _g2439724427_)))
                                              (_g2439424486_
                                               (lambda (_g2439724440_)
                                                 (if (gx#stx-pair/null?
                                                      _g2439724440_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2439724440_)
                                                               '0)
                                                         (let ((_g27395_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2439724440_
                         '0)))
                   (begin
                     (let ((_g27396_ (values-count _g27395_)))
                       (if (not (fx= _g27396_ 2))
                           (error "Context expects 2 values" _g27396_)))
                     (let ((_target2441024442_ (values-ref _g27395_ 0))
                           (_tl2441224444_ (values-ref _g27395_ 1)))
                       (letrec ((_loop2441324447_
                                 (lambda (_hd2441124450_ _arg2441724452_)
                                   (if (gx#stx-pair? _hd2441124450_)
                                       (let ((_e2441424455_
                                              (gx#stx-e _hd2441124450_)))
                                         (let ((_lp-hd2441524458_
                                                (##car _e2441424455_))
                                               (_lp-tl2441624460_
                                                (##cdr _e2441424455_)))
                                           (_loop2441324447_
                                            _lp-tl2441624460_
                                            (cons _lp-hd2441524458_
                                                  _arg2441724452_))))
                                       (let ((_arg2441824463_
                                              (reverse _arg2441724452_)))
                                         ((lambda (_L24466_ _L24467_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2447824481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2447924483_)
                              (cons _g2447824481_ _g2447924483_))
                            '()
                            _L24467_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2441224444_
                                          _arg2441824463_))))))
                         (_loop2441324447_ _target2441024442_ '())))))
                 (_g2439524437_ _g2439724440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2439524437_
                                                      _g2439724440_))))
                                              (_g2439324533_
                                               (lambda (_g2439724489_)
                                                 (if (gx#stx-pair/null?
                                                      _g2439724489_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2439724489_)
                                                               '0)
                                                         (let ((_g27397_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2439724489_
                         '0)))
                   (begin
                     (let ((_g27398_ (values-count _g27397_)))
                       (if (not (fx= _g27398_ 2))
                           (error "Context expects 2 values" _g27398_)))
                     (let ((_target2439924491_ (values-ref _g27397_ 0))
                           (_tl2440124493_ (values-ref _g27397_ 1)))
                       (if (gx#stx-null? _tl2440124493_)
                           (letrec ((_loop2440224496_
                                     (lambda (_hd2440024499_ _arg2440624501_)
                                       (if (gx#stx-pair? _hd2440024499_)
                                           (let ((_e2440324504_
                                                  (gx#stx-e _hd2440024499_)))
                                             (let ((_lp-hd2440424507_
                                                    (##car _e2440324504_))
                                                   (_lp-tl2440524509_
                                                    (##cdr _e2440324504_)))
                                               (_loop2440224496_
                                                _lp-tl2440524509_
                                                (cons _lp-hd2440424507_
                                                      _arg2440624501_))))
                                           (let ((_arg2440724512_
                                                  (reverse _arg2440624501_)))
                                             ((lambda (_L24515_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2452524528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2452624530_)
                            (cons _g2452524528_ _g2452624530_))
                          '()
                          _L24515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2440724512_))))))
                             (_loop2440224496_ _target2439924491_ '()))
                           (_g2439424486_ _g2439724489_)))))
                 (_g2439424486_ _g2439724489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2439424486_
                                                      _g2439724489_)))))
                                         (_g2439324533_ _L24381_)))
                                     _hd2435324375_
                                     _hd2435024367_)
                                    (_g2434524359_ _g2434624362_))))
                            (_g2434524359_ _g2434624362_))))
                    (_g2434524359_ _g2434624362_)))))
        (_g2434424536_ _form24343_))))
  (define gxc#lambda-expr?
    (lambda (_expr24296_)
      (let* ((_g2429924309_
              (lambda (_g2430024306_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2430024306_)))
             (_g2429824316_ (lambda (_g2430024312_) ((lambda () '#f))))
             (_g2429724340_
              (lambda (_g2430024319_)
                (if (gx#stx-pair? _g2430024319_)
                    (let ((_e2430224321_ (gx#stx-e _g2430024319_)))
                      (let ((_hd2430324324_ (##car _e2430224321_))
                            (_tl2430424326_ (##cdr _e2430224321_)))
                        (if (gx#identifier? _hd2430324324_)
                            (if (gx#stx-eq? '%#lambda _hd2430324324_)
                                ((lambda (_L24329_) '#t) _tl2430424326_)
                                (_g2429824316_ _g2430024319_))
                            (_g2429824316_ _g2430024319_))))
                    (_g2429824316_ _g2430024319_)))))
        (_g2429724340_ _expr24296_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24249_)
      (let* ((_g2425224262_
              (lambda (_g2425324259_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2425324259_)))
             (_g2425124269_ (lambda (_g2425324265_) ((lambda () '#f))))
             (_g2425024293_
              (lambda (_g2425324272_)
                (if (gx#stx-pair? _g2425324272_)
                    (let ((_e2425524274_ (gx#stx-e _g2425324272_)))
                      (let ((_hd2425624277_ (##car _e2425524274_))
                            (_tl2425724279_ (##cdr _e2425524274_)))
                        (if (gx#identifier? _hd2425624277_)
                            (if (gx#stx-eq? '%#case-lambda _hd2425624277_)
                                ((lambda (_L24282_) '#t) _tl2425724279_)
                                (_g2425124269_ _g2425324272_))
                            (_g2425124269_ _g2425324272_))))
                    (_g2425124269_ _g2425324272_)))))
        (_g2425024293_ _expr24249_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24118_)
      (let* ((_g2412124151_
              (lambda (_g2412224148_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2412224148_)))
             (_g2412024158_ (lambda (_g2412224154_) ((lambda () '#f))))
             (_g2411924246_
              (lambda (_g2412224161_)
                (if (gx#stx-pair? _g2412224161_)
                    (let ((_e2412624163_ (gx#stx-e _g2412224161_)))
                      (let ((_hd2412724166_ (##car _e2412624163_))
                            (_tl2412824168_ (##cdr _e2412624163_)))
                        (if (gx#identifier? _hd2412724166_)
                            (if (gx#stx-eq? '%#let-values _hd2412724166_)
                                (if (gx#stx-pair? _tl2412824168_)
                                    (let ((_e2412924171_
                                           (gx#stx-e _tl2412824168_)))
                                      (let ((_hd2413024174_
                                             (##car _e2412924171_))
                                            (_tl2413124176_
                                             (##cdr _e2412924171_)))
                                        (if (gx#stx-pair? _hd2413024174_)
                                            (let ((_e2413224179_
                                                   (gx#stx-e _hd2413024174_)))
                                              (let ((_hd2413324182_
                                                     (##car _e2413224179_))
                                                    (_tl2413424184_
                                                     (##cdr _e2413224179_)))
                                                (if (gx#stx-pair?
                                                     _hd2413324182_)
                                                    (let ((_e2413524187_
                                                           (gx#stx-e
                                                            _hd2413324182_)))
                                                      (let ((_hd2413624190_
                                                             (##car _e2413524187_))
                                                            (_tl2413724192_
                                                             (##cdr _e2413524187_)))
                                                        (if (gx#stx-pair?
                                                             _hd2413624190_)
                                                            (let ((_e2413824195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2413624190_)))
                      (let ((_hd2413924198_ (##car _e2413824195_))
                            (_tl2414024200_ (##cdr _e2413824195_)))
                        (if (gx#stx-null? _tl2414024200_)
                            (if (gx#stx-pair? _tl2413724192_)
                                (let ((_e2414124203_
                                       (gx#stx-e _tl2413724192_)))
                                  (let ((_hd2414224206_ (##car _e2414124203_))
                                        (_tl2414324208_ (##cdr _e2414124203_)))
                                    (if (gx#stx-null? _tl2414324208_)
                                        (if (gx#stx-null? _tl2413424184_)
                                            (if (gx#stx-pair? _tl2413124176_)
                                                (let ((_e2414424211_
                                                       (gx#stx-e
                                                        _tl2413124176_)))
                                                  (let ((_hd2414524214_
                                                         (##car _e2414424211_))
                                                        (_tl2414624216_
                                                         (##cdr _e2414424211_)))
                                                    (if (gx#stx-null?
                                                         _tl2414624216_)
                                                        ((lambda (_L24219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24220_
                          _L24221_)
                   (if (gx#identifier? _L24221_)
                       (if (gxc#lambda-expr? _L24220_)
                           (gxc#case-lambda-expr? _L24219_)
                           '#f)
                       '#f))
                 _hd2414524214_
                 _hd2414224206_
                 _hd2413924198_)
                (_g2412024158_ _g2412224161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2412024158_ _g2412224161_))
                                            (_g2412024158_ _g2412224161_))
                                        (_g2412024158_ _g2412224161_))))
                                (_g2412024158_ _g2412224161_))
                            (_g2412024158_ _g2412224161_))))
                    (_g2412024158_ _g2412224161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2412024158_
                                                     _g2412224161_))))
                                            (_g2412024158_ _g2412224161_))))
                                    (_g2412024158_ _g2412224161_))
                                (_g2412024158_ _g2412224161_))
                            (_g2412024158_ _g2412224161_))))
                    (_g2412024158_ _g2412224161_)))))
        (_g2411924246_ _expr24118_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23443_)
      (let* ((_g2344623604_
              (lambda (_g2344723601_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2344723601_)))
             (_g2344523611_ (lambda (_g2344723607_) ((lambda () '#f))))
             (_g2344424115_
              (lambda (_g2344723614_)
                (if (gx#stx-pair? _g2344723614_)
                    (let ((_e2345923616_ (gx#stx-e _g2344723614_)))
                      (let ((_hd2346023619_ (##car _e2345923616_))
                            (_tl2346123621_ (##cdr _e2345923616_)))
                        (if (gx#identifier? _hd2346023619_)
                            (if (gx#stx-eq? '%#let-values _hd2346023619_)
                                (if (gx#stx-pair? _tl2346123621_)
                                    (let ((_e2346223624_
                                           (gx#stx-e _tl2346123621_)))
                                      (let ((_hd2346323627_
                                             (##car _e2346223624_))
                                            (_tl2346423629_
                                             (##cdr _e2346223624_)))
                                        (if (gx#stx-pair? _hd2346323627_)
                                            (let ((_e2346523632_
                                                   (gx#stx-e _hd2346323627_)))
                                              (let ((_hd2346623635_
                                                     (##car _e2346523632_))
                                                    (_tl2346723637_
                                                     (##cdr _e2346523632_)))
                                                (if (gx#stx-pair?
                                                     _hd2346623635_)
                                                    (let ((_e2346823640_
                                                           (gx#stx-e
                                                            _hd2346623635_)))
                                                      (let ((_hd2346923643_
                                                             (##car _e2346823640_))
                                                            (_tl2347023645_
                                                             (##cdr _e2346823640_)))
                                                        (if (gx#stx-pair?
                                                             _hd2346923643_)
                                                            (let ((_e2347123648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2346923643_)))
                      (let ((_hd2347223651_ (##car _e2347123648_))
                            (_tl2347323653_ (##cdr _e2347123648_)))
                        (if (gx#stx-null? _tl2347323653_)
                            (if (gx#stx-pair? _tl2347023645_)
                                (let ((_e2347423656_
                                       (gx#stx-e _tl2347023645_)))
                                  (let ((_hd2347523659_ (##car _e2347423656_))
                                        (_tl2347623661_ (##cdr _e2347423656_)))
                                    (if (gx#stx-pair? _hd2347523659_)
                                        (let ((_e2347723664_
                                               (gx#stx-e _hd2347523659_)))
                                          (let ((_hd2347823667_
                                                 (##car _e2347723664_))
                                                (_tl2347923669_
                                                 (##cdr _e2347723664_)))
                                            (if (gx#identifier? _hd2347823667_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2347823667_)
                                                    (if (gx#stx-pair?
                                                         _tl2347923669_)
                                                        (let ((_e2348023672_
                                                               (gx#stx-e
                                                                _tl2347923669_)))
                                                          (let ((_hd2348123675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2348023672_))
                        (_tl2348223677_ (##cdr _e2348023672_)))
                    (if (gx#stx-pair? _hd2348123675_)
                        (let ((_e2348323680_ (gx#stx-e _hd2348123675_)))
                          (let ((_hd2348423683_ (##car _e2348323680_))
                                (_tl2348523685_ (##cdr _e2348323680_)))
                            (if (gx#stx-pair? _hd2348423683_)
                                (let ((_e2348623688_
                                       (gx#stx-e _hd2348423683_)))
                                  (let ((_hd2348723691_ (##car _e2348623688_))
                                        (_tl2348823693_ (##cdr _e2348623688_)))
                                    (if (gx#stx-pair? _hd2348723691_)
                                        (let ((_e2348923696_
                                               (gx#stx-e _hd2348723691_)))
                                          (let ((_hd2349023699_
                                                 (##car _e2348923696_))
                                                (_tl2349123701_
                                                 (##cdr _e2348923696_)))
                                            (if (gx#stx-null? _tl2349123701_)
                                                (if (gx#stx-pair?
                                                     _tl2348823693_)
                                                    (let ((_e2349223704_
                                                           (gx#stx-e
                                                            _tl2348823693_)))
                                                      (let ((_hd2349323707_
                                                             (##car _e2349223704_))
                                                            (_tl2349423709_
                                                             (##cdr _e2349223704_)))
                                                        (if (gx#stx-null?
                                                             _tl2349423709_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2348523685_)
                        (if (gx#stx-pair? _tl2348223677_)
                            (let ((_e2349523712_ (gx#stx-e _tl2348223677_)))
                              (let ((_hd2349623715_ (##car _e2349523712_))
                                    (_tl2349723717_ (##cdr _e2349523712_)))
                                (if (gx#stx-pair? _hd2349623715_)
                                    (let ((_e2349823720_
                                           (gx#stx-e _hd2349623715_)))
                                      (let ((_hd2349923723_
                                             (##car _e2349823720_))
                                            (_tl2350023725_
                                             (##cdr _e2349823720_)))
                                        (if (gx#identifier? _hd2349923723_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2349923723_)
                                                (if (gx#stx-pair?
                                                     _tl2350023725_)
                                                    (let ((_e2350123728_
                                                           (gx#stx-e
                                                            _tl2350023725_)))
                                                      (let ((_hd2350223731_
                                                             (##car _e2350123728_))
                                                            (_tl2350323733_
                                                             (##cdr _e2350123728_)))
                                                        (if (gx#stx-pair?
                                                             _hd2350223731_)
                                                            (let ((_e2350423736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2350223731_)))
                      (let ((_hd2350523739_ (##car _e2350423736_))
                            (_tl2350623741_ (##cdr _e2350423736_)))
                        (if (gx#stx-pair? _tl2350323733_)
                            (let ((_e2350723744_ (gx#stx-e _tl2350323733_)))
                              (let ((_hd2350823747_ (##car _e2350723744_))
                                    (_tl2350923749_ (##cdr _e2350723744_)))
                                (if (gx#stx-pair? _hd2350823747_)
                                    (let ((_e2351023752_
                                           (gx#stx-e _hd2350823747_)))
                                      (let ((_hd2351123755_
                                             (##car _e2351023752_))
                                            (_tl2351223757_
                                             (##cdr _e2351023752_)))
                                        (if (gx#identifier? _hd2351123755_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2351123755_)
                                                (if (gx#stx-pair?
                                                     _tl2351223757_)
                                                    (let ((_e2351323760_
                                                           (gx#stx-e
                                                            _tl2351223757_)))
                                                      (let ((_hd2351423763_
                                                             (##car _e2351323760_))
                                                            (_tl2351523765_
                                                             (##cdr _e2351323760_)))
                                                        (if (gx#stx-pair?
                                                             _hd2351423763_)
                                                            (let ((_e2351623768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2351423763_)))
                      (let ((_hd2351723771_ (##car _e2351623768_))
                            (_tl2351823773_ (##cdr _e2351623768_)))
                        (if (gx#identifier? _hd2351723771_)
                            (if (gx#stx-eq? '%#ref _hd2351723771_)
                                (if (gx#stx-pair? _tl2351823773_)
                                    (let ((_e2351923776_
                                           (gx#stx-e _tl2351823773_)))
                                      (let ((_hd2352023779_
                                             (##car _e2351923776_))
                                            (_tl2352123781_
                                             (##cdr _e2351923776_)))
                                        (if (gx#stx-null? _tl2352123781_)
                                            (if (gx#stx-pair? _tl2351523765_)
                                                (let ((_e2352223784_
                                                       (gx#stx-e
                                                        _tl2351523765_)))
                                                  (let ((_hd2352323787_
                                                         (##car _e2352223784_))
                                                        (_tl2352423789_
                                                         (##cdr _e2352223784_)))
                                                    (if (gx#stx-pair?
                                                         _hd2352323787_)
                                                        (let ((_e2352523792_
                                                               (gx#stx-e
                                                                _hd2352323787_)))
                                                          (let ((_hd2352623795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2352523792_))
                        (_tl2352723797_ (##cdr _e2352523792_)))
                    (if (gx#identifier? _hd2352623795_)
                        (if (gx#stx-eq? '%#ref _hd2352623795_)
                            (if (gx#stx-pair? _tl2352723797_)
                                (let ((_e2352823800_
                                       (gx#stx-e _tl2352723797_)))
                                  (let ((_hd2352923803_ (##car _e2352823800_))
                                        (_tl2353023805_ (##cdr _e2352823800_)))
                                    (if (gx#stx-null? _tl2353023805_)
                                        (if (gx#stx-pair? _tl2352423789_)
                                            (let ((_e2353123808_
                                                   (gx#stx-e _tl2352423789_)))
                                              (let ((_hd2353223811_
                                                     (##car _e2353123808_))
                                                    (_tl2353323813_
                                                     (##cdr _e2353123808_)))
                                                (if (gx#stx-pair?
                                                     _hd2353223811_)
                                                    (let ((_e2353423816_
                                                           (gx#stx-e
                                                            _hd2353223811_)))
                                                      (let ((_hd2353523819_
                                                             (##car _e2353423816_))
                                                            (_tl2353623821_
                                                             (##cdr _e2353423816_)))
                                                        (if (gx#identifier?
                                                             _hd2353523819_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2353523819_)
                        (if (gx#stx-pair? _tl2353623821_)
                            (let ((_e2353723824_ (gx#stx-e _tl2353623821_)))
                              (let ((_hd2353823827_ (##car _e2353723824_))
                                    (_tl2353923829_ (##cdr _e2353723824_)))
                                (if (gx#stx-null? _tl2353923829_)
                                    (if (gx#stx-null? _tl2350923749_)
                                        (if (gx#stx-null? _tl2349723717_)
                                            (if (gx#stx-null? _tl2347623661_)
                                                (if (gx#stx-null?
                                                     _tl2346723637_)
                                                    (if (gx#stx-pair?
                                                         _tl2346423629_)
                                                        (let ((_e2354023832_
                                                               (gx#stx-e
                                                                _tl2346423629_)))
                                                          (let ((_hd2354123835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2354023832_))
                        (_tl2354223837_ (##cdr _e2354023832_)))
                    (if (gx#stx-pair? _hd2354123835_)
                        (let ((_e2354323840_ (gx#stx-e _hd2354123835_)))
                          (let ((_hd2354423843_ (##car _e2354323840_))
                                (_tl2354523845_ (##cdr _e2354323840_)))
                            (if (gx#identifier? _hd2354423843_)
                                (if (gx#stx-eq? '%#lambda _hd2354423843_)
                                    (if (gx#stx-pair? _tl2354523845_)
                                        (let ((_e2354623848_
                                               (gx#stx-e _tl2354523845_)))
                                          (let ((_hd2354723851_
                                                 (##car _e2354623848_))
                                                (_tl2354823853_
                                                 (##cdr _e2354623848_)))
                                            (if (gx#stx-pair? _tl2354823853_)
                                                (let ((_e2354923856_
                                                       (gx#stx-e
                                                        _tl2354823853_)))
                                                  (let ((_hd2355023859_
                                                         (##car _e2354923856_))
                                                        (_tl2355123861_
                                                         (##cdr _e2354923856_)))
                                                    (if (gx#stx-pair?
                                                         _hd2355023859_)
                                                        (let ((_e2355223864_
                                                               (gx#stx-e
                                                                _hd2355023859_)))
                                                          (let ((_hd2355323867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2355223864_))
                        (_tl2355423869_ (##cdr _e2355223864_)))
                    (if (gx#identifier? _hd2355323867_)
                        (if (gx#stx-eq? '%#call _hd2355323867_)
                            (if (gx#stx-pair? _tl2355423869_)
                                (let ((_e2355523872_
                                       (gx#stx-e _tl2355423869_)))
                                  (let ((_hd2355623875_ (##car _e2355523872_))
                                        (_tl2355723877_ (##cdr _e2355523872_)))
                                    (if (gx#stx-pair? _hd2355623875_)
                                        (let ((_e2355823880_
                                               (gx#stx-e _hd2355623875_)))
                                          (let ((_hd2355923883_
                                                 (##car _e2355823880_))
                                                (_tl2356023885_
                                                 (##cdr _e2355823880_)))
                                            (if (gx#identifier? _hd2355923883_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2355923883_)
                                                    (if (gx#stx-pair?
                                                         _tl2356023885_)
                                                        (let ((_e2356123888_
                                                               (gx#stx-e
                                                                _tl2356023885_)))
                                                          (let ((_hd2356223891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2356123888_))
                        (_tl2356323893_ (##cdr _e2356123888_)))
                    (if (gx#stx-null? _tl2356323893_)
                        (if (gx#stx-pair? _tl2355723877_)
                            (let ((_e2356423896_ (gx#stx-e _tl2355723877_)))
                              (let ((_hd2356523899_ (##car _e2356423896_))
                                    (_tl2356623901_ (##cdr _e2356423896_)))
                                (if (gx#stx-pair? _hd2356523899_)
                                    (let ((_e2356723904_
                                           (gx#stx-e _hd2356523899_)))
                                      (let ((_hd2356823907_
                                             (##car _e2356723904_))
                                            (_tl2356923909_
                                             (##cdr _e2356723904_)))
                                        (if (gx#identifier? _hd2356823907_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2356823907_)
                                                (if (gx#stx-pair?
                                                     _tl2356923909_)
                                                    (let ((_e2357023912_
                                                           (gx#stx-e
                                                            _tl2356923909_)))
                                                      (let ((_hd2357123915_
                                                             (##car _e2357023912_))
                                                            (_tl2357223917_
                                                             (##cdr _e2357023912_)))
                                                        (if (gx#stx-null?
                                                             _tl2357223917_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2356623901_)
                        (let ((_e2357323920_ (gx#stx-e _tl2356623901_)))
                          (let ((_hd2357423923_ (##car _e2357323920_))
                                (_tl2357523925_ (##cdr _e2357323920_)))
                            (if (gx#stx-pair? _hd2357423923_)
                                (let ((_e2357623928_
                                       (gx#stx-e _hd2357423923_)))
                                  (let ((_hd2357723931_ (##car _e2357623928_))
                                        (_tl2357823933_ (##cdr _e2357623928_)))
                                    (if (gx#identifier? _hd2357723931_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2357723931_)
                                            (if (gx#stx-pair? _tl2357823933_)
                                                (let ((_e2357923936_
                                                       (gx#stx-e
                                                        _tl2357823933_)))
                                                  (let ((_hd2358023939_
                                                         (##car _e2357923936_))
                                                        (_tl2358123941_
                                                         (##cdr _e2357923936_)))
                                                    (if (gx#stx-null?
                                                         _tl2358123941_)
                                                        (if (gx#stx-pair?
                                                             _tl2357523925_)
                                                            (let ((_e2358223944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2357523925_)))
                      (let ((_hd2358323947_ (##car _e2358223944_))
                            (_tl2358423949_ (##cdr _e2358223944_)))
                        (if (gx#stx-pair? _hd2358323947_)
                            (let ((_e2358523952_ (gx#stx-e _hd2358323947_)))
                              (let ((_hd2358623955_ (##car _e2358523952_))
                                    (_tl2358723957_ (##cdr _e2358523952_)))
                                (if (gx#identifier? _hd2358623955_)
                                    (if (gx#stx-eq? '%#ref _hd2358623955_)
                                        (if (gx#stx-pair? _tl2358723957_)
                                            (let ((_e2358823960_
                                                   (gx#stx-e _tl2358723957_)))
                                              (let ((_hd2358923963_
                                                     (##car _e2358823960_))
                                                    (_tl2359023965_
                                                     (##cdr _e2358823960_)))
                                                (if (gx#stx-null?
                                                     _tl2359023965_)
                                                    (if (gx#stx-pair?
                                                         _tl2358423949_)
                                                        (let ((_e2359123968_
                                                               (gx#stx-e
                                                                _tl2358423949_)))
                                                          (let ((_hd2359223971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2359123968_))
                        (_tl2359323973_ (##cdr _e2359123968_)))
                    (if (gx#stx-pair? _hd2359223971_)
                        (let ((_e2359423976_ (gx#stx-e _hd2359223971_)))
                          (let ((_hd2359523979_ (##car _e2359423976_))
                                (_tl2359623981_ (##cdr _e2359423976_)))
                            (if (gx#identifier? _hd2359523979_)
                                (if (gx#stx-eq? '%#ref _hd2359523979_)
                                    (if (gx#stx-pair? _tl2359623981_)
                                        (let ((_e2359723984_
                                               (gx#stx-e _tl2359623981_)))
                                          (let ((_hd2359823987_
                                                 (##car _e2359723984_))
                                                (_tl2359923989_
                                                 (##cdr _e2359723984_)))
                                            (if (gx#stx-null? _tl2359923989_)
                                                (if (gx#stx-null?
                                                     _tl2359323973_)
                                                    (if (gx#stx-null?
                                                         _tl2355123861_)
                                                        (if (gx#stx-null?
                                                             _tl2354223837_)
                                                            ((lambda (_L23992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23993_
                              _L23994_
                              _L23995_
                              _L23996_
                              _L23997_
                              _L23998_
                              _L23999_
                              _L24000_
                              _L24001_
                              _L24002_)
                       (if (eq? (gxc#generate-runtime-binding-id _L23999_)
                                'apply)
                           (if (eq? (gxc#generate-runtime-binding-id _L23995_)
                                    'apply)
                               (if (eq? (gxc#generate-runtime-binding-id
                                         _L23994_)
                                        'keyword-dispatch)
                                   (if (gx#free-identifier=? _L24002_ _L23993_)
                                       (if (gx#free-identifier=?
                                            _L24001_
                                            _L23998_)
                                           (if (gx#free-identifier=?
                                                _L23996_
                                                _L23992_)
                                               (gx#free-identifier=?
                                                _L24000_
                                                _L23997_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2359823987_
                     _hd2358923963_
                     _hd2357123915_
                     _hd2356223891_
                     _hd2354723851_
                     _hd2353823827_
                     _hd2352923803_
                     _hd2352023779_
                     _hd2350523739_
                     _hd2349023699_
                     _hd2347223651_)
                    (_g2344523611_ _g2344723614_))
                (_g2344523611_ _g2344723614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_
                                                 _g2344723614_))))
                                        (_g2344523611_ _g2344723614_))
                                    (_g2344523611_ _g2344723614_))
                                (_g2344523611_ _g2344723614_))))
                        (_g2344523611_ _g2344723614_))))
                (_g2344523611_ _g2344723614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))))
                                            (_g2344523611_ _g2344723614_))
                                        (_g2344523611_ _g2344723614_))
                                    (_g2344523611_ _g2344723614_))))
                            (_g2344523611_ _g2344723614_))))
                    (_g2344523611_ _g2344723614_))
                (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2344523611_ _g2344723614_))
                                            (_g2344523611_ _g2344723614_))
                                        (_g2344523611_ _g2344723614_))))
                                (_g2344523611_ _g2344723614_))))
                        (_g2344523611_ _g2344723614_))
                    (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_ _g2344723614_))
                                            (_g2344523611_ _g2344723614_))))
                                    (_g2344523611_ _g2344723614_))))
                            (_g2344523611_ _g2344723614_))
                        (_g2344523611_ _g2344723614_))))
                (_g2344523611_ _g2344723614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_
                                                 _g2344723614_))))
                                        (_g2344523611_ _g2344723614_))))
                                (_g2344523611_ _g2344723614_))
                            (_g2344523611_ _g2344723614_))
                        (_g2344523611_ _g2344723614_))))
                (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2344523611_
                                                 _g2344723614_))))
                                        (_g2344523611_ _g2344723614_))
                                    (_g2344523611_ _g2344723614_))
                                (_g2344523611_ _g2344723614_))))
                        (_g2344523611_ _g2344723614_))))
                (_g2344523611_ _g2344723614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_ _g2344723614_))
                                            (_g2344523611_ _g2344723614_))
                                        (_g2344523611_ _g2344723614_))
                                    (_g2344523611_ _g2344723614_))))
                            (_g2344523611_ _g2344723614_))
                        (_g2344523611_ _g2344723614_))
                    (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))))
                                            (_g2344523611_ _g2344723614_))
                                        (_g2344523611_ _g2344723614_))))
                                (_g2344523611_ _g2344723614_))
                            (_g2344523611_ _g2344723614_))
                        (_g2344523611_ _g2344723614_))))
                (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2344523611_ _g2344723614_))
                                            (_g2344523611_ _g2344723614_))))
                                    (_g2344523611_ _g2344723614_))
                                (_g2344523611_ _g2344723614_))
                            (_g2344523611_ _g2344723614_))))
                    (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_ _g2344723614_))
                                            (_g2344523611_ _g2344723614_))))
                                    (_g2344523611_ _g2344723614_))))
                            (_g2344523611_ _g2344723614_))))
                    (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_ _g2344723614_))
                                            (_g2344523611_ _g2344723614_))))
                                    (_g2344523611_ _g2344723614_))))
                            (_g2344523611_ _g2344723614_))
                        (_g2344523611_ _g2344723614_))
                    (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_
                                                 _g2344723614_))))
                                        (_g2344523611_ _g2344723614_))))
                                (_g2344523611_ _g2344723614_))))
                        (_g2344523611_ _g2344723614_))))
                (_g2344523611_ _g2344723614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))
                                                (_g2344523611_
                                                 _g2344723614_))))
                                        (_g2344523611_ _g2344723614_))))
                                (_g2344523611_ _g2344723614_))
                            (_g2344523611_ _g2344723614_))))
                    (_g2344523611_ _g2344723614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2344523611_
                                                     _g2344723614_))))
                                            (_g2344523611_ _g2344723614_))))
                                    (_g2344523611_ _g2344723614_))
                                (_g2344523611_ _g2344723614_))
                            (_g2344523611_ _g2344723614_))))
                    (_g2344523611_ _g2344723614_)))))
        (_g2344424115_ _expr23443_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23185_ _id23186_ _clauses23187_ _gensym?23188_)
        (let _lp23190_ ((_rest23192_ _clauses23187_)
                        (_ids23193_ '())
                        (_impls23194_ '())
                        (_clauses23195_ '()))
          (let* ((_rest2319623204_ _rest23192_)
                 (_E2319923208_
                  (lambda () (error '"No clause matching" _rest2319623204_)))
                 (_else2319823212_
                  (lambda ()
                    (values (reverse _ids23193_)
                            (reverse _impls23194_)
                            (reverse _clauses23195_))))
                 (_K2320023417_
                  (lambda (_rest23215_ _clause23216_)
                    (if (gxc#dispatch-lambda-form? _clause23216_)
                        (_lp23190_
                         _rest23215_
                         _ids23193_
                         _impls23194_
                         (cons _clause23216_ _clauses23195_))
                        (let* ((_g2321823229_
                                (lambda (_g2321923226_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2321923226_)))
                               (_g2321723414_
                                (lambda (_g2321923232_)
                                  (if (gx#stx-pair? _g2321923232_)
                                      (let ((_e2322223234_
                                             (gx#stx-e _g2321923232_)))
                                        (let ((_hd2322323237_
                                               (##car _e2322223234_))
                                              (_tl2322423239_
                                               (##cdr _e2322223234_)))
                                          ((lambda (_L23242_ _L23243_)
                                             (let* ((_id23260_
                                                     (make-symbol
                                                      (gx#stx-e _id23186_)
                                                      '"__"
                                                      (length _clauses23195_)
                                                      (if _gensym?23188_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23262_
                                                     (gx#core-quote-syntax__1
                                                      _id23260_
                                                      (gx#stx-source
                                                       _stx23185_)))
                                                    (_impl23264_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23242_))
              _stx23185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23411_
                                                     (let* ((_g2326823296_
                                                             (lambda (_g2326923293_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2326923293_)))
                                                            (_g2326723312_
                                                             (lambda (_g2326923299_)
                                                               ((lambda (_L23301_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23243_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23301_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23185_)
                                      '())))
                        _g2326923299_)))
                    (_g2326623361_
                     (lambda (_g2326923315_)
                       (if (gx#stx-pair/null? _g2326923315_)
                           (if (fx>= (gx#stx-length _g2326923315_) '0)
                               (let ((_g27399_
                                      (gx#syntax-split-splice
                                       _g2326923315_
                                       '0)))
                                 (begin
                                   (let ((_g27400_ (values-count _g27399_)))
                                     (if (not (fx= _g27400_ 2))
                                         (error "Context expects 2 values"
                                                _g27400_)))
                                   (let ((_target2328223317_
                                          (values-ref _g27399_ 0))
                                         (_tl2328423319_
                                          (values-ref _g27399_ 1)))
                                     (letrec ((_loop2328523322_
                                               (lambda (_hd2328323325_
                                                        _arg2328923327_)
                                                 (if (gx#stx-pair?
                                                      _hd2328323325_)
                                                     (let ((_e2328623330_
                                                            (gx#stx-e
                                                             _hd2328323325_)))
                                                       (let ((_lp-hd2328723333_
                                                              (##car _e2328623330_))
                                                             (_lp-tl2328823335_
                                                              (##cdr _e2328623330_)))
                                                         (_loop2328523322_
                                                          _lp-tl2328823335_
                                                          (cons _lp-hd2328723333_
                                                                _arg2328923327_))))
                                                     (let ((_arg2329023338_
                                                            (reverse _arg2328923327_)))
                                                       ((lambda (_L23341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23342_)
                  (cons _L23243_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23262_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23341_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2335323356_ _g2335423358_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2335323356_ '()))
                                   _g2335423358_))
                           '()
                           _L23342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23185_)
                              '())))
                _tl2328423319_
                _arg2329023338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2328523322_
                                        _target2328223317_
                                        '())))))
                               (_g2326723312_ _g2326923315_))
                           (_g2326723312_ _g2326923315_))))
                    (_g2326523408_
                     (lambda (_g2326923364_)
                       (if (gx#stx-pair/null? _g2326923364_)
                           (if (fx>= (gx#stx-length _g2326923364_) '0)
                               (let ((_g27401_
                                      (gx#syntax-split-splice
                                       _g2326923364_
                                       '0)))
                                 (begin
                                   (let ((_g27402_ (values-count _g27401_)))
                                     (if (not (fx= _g27402_ 2))
                                         (error "Context expects 2 values"
                                                _g27402_)))
                                   (let ((_target2327123366_
                                          (values-ref _g27401_ 0))
                                         (_tl2327323368_
                                          (values-ref _g27401_ 1)))
                                     (if (gx#stx-null? _tl2327323368_)
                                         (letrec ((_loop2327423371_
                                                   (lambda (_hd2327223374_
                                                            _arg2327823376_)
                                                     (if (gx#stx-pair?
                                                          _hd2327223374_)
                                                         (let ((_e2327523379_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2327223374_)))
                   (let ((_lp-hd2327623382_ (##car _e2327523379_))
                         (_lp-tl2327723384_ (##cdr _e2327523379_)))
                     (_loop2327423371_
                      _lp-tl2327723384_
                      (cons _lp-hd2327623382_ _arg2327823376_))))
                 (let ((_arg2327923387_ (reverse _arg2327823376_)))
                   ((lambda (_L23390_)
                      (cons _L23243_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23262_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2340023403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2340123405_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2340023403_ '()))
                         _g2340123405_))
                 '()
                 _L23390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23185_)
                                  '())))
                    _arg2327923387_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2327423371_
                                            _target2327123366_
                                            '()))
                                         (_g2326623361_ _g2326923364_)))))
                               (_g2326623361_ _g2326923364_))
                           (_g2326623361_ _g2326923364_)))))
               (_g2326523408_ _L23243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23190_
                                                _rest23215_
                                                (cons _id23262_ _ids23193_)
                                                (cons _impl23264_ _impls23194_)
                                                (cons _clause23411_
                                                      _clauses23195_))))
                                           _tl2322423239_
                                           _hd2322323237_)))
                                      (_g2321823229_ _g2321923232_)))))
                          (_g2321723414_ _clause23216_))))))
            (if (##pair? _rest2319623204_)
                (let ((_hd2320123420_ (##car _rest2319623204_))
                      (_tl2320223422_ (##cdr _rest2319623204_)))
                  (let* ((_clause23425_ _hd2320123420_)
                         (_rest23427_ _tl2320223422_))
                    (_K2320023417_ _rest23427_ _clause23425_)))
                (_else2319823212_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23432_ _id23433_ _clauses23434_)
          (let ((_gensym?23436_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23432_
             _id23433_
             _clauses23434_
             _gensym?23436_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27404_
          (let ((_g27403_ (length _g27404_)))
            (cond ((fx= _g27403_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27404_))
                  ((fx= _g27403_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27404_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27404_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22466_)
      (letrec ((_case-lambda-clause-def22468_
                (lambda (_id23181_ _impl23182_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23181_ '())
                               (cons (gxc#compile-e _impl23182_) '())))
                   _stx22466_)))
               (_opt-lambda-dispatch-name22469_
                (lambda (_id23177_)
                  (if (uninterned-symbol? _id23177_)
                      (let ((_str23179_ (symbol->string _id23177_)))
                        (if (string-prefix? _str23179_ '"opt-lambda")
                            '"%"
                            _id23177_))
                      _id23177_)))
               (_kw-lambda-dispatch-name22470_
                (lambda (_id23172_ _name23173_)
                  (if (uninterned-symbol? _id23172_)
                      (let ((_str23175_ (symbol->string _id23172_)))
                        (if (string-prefix? _str23175_ '"kw-lambda")
                            _name23173_
                            _id23172_))
                      _id23172_))))
        (let* ((_g2247522534_
                (lambda (_g2247622531_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2247622531_)))
               (_g2247422580_
                (lambda (_g2247622537_)
                  (if (gx#stx-pair? _g2247622537_)
                      (let ((_e2252122539_ (gx#stx-e _g2247622537_)))
                        (let ((_hd2252222542_ (##car _e2252122539_))
                              (_tl2252322544_ (##cdr _e2252122539_)))
                          (if (gx#stx-pair? _tl2252322544_)
                              (let ((_e2252422547_ (gx#stx-e _tl2252322544_)))
                                (let ((_hd2252522550_ (##car _e2252422547_))
                                      (_tl2252622552_ (##cdr _e2252422547_)))
                                  (if (gx#stx-pair? _tl2252622552_)
                                      (let ((_e2252722555_
                                             (gx#stx-e _tl2252622552_)))
                                        (let ((_hd2252822558_
                                               (##car _e2252722555_))
                                              (_tl2252922560_
                                               (##cdr _e2252722555_)))
                                          (if (gx#stx-null? _tl2252922560_)
                                              ((lambda (_L22563_ _L22564_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22564_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22563_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22466_))
                                               _hd2252822558_
                                               _hd2252522550_)
                                              (_g2247522534_ _g2247622537_))))
                                      (_g2247522534_ _g2247622537_))))
                              (_g2247522534_ _g2247622537_))))
                      (_g2247522534_ _g2247622537_))))
               (_g2247322862_
                (lambda (_g2247622583_)
                  (if (gx#stx-pair? _g2247622583_)
                      (let ((_e2250722585_ (gx#stx-e _g2247622583_)))
                        (let ((_hd2250822588_ (##car _e2250722585_))
                              (_tl2250922590_ (##cdr _e2250722585_)))
                          (if (gx#stx-pair? _tl2250922590_)
                              (let ((_e2251022593_ (gx#stx-e _tl2250922590_)))
                                (let ((_hd2251122596_ (##car _e2251022593_))
                                      (_tl2251222598_ (##cdr _e2251022593_)))
                                  (if (gx#stx-pair? _hd2251122596_)
                                      (let ((_e2251322601_
                                             (gx#stx-e _hd2251122596_)))
                                        (let ((_hd2251422604_
                                               (##car _e2251322601_))
                                              (_tl2251522606_
                                               (##cdr _e2251322601_)))
                                          (if (gx#stx-null? _tl2251522606_)
                                              (if (gx#stx-pair? _tl2251222598_)
                                                  (let ((_e2251622609_
                                                         (gx#stx-e
                                                          _tl2251222598_)))
                                                    (let ((_hd2251722612_
                                                           (##car _e2251622609_))
                                                          (_tl2251822614_
                                                           (##cdr _e2251622609_)))
                                                      (if (gx#stx-null?
                                                           _tl2251822614_)
                                                          ((lambda (_L22617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22618_)
                     (if (if (gx#identifier? _L22618_)
                             (gxc#kw-lambda-expr? _L22617_)
                             '#f)
                         (let* ((_g2263422687_
                                 (lambda (_g2263522684_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2263522684_)))
                                (_g2263322859_
                                 (lambda (_g2263522690_)
                                   (if (gx#stx-pair? _g2263522690_)
                                       (let ((_e2264122692_
                                              (gx#stx-e _g2263522690_)))
                                         (let ((_hd2264222695_
                                                (##car _e2264122692_))
                                               (_tl2264322697_
                                                (##cdr _e2264122692_)))
                                           (if (gx#stx-pair? _tl2264322697_)
                                               (let ((_e2264422700_
                                                      (gx#stx-e
                                                       _tl2264322697_)))
                                                 (let ((_hd2264522703_
                                                        (##car _e2264422700_))
                                                       (_tl2264622705_
                                                        (##cdr _e2264422700_)))
                                                   (if (gx#stx-pair?
                                                        _hd2264522703_)
                                                       (let ((_e2264722708_
                                                              (gx#stx-e
                                                               _hd2264522703_)))
                                                         (let ((_hd2264822711_
                                                                (##car _e2264722708_))
                                                               (_tl2264922713_
                                                                (##cdr _e2264722708_)))
                                                           (if (gx#stx-pair?
                                                                _hd2264822711_)
                                                               (let ((_e2265022716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2264822711_)))
                         (let ((_hd2265122719_ (##car _e2265022716_))
                               (_tl2265222721_ (##cdr _e2265022716_)))
                           (if (gx#stx-pair? _hd2265122719_)
                               (let ((_e2265322724_ (gx#stx-e _hd2265122719_)))
                                 (let ((_hd2265422727_ (##car _e2265322724_))
                                       (_tl2265522729_ (##cdr _e2265322724_)))
                                   (if (gx#stx-null? _tl2265522729_)
                                       (if (gx#stx-pair? _tl2265222721_)
                                           (let ((_e2265622732_
                                                  (gx#stx-e _tl2265222721_)))
                                             (let ((_hd2265722735_
                                                    (##car _e2265622732_))
                                                   (_tl2265822737_
                                                    (##cdr _e2265622732_)))
                                               (if (gx#stx-pair?
                                                    _hd2265722735_)
                                                   (let ((_e2265922740_
                                                          (gx#stx-e
                                                           _hd2265722735_)))
                                                     (let ((_hd2266022743_
                                                            (##car _e2265922740_))
                                                           (_tl2266122745_
                                                            (##cdr _e2265922740_)))
                                                       (if (gx#stx-pair?
                                                            _tl2266122745_)
                                                           (let ((_e2266222748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2266122745_)))
                     (let ((_hd2266322751_ (##car _e2266222748_))
                           (_tl2266422753_ (##cdr _e2266222748_)))
                       (if (gx#stx-pair? _hd2266322751_)
                           (let ((_e2266522756_ (gx#stx-e _hd2266322751_)))
                             (let ((_hd2266622759_ (##car _e2266522756_))
                                   (_tl2266722761_ (##cdr _e2266522756_)))
                               (if (gx#stx-pair? _hd2266622759_)
                                   (let ((_e2266822764_
                                          (gx#stx-e _hd2266622759_)))
                                     (let ((_hd2266922767_
                                            (##car _e2266822764_))
                                           (_tl2267022769_
                                            (##cdr _e2266822764_)))
                                       (if (gx#stx-pair? _hd2266922767_)
                                           (let ((_e2267122772_
                                                  (gx#stx-e _hd2266922767_)))
                                             (let ((_hd2267222775_
                                                    (##car _e2267122772_))
                                                   (_tl2267322777_
                                                    (##cdr _e2267122772_)))
                                               (if (gx#stx-null?
                                                    _tl2267322777_)
                                                   (if (gx#stx-pair?
                                                        _tl2267022769_)
                                                       (let ((_e2267422780_
                                                              (gx#stx-e
                                                               _tl2267022769_)))
                                                         (let ((_hd2267522783_
                                                                (##car _e2267422780_))
                                                               (_tl2267622785_
                                                                (##cdr _e2267422780_)))
                                                           (if (gx#stx-null?
                                                                _tl2267622785_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2266722761_)
                           (if (gx#stx-pair? _tl2266422753_)
                               (let ((_e2267722788_ (gx#stx-e _tl2266422753_)))
                                 (let ((_hd2267822791_ (##car _e2267722788_))
                                       (_tl2267922793_ (##cdr _e2267722788_)))
                                   (if (gx#stx-null? _tl2267922793_)
                                       (if (gx#stx-null? _tl2265822737_)
                                           (if (gx#stx-null? _tl2264922713_)
                                               (if (gx#stx-pair?
                                                    _tl2264622705_)
                                                   (let ((_e2268022796_
                                                          (gx#stx-e
                                                           _tl2264622705_)))
                                                     (let ((_hd2268122799_
                                                            (##car _e2268022796_))
                                                           (_tl2268222801_
                                                            (##cdr _e2268022796_)))
                                                       (if (gx#stx-null?
                                                            _tl2268222801_)
                                                           ((lambda (_L22804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22805_
                             _L22806_
                             _L22807_
                             _L22808_)
                      (let* ((_get-kws-id22848_
                              (make-symbol
                               (gx#stx-e _L22618_)
                               '"__"
                               (_kw-lambda-dispatch-name22470_
                                (gx#stx-e _L22808_)
                                '"@")))
                             (_main-id22850_
                              (make-symbol
                               (gx#stx-e _L22618_)
                               '"__"
                               (_kw-lambda-dispatch-name22470_
                                (gx#stx-e _L22807_)
                                '"%")))
                             (_g27405_
                              (gx#core-bind-runtime!__0 _get-kws-id22848_))
                             (_g27406_
                              (gx#core-bind-runtime!__0 _main-id22850_))
                             (_new-kw-dispatch22854_
                              (gxc#apply-expression-subst
                               _L22804_
                               _L22808_
                               _get-kws-id22848_))
                             (_new-get-kws22856_
                              (gxc#apply-expression-subst
                               _L22805_
                               _L22807_
                               _main-id22850_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#generate-runtime-binding-id _L22618_)
                           '" => "
                           (gxc#generate-runtime-binding-id _get-kws-id22848_)
                           '" => "
                           (gxc#generate-runtime-binding-id _main-id22850_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id22850_ '())
                                                     (cons _L22806_ '())))
                                         _stx22466_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id22848_
                                                                '())
                                                          (cons _new-get-kws22856_
                                                                '())))
                                              _stx22466_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L22618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch22854_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22466_)
                                                   '()))))
                           _stx22466_))))
                    _hd2268122799_
                    _hd2267822791_
                    _hd2267522783_
                    _hd2267222775_
                    _hd2265422727_)
                   (_g2263422687_ _g2263522690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2263422687_
                                                    _g2263522690_))
                                               (_g2263422687_ _g2263522690_))
                                           (_g2263422687_ _g2263522690_))
                                       (_g2263422687_ _g2263522690_))))
                               (_g2263422687_ _g2263522690_))
                           (_g2263422687_ _g2263522690_))
                       (_g2263422687_ _g2263522690_))))
               (_g2263422687_ _g2263522690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2263422687_
                                                    _g2263522690_))))
                                           (_g2263422687_ _g2263522690_))))
                                   (_g2263422687_ _g2263522690_))))
                           (_g2263422687_ _g2263522690_))))
                   (_g2263422687_ _g2263522690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2263422687_
                                                    _g2263522690_))))
                                           (_g2263422687_ _g2263522690_))
                                       (_g2263422687_ _g2263522690_))))
                               (_g2263422687_ _g2263522690_))))
                       (_g2263422687_ _g2263522690_))))
               (_g2263422687_ _g2263522690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2263422687_ _g2263522690_))))
                                       (_g2263422687_ _g2263522690_)))))
                           (_g2263322859_ _L22617_))
                         (_g2247422580_ _g2247622583_)))
                   _hd2251722612_
                   _hd2251422604_)
                  (_g2247422580_ _g2247622583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2247422580_
                                                   _g2247622583_))
                                              (_g2247422580_ _g2247622583_))))
                                      (_g2247422580_ _g2247622583_))))
                              (_g2247422580_ _g2247622583_))))
                      (_g2247422580_ _g2247622583_))))
               (_g2247223044_
                (lambda (_g2247622865_)
                  (if (gx#stx-pair? _g2247622865_)
                      (let ((_e2249322867_ (gx#stx-e _g2247622865_)))
                        (let ((_hd2249422870_ (##car _e2249322867_))
                              (_tl2249522872_ (##cdr _e2249322867_)))
                          (if (gx#stx-pair? _tl2249522872_)
                              (let ((_e2249622875_ (gx#stx-e _tl2249522872_)))
                                (let ((_hd2249722878_ (##car _e2249622875_))
                                      (_tl2249822880_ (##cdr _e2249622875_)))
                                  (if (gx#stx-pair? _hd2249722878_)
                                      (let ((_e2249922883_
                                             (gx#stx-e _hd2249722878_)))
                                        (let ((_hd2250022886_
                                               (##car _e2249922883_))
                                              (_tl2250122888_
                                               (##cdr _e2249922883_)))
                                          (if (gx#stx-null? _tl2250122888_)
                                              (if (gx#stx-pair? _tl2249822880_)
                                                  (let ((_e2250222891_
                                                         (gx#stx-e
                                                          _tl2249822880_)))
                                                    (let ((_hd2250322894_
                                                           (##car _e2250222891_))
                                                          (_tl2250422896_
                                                           (##cdr _e2250222891_)))
                                                      (if (gx#stx-null?
                                                           _tl2250422896_)
                                                          ((lambda (_L22899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22900_)
                     (if (if (gx#identifier? _L22900_)
                             (gxc#opt-lambda-expr? _L22899_)
                             '#f)
                         (let* ((_g2291622946_
                                 (lambda (_g2291722943_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2291722943_)))
                                (_g2291523041_
                                 (lambda (_g2291722949_)
                                   (if (gx#stx-pair? _g2291722949_)
                                       (let ((_e2292122951_
                                              (gx#stx-e _g2291722949_)))
                                         (let ((_hd2292222954_
                                                (##car _e2292122951_))
                                               (_tl2292322956_
                                                (##cdr _e2292122951_)))
                                           (if (gx#stx-pair? _tl2292322956_)
                                               (let ((_e2292422959_
                                                      (gx#stx-e
                                                       _tl2292322956_)))
                                                 (let ((_hd2292522962_
                                                        (##car _e2292422959_))
                                                       (_tl2292622964_
                                                        (##cdr _e2292422959_)))
                                                   (if (gx#stx-pair?
                                                        _hd2292522962_)
                                                       (let ((_e2292722967_
                                                              (gx#stx-e
                                                               _hd2292522962_)))
                                                         (let ((_hd2292822970_
                                                                (##car _e2292722967_))
                                                               (_tl2292922972_
                                                                (##cdr _e2292722967_)))
                                                           (if (gx#stx-pair?
                                                                _hd2292822970_)
                                                               (let ((_e2293022975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2292822970_)))
                         (let ((_hd2293122978_ (##car _e2293022975_))
                               (_tl2293222980_ (##cdr _e2293022975_)))
                           (if (gx#stx-pair? _hd2293122978_)
                               (let ((_e2293322983_ (gx#stx-e _hd2293122978_)))
                                 (let ((_hd2293422986_ (##car _e2293322983_))
                                       (_tl2293522988_ (##cdr _e2293322983_)))
                                   (if (gx#stx-null? _tl2293522988_)
                                       (if (gx#stx-pair? _tl2293222980_)
                                           (let ((_e2293622991_
                                                  (gx#stx-e _tl2293222980_)))
                                             (let ((_hd2293722994_
                                                    (##car _e2293622991_))
                                                   (_tl2293822996_
                                                    (##cdr _e2293622991_)))
                                               (if (gx#stx-null?
                                                    _tl2293822996_)
                                                   (if (gx#stx-null?
                                                        _tl2292922972_)
                                                       (if (gx#stx-pair?
                                                            _tl2292622964_)
                                                           (let ((_e2293922999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2292622964_)))
                     (let ((_hd2294023002_ (##car _e2293922999_))
                           (_tl2294123004_ (##cdr _e2293922999_)))
                       (if (gx#stx-null? _tl2294123004_)
                           ((lambda (_L23007_ _L23008_ _L23009_)
                              (let* ((_lambda-id23033_
                                      (make-symbol
                                       (gx#stx-e _L22900_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22469_
                                        (gx#stx-e _L23009_))))
                                     (_lambda-id23035_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23033_
                                       (gx#stx-source _stx22466_)))
                                     (_g27407_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23035_))
                                     (_new-case-lambda-expr23038_
                                      (gxc#apply-expression-subst
                                       _L23007_
                                       _L23009_
                                       _lambda-id23035_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L22900_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id23035_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L23008_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22466_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L22900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23038_ '())))
               _stx22466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22466_))))
                            _hd2294023002_
                            _hd2293722994_
                            _hd2293422986_)
                           (_g2291622946_ _g2291722949_))))
                   (_g2291622946_ _g2291722949_))
               (_g2291622946_ _g2291722949_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2291622946_
                                                    _g2291722949_))))
                                           (_g2291622946_ _g2291722949_))
                                       (_g2291622946_ _g2291722949_))))
                               (_g2291622946_ _g2291722949_))))
                       (_g2291622946_ _g2291722949_))))
               (_g2291622946_ _g2291722949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2291622946_ _g2291722949_))))
                                       (_g2291622946_ _g2291722949_)))))
                           (_g2291523041_ _L22899_))
                         (_g2247322862_ _g2247622865_)))
                   _hd2250322894_
                   _hd2250022886_)
                  (_g2247322862_ _g2247622865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2247322862_
                                                   _g2247622865_))
                                              (_g2247322862_ _g2247622865_))))
                                      (_g2247322862_ _g2247622865_))))
                              (_g2247322862_ _g2247622865_))))
                      (_g2247322862_ _g2247622865_))))
               (_g2247123169_
                (lambda (_g2247623047_)
                  (if (gx#stx-pair? _g2247623047_)
                      (let ((_e2247923049_ (gx#stx-e _g2247623047_)))
                        (let ((_hd2248023052_ (##car _e2247923049_))
                              (_tl2248123054_ (##cdr _e2247923049_)))
                          (if (gx#stx-pair? _tl2248123054_)
                              (let ((_e2248223057_ (gx#stx-e _tl2248123054_)))
                                (let ((_hd2248323060_ (##car _e2248223057_))
                                      (_tl2248423062_ (##cdr _e2248223057_)))
                                  (if (gx#stx-pair? _hd2248323060_)
                                      (let ((_e2248523065_
                                             (gx#stx-e _hd2248323060_)))
                                        (let ((_hd2248623068_
                                               (##car _e2248523065_))
                                              (_tl2248723070_
                                               (##cdr _e2248523065_)))
                                          (if (gx#stx-null? _tl2248723070_)
                                              (if (gx#stx-pair? _tl2248423062_)
                                                  (let ((_e2248823073_
                                                         (gx#stx-e
                                                          _tl2248423062_)))
                                                    (let ((_hd2248923076_
                                                           (##car _e2248823073_))
                                                          (_tl2249023078_
                                                           (##cdr _e2248823073_)))
                                                      (if (gx#stx-null?
                                                           _tl2249023078_)
                                                          ((lambda (_L23081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23082_)
                     (if (if (gx#identifier? _L23082_)
                             (gxc#case-lambda-expr? _L23081_)
                             '#f)
                         (let* ((_g2309923113_
                                 (lambda (_g2310023110_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2310023110_)))
                                (_g2309823144_
                                 (lambda (_g2310023116_)
                                   (if (gx#stx-pair? _g2310023116_)
                                       (let ((_e2310623118_
                                              (gx#stx-e _g2310023116_)))
                                         (let ((_hd2310723121_
                                                (##car _e2310623118_))
                                               (_tl2310823123_
                                                (##cdr _e2310623118_)))
                                           ((lambda (_L23126_)
                                              (let ((_g27408_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22466_
                                                      _L23082_
                                                      _L23126_)))
                                                (begin
                                                  (let ((_g27409_
                                                         (values-count
                                                          _g27408_)))
                                                    (if (not (fx= _g27409_ 3))
                                                        (error "Context expects 3 values"
                                                               _g27409_)))
                                                  (let ((_ids23136_
                                                         (values-ref
                                                          _g27408_
                                                          0))
                                                        (_impls23137_
                                                         (values-ref
                                                          _g27408_
                                                          1))
                                                        (_clauses23138_
                                                         (values-ref
                                                          _g27408_
                                                          2)))
                                                    (let* ((_g27410_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23136_))
                                                           (_defs23141_
                                                            (map _case-lambda-clause-def22468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23136_
                         _impls23137_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L23082_)
                 '" => "
                 (map gxc#identifier-symbol _ids23136_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23082_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23138_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22466_)
                                     '())
                               _defs23141_))
                 _stx22466_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2310823123_)))
                                       (_g2309923113_ _g2310023116_))))
                                (_g2309723166_
                                 (lambda (_g2310023147_)
                                   (if (gx#stx-pair? _g2310023147_)
                                       (let ((_e2310223149_
                                              (gx#stx-e _g2310023147_)))
                                         (let ((_hd2310323152_
                                                (##car _e2310223149_))
                                               (_tl2310423154_
                                                (##cdr _e2310223149_)))
                                           ((lambda (_L23157_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23157_)
                                                  _stx22466_
                                                  (_g2309823144_
                                                   _g2310023147_)))
                                            _tl2310423154_)))
                                       (_g2309823144_ _g2310023147_)))))
                           (_g2309723166_ _L23081_))
                         (_g2247223044_ _g2247623047_)))
                   _hd2248923076_
                   _hd2248623068_)
                  (_g2247223044_ _g2247623047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2247223044_
                                                   _g2247623047_))
                                              (_g2247223044_ _g2247623047_))))
                                      (_g2247223044_ _g2247623047_))))
                              (_g2247223044_ _g2247623047_))))
                      (_g2247223044_ _g2247623047_)))))
          (_g2247123169_ _stx22466_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21402_)
      (letrec* ((_bind-e__2735527356_
                 (lambda (_id22450_ _expr22451_ _compile?22452_)
                   (cons (cons _id22450_ '())
                         (cons (if _compile?22452_
                                   (gxc#compile-e _expr22451_)
                                   _expr22451_)
                               '()))))
                (_bind-e__0__2735727358_
                 (lambda (_id22457_ _expr22458_)
                   (let ((_compile?22460_ '#t))
                     (_bind-e__2735527356_
                      _id22457_
                      _expr22458_
                      _compile?22460_))))
                (_bind-e21404_
                 (lambda _g27412_
                   (let ((_g27411_ (length _g27412_)))
                     (cond ((fx= _g27411_ 2)
                            (apply _bind-e__0__2735727358_ _g27412_))
                           ((fx= _g27411_ 3)
                            (apply _bind-e__2735527356_ _g27412_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27412_))))))
                (_compile-bindings21405_
                 (lambda (_bindings22034_)
                   (let _lp22036_ ((_rest22038_ _bindings22034_)
                                   (_lift122039_ '())
                                   (_lift222040_ '())
                                   (_bind22041_ '()))
                     (let* ((_rest2204222050_ _rest22038_)
                            (_E2204522054_
                             (lambda ()
                               (error '"No clause matching" _rest2204222050_)))
                            (_else2204422058_
                             (lambda ()
                               (values (reverse _lift122039_)
                                       (reverse _lift222040_)
                                       (reverse _bind22041_))))
                            (_K2204622437_
                             (lambda (_rest22061_ _hd22062_)
                               (let* ((_g2206622102_
                                       (lambda (_g2206722099_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2206722099_)))
                                      (_g2206522143_
                                       (lambda (_g2206722105_)
                                         (if (gx#stx-pair? _g2206722105_)
                                             (let ((_e2209222107_
                                                    (gx#stx-e _g2206722105_)))
                                               (let ((_hd2209322110_
                                                      (##car _e2209222107_))
                                                     (_tl2209422112_
                                                      (##cdr _e2209222107_)))
                                                 (if (gx#stx-pair?
                                                      _tl2209422112_)
                                                     (let ((_e2209522115_
                                                            (gx#stx-e
                                                             _tl2209422112_)))
                                                       (let ((_hd2209622118_
                                                              (##car _e2209522115_))
                                                             (_tl2209722120_
                                                              (##cdr _e2209522115_)))
                                                         (if (gx#stx-null?
                                                              _tl2209722120_)
                                                             ((lambda (_L22123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22124_)
                        (_lp22036_
                         _rest22061_
                         _lift122039_
                         _lift222040_
                         (cons (cons _L22124_
                                     (cons (gxc#compile-e _L22123_) '()))
                               _bind22041_)))
                      _hd2209622118_
                      _hd2209322110_)
                     (_g2206622102_ _g2206722105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2206622102_
                                                      _g2206722105_))))
                                             (_g2206622102_ _g2206722105_))))
                                      (_g2206422315_
                                       (lambda (_g2206722146_)
                                         (if (gx#stx-pair? _g2206722146_)
                                             (let ((_e2208122148_
                                                    (gx#stx-e _g2206722146_)))
                                               (let ((_hd2208222151_
                                                      (##car _e2208122148_))
                                                     (_tl2208322153_
                                                      (##cdr _e2208122148_)))
                                                 (if (gx#stx-pair?
                                                      _hd2208222151_)
                                                     (let ((_e2208422156_
                                                            (gx#stx-e
                                                             _hd2208222151_)))
                                                       (let ((_hd2208522159_
                                                              (##car _e2208422156_))
                                                             (_tl2208622161_
                                                              (##cdr _e2208422156_)))
                                                         (if (gx#stx-null?
                                                              _tl2208622161_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2208322153_)
                         (let ((_e2208722164_ (gx#stx-e _tl2208322153_)))
                           (let ((_hd2208822167_ (##car _e2208722164_))
                                 (_tl2208922169_ (##cdr _e2208722164_)))
                             (if (gx#stx-null? _tl2208922169_)
                                 ((lambda (_L22172_ _L22173_)
                                    (if (if (gx#identifier? _L22173_)
                                            (gxc#opt-lambda-expr? _L22172_)
                                            '#f)
                                        (let* ((_g2218722217_
                                                (lambda (_g2218822214_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2218822214_)))
                                               (_g2218622312_
                                                (lambda (_g2218822220_)
                                                  (if (gx#stx-pair?
                                                       _g2218822220_)
                                                      (let ((_e2219222222_
                                                             (gx#stx-e
                                                              _g2218822220_)))
                                                        (let ((_hd2219322225_
                                                               (##car _e2219222222_))
                                                              (_tl2219422227_
                                                               (##cdr _e2219222222_)))
                                                          (if (gx#stx-pair?
                                                               _tl2219422227_)
                                                              (let ((_e2219522230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2219422227_)))
                        (let ((_hd2219622233_ (##car _e2219522230_))
                              (_tl2219722235_ (##cdr _e2219522230_)))
                          (if (gx#stx-pair? _hd2219622233_)
                              (let ((_e2219822238_ (gx#stx-e _hd2219622233_)))
                                (let ((_hd2219922241_ (##car _e2219822238_))
                                      (_tl2220022243_ (##cdr _e2219822238_)))
                                  (if (gx#stx-pair? _hd2219922241_)
                                      (let ((_e2220122246_
                                             (gx#stx-e _hd2219922241_)))
                                        (let ((_hd2220222249_
                                               (##car _e2220122246_))
                                              (_tl2220322251_
                                               (##cdr _e2220122246_)))
                                          (if (gx#stx-pair? _hd2220222249_)
                                              (let ((_e2220422254_
                                                     (gx#stx-e
                                                      _hd2220222249_)))
                                                (let ((_hd2220522257_
                                                       (##car _e2220422254_))
                                                      (_tl2220622259_
                                                       (##cdr _e2220422254_)))
                                                  (if (gx#stx-null?
                                                       _tl2220622259_)
                                                      (if (gx#stx-pair?
                                                           _tl2220322251_)
                                                          (let ((_e2220722262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2220322251_)))
                    (let ((_hd2220822265_ (##car _e2220722262_))
                          (_tl2220922267_ (##cdr _e2220722262_)))
                      (if (gx#stx-null? _tl2220922267_)
                          (if (gx#stx-null? _tl2220022243_)
                              (if (gx#stx-pair? _tl2219722235_)
                                  (let ((_e2221022270_
                                         (gx#stx-e _tl2219722235_)))
                                    (let ((_hd2221122273_
                                           (##car _e2221022270_))
                                          (_tl2221222275_
                                           (##cdr _e2221022270_)))
                                      (if (gx#stx-null? _tl2221222275_)
                                          ((lambda (_L22278_ _L22279_ _L22280_)
                                             (let* ((_lambda-id22304_
                                                     (make-symbol
                                                      (gx#stx-e _L22173_)
                                                      (gensym '__)))
                                                    (_lambda-id22306_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22304_
                                                      (gx#stx-source
                                                       _stx21402_)))
                                                    (_g27413_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22306_))
                                                    (_new-case-lambda-expr22309_
                                                     (gxc#apply-expression-subst
                                                      _L22278_
                                                      _L22280_
                                                      _lambda-id22306_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L22173_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id22306_))
                                                 (_lp22036_
                                                  (cons (_bind-e__2735527356_
                                                         _L22173_
                                                         _new-case-lambda-expr22309_
                                                         '#f)
                                                        _rest22061_)
                                                  (cons (_bind-e__0__2735727358_
                                                         _lambda-id22306_
                                                         _L22279_)
                                                        _lift122039_)
                                                  _lift222040_
                                                  _bind22041_))))
                                           _hd2221122273_
                                           _hd2220822265_
                                           _hd2220522257_)
                                          (_g2218722217_ _g2218822220_))))
                                  (_g2218722217_ _g2218822220_))
                              (_g2218722217_ _g2218822220_))
                          (_g2218722217_ _g2218822220_))))
                  (_g2218722217_ _g2218822220_))
              (_g2218722217_ _g2218822220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2218722217_ _g2218822220_))))
                                      (_g2218722217_ _g2218822220_))))
                              (_g2218722217_ _g2218822220_))))
                      (_g2218722217_ _g2218822220_))))
              (_g2218722217_ _g2218822220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2218622312_ _L22172_))
                                        (_g2206522143_ _g2206722146_)))
                                  _hd2208822167_
                                  _hd2208522159_)
                                 (_g2206522143_ _g2206722146_))))
                         (_g2206522143_ _g2206722146_))
                     (_g2206522143_ _g2206722146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2206522143_
                                                      _g2206722146_))))
                                             (_g2206522143_ _g2206722146_))))
                                      (_g2206322434_
                                       (lambda (_g2206722318_)
                                         (if (gx#stx-pair? _g2206722318_)
                                             (let ((_e2207022320_
                                                    (gx#stx-e _g2206722318_)))
                                               (let ((_hd2207122323_
                                                      (##car _e2207022320_))
                                                     (_tl2207222325_
                                                      (##cdr _e2207022320_)))
                                                 (if (gx#stx-pair?
                                                      _hd2207122323_)
                                                     (let ((_e2207322328_
                                                            (gx#stx-e
                                                             _hd2207122323_)))
                                                       (let ((_hd2207422331_
                                                              (##car _e2207322328_))
                                                             (_tl2207522333_
                                                              (##cdr _e2207322328_)))
                                                         (if (gx#stx-null?
                                                              _tl2207522333_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2207222325_)
                         (let ((_e2207622336_ (gx#stx-e _tl2207222325_)))
                           (let ((_hd2207722339_ (##car _e2207622336_))
                                 (_tl2207822341_ (##cdr _e2207622336_)))
                             (if (gx#stx-null? _tl2207822341_)
                                 ((lambda (_L22344_ _L22345_)
                                    (if (if (gx#identifier? _L22345_)
                                            (gxc#case-lambda-expr? _L22344_)
                                            '#f)
                                        (let* ((_g2236022374_
                                                (lambda (_g2236122371_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2236122371_)))
                                               (_g2235922409_
                                                (lambda (_g2236122377_)
                                                  (if (gx#stx-pair?
                                                       _g2236122377_)
                                                      (let ((_e2236722379_
                                                             (gx#stx-e
                                                              _g2236122377_)))
                                                        (let ((_hd2236822382_
                                                               (##car _e2236722379_))
                                                              (_tl2236922384_
                                                               (##cdr _e2236722379_)))
                                                          ((lambda (_L22387_)
                                                             (let ((_g27414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21402_
                             _L22345_
                             _L22387_
                             '#t)))
                       (begin
                         (let ((_g27415_ (values-count _g27414_)))
                           (if (not (fx= _g27415_ 3))
                               (error "Context expects 3 values" _g27415_)))
                         (let ((_ids22397_ (values-ref _g27414_ 0))
                               (_impls22398_ (values-ref _g27414_ 1))
                               (_clauses22399_ (values-ref _g27414_ 2)))
                           (let* ((_g27416_
                                   (for-each gx#core-bind-runtime! _ids22397_))
                                  (_xbind22402_
                                   (map _bind-e21404_ _ids22397_ _impls22398_))
                                  (_expr*22404_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22399_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22406_
                                   (_bind-e__2735527356_
                                    _L22345_
                                    _expr*22404_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L22345_)
                                '" => "
                                (map gxc#identifier-symbol _ids22397_))
                               (_lp22036_
                                _rest22061_
                                _lift122039_
                                (foldl1 cons _lift222040_ _xbind22402_)
                                (cons _bind*22406_ _bind22041_))))))))
                   _tl2236922384_)))
              (_g2236022374_ _g2236122377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2235822431_
                                                (lambda (_g2236122412_)
                                                  (if (gx#stx-pair?
                                                       _g2236122412_)
                                                      (let ((_e2236322414_
                                                             (gx#stx-e
                                                              _g2236122412_)))
                                                        (let ((_hd2236422417_
                                                               (##car _e2236322414_))
                                                              (_tl2236522419_
                                                               (##cdr _e2236322414_)))
                                                          ((lambda (_L22422_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22422_)
                         (_lp22036_
                          _rest22061_
                          _lift122039_
                          _lift222040_
                          (cons (_bind-e__2735527356_ _L22345_ _L22344_ '#f)
                                _bind22041_))
                         (_g2235922409_ _g2236122412_)))
                   _tl2236522419_)))
              (_g2235922409_ _g2236122412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2235822431_ _L22344_))
                                        (_g2206422315_ _g2206722318_)))
                                  _hd2207722339_
                                  _hd2207422331_)
                                 (_g2206422315_ _g2206722318_))))
                         (_g2206422315_ _g2206722318_))
                     (_g2206422315_ _g2206722318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2206422315_
                                                      _g2206722318_))))
                                             (_g2206422315_ _g2206722318_)))))
                                 (_g2206322434_ _hd22062_)))))
                       (if (##pair? _rest2204222050_)
                           (let ((_hd2204722440_ (##car _rest2204222050_))
                                 (_tl2204822442_ (##cdr _rest2204222050_)))
                             (let* ((_hd22445_ _hd2204722440_)
                                    (_rest22447_ _tl2204822442_))
                               (_K2204622437_ _rest22447_ _hd22445_)))
                           (_else2204422058_))))))
                (_lift-kw-lambda?21406_
                 (lambda (_bind21958_)
                   (let* ((_g2196121978_
                           (lambda (_g2196221975_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2196221975_)))
                          (_g2196021985_
                           (lambda (_g2196221981_) ((lambda () '#f))))
                          (_g2195922031_
                           (lambda (_g2196221988_)
                             (if (gx#stx-pair? _g2196221988_)
                                 (let ((_e2196521990_
                                        (gx#stx-e _g2196221988_)))
                                   (let ((_hd2196621993_ (##car _e2196521990_))
                                         (_tl2196721995_
                                          (##cdr _e2196521990_)))
                                     (if (gx#stx-pair? _hd2196621993_)
                                         (let ((_e2196821998_
                                                (gx#stx-e _hd2196621993_)))
                                           (let ((_hd2196922001_
                                                  (##car _e2196821998_))
                                                 (_tl2197022003_
                                                  (##cdr _e2196821998_)))
                                             (if (gx#stx-null? _tl2197022003_)
                                                 (if (gx#stx-pair?
                                                      _tl2196721995_)
                                                     (let ((_e2197122006_
                                                            (gx#stx-e
                                                             _tl2196721995_)))
                                                       (let ((_hd2197222009_
                                                              (##car _e2197122006_))
                                                             (_tl2197322011_
                                                              (##cdr _e2197122006_)))
                                                         (if (gx#stx-null?
                                                              _tl2197322011_)
                                                             ((lambda (_L22014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22015_)
                        (if (gx#identifier? _L22015_)
                            (gxc#kw-lambda-expr? _L22014_)
                            '#f))
                      _hd2197222009_
                      _hd2196922001_)
                     (_g2196021985_ _g2196221988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2196021985_
                                                      _g2196221988_))
                                                 (_g2196021985_
                                                  _g2196221988_))))
                                         (_g2196021985_ _g2196221988_))))
                                 (_g2196021985_ _g2196221988_)))))
                     (_g2195922031_ _bind21958_))))
                (_lift-kw-lambda-bindings21407_
                 (lambda (_bindings21574_)
                   (let _lp21576_ ((_rest21578_ _bindings21574_)
                                   (_lift121579_ '())
                                   (_lift221580_ '())
                                   (_bind21581_ '()))
                     (let* ((_rest2158221590_ _rest21578_)
                            (_E2158521594_
                             (lambda ()
                               (error '"No clause matching" _rest2158221590_)))
                            (_else2158421598_
                             (lambda ()
                               (values (reverse _lift121579_)
                                       (reverse _lift221580_)
                                       (reverse _bind21581_))))
                            (_K2158621946_
                             (lambda (_rest21601_ _hd21602_)
                               (let* ((_g2160521630_
                                       (lambda (_g2160621627_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2160621627_)))
                                      (_g2160421671_
                                       (lambda (_g2160621633_)
                                         (if (gx#stx-pair? _g2160621633_)
                                             (let ((_e2162021635_
                                                    (gx#stx-e _g2160621633_)))
                                               (let ((_hd2162121638_
                                                      (##car _e2162021635_))
                                                     (_tl2162221640_
                                                      (##cdr _e2162021635_)))
                                                 (if (gx#stx-pair?
                                                      _tl2162221640_)
                                                     (let ((_e2162321643_
                                                            (gx#stx-e
                                                             _tl2162221640_)))
                                                       (let ((_hd2162421646_
                                                              (##car _e2162321643_))
                                                             (_tl2162521648_
                                                              (##cdr _e2162321643_)))
                                                         (if (gx#stx-null?
                                                              _tl2162521648_)
                                                             ((lambda (_L21651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21652_)
                        (_lp21576_
                         _rest21601_
                         _lift121579_
                         _lift221580_
                         (cons (cons _L21652_ (cons _L21651_ '()))
                               _bind21581_)))
                      _hd2162421646_
                      _hd2162121638_)
                     (_g2160521630_ _g2160621633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2160521630_
                                                      _g2160621633_))))
                                             (_g2160521630_ _g2160621633_))))
                                      (_g2160321943_
                                       (lambda (_g2160621674_)
                                         (if (gx#stx-pair? _g2160621674_)
                                             (let ((_e2160921676_
                                                    (gx#stx-e _g2160621674_)))
                                               (let ((_hd2161021679_
                                                      (##car _e2160921676_))
                                                     (_tl2161121681_
                                                      (##cdr _e2160921676_)))
                                                 (if (gx#stx-pair?
                                                      _hd2161021679_)
                                                     (let ((_e2161221684_
                                                            (gx#stx-e
                                                             _hd2161021679_)))
                                                       (let ((_hd2161321687_
                                                              (##car _e2161221684_))
                                                             (_tl2161421689_
                                                              (##cdr _e2161221684_)))
                                                         (if (gx#stx-null?
                                                              _tl2161421689_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2161121681_)
                         (let ((_e2161521692_ (gx#stx-e _tl2161121681_)))
                           (let ((_hd2161621695_ (##car _e2161521692_))
                                 (_tl2161721697_ (##cdr _e2161521692_)))
                             (if (gx#stx-null? _tl2161721697_)
                                 ((lambda (_L21700_ _L21701_)
                                    (if (if (gx#identifier? _L21701_)
                                            (gxc#kw-lambda-expr? _L21700_)
                                            '#f)
                                        (let* ((_g2171521768_
                                                (lambda (_g2171621765_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2171621765_)))
                                               (_g2171421940_
                                                (lambda (_g2171621771_)
                                                  (if (gx#stx-pair?
                                                       _g2171621771_)
                                                      (let ((_e2172221773_
                                                             (gx#stx-e
                                                              _g2171621771_)))
                                                        (let ((_hd2172321776_
                                                               (##car _e2172221773_))
                                                              (_tl2172421778_
                                                               (##cdr _e2172221773_)))
                                                          (if (gx#stx-pair?
                                                               _tl2172421778_)
                                                              (let ((_e2172521781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2172421778_)))
                        (let ((_hd2172621784_ (##car _e2172521781_))
                              (_tl2172721786_ (##cdr _e2172521781_)))
                          (if (gx#stx-pair? _hd2172621784_)
                              (let ((_e2172821789_ (gx#stx-e _hd2172621784_)))
                                (let ((_hd2172921792_ (##car _e2172821789_))
                                      (_tl2173021794_ (##cdr _e2172821789_)))
                                  (if (gx#stx-pair? _hd2172921792_)
                                      (let ((_e2173121797_
                                             (gx#stx-e _hd2172921792_)))
                                        (let ((_hd2173221800_
                                               (##car _e2173121797_))
                                              (_tl2173321802_
                                               (##cdr _e2173121797_)))
                                          (if (gx#stx-pair? _hd2173221800_)
                                              (let ((_e2173421805_
                                                     (gx#stx-e
                                                      _hd2173221800_)))
                                                (let ((_hd2173521808_
                                                       (##car _e2173421805_))
                                                      (_tl2173621810_
                                                       (##cdr _e2173421805_)))
                                                  (if (gx#stx-null?
                                                       _tl2173621810_)
                                                      (if (gx#stx-pair?
                                                           _tl2173321802_)
                                                          (let ((_e2173721813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2173321802_)))
                    (let ((_hd2173821816_ (##car _e2173721813_))
                          (_tl2173921818_ (##cdr _e2173721813_)))
                      (if (gx#stx-pair? _hd2173821816_)
                          (let ((_e2174021821_ (gx#stx-e _hd2173821816_)))
                            (let ((_hd2174121824_ (##car _e2174021821_))
                                  (_tl2174221826_ (##cdr _e2174021821_)))
                              (if (gx#stx-pair? _tl2174221826_)
                                  (let ((_e2174321829_
                                         (gx#stx-e _tl2174221826_)))
                                    (let ((_hd2174421832_
                                           (##car _e2174321829_))
                                          (_tl2174521834_
                                           (##cdr _e2174321829_)))
                                      (if (gx#stx-pair? _hd2174421832_)
                                          (let ((_e2174621837_
                                                 (gx#stx-e _hd2174421832_)))
                                            (let ((_hd2174721840_
                                                   (##car _e2174621837_))
                                                  (_tl2174821842_
                                                   (##cdr _e2174621837_)))
                                              (if (gx#stx-pair? _hd2174721840_)
                                                  (let ((_e2174921845_
                                                         (gx#stx-e
                                                          _hd2174721840_)))
                                                    (let ((_hd2175021848_
                                                           (##car _e2174921845_))
                                                          (_tl2175121850_
                                                           (##cdr _e2174921845_)))
                                                      (if (gx#stx-pair?
                                                           _hd2175021848_)
                                                          (let ((_e2175221853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2175021848_)))
                    (let ((_hd2175321856_ (##car _e2175221853_))
                          (_tl2175421858_ (##cdr _e2175221853_)))
                      (if (gx#stx-null? _tl2175421858_)
                          (if (gx#stx-pair? _tl2175121850_)
                              (let ((_e2175521861_ (gx#stx-e _tl2175121850_)))
                                (let ((_hd2175621864_ (##car _e2175521861_))
                                      (_tl2175721866_ (##cdr _e2175521861_)))
                                  (if (gx#stx-null? _tl2175721866_)
                                      (if (gx#stx-null? _tl2174821842_)
                                          (if (gx#stx-pair? _tl2174521834_)
                                              (let ((_e2175821869_
                                                     (gx#stx-e
                                                      _tl2174521834_)))
                                                (let ((_hd2175921872_
                                                       (##car _e2175821869_))
                                                      (_tl2176021874_
                                                       (##cdr _e2175821869_)))
                                                  (if (gx#stx-null?
                                                       _tl2176021874_)
                                                      (if (gx#stx-null?
                                                           _tl2173921818_)
                                                          (if (gx#stx-null?
                                                               _tl2173021794_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2172721786_)
                          (let ((_e2176121877_ (gx#stx-e _tl2172721786_)))
                            (let ((_hd2176221880_ (##car _e2176121877_))
                                  (_tl2176321882_ (##cdr _e2176121877_)))
                              (if (gx#stx-null? _tl2176321882_)
                                  ((lambda (_L21885_
                                            _L21886_
                                            _L21887_
                                            _L21888_
                                            _L21889_)
                                     (let* ((_get-kws-id21929_
                                             (make-symbol
                                              (gx#stx-e _L21701_)
                                              (gensym '__)))
                                            (_main-id21931_
                                             (make-symbol
                                              (gx#stx-e _L21701_)
                                              (gensym '__)))
                                            (_g27417_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21929_))
                                            (_g27418_
                                             (gx#core-bind-runtime!__0
                                              _main-id21931_))
                                            (_new-kw-dispatch21935_
                                             (gxc#apply-expression-subst
                                              _L21885_
                                              _L21889_
                                              _get-kws-id21929_))
                                            (_new-get-kws21937_
                                             (gxc#apply-expression-subst
                                              _L21886_
                                              _L21888_
                                              _main-id21931_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L21701_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21929_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21931_))
                                         (_lp21576_
                                          _rest21601_
                                          (cons (_bind-e__2735527356_
                                                 _main-id21931_
                                                 _L21887_
                                                 '#f)
                                                _lift121579_)
                                          (cons (_bind-e__2735527356_
                                                 _get-kws-id21929_
                                                 _new-get-kws21937_
                                                 '#f)
                                                _lift221580_)
                                          (cons (_bind-e__2735527356_
                                                 _L21701_
                                                 _new-kw-dispatch21935_
                                                 '#f)
                                                _bind21581_)))))
                                   _hd2176221880_
                                   _hd2175921872_
                                   _hd2175621864_
                                   _hd2175321856_
                                   _hd2173521808_)
                                  (_g2171521768_ _g2171621771_))))
                          (_g2171521768_ _g2171621771_))
                      (_g2171521768_ _g2171621771_))
                  (_g2171521768_ _g2171621771_))
              (_g2171521768_ _g2171621771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2171521768_ _g2171621771_))
                                          (_g2171521768_ _g2171621771_))
                                      (_g2171521768_ _g2171621771_))))
                              (_g2171521768_ _g2171621771_))
                          (_g2171521768_ _g2171621771_))))
                  (_g2171521768_ _g2171621771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2171521768_
                                                   _g2171621771_))))
                                          (_g2171521768_ _g2171621771_))))
                                  (_g2171521768_ _g2171621771_))))
                          (_g2171521768_ _g2171621771_))))
                  (_g2171521768_ _g2171621771_))
              (_g2171521768_ _g2171621771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2171521768_ _g2171621771_))))
                                      (_g2171521768_ _g2171621771_))))
                              (_g2171521768_ _g2171621771_))))
                      (_g2171521768_ _g2171621771_))))
              (_g2171521768_ _g2171621771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2171421940_ _L21700_))
                                        (_g2160421671_ _g2160621674_)))
                                  _hd2161621695_
                                  _hd2161321687_)
                                 (_g2160421671_ _g2160621674_))))
                         (_g2160421671_ _g2160621674_))
                     (_g2160421671_ _g2160621674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2160421671_
                                                      _g2160621674_))))
                                             (_g2160421671_ _g2160621674_)))))
                                 (_g2160321943_ _hd21602_)))))
                       (if (##pair? _rest2158221590_)
                           (let ((_hd2158721949_ (##car _rest2158221590_))
                                 (_tl2158821951_ (##cdr _rest2158221590_)))
                             (let* ((_hd21954_ _hd2158721949_)
                                    (_rest21956_ _tl2158821951_))
                               (_K2158621946_ _rest21956_ _hd21954_)))
                           (_else2158421598_)))))))
        (let* ((_g2141021436_
                (lambda (_g2141121433_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2141121433_)))
               (_g2140921443_
                (lambda (_g2141121439_)
                  ((lambda () (gxc#xform-let-values% _stx21402_)))))
               (_g2140821571_
                (lambda (_g2141121446_)
                  (if (gx#stx-pair? _g2141121446_)
                      (let ((_e2141421448_ (gx#stx-e _g2141121446_)))
                        (let ((_hd2141521451_ (##car _e2141421448_))
                              (_tl2141621453_ (##cdr _e2141421448_)))
                          (if (gx#stx-pair? _tl2141621453_)
                              (let ((_e2141721456_ (gx#stx-e _tl2141621453_)))
                                (let ((_hd2141821459_ (##car _e2141721456_))
                                      (_tl2141921461_ (##cdr _e2141721456_)))
                                  (if (gx#stx-pair/null? _hd2141821459_)
                                      (if (fx>= (gx#stx-length _hd2141821459_)
                                                '0)
                                          (let ((_g27419_
                                                 (gx#syntax-split-splice
                                                  _hd2141821459_
                                                  '0)))
                                            (begin
                                              (let ((_g27420_
                                                     (values-count _g27419_)))
                                                (if (not (fx= _g27420_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27420_)))
                                              (let ((_target2142021464_
                                                     (values-ref _g27419_ 0))
                                                    (_tl2142221466_
                                                     (values-ref _g27419_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2142221466_)
                                                    (letrec ((_loop2142321469_
                                                              (lambda (_hd2142121472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2142721474_)
                        (if (gx#stx-pair? _hd2142121472_)
                            (let ((_e2142421477_ (gx#stx-e _hd2142121472_)))
                              (let ((_lp-hd2142521480_ (##car _e2142421477_))
                                    (_lp-tl2142621482_ (##cdr _e2142421477_)))
                                (_loop2142321469_
                                 _lp-tl2142621482_
                                 (cons _lp-hd2142521480_ _bind2142721474_))))
                            (let ((_bind2142821485_
                                   (reverse _bind2142721474_)))
                              (if (gx#stx-pair? _tl2141921461_)
                                  (let ((_e2142921488_
                                         (gx#stx-e _tl2141921461_)))
                                    (let ((_hd2143021491_
                                           (##car _e2142921488_))
                                          (_tl2143121493_
                                           (##cdr _e2142921488_)))
                                      (if (gx#stx-null? _tl2143121493_)
                                          ((lambda (_L21496_ _L21497_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2151721520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2151821522_)
                             (cons _g2151721520_ _g2151821522_))
                           '()
                           _L21497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?21406_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2152521528_ _g2152621530_)
                                    (cons _g2152521528_ _g2152621530_))
                                  '()
                                  _L21497_)))
                (let ((_g27421_
                       (_lift-kw-lambda-bindings21407_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2153221535_ _g2153321537_)
                                    (cons _g2153221535_ _g2153321537_))
                                  '()
                                  _L21497_)))))
                  (begin
                    (let ((_g27422_ (values-count _g27421_)))
                      (if (not (fx= _g27422_ 3))
                          (error "Context expects 3 values" _g27422_)))
                    (let ((_lift121540_ (values-ref _g27421_ 0))
                          (_lift221541_ (values-ref _g27421_ 1))
                          (_hd21542_ (values-ref _g27421_ 2)))
                      (let* ((_expr21544_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21542_ (cons _L21496_ '())))
                               _stx21402_))
                             (_expr21546_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift221541_
                                           (cons _expr21544_ '())))
                               _stx21402_))
                             (_expr21548_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift121540_
                                           (cons _expr21546_ '())))
                               _stx21402_)))
                        (gxc#lift-top-lambda-let-values% _expr21548_)))))
                (let ((_g27423_
                       (_compile-bindings21405_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2155021553_ _g2155121555_)
                                    (cons _g2155021553_ _g2155121555_))
                                  '()
                                  _L21497_)))))
                  (begin
                    (let ((_g27424_ (values-count _g27423_)))
                      (if (not (fx= _g27424_ 3))
                          (error "Context expects 3 values" _g27424_)))
                    (let ((_lift121558_ (values-ref _g27423_ 0))
                          (_lift221559_ (values-ref _g27423_ 1))
                          (_hd21560_ (values-ref _g27423_ 2)))
                      (let* ((_body21562_ (gxc#compile-e _L21496_))
                             (_expr21564_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd21560_ (cons _body21562_ '())))
                               _stx21402_))
                             (_expr21566_
                              (if (null? _lift221559_)
                                  _expr21564_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift221559_
                                               (cons _expr21564_ '())))
                                   _stx21402_)))
                             (_expr21568_
                              (if (null? _lift121558_)
                                  _expr21566_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift121558_
                                               (cons _expr21566_ '())))
                                   _stx21402_))))
                        _expr21568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27365
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27365)
                                                      __obj27365)))
                                                 (_g2140921443_
                                                  _g2141121446_)))
                                           _hd2143021491_
                                           _bind2142821485_)
                                          (_g2140921443_ _g2141121446_))))
                                  (_g2140921443_ _g2141121446_)))))))
              (_loop2142321469_ _target2142021464_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2140921443_
                                                     _g2141121446_)))))
                                          (_g2140921443_ _g2141121446_))
                                      (_g2140921443_ _g2141121446_))))
                              (_g2140921443_ _g2141121446_))))
                      (_g2140921443_ _g2141121446_)))))
          (_g2140821571_ _stx21402_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx20550_)
      (letrec* ((_bind-e__2736027361_
                 (lambda (_id21386_ _expr21387_ _compile?21388_)
                   (cons (cons _id21386_ '())
                         (cons (if _compile?21388_
                                   (gxc#compile-e _expr21387_)
                                   _expr21387_)
                               '()))))
                (_bind-e__0__2736227363_
                 (lambda (_id21393_ _expr21394_)
                   (let ((_compile?21396_ '#t))
                     (_bind-e__2736027361_
                      _id21393_
                      _expr21394_
                      _compile?21396_))))
                (_bind-e20552_
                 (lambda _g27426_
                   (let ((_g27425_ (length _g27426_)))
                     (cond ((fx= _g27425_ 2)
                            (apply _bind-e__0__2736227363_ _g27426_))
                           ((fx= _g27425_ 3)
                            (apply _bind-e__2736027361_ _g27426_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27426_))))))
                (_compile-bindings20553_
                 (lambda (_rest20688_)
                   (let _lp20690_ ((_rest20692_ _rest20688_) (_bind20693_ '()))
                     (let* ((_rest2069420702_ _rest20692_)
                            (_E2069720706_
                             (lambda ()
                               (error '"No clause matching" _rest2069420702_)))
                            (_else2069620710_
                             (lambda () (reverse _bind20693_)))
                            (_K2069821373_
                             (lambda (_rest20713_ _hd20714_)
                               (let* ((_g2071920766_
                                       (lambda (_g2072020763_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2072020763_)))
                                      (_g2071820807_
                                       (lambda (_g2072020769_)
                                         (if (gx#stx-pair? _g2072020769_)
                                             (let ((_e2075620771_
                                                    (gx#stx-e _g2072020769_)))
                                               (let ((_hd2075720774_
                                                      (##car _e2075620771_))
                                                     (_tl2075820776_
                                                      (##cdr _e2075620771_)))
                                                 (if (gx#stx-pair?
                                                      _tl2075820776_)
                                                     (let ((_e2075920779_
                                                            (gx#stx-e
                                                             _tl2075820776_)))
                                                       (let ((_hd2076020782_
                                                              (##car _e2075920779_))
                                                             (_tl2076120784_
                                                              (##cdr _e2075920779_)))
                                                         (if (gx#stx-null?
                                                              _tl2076120784_)
                                                             ((lambda (_L20787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20788_)
                        (_lp20690_
                         _rest20713_
                         (cons (cons _L20788_
                                     (cons (gxc#compile-e _L20787_) '()))
                               _bind20693_)))
                      _hd2076020782_
                      _hd2075720774_)
                     (_g2071920766_ _g2072020769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2071920766_
                                                      _g2072020769_))))
                                             (_g2071920766_ _g2072020769_))))
                                      (_g2071721079_
                                       (lambda (_g2072020810_)
                                         (if (gx#stx-pair? _g2072020810_)
                                             (let ((_e2074520812_
                                                    (gx#stx-e _g2072020810_)))
                                               (let ((_hd2074620815_
                                                      (##car _e2074520812_))
                                                     (_tl2074720817_
                                                      (##cdr _e2074520812_)))
                                                 (if (gx#stx-pair?
                                                      _hd2074620815_)
                                                     (let ((_e2074820820_
                                                            (gx#stx-e
                                                             _hd2074620815_)))
                                                       (let ((_hd2074920823_
                                                              (##car _e2074820820_))
                                                             (_tl2075020825_
                                                              (##cdr _e2074820820_)))
                                                         (if (gx#stx-null?
                                                              _tl2075020825_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2074720817_)
                         (let ((_e2075120828_ (gx#stx-e _tl2074720817_)))
                           (let ((_hd2075220831_ (##car _e2075120828_))
                                 (_tl2075320833_ (##cdr _e2075120828_)))
                             (if (gx#stx-null? _tl2075320833_)
                                 ((lambda (_L20836_ _L20837_)
                                    (if (if (gx#identifier? _L20837_)
                                            (gxc#kw-lambda-expr? _L20836_)
                                            '#f)
                                        (let* ((_g2085120904_
                                                (lambda (_g2085220901_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2085220901_)))
                                               (_g2085021076_
                                                (lambda (_g2085220907_)
                                                  (if (gx#stx-pair?
                                                       _g2085220907_)
                                                      (let ((_e2085820909_
                                                             (gx#stx-e
                                                              _g2085220907_)))
                                                        (let ((_hd2085920912_
                                                               (##car _e2085820909_))
                                                              (_tl2086020914_
                                                               (##cdr _e2085820909_)))
                                                          (if (gx#stx-pair?
                                                               _tl2086020914_)
                                                              (let ((_e2086120917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2086020914_)))
                        (let ((_hd2086220920_ (##car _e2086120917_))
                              (_tl2086320922_ (##cdr _e2086120917_)))
                          (if (gx#stx-pair? _hd2086220920_)
                              (let ((_e2086420925_ (gx#stx-e _hd2086220920_)))
                                (let ((_hd2086520928_ (##car _e2086420925_))
                                      (_tl2086620930_ (##cdr _e2086420925_)))
                                  (if (gx#stx-pair? _hd2086520928_)
                                      (let ((_e2086720933_
                                             (gx#stx-e _hd2086520928_)))
                                        (let ((_hd2086820936_
                                               (##car _e2086720933_))
                                              (_tl2086920938_
                                               (##cdr _e2086720933_)))
                                          (if (gx#stx-pair? _hd2086820936_)
                                              (let ((_e2087020941_
                                                     (gx#stx-e
                                                      _hd2086820936_)))
                                                (let ((_hd2087120944_
                                                       (##car _e2087020941_))
                                                      (_tl2087220946_
                                                       (##cdr _e2087020941_)))
                                                  (if (gx#stx-null?
                                                       _tl2087220946_)
                                                      (if (gx#stx-pair?
                                                           _tl2086920938_)
                                                          (let ((_e2087320949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2086920938_)))
                    (let ((_hd2087420952_ (##car _e2087320949_))
                          (_tl2087520954_ (##cdr _e2087320949_)))
                      (if (gx#stx-pair? _hd2087420952_)
                          (let ((_e2087620957_ (gx#stx-e _hd2087420952_)))
                            (let ((_hd2087720960_ (##car _e2087620957_))
                                  (_tl2087820962_ (##cdr _e2087620957_)))
                              (if (gx#stx-pair? _tl2087820962_)
                                  (let ((_e2087920965_
                                         (gx#stx-e _tl2087820962_)))
                                    (let ((_hd2088020968_
                                           (##car _e2087920965_))
                                          (_tl2088120970_
                                           (##cdr _e2087920965_)))
                                      (if (gx#stx-pair? _hd2088020968_)
                                          (let ((_e2088220973_
                                                 (gx#stx-e _hd2088020968_)))
                                            (let ((_hd2088320976_
                                                   (##car _e2088220973_))
                                                  (_tl2088420978_
                                                   (##cdr _e2088220973_)))
                                              (if (gx#stx-pair? _hd2088320976_)
                                                  (let ((_e2088520981_
                                                         (gx#stx-e
                                                          _hd2088320976_)))
                                                    (let ((_hd2088620984_
                                                           (##car _e2088520981_))
                                                          (_tl2088720986_
                                                           (##cdr _e2088520981_)))
                                                      (if (gx#stx-pair?
                                                           _hd2088620984_)
                                                          (let ((_e2088820989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2088620984_)))
                    (let ((_hd2088920992_ (##car _e2088820989_))
                          (_tl2089020994_ (##cdr _e2088820989_)))
                      (if (gx#stx-null? _tl2089020994_)
                          (if (gx#stx-pair? _tl2088720986_)
                              (let ((_e2089120997_ (gx#stx-e _tl2088720986_)))
                                (let ((_hd2089221000_ (##car _e2089120997_))
                                      (_tl2089321002_ (##cdr _e2089120997_)))
                                  (if (gx#stx-null? _tl2089321002_)
                                      (if (gx#stx-null? _tl2088420978_)
                                          (if (gx#stx-pair? _tl2088120970_)
                                              (let ((_e2089421005_
                                                     (gx#stx-e
                                                      _tl2088120970_)))
                                                (let ((_hd2089521008_
                                                       (##car _e2089421005_))
                                                      (_tl2089621010_
                                                       (##cdr _e2089421005_)))
                                                  (if (gx#stx-null?
                                                       _tl2089621010_)
                                                      (if (gx#stx-null?
                                                           _tl2087520954_)
                                                          (if (gx#stx-null?
                                                               _tl2086620930_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2086320922_)
                          (let ((_e2089721013_ (gx#stx-e _tl2086320922_)))
                            (let ((_hd2089821016_ (##car _e2089721013_))
                                  (_tl2089921018_ (##cdr _e2089721013_)))
                              (if (gx#stx-null? _tl2089921018_)
                                  ((lambda (_L21021_
                                            _L21022_
                                            _L21023_
                                            _L21024_
                                            _L21025_)
                                     (let* ((_get-kws-id21065_
                                             (make-symbol
                                              (gx#stx-e _L20837_)
                                              (gensym '__)))
                                            (_main-id21067_
                                             (make-symbol
                                              (gx#stx-e _L20837_)
                                              (gensym '__)))
                                            (_g27427_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21065_))
                                            (_g27428_
                                             (gx#core-bind-runtime!__0
                                              _main-id21067_))
                                            (_new-kw-dispatch21071_
                                             (gxc#apply-expression-subst
                                              _L21021_
                                              _L21025_
                                              _get-kws-id21065_))
                                            (_new-get-kws21073_
                                             (gxc#apply-expression-subst
                                              _L21022_
                                              _L21024_
                                              _main-id21067_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L20837_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21065_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21067_))
                                         (_lp20690_
                                          (cons (_bind-e__2736027361_
                                                 _main-id21067_
                                                 _L21023_
                                                 '#f)
                                                (cons (_bind-e__2736027361_
                                                       _get-kws-id21065_
                                                       _new-get-kws21073_
                                                       '#f)
                                                      (cons (_bind-e__2736027361_
                                                             _L20837_
                                                             _new-kw-dispatch21071_
                                                             '#f)
                                                            _rest20713_)))
                                          _bind20693_))))
                                   _hd2089821016_
                                   _hd2089521008_
                                   _hd2089221000_
                                   _hd2088920992_
                                   _hd2087120944_)
                                  (_g2085120904_ _g2085220907_))))
                          (_g2085120904_ _g2085220907_))
                      (_g2085120904_ _g2085220907_))
                  (_g2085120904_ _g2085220907_))
              (_g2085120904_ _g2085220907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2085120904_ _g2085220907_))
                                          (_g2085120904_ _g2085220907_))
                                      (_g2085120904_ _g2085220907_))))
                              (_g2085120904_ _g2085220907_))
                          (_g2085120904_ _g2085220907_))))
                  (_g2085120904_ _g2085220907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2085120904_
                                                   _g2085220907_))))
                                          (_g2085120904_ _g2085220907_))))
                                  (_g2085120904_ _g2085220907_))))
                          (_g2085120904_ _g2085220907_))))
                  (_g2085120904_ _g2085220907_))
              (_g2085120904_ _g2085220907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2085120904_ _g2085220907_))))
                                      (_g2085120904_ _g2085220907_))))
                              (_g2085120904_ _g2085220907_))))
                      (_g2085120904_ _g2085220907_))))
              (_g2085120904_ _g2085220907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2085021076_ _L20836_))
                                        (_g2071820807_ _g2072020810_)))
                                  _hd2075220831_
                                  _hd2074920823_)
                                 (_g2071820807_ _g2072020810_))))
                         (_g2071820807_ _g2072020810_))
                     (_g2071820807_ _g2072020810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2071820807_
                                                      _g2072020810_))))
                                             (_g2071820807_ _g2072020810_))))
                                      (_g2071621251_
                                       (lambda (_g2072021082_)
                                         (if (gx#stx-pair? _g2072021082_)
                                             (let ((_e2073421084_
                                                    (gx#stx-e _g2072021082_)))
                                               (let ((_hd2073521087_
                                                      (##car _e2073421084_))
                                                     (_tl2073621089_
                                                      (##cdr _e2073421084_)))
                                                 (if (gx#stx-pair?
                                                      _hd2073521087_)
                                                     (let ((_e2073721092_
                                                            (gx#stx-e
                                                             _hd2073521087_)))
                                                       (let ((_hd2073821095_
                                                              (##car _e2073721092_))
                                                             (_tl2073921097_
                                                              (##cdr _e2073721092_)))
                                                         (if (gx#stx-null?
                                                              _tl2073921097_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2073621089_)
                         (let ((_e2074021100_ (gx#stx-e _tl2073621089_)))
                           (let ((_hd2074121103_ (##car _e2074021100_))
                                 (_tl2074221105_ (##cdr _e2074021100_)))
                             (if (gx#stx-null? _tl2074221105_)
                                 ((lambda (_L21108_ _L21109_)
                                    (if (if (gx#identifier? _L21109_)
                                            (gxc#opt-lambda-expr? _L21108_)
                                            '#f)
                                        (let* ((_g2112321153_
                                                (lambda (_g2112421150_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2112421150_)))
                                               (_g2112221248_
                                                (lambda (_g2112421156_)
                                                  (if (gx#stx-pair?
                                                       _g2112421156_)
                                                      (let ((_e2112821158_
                                                             (gx#stx-e
                                                              _g2112421156_)))
                                                        (let ((_hd2112921161_
                                                               (##car _e2112821158_))
                                                              (_tl2113021163_
                                                               (##cdr _e2112821158_)))
                                                          (if (gx#stx-pair?
                                                               _tl2113021163_)
                                                              (let ((_e2113121166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2113021163_)))
                        (let ((_hd2113221169_ (##car _e2113121166_))
                              (_tl2113321171_ (##cdr _e2113121166_)))
                          (if (gx#stx-pair? _hd2113221169_)
                              (let ((_e2113421174_ (gx#stx-e _hd2113221169_)))
                                (let ((_hd2113521177_ (##car _e2113421174_))
                                      (_tl2113621179_ (##cdr _e2113421174_)))
                                  (if (gx#stx-pair? _hd2113521177_)
                                      (let ((_e2113721182_
                                             (gx#stx-e _hd2113521177_)))
                                        (let ((_hd2113821185_
                                               (##car _e2113721182_))
                                              (_tl2113921187_
                                               (##cdr _e2113721182_)))
                                          (if (gx#stx-pair? _hd2113821185_)
                                              (let ((_e2114021190_
                                                     (gx#stx-e
                                                      _hd2113821185_)))
                                                (let ((_hd2114121193_
                                                       (##car _e2114021190_))
                                                      (_tl2114221195_
                                                       (##cdr _e2114021190_)))
                                                  (if (gx#stx-null?
                                                       _tl2114221195_)
                                                      (if (gx#stx-pair?
                                                           _tl2113921187_)
                                                          (let ((_e2114321198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2113921187_)))
                    (let ((_hd2114421201_ (##car _e2114321198_))
                          (_tl2114521203_ (##cdr _e2114321198_)))
                      (if (gx#stx-null? _tl2114521203_)
                          (if (gx#stx-null? _tl2113621179_)
                              (if (gx#stx-pair? _tl2113321171_)
                                  (let ((_e2114621206_
                                         (gx#stx-e _tl2113321171_)))
                                    (let ((_hd2114721209_
                                           (##car _e2114621206_))
                                          (_tl2114821211_
                                           (##cdr _e2114621206_)))
                                      (if (gx#stx-null? _tl2114821211_)
                                          ((lambda (_L21214_ _L21215_ _L21216_)
                                             (let* ((_lambda-id21240_
                                                     (make-symbol
                                                      (gx#stx-e _L21109_)
                                                      (gensym '__)))
                                                    (_lambda-id21242_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21240_
                                                      (gx#stx-source
                                                       _stx20550_)))
                                                    (_g27429_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21242_))
                                                    (_new-case-lambda-expr21245_
                                                     (gxc#apply-expression-subst
                                                      _L21214_
                                                      _L21216_
                                                      _lambda-id21242_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L21109_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id21242_))
                                                 (_lp20690_
                                                  (cons (_bind-e__2736027361_
                                                         _L21109_
                                                         _new-case-lambda-expr21245_
                                                         '#f)
                                                        _rest20713_)
                                                  (cons (_bind-e__0__2736227363_
                                                         _lambda-id21242_
                                                         _L21215_)
                                                        _bind20693_)))))
                                           _hd2114721209_
                                           _hd2114421201_
                                           _hd2114121193_)
                                          (_g2112321153_ _g2112421156_))))
                                  (_g2112321153_ _g2112421156_))
                              (_g2112321153_ _g2112421156_))
                          (_g2112321153_ _g2112421156_))))
                  (_g2112321153_ _g2112421156_))
              (_g2112321153_ _g2112421156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2112321153_ _g2112421156_))))
                                      (_g2112321153_ _g2112421156_))))
                              (_g2112321153_ _g2112421156_))))
                      (_g2112321153_ _g2112421156_))))
              (_g2112321153_ _g2112421156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2112221248_ _L21108_))
                                        (_g2071721079_ _g2072021082_)))
                                  _hd2074121103_
                                  _hd2073821095_)
                                 (_g2071721079_ _g2072021082_))))
                         (_g2071721079_ _g2072021082_))
                     (_g2071721079_ _g2072021082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2071721079_
                                                      _g2072021082_))))
                                             (_g2071721079_ _g2072021082_))))
                                      (_g2071521370_
                                       (lambda (_g2072021254_)
                                         (if (gx#stx-pair? _g2072021254_)
                                             (let ((_e2072321256_
                                                    (gx#stx-e _g2072021254_)))
                                               (let ((_hd2072421259_
                                                      (##car _e2072321256_))
                                                     (_tl2072521261_
                                                      (##cdr _e2072321256_)))
                                                 (if (gx#stx-pair?
                                                      _hd2072421259_)
                                                     (let ((_e2072621264_
                                                            (gx#stx-e
                                                             _hd2072421259_)))
                                                       (let ((_hd2072721267_
                                                              (##car _e2072621264_))
                                                             (_tl2072821269_
                                                              (##cdr _e2072621264_)))
                                                         (if (gx#stx-null?
                                                              _tl2072821269_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2072521261_)
                         (let ((_e2072921272_ (gx#stx-e _tl2072521261_)))
                           (let ((_hd2073021275_ (##car _e2072921272_))
                                 (_tl2073121277_ (##cdr _e2072921272_)))
                             (if (gx#stx-null? _tl2073121277_)
                                 ((lambda (_L21280_ _L21281_)
                                    (if (if (gx#identifier? _L21281_)
                                            (gxc#case-lambda-expr? _L21280_)
                                            '#f)
                                        (let* ((_g2129621310_
                                                (lambda (_g2129721307_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2129721307_)))
                                               (_g2129521345_
                                                (lambda (_g2129721313_)
                                                  (if (gx#stx-pair?
                                                       _g2129721313_)
                                                      (let ((_e2130321315_
                                                             (gx#stx-e
                                                              _g2129721313_)))
                                                        (let ((_hd2130421318_
                                                               (##car _e2130321315_))
                                                              (_tl2130521320_
                                                               (##cdr _e2130321315_)))
                                                          ((lambda (_L21323_)
                                                             (let ((_g27430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx20550_
                             _L21281_
                             _L21323_
                             '#t)))
                       (begin
                         (let ((_g27431_ (values-count _g27430_)))
                           (if (not (fx= _g27431_ 3))
                               (error "Context expects 3 values" _g27431_)))
                         (let ((_ids21333_ (values-ref _g27430_ 0))
                               (_impls21334_ (values-ref _g27430_ 1))
                               (_clauses21335_ (values-ref _g27430_ 2)))
                           (let* ((_g27432_
                                   (for-each gx#core-bind-runtime! _ids21333_))
                                  (_xbind21338_
                                   (map _bind-e20552_ _ids21333_ _impls21334_))
                                  (_expr*21340_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21335_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21342_
                                   (_bind-e__2736027361_
                                    _L21281_
                                    _expr*21340_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L21281_)
                                '" => "
                                (map gxc#identifier-symbol _ids21333_))
                               (_lp20690_
                                _rest20713_
                                (cons _bind*21342_
                                      (foldl1 cons
                                              _bind20693_
                                              _xbind21338_)))))))))
                   _tl2130521320_)))
              (_g2129621310_ _g2129721313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2129421367_
                                                (lambda (_g2129721348_)
                                                  (if (gx#stx-pair?
                                                       _g2129721348_)
                                                      (let ((_e2129921350_
                                                             (gx#stx-e
                                                              _g2129721348_)))
                                                        (let ((_hd2130021353_
                                                               (##car _e2129921350_))
                                                              (_tl2130121355_
                                                               (##cdr _e2129921350_)))
                                                          ((lambda (_L21358_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21358_)
                         (_lp20690_
                          _rest20713_
                          (cons (_bind-e__2736027361_ _L21281_ _L21280_ '#f)
                                _bind20693_))
                         (_g2129521345_ _g2129721348_)))
                   _tl2130121355_)))
              (_g2129521345_ _g2129721348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2129421367_ _L21280_))
                                        (_g2071621251_ _g2072021254_)))
                                  _hd2073021275_
                                  _hd2072721267_)
                                 (_g2071621251_ _g2072021254_))))
                         (_g2071621251_ _g2072021254_))
                     (_g2071621251_ _g2072021254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2071621251_
                                                      _g2072021254_))))
                                             (_g2071621251_ _g2072021254_)))))
                                 (_g2071521370_ _hd20714_)))))
                       (if (##pair? _rest2069420702_)
                           (let ((_hd2069921376_ (##car _rest2069420702_))
                                 (_tl2070021378_ (##cdr _rest2069420702_)))
                             (let* ((_hd21381_ _hd2069921376_)
                                    (_rest21383_ _tl2070021378_))
                               (_K2069821373_ _rest21383_ _hd21381_)))
                           (_else2069620710_)))))))
        (let* ((_g2055620583_
                (lambda (_g2055720580_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2055720580_)))
               (_g2055520590_
                (lambda (_g2055720586_)
                  ((lambda () (gxc#xform-let-values% _stx20550_)))))
               (_g2055420685_
                (lambda (_g2055720593_)
                  (if (gx#stx-pair? _g2055720593_)
                      (let ((_e2056120595_ (gx#stx-e _g2055720593_)))
                        (let ((_hd2056220598_ (##car _e2056120595_))
                              (_tl2056320600_ (##cdr _e2056120595_)))
                          (if (gx#stx-pair? _tl2056320600_)
                              (let ((_e2056420603_ (gx#stx-e _tl2056320600_)))
                                (let ((_hd2056520606_ (##car _e2056420603_))
                                      (_tl2056620608_ (##cdr _e2056420603_)))
                                  (if (gx#stx-pair/null? _hd2056520606_)
                                      (if (fx>= (gx#stx-length _hd2056520606_)
                                                '0)
                                          (let ((_g27433_
                                                 (gx#syntax-split-splice
                                                  _hd2056520606_
                                                  '0)))
                                            (begin
                                              (let ((_g27434_
                                                     (values-count _g27433_)))
                                                (if (not (fx= _g27434_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27434_)))
                                              (let ((_target2056720611_
                                                     (values-ref _g27433_ 0))
                                                    (_tl2056920613_
                                                     (values-ref _g27433_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2056920613_)
                                                    (letrec ((_loop2057020616_
                                                              (lambda (_hd2056820619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2057420621_)
                        (if (gx#stx-pair? _hd2056820619_)
                            (let ((_e2057120624_ (gx#stx-e _hd2056820619_)))
                              (let ((_lp-hd2057220627_ (##car _e2057120624_))
                                    (_lp-tl2057320629_ (##cdr _e2057120624_)))
                                (_loop2057020616_
                                 _lp-tl2057320629_
                                 (cons _lp-hd2057220627_ _bind2057420621_))))
                            (let ((_bind2057520632_
                                   (reverse _bind2057420621_)))
                              (if (gx#stx-pair? _tl2056620608_)
                                  (let ((_e2057620635_
                                         (gx#stx-e _tl2056620608_)))
                                    (let ((_hd2057720638_
                                           (##car _e2057620635_))
                                          (_tl2057820640_
                                           (##cdr _e2057620635_)))
                                      (if (gx#stx-null? _tl2057820640_)
                                          ((lambda (_L20643_ _L20644_ _L20645_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2066620669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2066720671_)
                             (cons _g2066620669_ _g2066720671_))
                           '()
                           _L20644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd20682_
                                                           (_compile-bindings20553_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2067420677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2067520679_)
                                (cons _g2067420677_ _g2067520679_))
                              '()
                              _L20644_))))
                  (_body20683_ (gxc#compile-e _L20643_)))
              (gxc#xform-wrap-source
               (cons _L20645_ (cons _hd20682_ (cons _body20683_ '())))
               _stx20550_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27366
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27366)
                                                      __obj27366)))
                                                 (_g2055520590_
                                                  _g2055720593_)))
                                           _hd2057720638_
                                           _bind2057520632_
                                           _hd2056220598_)
                                          (_g2055520590_ _g2055720593_))))
                                  (_g2055520590_ _g2055720593_)))))))
              (_loop2057020616_ _target2056720611_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2055520590_
                                                     _g2055720593_)))))
                                          (_g2055520590_ _g2055720593_))
                                      (_g2055520590_ _g2055720593_))))
                              (_g2055520590_ _g2055720593_))))
                      (_g2055520590_ _g2055720593_)))))
          (_g2055420685_ _stx20550_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20468_)
      (let* ((_g2047120488_
              (lambda (_g2047220485_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2047220485_)))
             (_g2047020495_ (lambda (_g2047220491_) ((lambda () '#f))))
             (_g2046920547_
              (lambda (_g2047220498_)
                (if (gx#stx-pair? _g2047220498_)
                    (let ((_e2047520500_ (gx#stx-e _g2047220498_)))
                      (let ((_hd2047620503_ (##car _e2047520500_))
                            (_tl2047720505_ (##cdr _e2047520500_)))
                        (if (gx#stx-pair? _hd2047620503_)
                            (let ((_e2047820508_ (gx#stx-e _hd2047620503_)))
                              (let ((_hd2047920511_ (##car _e2047820508_))
                                    (_tl2048020513_ (##cdr _e2047820508_)))
                                (if (gx#stx-null? _tl2048020513_)
                                    (if (gx#stx-pair? _tl2047720505_)
                                        (let ((_e2048120516_
                                               (gx#stx-e _tl2047720505_)))
                                          (let ((_hd2048220519_
                                                 (##car _e2048120516_))
                                                (_tl2048320521_
                                                 (##cdr _e2048120516_)))
                                            (if (gx#stx-null? _tl2048320521_)
                                                ((lambda (_L20524_ _L20525_)
                                                   (if (gx#identifier?
                                                        _L20525_)
                                                       (let ((_$e20541_
                                                              (gxc#case-lambda-expr?
                                                               _L20524_)))
                                                         (if _$e20541_
                                                             _$e20541_
                                                             (let ((_$e20544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L20524_)))
                       (if _$e20544_
                           _$e20544_
                           (gxc#kw-lambda-expr? _L20524_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2048220519_
                                                 _hd2047920511_)
                                                (_g2047020495_
                                                 _g2047220498_))))
                                        (_g2047020495_ _g2047220498_))
                                    (_g2047020495_ _g2047220498_))))
                            (_g2047020495_ _g2047220498_))))
                    (_g2047020495_ _g2047220498_)))))
        (_g2046920547_ _bind20468_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20406_ _id20407_ _new-id20408_)
      (let* ((_g2041120424_
              (lambda (_g2041220421_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2041220421_)))
             (_g2041020431_ (lambda (_g2041220427_) ((lambda () _stx20406_))))
             (_g2040920465_
              (lambda (_g2041220434_)
                (if (gx#stx-pair? _g2041220434_)
                    (let ((_e2041420436_ (gx#stx-e _g2041220434_)))
                      (let ((_hd2041520439_ (##car _e2041420436_))
                            (_tl2041620441_ (##cdr _e2041420436_)))
                        (if (gx#stx-pair? _tl2041620441_)
                            (let ((_e2041720444_ (gx#stx-e _tl2041620441_)))
                              (let ((_hd2041820447_ (##car _e2041720444_))
                                    (_tl2041920449_ (##cdr _e2041720444_)))
                                (if (gx#stx-null? _tl2041920449_)
                                    ((lambda (_L20452_)
                                       (if (gx#free-identifier=?
                                            _L20452_
                                            _id20407_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20408_ '()))
                                            _stx20406_)
                                           (_g2041020431_ _g2041220434_)))
                                     _hd2041820447_)
                                    (_g2041020431_ _g2041220434_))))
                            (_g2041020431_ _g2041220434_))))
                    (_g2041020431_ _g2041220434_)))))
        (_g2040920465_ _stx20406_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20262_)
      (let* ((_g2026520296_
              (lambda (_g2026620293_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2026620293_)))
             (_g2026420341_
              (lambda (_g2026620299_)
                (if (gx#stx-pair? _g2026620299_)
                    (let ((_e2028320301_ (gx#stx-e _g2026620299_)))
                      (let ((_hd2028420304_ (##car _e2028320301_))
                            (_tl2028520306_ (##cdr _e2028320301_)))
                        (if (gx#stx-pair? _tl2028520306_)
                            (let ((_e2028620309_ (gx#stx-e _tl2028520306_)))
                              (let ((_hd2028720312_ (##car _e2028620309_))
                                    (_tl2028820314_ (##cdr _e2028620309_)))
                                (if (gx#stx-pair? _tl2028820314_)
                                    (let ((_e2028920317_
                                           (gx#stx-e _tl2028820314_)))
                                      (let ((_hd2029020320_
                                             (##car _e2028920317_))
                                            (_tl2029120322_
                                             (##cdr _e2028920317_)))
                                        (if (gx#stx-null? _tl2029120322_)
                                            ((lambda (_L20325_ _L20326_)
                                               (gxc#compile-e _L20325_))
                                             _hd2029020320_
                                             _hd2028720312_)
                                            (_g2026520296_ _g2026620299_))))
                                    (_g2026520296_ _g2026620299_))))
                            (_g2026520296_ _g2026620299_))))
                    (_g2026520296_ _g2026620299_))))
             (_g2026320403_
              (lambda (_g2026620344_)
                (if (gx#stx-pair? _g2026620344_)
                    (let ((_e2026920346_ (gx#stx-e _g2026620344_)))
                      (let ((_hd2027020349_ (##car _e2026920346_))
                            (_tl2027120351_ (##cdr _e2026920346_)))
                        (if (gx#stx-pair? _tl2027120351_)
                            (let ((_e2027220354_ (gx#stx-e _tl2027120351_)))
                              (let ((_hd2027320357_ (##car _e2027220354_))
                                    (_tl2027420359_ (##cdr _e2027220354_)))
                                (if (gx#stx-pair? _hd2027320357_)
                                    (let ((_e2027520362_
                                           (gx#stx-e _hd2027320357_)))
                                      (let ((_hd2027620365_
                                             (##car _e2027520362_))
                                            (_tl2027720367_
                                             (##cdr _e2027520362_)))
                                        (if (gx#stx-null? _tl2027720367_)
                                            (if (gx#stx-pair? _tl2027420359_)
                                                (let ((_e2027820370_
                                                       (gx#stx-e
                                                        _tl2027420359_)))
                                                  (let ((_hd2027920373_
                                                         (##car _e2027820370_))
                                                        (_tl2028020375_
                                                         (##cdr _e2027820370_)))
                                                    (if (gx#stx-null?
                                                         _tl2028020375_)
                                                        ((lambda (_L20378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20379_)
                   (if (gx#identifier? _L20379_)
                       (let ((_sym20395_
                              (gxc#generate-runtime-binding-id _L20379_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20395_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20395_)
                               (let ((_type2039620398_
                                      (gxc#apply-basic-expression-type
                                       _L20378_)))
                                 (if _type2039620398_
                                     (let ((_type20401_ _type2039620398_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20395_
                                        _type20401_))
                                     '#f)))
                           (gxc#compile-e _L20378_)))
                       (_g2026420341_ _g2026620344_)))
                 _hd2027920373_
                 _hd2027620365_)
                (_g2026420341_ _g2026620344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2026420341_ _g2026620344_))
                                            (_g2026420341_ _g2026620344_))))
                                    (_g2026420341_ _g2026620344_))))
                            (_g2026420341_ _g2026620344_))))
                    (_g2026420341_ _g2026620344_)))))
        (_g2026320403_ _stx20262_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20047_)
      (letrec ((_collect-e20049_
                (lambda (_hd20206_ _expr20207_)
                  (let* ((_g2021020220_
                          (lambda (_g2021120217_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2021120217_)))
                         (_g2020920227_
                          (lambda (_g2021120223_) ((lambda () '#!void))))
                         (_g2020820259_
                          (lambda (_g2021120230_)
                            (if (gx#stx-pair? _g2021120230_)
                                (let ((_e2021320232_ (gx#stx-e _g2021120230_)))
                                  (let ((_hd2021420235_ (##car _e2021320232_))
                                        (_tl2021520237_ (##cdr _e2021320232_)))
                                    (if (gx#stx-null? _tl2021520237_)
                                        ((lambda (_L20240_)
                                           (if (gx#identifier? _L20240_)
                                               (let ((_sym20251_
                                                      (gxc#generate-runtime-binding-id
                                                       _L20240_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20251_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20251_)
                                                     (let ((_type2025220254_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20207_)))
                                                       (if _type2025220254_
                                                           (let ((_type20257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2025220254_))
                     (gxc#optimizer-declare-type!__%
                      _sym20251_
                      _type20257_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2020920227_ _g2021120230_)))
                                         _hd2021420235_)
                                        (_g2020920227_ _g2021120230_))))
                                (_g2020920227_ _g2021120230_)))))
                    (_g2020820259_ _hd20206_)))))
        (let* ((_g2005120086_
                (lambda (_g2005220083_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2005220083_)))
               (_g2005020203_
                (lambda (_g2005220089_)
                  (if (gx#stx-pair? _g2005220089_)
                      (let ((_e2005620091_ (gx#stx-e _g2005220089_)))
                        (let ((_hd2005720094_ (##car _e2005620091_))
                              (_tl2005820096_ (##cdr _e2005620091_)))
                          (if (gx#stx-pair? _tl2005820096_)
                              (let ((_e2005920099_ (gx#stx-e _tl2005820096_)))
                                (let ((_hd2006020102_ (##car _e2005920099_))
                                      (_tl2006120104_ (##cdr _e2005920099_)))
                                  (if (gx#stx-pair/null? _hd2006020102_)
                                      (if (fx>= (gx#stx-length _hd2006020102_)
                                                '0)
                                          (let ((_g27435_
                                                 (gx#syntax-split-splice
                                                  _hd2006020102_
                                                  '0)))
                                            (begin
                                              (let ((_g27436_
                                                     (values-count _g27435_)))
                                                (if (not (fx= _g27436_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27436_)))
                                              (let ((_target2006220107_
                                                     (values-ref _g27435_ 0))
                                                    (_tl2006420109_
                                                     (values-ref _g27435_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2006420109_)
                                                    (letrec ((_loop2006520112_
                                                              (lambda (_hd2006320115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2006920117_
                               _hd2007020119_)
                        (if (gx#stx-pair? _hd2006320115_)
                            (let ((_e2006620122_ (gx#stx-e _hd2006320115_)))
                              (let ((_lp-hd2006720125_ (##car _e2006620122_))
                                    (_lp-tl2006820127_ (##cdr _e2006620122_)))
                                (if (gx#stx-pair? _lp-hd2006720125_)
                                    (let ((_e2007320130_
                                           (gx#stx-e _lp-hd2006720125_)))
                                      (let ((_hd2007420133_
                                             (##car _e2007320130_))
                                            (_tl2007520135_
                                             (##cdr _e2007320130_)))
                                        (if (gx#stx-pair? _tl2007520135_)
                                            (let ((_e2007620138_
                                                   (gx#stx-e _tl2007520135_)))
                                              (let ((_hd2007720141_
                                                     (##car _e2007620138_))
                                                    (_tl2007820143_
                                                     (##cdr _e2007620138_)))
                                                (if (gx#stx-null?
                                                     _tl2007820143_)
                                                    (_loop2006520112_
                                                     _lp-tl2006820127_
                                                     (cons _hd2007720141_
                                                           _expr2006920117_)
                                                     (cons _hd2007420133_
                                                           _hd2007020119_))
                                                    (_g2005120086_
                                                     _g2005220089_))))
                                            (_g2005120086_ _g2005220089_))))
                                    (_g2005120086_ _g2005220089_))))
                            (let ((_expr2007120146_ (reverse _expr2006920117_))
                                  (_hd2007220148_ (reverse _hd2007020119_)))
                              (if (gx#stx-pair? _tl2006120104_)
                                  (let ((_e2007920151_
                                         (gx#stx-e _tl2006120104_)))
                                    (let ((_hd2008020154_
                                           (##car _e2007920151_))
                                          (_tl2008120156_
                                           (##cdr _e2007920151_)))
                                      (if (gx#stx-null? _tl2008120156_)
                                          ((lambda (_L20159_ _L20160_ _L20161_)
                                             (begin
                                               (for-each
                                                _collect-e20049_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2018120184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2018220186_)
                    (cons _g2018120184_ _g2018220186_))
                  '()
                  _L20161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2018820191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2018920193_)
                    (cons _g2018820191_ _g2018920193_))
                  '()
                  _L20160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2019520198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2019620200_)
                    (cons _g2019520198_ _g2019620200_))
                  '()
                  _L20160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20159_)))
                                           _hd2008020154_
                                           _expr2007120146_
                                           _hd2007220148_)
                                          (_g2005120086_ _g2005220089_))))
                                  (_g2005120086_ _g2005220089_)))))))
              (_loop2006520112_ _target2006220107_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2005120086_
                                                     _g2005220089_)))))
                                          (_g2005120086_ _g2005220089_))
                                      (_g2005120086_ _g2005220089_))))
                              (_g2005120086_ _g2005220089_))))
                      (_g2005120086_ _g2005220089_)))))
          (_g2005020203_ _stx20047_)))))
  (define gxc#collect-type-call%
    (lambda (_stx19601_)
      (let* ((_g1960519707_
              (lambda (_g1960619704_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1960619704_)))
             (_g1960419714_ (lambda (_g1960619710_) ((lambda () '#!void))))
             (_g1960319864_
              (lambda (_g1960619717_)
                (if (gx#stx-pair? _g1960619717_)
                    (let ((_e1966419719_ (gx#stx-e _g1960619717_)))
                      (let ((_hd1966519722_ (##car _e1966419719_))
                            (_tl1966619724_ (##cdr _e1966419719_)))
                        (if (gx#stx-pair? _tl1966619724_)
                            (let ((_e1966719727_ (gx#stx-e _tl1966619724_)))
                              (let ((_hd1966819730_ (##car _e1966719727_))
                                    (_tl1966919732_ (##cdr _e1966719727_)))
                                (if (gx#stx-pair? _hd1966819730_)
                                    (let ((_e1967019735_
                                           (gx#stx-e _hd1966819730_)))
                                      (let ((_hd1967119738_
                                             (##car _e1967019735_))
                                            (_tl1967219740_
                                             (##cdr _e1967019735_)))
                                        (if (gx#identifier? _hd1967119738_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1967119738_)
                                                (if (gx#stx-pair?
                                                     _tl1967219740_)
                                                    (let ((_e1967319743_
                                                           (gx#stx-e
                                                            _tl1967219740_)))
                                                      (let ((_hd1967419746_
                                                             (##car _e1967319743_))
                                                            (_tl1967519748_
                                                             (##cdr _e1967319743_)))
                                                        (if (gx#stx-null?
                                                             _tl1967519748_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1966919732_)
                        (let ((_e1967619751_ (gx#stx-e _tl1966919732_)))
                          (let ((_hd1967719754_ (##car _e1967619751_))
                                (_tl1967819756_ (##cdr _e1967619751_)))
                            (if (gx#stx-pair? _hd1967719754_)
                                (let ((_e1967919759_
                                       (gx#stx-e _hd1967719754_)))
                                  (let ((_hd1968019762_ (##car _e1967919759_))
                                        (_tl1968119764_ (##cdr _e1967919759_)))
                                    (if (gx#identifier? _hd1968019762_)
                                        (if (gx#stx-eq? '%#ref _hd1968019762_)
                                            (if (gx#stx-pair? _tl1968119764_)
                                                (let ((_e1968219767_
                                                       (gx#stx-e
                                                        _tl1968119764_)))
                                                  (let ((_hd1968319770_
                                                         (##car _e1968219767_))
                                                        (_tl1968419772_
                                                         (##cdr _e1968219767_)))
                                                    (if (gx#stx-null?
                                                         _tl1968419772_)
                                                        (if (gx#stx-pair?
                                                             _tl1967819756_)
                                                            (let ((_e1968519775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1967819756_)))
                      (let ((_hd1968619778_ (##car _e1968519775_))
                            (_tl1968719780_ (##cdr _e1968519775_)))
                        (if (gx#stx-pair? _hd1968619778_)
                            (let ((_e1968819783_ (gx#stx-e _hd1968619778_)))
                              (let ((_hd1968919786_ (##car _e1968819783_))
                                    (_tl1969019788_ (##cdr _e1968819783_)))
                                (if (gx#identifier? _hd1968919786_)
                                    (if (gx#stx-eq? '%#quote _hd1968919786_)
                                        (if (gx#stx-pair? _tl1969019788_)
                                            (let ((_e1969119791_
                                                   (gx#stx-e _tl1969019788_)))
                                              (let ((_hd1969219794_
                                                     (##car _e1969119791_))
                                                    (_tl1969319796_
                                                     (##cdr _e1969119791_)))
                                                (if (gx#stx-null?
                                                     _tl1969319796_)
                                                    (if (gx#stx-pair?
                                                         _tl1968719780_)
                                                        (let ((_e1969419799_
                                                               (gx#stx-e
                                                                _tl1968719780_)))
                                                          (let ((_hd1969519802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1969419799_))
                        (_tl1969619804_ (##cdr _e1969419799_)))
                    (if (gx#stx-pair? _hd1969519802_)
                        (let ((_e1969719807_ (gx#stx-e _hd1969519802_)))
                          (let ((_hd1969819810_ (##car _e1969719807_))
                                (_tl1969919812_ (##cdr _e1969719807_)))
                            (if (gx#identifier? _hd1969819810_)
                                (if (gx#stx-eq? '%#ref _hd1969819810_)
                                    (if (gx#stx-pair? _tl1969919812_)
                                        (let ((_e1970019815_
                                               (gx#stx-e _tl1969919812_)))
                                          (let ((_hd1970119818_
                                                 (##car _e1970019815_))
                                                (_tl1970219820_
                                                 (##cdr _e1970019815_)))
                                            (if (gx#stx-null? _tl1970219820_)
                                                (if (gx#stx-null?
                                                     _tl1969619804_)
                                                    ((lambda (_L19823_
                                                              _L19824_
                                                              _L19825_
                                                              _L19826_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#generate-runtime-binding-id _L19825_)
                    (gx#stx-e _L19824_)
                    (gxc#generate-runtime-binding-id _L19823_)
                    '#f)
                   (_g1960419714_ _g1960619717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1970119818_
                                                     _hd1969219794_
                                                     _hd1968319770_
                                                     _hd1967419746_)
                                                    (_g1960419714_
                                                     _g1960619717_))
                                                (_g1960419714_
                                                 _g1960619717_))))
                                        (_g1960419714_ _g1960619717_))
                                    (_g1960419714_ _g1960619717_))
                                (_g1960419714_ _g1960619717_))))
                        (_g1960419714_ _g1960619717_))))
                (_g1960419714_ _g1960619717_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960419714_
                                                     _g1960619717_))))
                                            (_g1960419714_ _g1960619717_))
                                        (_g1960419714_ _g1960619717_))
                                    (_g1960419714_ _g1960619717_))))
                            (_g1960419714_ _g1960619717_))))
                    (_g1960419714_ _g1960619717_))
                (_g1960419714_ _g1960619717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1960419714_ _g1960619717_))
                                            (_g1960419714_ _g1960619717_))
                                        (_g1960419714_ _g1960619717_))))
                                (_g1960419714_ _g1960619717_))))
                        (_g1960419714_ _g1960619717_))
                    (_g1960419714_ _g1960619717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960419714_
                                                     _g1960619717_))
                                                (_g1960419714_ _g1960619717_))
                                            (_g1960419714_ _g1960619717_))))
                                    (_g1960419714_ _g1960619717_))))
                            (_g1960419714_ _g1960619717_))))
                    (_g1960419714_ _g1960619717_))))
             (_g1960220044_
              (lambda (_g1960619867_)
                (if (gx#stx-pair? _g1960619867_)
                    (let ((_e1961219869_ (gx#stx-e _g1960619867_)))
                      (let ((_hd1961319872_ (##car _e1961219869_))
                            (_tl1961419874_ (##cdr _e1961219869_)))
                        (if (gx#stx-pair? _tl1961419874_)
                            (let ((_e1961519877_ (gx#stx-e _tl1961419874_)))
                              (let ((_hd1961619880_ (##car _e1961519877_))
                                    (_tl1961719882_ (##cdr _e1961519877_)))
                                (if (gx#stx-pair? _hd1961619880_)
                                    (let ((_e1961819885_
                                           (gx#stx-e _hd1961619880_)))
                                      (let ((_hd1961919888_
                                             (##car _e1961819885_))
                                            (_tl1962019890_
                                             (##cdr _e1961819885_)))
                                        (if (gx#identifier? _hd1961919888_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1961919888_)
                                                (if (gx#stx-pair?
                                                     _tl1962019890_)
                                                    (let ((_e1962119893_
                                                           (gx#stx-e
                                                            _tl1962019890_)))
                                                      (let ((_hd1962219896_
                                                             (##car _e1962119893_))
                                                            (_tl1962319898_
                                                             (##cdr _e1962119893_)))
                                                        (if (gx#stx-null?
                                                             _tl1962319898_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1961719882_)
                        (let ((_e1962419901_ (gx#stx-e _tl1961719882_)))
                          (let ((_hd1962519904_ (##car _e1962419901_))
                                (_tl1962619906_ (##cdr _e1962419901_)))
                            (if (gx#stx-pair? _hd1962519904_)
                                (let ((_e1962719909_
                                       (gx#stx-e _hd1962519904_)))
                                  (let ((_hd1962819912_ (##car _e1962719909_))
                                        (_tl1962919914_ (##cdr _e1962719909_)))
                                    (if (gx#identifier? _hd1962819912_)
                                        (if (gx#stx-eq? '%#ref _hd1962819912_)
                                            (if (gx#stx-pair? _tl1962919914_)
                                                (let ((_e1963019917_
                                                       (gx#stx-e
                                                        _tl1962919914_)))
                                                  (let ((_hd1963119920_
                                                         (##car _e1963019917_))
                                                        (_tl1963219922_
                                                         (##cdr _e1963019917_)))
                                                    (if (gx#stx-null?
                                                         _tl1963219922_)
                                                        (if (gx#stx-pair?
                                                             _tl1962619906_)
                                                            (let ((_e1963319925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1962619906_)))
                      (let ((_hd1963419928_ (##car _e1963319925_))
                            (_tl1963519930_ (##cdr _e1963319925_)))
                        (if (gx#stx-pair? _hd1963419928_)
                            (let ((_e1963619933_ (gx#stx-e _hd1963419928_)))
                              (let ((_hd1963719936_ (##car _e1963619933_))
                                    (_tl1963819938_ (##cdr _e1963619933_)))
                                (if (gx#identifier? _hd1963719936_)
                                    (if (gx#stx-eq? '%#quote _hd1963719936_)
                                        (if (gx#stx-pair? _tl1963819938_)
                                            (let ((_e1963919941_
                                                   (gx#stx-e _tl1963819938_)))
                                              (let ((_hd1964019944_
                                                     (##car _e1963919941_))
                                                    (_tl1964119946_
                                                     (##cdr _e1963919941_)))
                                                (if (gx#stx-null?
                                                     _tl1964119946_)
                                                    (if (gx#stx-pair?
                                                         _tl1963519930_)
                                                        (let ((_e1964219949_
                                                               (gx#stx-e
                                                                _tl1963519930_)))
                                                          (let ((_hd1964319952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1964219949_))
                        (_tl1964419954_ (##cdr _e1964219949_)))
                    (if (gx#stx-pair? _hd1964319952_)
                        (let ((_e1964519957_ (gx#stx-e _hd1964319952_)))
                          (let ((_hd1964619960_ (##car _e1964519957_))
                                (_tl1964719962_ (##cdr _e1964519957_)))
                            (if (gx#identifier? _hd1964619960_)
                                (if (gx#stx-eq? '%#ref _hd1964619960_)
                                    (if (gx#stx-pair? _tl1964719962_)
                                        (let ((_e1964819965_
                                               (gx#stx-e _tl1964719962_)))
                                          (let ((_hd1964919968_
                                                 (##car _e1964819965_))
                                                (_tl1965019970_
                                                 (##cdr _e1964819965_)))
                                            (if (gx#stx-null? _tl1965019970_)
                                                (if (gx#stx-pair?
                                                     _tl1964419954_)
                                                    (let ((_e1965119973_
                                                           (gx#stx-e
                                                            _tl1964419954_)))
                                                      (let ((_hd1965219976_
                                                             (##car _e1965119973_))
                                                            (_tl1965319978_
                                                             (##cdr _e1965119973_)))
                                                        (if (gx#stx-pair?
                                                             _hd1965219976_)
                                                            (let ((_e1965419981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1965219976_)))
                      (let ((_hd1965519984_ (##car _e1965419981_))
                            (_tl1965619986_ (##cdr _e1965419981_)))
                        (if (gx#identifier? _hd1965519984_)
                            (if (gx#stx-eq? '%#quote _hd1965519984_)
                                (if (gx#stx-pair? _tl1965619986_)
                                    (let ((_e1965719989_
                                           (gx#stx-e _tl1965619986_)))
                                      (let ((_hd1965819992_
                                             (##car _e1965719989_))
                                            (_tl1965919994_
                                             (##cdr _e1965719989_)))
                                        (if (gx#stx-null? _tl1965919994_)
                                            (if (gx#stx-null? _tl1965319978_)
                                                ((lambda (_L19997_
                                                          _L19998_
                                                          _L19999_
                                                          _L20000_
                                                          _L20001_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L20001_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#generate-runtime-binding-id
                                                         _L20000_)
                                                        (gx#stx-e _L19999_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L19998_)
                                                        (gx#stx-e _L19997_))
                                                       (_g1960319864_
                                                        _g1960619867_)))
                                                 _hd1965819992_
                                                 _hd1964919968_
                                                 _hd1964019944_
                                                 _hd1963119920_
                                                 _hd1962219896_)
                                                (_g1960319864_ _g1960619867_))
                                            (_g1960319864_ _g1960619867_))))
                                    (_g1960319864_ _g1960619867_))
                                (_g1960319864_ _g1960619867_))
                            (_g1960319864_ _g1960619867_))))
                    (_g1960319864_ _g1960619867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960319864_
                                                     _g1960619867_))
                                                (_g1960319864_
                                                 _g1960619867_))))
                                        (_g1960319864_ _g1960619867_))
                                    (_g1960319864_ _g1960619867_))
                                (_g1960319864_ _g1960619867_))))
                        (_g1960319864_ _g1960619867_))))
                (_g1960319864_ _g1960619867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960319864_
                                                     _g1960619867_))))
                                            (_g1960319864_ _g1960619867_))
                                        (_g1960319864_ _g1960619867_))
                                    (_g1960319864_ _g1960619867_))))
                            (_g1960319864_ _g1960619867_))))
                    (_g1960319864_ _g1960619867_))
                (_g1960319864_ _g1960619867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1960319864_ _g1960619867_))
                                            (_g1960319864_ _g1960619867_))
                                        (_g1960319864_ _g1960619867_))))
                                (_g1960319864_ _g1960619867_))))
                        (_g1960319864_ _g1960619867_))
                    (_g1960319864_ _g1960619867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1960319864_
                                                     _g1960619867_))
                                                (_g1960319864_ _g1960619867_))
                                            (_g1960319864_ _g1960619867_))))
                                    (_g1960319864_ _g1960619867_))))
                            (_g1960319864_ _g1960619867_))))
                    (_g1960319864_ _g1960619867_)))))
        (_g1960220044_ _stx19601_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx19541_)
      (let* ((_g1954419557_
              (lambda (_g1954519554_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1954519554_)))
             (_g1954319564_ (lambda (_g1954519560_) ((lambda () '#f))))
             (_g1954219598_
              (lambda (_g1954519567_)
                (if (gx#stx-pair? _g1954519567_)
                    (let ((_e1954719569_ (gx#stx-e _g1954519567_)))
                      (let ((_hd1954819572_ (##car _e1954719569_))
                            (_tl1954919574_ (##cdr _e1954719569_)))
                        (if (gx#stx-pair? _tl1954919574_)
                            (let ((_e1955019577_ (gx#stx-e _tl1954919574_)))
                              (let ((_hd1955119580_ (##car _e1955019577_))
                                    (_tl1955219582_ (##cdr _e1955019577_)))
                                (if (gx#stx-null? _tl1955219582_)
                                    ((lambda (_L19585_)
                                       (gxc#compile-e _L19585_))
                                     _hd1955119580_)
                                    (_g1954319564_ _g1954519567_))))
                            (_g1954319564_ _g1954519567_))))
                    (_g1954319564_ _g1954519567_)))))
        (_g1954219598_ _stx19541_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19474_)
      (let* ((_g1947619493_
              (lambda (_g1947719490_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1947719490_)))
             (_g1947519538_
              (lambda (_g1947719496_)
                (if (gx#stx-pair? _g1947719496_)
                    (let ((_e1948019498_ (gx#stx-e _g1947719496_)))
                      (let ((_hd1948119501_ (##car _e1948019498_))
                            (_tl1948219503_ (##cdr _e1948019498_)))
                        (if (gx#stx-pair? _tl1948219503_)
                            (let ((_e1948319506_ (gx#stx-e _tl1948219503_)))
                              (let ((_hd1948419509_ (##car _e1948319506_))
                                    (_tl1948519511_ (##cdr _e1948319506_)))
                                (if (gx#stx-pair? _tl1948519511_)
                                    (let ((_e1948619514_
                                           (gx#stx-e _tl1948519511_)))
                                      (let ((_hd1948719517_
                                             (##car _e1948619514_))
                                            (_tl1948819519_
                                             (##cdr _e1948619514_)))
                                        (if (gx#stx-null? _tl1948819519_)
                                            ((lambda (_L19522_ _L19523_)
                                               (gxc#compile-e _L19522_))
                                             _hd1948719517_
                                             _hd1948419509_)
                                            (_g1947619493_ _g1947719496_))))
                                    (_g1947619493_ _g1947719496_))))
                            (_g1947619493_ _g1947719496_))))
                    (_g1947619493_ _g1947719496_)))))
        (_g1947519538_ _stx19474_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18115_)
      (let* ((_g1812218421_
              (lambda (_g1812318418_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1812318418_)))
             (_g1812118428_ (lambda (_g1812318424_) ((lambda () '#f))))
             (_g1812018817_
              (lambda (_g1812318431_)
                (if (gx#stx-pair? _g1812318431_)
                    (let ((_e1831218433_ (gx#stx-e _g1812318431_)))
                      (let ((_hd1831318436_ (##car _e1831218433_))
                            (_tl1831418438_ (##cdr _e1831218433_)))
                        (if (gx#stx-pair? _tl1831418438_)
                            (let ((_e1831518441_ (gx#stx-e _tl1831418438_)))
                              (let ((_hd1831618444_ (##car _e1831518441_))
                                    (_tl1831718446_ (##cdr _e1831518441_)))
                                (if (gx#stx-pair? _hd1831618444_)
                                    (let ((_e1831818449_
                                           (gx#stx-e _hd1831618444_)))
                                      (let ((_hd1831918452_
                                             (##car _e1831818449_))
                                            (_tl1832018454_
                                             (##cdr _e1831818449_)))
                                        (if (gx#stx-pair? _tl1831718446_)
                                            (let ((_e1832118457_
                                                   (gx#stx-e _tl1831718446_)))
                                              (let ((_hd1832218460_
                                                     (##car _e1832118457_))
                                                    (_tl1832318462_
                                                     (##cdr _e1832118457_)))
                                                (if (gx#stx-pair?
                                                     _hd1832218460_)
                                                    (let ((_e1832418465_
                                                           (gx#stx-e
                                                            _hd1832218460_)))
                                                      (let ((_hd1832518468_
                                                             (##car _e1832418465_))
                                                            (_tl1832618470_
                                                             (##cdr _e1832418465_)))
                                                        (if (gx#identifier?
                                                             _hd1832518468_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1832518468_)
                        (if (gx#stx-pair? _tl1832618470_)
                            (let ((_e1832718473_ (gx#stx-e _tl1832618470_)))
                              (let ((_hd1832818476_ (##car _e1832718473_))
                                    (_tl1832918478_ (##cdr _e1832718473_)))
                                (if (gx#stx-pair? _hd1832818476_)
                                    (let ((_e1833018481_
                                           (gx#stx-e _hd1832818476_)))
                                      (let ((_hd1833118484_
                                             (##car _e1833018481_))
                                            (_tl1833218486_
                                             (##cdr _e1833018481_)))
                                        (if (gx#identifier? _hd1833118484_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1833118484_)
                                                (if (gx#stx-pair?
                                                     _tl1833218486_)
                                                    (let ((_e1833318489_
                                                           (gx#stx-e
                                                            _tl1833218486_)))
                                                      (let ((_hd1833418492_
                                                             (##car _e1833318489_))
                                                            (_tl1833518494_
                                                             (##cdr _e1833318489_)))
                                                        (if (gx#stx-null?
                                                             _tl1833518494_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1832918478_)
                        (let ((_e1833618497_ (gx#stx-e _tl1832918478_)))
                          (let ((_hd1833718500_ (##car _e1833618497_))
                                (_tl1833818502_ (##cdr _e1833618497_)))
                            (if (gx#stx-pair? _hd1833718500_)
                                (let ((_e1833918505_
                                       (gx#stx-e _hd1833718500_)))
                                  (let ((_hd1834018508_ (##car _e1833918505_))
                                        (_tl1834118510_ (##cdr _e1833918505_)))
                                    (if (gx#identifier? _hd1834018508_)
                                        (if (gx#stx-eq? '%#ref _hd1834018508_)
                                            (if (gx#stx-pair? _tl1834118510_)
                                                (let ((_e1834218513_
                                                       (gx#stx-e
                                                        _tl1834118510_)))
                                                  (let ((_hd1834318516_
                                                         (##car _e1834218513_))
                                                        (_tl1834418518_
                                                         (##cdr _e1834218513_)))
                                                    (if (gx#stx-null?
                                                         _tl1834418518_)
                                                        (if (gx#stx-pair?
                                                             _tl1833818502_)
                                                            (let ((_e1834518521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1833818502_)))
                      (let ((_hd1834618524_ (##car _e1834518521_))
                            (_tl1834718526_ (##cdr _e1834518521_)))
                        (if (gx#stx-pair? _hd1834618524_)
                            (let ((_e1834818529_ (gx#stx-e _hd1834618524_)))
                              (let ((_hd1834918532_ (##car _e1834818529_))
                                    (_tl1835018534_ (##cdr _e1834818529_)))
                                (if (gx#identifier? _hd1834918532_)
                                    (if (gx#stx-eq? '%#ref _hd1834918532_)
                                        (if (gx#stx-pair? _tl1835018534_)
                                            (let ((_e1835118537_
                                                   (gx#stx-e _tl1835018534_)))
                                              (let ((_hd1835218540_
                                                     (##car _e1835118537_))
                                                    (_tl1835318542_
                                                     (##cdr _e1835118537_)))
                                                (if (gx#stx-null?
                                                     _tl1835318542_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1834718526_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1834718526_)
                          '1)
                    (let ((_g27437_
                           (gx#syntax-split-splice _tl1834718526_ '1)))
                      (begin
                        (let ((_g27438_ (values-count _g27437_)))
                          (if (not (fx= _g27438_ 2))
                              (error "Context expects 2 values" _g27438_)))
                        (let ((_target1835418545_ (values-ref _g27437_ 0))
                              (_tl1835618547_ (values-ref _g27437_ 1)))
                          (if (gx#stx-pair? _tl1835618547_)
                              (let ((_e1836918550_ (gx#stx-e _tl1835618547_)))
                                (let ((_hd1837018553_ (##car _e1836918550_))
                                      (_tl1837118555_ (##cdr _e1836918550_)))
                                  (if (gx#stx-pair? _hd1837018553_)
                                      (let ((_e1837218558_
                                             (gx#stx-e _hd1837018553_)))
                                        (let ((_hd1837318561_
                                               (##car _e1837218558_))
                                              (_tl1837418563_
                                               (##cdr _e1837218558_)))
                                          (if (gx#identifier? _hd1837318561_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1837318561_)
                                                  (if (gx#stx-pair?
                                                       _tl1837418563_)
                                                      (let ((_e1837518566_
                                                             (gx#stx-e
                                                              _tl1837418563_)))
                                                        (let ((_hd1837618569_
                                                               (##car _e1837518566_))
                                                              (_tl1837718571_
                                                               (##cdr _e1837518566_)))
                                                          (if (gx#stx-null?
                                                               _tl1837718571_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1837118555_)
                          (letrec ((_loop1835718574_
                                    (lambda (_hd1835518577_
                                             _-absent-value1836118579_
                                             _key1836218581_
                                             _-xkwvar1836318583_
                                             _-hash-ref1836418585_)
                                      (if (gx#stx-pair? _hd1835518577_)
                                          (let ((_e1835818588_
                                                 (gx#stx-e _hd1835518577_)))
                                            (let ((_lp-hd1835918591_
                                                   (##car _e1835818588_))
                                                  (_lp-tl1836018593_
                                                   (##cdr _e1835818588_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1835918591_)
                                                  (let ((_e1837818596_
                                                         (gx#stx-e
                                                          _lp-hd1835918591_)))
                                                    (let ((_hd1837918599_
                                                           (##car _e1837818596_))
                                                          (_tl1838018601_
                                                           (##cdr _e1837818596_)))
                                                      (if (gx#identifier?
                                                           _hd1837918599_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1837918599_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1838018601_)
                          (let ((_e1838118604_ (gx#stx-e _tl1838018601_)))
                            (let ((_hd1838218607_ (##car _e1838118604_))
                                  (_tl1838318609_ (##cdr _e1838118604_)))
                              (if (gx#stx-pair? _hd1838218607_)
                                  (let ((_e1838418612_
                                         (gx#stx-e _hd1838218607_)))
                                    (let ((_hd1838518615_
                                           (##car _e1838418612_))
                                          (_tl1838618617_
                                           (##cdr _e1838418612_)))
                                      (if (gx#identifier? _hd1838518615_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1838518615_)
                                              (if (gx#stx-pair? _tl1838618617_)
                                                  (let ((_e1838718620_
                                                         (gx#stx-e
                                                          _tl1838618617_)))
                                                    (let ((_hd1838818623_
                                                           (##car _e1838718620_))
                                                          (_tl1838918625_
                                                           (##cdr _e1838718620_)))
                                                      (if (gx#stx-null?
                                                           _tl1838918625_)
                                                          (if (gx#stx-pair?
                                                               _tl1838318609_)
                                                              (let ((_e1839018628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1838318609_)))
                        (let ((_hd1839118631_ (##car _e1839018628_))
                              (_tl1839218633_ (##cdr _e1839018628_)))
                          (if (gx#stx-pair? _hd1839118631_)
                              (let ((_e1839318636_ (gx#stx-e _hd1839118631_)))
                                (let ((_hd1839418639_ (##car _e1839318636_))
                                      (_tl1839518641_ (##cdr _e1839318636_)))
                                  (if (gx#identifier? _hd1839418639_)
                                      (if (gx#stx-eq? '%#ref _hd1839418639_)
                                          (if (gx#stx-pair? _tl1839518641_)
                                              (let ((_e1839618644_
                                                     (gx#stx-e
                                                      _tl1839518641_)))
                                                (let ((_hd1839718647_
                                                       (##car _e1839618644_))
                                                      (_tl1839818649_
                                                       (##cdr _e1839618644_)))
                                                  (if (gx#stx-null?
                                                       _tl1839818649_)
                                                      (if (gx#stx-pair?
                                                           _tl1839218633_)
                                                          (let ((_e1839918652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1839218633_)))
                    (let ((_hd1840018655_ (##car _e1839918652_))
                          (_tl1840118657_ (##cdr _e1839918652_)))
                      (if (gx#stx-pair? _hd1840018655_)
                          (let ((_e1840218660_ (gx#stx-e _hd1840018655_)))
                            (let ((_hd1840318663_ (##car _e1840218660_))
                                  (_tl1840418665_ (##cdr _e1840218660_)))
                              (if (gx#identifier? _hd1840318663_)
                                  (if (gx#stx-eq? '%#quote _hd1840318663_)
                                      (if (gx#stx-pair? _tl1840418665_)
                                          (let ((_e1840518668_
                                                 (gx#stx-e _tl1840418665_)))
                                            (let ((_hd1840618671_
                                                   (##car _e1840518668_))
                                                  (_tl1840718673_
                                                   (##cdr _e1840518668_)))
                                              (if (gx#stx-null? _tl1840718673_)
                                                  (if (gx#stx-pair?
                                                       _tl1840118657_)
                                                      (let ((_e1840818676_
                                                             (gx#stx-e
                                                              _tl1840118657_)))
                                                        (let ((_hd1840918679_
                                                               (##car _e1840818676_))
                                                              (_tl1841018681_
                                                               (##cdr _e1840818676_)))
                                                          (if (gx#stx-pair?
                                                               _hd1840918679_)
                                                              (let ((_e1841118684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1840918679_)))
                        (let ((_hd1841218687_ (##car _e1841118684_))
                              (_tl1841318689_ (##cdr _e1841118684_)))
                          (if (gx#identifier? _hd1841218687_)
                              (if (gx#stx-eq? '%#ref _hd1841218687_)
                                  (if (gx#stx-pair? _tl1841318689_)
                                      (let ((_e1841418692_
                                             (gx#stx-e _tl1841318689_)))
                                        (let ((_hd1841518695_
                                               (##car _e1841418692_))
                                              (_tl1841618697_
                                               (##cdr _e1841418692_)))
                                          (if (gx#stx-null? _tl1841618697_)
                                              (if (gx#stx-null? _tl1841018681_)
                                                  (_loop1835718574_
                                                   _lp-tl1836018593_
                                                   (cons _hd1841518695_
                                                         _-absent-value1836118579_)
                                                   (cons _hd1840618671_
                                                         _key1836218581_)
                                                   (cons _hd1839718647_
                                                         _-xkwvar1836318583_)
                                                   (cons _hd1838818623_
                                                         _-hash-ref1836418585_))
                                                  (_g1812118428_
                                                   _g1812318431_))
                                              (_g1812118428_ _g1812318431_))))
                                      (_g1812118428_ _g1812318431_))
                                  (_g1812118428_ _g1812318431_))
                              (_g1812118428_ _g1812318431_))))
                      (_g1812118428_ _g1812318431_))))
              (_g1812118428_ _g1812318431_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812118428_
                                                   _g1812318431_))))
                                          (_g1812118428_ _g1812318431_))
                                      (_g1812118428_ _g1812318431_))
                                  (_g1812118428_ _g1812318431_))))
                          (_g1812118428_ _g1812318431_))))
                  (_g1812118428_ _g1812318431_))
              (_g1812118428_ _g1812318431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1812118428_ _g1812318431_))
                                          (_g1812118428_ _g1812318431_))
                                      (_g1812118428_ _g1812318431_))))
                              (_g1812118428_ _g1812318431_))))
                      (_g1812118428_ _g1812318431_))
                  (_g1812118428_ _g1812318431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812118428_
                                                   _g1812318431_))
                                              (_g1812118428_ _g1812318431_))
                                          (_g1812118428_ _g1812318431_))))
                                  (_g1812118428_ _g1812318431_))))
                          (_g1812118428_ _g1812318431_))
                      (_g1812118428_ _g1812318431_))
                  (_g1812118428_ _g1812318431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812118428_
                                                   _g1812318431_))))
                                          (let ((_-absent-value1836518700_
                                                 (reverse _-absent-value1836118579_))
                                                (_key1836618702_
                                                 (reverse _key1836218581_))
                                                (_-xkwvar1836718704_
                                                 (reverse _-xkwvar1836318583_))
                                                (_-hash-ref1836818706_
                                                 (reverse _-hash-ref1836418585_)))
                                            (if (gx#stx-null? _tl1832318462_)
                                                ((lambda (_L18709_
                                                          _L18710_
                                                          _L18711_
                                                          _L18712_
                                                          _L18713_
                                                          _L18714_
                                                          _L18715_
                                                          _L18716_
                                                          _L18717_
                                                          _L18718_)
                                                   (if (if (gx#identifier?
                                                            _L18718_)
                                                           (if (gx#identifier?
                                                                _L18717_)
                                                               (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L18716_)
                                'apply)
                           (if (gx#free-identifier=? _L18718_ _L18714_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1877318776_
                                                               _g1877418778_)
                                                        (cons _g1877318776_
                                                              _g1877418778_))
                                                      '()
                                                      _L18711_)))
                                   (if (andmap1 (lambda (_id18781_)
                                                  (eq? (gxc#generate-runtime-binding-id
                                                        _id18781_)
                                                       'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1878218785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1878318787_)
                    (cons _g1878218785_ _g1878318787_))
                  '()
                  _L18713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_id18790_)
                                                      (eq? (gxc#generate-runtime-binding-id
                                                            _id18790_)
                                                           'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1879118794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1879218796_)
                        (cons _g1879118794_ _g1879218796_))
                      '()
                      _L18710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1879818800_)
                                                      (gx#free-identifier=?
                                                       _g1879818800_
                                                       _L18718_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1880218805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1880318807_)
                        (cons _g1880218805_ _g1880318807_))
                      '()
                      _L18712_)))
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
                       (foldr1 (lambda (_g1880918812_ _g1881018814_)
                                 (cons _g1880918812_ _g1881018814_))
                               '()
                               _L18711_)))
                (gxc#generate-runtime-binding-id _L18715_))
               (_g1812118428_ _g1812318431_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1837618569_
                                                 _-absent-value1836518700_
                                                 _key1836618702_
                                                 _-xkwvar1836718704_
                                                 _-hash-ref1836818706_
                                                 _hd1835218540_
                                                 _hd1834318516_
                                                 _hd1833418492_
                                                 _tl1832018454_
                                                 _hd1831918452_)
                                                (_g1812118428_
                                                 _g1812318431_)))))))
                            (_loop1835718574_
                             _target1835418545_
                             '()
                             '()
                             '()
                             '()))
                          (_g1812118428_ _g1812318431_))
                      (_g1812118428_ _g1812318431_))))
              (_g1812118428_ _g1812318431_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1812118428_
                                                   _g1812318431_))
                                              (_g1812118428_ _g1812318431_))))
                                      (_g1812118428_ _g1812318431_))))
                              (_g1812118428_ _g1812318431_)))))
                    (_g1812118428_ _g1812318431_))
                (_g1812118428_ _g1812318431_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812118428_
                                                     _g1812318431_))))
                                            (_g1812118428_ _g1812318431_))
                                        (_g1812118428_ _g1812318431_))
                                    (_g1812118428_ _g1812318431_))))
                            (_g1812118428_ _g1812318431_))))
                    (_g1812118428_ _g1812318431_))
                (_g1812118428_ _g1812318431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1812118428_ _g1812318431_))
                                            (_g1812118428_ _g1812318431_))
                                        (_g1812118428_ _g1812318431_))))
                                (_g1812118428_ _g1812318431_))))
                        (_g1812118428_ _g1812318431_))
                    (_g1812118428_ _g1812318431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812118428_
                                                     _g1812318431_))
                                                (_g1812118428_ _g1812318431_))
                                            (_g1812118428_ _g1812318431_))))
                                    (_g1812118428_ _g1812318431_))))
                            (_g1812118428_ _g1812318431_))
                        (_g1812118428_ _g1812318431_))
                    (_g1812118428_ _g1812318431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812118428_
                                                     _g1812318431_))))
                                            (_g1812118428_ _g1812318431_))))
                                    (_g1812118428_ _g1812318431_))))
                            (_g1812118428_ _g1812318431_))))
                    (_g1812118428_ _g1812318431_))))
             (_g1811919034_
              (lambda (_g1812318820_)
                (if (gx#stx-pair? _g1812318820_)
                    (let ((_e1824518822_ (gx#stx-e _g1812318820_)))
                      (let ((_hd1824618825_ (##car _e1824518822_))
                            (_tl1824718827_ (##cdr _e1824518822_)))
                        (if (gx#stx-pair? _tl1824718827_)
                            (let ((_e1824818830_ (gx#stx-e _tl1824718827_)))
                              (let ((_hd1824918833_ (##car _e1824818830_))
                                    (_tl1825018835_ (##cdr _e1824818830_)))
                                (if (gx#stx-pair? _tl1825018835_)
                                    (let ((_e1825118838_
                                           (gx#stx-e _tl1825018835_)))
                                      (let ((_hd1825218841_
                                             (##car _e1825118838_))
                                            (_tl1825318843_
                                             (##cdr _e1825118838_)))
                                        (if (gx#stx-pair? _hd1825218841_)
                                            (let ((_e1825418846_
                                                   (gx#stx-e _hd1825218841_)))
                                              (let ((_hd1825518849_
                                                     (##car _e1825418846_))
                                                    (_tl1825618851_
                                                     (##cdr _e1825418846_)))
                                                (if (gx#identifier?
                                                     _hd1825518849_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1825518849_)
                                                        (if (gx#stx-pair?
                                                             _tl1825618851_)
                                                            (let ((_e1825718854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1825618851_)))
                      (let ((_hd1825818857_ (##car _e1825718854_))
                            (_tl1825918859_ (##cdr _e1825718854_)))
                        (if (gx#stx-pair? _hd1825818857_)
                            (let ((_e1826018862_ (gx#stx-e _hd1825818857_)))
                              (let ((_hd1826118865_ (##car _e1826018862_))
                                    (_tl1826218867_ (##cdr _e1826018862_)))
                                (if (gx#identifier? _hd1826118865_)
                                    (if (gx#stx-eq? '%#ref _hd1826118865_)
                                        (if (gx#stx-pair? _tl1826218867_)
                                            (let ((_e1826318870_
                                                   (gx#stx-e _tl1826218867_)))
                                              (let ((_hd1826418873_
                                                     (##car _e1826318870_))
                                                    (_tl1826518875_
                                                     (##cdr _e1826318870_)))
                                                (if (gx#stx-null?
                                                     _tl1826518875_)
                                                    (if (gx#stx-pair?
                                                         _tl1825918859_)
                                                        (let ((_e1826618878_
                                                               (gx#stx-e
                                                                _tl1825918859_)))
                                                          (let ((_hd1826718881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1826618878_))
                        (_tl1826818883_ (##cdr _e1826618878_)))
                    (if (gx#stx-pair? _hd1826718881_)
                        (let ((_e1826918886_ (gx#stx-e _hd1826718881_)))
                          (let ((_hd1827018889_ (##car _e1826918886_))
                                (_tl1827118891_ (##cdr _e1826918886_)))
                            (if (gx#identifier? _hd1827018889_)
                                (if (gx#stx-eq? '%#ref _hd1827018889_)
                                    (if (gx#stx-pair? _tl1827118891_)
                                        (let ((_e1827218894_
                                               (gx#stx-e _tl1827118891_)))
                                          (let ((_hd1827318897_
                                                 (##car _e1827218894_))
                                                (_tl1827418899_
                                                 (##cdr _e1827218894_)))
                                            (if (gx#stx-null? _tl1827418899_)
                                                (if (gx#stx-pair?
                                                     _tl1826818883_)
                                                    (let ((_e1827518902_
                                                           (gx#stx-e
                                                            _tl1826818883_)))
                                                      (let ((_hd1827618905_
                                                             (##car _e1827518902_))
                                                            (_tl1827718907_
                                                             (##cdr _e1827518902_)))
                                                        (if (gx#stx-pair?
                                                             _hd1827618905_)
                                                            (let ((_e1827818910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1827618905_)))
                      (let ((_hd1827918913_ (##car _e1827818910_))
                            (_tl1828018915_ (##cdr _e1827818910_)))
                        (if (gx#identifier? _hd1827918913_)
                            (if (gx#stx-eq? '%#quote _hd1827918913_)
                                (if (gx#stx-pair? _tl1828018915_)
                                    (let ((_e1828118918_
                                           (gx#stx-e _tl1828018915_)))
                                      (let ((_hd1828218921_
                                             (##car _e1828118918_))
                                            (_tl1828318923_
                                             (##cdr _e1828118918_)))
                                        (if (gx#stx-null? _tl1828318923_)
                                            (if (gx#stx-pair? _tl1827718907_)
                                                (let ((_e1828418926_
                                                       (gx#stx-e
                                                        _tl1827718907_)))
                                                  (let ((_hd1828518929_
                                                         (##car _e1828418926_))
                                                        (_tl1828618931_
                                                         (##cdr _e1828418926_)))
                                                    (if (gx#stx-pair?
                                                         _hd1828518929_)
                                                        (let ((_e1828718934_
                                                               (gx#stx-e
                                                                _hd1828518929_)))
                                                          (let ((_hd1828818937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1828718934_))
                        (_tl1828918939_ (##cdr _e1828718934_)))
                    (if (gx#identifier? _hd1828818937_)
                        (if (gx#stx-eq? '%#ref _hd1828818937_)
                            (if (gx#stx-pair? _tl1828918939_)
                                (let ((_e1829018942_
                                       (gx#stx-e _tl1828918939_)))
                                  (let ((_hd1829118945_ (##car _e1829018942_))
                                        (_tl1829218947_ (##cdr _e1829018942_)))
                                    (if (gx#stx-null? _tl1829218947_)
                                        (if (gx#stx-pair? _tl1828618931_)
                                            (let ((_e1829318950_
                                                   (gx#stx-e _tl1828618931_)))
                                              (let ((_hd1829418953_
                                                     (##car _e1829318950_))
                                                    (_tl1829518955_
                                                     (##cdr _e1829318950_)))
                                                (if (gx#stx-pair?
                                                     _hd1829418953_)
                                                    (let ((_e1829618958_
                                                           (gx#stx-e
                                                            _hd1829418953_)))
                                                      (let ((_hd1829718961_
                                                             (##car _e1829618958_))
                                                            (_tl1829818963_
                                                             (##cdr _e1829618958_)))
                                                        (if (gx#identifier?
                                                             _hd1829718961_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1829718961_)
                        (if (gx#stx-pair? _tl1829818963_)
                            (let ((_e1829918966_ (gx#stx-e _tl1829818963_)))
                              (let ((_hd1830018969_ (##car _e1829918966_))
                                    (_tl1830118971_ (##cdr _e1829918966_)))
                                (if (gx#stx-null? _tl1830118971_)
                                    (if (gx#stx-null? _tl1829518955_)
                                        (if (gx#stx-null? _tl1825318843_)
                                            ((lambda (_L18974_
                                                      _L18975_
                                                      _L18976_
                                                      _L18977_
                                                      _L18978_
                                                      _L18979_)
                                               (if (if (gx#identifier?
                                                        _L18979_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18978_)
                        'apply)
                   (if (eq? (gxc#generate-runtime-binding-id _L18977_)
                            'keyword-dispatch)
                       (gx#free-identifier=? _L18979_ _L18974_)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_tab19029_
                                                           (gx#stx-e _L18976_))
                                                          (_keys19031_
                                                           (if _tab19029_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab19029_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys19031_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18975_)))
                                                   (_g1812018817_
                                                    _g1812318820_)))
                                             _hd1830018969_
                                             _hd1829118945_
                                             _hd1828218921_
                                             _hd1827318897_
                                             _hd1826418873_
                                             _hd1824918833_)
                                            (_g1812018817_ _g1812318820_))
                                        (_g1812018817_ _g1812318820_))
                                    (_g1812018817_ _g1812318820_))))
                            (_g1812018817_ _g1812318820_))
                        (_g1812018817_ _g1812318820_))
                    (_g1812018817_ _g1812318820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812018817_
                                                     _g1812318820_))))
                                            (_g1812018817_ _g1812318820_))
                                        (_g1812018817_ _g1812318820_))))
                                (_g1812018817_ _g1812318820_))
                            (_g1812018817_ _g1812318820_))
                        (_g1812018817_ _g1812318820_))))
                (_g1812018817_ _g1812318820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1812018817_ _g1812318820_))
                                            (_g1812018817_ _g1812318820_))))
                                    (_g1812018817_ _g1812318820_))
                                (_g1812018817_ _g1812318820_))
                            (_g1812018817_ _g1812318820_))))
                    (_g1812018817_ _g1812318820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812018817_
                                                     _g1812318820_))
                                                (_g1812018817_
                                                 _g1812318820_))))
                                        (_g1812018817_ _g1812318820_))
                                    (_g1812018817_ _g1812318820_))
                                (_g1812018817_ _g1812318820_))))
                        (_g1812018817_ _g1812318820_))))
                (_g1812018817_ _g1812318820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812018817_
                                                     _g1812318820_))))
                                            (_g1812018817_ _g1812318820_))
                                        (_g1812018817_ _g1812318820_))
                                    (_g1812018817_ _g1812318820_))))
                            (_g1812018817_ _g1812318820_))))
                    (_g1812018817_ _g1812318820_))
                (_g1812018817_ _g1812318820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1812018817_
                                                     _g1812318820_))))
                                            (_g1812018817_ _g1812318820_))))
                                    (_g1812018817_ _g1812318820_))))
                            (_g1812018817_ _g1812318820_))))
                    (_g1812018817_ _g1812318820_))))
             (_g1811819056_
              (lambda (_g1812319037_)
                (if (gx#stx-pair? _g1812319037_)
                    (let ((_e1823619039_ (gx#stx-e _g1812319037_)))
                      (let ((_hd1823719042_ (##car _e1823619039_))
                            (_tl1823819044_ (##cdr _e1823619039_)))
                        ((lambda (_L19047_)
                           (if (gxc#dispatch-lambda-form? _L19047_)
                               (let ((__obj27367
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27367
                                    'lambda
                                    (gxc#lambda-form-arity _L19047_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19047_))
                                   __obj27367))
                               (_g1811919034_ _g1812319037_)))
                         _tl1823819044_)))
                    (_g1811919034_ _g1812319037_))))
             (_g1811719286_
              (lambda (_g1812319059_)
                (if (gx#stx-pair? _g1812319059_)
                    (let ((_e1818119061_ (gx#stx-e _g1812319059_)))
                      (let ((_hd1818219064_ (##car _e1818119061_))
                            (_tl1818319066_ (##cdr _e1818119061_)))
                        (if (gx#stx-pair? _tl1818319066_)
                            (let ((_e1818419069_ (gx#stx-e _tl1818319066_)))
                              (let ((_hd1818519072_ (##car _e1818419069_))
                                    (_tl1818619074_ (##cdr _e1818419069_)))
                                (if (gx#stx-pair/null? _hd1818519072_)
                                    (if (fx>= (gx#stx-length _hd1818519072_)
                                              '0)
                                        (let ((_g27439_
                                               (gx#syntax-split-splice
                                                _hd1818519072_
                                                '0)))
                                          (begin
                                            (let ((_g27440_
                                                   (values-count _g27439_)))
                                              (if (not (fx= _g27440_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27440_)))
                                            (let ((_target1818719077_
                                                   (values-ref _g27439_ 0))
                                                  (_tl1818919079_
                                                   (values-ref _g27439_ 1)))
                                              (if (gx#stx-null? _tl1818919079_)
                                                  (letrec ((_loop1819019082_
                                                            (lambda (_hd1818819085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1819419087_)
                      (if (gx#stx-pair? _hd1818819085_)
                          (let ((_e1819119090_ (gx#stx-e _hd1818819085_)))
                            (let ((_lp-hd1819219093_ (##car _e1819119090_))
                                  (_lp-tl1819319095_ (##cdr _e1819119090_)))
                              (_loop1819019082_
                               _lp-tl1819319095_
                               (cons _lp-hd1819219093_ _arg1819419087_))))
                          (let ((_arg1819519098_ (reverse _arg1819419087_)))
                            (if (gx#stx-pair? _tl1818619074_)
                                (let ((_e1819619101_
                                       (gx#stx-e _tl1818619074_)))
                                  (let ((_hd1819719104_ (##car _e1819619101_))
                                        (_tl1819819106_ (##cdr _e1819619101_)))
                                    (if (gx#stx-pair? _hd1819719104_)
                                        (let ((_e1819919109_
                                               (gx#stx-e _hd1819719104_)))
                                          (let ((_hd1820019112_
                                                 (##car _e1819919109_))
                                                (_tl1820119114_
                                                 (##cdr _e1819919109_)))
                                            (if (gx#identifier? _hd1820019112_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1820019112_)
                                                    (if (gx#stx-pair?
                                                         _tl1820119114_)
                                                        (let ((_e1820219117_
                                                               (gx#stx-e
                                                                _tl1820119114_)))
                                                          (let ((_hd1820319120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1820219117_))
                        (_tl1820419122_ (##cdr _e1820219117_)))
                    (if (gx#stx-pair? _hd1820319120_)
                        (let ((_e1820519125_ (gx#stx-e _hd1820319120_)))
                          (let ((_hd1820619128_ (##car _e1820519125_))
                                (_tl1820719130_ (##cdr _e1820519125_)))
                            (if (gx#identifier? _hd1820619128_)
                                (if (gx#stx-eq? '%#ref _hd1820619128_)
                                    (if (gx#stx-pair? _tl1820719130_)
                                        (let ((_e1820819133_
                                               (gx#stx-e _tl1820719130_)))
                                          (let ((_hd1820919136_
                                                 (##car _e1820819133_))
                                                (_tl1821019138_
                                                 (##cdr _e1820819133_)))
                                            (if (gx#stx-null? _tl1821019138_)
                                                (if (gx#stx-pair?
                                                     _tl1820419122_)
                                                    (let ((_e1821119141_
                                                           (gx#stx-e
                                                            _tl1820419122_)))
                                                      (let ((_hd1821219144_
                                                             (##car _e1821119141_))
                                                            (_tl1821319146_
                                                             (##cdr _e1821119141_)))
                                                        (if (gx#stx-pair?
                                                             _hd1821219144_)
                                                            (let ((_e1821419149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1821219144_)))
                      (let ((_hd1821519152_ (##car _e1821419149_))
                            (_tl1821619154_ (##cdr _e1821419149_)))
                        (if (gx#identifier? _hd1821519152_)
                            (if (gx#stx-eq? '%#ref _hd1821519152_)
                                (if (gx#stx-pair? _tl1821619154_)
                                    (let ((_e1821719157_
                                           (gx#stx-e _tl1821619154_)))
                                      (let ((_hd1821819160_
                                             (##car _e1821719157_))
                                            (_tl1821919162_
                                             (##cdr _e1821719157_)))
                                        (if (gx#stx-null? _tl1821919162_)
                                            (if (gx#stx-pair/null?
                                                 _tl1821319146_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1821319146_)
                                                          '0)
                                                    (let ((_g27441_
                                                           (gx#syntax-split-splice
                                                            _tl1821319146_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27442_
                                                               (values-count
                                                                _g27441_)))
                                                          (if (not (fx= _g27442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g27442_)))
                (let ((_target1822019165_ (values-ref _g27441_ 0))
                      (_tl1822219167_ (values-ref _g27441_ 1)))
                  (if (gx#stx-null? _tl1822219167_)
                      (letrec ((_loop1822319170_
                                (lambda (_hd1822119173_ _xarg1822719175_)
                                  (if (gx#stx-pair? _hd1822119173_)
                                      (let ((_e1822419178_
                                             (gx#stx-e _hd1822119173_)))
                                        (let ((_lp-hd1822519181_
                                               (##car _e1822419178_))
                                              (_lp-tl1822619183_
                                               (##cdr _e1822419178_)))
                                          (if (gx#stx-pair? _lp-hd1822519181_)
                                              (let ((_e1822919186_
                                                     (gx#stx-e
                                                      _lp-hd1822519181_)))
                                                (let ((_hd1823019189_
                                                       (##car _e1822919186_))
                                                      (_tl1823119191_
                                                       (##cdr _e1822919186_)))
                                                  (if (gx#identifier?
                                                       _hd1823019189_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1823019189_)
                                                          (if (gx#stx-pair?
                                                               _tl1823119191_)
                                                              (let ((_e1823219194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1823119191_)))
                        (let ((_hd1823319197_ (##car _e1823219194_))
                              (_tl1823419199_ (##cdr _e1823219194_)))
                          (if (gx#stx-null? _tl1823419199_)
                              (_loop1822319170_
                               _lp-tl1822619183_
                               (cons _hd1823319197_ _xarg1822719175_))
                              (_g1811819056_ _g1812319059_))))
                      (_g1811819056_ _g1812319059_))
                  (_g1811819056_ _g1812319059_))
              (_g1811819056_ _g1812319059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1811819056_ _g1812319059_))))
                                      (let ((_xarg1822819202_
                                             (reverse _xarg1822719175_)))
                                        (if (gx#stx-null? _tl1819819106_)
                                            ((lambda (_L19205_
                                                      _L19206_
                                                      _L19207_
                                                      _L19208_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1924519248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1924619250_)
                            (cons _g1924519248_ _g1924619250_))
                          '()
                          _L19208_)))
               (if (eq? (gxc#generate-runtime-binding-id _L19207_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1925219255_
                                                       _g1925319257_)
                                                (cons _g1925219255_
                                                      _g1925319257_))
                                              '()
                                              _L19208_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1925919262_
                                                       _g1926019264_)
                                                (cons _g1925919262_
                                                      _g1926019264_))
                                              '()
                                              _L19205_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1926619269_ _g1926719271_)
                                            (cons _g1926619269_ _g1926719271_))
                                          '()
                                          _L19208_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1927319276_ _g1927419278_)
                                            (cons _g1927319276_ _g1927419278_))
                                          '()
                                          _L19205_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19281_
                                                           (gxc#generate-runtime-binding-id
                                                            _L19206_))
                                                          (_type19283_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19281_)))
                                                     (if (##structure-instance-of?
                                                          _type19283_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19281_)
                                                         '#f))
                                                   (_g1811819056_
                                                    _g1812319059_)))
                                             _xarg1822819202_
                                             _hd1821819160_
                                             _hd1820919136_
                                             _arg1819519098_)
                                            (_g1811819056_ _g1812319059_)))))))
                        (_loop1822319170_ _target1822019165_ '()))
                      (_g1811819056_ _g1812319059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811819056_
                                                     _g1812319059_))
                                                (_g1811819056_ _g1812319059_))
                                            (_g1811819056_ _g1812319059_))))
                                    (_g1811819056_ _g1812319059_))
                                (_g1811819056_ _g1812319059_))
                            (_g1811819056_ _g1812319059_))))
                    (_g1811819056_ _g1812319059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811819056_
                                                     _g1812319059_))
                                                (_g1811819056_
                                                 _g1812319059_))))
                                        (_g1811819056_ _g1812319059_))
                                    (_g1811819056_ _g1812319059_))
                                (_g1811819056_ _g1812319059_))))
                        (_g1811819056_ _g1812319059_))))
                (_g1811819056_ _g1812319059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811819056_
                                                     _g1812319059_))
                                                (_g1811819056_
                                                 _g1812319059_))))
                                        (_g1811819056_ _g1812319059_))))
                                (_g1811819056_ _g1812319059_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1819019082_
                                                     _target1818719077_
                                                     '()))
                                                  (_g1811819056_
                                                   _g1812319059_)))))
                                        (_g1811819056_ _g1812319059_))
                                    (_g1811819056_ _g1812319059_))))
                            (_g1811819056_ _g1812319059_))))
                    (_g1811819056_ _g1812319059_))))
             (_g1811619471_
              (lambda (_g1812319289_)
                (if (gx#stx-pair? _g1812319289_)
                    (let ((_e1812919291_ (gx#stx-e _g1812319289_)))
                      (let ((_hd1813019294_ (##car _e1812919291_))
                            (_tl1813119296_ (##cdr _e1812919291_)))
                        (if (gx#stx-pair? _tl1813119296_)
                            (let ((_e1813219299_ (gx#stx-e _tl1813119296_)))
                              (let ((_hd1813319302_ (##car _e1813219299_))
                                    (_tl1813419304_ (##cdr _e1813219299_)))
                                (if (gx#stx-pair? _tl1813419304_)
                                    (let ((_e1813519307_
                                           (gx#stx-e _tl1813419304_)))
                                      (let ((_hd1813619310_
                                             (##car _e1813519307_))
                                            (_tl1813719312_
                                             (##cdr _e1813519307_)))
                                        (if (gx#stx-pair? _hd1813619310_)
                                            (let ((_e1813819315_
                                                   (gx#stx-e _hd1813619310_)))
                                              (let ((_hd1813919318_
                                                     (##car _e1813819315_))
                                                    (_tl1814019320_
                                                     (##cdr _e1813819315_)))
                                                (if (gx#identifier?
                                                     _hd1813919318_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1813919318_)
                                                        (if (gx#stx-pair?
                                                             _tl1814019320_)
                                                            (let ((_e1814119323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1814019320_)))
                      (let ((_hd1814219326_ (##car _e1814119323_))
                            (_tl1814319328_ (##cdr _e1814119323_)))
                        (if (gx#stx-pair? _hd1814219326_)
                            (let ((_e1814419331_ (gx#stx-e _hd1814219326_)))
                              (let ((_hd1814519334_ (##car _e1814419331_))
                                    (_tl1814619336_ (##cdr _e1814419331_)))
                                (if (gx#identifier? _hd1814519334_)
                                    (if (gx#stx-eq? '%#ref _hd1814519334_)
                                        (if (gx#stx-pair? _tl1814619336_)
                                            (let ((_e1814719339_
                                                   (gx#stx-e _tl1814619336_)))
                                              (let ((_hd1814819342_
                                                     (##car _e1814719339_))
                                                    (_tl1814919344_
                                                     (##cdr _e1814719339_)))
                                                (if (gx#stx-null?
                                                     _tl1814919344_)
                                                    (if (gx#stx-pair?
                                                         _tl1814319328_)
                                                        (let ((_e1815019347_
                                                               (gx#stx-e
                                                                _tl1814319328_)))
                                                          (let ((_hd1815119350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1815019347_))
                        (_tl1815219352_ (##cdr _e1815019347_)))
                    (if (gx#stx-pair? _hd1815119350_)
                        (let ((_e1815319355_ (gx#stx-e _hd1815119350_)))
                          (let ((_hd1815419358_ (##car _e1815319355_))
                                (_tl1815519360_ (##cdr _e1815319355_)))
                            (if (gx#identifier? _hd1815419358_)
                                (if (gx#stx-eq? '%#ref _hd1815419358_)
                                    (if (gx#stx-pair? _tl1815519360_)
                                        (let ((_e1815619363_
                                               (gx#stx-e _tl1815519360_)))
                                          (let ((_hd1815719366_
                                                 (##car _e1815619363_))
                                                (_tl1815819368_
                                                 (##cdr _e1815619363_)))
                                            (if (gx#stx-null? _tl1815819368_)
                                                (if (gx#stx-pair?
                                                     _tl1815219352_)
                                                    (let ((_e1815919371_
                                                           (gx#stx-e
                                                            _tl1815219352_)))
                                                      (let ((_hd1816019374_
                                                             (##car _e1815919371_))
                                                            (_tl1816119376_
                                                             (##cdr _e1815919371_)))
                                                        (if (gx#stx-pair?
                                                             _hd1816019374_)
                                                            (let ((_e1816219379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1816019374_)))
                      (let ((_hd1816319382_ (##car _e1816219379_))
                            (_tl1816419384_ (##cdr _e1816219379_)))
                        (if (gx#identifier? _hd1816319382_)
                            (if (gx#stx-eq? '%#ref _hd1816319382_)
                                (if (gx#stx-pair? _tl1816419384_)
                                    (let ((_e1816519387_
                                           (gx#stx-e _tl1816419384_)))
                                      (let ((_hd1816619390_
                                             (##car _e1816519387_))
                                            (_tl1816719392_
                                             (##cdr _e1816519387_)))
                                        (if (gx#stx-null? _tl1816719392_)
                                            (if (gx#stx-pair? _tl1816119376_)
                                                (let ((_e1816819395_
                                                       (gx#stx-e
                                                        _tl1816119376_)))
                                                  (let ((_hd1816919398_
                                                         (##car _e1816819395_))
                                                        (_tl1817019400_
                                                         (##cdr _e1816819395_)))
                                                    (if (gx#stx-pair?
                                                         _hd1816919398_)
                                                        (let ((_e1817119403_
                                                               (gx#stx-e
                                                                _hd1816919398_)))
                                                          (let ((_hd1817219406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1817119403_))
                        (_tl1817319408_ (##cdr _e1817119403_)))
                    (if (gx#identifier? _hd1817219406_)
                        (if (gx#stx-eq? '%#ref _hd1817219406_)
                            (if (gx#stx-pair? _tl1817319408_)
                                (let ((_e1817419411_
                                       (gx#stx-e _tl1817319408_)))
                                  (let ((_hd1817519414_ (##car _e1817419411_))
                                        (_tl1817619416_ (##cdr _e1817419411_)))
                                    (if (gx#stx-null? _tl1817619416_)
                                        (if (gx#stx-null? _tl1817019400_)
                                            (if (gx#stx-null? _tl1813719312_)
                                                ((lambda (_L19419_
                                                          _L19420_
                                                          _L19421_
                                                          _L19422_
                                                          _L19423_)
                                                   (if (if (gx#identifier?
                                                            _L19423_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19422_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L19421_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L19423_ _L19419_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19466_
                       (gxc#generate-runtime-binding-id _L19420_))
                      (_type19468_ (gxc#optimizer-resolve-type _type-t19466_)))
                 (if (##structure-instance-of?
                      _type19468_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19466_)
                     '#f))
               (_g1811719286_ _g1812319289_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1817519414_
                                                 _hd1816619390_
                                                 _hd1815719366_
                                                 _hd1814819342_
                                                 _hd1813319302_)
                                                (_g1811719286_ _g1812319289_))
                                            (_g1811719286_ _g1812319289_))
                                        (_g1811719286_ _g1812319289_))))
                                (_g1811719286_ _g1812319289_))
                            (_g1811719286_ _g1812319289_))
                        (_g1811719286_ _g1812319289_))))
                (_g1811719286_ _g1812319289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1811719286_ _g1812319289_))
                                            (_g1811719286_ _g1812319289_))))
                                    (_g1811719286_ _g1812319289_))
                                (_g1811719286_ _g1812319289_))
                            (_g1811719286_ _g1812319289_))))
                    (_g1811719286_ _g1812319289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811719286_
                                                     _g1812319289_))
                                                (_g1811719286_
                                                 _g1812319289_))))
                                        (_g1811719286_ _g1812319289_))
                                    (_g1811719286_ _g1812319289_))
                                (_g1811719286_ _g1812319289_))))
                        (_g1811719286_ _g1812319289_))))
                (_g1811719286_ _g1812319289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811719286_
                                                     _g1812319289_))))
                                            (_g1811719286_ _g1812319289_))
                                        (_g1811719286_ _g1812319289_))
                                    (_g1811719286_ _g1812319289_))))
                            (_g1811719286_ _g1812319289_))))
                    (_g1811719286_ _g1812319289_))
                (_g1811719286_ _g1812319289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811719286_
                                                     _g1812319289_))))
                                            (_g1811719286_ _g1812319289_))))
                                    (_g1811719286_ _g1812319289_))))
                            (_g1811719286_ _g1812319289_))))
                    (_g1811719286_ _g1812319289_)))))
        (_g1811619471_ _stx18115_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18061_)
      (letrec ((_clause-e18063_
                (lambda (_form18113_)
                  (let ((__obj27368 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27368
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18113_)
                       (gxc#dispatch-lambda-form-delegate _form18113_))
                      __obj27368)))))
        (let* ((_g1806618076_
                (lambda (_g1806718073_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1806718073_)))
               (_g1806518083_ (lambda (_g1806718079_) ((lambda () '#f))))
               (_g1806418110_
                (lambda (_g1806718086_)
                  (if (gx#stx-pair? _g1806718086_)
                      (let ((_e1806918088_ (gx#stx-e _g1806718086_)))
                        (let ((_hd1807018091_ (##car _e1806918088_))
                              (_tl1807118093_ (##cdr _e1806918088_)))
                          ((lambda (_L18096_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18096_)
                                 (let ((_clauses18108_
                                        (map _clause-e18063_ _L18096_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18108_))
                                 (_g1806518083_ _g1806718086_)))
                           _tl1807118093_)))
                      (_g1806518083_ _g1806718086_)))))
          (_g1806418110_ _stx18061_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx17966_)
      (let* ((_g1796917989_
              (lambda (_g1797017986_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1797017986_)))
             (_g1796817996_ (lambda (_g1797017992_) ((lambda () '#f))))
             (_g1796718058_
              (lambda (_g1797017999_)
                (if (gx#stx-pair? _g1797017999_)
                    (let ((_e1797318001_ (gx#stx-e _g1797017999_)))
                      (let ((_hd1797418004_ (##car _e1797318001_))
                            (_tl1797518006_ (##cdr _e1797318001_)))
                        (if (gx#stx-pair? _tl1797518006_)
                            (let ((_e1797618009_ (gx#stx-e _tl1797518006_)))
                              (let ((_hd1797718012_ (##car _e1797618009_))
                                    (_tl1797818014_ (##cdr _e1797618009_)))
                                (if (gx#stx-pair? _hd1797718012_)
                                    (let ((_e1797918017_
                                           (gx#stx-e _hd1797718012_)))
                                      (let ((_hd1798018020_
                                             (##car _e1797918017_))
                                            (_tl1798118022_
                                             (##cdr _e1797918017_)))
                                        (if (gx#identifier? _hd1798018020_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1798018020_)
                                                (if (gx#stx-pair?
                                                     _tl1798118022_)
                                                    (let ((_e1798218025_
                                                           (gx#stx-e
                                                            _tl1798118022_)))
                                                      (let ((_hd1798318028_
                                                             (##car _e1798218025_))
                                                            (_tl1798418030_
                                                             (##cdr _e1798218025_)))
                                                        (if (gx#stx-null?
                                                             _tl1798418030_)
                                                            ((lambda (_L18033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18034_)
                       (let ((_type-e1805118053_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L18034_)
                               '#f)))
                         (if _type-e1805118053_
                             (let ((_type-e18056_ _type-e1805118053_))
                               (_type-e18056_ _stx17966_ _L18033_))
                             '#f)))
                     _tl1797818014_
                     _hd1798318028_)
                    (_g1796817996_ _g1797017999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1796817996_
                                                     _g1797017999_))
                                                (_g1796817996_ _g1797017999_))
                                            (_g1796817996_ _g1797017999_))))
                                    (_g1796817996_ _g1797017999_))))
                            (_g1796817996_ _g1797017999_))))
                    (_g1796817996_ _g1797017999_)))))
        (_g1796718058_ _stx17966_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17451_ _args17452_)
      (let* ((_g1745617569_
              (lambda (_g1745717566_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1745717566_)))
             (_g1745517576_
              (lambda (_g1745717572_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17451_))
                     '#f)))))
             (_g1745417783_
              (lambda (_g1745717579_)
                (if (gx#stx-pair? _g1745717579_)
                    (let ((_e1751717581_ (gx#stx-e _g1745717579_)))
                      (let ((_hd1751817584_ (##car _e1751717581_))
                            (_tl1751917586_ (##cdr _e1751717581_)))
                        (if (gx#stx-pair? _hd1751817584_)
                            (let ((_e1752017589_ (gx#stx-e _hd1751817584_)))
                              (let ((_hd1752117592_ (##car _e1752017589_))
                                    (_tl1752217594_ (##cdr _e1752017589_)))
                                (if (gx#identifier? _hd1752117592_)
                                    (if (gx#stx-eq? '%#quote _hd1752117592_)
                                        (if (gx#stx-pair? _tl1752217594_)
                                            (let ((_e1752317597_
                                                   (gx#stx-e _tl1752217594_)))
                                              (let ((_hd1752417600_
                                                     (##car _e1752317597_))
                                                    (_tl1752517602_
                                                     (##cdr _e1752317597_)))
                                                (if (gx#stx-null?
                                                     _tl1752517602_)
                                                    (if (gx#stx-pair?
                                                         _tl1751917586_)
                                                        (let ((_e1752617605_
                                                               (gx#stx-e
                                                                _tl1751917586_)))
                                                          (let ((_hd1752717608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1752617605_))
                        (_tl1752817610_ (##cdr _e1752617605_)))
                    (if (gx#stx-pair? _hd1752717608_)
                        (let ((_e1752917613_ (gx#stx-e _hd1752717608_)))
                          (let ((_hd1753017616_ (##car _e1752917613_))
                                (_tl1753117618_ (##cdr _e1752917613_)))
                            (if (gx#identifier? _hd1753017616_)
                                (if (gx#stx-eq? '%#ref _hd1753017616_)
                                    (if (gx#stx-pair? _tl1753117618_)
                                        (let ((_e1753217621_
                                               (gx#stx-e _tl1753117618_)))
                                          (let ((_hd1753317624_
                                                 (##car _e1753217621_))
                                                (_tl1753417626_
                                                 (##cdr _e1753217621_)))
                                            (if (gx#stx-null? _tl1753417626_)
                                                (if (gx#stx-pair?
                                                     _tl1752817610_)
                                                    (let ((_e1753517629_
                                                           (gx#stx-e
                                                            _tl1752817610_)))
                                                      (let ((_hd1753617632_
                                                             (##car _e1753517629_))
                                                            (_tl1753717634_
                                                             (##cdr _e1753517629_)))
                                                        (if (gx#stx-pair?
                                                             _hd1753617632_)
                                                            (let ((_e1753817637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1753617632_)))
                      (let ((_hd1753917640_ (##car _e1753817637_))
                            (_tl1754017642_ (##cdr _e1753817637_)))
                        (if (gx#identifier? _hd1753917640_)
                            (if (gx#stx-eq? '%#quote _hd1753917640_)
                                (if (gx#stx-pair? _tl1754017642_)
                                    (let ((_e1754117645_
                                           (gx#stx-e _tl1754017642_)))
                                      (let ((_hd1754217648_
                                             (##car _e1754117645_))
                                            (_tl1754317650_
                                             (##cdr _e1754117645_)))
                                        (if (gx#stx-null? _tl1754317650_)
                                            (if (gx#stx-pair? _tl1753717634_)
                                                (let ((_e1754417653_
                                                       (gx#stx-e
                                                        _tl1753717634_)))
                                                  (let ((_hd1754517656_
                                                         (##car _e1754417653_))
                                                        (_tl1754617658_
                                                         (##cdr _e1754417653_)))
                                                    (if (gx#stx-pair?
                                                         _tl1754617658_)
                                                        (let ((_e1754717661_
                                                               (gx#stx-e
                                                                _tl1754617658_)))
                                                          (let ((_hd1754817664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1754717661_))
                        (_tl1754917666_ (##cdr _e1754717661_)))
                    (if (gx#stx-pair? _hd1754817664_)
                        (let ((_e1755017669_ (gx#stx-e _hd1754817664_)))
                          (let ((_hd1755117672_ (##car _e1755017669_))
                                (_tl1755217674_ (##cdr _e1755017669_)))
                            (if (gx#identifier? _hd1755117672_)
                                (if (gx#stx-eq? '%#quote _hd1755117672_)
                                    (if (gx#stx-pair? _tl1755217674_)
                                        (let ((_e1755317677_
                                               (gx#stx-e _tl1755217674_)))
                                          (let ((_hd1755417680_
                                                 (##car _e1755317677_))
                                                (_tl1755517682_
                                                 (##cdr _e1755317677_)))
                                            (if (gx#stx-null? _tl1755517682_)
                                                (if (gx#stx-pair?
                                                     _tl1754917666_)
                                                    (let ((_e1755617685_
                                                           (gx#stx-e
                                                            _tl1754917666_)))
                                                      (let ((_hd1755717688_
                                                             (##car _e1755617685_))
                                                            (_tl1755817690_
                                                             (##cdr _e1755617685_)))
                                                        (if (gx#stx-pair?
                                                             _hd1755717688_)
                                                            (let ((_e1755917693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1755717688_)))
                      (let ((_hd1756017696_ (##car _e1755917693_))
                            (_tl1756117698_ (##cdr _e1755917693_)))
                        (if (gx#identifier? _hd1756017696_)
                            (if (gx#stx-eq? '%#quote _hd1756017696_)
                                (if (gx#stx-pair? _tl1756117698_)
                                    (let ((_e1756217701_
                                           (gx#stx-e _tl1756117698_)))
                                      (let ((_hd1756317704_
                                             (##car _e1756217701_))
                                            (_tl1756417706_
                                             (##cdr _e1756217701_)))
                                        (if (gx#stx-null? _tl1756417706_)
                                            ((lambda (_L17709_
                                                      _L17710_
                                                      _L17711_
                                                      _L17712_
                                                      _L17713_
                                                      _L17714_)
                                               (let* ((_super-t17760_
                                                       (if (gx#stx-e _L17713_)
                                                           (gxc#generate-runtime-binding-id
                                                            _L17713_)
                                                           '#f))
                                                      (_super-type17762_
                                                       (if _super-t17760_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t17760_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type17762_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type17762_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17451_
                _L17713_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields17778_
                                                          (gx#stx-e _L17712_))
                                                         (_xfields17779_
                                                          (if _super-type17762_
                                                              (let ((_super-fields1776417767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type17762_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1776517769_
                             (##structure-ref
                              _super-type17762_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1776417767_
                            (if _super-xfields1776517769_
                                (let ((_super-fields17772_
                                       _super-fields1776417767_)
                                      (_super-xfields17773_
                                       _super-xfields1776517769_))
                                  (fx+ _super-fields17772_
                                       _super-xfields17773_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist17780_ (gx#stx-e _L17710_))
                 (_ctor17781_
                  (let ((_$e17775_ (gx#stx-e _L17709_)))
                    (if _$e17775_
                        (values _$e17775_)
                        (if _super-type17762_
                            (##structure-ref
                             _super-type17762_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t17760_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27369
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27369
                                                          (gx#stx-e _L17714_)
                                                          _super-t17760_
                                                          _fields17778_
                                                          _xfields17779_
                                                          _ctor17781_
                                                          _plist17780_)
                                                         __obj27369))))))
                                             _hd1756317704_
                                             _hd1755417680_
                                             _hd1754517656_
                                             _hd1754217648_
                                             _hd1753317624_
                                             _hd1752417600_)
                                            (_g1745517576_ _g1745717579_))))
                                    (_g1745517576_ _g1745717579_))
                                (_g1745517576_ _g1745717579_))
                            (_g1745517576_ _g1745717579_))))
                    (_g1745517576_ _g1745717579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745517576_
                                                     _g1745717579_))
                                                (_g1745517576_
                                                 _g1745717579_))))
                                        (_g1745517576_ _g1745717579_))
                                    (_g1745517576_ _g1745717579_))
                                (_g1745517576_ _g1745717579_))))
                        (_g1745517576_ _g1745717579_))))
                (_g1745517576_ _g1745717579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1745517576_ _g1745717579_))
                                            (_g1745517576_ _g1745717579_))))
                                    (_g1745517576_ _g1745717579_))
                                (_g1745517576_ _g1745717579_))
                            (_g1745517576_ _g1745717579_))))
                    (_g1745517576_ _g1745717579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745517576_
                                                     _g1745717579_))
                                                (_g1745517576_
                                                 _g1745717579_))))
                                        (_g1745517576_ _g1745717579_))
                                    (_g1745517576_ _g1745717579_))
                                (_g1745517576_ _g1745717579_))))
                        (_g1745517576_ _g1745717579_))))
                (_g1745517576_ _g1745717579_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745517576_
                                                     _g1745717579_))))
                                            (_g1745517576_ _g1745717579_))
                                        (_g1745517576_ _g1745717579_))
                                    (_g1745517576_ _g1745717579_))))
                            (_g1745517576_ _g1745717579_))))
                    (_g1745517576_ _g1745717579_))))
             (_g1745317963_
              (lambda (_g1745717786_)
                (if (gx#stx-pair? _g1745717786_)
                    (let ((_e1746317788_ (gx#stx-e _g1745717786_)))
                      (let ((_hd1746417791_ (##car _e1746317788_))
                            (_tl1746517793_ (##cdr _e1746317788_)))
                        (if (gx#stx-pair? _hd1746417791_)
                            (let ((_e1746617796_ (gx#stx-e _hd1746417791_)))
                              (let ((_hd1746717799_ (##car _e1746617796_))
                                    (_tl1746817801_ (##cdr _e1746617796_)))
                                (if (gx#identifier? _hd1746717799_)
                                    (if (gx#stx-eq? '%#quote _hd1746717799_)
                                        (if (gx#stx-pair? _tl1746817801_)
                                            (let ((_e1746917804_
                                                   (gx#stx-e _tl1746817801_)))
                                              (let ((_hd1747017807_
                                                     (##car _e1746917804_))
                                                    (_tl1747117809_
                                                     (##cdr _e1746917804_)))
                                                (if (gx#stx-null?
                                                     _tl1747117809_)
                                                    (if (gx#stx-pair?
                                                         _tl1746517793_)
                                                        (let ((_e1747217812_
                                                               (gx#stx-e
                                                                _tl1746517793_)))
                                                          (let ((_hd1747317815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1747217812_))
                        (_tl1747417817_ (##cdr _e1747217812_)))
                    (if (gx#stx-pair? _hd1747317815_)
                        (let ((_e1747517820_ (gx#stx-e _hd1747317815_)))
                          (let ((_hd1747617823_ (##car _e1747517820_))
                                (_tl1747717825_ (##cdr _e1747517820_)))
                            (if (gx#identifier? _hd1747617823_)
                                (if (gx#stx-eq? '%#quote _hd1747617823_)
                                    (if (gx#stx-pair? _tl1747717825_)
                                        (let ((_e1747817828_
                                               (gx#stx-e _tl1747717825_)))
                                          (let ((_hd1747917831_
                                                 (##car _e1747817828_))
                                                (_tl1748017833_
                                                 (##cdr _e1747817828_)))
                                            (if (gx#stx-datum? _hd1747917831_)
                                                (if (equal? (gx#stx-e
                                                             _hd1747917831_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1748017833_)
                                                        (if (gx#stx-pair?
                                                             _tl1747417817_)
                                                            (let ((_e1748117836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1747417817_)))
                      (let ((_hd1748217839_ (##car _e1748117836_))
                            (_tl1748317841_ (##cdr _e1748117836_)))
                        (if (gx#stx-pair? _hd1748217839_)
                            (let ((_e1748417844_ (gx#stx-e _hd1748217839_)))
                              (let ((_hd1748517847_ (##car _e1748417844_))
                                    (_tl1748617849_ (##cdr _e1748417844_)))
                                (if (gx#identifier? _hd1748517847_)
                                    (if (gx#stx-eq? '%#quote _hd1748517847_)
                                        (if (gx#stx-pair? _tl1748617849_)
                                            (let ((_e1748717852_
                                                   (gx#stx-e _tl1748617849_)))
                                              (let ((_hd1748817855_
                                                     (##car _e1748717852_))
                                                    (_tl1748917857_
                                                     (##cdr _e1748717852_)))
                                                (if (gx#stx-null?
                                                     _tl1748917857_)
                                                    (if (gx#stx-pair?
                                                         _tl1748317841_)
                                                        (let ((_e1749017860_
                                                               (gx#stx-e
                                                                _tl1748317841_)))
                                                          (let ((_hd1749117863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1749017860_))
                        (_tl1749217865_ (##cdr _e1749017860_)))
                    (if (gx#stx-pair? _tl1749217865_)
                        (let ((_e1749317868_ (gx#stx-e _tl1749217865_)))
                          (let ((_hd1749417871_ (##car _e1749317868_))
                                (_tl1749517873_ (##cdr _e1749317868_)))
                            (if (gx#stx-pair? _hd1749417871_)
                                (let ((_e1749617876_
                                       (gx#stx-e _hd1749417871_)))
                                  (let ((_hd1749717879_ (##car _e1749617876_))
                                        (_tl1749817881_ (##cdr _e1749617876_)))
                                    (if (gx#identifier? _hd1749717879_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1749717879_)
                                            (if (gx#stx-pair? _tl1749817881_)
                                                (let ((_e1749917884_
                                                       (gx#stx-e
                                                        _tl1749817881_)))
                                                  (let ((_hd1750017887_
                                                         (##car _e1749917884_))
                                                        (_tl1750117889_
                                                         (##cdr _e1749917884_)))
                                                    (if (gx#stx-null?
                                                         _tl1750117889_)
                                                        (if (gx#stx-pair?
                                                             _tl1749517873_)
                                                            (let ((_e1750217892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1749517873_)))
                      (let ((_hd1750317895_ (##car _e1750217892_))
                            (_tl1750417897_ (##cdr _e1750217892_)))
                        (if (gx#stx-pair? _hd1750317895_)
                            (let ((_e1750517900_ (gx#stx-e _hd1750317895_)))
                              (let ((_hd1750617903_ (##car _e1750517900_))
                                    (_tl1750717905_ (##cdr _e1750517900_)))
                                (if (gx#identifier? _hd1750617903_)
                                    (if (gx#stx-eq? '%#quote _hd1750617903_)
                                        (if (gx#stx-pair? _tl1750717905_)
                                            (let ((_e1750817908_
                                                   (gx#stx-e _tl1750717905_)))
                                              (let ((_hd1750917911_
                                                     (##car _e1750817908_))
                                                    (_tl1751017913_
                                                     (##cdr _e1750817908_)))
                                                (if (gx#stx-null?
                                                     _tl1751017913_)
                                                    ((lambda (_L17916_
                                                              _L17917_
                                                              _L17918_
                                                              _L17919_
                                                              _L17920_)
                                                       (let ((__obj27370
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27370
                                                            (gx#stx-e _L17920_)
                                                            '#f
                                                            (gx#stx-e _L17919_)
                                                            '0
                                                            (gx#stx-e _L17916_)
                                                            (gx#stx-e
                                                             _L17917_))
                                                           __obj27370)))
                                                     _hd1750917911_
                                                     _hd1750017887_
                                                     _hd1749117863_
                                                     _hd1748817855_
                                                     _hd1747017807_)
                                                    (_g1745417783_
                                                     _g1745717786_))))
                                            (_g1745417783_ _g1745717786_))
                                        (_g1745417783_ _g1745717786_))
                                    (_g1745417783_ _g1745717786_))))
                            (_g1745417783_ _g1745717786_))))
                    (_g1745417783_ _g1745717786_))
                (_g1745417783_ _g1745717786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1745417783_ _g1745717786_))
                                            (_g1745417783_ _g1745717786_))
                                        (_g1745417783_ _g1745717786_))))
                                (_g1745417783_ _g1745717786_))))
                        (_g1745417783_ _g1745717786_))))
                (_g1745417783_ _g1745717786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745417783_
                                                     _g1745717786_))))
                                            (_g1745417783_ _g1745717786_))
                                        (_g1745417783_ _g1745717786_))
                                    (_g1745417783_ _g1745717786_))))
                            (_g1745417783_ _g1745717786_))))
                    (_g1745417783_ _g1745717786_))
                (_g1745417783_ _g1745717786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745417783_
                                                     _g1745717786_))
                                                (_g1745417783_
                                                 _g1745717786_))))
                                        (_g1745417783_ _g1745717786_))
                                    (_g1745417783_ _g1745717786_))
                                (_g1745417783_ _g1745717786_))))
                        (_g1745417783_ _g1745717786_))))
                (_g1745417783_ _g1745717786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745417783_
                                                     _g1745717786_))))
                                            (_g1745417783_ _g1745717786_))
                                        (_g1745417783_ _g1745717786_))
                                    (_g1745417783_ _g1745717786_))))
                            (_g1745417783_ _g1745717786_))))
                    (_g1745417783_ _g1745717786_)))))
        (_g1745317963_ _args17452_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17377_ _args17378_)
      (let* ((_g1738117397_
              (lambda (_g1738217394_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1738217394_)))
             (_g1738017404_ (lambda (_g1738217400_) ((lambda () '#f))))
             (_g1737917448_
              (lambda (_g1738217407_)
                (if (gx#stx-pair? _g1738217407_)
                    (let ((_e1738417409_ (gx#stx-e _g1738217407_)))
                      (let ((_hd1738517412_ (##car _e1738417409_))
                            (_tl1738617414_ (##cdr _e1738417409_)))
                        (if (gx#stx-pair? _hd1738517412_)
                            (let ((_e1738717417_ (gx#stx-e _hd1738517412_)))
                              (let ((_hd1738817420_ (##car _e1738717417_))
                                    (_tl1738917422_ (##cdr _e1738717417_)))
                                (if (gx#identifier? _hd1738817420_)
                                    (if (gx#stx-eq? '%#ref _hd1738817420_)
                                        (if (gx#stx-pair? _tl1738917422_)
                                            (let ((_e1739017425_
                                                   (gx#stx-e _tl1738917422_)))
                                              (let ((_hd1739117428_
                                                     (##car _e1739017425_))
                                                    (_tl1739217430_
                                                     (##cdr _e1739017425_)))
                                                (if (gx#stx-null?
                                                     _tl1739217430_)
                                                    (if (gx#stx-null?
                                                         _tl1738617414_)
                                                        ((lambda (_L17433_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L17433_)))
                                                         _hd1739117428_)
                                                        (_g1738017404_
                                                         _g1738217407_))
                                                    (_g1738017404_
                                                     _g1738217407_))))
                                            (_g1738017404_ _g1738217407_))
                                        (_g1738017404_ _g1738217407_))
                                    (_g1738017404_ _g1738217407_))))
                            (_g1738017404_ _g1738217407_))))
                    (_g1738017404_ _g1738217407_)))))
        (_g1737917448_ _args17378_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17248_ _args17249_ _unchecked?17250_)
        (let* ((_g1725317279_
                (lambda (_g1725417276_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1725417276_)))
               (_g1725217286_ (lambda (_g1725417282_) ((lambda () '#f))))
               (_g1725117362_
                (lambda (_g1725417289_)
                  (if (gx#stx-pair? _g1725417289_)
                      (let ((_e1725717291_ (gx#stx-e _g1725417289_)))
                        (let ((_hd1725817294_ (##car _e1725717291_))
                              (_tl1725917296_ (##cdr _e1725717291_)))
                          (if (gx#stx-pair? _hd1725817294_)
                              (let ((_e1726017299_ (gx#stx-e _hd1725817294_)))
                                (let ((_hd1726117302_ (##car _e1726017299_))
                                      (_tl1726217304_ (##cdr _e1726017299_)))
                                  (if (gx#identifier? _hd1726117302_)
                                      (if (gx#stx-eq? '%#ref _hd1726117302_)
                                          (if (gx#stx-pair? _tl1726217304_)
                                              (let ((_e1726317307_
                                                     (gx#stx-e
                                                      _tl1726217304_)))
                                                (let ((_hd1726417310_
                                                       (##car _e1726317307_))
                                                      (_tl1726517312_
                                                       (##cdr _e1726317307_)))
                                                  (if (gx#stx-null?
                                                       _tl1726517312_)
                                                      (if (gx#stx-pair?
                                                           _tl1725917296_)
                                                          (let ((_e1726617315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1725917296_)))
                    (let ((_hd1726717318_ (##car _e1726617315_))
                          (_tl1726817320_ (##cdr _e1726617315_)))
                      (if (gx#stx-pair? _hd1726717318_)
                          (let ((_e1726917323_ (gx#stx-e _hd1726717318_)))
                            (let ((_hd1727017326_ (##car _e1726917323_))
                                  (_tl1727117328_ (##cdr _e1726917323_)))
                              (if (gx#identifier? _hd1727017326_)
                                  (if (gx#stx-eq? '%#quote _hd1727017326_)
                                      (if (gx#stx-pair? _tl1727117328_)
                                          (let ((_e1727217331_
                                                 (gx#stx-e _tl1727117328_)))
                                            (let ((_hd1727317334_
                                                   (##car _e1727217331_))
                                                  (_tl1727417336_
                                                   (##cdr _e1727217331_)))
                                              (if (gx#stx-null? _tl1727417336_)
                                                  (if (gx#stx-null?
                                                       _tl1726817320_)
                                                      ((lambda (_L17339_
                                                                _L17340_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17340_)
                                                          (gx#stx-e _L17339_)
                                                          _unchecked?17250_))
                                                       _hd1727317334_
                                                       _hd1726417310_)
                                                      (_g1725217286_
                                                       _g1725417289_))
                                                  (_g1725217286_
                                                   _g1725417289_))))
                                          (_g1725217286_ _g1725417289_))
                                      (_g1725217286_ _g1725417289_))
                                  (_g1725217286_ _g1725417289_))))
                          (_g1725217286_ _g1725417289_))))
                  (_g1725217286_ _g1725417289_))
              (_g1725217286_ _g1725417289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1725217286_ _g1725417289_))
                                          (_g1725217286_ _g1725417289_))
                                      (_g1725217286_ _g1725417289_))))
                              (_g1725217286_ _g1725417289_))))
                      (_g1725217286_ _g1725417289_)))))
          (_g1725117362_ _args17249_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17368_ _args17369_)
          (let ((_unchecked?17371_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17368_
             _args17369_
             _unchecked?17371_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27444_
          (let ((_g27443_ (length _g27444_)))
            (cond ((fx= _g27443_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27444_))
                  ((fx= _g27443_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27444_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27444_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17118_ _args17119_ _unchecked?17120_)
        (let* ((_g1712317149_
                (lambda (_g1712417146_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1712417146_)))
               (_g1712217156_ (lambda (_g1712417152_) ((lambda () '#f))))
               (_g1712117232_
                (lambda (_g1712417159_)
                  (if (gx#stx-pair? _g1712417159_)
                      (let ((_e1712717161_ (gx#stx-e _g1712417159_)))
                        (let ((_hd1712817164_ (##car _e1712717161_))
                              (_tl1712917166_ (##cdr _e1712717161_)))
                          (if (gx#stx-pair? _hd1712817164_)
                              (let ((_e1713017169_ (gx#stx-e _hd1712817164_)))
                                (let ((_hd1713117172_ (##car _e1713017169_))
                                      (_tl1713217174_ (##cdr _e1713017169_)))
                                  (if (gx#identifier? _hd1713117172_)
                                      (if (gx#stx-eq? '%#ref _hd1713117172_)
                                          (if (gx#stx-pair? _tl1713217174_)
                                              (let ((_e1713317177_
                                                     (gx#stx-e
                                                      _tl1713217174_)))
                                                (let ((_hd1713417180_
                                                       (##car _e1713317177_))
                                                      (_tl1713517182_
                                                       (##cdr _e1713317177_)))
                                                  (if (gx#stx-null?
                                                       _tl1713517182_)
                                                      (if (gx#stx-pair?
                                                           _tl1712917166_)
                                                          (let ((_e1713617185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1712917166_)))
                    (let ((_hd1713717188_ (##car _e1713617185_))
                          (_tl1713817190_ (##cdr _e1713617185_)))
                      (if (gx#stx-pair? _hd1713717188_)
                          (let ((_e1713917193_ (gx#stx-e _hd1713717188_)))
                            (let ((_hd1714017196_ (##car _e1713917193_))
                                  (_tl1714117198_ (##cdr _e1713917193_)))
                              (if (gx#identifier? _hd1714017196_)
                                  (if (gx#stx-eq? '%#quote _hd1714017196_)
                                      (if (gx#stx-pair? _tl1714117198_)
                                          (let ((_e1714217201_
                                                 (gx#stx-e _tl1714117198_)))
                                            (let ((_hd1714317204_
                                                   (##car _e1714217201_))
                                                  (_tl1714417206_
                                                   (##cdr _e1714217201_)))
                                              (if (gx#stx-null? _tl1714417206_)
                                                  (if (gx#stx-null?
                                                       _tl1713817190_)
                                                      ((lambda (_L17209_
                                                                _L17210_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17210_)
                                                          (gx#stx-e _L17209_)
                                                          _unchecked?17120_))
                                                       _hd1714317204_
                                                       _hd1713417180_)
                                                      (_g1712217156_
                                                       _g1712417159_))
                                                  (_g1712217156_
                                                   _g1712417159_))))
                                          (_g1712217156_ _g1712417159_))
                                      (_g1712217156_ _g1712417159_))
                                  (_g1712217156_ _g1712417159_))))
                          (_g1712217156_ _g1712417159_))))
                  (_g1712217156_ _g1712417159_))
              (_g1712217156_ _g1712417159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1712217156_ _g1712417159_))
                                          (_g1712217156_ _g1712417159_))
                                      (_g1712217156_ _g1712417159_))))
                              (_g1712217156_ _g1712417159_))))
                      (_g1712217156_ _g1712417159_)))))
          (_g1712117232_ _args17119_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17238_ _args17239_)
          (let ((_unchecked?17241_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17238_
             _args17239_
             _unchecked?17241_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27446_
          (let ((_g27445_ (length _g27446_)))
            (cond ((fx= _g27445_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27446_))
                  ((fx= _g27445_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27446_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27446_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17114_ _args17115_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17114_
       _args17115_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17111_ _args17112_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17111_
       _args17112_
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
    (lambda (_stx17060_)
      (let* ((_g1706217075_
              (lambda (_g1706317072_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1706317072_)))
             (_g1706117108_
              (lambda (_g1706317078_)
                (if (gx#stx-pair? _g1706317078_)
                    (let ((_e1706517080_ (gx#stx-e _g1706317078_)))
                      (let ((_hd1706617083_ (##car _e1706517080_))
                            (_tl1706717085_ (##cdr _e1706517080_)))
                        (if (gx#stx-pair? _tl1706717085_)
                            (let ((_e1706817088_ (gx#stx-e _tl1706717085_)))
                              (let ((_hd1706917091_ (##car _e1706817088_))
                                    (_tl1707017093_ (##cdr _e1706817088_)))
                                (if (gx#stx-null? _tl1707017093_)
                                    ((lambda (_L17096_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L17096_)))
                                     _hd1706917091_)
                                    (_g1706217075_ _g1706317078_))))
                            (_g1706217075_ _g1706317078_))))
                    (_g1706217075_ _g1706317078_)))))
        (_g1706117108_ _stx17060_))))
  (define gxc#optimize-call%
    (lambda (_stx16966_)
      (let* ((_g1696916989_
              (lambda (_g1697016986_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1697016986_)))
             (_g1696816996_
              (lambda (_g1697016992_)
                ((lambda () (gxc#xform-call% _stx16966_)))))
             (_g1696717057_
              (lambda (_g1697016999_)
                (if (gx#stx-pair? _g1697016999_)
                    (let ((_e1697317001_ (gx#stx-e _g1697016999_)))
                      (let ((_hd1697417004_ (##car _e1697317001_))
                            (_tl1697517006_ (##cdr _e1697317001_)))
                        (if (gx#stx-pair? _tl1697517006_)
                            (let ((_e1697617009_ (gx#stx-e _tl1697517006_)))
                              (let ((_hd1697717012_ (##car _e1697617009_))
                                    (_tl1697817014_ (##cdr _e1697617009_)))
                                (if (gx#stx-pair? _hd1697717012_)
                                    (let ((_e1697917017_
                                           (gx#stx-e _hd1697717012_)))
                                      (let ((_hd1698017020_
                                             (##car _e1697917017_))
                                            (_tl1698117022_
                                             (##cdr _e1697917017_)))
                                        (if (gx#identifier? _hd1698017020_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1698017020_)
                                                (if (gx#stx-pair?
                                                     _tl1698117022_)
                                                    (let ((_e1698217025_
                                                           (gx#stx-e
                                                            _tl1698117022_)))
                                                      (let ((_hd1698317028_
                                                             (##car _e1698217025_))
                                                            (_tl1698417030_
                                                             (##cdr _e1698217025_)))
                                                        (if (gx#stx-null?
                                                             _tl1698417030_)
                                                            ((lambda (_L17033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17034_)
                       (let* ((_rator-id17052_
                               (gxc#generate-runtime-binding-id _L17034_))
                              (_rator-type17054_
                               (gxc#optimizer-resolve-type _rator-id17052_)))
                         (if (##structure-instance-of?
                              _rator-type17054_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17052_
                                '" => "
                                _rator-type17054_
                                '" "
                                (##structure-ref
                                 _rator-type17054_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17054_
                                'optimize-call
                                _stx16966_
                                _L17033_))
                             (if (not _rator-type17054_)
                                 (gxc#xform-call% _stx16966_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx16966_
                                  _rator-type17054_)))))
                     _tl1697817014_
                     _hd1698317028_)
                    (_g1696816996_ _g1697016999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1696816996_
                                                     _g1697016999_))
                                                (_g1696816996_ _g1697016999_))
                                            (_g1696816996_ _g1697016999_))))
                                    (_g1696816996_ _g1697016999_))))
                            (_g1696816996_ _g1697016999_))))
                    (_g1696816996_ _g1697016999_)))))
        (_g1696717057_ _stx16966_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self16820_ _stx16821_ _args16822_)
      (let* ((_self1682316829_ _self16820_)
             (_E1682516833_
              (lambda () (error '"No clause matching" _self1682316829_)))
             (_K1682616958_
              (lambda (_struct-t16836_)
                (let* ((_struct-type16838_
                        (gxc#optimizer-resolve-type _struct-t16836_))
                       (_struct-type1683916853_ _struct-type16838_)
                       (_E1684316857_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1683916853_)))
                       (_else1684216861_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16821_
                           _struct-t16836_
                           _struct-type16838_)))
                       (_try-match1684116869_
                        (lambda ()
                          (let ((_K1684416866_
                                 (lambda () (gxc#xform-call% _stx16821_))))
                            (if (##eq? _struct-type1683916853_ '#f)
                                (_K1684416866_)
                                (_else1684216861_)))))
                       (_K1684516933_
                        (lambda (_plist16872_ _struct-type-id16873_)
                          (let* ((_g1687616886_
                                  (lambda (_g1687716883_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1687716883_)))
                                 (_g1687516893_
                                  (lambda (_g1687716889_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx16821_)))))
                                 (_g1687416930_
                                  (lambda (_g1687716896_)
                                    (if (gx#stx-pair? _g1687716896_)
                                        (let ((_e1687916898_
                                               (gx#stx-e _g1687716896_)))
                                          (let ((_hd1688016901_
                                                 (##car _e1687916898_))
                                                (_tl1688116903_
                                                 (##cdr _e1687916898_)))
                                            (if (gx#stx-null? _tl1688116903_)
                                                ((lambda (_L16906_)
                                                   (let ((_expr16927_
                                                          (gxc#compile-e
                                                           _L16906_))
                                                         (_op16928_
                                                          (if (if _plist16872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist16872_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op16928_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id16873_ '()))
                          (cons _expr16927_ '())))
              _stx16821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1688016901_)
                                                (_g1687516893_
                                                 _g1687716896_))))
                                        (_g1687516893_ _g1687716896_)))))
                            (_g1687416930_ _args16822_)))))
                  (if (##structure-instance-of?
                       _struct-type1683916853_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1684616936_
                              (##vector-ref _struct-type1683916853_ '1))
                             (_struct-type-id16939_ _e1684616936_)
                             (_e1684716941_
                              (##vector-ref _struct-type1683916853_ '2))
                             (_e1684816944_
                              (##vector-ref _struct-type1683916853_ '3))
                             (_e1684916947_
                              (##vector-ref _struct-type1683916853_ '4))
                             (_e1685016950_
                              (##vector-ref _struct-type1683916853_ '5))
                             (_e1685116953_
                              (##vector-ref _struct-type1683916853_ '6))
                             (_plist16956_ _e1685116953_))
                        (_K1684516933_ _plist16956_ _struct-type-id16939_))
                      (_try-match1684116869_))))))
        (if (##structure-instance-of?
             _self1682316829_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1682716961_ (##vector-ref _self1682316829_ '1))
                   (_struct-t16964_ _e1682716961_))
              (_K1682616958_ _struct-t16964_))
            (_E1682516833_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self16594_ _stx16595_ _args16596_)
      (let* ((_self1659716603_ _self16594_)
             (_E1659916607_
              (lambda () (error '"No clause matching" _self1659716603_)))
             (_K1660016690_
              (lambda (_struct-t16610_)
                (let* ((_struct-type16612_
                        (gxc#optimizer-resolve-type _struct-t16610_))
                       (_struct-type1661316626_ _struct-type16612_)
                       (_E1661716630_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1661316626_)))
                       (_else1661616634_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx16595_
                           _struct-t16610_
                           _struct-type16612_)))
                       (_try-match1661516642_
                        (lambda ()
                          (let ((_K1661816639_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t16610_)
                                     (gxc#xform-call% _stx16595_)))))
                            (if (##eq? _struct-type1661316626_ '#f)
                                (_K1661816639_)
                                (_else1661616634_)))))
                       (_K1661916664_
                        (lambda (_ctor16645_
                                 _xfields16646_
                                 _fields16647_
                                 _type-id16648_)
                          (let* ((_args16650_ (map gxc#compile-e _args16596_))
                                 (_$e16652_
                                  (if _ctor16645_
                                      (if _xfields16646_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type16612_
                                           _ctor16645_)
                                          '#f)
                                      '#f)))
                            (if _$e16652_
                                ((lambda (_kons16655_)
                                   (let ((_$obj16657_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj16657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t16610_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields16647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields16646_)
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
                                    (cons (cons '%#ref (cons _kons16655_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj16657_ '()))
                                                _args16650_)))
                              _stx16595_))
                            (cons (cons '%#ref (cons _$obj16657_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx16595_)))
                                 _$e16652_)
                                (if (let ((_$e16659_ _ctor16645_))
                                      (if _$e16659_
                                          _$e16659_
                                          (not _xfields16646_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t16610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args16650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx16595_)
                                    (let ((_arity16662_
                                           (fx+ _fields16647_ _xfields16646_)))
                                      (if (fx= _arity16662_
                                               (length _args16650_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t16610_ '())) _args16650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx16595_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx16595_
                                           _struct-t16610_
                                           _arity16662_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1661316626_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1662016667_
                              (##vector-ref _struct-type1661316626_ '1))
                             (_type-id16670_ _e1662016667_)
                             (_e1662116672_
                              (##vector-ref _struct-type1661316626_ '2))
                             (_e1662216675_
                              (##vector-ref _struct-type1661316626_ '3))
                             (_fields16678_ _e1662216675_)
                             (_e1662316680_
                              (##vector-ref _struct-type1661316626_ '4))
                             (_xfields16683_ _e1662316680_)
                             (_e1662416685_
                              (##vector-ref _struct-type1661316626_ '5))
                             (_ctor16688_ _e1662416685_))
                        (_K1661916664_
                         _ctor16688_
                         _xfields16683_
                         _fields16678_
                         _type-id16670_))
                      (_try-match1661516642_))))))
        (if (##structure-instance-of?
             _self1659716603_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1660116693_ (##vector-ref _self1659716603_ '1))
                   (_struct-t16696_ _e1660116693_))
              (_K1660016690_ _struct-t16696_))
            (_E1659916607_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16305_ _stx16306_ _args16307_)
      (let* ((_self1630816316_ _self16305_)
             (_E1631016320_
              (lambda () (error '"No clause matching" _self1630816316_)))
             (_K1631116454_
              (lambda (_unchecked?16323_ _off16324_ _struct-t16325_)
                (let* ((_struct-type16327_
                        (gxc#optimizer-resolve-type _struct-t16325_))
                       (_struct-type1632816342_ _struct-type16327_)
                       (_E1633216346_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1632816342_)))
                       (_else1633116350_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16306_
                           _struct-t16325_
                           _struct-type16327_)))
                       (_try-match1633016358_
                        (lambda ()
                          (let ((_K1633316355_
                                 (lambda () (gxc#xform-call% _stx16306_))))
                            (if (##eq? _struct-type1632816342_ '#f)
                                (_K1633316355_)
                                (_else1633116350_)))))
                       (_K1633416425_
                        (lambda (_plist16361_
                                 _xfields16362_
                                 _fields16363_
                                 _struct-type-id16364_)
                          (if _xfields16362_
                              (let* ((_g1636716377_
                                      (lambda (_g1636816374_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1636816374_)))
                                     (_g1636616384_
                                      (lambda (_g1636816380_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16306_)))))
                                     (_g1636516422_
                                      (lambda (_g1636816387_)
                                        (if (gx#stx-pair? _g1636816387_)
                                            (let ((_e1637016389_
                                                   (gx#stx-e _g1636816387_)))
                                              (let ((_hd1637116392_
                                                     (##car _e1637016389_))
                                                    (_tl1637216394_
                                                     (##cdr _e1637016389_)))
                                                (if (gx#stx-null?
                                                     _tl1637216394_)
                                                    ((lambda (_L16397_)
                                                       (let ((_expr16418_
                                                              (gxc#compile-e
                                                               _L16397_))
                                                             (_off16419_
                                                              (fx+ _off16324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16362_
                           '1))
                     (_op16420_
                      (if _unchecked?16323_
                          '%#struct-unchecked-ref
                          (if (if _plist16361_
                                  (assgetq 'final: _plist16361_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16420_
                        (cons (cons '%#ref (cons _struct-t16325_ '()))
                              (cons (cons '%#quote (cons _off16419_ '()))
                                    (cons _expr16418_ '()))))
                  _stx16306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1637116392_)
                                                    (_g1636616384_
                                                     _g1636816387_))))
                                            (_g1636616384_ _g1636816387_)))))
                                (_g1636516422_ _args16307_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16364_)
                                (gxc#xform-call% _stx16306_))))))
                  (if (##structure-instance-of?
                       _struct-type1632816342_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1633516428_
                              (##vector-ref _struct-type1632816342_ '1))
                             (_struct-type-id16431_ _e1633516428_)
                             (_e1633616433_
                              (##vector-ref _struct-type1632816342_ '2))
                             (_e1633716436_
                              (##vector-ref _struct-type1632816342_ '3))
                             (_fields16439_ _e1633716436_)
                             (_e1633816441_
                              (##vector-ref _struct-type1632816342_ '4))
                             (_xfields16444_ _e1633816441_)
                             (_e1633916446_
                              (##vector-ref _struct-type1632816342_ '5))
                             (_e1634016449_
                              (##vector-ref _struct-type1632816342_ '6))
                             (_plist16452_ _e1634016449_))
                        (_K1633416425_
                         _plist16452_
                         _xfields16444_
                         _fields16439_
                         _struct-type-id16431_))
                      (_try-match1633016358_))))))
        (if (##structure-instance-of?
             _self1630816316_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1631216457_ (##vector-ref _self1630816316_ '1))
                   (_struct-t16460_ _e1631216457_)
                   (_e1631316462_ (##vector-ref _self1630816316_ '2))
                   (_off16465_ _e1631316462_)
                   (_e1631416467_ (##vector-ref _self1630816316_ '3))
                   (_unchecked?16470_ _e1631416467_))
              (_K1631116454_ _unchecked?16470_ _off16465_ _struct-t16460_))
            (_E1631016320_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self15999_ _stx16000_ _args16001_)
      (let* ((_self1600216010_ _self15999_)
             (_E1600416014_
              (lambda () (error '"No clause matching" _self1600216010_)))
             (_K1600516165_
              (lambda (_unchecked?16017_ _off16018_ _struct-t16019_)
                (let* ((_struct-type16021_
                        (gxc#optimizer-resolve-type _struct-t16019_))
                       (_struct-type1602216036_ _struct-type16021_)
                       (_E1602616040_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1602216036_)))
                       (_else1602516044_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16000_
                           _struct-t16019_
                           _struct-type16021_)))
                       (_try-match1602416052_
                        (lambda ()
                          (let ((_K1602716049_
                                 (lambda () (gxc#xform-call% _stx16000_))))
                            (if (##eq? _struct-type1602216036_ '#f)
                                (_K1602716049_)
                                (_else1602516044_)))))
                       (_K1602816136_
                        (lambda (_plist16055_
                                 _xfields16056_
                                 _fields16057_
                                 _struct-type-id16058_)
                          (if _xfields16056_
                              (let* ((_g1606116075_
                                      (lambda (_g1606216072_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1606216072_)))
                                     (_g1606016082_
                                      (lambda (_g1606216078_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx16000_)))))
                                     (_g1605916133_
                                      (lambda (_g1606216085_)
                                        (if (gx#stx-pair? _g1606216085_)
                                            (let ((_e1606516087_
                                                   (gx#stx-e _g1606216085_)))
                                              (let ((_hd1606616090_
                                                     (##car _e1606516087_))
                                                    (_tl1606716092_
                                                     (##cdr _e1606516087_)))
                                                (if (gx#stx-pair?
                                                     _tl1606716092_)
                                                    (let ((_e1606816095_
                                                           (gx#stx-e
                                                            _tl1606716092_)))
                                                      (let ((_hd1606916098_
                                                             (##car _e1606816095_))
                                                            (_tl1607016100_
                                                             (##cdr _e1606816095_)))
                                                        (if (gx#stx-null?
                                                             _tl1607016100_)
                                                            ((lambda (_L16103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16104_)
                       (let ((_expr16128_ (gxc#compile-e _L16104_))
                             (_val16129_ (gxc#compile-e _L16103_))
                             (_off16130_ (fx+ _off16018_ _xfields16056_ '1))
                             (_op16131_
                              (if _unchecked?16017_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16055_
                                          (assgetq 'final: _plist16055_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16131_
                                (cons (cons '%#ref (cons _struct-t16019_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16130_ '()))
                                            (cons _expr16128_
                                                  (cons _val16129_ '())))))
                          _stx16000_)))
                     _hd1606916098_
                     _hd1606616090_)
                    (_g1606016082_ _g1606216085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1606016082_
                                                     _g1606216085_))))
                                            (_g1606016082_ _g1606216085_)))))
                                (_g1605916133_ _args16001_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16058_)
                                (gxc#xform-call% _stx16000_))))))
                  (if (##structure-instance-of?
                       _struct-type1602216036_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1602916139_
                              (##vector-ref _struct-type1602216036_ '1))
                             (_struct-type-id16142_ _e1602916139_)
                             (_e1603016144_
                              (##vector-ref _struct-type1602216036_ '2))
                             (_e1603116147_
                              (##vector-ref _struct-type1602216036_ '3))
                             (_fields16150_ _e1603116147_)
                             (_e1603216152_
                              (##vector-ref _struct-type1602216036_ '4))
                             (_xfields16155_ _e1603216152_)
                             (_e1603316157_
                              (##vector-ref _struct-type1602216036_ '5))
                             (_e1603416160_
                              (##vector-ref _struct-type1602216036_ '6))
                             (_plist16163_ _e1603416160_))
                        (_K1602816136_
                         _plist16163_
                         _xfields16155_
                         _fields16150_
                         _struct-type-id16142_))
                      (_try-match1602416052_))))))
        (if (##structure-instance-of?
             _self1600216010_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1600616168_ (##vector-ref _self1600216010_ '1))
                   (_struct-t16171_ _e1600616168_)
                   (_e1600716173_ (##vector-ref _self1600216010_ '2))
                   (_off16176_ _e1600716173_)
                   (_e1600816178_ (##vector-ref _self1600216010_ '3))
                   (_unchecked?16181_ _e1600816178_))
              (_K1600516165_ _unchecked?16181_ _off16176_ _struct-t16171_))
            (_E1600416014_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self15833_ _stx15834_ _args15835_)
      (let* ((_self1583615845_ _self15833_)
             (_E1583815849_
              (lambda () (error '"No clause matching" _self1583615845_)))
             (_K1583915856_
              (lambda (_inline15852_ _dispatch15853_ _arity15854_)
                (begin
                  (if (gxc#!lambda-arity-match? _self15833_ _args15835_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx15834_
                       _arity15854_))
                  (if _inline15852_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline15852_ _stx15834_)
                          _stx15834_)))
                      (if _dispatch15853_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch15853_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch15853_ '()))
                                          _args15835_))
                              _stx15834_)))
                          (gxc#xform-call% _stx15834_)))))))
        (if (##structure-instance-of?
             _self1583615845_
             (##type-id gxc#!lambda::t))
            (let* ((_e1584015859_ (##vector-ref _self1583615845_ '1))
                   (_e1584115862_ (##vector-ref _self1583615845_ '2))
                   (_arity15865_ _e1584115862_)
                   (_e1584215867_ (##vector-ref _self1583615845_ '3))
                   (_dispatch15870_ _e1584215867_)
                   (_e1584315872_ (##vector-ref _self1583615845_ '4))
                   (_inline15875_ _e1584315872_))
              (_K1583915856_ _inline15875_ _dispatch15870_ _arity15865_))
            (_E1583815849_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self15672_ _stx15673_ _args15674_)
      (let* ((_self1567515682_ _self15672_)
             (_E1567715686_
              (lambda () (error '"No clause matching" _self1567515682_)))
             (_K1567815700_
              (lambda (_clauses15689_)
                (let ((_$e15695_
                       (find (lambda (_g1569015692_)
                               (gxc#!lambda-arity-match?
                                _g1569015692_
                                _args15674_))
                             _clauses15689_)))
                  (if _$e15695_
                      ((lambda (_clause15698_)
                         (call-method
                          _clause15698_
                          'optimize-call
                          _stx15673_
                          _args15674_))
                       _$e15695_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx15673_
                       (map gxc#!lambda-arity _clauses15689_)))))))
        (if (##structure-instance-of?
             _self1567515682_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1567915703_ (##vector-ref _self1567515682_ '1))
                   (_e1568015706_ (##vector-ref _self1567515682_ '2))
                   (_clauses15709_ _e1568015706_))
              (_K1567815700_ _clauses15709_))
            (_E1567715686_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15486_ _args15487_)
      (let* ((_self1548815495_ _self15486_)
             (_E1549015499_
              (lambda () (error '"No clause matching" _self1548815495_)))
             (_K1549115539_
              (lambda (_arity15502_)
                (let* ((_arity1550315512_ _arity15502_)
                       (_E1550615516_
                        (lambda ()
                          (error '"No clause matching" _arity1550315512_)))
                       (_try-match1550515532_
                        (lambda ()
                          (let ((_K1550715522_
                                 (lambda (_arity15520_)
                                   (fx>= (length _args15487_) _arity15520_))))
                            (if (##pair? _arity1550315512_)
                                (let ((_hd1550815525_
                                       (##car _arity1550315512_))
                                      (_tl1550915527_
                                       (##cdr _arity1550315512_)))
                                  (let ((_arity15530_ _hd1550815525_))
                                    (if (##null? _tl1550915527_)
                                        (_K1550715522_ _arity15530_)
                                        (_E1550615516_))))
                                (_E1550615516_)))))
                       (_K1551015536_
                        (lambda () (fx= (length _args15487_) _arity15502_))))
                  (if (fixnum? _arity1550315512_)
                      (_K1551015536_)
                      (_try-match1550515532_))))))
        (if (##structure-instance-of?
             _self1548815495_
             (##type-id gxc#!lambda::t))
            (let* ((_e1549215542_ (##vector-ref _self1548815495_ '1))
                   (_e1549315545_ (##vector-ref _self1548815495_ '2))
                   (_arity15548_ _e1549315545_))
              (_K1549115539_ _arity15548_))
            (_E1549015499_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15371_ _stx15372_ _args15373_)
      (let* ((_self1537415382_ _self15371_)
             (_E1537615386_
              (lambda () (error '"No clause matching" _self1537415382_)))
             (_K1537715470_
              (lambda (_dispatch15389_ _table15390_)
                (let* ((_g1539115400_
                        (gxc#optimizer-lookup-type _dispatch15389_))
                       (_E1539415404_
                        (lambda ()
                          (error '"No clause matching" _g1539115400_)))
                       (_else1539315408_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15389_)
                            (gxc#xform-call% _stx15372_))))
                       (_K1539515454_
                        (lambda (_main15411_ _keys15412_)
                          (let ((_g27447_
                                 (gxc#!kw-lambda-split-args
                                  _stx15372_
                                  _args15373_)))
                            (begin
                              (let ((_g27448_ (values-count _g27447_)))
                                (if (not (fx= _g27448_ 2))
                                    (error "Context expects 2 values"
                                           _g27448_)))
                              (let ((_pargs15414_ (values-ref _g27447_ 0))
                                    (_kwargs15415_ (values-ref _g27447_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15411_)
                                  (if _table15390_
                                      (let ((_xargs15422_
                                             (map (lambda (_key15417_)
                                                    (let ((_$e15419_
                                                           (assgetq _key15417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15415_)))
              (if _$e15419_ (values _$e15419_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15412_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15424_)
                                             (if (memq (car _kw15424_)
                                                       _keys15412_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx15372_
                                                  _keys15412_
                                                  _kw15424_)))
                                           _kwargs15415_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15414_ _xargs15422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15372_))))
                                      (let* ((_kwt15426_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15429_
                                              (map (lambda (_g27449_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15415_))
                                             (_kwbind15434_
                                              (map (lambda (_kw15431_
                                                            _kwvar15432_)
                                                     (cons (cons _kwvar15432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15431_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15415_
                                                   _kwvars15429_))
                                             (_kwset15439_
                                              (map (lambda (_kw15436_
                                                            _kwvar15437_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15426_ '()))
                               (cons (cons '%#quote (cons (car _kw15436_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15437_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15415_
                                                   _kwvars15429_))
                                             (_xkwargs15444_
                                              (map (lambda (_kw15441_
                                                            _kwvar15442_)
                                                     (cons (car _kw15441_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15442_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15415_
                                                   _kwvars15429_))
                                             (_xargs15451_
                                              (map (lambda (_key15446_)
                                                     (let ((_$e15448_
                                                            (assgetq _key15446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15444_)))
               (if _$e15448_ (values _$e15448_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15412_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15434_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15426_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15415_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15372_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15411_ '()))
                               (cons (cons '%#ref (cons _kwt15426_ '()))
                                     (foldr1 cons _pargs15414_ _xargs15451_))))
                   _stx15372_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15439_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15372_)))))))))))
                  (if (##structure-instance-of?
                       _g1539115400_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1539615457_ (##vector-ref _g1539115400_ '1))
                             (_e1539715460_ (##vector-ref _g1539115400_ '2))
                             (_keys15463_ _e1539715460_)
                             (_e1539815465_ (##vector-ref _g1539115400_ '3))
                             (_main15468_ _e1539815465_))
                        (_K1539515454_ _main15468_ _keys15463_))
                      (_else1539315408_))))))
        (if (##structure-instance-of?
             _self1537415382_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1537815473_ (##vector-ref _self1537415382_ '1))
                   (_e1537915476_ (##vector-ref _self1537415382_ '2))
                   (_table15479_ _e1537915476_)
                   (_e1538015481_ (##vector-ref _self1537415382_ '3))
                   (_dispatch15484_ _e1538015481_))
              (_K1537715470_ _dispatch15484_ _table15479_))
            (_E1537615386_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx14994_ _args14995_)
      (let _lp14997_ ((_rest14999_ _args14995_)
                      (_pargs15000_ '())
                      (_kwargs15001_ '()))
        (let* ((_g1500715057_
                (lambda (_g1500815054_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1500815054_)))
               (_g1500615064_
                (lambda (_g1500815060_)
                  (if (gx#stx-null? _g1500815060_)
                      ((lambda ()
                         (values (reverse _pargs15000_)
                                 (reverse _kwargs15001_))))
                      (_g1500715057_ _g1500815060_))))
               (_g1500515092_
                (lambda (_g1500815067_)
                  (if (gx#stx-pair? _g1500815067_)
                      (let ((_e1505015069_ (gx#stx-e _g1500815067_)))
                        (let ((_hd1505115072_ (##car _e1505015069_))
                              (_tl1505215074_ (##cdr _e1505015069_)))
                          ((lambda (_L15077_ _L15078_)
                             (_lp14997_
                              _L15077_
                              (cons _L15078_ _pargs15000_)
                              _kwargs15001_))
                           _tl1505215074_
                           _hd1505115072_)))
                      (_g1500615064_ _g1500815067_))))
               (_g1500415150_
                (lambda (_g1500815095_)
                  (if (gx#stx-pair? _g1500815095_)
                      (let ((_e1503615097_ (gx#stx-e _g1500815095_)))
                        (let ((_hd1503715100_ (##car _e1503615097_))
                              (_tl1503815102_ (##cdr _e1503615097_)))
                          (if (gx#stx-pair? _hd1503715100_)
                              (let ((_e1503915105_ (gx#stx-e _hd1503715100_)))
                                (let ((_hd1504015108_ (##car _e1503915105_))
                                      (_tl1504115110_ (##cdr _e1503915105_)))
                                  (if (gx#identifier? _hd1504015108_)
                                      (if (gx#stx-eq? '%#quote _hd1504015108_)
                                          (if (gx#stx-pair? _tl1504115110_)
                                              (let ((_e1504215113_
                                                     (gx#stx-e
                                                      _tl1504115110_)))
                                                (let ((_hd1504315116_
                                                       (##car _e1504215113_))
                                                      (_tl1504415118_
                                                       (##cdr _e1504215113_)))
                                                  (if (gx#stx-null?
                                                       _tl1504415118_)
                                                      (if (gx#stx-pair?
                                                           _tl1503815102_)
                                                          (let ((_e1504515121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1503815102_)))
                    (let ((_hd1504615124_ (##car _e1504515121_))
                          (_tl1504715126_ (##cdr _e1504515121_)))
                      ((lambda (_L15129_ _L15130_ _L15131_)
                         (if (gx#stx-keyword? _L15131_)
                             (let ((_kw15148_ (gx#stx-e _L15131_)))
                               (if (assq _kw15148_ _kwargs15001_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx14994_
                                    _kw15148_)
                                   (_lp14997_
                                    _L15129_
                                    _pargs15000_
                                    (cons (cons _kw15148_ _L15130_)
                                          _kwargs15001_))))
                             (_g1500515092_ _g1500815095_)))
                       _tl1504715126_
                       _hd1504615124_
                       _hd1504315116_)))
                  (_g1500515092_ _g1500815095_))
              (_g1500515092_ _g1500815095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1500515092_ _g1500815095_))
                                          (_g1500515092_ _g1500815095_))
                                      (_g1500515092_ _g1500815095_))))
                              (_g1500515092_ _g1500815095_))))
                      (_g1500515092_ _g1500815095_))))
               (_g1500315192_
                (lambda (_g1500815153_)
                  (if (gx#stx-pair? _g1500815153_)
                      (let ((_e1502415155_ (gx#stx-e _g1500815153_)))
                        (let ((_hd1502515158_ (##car _e1502415155_))
                              (_tl1502615160_ (##cdr _e1502415155_)))
                          (if (gx#stx-pair? _hd1502515158_)
                              (let ((_e1502715163_ (gx#stx-e _hd1502515158_)))
                                (let ((_hd1502815166_ (##car _e1502715163_))
                                      (_tl1502915168_ (##cdr _e1502715163_)))
                                  (if (gx#identifier? _hd1502815166_)
                                      (if (gx#stx-eq? '%#quote _hd1502815166_)
                                          (if (gx#stx-pair? _tl1502915168_)
                                              (let ((_e1503015171_
                                                     (gx#stx-e
                                                      _tl1502915168_)))
                                                (let ((_hd1503115174_
                                                       (##car _e1503015171_))
                                                      (_tl1503215176_
                                                       (##cdr _e1503015171_)))
                                                  (if (gx#stx-datum?
                                                       _hd1503115174_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1503115174_)
                          '#!rest)
                  (if (gx#stx-null? _tl1503215176_)
                      ((lambda (_L15179_)
                         (values (foldl1 cons _L15179_ _pargs15000_)
                                 (reverse _kwargs15001_)))
                       _tl1502615160_)
                      (_g1500415150_ _g1500815153_))
                  (_g1500415150_ _g1500815153_))
              (_g1500415150_ _g1500815153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1500415150_ _g1500815153_))
                                          (_g1500415150_ _g1500815153_))
                                      (_g1500415150_ _g1500815153_))))
                              (_g1500415150_ _g1500815153_))))
                      (_g1500415150_ _g1500815153_))))
               (_g1500215246_
                (lambda (_g1500815195_)
                  (if (gx#stx-pair? _g1500815195_)
                      (let ((_e1501115197_ (gx#stx-e _g1500815195_)))
                        (let ((_hd1501215200_ (##car _e1501115197_))
                              (_tl1501315202_ (##cdr _e1501115197_)))
                          (if (gx#stx-pair? _hd1501215200_)
                              (let ((_e1501415205_ (gx#stx-e _hd1501215200_)))
                                (let ((_hd1501515208_ (##car _e1501415205_))
                                      (_tl1501615210_ (##cdr _e1501415205_)))
                                  (if (gx#identifier? _hd1501515208_)
                                      (if (gx#stx-eq? '%#quote _hd1501515208_)
                                          (if (gx#stx-pair? _tl1501615210_)
                                              (let ((_e1501715213_
                                                     (gx#stx-e
                                                      _tl1501615210_)))
                                                (let ((_hd1501815216_
                                                       (##car _e1501715213_))
                                                      (_tl1501915218_
                                                       (##cdr _e1501715213_)))
                                                  (if (gx#stx-datum?
                                                       _hd1501815216_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1501815216_)
                          '#!key)
                  (if (gx#stx-null? _tl1501915218_)
                      (if (gx#stx-pair? _tl1501315202_)
                          (let ((_e1502015221_ (gx#stx-e _tl1501315202_)))
                            (let ((_hd1502115224_ (##car _e1502015221_))
                                  (_tl1502215226_ (##cdr _e1502015221_)))
                              ((lambda (_L15229_ _L15230_)
                                 (_lp14997_
                                  _L15229_
                                  (cons _L15230_ _pargs15000_)
                                  _kwargs15001_))
                               _tl1502215226_
                               _hd1502115224_)))
                          (_g1500315192_ _g1500815195_))
                      (_g1500315192_ _g1500815195_))
                  (_g1500315192_ _g1500815195_))
              (_g1500315192_ _g1500815195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1500315192_ _g1500815195_))
                                          (_g1500315192_ _g1500815195_))
                                      (_g1500315192_ _g1500815195_))))
                              (_g1500315192_ _g1500815195_))))
                      (_g1500315192_ _g1500815195_)))))
          (_g1500215246_ _rest14999_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self14990_ _stx14991_ _args14992_) (gxc#xform-call% _stx14991_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#generate-ssxi-module%
    (lambda (_stx14808_)
      (let* ((_g1481014824_
              (lambda (_g1481114821_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1481114821_)))
             (_g1480914865_
              (lambda (_g1481114827_)
                (if (gx#stx-pair? _g1481114827_)
                    (let ((_e1481414829_ (gx#stx-e _g1481114827_)))
                      (let ((_hd1481514832_ (##car _e1481414829_))
                            (_tl1481614834_ (##cdr _e1481414829_)))
                        (if (gx#stx-pair? _tl1481614834_)
                            (let ((_e1481714837_ (gx#stx-e _tl1481614834_)))
                              (let ((_hd1481814840_ (##car _e1481714837_))
                                    (_tl1481914842_ (##cdr _e1481714837_)))
                                ((lambda (_L14845_ _L14846_)
                                   (let* ((_ctx14859_
                                           (gx#syntax-local-e__0 _L14846_))
                                          (_code14861_
                                           (##structure-ref
                                            _ctx14859_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14861_))
                                      gx#current-expander-context
                                      _ctx14859_)))
                                 _tl1481914842_
                                 _hd1481814840_)))
                            (_g1481014824_ _g1481114827_))))
                    (_g1481014824_ _g1481114827_)))))
        (_g1480914865_ _stx14808_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14618_)
      (letrec ((_generate-e14620_
                (lambda (_id14797_)
                  (let* ((_sym14799_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14797_)
                              '#f))
                         (_$e14801_
                          (if _sym14799_
                              (gxc#optimizer-lookup-type _sym14799_)
                              '#f)))
                    (if _$e14801_
                        ((lambda (_type14804_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14799_)
                             (let ((_typedecl14806_
                                    (call-method _type14804_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14799_
                                           (cons _typedecl14806_ '()))))))
                         _$e14801_)
                        '(begin))))))
        (let* ((_g1462314661_
                (lambda (_g1462414658_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1462414658_)))
               (_g1462214742_
                (lambda (_g1462414664_)
                  (if (gx#stx-pair? _g1462414664_)
                      (let ((_e1463914666_ (gx#stx-e _g1462414664_)))
                        (let ((_hd1464014669_ (##car _e1463914666_))
                              (_tl1464114671_ (##cdr _e1463914666_)))
                          (if (gx#stx-pair? _tl1464114671_)
                              (let ((_e1464214674_ (gx#stx-e _tl1464114671_)))
                                (let ((_hd1464314677_ (##car _e1464214674_))
                                      (_tl1464414679_ (##cdr _e1464214674_)))
                                  (if (gx#stx-pair/null? _hd1464314677_)
                                      (if (fx>= (gx#stx-length _hd1464314677_)
                                                '0)
                                          (let ((_g27450_
                                                 (gx#syntax-split-splice
                                                  _hd1464314677_
                                                  '0)))
                                            (begin
                                              (let ((_g27451_
                                                     (values-count _g27450_)))
                                                (if (not (fx= _g27451_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27451_)))
                                              (let ((_target1464514682_
                                                     (values-ref _g27450_ 0))
                                                    (_tl1464714684_
                                                     (values-ref _g27450_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1464714684_)
                                                    (letrec ((_loop1464814687_
                                                              (lambda (_hd1464614690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1465214692_)
                        (if (gx#stx-pair? _hd1464614690_)
                            (let ((_e1464914695_ (gx#stx-e _hd1464614690_)))
                              (let ((_lp-hd1465014698_ (##car _e1464914695_))
                                    (_lp-tl1465114700_ (##cdr _e1464914695_)))
                                (_loop1464814687_
                                 _lp-tl1465114700_
                                 (cons _lp-hd1465014698_ _id1465214692_))))
                            (let ((_id1465314703_ (reverse _id1465214692_)))
                              (if (gx#stx-pair? _tl1464414679_)
                                  (let ((_e1465414706_
                                         (gx#stx-e _tl1464414679_)))
                                    (let ((_hd1465514709_
                                           (##car _e1465414706_))
                                          (_tl1465614711_
                                           (##cdr _e1465414706_)))
                                      (if (gx#stx-null? _tl1465614711_)
                                          ((lambda (_L14714_)
                                             (let ((_types14740_
                                                    (map _generate-e14620_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1473214735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1473314737_)
                             (cons _g1473214735_ _g1473314737_))
                           '()
                           _L14714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14740_)))
                                           _id1465314703_)
                                          (_g1462314661_ _g1462414664_))))
                                  (_g1462314661_ _g1462414664_)))))))
              (_loop1464814687_ _target1464514682_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1462314661_
                                                     _g1462414664_)))))
                                          (_g1462314661_ _g1462414664_))
                                      (_g1462314661_ _g1462414664_))))
                              (_g1462314661_ _g1462414664_))))
                      (_g1462314661_ _g1462414664_))))
               (_g1462114794_
                (lambda (_g1462414745_)
                  (if (gx#stx-pair? _g1462414745_)
                      (let ((_e1462614747_ (gx#stx-e _g1462414745_)))
                        (let ((_hd1462714750_ (##car _e1462614747_))
                              (_tl1462814752_ (##cdr _e1462614747_)))
                          (if (gx#stx-pair? _tl1462814752_)
                              (let ((_e1462914755_ (gx#stx-e _tl1462814752_)))
                                (let ((_hd1463014758_ (##car _e1462914755_))
                                      (_tl1463114760_ (##cdr _e1462914755_)))
                                  (if (gx#stx-pair? _hd1463014758_)
                                      (let ((_e1463214763_
                                             (gx#stx-e _hd1463014758_)))
                                        (let ((_hd1463314766_
                                               (##car _e1463214763_))
                                              (_tl1463414768_
                                               (##cdr _e1463214763_)))
                                          (if (gx#stx-null? _tl1463414768_)
                                              (if (gx#stx-pair? _tl1463114760_)
                                                  (let ((_e1463514771_
                                                         (gx#stx-e
                                                          _tl1463114760_)))
                                                    (let ((_hd1463614774_
                                                           (##car _e1463514771_))
                                                          (_tl1463714776_
                                                           (##cdr _e1463514771_)))
                                                      (if (gx#stx-null?
                                                           _tl1463714776_)
                                                          ((lambda (_L14779_)
                                                             (_generate-e14620_
                                                              _L14779_))
                                                           _hd1463314766_)
                                                          (_g1462214742_
                                                           _g1462414745_))))
                                                  (_g1462214742_
                                                   _g1462414745_))
                                              (_g1462214742_ _g1462414745_))))
                                      (_g1462214742_ _g1462414745_))))
                              (_g1462214742_ _g1462414745_))))
                      (_g1462214742_ _g1462414745_)))))
          (_g1462114794_ _stx14618_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14172_)
      (let* ((_g1417614278_
              (lambda (_g1417714275_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1417714275_)))
             (_g1417514285_ (lambda (_g1417714281_) ((lambda () '(begin)))))
             (_g1417414435_
              (lambda (_g1417714288_)
                (if (gx#stx-pair? _g1417714288_)
                    (let ((_e1423514290_ (gx#stx-e _g1417714288_)))
                      (let ((_hd1423614293_ (##car _e1423514290_))
                            (_tl1423714295_ (##cdr _e1423514290_)))
                        (if (gx#stx-pair? _tl1423714295_)
                            (let ((_e1423814298_ (gx#stx-e _tl1423714295_)))
                              (let ((_hd1423914301_ (##car _e1423814298_))
                                    (_tl1424014303_ (##cdr _e1423814298_)))
                                (if (gx#stx-pair? _hd1423914301_)
                                    (let ((_e1424114306_
                                           (gx#stx-e _hd1423914301_)))
                                      (let ((_hd1424214309_
                                             (##car _e1424114306_))
                                            (_tl1424314311_
                                             (##cdr _e1424114306_)))
                                        (if (gx#identifier? _hd1424214309_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1424214309_)
                                                (if (gx#stx-pair?
                                                     _tl1424314311_)
                                                    (let ((_e1424414314_
                                                           (gx#stx-e
                                                            _tl1424314311_)))
                                                      (let ((_hd1424514317_
                                                             (##car _e1424414314_))
                                                            (_tl1424614319_
                                                             (##cdr _e1424414314_)))
                                                        (if (gx#stx-null?
                                                             _tl1424614319_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1424014303_)
                        (let ((_e1424714322_ (gx#stx-e _tl1424014303_)))
                          (let ((_hd1424814325_ (##car _e1424714322_))
                                (_tl1424914327_ (##cdr _e1424714322_)))
                            (if (gx#stx-pair? _hd1424814325_)
                                (let ((_e1425014330_
                                       (gx#stx-e _hd1424814325_)))
                                  (let ((_hd1425114333_ (##car _e1425014330_))
                                        (_tl1425214335_ (##cdr _e1425014330_)))
                                    (if (gx#identifier? _hd1425114333_)
                                        (if (gx#stx-eq? '%#ref _hd1425114333_)
                                            (if (gx#stx-pair? _tl1425214335_)
                                                (let ((_e1425314338_
                                                       (gx#stx-e
                                                        _tl1425214335_)))
                                                  (let ((_hd1425414341_
                                                         (##car _e1425314338_))
                                                        (_tl1425514343_
                                                         (##cdr _e1425314338_)))
                                                    (if (gx#stx-null?
                                                         _tl1425514343_)
                                                        (if (gx#stx-pair?
                                                             _tl1424914327_)
                                                            (let ((_e1425614346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1424914327_)))
                      (let ((_hd1425714349_ (##car _e1425614346_))
                            (_tl1425814351_ (##cdr _e1425614346_)))
                        (if (gx#stx-pair? _hd1425714349_)
                            (let ((_e1425914354_ (gx#stx-e _hd1425714349_)))
                              (let ((_hd1426014357_ (##car _e1425914354_))
                                    (_tl1426114359_ (##cdr _e1425914354_)))
                                (if (gx#identifier? _hd1426014357_)
                                    (if (gx#stx-eq? '%#quote _hd1426014357_)
                                        (if (gx#stx-pair? _tl1426114359_)
                                            (let ((_e1426214362_
                                                   (gx#stx-e _tl1426114359_)))
                                              (let ((_hd1426314365_
                                                     (##car _e1426214362_))
                                                    (_tl1426414367_
                                                     (##cdr _e1426214362_)))
                                                (if (gx#stx-null?
                                                     _tl1426414367_)
                                                    (if (gx#stx-pair?
                                                         _tl1425814351_)
                                                        (let ((_e1426514370_
                                                               (gx#stx-e
                                                                _tl1425814351_)))
                                                          (let ((_hd1426614373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1426514370_))
                        (_tl1426714375_ (##cdr _e1426514370_)))
                    (if (gx#stx-pair? _hd1426614373_)
                        (let ((_e1426814378_ (gx#stx-e _hd1426614373_)))
                          (let ((_hd1426914381_ (##car _e1426814378_))
                                (_tl1427014383_ (##cdr _e1426814378_)))
                            (if (gx#identifier? _hd1426914381_)
                                (if (gx#stx-eq? '%#ref _hd1426914381_)
                                    (if (gx#stx-pair? _tl1427014383_)
                                        (let ((_e1427114386_
                                               (gx#stx-e _tl1427014383_)))
                                          (let ((_hd1427214389_
                                                 (##car _e1427114386_))
                                                (_tl1427314391_
                                                 (##cdr _e1427114386_)))
                                            (if (gx#stx-null? _tl1427314391_)
                                                (if (gx#stx-null?
                                                     _tl1426714375_)
                                                    ((lambda (_L14394_
                                                              _L14395_
                                                              _L14396_
                                                              _L14397_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L14396_)
                               (cons (gx#stx-e _L14395_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L14394_)
                                           (cons '#f '())))))
                   (_g1417514285_ _g1417714288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1427214389_
                                                     _hd1426314365_
                                                     _hd1425414341_
                                                     _hd1424514317_)
                                                    (_g1417514285_
                                                     _g1417714288_))
                                                (_g1417514285_
                                                 _g1417714288_))))
                                        (_g1417514285_ _g1417714288_))
                                    (_g1417514285_ _g1417714288_))
                                (_g1417514285_ _g1417714288_))))
                        (_g1417514285_ _g1417714288_))))
                (_g1417514285_ _g1417714288_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417514285_
                                                     _g1417714288_))))
                                            (_g1417514285_ _g1417714288_))
                                        (_g1417514285_ _g1417714288_))
                                    (_g1417514285_ _g1417714288_))))
                            (_g1417514285_ _g1417714288_))))
                    (_g1417514285_ _g1417714288_))
                (_g1417514285_ _g1417714288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1417514285_ _g1417714288_))
                                            (_g1417514285_ _g1417714288_))
                                        (_g1417514285_ _g1417714288_))))
                                (_g1417514285_ _g1417714288_))))
                        (_g1417514285_ _g1417714288_))
                    (_g1417514285_ _g1417714288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417514285_
                                                     _g1417714288_))
                                                (_g1417514285_ _g1417714288_))
                                            (_g1417514285_ _g1417714288_))))
                                    (_g1417514285_ _g1417714288_))))
                            (_g1417514285_ _g1417714288_))))
                    (_g1417514285_ _g1417714288_))))
             (_g1417314615_
              (lambda (_g1417714438_)
                (if (gx#stx-pair? _g1417714438_)
                    (let ((_e1418314440_ (gx#stx-e _g1417714438_)))
                      (let ((_hd1418414443_ (##car _e1418314440_))
                            (_tl1418514445_ (##cdr _e1418314440_)))
                        (if (gx#stx-pair? _tl1418514445_)
                            (let ((_e1418614448_ (gx#stx-e _tl1418514445_)))
                              (let ((_hd1418714451_ (##car _e1418614448_))
                                    (_tl1418814453_ (##cdr _e1418614448_)))
                                (if (gx#stx-pair? _hd1418714451_)
                                    (let ((_e1418914456_
                                           (gx#stx-e _hd1418714451_)))
                                      (let ((_hd1419014459_
                                             (##car _e1418914456_))
                                            (_tl1419114461_
                                             (##cdr _e1418914456_)))
                                        (if (gx#identifier? _hd1419014459_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1419014459_)
                                                (if (gx#stx-pair?
                                                     _tl1419114461_)
                                                    (let ((_e1419214464_
                                                           (gx#stx-e
                                                            _tl1419114461_)))
                                                      (let ((_hd1419314467_
                                                             (##car _e1419214464_))
                                                            (_tl1419414469_
                                                             (##cdr _e1419214464_)))
                                                        (if (gx#stx-null?
                                                             _tl1419414469_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1418814453_)
                        (let ((_e1419514472_ (gx#stx-e _tl1418814453_)))
                          (let ((_hd1419614475_ (##car _e1419514472_))
                                (_tl1419714477_ (##cdr _e1419514472_)))
                            (if (gx#stx-pair? _hd1419614475_)
                                (let ((_e1419814480_
                                       (gx#stx-e _hd1419614475_)))
                                  (let ((_hd1419914483_ (##car _e1419814480_))
                                        (_tl1420014485_ (##cdr _e1419814480_)))
                                    (if (gx#identifier? _hd1419914483_)
                                        (if (gx#stx-eq? '%#ref _hd1419914483_)
                                            (if (gx#stx-pair? _tl1420014485_)
                                                (let ((_e1420114488_
                                                       (gx#stx-e
                                                        _tl1420014485_)))
                                                  (let ((_hd1420214491_
                                                         (##car _e1420114488_))
                                                        (_tl1420314493_
                                                         (##cdr _e1420114488_)))
                                                    (if (gx#stx-null?
                                                         _tl1420314493_)
                                                        (if (gx#stx-pair?
                                                             _tl1419714477_)
                                                            (let ((_e1420414496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1419714477_)))
                      (let ((_hd1420514499_ (##car _e1420414496_))
                            (_tl1420614501_ (##cdr _e1420414496_)))
                        (if (gx#stx-pair? _hd1420514499_)
                            (let ((_e1420714504_ (gx#stx-e _hd1420514499_)))
                              (let ((_hd1420814507_ (##car _e1420714504_))
                                    (_tl1420914509_ (##cdr _e1420714504_)))
                                (if (gx#identifier? _hd1420814507_)
                                    (if (gx#stx-eq? '%#quote _hd1420814507_)
                                        (if (gx#stx-pair? _tl1420914509_)
                                            (let ((_e1421014512_
                                                   (gx#stx-e _tl1420914509_)))
                                              (let ((_hd1421114515_
                                                     (##car _e1421014512_))
                                                    (_tl1421214517_
                                                     (##cdr _e1421014512_)))
                                                (if (gx#stx-null?
                                                     _tl1421214517_)
                                                    (if (gx#stx-pair?
                                                         _tl1420614501_)
                                                        (let ((_e1421314520_
                                                               (gx#stx-e
                                                                _tl1420614501_)))
                                                          (let ((_hd1421414523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1421314520_))
                        (_tl1421514525_ (##cdr _e1421314520_)))
                    (if (gx#stx-pair? _hd1421414523_)
                        (let ((_e1421614528_ (gx#stx-e _hd1421414523_)))
                          (let ((_hd1421714531_ (##car _e1421614528_))
                                (_tl1421814533_ (##cdr _e1421614528_)))
                            (if (gx#identifier? _hd1421714531_)
                                (if (gx#stx-eq? '%#ref _hd1421714531_)
                                    (if (gx#stx-pair? _tl1421814533_)
                                        (let ((_e1421914536_
                                               (gx#stx-e _tl1421814533_)))
                                          (let ((_hd1422014539_
                                                 (##car _e1421914536_))
                                                (_tl1422114541_
                                                 (##cdr _e1421914536_)))
                                            (if (gx#stx-null? _tl1422114541_)
                                                (if (gx#stx-pair?
                                                     _tl1421514525_)
                                                    (let ((_e1422214544_
                                                           (gx#stx-e
                                                            _tl1421514525_)))
                                                      (let ((_hd1422314547_
                                                             (##car _e1422214544_))
                                                            (_tl1422414549_
                                                             (##cdr _e1422214544_)))
                                                        (if (gx#stx-pair?
                                                             _hd1422314547_)
                                                            (let ((_e1422514552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1422314547_)))
                      (let ((_hd1422614555_ (##car _e1422514552_))
                            (_tl1422714557_ (##cdr _e1422514552_)))
                        (if (gx#identifier? _hd1422614555_)
                            (if (gx#stx-eq? '%#quote _hd1422614555_)
                                (if (gx#stx-pair? _tl1422714557_)
                                    (let ((_e1422814560_
                                           (gx#stx-e _tl1422714557_)))
                                      (let ((_hd1422914563_
                                             (##car _e1422814560_))
                                            (_tl1423014565_
                                             (##cdr _e1422814560_)))
                                        (if (gx#stx-null? _tl1423014565_)
                                            (if (gx#stx-null? _tl1422414549_)
                                                ((lambda (_L14568_
                                                          _L14569_
                                                          _L14570_
                                                          _L14571_
                                                          _L14572_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L14572_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14571_)
                           (cons (gx#stx-e _L14570_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L14569_)
                                       (cons (gx#stx-e _L14568_) '())))))
               (_g1417414435_ _g1417714438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1422914563_
                                                 _hd1422014539_
                                                 _hd1421114515_
                                                 _hd1420214491_
                                                 _hd1419314467_)
                                                (_g1417414435_ _g1417714438_))
                                            (_g1417414435_ _g1417714438_))))
                                    (_g1417414435_ _g1417714438_))
                                (_g1417414435_ _g1417714438_))
                            (_g1417414435_ _g1417714438_))))
                    (_g1417414435_ _g1417714438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417414435_
                                                     _g1417714438_))
                                                (_g1417414435_
                                                 _g1417714438_))))
                                        (_g1417414435_ _g1417714438_))
                                    (_g1417414435_ _g1417714438_))
                                (_g1417414435_ _g1417714438_))))
                        (_g1417414435_ _g1417714438_))))
                (_g1417414435_ _g1417714438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417414435_
                                                     _g1417714438_))))
                                            (_g1417414435_ _g1417714438_))
                                        (_g1417414435_ _g1417714438_))
                                    (_g1417414435_ _g1417714438_))))
                            (_g1417414435_ _g1417714438_))))
                    (_g1417414435_ _g1417714438_))
                (_g1417414435_ _g1417714438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1417414435_ _g1417714438_))
                                            (_g1417414435_ _g1417714438_))
                                        (_g1417414435_ _g1417714438_))))
                                (_g1417414435_ _g1417714438_))))
                        (_g1417414435_ _g1417714438_))
                    (_g1417414435_ _g1417714438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417414435_
                                                     _g1417714438_))
                                                (_g1417414435_ _g1417714438_))
                                            (_g1417414435_ _g1417714438_))))
                                    (_g1417414435_ _g1417714438_))))
                            (_g1417414435_ _g1417714438_))))
                    (_g1417414435_ _g1417714438_)))))
        (_g1417314615_ _stx14172_))))
  (define gxc#!alias::typedecl
    (lambda (_self14148_)
      (let* ((_self1414914155_ _self14148_)
             (_E1415114159_
              (lambda () (error '"No clause matching" _self1414914155_)))
             (_K1415214164_
              (lambda (_alias-id14162_)
                (cons '@alias (cons _alias-id14162_ '())))))
        (if (##structure-instance-of?
             _self1414914155_
             (##type-id gxc#!alias::t))
            (let* ((_e1415314167_ (##vector-ref _self1414914155_ '1))
                   (_alias-id14170_ _e1415314167_))
              (_K1415214164_ _alias-id14170_))
            (_E1415114159_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13970_)
      (let* ((_self1397113982_ _self13970_)
             (_E1397313986_
              (lambda () (error '"No clause matching" _self1397113982_)))
             (_K1397413995_
              (lambda (_plist13989_
                       _ctor13990_
                       _fields13991_
                       _super13992_
                       _type-id13993_)
                (cons '@struct-type
                      (cons _type-id13993_
                            (cons _super13992_
                                  (cons _fields13991_
                                        (cons _ctor13990_
                                              (cons _plist13989_ '())))))))))
        (if (##structure-instance-of?
             _self1397113982_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1397513998_ (##vector-ref _self1397113982_ '1))
                   (_type-id14001_ _e1397513998_)
                   (_e1397614003_ (##vector-ref _self1397113982_ '2))
                   (_super14006_ _e1397614003_)
                   (_e1397714008_ (##vector-ref _self1397113982_ '3))
                   (_fields14011_ _e1397714008_)
                   (_e1397814013_ (##vector-ref _self1397113982_ '4))
                   (_e1397914016_ (##vector-ref _self1397113982_ '5))
                   (_ctor14019_ _e1397914016_)
                   (_e1398014021_ (##vector-ref _self1397113982_ '6))
                   (_plist14024_ _e1398014021_))
              (_K1397413995_
               _plist14024_
               _ctor14019_
               _fields14011_
               _super14006_
               _type-id14001_))
            (_E1397313986_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13824_)
      (let* ((_self1382513831_ _self13824_)
             (_E1382713835_
              (lambda () (error '"No clause matching" _self1382513831_)))
             (_K1382813840_
              (lambda (_struct-t13838_)
                (cons '@struct-pred (cons _struct-t13838_ '())))))
        (if (##structure-instance-of?
             _self1382513831_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1382913843_ (##vector-ref _self1382513831_ '1))
                   (_struct-t13846_ _e1382913843_))
              (_K1382813840_ _struct-t13846_))
            (_E1382713835_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13678_)
      (let* ((_self1367913685_ _self13678_)
             (_E1368113689_
              (lambda () (error '"No clause matching" _self1367913685_)))
             (_K1368213694_
              (lambda (_struct-t13692_)
                (cons '@struct-cons (cons _struct-t13692_ '())))))
        (if (##structure-instance-of?
             _self1367913685_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1368313697_ (##vector-ref _self1367913685_ '1))
                   (_struct-t13700_ _e1368313697_))
              (_K1368213694_ _struct-t13700_))
            (_E1368113689_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self13518_)
      (let* ((_self1351913527_ _self13518_)
             (_E1352113531_
              (lambda () (error '"No clause matching" _self1351913527_)))
             (_K1352213538_
              (lambda (_unchecked?13534_ _off13535_ _struct-t13536_)
                (cons '@struct-getf
                      (cons _struct-t13536_
                            (cons _off13535_ (cons _unchecked?13534_ '())))))))
        (if (##structure-instance-of?
             _self1351913527_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1352313541_ (##vector-ref _self1351913527_ '1))
                   (_struct-t13544_ _e1352313541_)
                   (_e1352413546_ (##vector-ref _self1351913527_ '2))
                   (_off13549_ _e1352413546_)
                   (_e1352513551_ (##vector-ref _self1351913527_ '3))
                   (_unchecked?13554_ _e1352513551_))
              (_K1352213538_ _unchecked?13554_ _off13549_ _struct-t13544_))
            (_E1352113531_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13358_)
      (let* ((_self1335913367_ _self13358_)
             (_E1336113371_
              (lambda () (error '"No clause matching" _self1335913367_)))
             (_K1336213378_
              (lambda (_unchecked?13374_ _off13375_ _struct-t13376_)
                (cons '@struct-setf
                      (cons _struct-t13376_
                            (cons _off13375_ (cons _unchecked?13374_ '())))))))
        (if (##structure-instance-of?
             _self1335913367_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1336313381_ (##vector-ref _self1335913367_ '1))
                   (_struct-t13384_ _e1336313381_)
                   (_e1336413386_ (##vector-ref _self1335913367_ '2))
                   (_off13389_ _e1336413386_)
                   (_e1336513391_ (##vector-ref _self1335913367_ '3))
                   (_unchecked?13394_ _e1336513391_))
              (_K1336213378_ _unchecked?13394_ _off13389_ _struct-t13384_))
            (_E1336113371_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13184_)
      (let* ((_self1318513195_ _self13184_)
             (_E1318713199_
              (lambda () (error '"No clause matching" _self1318513195_)))
             (_K1318813210_
              (lambda (_typedecl13202_
                       _inline13203_
                       _dispatch13204_
                       _arity13205_)
                (if _inline13203_
                    (let ((_$e13207_ _typedecl13202_))
                      (if _$e13207_
                          _$e13207_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13205_ (cons _dispatch13204_ '())))))))
        (if (##structure-instance-of?
             _self1318513195_
             (##type-id gxc#!lambda::t))
            (let* ((_e1318913213_ (##vector-ref _self1318513195_ '1))
                   (_e1319013216_ (##vector-ref _self1318513195_ '2))
                   (_arity13219_ _e1319013216_)
                   (_e1319113221_ (##vector-ref _self1318513195_ '3))
                   (_dispatch13224_ _e1319113221_)
                   (_e1319213226_ (##vector-ref _self1318513195_ '4))
                   (_inline13229_ _e1319213226_)
                   (_e1319313231_ (##vector-ref _self1318513195_ '5))
                   (_typedecl13234_ _e1319313231_))
              (_K1318813210_
               _typedecl13234_
               _inline13229_
               _dispatch13224_
               _arity13219_))
            (_E1318713199_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12995_)
      (letrec ((_clause-e12997_
                (lambda (_clause13027_)
                  (let* ((_clause1302813036_ _clause13027_)
                         (_E1303013040_
                          (lambda ()
                            (error '"No clause matching" _clause1302813036_)))
                         (_K1303113046_
                          (lambda (_dispatch13043_ _arity13044_)
                            (cons _arity13044_ (cons _dispatch13043_ '())))))
                    (if (##structure-instance-of?
                         _clause1302813036_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1303213049_
                                (##vector-ref _clause1302813036_ '1))
                               (_e1303313052_
                                (##vector-ref _clause1302813036_ '2))
                               (_arity13055_ _e1303313052_)
                               (_e1303413057_
                                (##vector-ref _clause1302813036_ '3))
                               (_dispatch13060_ _e1303413057_))
                          (_K1303113046_ _dispatch13060_ _arity13055_))
                        (_E1303013040_))))))
        (let* ((_self1299813005_ _self12995_)
               (_E1300013009_
                (lambda () (error '"No clause matching" _self1299813005_)))
               (_K1300113016_
                (lambda (_clauses13012_)
                  (let ((_clauses13014_ (map _clause-e12997_ _clauses13012_)))
                    (cons '@case-lambda _clauses13014_)))))
          (if (##structure-instance-of?
               _self1299813005_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1300213019_ (##vector-ref _self1299813005_ '1))
                     (_e1300313022_ (##vector-ref _self1299813005_ '2))
                     (_clauses13025_ _e1300313022_))
                (_K1300113016_ _clauses13025_))
              (_E1300013009_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self12838_)
      (let* ((_self1283912847_ _self12838_)
             (_E1284112851_
              (lambda () (error '"No clause matching" _self1283912847_)))
             (_K1284212857_
              (lambda (_dispatch12854_ _table12855_)
                (cons '@kw-lambda
                      (cons _table12855_ (cons _dispatch12854_ '()))))))
        (if (##structure-instance-of?
             _self1283912847_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1284312860_ (##vector-ref _self1283912847_ '1))
                   (_e1284412863_ (##vector-ref _self1283912847_ '2))
                   (_table12866_ _e1284412863_)
                   (_e1284512868_ (##vector-ref _self1283912847_ '3))
                   (_dispatch12871_ _e1284512868_))
              (_K1284212857_ _dispatch12871_ _table12866_))
            (_E1284112851_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self12681_)
      (let* ((_self1268212690_ _self12681_)
             (_E1268412694_
              (lambda () (error '"No clause matching" _self1268212690_)))
             (_K1268512700_
              (lambda (_main12697_ _keys12698_)
                (cons '@kw-lambda-dispatch
                      (cons _keys12698_ (cons _main12697_ '()))))))
        (if (##structure-instance-of?
             _self1268212690_
             (##type-id gxc#!kw-lambda-primary::t))
            (let* ((_e1268612703_ (##vector-ref _self1268212690_ '1))
                   (_e1268712706_ (##vector-ref _self1268212690_ '2))
                   (_keys12709_ _e1268712706_)
                   (_e1268812711_ (##vector-ref _self1268212690_ '3))
                   (_main12714_ _e1268812711_))
              (_K1268512700_ _main12714_ _keys12709_))
            (_E1268412694_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12557_) (gxc#generate-runtime-binding-id _stx12557_))))
