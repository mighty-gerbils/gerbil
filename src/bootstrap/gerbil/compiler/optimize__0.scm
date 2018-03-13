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
    (lambda _$args27850_
      (apply make-struct-instance gxc#optimizer-info::t _$args27850_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27848_)
      (if (##fx< '2 (##vector-length _self27848_))
          (begin
            (##vector-set! _self27848_ '1 (make-hash-table-eq))
            (##vector-set! _self27848_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27848_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27862 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27862) __obj27862))))))
  (define gxc#optimize!
    (lambda (_ctx27720_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27720_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27720_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27723_
                  (gxc#optimize-source
                   (##structure-ref _ctx27720_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27720_
              _code27723_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27665_)
      (letrec* ((_deps27667_
                 (let* ((_imports27711_
                         (##structure-ref
                          _ctx27665_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27713_ (gx#core-context-prelude__% _ctx27665_)))
                   (if _$e27713_
                       ((lambda (_g2771527717_)
                          (cons _g2771527717_ _imports27711_))
                        _$e27713_)
                       _imports27711_))))
        (let _lp27669_ ((_rest27671_ _deps27667_))
          (let* ((_rest2767227680_ _rest27671_)
                 (_E2767527684_
                  (lambda () (error '"No clause matching" _rest2767227680_)))
                 (_else2767427688_ (lambda () '#!void))
                 (_K2767627699_
                  (lambda (_rest27691_ _hd27692_)
                    (if (##structure-instance-of?
                         _hd27692_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27692_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27694_
                                       (gx#core-context-prelude__% _hd27692_)))
                                  (if _$e27694_
                                      ((lambda (_pre27697_)
                                         (_lp27669_
                                          (cons _pre27697_
                                                (##structure-ref
                                                 _hd27692_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27694_)
                                      (_lp27669_
                                       (##structure-ref
                                        _hd27692_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27692_)))
                          (_lp27669_ _rest27691_))
                        (if (##structure-instance-of?
                             _hd27692_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27692_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27669_
                                     (##structure-ref
                                      _hd27692_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27692_)))
                              (_lp27669_ _rest27691_))
                            (if (##structure-direct-instance-of?
                                 _hd27692_
                                 'gx#module-import::t)
                                (_lp27669_
                                 (cons (##direct-structure-ref
                                        _hd27692_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27691_))
                                (if (##structure-direct-instance-of?
                                     _hd27692_
                                     'gx#module-export::t)
                                    (_lp27669_
                                     (cons (##direct-structure-ref
                                            _hd27692_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27691_))
                                    (if (##structure-direct-instance-of?
                                         _hd27692_
                                         'gx#import-set::t)
                                        (_lp27669_
                                         (cons (##direct-structure-ref
                                                _hd27692_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27691_))
                                        (error '"Unexpected module import"
                                               _hd27692_)))))))))
            (if (##pair? _rest2767227680_)
                (let ((_hd2767727702_ (##car _rest2767227680_))
                      (_tl2767827704_ (##cdr _rest2767227680_)))
                  (let* ((_hd27707_ _hd2767727702_)
                         (_rest27709_ _tl2767827704_))
                    (_K2767627699_ _rest27709_ _hd27707_)))
                (_else2767427688_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27645_)
      (if (if (##structure-instance-of? _ctx27645_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27645_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27647_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27649_
                  (##structure-ref _ctx27645_ '1 gx#expander-context::t '#f))
                 (_mod27651_ (table-ref _ht27647_ _id27649_ '#f)))
            (let ((_$e27654_ _mod27651_))
              (if _$e27654_
                  _$e27654_
                  (let* ((_mod27657_ (gxc#optimizer-import-ssxi _ctx27645_))
                         (_val27662_
                          (let ((_$e27659_ _mod27657_))
                            (if _$e27659_ _$e27659_ '#!void))))
                    (begin
                      (table-set! _ht27647_ _id27649_ _val27662_)
                      _val27662_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27622_)
      (letrec ((_catch-e27624_
                (lambda (_exn27643_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27622_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27643_))
                        '#!void)
                    '#f)))
               (_import-e27625_
                (lambda ()
                  (let* ((_str-id27628_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx27622_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27636_
                          (let ((_odir2762927631_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2762927631_
                                (let ((_odir27634_ _odir2762927631_))
                                  (path-expand
                                   (string-append _str-id27628_ '".ss")
                                   _odir27634_))
                                '#f)))
                         (_library-path27638_
                          (string->symbol
                           (string-append '":" _str-id27628_ '".ss")))
                         (_ssxi-path27640_
                          (if (if _artefact-path27636_
                                  (file-exists? _artefact-path27636_)
                                  '#f)
                              _artefact-path27636_
                              _library-path27638_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27640_)
                      (gx#import-module__% _ssxi-path27640_ '#t '#t))))))
        (if (##structure-ref _ctx27622_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27624_ _import-e27625_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27619_
      (apply make-struct-instance gxc#!type::t _$args27619_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27616_
      (apply make-struct-instance gxc#!alias::t _$args27616_)))
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
    (lambda _$args27613_
      (apply make-struct-instance gxc#!struct-type::t _$args27613_)))
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
    (lambda _$args27610_
      (apply make-struct-instance gxc#!procedure::t _$args27610_)))
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
    (lambda _$args27607_
      (apply make-struct-instance gxc#!struct-pred::t _$args27607_)))
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
    (lambda _$args27604_
      (apply make-struct-instance gxc#!struct-cons::t _$args27604_)))
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
    (lambda _$args27601_
      (apply make-struct-instance gxc#!struct-getf::t _$args27601_)))
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
    (lambda _$args27598_
      (apply make-struct-instance gxc#!struct-setf::t _$args27598_)))
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
    (lambda _$args27595_
      (apply make-struct-instance gxc#!lambda::t _$args27595_)))
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
    (lambda _$args27592_
      (apply make-struct-instance gxc#!case-lambda::t _$args27592_)))
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
    (lambda _$args27589_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27589_)))
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
    (lambda _$args27586_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27586_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27578_
             _id27579_
             _super27580_
             _fields27581_
             _xfields27582_
             _ctor27583_
             _plist27584_)
      (if (##fx< '7 (##vector-length _self27578_))
          (begin
            (##vector-set! _self27578_ '1 _id27579_)
            (##vector-set! _self27578_ '2 _super27580_)
            (##vector-set! _self27578_ '3 _fields27581_)
            (##vector-set! _self27578_ '4 _xfields27582_)
            (##vector-set! _self27578_ '5 _ctor27583_)
            (##vector-set! _self27578_ '6 _plist27584_)
            (##vector-set! _self27578_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27578_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self27422_
               _id27423_
               _arity27424_
               _dispatch27425_
               _inline27426_
               _typedecl27427_)
        (if (##fx< '5 (##vector-length _self27422_))
            (begin
              (##vector-set! _self27422_ '1 _id27423_)
              (##vector-set! _self27422_ '2 _arity27424_)
              (##vector-set! _self27422_ '3 _dispatch27425_)
              (##vector-set! _self27422_ '4 _inline27426_)
              (##vector-set! _self27422_ '5 _typedecl27427_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self27422_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self27432_ _id27433_ _arity27434_ _dispatch27435_)
          (let* ((_inline27437_ '#f) (_typedecl27439_ '#f))
            (if (##fx< '5 (##vector-length _self27432_))
                (begin
                  (##vector-set! _self27432_ '1 _id27433_)
                  (##vector-set! _self27432_ '2 _arity27434_)
                  (##vector-set! _self27432_ '3 _dispatch27435_)
                  (##vector-set! _self27432_ '4 _inline27437_)
                  (##vector-set! _self27432_ '5 _typedecl27439_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self27432_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self27441_
                 _id27442_
                 _arity27443_
                 _dispatch27444_
                 _inline27445_)
          (let ((_typedecl27447_ '#f))
            (if (##fx< '5 (##vector-length _self27441_))
                (begin
                  (##vector-set! _self27441_ '1 _id27442_)
                  (##vector-set! _self27441_ '2 _arity27443_)
                  (##vector-set! _self27441_ '3 _dispatch27444_)
                  (##vector-set! _self27441_ '4 _inline27445_)
                  (##vector-set! _self27441_ '5 _typedecl27447_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self27441_)))))
      (define gxc#!lambda:::init!
        (lambda _g27870_
          (let ((_g27869_ (length _g27870_)))
            (cond ((##fx= _g27869_ 4) (apply gxc#!lambda:::init!__0 _g27870_))
                  ((##fx= _g27869_ 5) (apply gxc#!lambda:::init!__1 _g27870_))
                  ((##fx= _g27869_ 6)
                   (apply (lambda (_self27449_
                                   _id27450_
                                   _arity27451_
                                   _dispatch27452_
                                   _inline27453_
                                   _typedecl27454_)
                            (if (##fx< '5 (##vector-length _self27449_))
                                (begin
                                  (##vector-set! _self27449_ '1 _id27450_)
                                  (##vector-set! _self27449_ '2 _arity27451_)
                                  (##vector-set!
                                   _self27449_
                                   '3
                                   _dispatch27452_)
                                  (##vector-set! _self27449_ '4 _inline27453_)
                                  (##vector-set!
                                   _self27449_
                                   '5
                                   _typedecl27454_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self27449_)))
                          _g27870_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27870_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type27292_)
      (let ((_$e27294_
             (##structure-ref _type27292_ '7 gxc#!struct-type::t '#f)))
        (if _$e27294_
            (values _$e27294_)
            (let ((_vtab27297_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type27292_
                 _vtab27297_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab27297_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type27283_ _method27284_)
      (let ((_vtab2728527287_
             (##structure-ref _type27283_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2728527287_
            (let ((_vtab27290_ _vtab2728527287_))
              (table-ref _vtab27290_ _method27284_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym27267_ _type27268_ _local?27269_)
        (begin
          (if (##structure-instance-of? _type27268_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym27267_
                     _type27268_))
          (gxc#verbose
           '"declare-type "
           _sym27267_
           '" "
           (struct->list _type27268_))
          (table-set!
           (if _local?27269_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym27267_
           _type27268_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym27274_ _type27275_)
          (let ((_local?27277_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym27274_
             _type27275_
             _local?27277_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27872_
          (let ((_g27871_ (length _g27872_)))
            (cond ((##fx= _g27871_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27872_))
                  ((##fx= _g27871_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27872_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27872_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t27243_ _method27244_ _sym27245_ _rebind?27246_)
        (let ((_type27248_ (gxc#optimizer-resolve-type _type-t27243_)))
          (if (##structure-instance-of? _type27248_ 'gxc#!struct-type::t)
              (let ((_vtab27250_ (gxc#!struct-type-vtab _type27248_)))
                (if _rebind?27246_
                    (if (hash-key? _vtab27250_ _method27244_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t27243_
                         '" "
                         _method27244_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t27243_
                         '" "
                         _method27244_))
                    (if (hash-key? _vtab27250_ _method27244_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t27243_
                           '" "
                           _method27244_
                           '" => "
                           _sym27245_)
                          (table-set! _vtab27250_ _method27244_ _sym27245_)))))
              (if (not _type27248_)
                  (gxc#verbose '"declare-method: unknown type " _type-t27243_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t27243_
                         _type27248_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t27255_ _method27256_ _sym27257_)
          (let ((_rebind?27259_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t27255_
             _method27256_
             _sym27257_
             _rebind?27259_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27874_
          (let ((_g27873_ (length _g27874_)))
            (cond ((##fx= _g27873_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27874_))
                  ((##fx= _g27873_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27874_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27874_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym27231_)
      (let ((_$e27239_
             (let ((_ht2723227234_ (gxc#current-compile-local-type)))
               (if _ht2723227234_
                   (let ((_ht27237_ _ht2723227234_))
                     (table-ref _ht27237_ _sym27231_ '#f))
                   '#f))))
        (if _$e27239_
            _$e27239_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym27231_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym27223_)
      (let ((_type2722427226_ (gxc#optimizer-lookup-type _sym27223_)))
        (if _type2722427226_
            (let ((_type27229_ _type2722427226_))
              (if (##structure-instance-of? _type27229_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type27229_ '1 gxc#!type::t '#f))
                  _type27229_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t27218_ _method27219_)
      (let ((_type27221_ (gxc#optimizer-resolve-type _type-t27218_)))
        (if (##structure-instance-of? _type27221_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type27221_ _method27219_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx27214_)
      (begin
        (gxc#apply-collect-mutators _stx27214_)
        (let ((_stx27216_ (gxc#apply-lift-top-lambdas _stx27214_)))
          (begin
            (gxc#apply-collect-type-info _stx27216_)
            (gxc#apply-optimize-call _stx27216_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl27211_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl27211_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl27211_ '%#lambda gxc#xform-identity)
           (table-set! _tbl27211_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl27211_ '%#let-values gxc#xform-identity)
           (table-set! _tbl27211_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl27211_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl27211_ '%#quote gxc#xform-identity)
           (table-set! _tbl27211_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl27211_ '%#call gxc#xform-identity)
           (table-set! _tbl27211_ '%#if gxc#xform-identity)
           (table-set! _tbl27211_ '%#ref gxc#xform-identity)
           (table-set! _tbl27211_ '%#set! gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl27211_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl27211_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl27211_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl27207_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl27207_ '%#begin gxc#xform-identity)
           (table-set! _tbl27207_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl27207_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl27207_ '%#module gxc#xform-identity)
           (table-set! _tbl27207_ '%#import gxc#xform-identity)
           (table-set! _tbl27207_ '%#export gxc#xform-identity)
           (table-set! _tbl27207_ '%#provide gxc#xform-identity)
           (table-set! _tbl27207_ '%#extern gxc#xform-identity)
           (table-set! _tbl27207_ '%#define-values gxc#xform-identity)
           (table-set! _tbl27207_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl27207_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl27207_ '%#declare gxc#xform-identity)
           _tbl27207_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl27203_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27203_ (force gxc#&identity-special-form))
           (hash-copy! _tbl27203_ (force gxc#&identity-expression))
           _tbl27203_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl27199_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl27199_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl27199_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl27199_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl27199_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl27199_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl27199_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl27199_ '%#quote gxc#xform-identity)
           (table-set! _tbl27199_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl27199_ '%#call gxc#xform-operands)
           (table-set! _tbl27199_ '%#if gxc#xform-operands)
           (table-set! _tbl27199_ '%#ref gxc#xform-identity)
           (table-set! _tbl27199_ '%#set! gxc#xform-setq%)
           (table-set! _tbl27199_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl27199_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl27199_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl27199_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl27199_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl27199_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl27199_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl27199_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl27199_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl27195_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27195_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl27195_ (force gxc#&identity))
           (table-set! _tbl27195_ '%#begin gxc#xform-begin%)
           (table-set! _tbl27195_ '%#module gxc#xform-module%)
           (table-set! _tbl27195_ '%#define-values gxc#xform-define-values%)
           _tbl27195_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl27191_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27191_ (force gxc#&void))
           (table-set! _tbl27191_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27191_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27191_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27191_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27191_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27191_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl27191_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl27191_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl27191_ '%#call gxc#collect-operands)
           (table-set! _tbl27191_ '%#if gxc#collect-operands)
           (table-set! _tbl27191_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl27191_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl27191_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl27191_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl27191_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl27191_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl27191_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl27191_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl27191_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl27191_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx27184_ . _args27186_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27184_ _args27186_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl27181_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27181_ (force gxc#&basic-xform))
           (table-set!
            _tbl27181_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl27181_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl27181_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl27181_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl27181_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx27174_ . _args27176_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27174_ _args27176_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl27171_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27171_ (force gxc#&basic-xform-expression))
           (table-set! _tbl27171_ '%#begin gxc#xform-begin%)
           (table-set! _tbl27171_ '%#ref gxc#expression-subst-ref%)
           _tbl27171_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx27164_ . _args27166_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27164_ _args27166_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl27161_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27161_ (force gxc#&void))
           (table-set! _tbl27161_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27161_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27161_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl27161_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27161_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27161_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27161_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl27161_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl27161_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl27161_ '%#call gxc#collect-type-call%)
           (table-set! _tbl27161_ '%#if gxc#collect-operands)
           (table-set! _tbl27161_ '%#set! gxc#collect-body-setq%)
           _tbl27161_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx27154_ . _args27156_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27154_ _args27156_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl27151_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27151_ (force gxc#&false))
           (table-set! _tbl27151_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl27151_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl27151_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl27151_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl27151_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl27151_ '%#ref gxc#basic-expression-type-ref%)
           _tbl27151_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx27144_ . _args27146_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27144_ _args27146_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl27141_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27141_ (force gxc#&basic-xform))
           (table-set! _tbl27141_ '%#call gxc#optimize-call%)
           _tbl27141_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx27134_ . _args27136_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27134_ _args27136_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl27131_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27131_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl27131_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl27131_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl27131_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl27131_ '%#call gxc#generate-ssxi-call%)
           _tbl27131_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx27124_ . _args27126_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27124_ _args27126_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx27121_ . _args27122_) _stx27121_))
  (define gxc#xform-wrap-source
    (lambda (_stx27118_ _src-stx27119_)
      (gx#stx-wrap-source _stx27118_ (gx#stx-source _src-stx27119_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args27112_)
      (lambda (_g2711327115_)
        (apply gxc#compile-e _g2711327115_ _args27112_))))
  (define gxc#xform-begin%
    (lambda (_stx27071_ . _args27072_)
      (let* ((_g2707427084_
              (lambda (_g2707527081_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2707527081_)))
             (_g2707327109_
              (lambda (_g2707527087_)
                (if (gx#stx-pair? _g2707527087_)
                    (let ((_e2707727089_ (gx#stx-e _g2707527087_)))
                      (let ((_hd2707827092_ (##car _e2707727089_))
                            (_tl2707927094_ (##cdr _e2707727089_)))
                        ((lambda (_L27097_)
                           (let ((_forms27107_
                                  (map (gxc#xform-apply-compile-e _args27072_)
                                       _L27097_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms27107_)
                              _stx27071_)))
                         _tl2707927094_)))
                    (_g2707427084_ _g2707527087_)))))
        (_g2707327109_ _stx27071_))))
  (define gxc#xform-module%
    (lambda (_stx27008_ . _args27009_)
      (let* ((_g2701127025_
              (lambda (_g2701227022_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2701227022_)))
             (_g2701027068_
              (lambda (_g2701227028_)
                (if (gx#stx-pair? _g2701227028_)
                    (let ((_e2701527030_ (gx#stx-e _g2701227028_)))
                      (let ((_hd2701627033_ (##car _e2701527030_))
                            (_tl2701727035_ (##cdr _e2701527030_)))
                        (if (gx#stx-pair? _tl2701727035_)
                            (let ((_e2701827038_ (gx#stx-e _tl2701727035_)))
                              (let ((_hd2701927041_ (##car _e2701827038_))
                                    (_tl2702027043_ (##cdr _e2701827038_)))
                                ((lambda (_L27046_ _L27047_)
                                   (let* ((_ctx27060_
                                           (gx#syntax-local-e__0 _L27047_))
                                          (_code27062_
                                           (##structure-ref
                                            _ctx27060_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code27065_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code27062_
                                                     _args27009_))
                                            gx#current-expander-context
                                            _ctx27060_)))
                                     (begin
                                       (##structure-set!
                                        _ctx27060_
                                        _code27065_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L27047_
                                                    (cons _code27065_ '())))
                                        _stx27008_))))
                                 _tl2702027043_
                                 _hd2701927041_)))
                            (_g2701127025_ _g2701227028_))))
                    (_g2701127025_ _g2701227028_)))))
        (_g2701027068_ _stx27008_))))
  (define gxc#xform-define-values%
    (lambda (_stx26938_ . _args26939_)
      (let* ((_g2694126958_
              (lambda (_g2694226955_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2694226955_)))
             (_g2694027005_
              (lambda (_g2694226961_)
                (if (gx#stx-pair? _g2694226961_)
                    (let ((_e2694526963_ (gx#stx-e _g2694226961_)))
                      (let ((_hd2694626966_ (##car _e2694526963_))
                            (_tl2694726968_ (##cdr _e2694526963_)))
                        (if (gx#stx-pair? _tl2694726968_)
                            (let ((_e2694826971_ (gx#stx-e _tl2694726968_)))
                              (let ((_hd2694926974_ (##car _e2694826971_))
                                    (_tl2695026976_ (##cdr _e2694826971_)))
                                (if (gx#stx-pair? _tl2695026976_)
                                    (let ((_e2695126979_
                                           (gx#stx-e _tl2695026976_)))
                                      (let ((_hd2695226982_
                                             (##car _e2695126979_))
                                            (_tl2695326984_
                                             (##cdr _e2695126979_)))
                                        (if (gx#stx-null? _tl2695326984_)
                                            ((lambda (_L26987_ _L26988_)
                                               (let ((_expr27003_
                                                      (apply gxc#compile-e
                                                             _L26987_
                                                             _args26939_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26988_
                                                              (cons _expr27003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26938_)))
                                             _hd2695226982_
                                             _hd2694926974_)
                                            (_g2694126958_ _g2694226961_))))
                                    (_g2694126958_ _g2694226961_))))
                            (_g2694126958_ _g2694226961_))))
                    (_g2694126958_ _g2694226961_)))))
        (_g2694027005_ _stx26938_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26868_ . _args26869_)
      (let* ((_g2687126888_
              (lambda (_g2687226885_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2687226885_)))
             (_g2687026935_
              (lambda (_g2687226891_)
                (if (gx#stx-pair? _g2687226891_)
                    (let ((_e2687526893_ (gx#stx-e _g2687226891_)))
                      (let ((_hd2687626896_ (##car _e2687526893_))
                            (_tl2687726898_ (##cdr _e2687526893_)))
                        (if (gx#stx-pair? _tl2687726898_)
                            (let ((_e2687826901_ (gx#stx-e _tl2687726898_)))
                              (let ((_hd2687926904_ (##car _e2687826901_))
                                    (_tl2688026906_ (##cdr _e2687826901_)))
                                (if (gx#stx-pair? _tl2688026906_)
                                    (let ((_e2688126909_
                                           (gx#stx-e _tl2688026906_)))
                                      (let ((_hd2688226912_
                                             (##car _e2688126909_))
                                            (_tl2688326914_
                                             (##cdr _e2688126909_)))
                                        (if (gx#stx-null? _tl2688326914_)
                                            ((lambda (_L26917_ _L26918_)
                                               (let ((_expr26933_
                                                      (apply gxc#compile-e
                                                             _L26917_
                                                             _args26869_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26918_
                                                              (cons _expr26933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26868_)))
                                             _hd2688226912_
                                             _hd2687926904_)
                                            (_g2687126888_ _g2687226891_))))
                                    (_g2687126888_ _g2687226891_))))
                            (_g2687126888_ _g2687226891_))))
                    (_g2687126888_ _g2687226891_)))))
        (_g2687026935_ _stx26868_))))
  (define gxc#xform-lambda%
    (lambda (_stx26811_ . _args26812_)
      (let* ((_g2681426828_
              (lambda (_g2681526825_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2681526825_)))
             (_g2681326865_
              (lambda (_g2681526831_)
                (if (gx#stx-pair? _g2681526831_)
                    (let ((_e2681826833_ (gx#stx-e _g2681526831_)))
                      (let ((_hd2681926836_ (##car _e2681826833_))
                            (_tl2682026838_ (##cdr _e2681826833_)))
                        (if (gx#stx-pair? _tl2682026838_)
                            (let ((_e2682126841_ (gx#stx-e _tl2682026838_)))
                              (let ((_hd2682226844_ (##car _e2682126841_))
                                    (_tl2682326846_ (##cdr _e2682126841_)))
                                ((lambda (_L26849_ _L26850_)
                                   (let ((_body26863_
                                          (map (gxc#xform-apply-compile-e
                                                _args26812_)
                                               _L26849_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26850_ _body26863_))
                                      _stx26811_)))
                                 _tl2682326846_
                                 _hd2682226844_)))
                            (_g2681426828_ _g2681526831_))))
                    (_g2681426828_ _g2681526831_)))))
        (_g2681326865_ _stx26811_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26724_ . _args26725_)
      (letrec ((_clause-e26727_
                (lambda (_clause26768_)
                  (let* ((_g2677026781_
                          (lambda (_g2677126778_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2677126778_)))
                         (_g2676926808_
                          (lambda (_g2677126784_)
                            (if (gx#stx-pair? _g2677126784_)
                                (let ((_e2677426786_ (gx#stx-e _g2677126784_)))
                                  (let ((_hd2677526789_ (##car _e2677426786_))
                                        (_tl2677626791_ (##cdr _e2677426786_)))
                                    ((lambda (_L26794_ _L26795_)
                                       (let ((_body26806_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26725_)
                                                   _L26794_)))
                                         (cons _L26795_ _body26806_)))
                                     _tl2677626791_
                                     _hd2677526789_)))
                                (_g2677026781_ _g2677126784_)))))
                    (_g2676926808_ _clause26768_)))))
        (let* ((_g2672926739_
                (lambda (_g2673026736_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2673026736_)))
               (_g2672826765_
                (lambda (_g2673026742_)
                  (if (gx#stx-pair? _g2673026742_)
                      (let ((_e2673226744_ (gx#stx-e _g2673026742_)))
                        (let ((_hd2673326747_ (##car _e2673226744_))
                              (_tl2673426749_ (##cdr _e2673226744_)))
                          ((lambda (_L26752_)
                             (let ((_clauses26763_
                                    (map _clause-e26727_ _L26752_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26763_)
                                _stx26724_)))
                           _tl2673426749_)))
                      (_g2672926739_ _g2673026742_)))))
          (_g2672826765_ _stx26724_)))))
  (define gxc#xform-let-values%
    (lambda (_stx26518_ . _args26519_)
      (let* ((_g2652126554_
              (lambda (_g2652226551_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2652226551_)))
             (_g2652026721_
              (lambda (_g2652226557_)
                (if (gx#stx-pair? _g2652226557_)
                    (let ((_e2652726559_ (gx#stx-e _g2652226557_)))
                      (let ((_hd2652826562_ (##car _e2652726559_))
                            (_tl2652926564_ (##cdr _e2652726559_)))
                        (if (gx#stx-pair? _tl2652926564_)
                            (let ((_e2653026567_ (gx#stx-e _tl2652926564_)))
                              (let ((_hd2653126570_ (##car _e2653026567_))
                                    (_tl2653226572_ (##cdr _e2653026567_)))
                                (if (gx#stx-pair/null? _hd2653126570_)
                                    (if (fx>= (gx#stx-length _hd2653126570_)
                                              '0)
                                        (let ((_g27875_
                                               (gx#syntax-split-splice
                                                _hd2653126570_
                                                '0)))
                                          (begin
                                            (let ((_g27876_
                                                   (if (##values? _g27875_)
                                                       (##vector-length
                                                        _g27875_)
                                                       1)))
                                              (if (not (##fx= _g27876_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27876_)))
                                            (let ((_target2653326575_
                                                   (##vector-ref _g27875_ 0))
                                                  (_tl2653526577_
                                                   (##vector-ref _g27875_ 1)))
                                              (if (gx#stx-null? _tl2653526577_)
                                                  (letrec ((_loop2653626580_
                                                            (lambda (_hd2653426583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2654026585_
                             _hd2654126587_)
                      (if (gx#stx-pair? _hd2653426583_)
                          (let ((_e2653726590_ (gx#stx-e _hd2653426583_)))
                            (let ((_lp-hd2653826593_ (##car _e2653726590_))
                                  (_lp-tl2653926595_ (##cdr _e2653726590_)))
                              (if (gx#stx-pair? _lp-hd2653826593_)
                                  (let ((_e2654426598_
                                         (gx#stx-e _lp-hd2653826593_)))
                                    (let ((_hd2654526601_
                                           (##car _e2654426598_))
                                          (_tl2654626603_
                                           (##cdr _e2654426598_)))
                                      (if (gx#stx-pair? _tl2654626603_)
                                          (let ((_e2654726606_
                                                 (gx#stx-e _tl2654626603_)))
                                            (let ((_hd2654826609_
                                                   (##car _e2654726606_))
                                                  (_tl2654926611_
                                                   (##cdr _e2654726606_)))
                                              (if (gx#stx-null? _tl2654926611_)
                                                  (_loop2653626580_
                                                   _lp-tl2653926595_
                                                   (cons _hd2654826609_
                                                         _expr2654026585_)
                                                   (cons _hd2654526601_
                                                         _hd2654126587_))
                                                  (_g2652126554_
                                                   _g2652226557_))))
                                          (_g2652126554_ _g2652226557_))))
                                  (_g2652126554_ _g2652226557_))))
                          (let ((_expr2654226614_ (reverse _expr2654026585_))
                                (_hd2654326616_ (reverse _hd2654126587_)))
                            ((lambda (_L26619_ _L26620_ _L26621_ _L26622_)
                               (let* ((_g2664126657_
                                       (lambda (_g2664226654_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2664226654_)))
                                      (_g2664026711_
                                       (lambda (_g2664226660_)
                                         (if (gx#stx-pair/null? _g2664226660_)
                                             (if (fx>= (gx#stx-length
                                                        _g2664226660_)
                                                       '0)
                                                 (let ((_g27877_
                                                        (gx#syntax-split-splice
                                                         _g2664226660_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27878_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27877_)
                        (##vector-length _g27877_)
                        1)))
               (if (not (##fx= _g27878_ 2))
                   (error "Context expects 2 values" _g27878_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2664426662_
                                                            (##vector-ref
                                                             _g27877_
                                                             0))
                                                           (_tl2664626664_
                                                            (##vector-ref
                                                             _g27877_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2664626664_)
                                                           (letrec ((_loop2664726667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2664526670_ _expr2665126672_)
                               (if (gx#stx-pair? _hd2664526670_)
                                   (let ((_e2664826675_
                                          (gx#syntax-e _hd2664526670_)))
                                     (let ((_lp-hd2664926678_
                                            (##car _e2664826675_))
                                           (_lp-tl2665026680_
                                            (##cdr _e2664826675_)))
                                       (_loop2664726667_
                                        _lp-tl2665026680_
                                        (cons _lp-hd2664926678_
                                              _expr2665126672_))))
                                   (let ((_expr2665226683_
                                          (reverse _expr2665126672_)))
                                     ((lambda (_L26686_)
                                        (let ()
                                          (let ((_body26699_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26519_)
                                                      _L26619_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26622_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26686_
                                                            _L26621_)
                                                           (foldr2 (lambda (_g2670026704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2670126706_
                                    _g2670226708_)
                             (cons (cons _g2670126706_
                                         (cons _g2670026704_ '()))
                                   _g2670226708_))
                           '()
                           _L26686_
                           _L26621_))
                 _body26699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx26518_))))
                                      _expr2665226683_))))))
                     (_loop2664726667_ _target2664426662_ '()))
                   (_g2664126657_ _g2664226660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2664126657_ _g2664226660_))
                                             (_g2664126657_ _g2664226660_)))))
                                 (_g2664026711_
                                  (map (gxc#xform-apply-compile-e _args26519_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2671326716_
                                                          _g2671426718_)
                                                   (cons _g2671326716_
                                                         _g2671426718_))
                                                 '()
                                                 _L26620_))))))
                             _tl2653226572_
                             _expr2654226614_
                             _hd2654326616_
                             _hd2652826562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2653626580_
                                                     _target2653326575_
                                                     '()
                                                     '()))
                                                  (_g2652126554_
                                                   _g2652226557_)))))
                                        (_g2652126554_ _g2652226557_))
                                    (_g2652126554_ _g2652226557_))))
                            (_g2652126554_ _g2652226557_))))
                    (_g2652126554_ _g2652226557_)))))
        (_g2652026721_ _stx26518_))))
  (define gxc#xform-operands
    (lambda (_stx26474_ . _args26475_)
      (let* ((_g2647726488_
              (lambda (_g2647826485_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2647826485_)))
             (_g2647626515_
              (lambda (_g2647826491_)
                (if (gx#stx-pair? _g2647826491_)
                    (let ((_e2648126493_ (gx#stx-e _g2647826491_)))
                      (let ((_hd2648226496_ (##car _e2648126493_))
                            (_tl2648326498_ (##cdr _e2648126493_)))
                        ((lambda (_L26501_ _L26502_)
                           (let ((_rands26513_
                                  (map (gxc#xform-apply-compile-e _args26475_)
                                       _L26501_)))
                             (gxc#xform-wrap-source
                              (cons _L26502_ _rands26513_)
                              _stx26474_)))
                         _tl2648326498_
                         _hd2648226496_)))
                    (_g2647726488_ _g2647826491_)))))
        (_g2647626515_ _stx26474_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx26404_ . _args26405_)
      (let* ((_g2640726424_
              (lambda (_g2640826421_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2640826421_)))
             (_g2640626471_
              (lambda (_g2640826427_)
                (if (gx#stx-pair? _g2640826427_)
                    (let ((_e2641126429_ (gx#stx-e _g2640826427_)))
                      (let ((_hd2641226432_ (##car _e2641126429_))
                            (_tl2641326434_ (##cdr _e2641126429_)))
                        (if (gx#stx-pair? _tl2641326434_)
                            (let ((_e2641426437_ (gx#stx-e _tl2641326434_)))
                              (let ((_hd2641526440_ (##car _e2641426437_))
                                    (_tl2641626442_ (##cdr _e2641426437_)))
                                (if (gx#stx-pair? _tl2641626442_)
                                    (let ((_e2641726445_
                                           (gx#stx-e _tl2641626442_)))
                                      (let ((_hd2641826448_
                                             (##car _e2641726445_))
                                            (_tl2641926450_
                                             (##cdr _e2641726445_)))
                                        (if (gx#stx-null? _tl2641926450_)
                                            ((lambda (_L26453_ _L26454_)
                                               (let ((_expr26469_
                                                      (apply gxc#compile-e
                                                             _L26453_
                                                             _args26405_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L26454_
                                                              (cons _expr26469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26404_)))
                                             _hd2641826448_
                                             _hd2641526440_)
                                            (_g2640726424_ _g2640826427_))))
                                    (_g2640726424_ _g2640826427_))))
                            (_g2640726424_ _g2640826427_))))
                    (_g2640726424_ _g2640826427_)))))
        (_g2640626471_ _stx26404_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx26335_)
      (let* ((_g2633726354_
              (lambda (_g2633826351_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2633826351_)))
             (_g2633626401_
              (lambda (_g2633826357_)
                (if (gx#stx-pair? _g2633826357_)
                    (let ((_e2634126359_ (gx#stx-e _g2633826357_)))
                      (let ((_hd2634226362_ (##car _e2634126359_))
                            (_tl2634326364_ (##cdr _e2634126359_)))
                        (if (gx#stx-pair? _tl2634326364_)
                            (let ((_e2634426367_ (gx#stx-e _tl2634326364_)))
                              (let ((_hd2634526370_ (##car _e2634426367_))
                                    (_tl2634626372_ (##cdr _e2634426367_)))
                                (if (gx#stx-pair? _tl2634626372_)
                                    (let ((_e2634726375_
                                           (gx#stx-e _tl2634626372_)))
                                      (let ((_hd2634826378_
                                             (##car _e2634726375_))
                                            (_tl2634926380_
                                             (##cdr _e2634726375_)))
                                        (if (gx#stx-null? _tl2634926380_)
                                            ((lambda (_L26383_ _L26384_)
                                               (let ((_sym26399_
                                                      (gxc#identifier-symbol
                                                       _L26384_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym26399_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym26399_
                                                    '#t)
                                                   (gxc#compile-e _L26383_))))
                                             _hd2634826378_
                                             _hd2634526370_)
                                            (_g2633726354_ _g2633826357_))))
                                    (_g2633726354_ _g2633826357_))))
                            (_g2633726354_ _g2633826357_))))
                    (_g2633726354_ _g2633826357_)))))
        (_g2633626401_ _stx26335_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25569_)
      (let* ((_g2557425731_
              (lambda (_g2557525728_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2557525728_)))
             (_g2557325738_ (lambda (_g2557525734_) ((lambda () '#f))))
             (_g2557225878_
              (lambda (_g2557525741_)
                (if (gx#stx-pair? _g2557525741_)
                    (let ((_e2569125743_ (gx#stx-e _g2557525741_)))
                      (let ((_hd2569225746_ (##car _e2569125743_))
                            (_tl2569325748_ (##cdr _e2569125743_)))
                        (if (gx#stx-pair? _tl2569325748_)
                            (let ((_e2569425751_ (gx#stx-e _tl2569325748_)))
                              (let ((_hd2569525754_ (##car _e2569425751_))
                                    (_tl2569625756_ (##cdr _e2569425751_)))
                                (if (gx#stx-pair? _hd2569525754_)
                                    (let ((_e2569725759_
                                           (gx#stx-e _hd2569525754_)))
                                      (let ((_hd2569825762_
                                             (##car _e2569725759_))
                                            (_tl2569925764_
                                             (##cdr _e2569725759_)))
                                        (if (gx#identifier? _hd2569825762_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2569825762_)
                                                (if (gx#stx-pair?
                                                     _tl2569925764_)
                                                    (let ((_e2570025767_
                                                           (gx#stx-e
                                                            _tl2569925764_)))
                                                      (let ((_hd2570125770_
                                                             (##car _e2570025767_))
                                                            (_tl2570225772_
                                                             (##cdr _e2570025767_)))
                                                        (if (gx#stx-pair?
                                                             _hd2570125770_)
                                                            (let ((_e2570325775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2570125770_)))
                      (let ((_hd2570425778_ (##car _e2570325775_))
                            (_tl2570525780_ (##cdr _e2570325775_)))
                        (if (gx#identifier? _hd2570425778_)
                            (if (gx#stx-eq? '%#ref _hd2570425778_)
                                (if (gx#stx-pair? _tl2570525780_)
                                    (let ((_e2570625783_
                                           (gx#stx-e _tl2570525780_)))
                                      (let ((_hd2570725786_
                                             (##car _e2570625783_))
                                            (_tl2570825788_
                                             (##cdr _e2570625783_)))
                                        (if (gx#stx-null? _tl2570825788_)
                                            (if (gx#stx-pair? _tl2570225772_)
                                                (let ((_e2570925791_
                                                       (gx#stx-e
                                                        _tl2570225772_)))
                                                  (let ((_hd2571025794_
                                                         (##car _e2570925791_))
                                                        (_tl2571125796_
                                                         (##cdr _e2570925791_)))
                                                    (if (gx#stx-pair?
                                                         _hd2571025794_)
                                                        (let ((_e2571225799_
                                                               (gx#stx-e
                                                                _hd2571025794_)))
                                                          (let ((_hd2571325802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2571225799_))
                        (_tl2571425804_ (##cdr _e2571225799_)))
                    (if (gx#identifier? _hd2571325802_)
                        (if (gx#stx-eq? '%#ref _hd2571325802_)
                            (if (gx#stx-pair? _tl2571425804_)
                                (let ((_e2571525807_
                                       (gx#stx-e _tl2571425804_)))
                                  (let ((_hd2571625810_ (##car _e2571525807_))
                                        (_tl2571725812_ (##cdr _e2571525807_)))
                                    (if (gx#stx-null? _tl2571725812_)
                                        (if (gx#stx-pair? _tl2571125796_)
                                            (let ((_e2571825815_
                                                   (gx#stx-e _tl2571125796_)))
                                              (let ((_hd2571925818_
                                                     (##car _e2571825815_))
                                                    (_tl2572025820_
                                                     (##cdr _e2571825815_)))
                                                (if (gx#stx-pair?
                                                     _hd2571925818_)
                                                    (let ((_e2572125823_
                                                           (gx#stx-e
                                                            _hd2571925818_)))
                                                      (let ((_hd2572225826_
                                                             (##car _e2572125823_))
                                                            (_tl2572325828_
                                                             (##cdr _e2572125823_)))
                                                        (if (gx#identifier?
                                                             _hd2572225826_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2572225826_)
                        (if (gx#stx-pair? _tl2572325828_)
                            (let ((_e2572425831_ (gx#stx-e _tl2572325828_)))
                              (let ((_hd2572525834_ (##car _e2572425831_))
                                    (_tl2572625836_ (##cdr _e2572425831_)))
                                (if (gx#stx-null? _tl2572625836_)
                                    (if (gx#stx-null? _tl2572025820_)
                                        (if (gx#stx-null? _tl2569625756_)
                                            ((lambda (_L25839_
                                                      _L25840_
                                                      _L25841_
                                                      _L25842_)
                                               (if (if (gx#identifier?
                                                        _L25842_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L25841_
                                                            'apply)
                                                           (if (gx#free-identifier=?
                                                                _L25842_
                                                                _L25839_)
                                                               (not (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L25840_
                             _L25842_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2557325738_
                                                    _g2557525741_)))
                                             _hd2572525834_
                                             _hd2571625810_
                                             _hd2570725786_
                                             _hd2569225746_)
                                            (_g2557325738_ _g2557525741_))
                                        (_g2557325738_ _g2557525741_))
                                    (_g2557325738_ _g2557525741_))))
                            (_g2557325738_ _g2557525741_))
                        (_g2557325738_ _g2557525741_))
                    (_g2557325738_ _g2557525741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2557325738_
                                                     _g2557525741_))))
                                            (_g2557325738_ _g2557525741_))
                                        (_g2557325738_ _g2557525741_))))
                                (_g2557325738_ _g2557525741_))
                            (_g2557325738_ _g2557525741_))
                        (_g2557325738_ _g2557525741_))))
                (_g2557325738_ _g2557525741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557325738_ _g2557525741_))
                                            (_g2557325738_ _g2557525741_))))
                                    (_g2557325738_ _g2557525741_))
                                (_g2557325738_ _g2557525741_))
                            (_g2557325738_ _g2557525741_))))
                    (_g2557325738_ _g2557525741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2557325738_
                                                     _g2557525741_))
                                                (_g2557325738_ _g2557525741_))
                                            (_g2557325738_ _g2557525741_))))
                                    (_g2557325738_ _g2557525741_))))
                            (_g2557325738_ _g2557525741_))))
                    (_g2557325738_ _g2557525741_))))
             (_g2557126138_
              (lambda (_g2557525881_)
                (if (gx#stx-pair? _g2557525881_)
                    (let ((_e2562725883_ (gx#stx-e _g2557525881_)))
                      (let ((_hd2562825886_ (##car _e2562725883_))
                            (_tl2562925888_ (##cdr _e2562725883_)))
                        (if (gx#stx-pair/null? _hd2562825886_)
                            (if (fx>= (gx#stx-length _hd2562825886_) '0)
                                (let ((_g27879_
                                       (gx#syntax-split-splice
                                        _hd2562825886_
                                        '0)))
                                  (begin
                                    (let ((_g27880_
                                           (if (##values? _g27879_)
                                               (##vector-length _g27879_)
                                               1)))
                                      (if (not (##fx= _g27880_ 2))
                                          (error "Context expects 2 values"
                                                 _g27880_)))
                                    (let ((_target2563025891_
                                           (##vector-ref _g27879_ 0))
                                          (_tl2563225893_
                                           (##vector-ref _g27879_ 1)))
                                      (letrec ((_loop2563325896_
                                                (lambda (_hd2563125899_
                                                         _arg2563725901_)
                                                  (if (gx#stx-pair?
                                                       _hd2563125899_)
                                                      (let ((_e2563425904_
                                                             (gx#stx-e
                                                              _hd2563125899_)))
                                                        (let ((_lp-hd2563525907_
                                                               (##car _e2563425904_))
                                                              (_lp-tl2563625909_
                                                               (##cdr _e2563425904_)))
                                                          (_loop2563325896_
                                                           _lp-tl2563625909_
                                                           (cons _lp-hd2563525907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2563725901_))))
              (let ((_arg2563825912_ (reverse _arg2563725901_)))
                (if (gx#stx-pair? _tl2562925888_)
                    (let ((_e2563925915_ (gx#stx-e _tl2562925888_)))
                      (let ((_hd2564025918_ (##car _e2563925915_))
                            (_tl2564125920_ (##cdr _e2563925915_)))
                        (if (gx#stx-pair? _hd2564025918_)
                            (let ((_e2564225923_ (gx#stx-e _hd2564025918_)))
                              (let ((_hd2564325926_ (##car _e2564225923_))
                                    (_tl2564425928_ (##cdr _e2564225923_)))
                                (if (gx#identifier? _hd2564325926_)
                                    (if (gx#stx-eq? '%#call _hd2564325926_)
                                        (if (gx#stx-pair? _tl2564425928_)
                                            (let ((_e2564525931_
                                                   (gx#stx-e _tl2564425928_)))
                                              (let ((_hd2564625934_
                                                     (##car _e2564525931_))
                                                    (_tl2564725936_
                                                     (##cdr _e2564525931_)))
                                                (if (gx#stx-pair?
                                                     _hd2564625934_)
                                                    (let ((_e2564825939_
                                                           (gx#stx-e
                                                            _hd2564625934_)))
                                                      (let ((_hd2564925942_
                                                             (##car _e2564825939_))
                                                            (_tl2565025944_
                                                             (##cdr _e2564825939_)))
                                                        (if (gx#identifier?
                                                             _hd2564925942_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2564925942_)
                        (if (gx#stx-pair? _tl2565025944_)
                            (let ((_e2565125947_ (gx#stx-e _tl2565025944_)))
                              (let ((_hd2565225950_ (##car _e2565125947_))
                                    (_tl2565325952_ (##cdr _e2565125947_)))
                                (if (gx#stx-null? _tl2565325952_)
                                    (if (gx#stx-pair? _tl2564725936_)
                                        (let ((_e2565425955_
                                               (gx#stx-e _tl2564725936_)))
                                          (let ((_hd2565525958_
                                                 (##car _e2565425955_))
                                                (_tl2565625960_
                                                 (##cdr _e2565425955_)))
                                            (if (gx#stx-pair? _hd2565525958_)
                                                (let ((_e2565725963_
                                                       (gx#stx-e
                                                        _hd2565525958_)))
                                                  (let ((_hd2565825966_
                                                         (##car _e2565725963_))
                                                        (_tl2565925968_
                                                         (##cdr _e2565725963_)))
                                                    (if (gx#identifier?
                                                         _hd2565825966_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2565825966_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2565925968_)
                        (let ((_e2566025971_ (gx#stx-e _tl2565925968_)))
                          (let ((_hd2566125974_ (##car _e2566025971_))
                                (_tl2566225976_ (##cdr _e2566025971_)))
                            (if (gx#stx-null? _tl2566225976_)
                                (if (gx#stx-pair/null? _tl2565625960_)
                                    (if (fx>= (gx#stx-length _tl2565625960_)
                                              '1)
                                        (let ((_g27881_
                                               (gx#syntax-split-splice
                                                _tl2565625960_
                                                '1)))
                                          (begin
                                            (let ((_g27882_
                                                   (if (##values? _g27881_)
                                                       (##vector-length
                                                        _g27881_)
                                                       1)))
                                              (if (not (##fx= _g27882_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27882_)))
                                            (let ((_target2566325979_
                                                   (##vector-ref _g27881_ 0))
                                                  (_tl2566525981_
                                                   (##vector-ref _g27881_ 1)))
                                              (if (gx#stx-pair? _tl2566525981_)
                                                  (let ((_e2567225984_
                                                         (gx#stx-e
                                                          _tl2566525981_)))
                                                    (let ((_hd2567325987_
                                                           (##car _e2567225984_))
                                                          (_tl2567425989_
                                                           (##cdr _e2567225984_)))
                                                      (if (gx#stx-pair?
                                                           _hd2567325987_)
                                                          (let ((_e2567525992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2567325987_)))
                    (let ((_hd2567625995_ (##car _e2567525992_))
                          (_tl2567725997_ (##cdr _e2567525992_)))
                      (if (gx#identifier? _hd2567625995_)
                          (if (gx#stx-eq? '%#ref _hd2567625995_)
                              (if (gx#stx-pair? _tl2567725997_)
                                  (let ((_e2567826000_
                                         (gx#stx-e _tl2567725997_)))
                                    (let ((_hd2567926003_
                                           (##car _e2567826000_))
                                          (_tl2568026005_
                                           (##cdr _e2567826000_)))
                                      (if (gx#stx-null? _tl2568026005_)
                                          (if (gx#stx-null? _tl2567425989_)
                                              (letrec ((_loop2566626008_
                                                        (lambda (_hd2566426011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2567026013_)
                  (if (gx#stx-pair? _hd2566426011_)
                      (let ((_e2566726016_ (gx#stx-e _hd2566426011_)))
                        (let ((_lp-hd2566826019_ (##car _e2566726016_))
                              (_lp-tl2566926021_ (##cdr _e2566726016_)))
                          (if (gx#stx-pair? _lp-hd2566826019_)
                              (let ((_e2568126024_
                                     (gx#stx-e _lp-hd2566826019_)))
                                (let ((_hd2568226027_ (##car _e2568126024_))
                                      (_tl2568326029_ (##cdr _e2568126024_)))
                                  (if (gx#identifier? _hd2568226027_)
                                      (if (gx#stx-eq? '%#ref _hd2568226027_)
                                          (if (gx#stx-pair? _tl2568326029_)
                                              (let ((_e2568426032_
                                                     (gx#stx-e
                                                      _tl2568326029_)))
                                                (let ((_hd2568526035_
                                                       (##car _e2568426032_))
                                                      (_tl2568626037_
                                                       (##cdr _e2568426032_)))
                                                  (if (gx#stx-null?
                                                       _tl2568626037_)
                                                      (_loop2566626008_
                                                       _lp-tl2566926021_
                                                       (cons _hd2568526035_
                                                             _xarg2567026013_))
                                                      (_g2557225878_
                                                       _g2557525881_))))
                                              (_g2557225878_ _g2557525881_))
                                          (_g2557225878_ _g2557525881_))
                                      (_g2557225878_ _g2557525881_))))
                              (_g2557225878_ _g2557525881_))))
                      (let ((_xarg2567126040_ (reverse _xarg2567026013_)))
                        (if (gx#stx-null? _tl2564125920_)
                            ((lambda (_L26043_
                                      _L26044_
                                      _L26045_
                                      _L26046_
                                      _L26047_
                                      _L26048_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2609126094_
                                                           _g2609226096_)
                                                    (cons _g2609126094_
                                                          _g2609226096_))
                                                  '()
                                                  _L26048_)))
                                       (if (gx#identifier? _L26047_)
                                           (if (gxc#runtime-identifier=?
                                                _L26046_
                                                'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2609826101_ _g2609926103_)
                                    (cons _g2609826101_ _g2609926103_))
                                  '()
                                  _L26048_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2610526108_ _g2610626110_)
                                    (cons _g2610526108_ _g2610626110_))
                                  '()
                                  _L26044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2611226115_ _g2611326117_)
                                    (cons _g2611226115_ _g2611326117_))
                                  '()
                                  _L26048_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2611926122_ _g2612026124_)
                                    (cons _g2611926122_ _g2612026124_))
                                  '()
                                  _L26044_)))
               (if (gx#free-identifier=? _L26047_ _L26043_)
                   (not (find (lambda (_g2612626128_)
                                (gx#free-identifier=? _g2612626128_ _L26045_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2613026133_ _g2613126135_)
                                          (cons _g2613026133_ _g2613126135_))
                                        (cons _L26047_ '())
                                        _L26048_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2557225878_ _g2557525881_)))
                             _hd2567926003_
                             _xarg2567126040_
                             _hd2566125974_
                             _hd2565225950_
                             _tl2563225893_
                             _arg2563825912_)
                            (_g2557225878_ _g2557525881_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2566626008_
                                                 _target2566325979_
                                                 '()))
                                              (_g2557225878_ _g2557525881_))
                                          (_g2557225878_ _g2557525881_))))
                                  (_g2557225878_ _g2557525881_))
                              (_g2557225878_ _g2557525881_))
                          (_g2557225878_ _g2557525881_))))
                  (_g2557225878_ _g2557525881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2557225878_
                                                   _g2557525881_)))))
                                        (_g2557225878_ _g2557525881_))
                                    (_g2557225878_ _g2557525881_))
                                (_g2557225878_ _g2557525881_))))
                        (_g2557225878_ _g2557525881_))
                    (_g2557225878_ _g2557525881_))
                (_g2557225878_ _g2557525881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557225878_
                                                 _g2557525881_))))
                                        (_g2557225878_ _g2557525881_))
                                    (_g2557225878_ _g2557525881_))))
                            (_g2557225878_ _g2557525881_))
                        (_g2557225878_ _g2557525881_))
                    (_g2557225878_ _g2557525881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2557225878_
                                                     _g2557525881_))))
                                            (_g2557225878_ _g2557525881_))
                                        (_g2557225878_ _g2557525881_))
                                    (_g2557225878_ _g2557525881_))))
                            (_g2557225878_ _g2557525881_))))
                    (_g2557225878_ _g2557525881_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2563325896_
                                         _target2563025891_
                                         '())))))
                                (_g2557225878_ _g2557525881_))
                            (_g2557225878_ _g2557525881_))))
                    (_g2557225878_ _g2557525881_))))
             (_g2557026332_
              (lambda (_g2557526141_)
                (if (gx#stx-pair? _g2557526141_)
                    (let ((_e2557926143_ (gx#stx-e _g2557526141_)))
                      (let ((_hd2558026146_ (##car _e2557926143_))
                            (_tl2558126148_ (##cdr _e2557926143_)))
                        (if (gx#stx-pair/null? _hd2558026146_)
                            (if (fx>= (gx#stx-length _hd2558026146_) '0)
                                (let ((_g27883_
                                       (gx#syntax-split-splice
                                        _hd2558026146_
                                        '0)))
                                  (begin
                                    (let ((_g27884_
                                           (if (##values? _g27883_)
                                               (##vector-length _g27883_)
                                               1)))
                                      (if (not (##fx= _g27884_ 2))
                                          (error "Context expects 2 values"
                                                 _g27884_)))
                                    (let ((_target2558226151_
                                           (##vector-ref _g27883_ 0))
                                          (_tl2558426153_
                                           (##vector-ref _g27883_ 1)))
                                      (if (gx#stx-null? _tl2558426153_)
                                          (letrec ((_loop2558526156_
                                                    (lambda (_hd2558326159_
                                                             _arg2558926161_)
                                                      (if (gx#stx-pair?
                                                           _hd2558326159_)
                                                          (let ((_e2558626164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2558326159_)))
                    (let ((_lp-hd2558726167_ (##car _e2558626164_))
                          (_lp-tl2558826169_ (##cdr _e2558626164_)))
                      (_loop2558526156_
                       _lp-tl2558826169_
                       (cons _lp-hd2558726167_ _arg2558926161_))))
                  (let ((_arg2559026172_ (reverse _arg2558926161_)))
                    (if (gx#stx-pair? _tl2558126148_)
                        (let ((_e2559126175_ (gx#stx-e _tl2558126148_)))
                          (let ((_hd2559226178_ (##car _e2559126175_))
                                (_tl2559326180_ (##cdr _e2559126175_)))
                            (if (gx#stx-pair? _hd2559226178_)
                                (let ((_e2559426183_
                                       (gx#stx-e _hd2559226178_)))
                                  (let ((_hd2559526186_ (##car _e2559426183_))
                                        (_tl2559626188_ (##cdr _e2559426183_)))
                                    (if (gx#identifier? _hd2559526186_)
                                        (if (gx#stx-eq? '%#call _hd2559526186_)
                                            (if (gx#stx-pair? _tl2559626188_)
                                                (let ((_e2559726191_
                                                       (gx#stx-e
                                                        _tl2559626188_)))
                                                  (let ((_hd2559826194_
                                                         (##car _e2559726191_))
                                                        (_tl2559926196_
                                                         (##cdr _e2559726191_)))
                                                    (if (gx#stx-pair?
                                                         _hd2559826194_)
                                                        (let ((_e2560026199_
                                                               (gx#stx-e
                                                                _hd2559826194_)))
                                                          (let ((_hd2560126202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2560026199_))
                        (_tl2560226204_ (##cdr _e2560026199_)))
                    (if (gx#identifier? _hd2560126202_)
                        (if (gx#stx-eq? '%#ref _hd2560126202_)
                            (if (gx#stx-pair? _tl2560226204_)
                                (let ((_e2560326207_
                                       (gx#stx-e _tl2560226204_)))
                                  (let ((_hd2560426210_ (##car _e2560326207_))
                                        (_tl2560526212_ (##cdr _e2560326207_)))
                                    (if (gx#stx-null? _tl2560526212_)
                                        (if (gx#stx-pair/null? _tl2559926196_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2559926196_)
                                                      '0)
                                                (let ((_g27885_
                                                       (gx#syntax-split-splice
                                                        _tl2559926196_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27886_
                                                           (if (##values?
                                                                _g27885_)
                                                               (##vector-length
                                                                _g27885_)
                                                               1)))
                                                      (if (not (##fx= _g27886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g27886_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2560626215_
                                                           (##vector-ref
                                                            _g27885_
                                                            0))
                                                          (_tl2560826217_
                                                           (##vector-ref
                                                            _g27885_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2560826217_)
                                                          (letrec ((_loop2560926220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2560726223_ _xarg2561326225_)
                              (if (gx#stx-pair? _hd2560726223_)
                                  (let ((_e2561026228_
                                         (gx#stx-e _hd2560726223_)))
                                    (let ((_lp-hd2561126231_
                                           (##car _e2561026228_))
                                          (_lp-tl2561226233_
                                           (##cdr _e2561026228_)))
                                      (if (gx#stx-pair? _lp-hd2561126231_)
                                          (let ((_e2561526236_
                                                 (gx#stx-e _lp-hd2561126231_)))
                                            (let ((_hd2561626239_
                                                   (##car _e2561526236_))
                                                  (_tl2561726241_
                                                   (##cdr _e2561526236_)))
                                              (if (gx#identifier?
                                                   _hd2561626239_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2561626239_)
                                                      (if (gx#stx-pair?
                                                           _tl2561726241_)
                                                          (let ((_e2561826244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2561726241_)))
                    (let ((_hd2561926247_ (##car _e2561826244_))
                          (_tl2562026249_ (##cdr _e2561826244_)))
                      (if (gx#stx-null? _tl2562026249_)
                          (_loop2560926220_
                           _lp-tl2561226233_
                           (cons _hd2561926247_ _xarg2561326225_))
                          (_g2557126138_ _g2557526141_))))
                  (_g2557126138_ _g2557526141_))
              (_g2557126138_ _g2557526141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2557126138_
                                                   _g2557526141_))))
                                          (_g2557126138_ _g2557526141_))))
                                  (let ((_xarg2561426252_
                                         (reverse _xarg2561326225_)))
                                    (if (gx#stx-null? _tl2559326180_)
                                        ((lambda (_L26255_ _L26256_ _L26257_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2628526288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2628626290_)
                        (cons _g2628526288_ _g2628626290_))
                      '()
                      _L26257_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2629226295_ _g2629326297_)
                                        (cons _g2629226295_ _g2629326297_))
                                      '()
                                      _L26257_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2629926302_ _g2630026304_)
                                        (cons _g2629926302_ _g2630026304_))
                                      '()
                                      _L26255_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2630626309_ _g2630726311_)
                                        (cons _g2630626309_ _g2630726311_))
                                      '()
                                      _L26257_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2631326316_ _g2631426318_)
                                        (cons _g2631326316_ _g2631426318_))
                                      '()
                                      _L26255_)))
                   (not (find (lambda (_g2632026322_)
                                (gx#free-identifier=? _g2632026322_ _L26256_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2632426327_ _g2632526329_)
                                          (cons _g2632426327_ _g2632526329_))
                                        '()
                                        _L26257_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2557126138_ _g2557526141_)))
                                         _xarg2561426252_
                                         _hd2560426210_
                                         _arg2559026172_)
                                        (_g2557126138_ _g2557526141_)))))))
                    (_loop2560926220_ _target2560626215_ '()))
                  (_g2557126138_ _g2557526141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557126138_ _g2557526141_))
                                            (_g2557126138_ _g2557526141_))
                                        (_g2557126138_ _g2557526141_))))
                                (_g2557126138_ _g2557526141_))
                            (_g2557126138_ _g2557526141_))
                        (_g2557126138_ _g2557526141_))))
                (_g2557126138_ _g2557526141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557126138_ _g2557526141_))
                                            (_g2557126138_ _g2557526141_))
                                        (_g2557126138_ _g2557526141_))))
                                (_g2557126138_ _g2557526141_))))
                        (_g2557126138_ _g2557526141_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2558526156_
                                             _target2558226151_
                                             '()))
                                          (_g2557126138_ _g2557526141_)))))
                                (_g2557126138_ _g2557526141_))
                            (_g2557126138_ _g2557526141_))))
                    (_g2557126138_ _g2557526141_)))))
        (_g2557026332_ _form25569_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form25037_)
      (let* ((_g2504125165_
              (lambda (_g2504225162_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2504225162_)))
             (_g2504025282_
              (lambda (_g2504225168_)
                (if (gx#stx-pair? _g2504225168_)
                    (let ((_e2513125170_ (gx#stx-e _g2504225168_)))
                      (let ((_hd2513225173_ (##car _e2513125170_))
                            (_tl2513325175_ (##cdr _e2513125170_)))
                        (if (gx#stx-pair? _tl2513325175_)
                            (let ((_e2513425178_ (gx#stx-e _tl2513325175_)))
                              (let ((_hd2513525181_ (##car _e2513425178_))
                                    (_tl2513625183_ (##cdr _e2513425178_)))
                                (if (gx#stx-pair? _hd2513525181_)
                                    (let ((_e2513725186_
                                           (gx#stx-e _hd2513525181_)))
                                      (let ((_hd2513825189_
                                             (##car _e2513725186_))
                                            (_tl2513925191_
                                             (##cdr _e2513725186_)))
                                        (if (gx#identifier? _hd2513825189_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2513825189_)
                                                (if (gx#stx-pair?
                                                     _tl2513925191_)
                                                    (let ((_e2514025194_
                                                           (gx#stx-e
                                                            _tl2513925191_)))
                                                      (let ((_hd2514125197_
                                                             (##car _e2514025194_))
                                                            (_tl2514225199_
                                                             (##cdr _e2514025194_)))
                                                        (if (gx#stx-pair?
                                                             _hd2514125197_)
                                                            (let ((_e2514325202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2514125197_)))
                      (let ((_hd2514425205_ (##car _e2514325202_))
                            (_tl2514525207_ (##cdr _e2514325202_)))
                        (if (gx#identifier? _hd2514425205_)
                            (if (gx#stx-eq? '%#ref _hd2514425205_)
                                (if (gx#stx-pair? _tl2514525207_)
                                    (let ((_e2514625210_
                                           (gx#stx-e _tl2514525207_)))
                                      (let ((_hd2514725213_
                                             (##car _e2514625210_))
                                            (_tl2514825215_
                                             (##cdr _e2514625210_)))
                                        (if (gx#stx-null? _tl2514825215_)
                                            (if (gx#stx-pair? _tl2514225199_)
                                                (let ((_e2514925218_
                                                       (gx#stx-e
                                                        _tl2514225199_)))
                                                  (let ((_hd2515025221_
                                                         (##car _e2514925218_))
                                                        (_tl2515125223_
                                                         (##cdr _e2514925218_)))
                                                    (if (gx#stx-pair?
                                                         _hd2515025221_)
                                                        (let ((_e2515225226_
                                                               (gx#stx-e
                                                                _hd2515025221_)))
                                                          (let ((_hd2515325229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2515225226_))
                        (_tl2515425231_ (##cdr _e2515225226_)))
                    (if (gx#identifier? _hd2515325229_)
                        (if (gx#stx-eq? '%#ref _hd2515325229_)
                            (if (gx#stx-pair? _tl2515425231_)
                                (let ((_e2515525234_
                                       (gx#stx-e _tl2515425231_)))
                                  (let ((_hd2515625237_ (##car _e2515525234_))
                                        (_tl2515725239_ (##cdr _e2515525234_)))
                                    (if (gx#stx-null? _tl2515725239_)
                                        (if (gx#stx-pair? _tl2515125223_)
                                            (let ((_e2515825242_
                                                   (gx#stx-e _tl2515125223_)))
                                              (let ((_hd2515925245_
                                                     (##car _e2515825242_))
                                                    (_tl2516025247_
                                                     (##cdr _e2515825242_)))
                                                (if (gx#stx-null?
                                                     _tl2516025247_)
                                                    (if (gx#stx-null?
                                                         _tl2513625183_)
                                                        ((lambda (_L25250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L25251_
                          _L25252_)
                   (gxc#identifier-symbol _L25250_))
                 _hd2515625237_
                 _hd2514725213_
                 _hd2513225173_)
                (_g2504125165_ _g2504225168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2504125165_
                                                     _g2504225168_))))
                                            (_g2504125165_ _g2504225168_))
                                        (_g2504125165_ _g2504225168_))))
                                (_g2504125165_ _g2504225168_))
                            (_g2504125165_ _g2504225168_))
                        (_g2504125165_ _g2504225168_))))
                (_g2504125165_ _g2504225168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2504125165_ _g2504225168_))
                                            (_g2504125165_ _g2504225168_))))
                                    (_g2504125165_ _g2504225168_))
                                (_g2504125165_ _g2504225168_))
                            (_g2504125165_ _g2504225168_))))
                    (_g2504125165_ _g2504225168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2504125165_
                                                     _g2504225168_))
                                                (_g2504125165_ _g2504225168_))
                                            (_g2504125165_ _g2504225168_))))
                                    (_g2504125165_ _g2504225168_))))
                            (_g2504125165_ _g2504225168_))))
                    (_g2504125165_ _g2504225168_))))
             (_g2503925418_
              (lambda (_g2504225285_)
                (if (gx#stx-pair? _g2504225285_)
                    (let ((_e2509225287_ (gx#stx-e _g2504225285_)))
                      (let ((_hd2509325290_ (##car _e2509225287_))
                            (_tl2509425292_ (##cdr _e2509225287_)))
                        (if (gx#stx-pair/null? _hd2509325290_)
                            (if (fx>= (gx#stx-length _hd2509325290_) '0)
                                (let ((_g27887_
                                       (gx#syntax-split-splice
                                        _hd2509325290_
                                        '0)))
                                  (begin
                                    (let ((_g27888_
                                           (if (##values? _g27887_)
                                               (##vector-length _g27887_)
                                               1)))
                                      (if (not (##fx= _g27888_ 2))
                                          (error "Context expects 2 values"
                                                 _g27888_)))
                                    (let ((_target2509525295_
                                           (##vector-ref _g27887_ 0))
                                          (_tl2509725297_
                                           (##vector-ref _g27887_ 1)))
                                      (letrec ((_loop2509825300_
                                                (lambda (_hd2509625303_
                                                         _arg2510225305_)
                                                  (if (gx#stx-pair?
                                                       _hd2509625303_)
                                                      (let ((_e2509925308_
                                                             (gx#stx-e
                                                              _hd2509625303_)))
                                                        (let ((_lp-hd2510025311_
                                                               (##car _e2509925308_))
                                                              (_lp-tl2510125313_
                                                               (##cdr _e2509925308_)))
                                                          (_loop2509825300_
                                                           _lp-tl2510125313_
                                                           (cons _lp-hd2510025311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2510225305_))))
              (let ((_arg2510325316_ (reverse _arg2510225305_)))
                (if (gx#stx-pair? _tl2509425292_)
                    (let ((_e2510425319_ (gx#stx-e _tl2509425292_)))
                      (let ((_hd2510525322_ (##car _e2510425319_))
                            (_tl2510625324_ (##cdr _e2510425319_)))
                        (if (gx#stx-pair? _hd2510525322_)
                            (let ((_e2510725327_ (gx#stx-e _hd2510525322_)))
                              (let ((_hd2510825330_ (##car _e2510725327_))
                                    (_tl2510925332_ (##cdr _e2510725327_)))
                                (if (gx#identifier? _hd2510825330_)
                                    (if (gx#stx-eq? '%#call _hd2510825330_)
                                        (if (gx#stx-pair? _tl2510925332_)
                                            (let ((_e2511025335_
                                                   (gx#stx-e _tl2510925332_)))
                                              (let ((_hd2511125338_
                                                     (##car _e2511025335_))
                                                    (_tl2511225340_
                                                     (##cdr _e2511025335_)))
                                                (if (gx#stx-pair?
                                                     _hd2511125338_)
                                                    (let ((_e2511325343_
                                                           (gx#stx-e
                                                            _hd2511125338_)))
                                                      (let ((_hd2511425346_
                                                             (##car _e2511325343_))
                                                            (_tl2511525348_
                                                             (##cdr _e2511325343_)))
                                                        (if (gx#identifier?
                                                             _hd2511425346_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2511425346_)
                        (if (gx#stx-pair? _tl2511525348_)
                            (let ((_e2511625351_ (gx#stx-e _tl2511525348_)))
                              (let ((_hd2511725354_ (##car _e2511625351_))
                                    (_tl2511825356_ (##cdr _e2511625351_)))
                                (if (gx#stx-null? _tl2511825356_)
                                    (if (gx#stx-pair? _tl2511225340_)
                                        (let ((_e2511925359_
                                               (gx#stx-e _tl2511225340_)))
                                          (let ((_hd2512025362_
                                                 (##car _e2511925359_))
                                                (_tl2512125364_
                                                 (##cdr _e2511925359_)))
                                            (if (gx#stx-pair? _hd2512025362_)
                                                (let ((_e2512225367_
                                                       (gx#stx-e
                                                        _hd2512025362_)))
                                                  (let ((_hd2512325370_
                                                         (##car _e2512225367_))
                                                        (_tl2512425372_
                                                         (##cdr _e2512225367_)))
                                                    (if (gx#identifier?
                                                         _hd2512325370_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2512325370_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2512425372_)
                        (let ((_e2512525375_ (gx#stx-e _tl2512425372_)))
                          (let ((_hd2512625378_ (##car _e2512525375_))
                                (_tl2512725380_ (##cdr _e2512525375_)))
                            (if (gx#stx-null? _tl2512725380_)
                                (if (gx#stx-null? _tl2510625324_)
                                    ((lambda (_L25383_
                                              _L25384_
                                              _L25385_
                                              _L25386_)
                                       (gxc#identifier-symbol _L25383_))
                                     _hd2512625378_
                                     _hd2511725354_
                                     _tl2509725297_
                                     _arg2510325316_)
                                    (_g2504025282_ _g2504225285_))
                                (_g2504025282_ _g2504225285_))))
                        (_g2504025282_ _g2504225285_))
                    (_g2504025282_ _g2504225285_))
                (_g2504025282_ _g2504225285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2504025282_
                                                 _g2504225285_))))
                                        (_g2504025282_ _g2504225285_))
                                    (_g2504025282_ _g2504225285_))))
                            (_g2504025282_ _g2504225285_))
                        (_g2504025282_ _g2504225285_))
                    (_g2504025282_ _g2504225285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2504025282_
                                                     _g2504225285_))))
                                            (_g2504025282_ _g2504225285_))
                                        (_g2504025282_ _g2504225285_))
                                    (_g2504025282_ _g2504225285_))))
                            (_g2504025282_ _g2504225285_))))
                    (_g2504025282_ _g2504225285_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2509825300_
                                         _target2509525295_
                                         '())))))
                                (_g2504025282_ _g2504225285_))
                            (_g2504025282_ _g2504225285_))))
                    (_g2504025282_ _g2504225285_))))
             (_g2503825566_
              (lambda (_g2504225421_)
                (if (gx#stx-pair? _g2504225421_)
                    (let ((_e2504625423_ (gx#stx-e _g2504225421_)))
                      (let ((_hd2504725426_ (##car _e2504625423_))
                            (_tl2504825428_ (##cdr _e2504625423_)))
                        (if (gx#stx-pair/null? _hd2504725426_)
                            (if (fx>= (gx#stx-length _hd2504725426_) '0)
                                (let ((_g27889_
                                       (gx#syntax-split-splice
                                        _hd2504725426_
                                        '0)))
                                  (begin
                                    (let ((_g27890_
                                           (if (##values? _g27889_)
                                               (##vector-length _g27889_)
                                               1)))
                                      (if (not (##fx= _g27890_ 2))
                                          (error "Context expects 2 values"
                                                 _g27890_)))
                                    (let ((_target2504925431_
                                           (##vector-ref _g27889_ 0))
                                          (_tl2505125433_
                                           (##vector-ref _g27889_ 1)))
                                      (if (gx#stx-null? _tl2505125433_)
                                          (letrec ((_loop2505225436_
                                                    (lambda (_hd2505025439_
                                                             _arg2505625441_)
                                                      (if (gx#stx-pair?
                                                           _hd2505025439_)
                                                          (let ((_e2505325444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2505025439_)))
                    (let ((_lp-hd2505425447_ (##car _e2505325444_))
                          (_lp-tl2505525449_ (##cdr _e2505325444_)))
                      (_loop2505225436_
                       _lp-tl2505525449_
                       (cons _lp-hd2505425447_ _arg2505625441_))))
                  (let ((_arg2505725452_ (reverse _arg2505625441_)))
                    (if (gx#stx-pair? _tl2504825428_)
                        (let ((_e2505825455_ (gx#stx-e _tl2504825428_)))
                          (let ((_hd2505925458_ (##car _e2505825455_))
                                (_tl2506025460_ (##cdr _e2505825455_)))
                            (if (gx#stx-pair? _hd2505925458_)
                                (let ((_e2506125463_
                                       (gx#stx-e _hd2505925458_)))
                                  (let ((_hd2506225466_ (##car _e2506125463_))
                                        (_tl2506325468_ (##cdr _e2506125463_)))
                                    (if (gx#identifier? _hd2506225466_)
                                        (if (gx#stx-eq? '%#call _hd2506225466_)
                                            (if (gx#stx-pair? _tl2506325468_)
                                                (let ((_e2506425471_
                                                       (gx#stx-e
                                                        _tl2506325468_)))
                                                  (let ((_hd2506525474_
                                                         (##car _e2506425471_))
                                                        (_tl2506625476_
                                                         (##cdr _e2506425471_)))
                                                    (if (gx#stx-pair?
                                                         _hd2506525474_)
                                                        (let ((_e2506725479_
                                                               (gx#stx-e
                                                                _hd2506525474_)))
                                                          (let ((_hd2506825482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2506725479_))
                        (_tl2506925484_ (##cdr _e2506725479_)))
                    (if (gx#identifier? _hd2506825482_)
                        (if (gx#stx-eq? '%#ref _hd2506825482_)
                            (if (gx#stx-pair? _tl2506925484_)
                                (let ((_e2507025487_
                                       (gx#stx-e _tl2506925484_)))
                                  (let ((_hd2507125490_ (##car _e2507025487_))
                                        (_tl2507225492_ (##cdr _e2507025487_)))
                                    (if (gx#stx-null? _tl2507225492_)
                                        (if (gx#stx-pair/null? _tl2506625476_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2506625476_)
                                                      '0)
                                                (let ((_g27891_
                                                       (gx#syntax-split-splice
                                                        _tl2506625476_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27892_
                                                           (if (##values?
                                                                _g27891_)
                                                               (##vector-length
                                                                _g27891_)
                                                               1)))
                                                      (if (not (##fx= _g27892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g27892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2507325495_
                                                           (##vector-ref
                                                            _g27891_
                                                            0))
                                                          (_tl2507525497_
                                                           (##vector-ref
                                                            _g27891_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2507525497_)
                                                          (letrec ((_loop2507625500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2507425503_ _xarg2508025505_)
                              (if (gx#stx-pair? _hd2507425503_)
                                  (let ((_e2507725508_
                                         (gx#stx-e _hd2507425503_)))
                                    (let ((_lp-hd2507825511_
                                           (##car _e2507725508_))
                                          (_lp-tl2507925513_
                                           (##cdr _e2507725508_)))
                                      (if (gx#stx-pair? _lp-hd2507825511_)
                                          (let ((_e2508225516_
                                                 (gx#stx-e _lp-hd2507825511_)))
                                            (let ((_hd2508325519_
                                                   (##car _e2508225516_))
                                                  (_tl2508425521_
                                                   (##cdr _e2508225516_)))
                                              (if (gx#identifier?
                                                   _hd2508325519_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2508325519_)
                                                      (if (gx#stx-pair?
                                                           _tl2508425521_)
                                                          (let ((_e2508525524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2508425521_)))
                    (let ((_hd2508625527_ (##car _e2508525524_))
                          (_tl2508725529_ (##cdr _e2508525524_)))
                      (if (gx#stx-null? _tl2508725529_)
                          (_loop2507625500_
                           _lp-tl2507925513_
                           (cons _hd2508625527_ _xarg2508025505_))
                          (_g2503925418_ _g2504225421_))))
                  (_g2503925418_ _g2504225421_))
              (_g2503925418_ _g2504225421_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2503925418_
                                                   _g2504225421_))))
                                          (_g2503925418_ _g2504225421_))))
                                  (let ((_xarg2508125532_
                                         (reverse _xarg2508025505_)))
                                    (if (gx#stx-null? _tl2506025460_)
                                        ((lambda (_L25535_ _L25536_ _L25537_)
                                           (gxc#identifier-symbol _L25536_))
                                         _xarg2508125532_
                                         _hd2507125490_
                                         _arg2505725452_)
                                        (_g2503925418_ _g2504225421_)))))))
                    (_loop2507625500_ _target2507325495_ '()))
                  (_g2503925418_ _g2504225421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2503925418_ _g2504225421_))
                                            (_g2503925418_ _g2504225421_))
                                        (_g2503925418_ _g2504225421_))))
                                (_g2503925418_ _g2504225421_))
                            (_g2503925418_ _g2504225421_))
                        (_g2503925418_ _g2504225421_))))
                (_g2503925418_ _g2504225421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2503925418_ _g2504225421_))
                                            (_g2503925418_ _g2504225421_))
                                        (_g2503925418_ _g2504225421_))))
                                (_g2503925418_ _g2504225421_))))
                        (_g2503925418_ _g2504225421_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2505225436_
                                             _target2504925431_
                                             '()))
                                          (_g2503925418_ _g2504225421_)))))
                                (_g2503925418_ _g2504225421_))
                            (_g2503925418_ _g2504225421_))))
                    (_g2503925418_ _g2504225421_)))))
        (_g2503825566_ _form25037_))))
  (define gxc#lambda-form-arity
    (lambda (_form24841_)
      (let* ((_g2484324857_
              (lambda (_g2484424854_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2484424854_)))
             (_g2484225034_
              (lambda (_g2484424860_)
                (if (gx#stx-pair? _g2484424860_)
                    (let ((_e2484724862_ (gx#stx-e _g2484424860_)))
                      (let ((_hd2484824865_ (##car _e2484724862_))
                            (_tl2484924867_ (##cdr _e2484724862_)))
                        (if (gx#stx-pair? _tl2484924867_)
                            (let ((_e2485024870_ (gx#stx-e _tl2484924867_)))
                              (let ((_hd2485124873_ (##car _e2485024870_))
                                    (_tl2485224875_ (##cdr _e2485024870_)))
                                (if (gx#stx-null? _tl2485224875_)
                                    ((lambda (_L24878_ _L24879_)
                                       (let* ((_g2489424922_
                                               (lambda (_g2489524919_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2489524919_)))
                                              (_g2489324935_
                                               (lambda (_g2489524925_)
                                                 ((lambda (_L24927_)
                                                    (cons '0 '()))
                                                  _g2489524925_)))
                                              (_g2489224984_
                                               (lambda (_g2489524938_)
                                                 (if (gx#stx-pair/null?
                                                      _g2489524938_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2489524938_)
                                                               '0)
                                                         (let ((_g27893_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2489524938_
                         '0)))
                   (begin
                     (let ((_g27894_
                            (if (##values? _g27893_)
                                (##vector-length _g27893_)
                                1)))
                       (if (not (##fx= _g27894_ 2))
                           (error "Context expects 2 values" _g27894_)))
                     (let ((_target2490824940_ (##vector-ref _g27893_ 0))
                           (_tl2491024942_ (##vector-ref _g27893_ 1)))
                       (letrec ((_loop2491124945_
                                 (lambda (_hd2490924948_ _arg2491524950_)
                                   (if (gx#stx-pair? _hd2490924948_)
                                       (let ((_e2491224953_
                                              (gx#stx-e _hd2490924948_)))
                                         (let ((_lp-hd2491324956_
                                                (##car _e2491224953_))
                                               (_lp-tl2491424958_
                                                (##cdr _e2491224953_)))
                                           (_loop2491124945_
                                            _lp-tl2491424958_
                                            (cons _lp-hd2491324956_
                                                  _arg2491524950_))))
                                       (let ((_arg2491624961_
                                              (reverse _arg2491524950_)))
                                         ((lambda (_L24964_ _L24965_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2497624979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2497724981_)
                              (cons _g2497624979_ _g2497724981_))
                            '()
                            _L24965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2491024942_
                                          _arg2491624961_))))))
                         (_loop2491124945_ _target2490824940_ '())))))
                 (_g2489324935_ _g2489524938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2489324935_
                                                      _g2489524938_))))
                                              (_g2489125031_
                                               (lambda (_g2489524987_)
                                                 (if (gx#stx-pair/null?
                                                      _g2489524987_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2489524987_)
                                                               '0)
                                                         (let ((_g27895_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2489524987_
                         '0)))
                   (begin
                     (let ((_g27896_
                            (if (##values? _g27895_)
                                (##vector-length _g27895_)
                                1)))
                       (if (not (##fx= _g27896_ 2))
                           (error "Context expects 2 values" _g27896_)))
                     (let ((_target2489724989_ (##vector-ref _g27895_ 0))
                           (_tl2489924991_ (##vector-ref _g27895_ 1)))
                       (if (gx#stx-null? _tl2489924991_)
                           (letrec ((_loop2490024994_
                                     (lambda (_hd2489824997_ _arg2490424999_)
                                       (if (gx#stx-pair? _hd2489824997_)
                                           (let ((_e2490125002_
                                                  (gx#stx-e _hd2489824997_)))
                                             (let ((_lp-hd2490225005_
                                                    (##car _e2490125002_))
                                                   (_lp-tl2490325007_
                                                    (##cdr _e2490125002_)))
                                               (_loop2490024994_
                                                _lp-tl2490325007_
                                                (cons _lp-hd2490225005_
                                                      _arg2490424999_))))
                                           (let ((_arg2490525010_
                                                  (reverse _arg2490424999_)))
                                             ((lambda (_L25013_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2502325026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2502425028_)
                            (cons _g2502325026_ _g2502425028_))
                          '()
                          _L25013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2490525010_))))))
                             (_loop2490024994_ _target2489724989_ '()))
                           (_g2489224984_ _g2489524987_)))))
                 (_g2489224984_ _g2489524987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2489224984_
                                                      _g2489524987_)))))
                                         (_g2489125031_ _L24879_)))
                                     _hd2485124873_
                                     _hd2484824865_)
                                    (_g2484324857_ _g2484424860_))))
                            (_g2484324857_ _g2484424860_))))
                    (_g2484324857_ _g2484424860_)))))
        (_g2484225034_ _form24841_))))
  (define gxc#lambda-expr?
    (lambda (_expr24794_)
      (let* ((_g2479724807_
              (lambda (_g2479824804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2479824804_)))
             (_g2479624814_ (lambda (_g2479824810_) ((lambda () '#f))))
             (_g2479524838_
              (lambda (_g2479824817_)
                (if (gx#stx-pair? _g2479824817_)
                    (let ((_e2480024819_ (gx#stx-e _g2479824817_)))
                      (let ((_hd2480124822_ (##car _e2480024819_))
                            (_tl2480224824_ (##cdr _e2480024819_)))
                        (if (gx#identifier? _hd2480124822_)
                            (if (gx#stx-eq? '%#lambda _hd2480124822_)
                                ((lambda (_L24827_) '#t) _tl2480224824_)
                                (_g2479624814_ _g2479824817_))
                            (_g2479624814_ _g2479824817_))))
                    (_g2479624814_ _g2479824817_)))))
        (_g2479524838_ _expr24794_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24747_)
      (let* ((_g2475024760_
              (lambda (_g2475124757_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2475124757_)))
             (_g2474924767_ (lambda (_g2475124763_) ((lambda () '#f))))
             (_g2474824791_
              (lambda (_g2475124770_)
                (if (gx#stx-pair? _g2475124770_)
                    (let ((_e2475324772_ (gx#stx-e _g2475124770_)))
                      (let ((_hd2475424775_ (##car _e2475324772_))
                            (_tl2475524777_ (##cdr _e2475324772_)))
                        (if (gx#identifier? _hd2475424775_)
                            (if (gx#stx-eq? '%#case-lambda _hd2475424775_)
                                ((lambda (_L24780_) '#t) _tl2475524777_)
                                (_g2474924767_ _g2475124770_))
                            (_g2474924767_ _g2475124770_))))
                    (_g2474924767_ _g2475124770_)))))
        (_g2474824791_ _expr24747_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24616_)
      (let* ((_g2461924649_
              (lambda (_g2462024646_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2462024646_)))
             (_g2461824656_ (lambda (_g2462024652_) ((lambda () '#f))))
             (_g2461724744_
              (lambda (_g2462024659_)
                (if (gx#stx-pair? _g2462024659_)
                    (let ((_e2462424661_ (gx#stx-e _g2462024659_)))
                      (let ((_hd2462524664_ (##car _e2462424661_))
                            (_tl2462624666_ (##cdr _e2462424661_)))
                        (if (gx#identifier? _hd2462524664_)
                            (if (gx#stx-eq? '%#let-values _hd2462524664_)
                                (if (gx#stx-pair? _tl2462624666_)
                                    (let ((_e2462724669_
                                           (gx#stx-e _tl2462624666_)))
                                      (let ((_hd2462824672_
                                             (##car _e2462724669_))
                                            (_tl2462924674_
                                             (##cdr _e2462724669_)))
                                        (if (gx#stx-pair? _hd2462824672_)
                                            (let ((_e2463024677_
                                                   (gx#stx-e _hd2462824672_)))
                                              (let ((_hd2463124680_
                                                     (##car _e2463024677_))
                                                    (_tl2463224682_
                                                     (##cdr _e2463024677_)))
                                                (if (gx#stx-pair?
                                                     _hd2463124680_)
                                                    (let ((_e2463324685_
                                                           (gx#stx-e
                                                            _hd2463124680_)))
                                                      (let ((_hd2463424688_
                                                             (##car _e2463324685_))
                                                            (_tl2463524690_
                                                             (##cdr _e2463324685_)))
                                                        (if (gx#stx-pair?
                                                             _hd2463424688_)
                                                            (let ((_e2463624693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2463424688_)))
                      (let ((_hd2463724696_ (##car _e2463624693_))
                            (_tl2463824698_ (##cdr _e2463624693_)))
                        (if (gx#stx-null? _tl2463824698_)
                            (if (gx#stx-pair? _tl2463524690_)
                                (let ((_e2463924701_
                                       (gx#stx-e _tl2463524690_)))
                                  (let ((_hd2464024704_ (##car _e2463924701_))
                                        (_tl2464124706_ (##cdr _e2463924701_)))
                                    (if (gx#stx-null? _tl2464124706_)
                                        (if (gx#stx-null? _tl2463224682_)
                                            (if (gx#stx-pair? _tl2462924674_)
                                                (let ((_e2464224709_
                                                       (gx#stx-e
                                                        _tl2462924674_)))
                                                  (let ((_hd2464324712_
                                                         (##car _e2464224709_))
                                                        (_tl2464424714_
                                                         (##cdr _e2464224709_)))
                                                    (if (gx#stx-null?
                                                         _tl2464424714_)
                                                        ((lambda (_L24717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24718_
                          _L24719_)
                   (if (gx#identifier? _L24719_)
                       (if (gxc#lambda-expr? _L24718_)
                           (gxc#case-lambda-expr? _L24717_)
                           '#f)
                       '#f))
                 _hd2464324712_
                 _hd2464024704_
                 _hd2463724696_)
                (_g2461824656_ _g2462024659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2461824656_ _g2462024659_))
                                            (_g2461824656_ _g2462024659_))
                                        (_g2461824656_ _g2462024659_))))
                                (_g2461824656_ _g2462024659_))
                            (_g2461824656_ _g2462024659_))))
                    (_g2461824656_ _g2462024659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2461824656_
                                                     _g2462024659_))))
                                            (_g2461824656_ _g2462024659_))))
                                    (_g2461824656_ _g2462024659_))
                                (_g2461824656_ _g2462024659_))
                            (_g2461824656_ _g2462024659_))))
                    (_g2461824656_ _g2462024659_)))))
        (_g2461724744_ _expr24616_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23941_)
      (let* ((_g2394424102_
              (lambda (_g2394524099_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2394524099_)))
             (_g2394324109_ (lambda (_g2394524105_) ((lambda () '#f))))
             (_g2394224613_
              (lambda (_g2394524112_)
                (if (gx#stx-pair? _g2394524112_)
                    (let ((_e2395724114_ (gx#stx-e _g2394524112_)))
                      (let ((_hd2395824117_ (##car _e2395724114_))
                            (_tl2395924119_ (##cdr _e2395724114_)))
                        (if (gx#identifier? _hd2395824117_)
                            (if (gx#stx-eq? '%#let-values _hd2395824117_)
                                (if (gx#stx-pair? _tl2395924119_)
                                    (let ((_e2396024122_
                                           (gx#stx-e _tl2395924119_)))
                                      (let ((_hd2396124125_
                                             (##car _e2396024122_))
                                            (_tl2396224127_
                                             (##cdr _e2396024122_)))
                                        (if (gx#stx-pair? _hd2396124125_)
                                            (let ((_e2396324130_
                                                   (gx#stx-e _hd2396124125_)))
                                              (let ((_hd2396424133_
                                                     (##car _e2396324130_))
                                                    (_tl2396524135_
                                                     (##cdr _e2396324130_)))
                                                (if (gx#stx-pair?
                                                     _hd2396424133_)
                                                    (let ((_e2396624138_
                                                           (gx#stx-e
                                                            _hd2396424133_)))
                                                      (let ((_hd2396724141_
                                                             (##car _e2396624138_))
                                                            (_tl2396824143_
                                                             (##cdr _e2396624138_)))
                                                        (if (gx#stx-pair?
                                                             _hd2396724141_)
                                                            (let ((_e2396924146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2396724141_)))
                      (let ((_hd2397024149_ (##car _e2396924146_))
                            (_tl2397124151_ (##cdr _e2396924146_)))
                        (if (gx#stx-null? _tl2397124151_)
                            (if (gx#stx-pair? _tl2396824143_)
                                (let ((_e2397224154_
                                       (gx#stx-e _tl2396824143_)))
                                  (let ((_hd2397324157_ (##car _e2397224154_))
                                        (_tl2397424159_ (##cdr _e2397224154_)))
                                    (if (gx#stx-pair? _hd2397324157_)
                                        (let ((_e2397524162_
                                               (gx#stx-e _hd2397324157_)))
                                          (let ((_hd2397624165_
                                                 (##car _e2397524162_))
                                                (_tl2397724167_
                                                 (##cdr _e2397524162_)))
                                            (if (gx#identifier? _hd2397624165_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2397624165_)
                                                    (if (gx#stx-pair?
                                                         _tl2397724167_)
                                                        (let ((_e2397824170_
                                                               (gx#stx-e
                                                                _tl2397724167_)))
                                                          (let ((_hd2397924173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2397824170_))
                        (_tl2398024175_ (##cdr _e2397824170_)))
                    (if (gx#stx-pair? _hd2397924173_)
                        (let ((_e2398124178_ (gx#stx-e _hd2397924173_)))
                          (let ((_hd2398224181_ (##car _e2398124178_))
                                (_tl2398324183_ (##cdr _e2398124178_)))
                            (if (gx#stx-pair? _hd2398224181_)
                                (let ((_e2398424186_
                                       (gx#stx-e _hd2398224181_)))
                                  (let ((_hd2398524189_ (##car _e2398424186_))
                                        (_tl2398624191_ (##cdr _e2398424186_)))
                                    (if (gx#stx-pair? _hd2398524189_)
                                        (let ((_e2398724194_
                                               (gx#stx-e _hd2398524189_)))
                                          (let ((_hd2398824197_
                                                 (##car _e2398724194_))
                                                (_tl2398924199_
                                                 (##cdr _e2398724194_)))
                                            (if (gx#stx-null? _tl2398924199_)
                                                (if (gx#stx-pair?
                                                     _tl2398624191_)
                                                    (let ((_e2399024202_
                                                           (gx#stx-e
                                                            _tl2398624191_)))
                                                      (let ((_hd2399124205_
                                                             (##car _e2399024202_))
                                                            (_tl2399224207_
                                                             (##cdr _e2399024202_)))
                                                        (if (gx#stx-null?
                                                             _tl2399224207_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2398324183_)
                        (if (gx#stx-pair? _tl2398024175_)
                            (let ((_e2399324210_ (gx#stx-e _tl2398024175_)))
                              (let ((_hd2399424213_ (##car _e2399324210_))
                                    (_tl2399524215_ (##cdr _e2399324210_)))
                                (if (gx#stx-pair? _hd2399424213_)
                                    (let ((_e2399624218_
                                           (gx#stx-e _hd2399424213_)))
                                      (let ((_hd2399724221_
                                             (##car _e2399624218_))
                                            (_tl2399824223_
                                             (##cdr _e2399624218_)))
                                        (if (gx#identifier? _hd2399724221_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2399724221_)
                                                (if (gx#stx-pair?
                                                     _tl2399824223_)
                                                    (let ((_e2399924226_
                                                           (gx#stx-e
                                                            _tl2399824223_)))
                                                      (let ((_hd2400024229_
                                                             (##car _e2399924226_))
                                                            (_tl2400124231_
                                                             (##cdr _e2399924226_)))
                                                        (if (gx#stx-pair?
                                                             _hd2400024229_)
                                                            (let ((_e2400224234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2400024229_)))
                      (let ((_hd2400324237_ (##car _e2400224234_))
                            (_tl2400424239_ (##cdr _e2400224234_)))
                        (if (gx#stx-pair? _tl2400124231_)
                            (let ((_e2400524242_ (gx#stx-e _tl2400124231_)))
                              (let ((_hd2400624245_ (##car _e2400524242_))
                                    (_tl2400724247_ (##cdr _e2400524242_)))
                                (if (gx#stx-pair? _hd2400624245_)
                                    (let ((_e2400824250_
                                           (gx#stx-e _hd2400624245_)))
                                      (let ((_hd2400924253_
                                             (##car _e2400824250_))
                                            (_tl2401024255_
                                             (##cdr _e2400824250_)))
                                        (if (gx#identifier? _hd2400924253_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2400924253_)
                                                (if (gx#stx-pair?
                                                     _tl2401024255_)
                                                    (let ((_e2401124258_
                                                           (gx#stx-e
                                                            _tl2401024255_)))
                                                      (let ((_hd2401224261_
                                                             (##car _e2401124258_))
                                                            (_tl2401324263_
                                                             (##cdr _e2401124258_)))
                                                        (if (gx#stx-pair?
                                                             _hd2401224261_)
                                                            (let ((_e2401424266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2401224261_)))
                      (let ((_hd2401524269_ (##car _e2401424266_))
                            (_tl2401624271_ (##cdr _e2401424266_)))
                        (if (gx#identifier? _hd2401524269_)
                            (if (gx#stx-eq? '%#ref _hd2401524269_)
                                (if (gx#stx-pair? _tl2401624271_)
                                    (let ((_e2401724274_
                                           (gx#stx-e _tl2401624271_)))
                                      (let ((_hd2401824277_
                                             (##car _e2401724274_))
                                            (_tl2401924279_
                                             (##cdr _e2401724274_)))
                                        (if (gx#stx-null? _tl2401924279_)
                                            (if (gx#stx-pair? _tl2401324263_)
                                                (let ((_e2402024282_
                                                       (gx#stx-e
                                                        _tl2401324263_)))
                                                  (let ((_hd2402124285_
                                                         (##car _e2402024282_))
                                                        (_tl2402224287_
                                                         (##cdr _e2402024282_)))
                                                    (if (gx#stx-pair?
                                                         _hd2402124285_)
                                                        (let ((_e2402324290_
                                                               (gx#stx-e
                                                                _hd2402124285_)))
                                                          (let ((_hd2402424293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2402324290_))
                        (_tl2402524295_ (##cdr _e2402324290_)))
                    (if (gx#identifier? _hd2402424293_)
                        (if (gx#stx-eq? '%#ref _hd2402424293_)
                            (if (gx#stx-pair? _tl2402524295_)
                                (let ((_e2402624298_
                                       (gx#stx-e _tl2402524295_)))
                                  (let ((_hd2402724301_ (##car _e2402624298_))
                                        (_tl2402824303_ (##cdr _e2402624298_)))
                                    (if (gx#stx-null? _tl2402824303_)
                                        (if (gx#stx-pair? _tl2402224287_)
                                            (let ((_e2402924306_
                                                   (gx#stx-e _tl2402224287_)))
                                              (let ((_hd2403024309_
                                                     (##car _e2402924306_))
                                                    (_tl2403124311_
                                                     (##cdr _e2402924306_)))
                                                (if (gx#stx-pair?
                                                     _hd2403024309_)
                                                    (let ((_e2403224314_
                                                           (gx#stx-e
                                                            _hd2403024309_)))
                                                      (let ((_hd2403324317_
                                                             (##car _e2403224314_))
                                                            (_tl2403424319_
                                                             (##cdr _e2403224314_)))
                                                        (if (gx#identifier?
                                                             _hd2403324317_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2403324317_)
                        (if (gx#stx-pair? _tl2403424319_)
                            (let ((_e2403524322_ (gx#stx-e _tl2403424319_)))
                              (let ((_hd2403624325_ (##car _e2403524322_))
                                    (_tl2403724327_ (##cdr _e2403524322_)))
                                (if (gx#stx-null? _tl2403724327_)
                                    (if (gx#stx-null? _tl2400724247_)
                                        (if (gx#stx-null? _tl2399524215_)
                                            (if (gx#stx-null? _tl2397424159_)
                                                (if (gx#stx-null?
                                                     _tl2396524135_)
                                                    (if (gx#stx-pair?
                                                         _tl2396224127_)
                                                        (let ((_e2403824330_
                                                               (gx#stx-e
                                                                _tl2396224127_)))
                                                          (let ((_hd2403924333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2403824330_))
                        (_tl2404024335_ (##cdr _e2403824330_)))
                    (if (gx#stx-pair? _hd2403924333_)
                        (let ((_e2404124338_ (gx#stx-e _hd2403924333_)))
                          (let ((_hd2404224341_ (##car _e2404124338_))
                                (_tl2404324343_ (##cdr _e2404124338_)))
                            (if (gx#identifier? _hd2404224341_)
                                (if (gx#stx-eq? '%#lambda _hd2404224341_)
                                    (if (gx#stx-pair? _tl2404324343_)
                                        (let ((_e2404424346_
                                               (gx#stx-e _tl2404324343_)))
                                          (let ((_hd2404524349_
                                                 (##car _e2404424346_))
                                                (_tl2404624351_
                                                 (##cdr _e2404424346_)))
                                            (if (gx#stx-pair? _tl2404624351_)
                                                (let ((_e2404724354_
                                                       (gx#stx-e
                                                        _tl2404624351_)))
                                                  (let ((_hd2404824357_
                                                         (##car _e2404724354_))
                                                        (_tl2404924359_
                                                         (##cdr _e2404724354_)))
                                                    (if (gx#stx-pair?
                                                         _hd2404824357_)
                                                        (let ((_e2405024362_
                                                               (gx#stx-e
                                                                _hd2404824357_)))
                                                          (let ((_hd2405124365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2405024362_))
                        (_tl2405224367_ (##cdr _e2405024362_)))
                    (if (gx#identifier? _hd2405124365_)
                        (if (gx#stx-eq? '%#call _hd2405124365_)
                            (if (gx#stx-pair? _tl2405224367_)
                                (let ((_e2405324370_
                                       (gx#stx-e _tl2405224367_)))
                                  (let ((_hd2405424373_ (##car _e2405324370_))
                                        (_tl2405524375_ (##cdr _e2405324370_)))
                                    (if (gx#stx-pair? _hd2405424373_)
                                        (let ((_e2405624378_
                                               (gx#stx-e _hd2405424373_)))
                                          (let ((_hd2405724381_
                                                 (##car _e2405624378_))
                                                (_tl2405824383_
                                                 (##cdr _e2405624378_)))
                                            (if (gx#identifier? _hd2405724381_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2405724381_)
                                                    (if (gx#stx-pair?
                                                         _tl2405824383_)
                                                        (let ((_e2405924386_
                                                               (gx#stx-e
                                                                _tl2405824383_)))
                                                          (let ((_hd2406024389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2405924386_))
                        (_tl2406124391_ (##cdr _e2405924386_)))
                    (if (gx#stx-null? _tl2406124391_)
                        (if (gx#stx-pair? _tl2405524375_)
                            (let ((_e2406224394_ (gx#stx-e _tl2405524375_)))
                              (let ((_hd2406324397_ (##car _e2406224394_))
                                    (_tl2406424399_ (##cdr _e2406224394_)))
                                (if (gx#stx-pair? _hd2406324397_)
                                    (let ((_e2406524402_
                                           (gx#stx-e _hd2406324397_)))
                                      (let ((_hd2406624405_
                                             (##car _e2406524402_))
                                            (_tl2406724407_
                                             (##cdr _e2406524402_)))
                                        (if (gx#identifier? _hd2406624405_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2406624405_)
                                                (if (gx#stx-pair?
                                                     _tl2406724407_)
                                                    (let ((_e2406824410_
                                                           (gx#stx-e
                                                            _tl2406724407_)))
                                                      (let ((_hd2406924413_
                                                             (##car _e2406824410_))
                                                            (_tl2407024415_
                                                             (##cdr _e2406824410_)))
                                                        (if (gx#stx-null?
                                                             _tl2407024415_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2406424399_)
                        (let ((_e2407124418_ (gx#stx-e _tl2406424399_)))
                          (let ((_hd2407224421_ (##car _e2407124418_))
                                (_tl2407324423_ (##cdr _e2407124418_)))
                            (if (gx#stx-pair? _hd2407224421_)
                                (let ((_e2407424426_
                                       (gx#stx-e _hd2407224421_)))
                                  (let ((_hd2407524429_ (##car _e2407424426_))
                                        (_tl2407624431_ (##cdr _e2407424426_)))
                                    (if (gx#identifier? _hd2407524429_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2407524429_)
                                            (if (gx#stx-pair? _tl2407624431_)
                                                (let ((_e2407724434_
                                                       (gx#stx-e
                                                        _tl2407624431_)))
                                                  (let ((_hd2407824437_
                                                         (##car _e2407724434_))
                                                        (_tl2407924439_
                                                         (##cdr _e2407724434_)))
                                                    (if (gx#stx-null?
                                                         _tl2407924439_)
                                                        (if (gx#stx-pair?
                                                             _tl2407324423_)
                                                            (let ((_e2408024442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2407324423_)))
                      (let ((_hd2408124445_ (##car _e2408024442_))
                            (_tl2408224447_ (##cdr _e2408024442_)))
                        (if (gx#stx-pair? _hd2408124445_)
                            (let ((_e2408324450_ (gx#stx-e _hd2408124445_)))
                              (let ((_hd2408424453_ (##car _e2408324450_))
                                    (_tl2408524455_ (##cdr _e2408324450_)))
                                (if (gx#identifier? _hd2408424453_)
                                    (if (gx#stx-eq? '%#ref _hd2408424453_)
                                        (if (gx#stx-pair? _tl2408524455_)
                                            (let ((_e2408624458_
                                                   (gx#stx-e _tl2408524455_)))
                                              (let ((_hd2408724461_
                                                     (##car _e2408624458_))
                                                    (_tl2408824463_
                                                     (##cdr _e2408624458_)))
                                                (if (gx#stx-null?
                                                     _tl2408824463_)
                                                    (if (gx#stx-pair?
                                                         _tl2408224447_)
                                                        (let ((_e2408924466_
                                                               (gx#stx-e
                                                                _tl2408224447_)))
                                                          (let ((_hd2409024469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2408924466_))
                        (_tl2409124471_ (##cdr _e2408924466_)))
                    (if (gx#stx-pair? _hd2409024469_)
                        (let ((_e2409224474_ (gx#stx-e _hd2409024469_)))
                          (let ((_hd2409324477_ (##car _e2409224474_))
                                (_tl2409424479_ (##cdr _e2409224474_)))
                            (if (gx#identifier? _hd2409324477_)
                                (if (gx#stx-eq? '%#ref _hd2409324477_)
                                    (if (gx#stx-pair? _tl2409424479_)
                                        (let ((_e2409524482_
                                               (gx#stx-e _tl2409424479_)))
                                          (let ((_hd2409624485_
                                                 (##car _e2409524482_))
                                                (_tl2409724487_
                                                 (##cdr _e2409524482_)))
                                            (if (gx#stx-null? _tl2409724487_)
                                                (if (gx#stx-null?
                                                     _tl2409124471_)
                                                    (if (gx#stx-null?
                                                         _tl2404924359_)
                                                        (if (gx#stx-null?
                                                             _tl2404024335_)
                                                            ((lambda (_L24490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24491_
                              _L24492_
                              _L24493_
                              _L24494_
                              _L24495_
                              _L24496_
                              _L24497_
                              _L24498_
                              _L24499_
                              _L24500_)
                       (if (gxc#runtime-identifier=? _L24497_ 'apply)
                           (if (gxc#runtime-identifier=? _L24493_ 'apply)
                               (if (gxc#runtime-identifier=?
                                    _L24492_
                                    'keyword-dispatch)
                                   (if (gx#free-identifier=? _L24500_ _L24491_)
                                       (if (gx#free-identifier=?
                                            _L24499_
                                            _L24496_)
                                           (if (gx#free-identifier=?
                                                _L24494_
                                                _L24490_)
                                               (gx#free-identifier=?
                                                _L24498_
                                                _L24495_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2409624485_
                     _hd2408724461_
                     _hd2406924413_
                     _hd2406024389_
                     _hd2404524349_
                     _hd2403624325_
                     _hd2402724301_
                     _hd2401824277_
                     _hd2400324237_
                     _hd2398824197_
                     _hd2397024149_)
                    (_g2394324109_ _g2394524112_))
                (_g2394324109_ _g2394524112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_
                                                 _g2394524112_))))
                                        (_g2394324109_ _g2394524112_))
                                    (_g2394324109_ _g2394524112_))
                                (_g2394324109_ _g2394524112_))))
                        (_g2394324109_ _g2394524112_))))
                (_g2394324109_ _g2394524112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))))
                                            (_g2394324109_ _g2394524112_))
                                        (_g2394324109_ _g2394524112_))
                                    (_g2394324109_ _g2394524112_))))
                            (_g2394324109_ _g2394524112_))))
                    (_g2394324109_ _g2394524112_))
                (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2394324109_ _g2394524112_))
                                            (_g2394324109_ _g2394524112_))
                                        (_g2394324109_ _g2394524112_))))
                                (_g2394324109_ _g2394524112_))))
                        (_g2394324109_ _g2394524112_))
                    (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_ _g2394524112_))
                                            (_g2394324109_ _g2394524112_))))
                                    (_g2394324109_ _g2394524112_))))
                            (_g2394324109_ _g2394524112_))
                        (_g2394324109_ _g2394524112_))))
                (_g2394324109_ _g2394524112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_
                                                 _g2394524112_))))
                                        (_g2394324109_ _g2394524112_))))
                                (_g2394324109_ _g2394524112_))
                            (_g2394324109_ _g2394524112_))
                        (_g2394324109_ _g2394524112_))))
                (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2394324109_
                                                 _g2394524112_))))
                                        (_g2394324109_ _g2394524112_))
                                    (_g2394324109_ _g2394524112_))
                                (_g2394324109_ _g2394524112_))))
                        (_g2394324109_ _g2394524112_))))
                (_g2394324109_ _g2394524112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_ _g2394524112_))
                                            (_g2394324109_ _g2394524112_))
                                        (_g2394324109_ _g2394524112_))
                                    (_g2394324109_ _g2394524112_))))
                            (_g2394324109_ _g2394524112_))
                        (_g2394324109_ _g2394524112_))
                    (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))))
                                            (_g2394324109_ _g2394524112_))
                                        (_g2394324109_ _g2394524112_))))
                                (_g2394324109_ _g2394524112_))
                            (_g2394324109_ _g2394524112_))
                        (_g2394324109_ _g2394524112_))))
                (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2394324109_ _g2394524112_))
                                            (_g2394324109_ _g2394524112_))))
                                    (_g2394324109_ _g2394524112_))
                                (_g2394324109_ _g2394524112_))
                            (_g2394324109_ _g2394524112_))))
                    (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_ _g2394524112_))
                                            (_g2394324109_ _g2394524112_))))
                                    (_g2394324109_ _g2394524112_))))
                            (_g2394324109_ _g2394524112_))))
                    (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_ _g2394524112_))
                                            (_g2394324109_ _g2394524112_))))
                                    (_g2394324109_ _g2394524112_))))
                            (_g2394324109_ _g2394524112_))
                        (_g2394324109_ _g2394524112_))
                    (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_
                                                 _g2394524112_))))
                                        (_g2394324109_ _g2394524112_))))
                                (_g2394324109_ _g2394524112_))))
                        (_g2394324109_ _g2394524112_))))
                (_g2394324109_ _g2394524112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))
                                                (_g2394324109_
                                                 _g2394524112_))))
                                        (_g2394324109_ _g2394524112_))))
                                (_g2394324109_ _g2394524112_))
                            (_g2394324109_ _g2394524112_))))
                    (_g2394324109_ _g2394524112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394324109_
                                                     _g2394524112_))))
                                            (_g2394324109_ _g2394524112_))))
                                    (_g2394324109_ _g2394524112_))
                                (_g2394324109_ _g2394524112_))
                            (_g2394324109_ _g2394524112_))))
                    (_g2394324109_ _g2394524112_)))))
        (_g2394224613_ _expr23941_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23683_ _id23684_ _clauses23685_ _gensym?23686_)
        (let _lp23688_ ((_rest23690_ _clauses23685_)
                        (_ids23691_ '())
                        (_impls23692_ '())
                        (_clauses23693_ '()))
          (let* ((_rest2369423702_ _rest23690_)
                 (_E2369723706_
                  (lambda () (error '"No clause matching" _rest2369423702_)))
                 (_else2369623710_
                  (lambda ()
                    (values (reverse _ids23691_)
                            (reverse _impls23692_)
                            (reverse _clauses23693_))))
                 (_K2369823915_
                  (lambda (_rest23713_ _clause23714_)
                    (if (gxc#dispatch-lambda-form? _clause23714_)
                        (_lp23688_
                         _rest23713_
                         _ids23691_
                         _impls23692_
                         (cons _clause23714_ _clauses23693_))
                        (let* ((_g2371623727_
                                (lambda (_g2371723724_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2371723724_)))
                               (_g2371523912_
                                (lambda (_g2371723730_)
                                  (if (gx#stx-pair? _g2371723730_)
                                      (let ((_e2372023732_
                                             (gx#stx-e _g2371723730_)))
                                        (let ((_hd2372123735_
                                               (##car _e2372023732_))
                                              (_tl2372223737_
                                               (##cdr _e2372023732_)))
                                          ((lambda (_L23740_ _L23741_)
                                             (let* ((_id23758_
                                                     (make-symbol
                                                      (gx#stx-e _id23684_)
                                                      '"__"
                                                      (length _clauses23693_)
                                                      (if _gensym?23686_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23760_
                                                     (gx#core-quote-syntax__1
                                                      _id23758_
                                                      (gx#stx-source
                                                       _stx23683_)))
                                                    (_impl23762_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23740_))
              _stx23683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23909_
                                                     (let* ((_g2376623794_
                                                             (lambda (_g2376723791_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2376723791_)))
                                                            (_g2376523810_
                                                             (lambda (_g2376723797_)
                                                               ((lambda (_L23799_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23741_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23799_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23683_)
                                      '())))
                        _g2376723797_)))
                    (_g2376423859_
                     (lambda (_g2376723813_)
                       (if (gx#stx-pair/null? _g2376723813_)
                           (if (fx>= (gx#stx-length _g2376723813_) '0)
                               (let ((_g27897_
                                      (gx#syntax-split-splice
                                       _g2376723813_
                                       '0)))
                                 (begin
                                   (let ((_g27898_
                                          (if (##values? _g27897_)
                                              (##vector-length _g27897_)
                                              1)))
                                     (if (not (##fx= _g27898_ 2))
                                         (error "Context expects 2 values"
                                                _g27898_)))
                                   (let ((_target2378023815_
                                          (##vector-ref _g27897_ 0))
                                         (_tl2378223817_
                                          (##vector-ref _g27897_ 1)))
                                     (letrec ((_loop2378323820_
                                               (lambda (_hd2378123823_
                                                        _arg2378723825_)
                                                 (if (gx#stx-pair?
                                                      _hd2378123823_)
                                                     (let ((_e2378423828_
                                                            (gx#stx-e
                                                             _hd2378123823_)))
                                                       (let ((_lp-hd2378523831_
                                                              (##car _e2378423828_))
                                                             (_lp-tl2378623833_
                                                              (##cdr _e2378423828_)))
                                                         (_loop2378323820_
                                                          _lp-tl2378623833_
                                                          (cons _lp-hd2378523831_
                                                                _arg2378723825_))))
                                                     (let ((_arg2378823836_
                                                            (reverse _arg2378723825_)))
                                                       ((lambda (_L23839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23840_)
                  (cons _L23741_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23760_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23839_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2385123854_ _g2385223856_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2385123854_ '()))
                                   _g2385223856_))
                           '()
                           _L23840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23683_)
                              '())))
                _tl2378223817_
                _arg2378823836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2378323820_
                                        _target2378023815_
                                        '())))))
                               (_g2376523810_ _g2376723813_))
                           (_g2376523810_ _g2376723813_))))
                    (_g2376323906_
                     (lambda (_g2376723862_)
                       (if (gx#stx-pair/null? _g2376723862_)
                           (if (fx>= (gx#stx-length _g2376723862_) '0)
                               (let ((_g27899_
                                      (gx#syntax-split-splice
                                       _g2376723862_
                                       '0)))
                                 (begin
                                   (let ((_g27900_
                                          (if (##values? _g27899_)
                                              (##vector-length _g27899_)
                                              1)))
                                     (if (not (##fx= _g27900_ 2))
                                         (error "Context expects 2 values"
                                                _g27900_)))
                                   (let ((_target2376923864_
                                          (##vector-ref _g27899_ 0))
                                         (_tl2377123866_
                                          (##vector-ref _g27899_ 1)))
                                     (if (gx#stx-null? _tl2377123866_)
                                         (letrec ((_loop2377223869_
                                                   (lambda (_hd2377023872_
                                                            _arg2377623874_)
                                                     (if (gx#stx-pair?
                                                          _hd2377023872_)
                                                         (let ((_e2377323877_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2377023872_)))
                   (let ((_lp-hd2377423880_ (##car _e2377323877_))
                         (_lp-tl2377523882_ (##cdr _e2377323877_)))
                     (_loop2377223869_
                      _lp-tl2377523882_
                      (cons _lp-hd2377423880_ _arg2377623874_))))
                 (let ((_arg2377723885_ (reverse _arg2377623874_)))
                   ((lambda (_L23888_)
                      (cons _L23741_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23760_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2389823901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2389923903_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2389823901_ '()))
                         _g2389923903_))
                 '()
                 _L23888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23683_)
                                  '())))
                    _arg2377723885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2377223869_
                                            _target2376923864_
                                            '()))
                                         (_g2376423859_ _g2376723862_)))))
                               (_g2376423859_ _g2376723862_))
                           (_g2376423859_ _g2376723862_)))))
               (_g2376323906_ _L23741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23688_
                                                _rest23713_
                                                (cons _id23760_ _ids23691_)
                                                (cons _impl23762_ _impls23692_)
                                                (cons _clause23909_
                                                      _clauses23693_))))
                                           _tl2372223737_
                                           _hd2372123735_)))
                                      (_g2371623727_ _g2371723730_)))))
                          (_g2371523912_ _clause23714_))))))
            (if (##pair? _rest2369423702_)
                (let ((_hd2369923918_ (##car _rest2369423702_))
                      (_tl2370023920_ (##cdr _rest2369423702_)))
                  (let* ((_clause23923_ _hd2369923918_)
                         (_rest23925_ _tl2370023920_))
                    (_K2369823915_ _rest23925_ _clause23923_)))
                (_else2369623710_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23930_ _id23931_ _clauses23932_)
          (let ((_gensym?23934_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23930_
             _id23931_
             _clauses23932_
             _gensym?23934_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27902_
          (let ((_g27901_ (length _g27902_)))
            (cond ((##fx= _g27901_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27902_))
                  ((##fx= _g27901_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27902_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27902_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22960_)
      (letrec ((_case-lambda-clause-def22962_
                (lambda (_id23679_ _impl23680_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23679_ '())
                               (cons (gxc#compile-e _impl23680_) '())))
                   _stx22960_)))
               (_opt-lambda-dispatch-name22963_
                (lambda (_id23675_)
                  (if (uninterned-symbol? _id23675_)
                      (let ((_str23677_ (symbol->string _id23675_)))
                        (if (string-prefix? _str23677_ '"opt-lambda")
                            '"%"
                            _id23675_))
                      _id23675_)))
               (_kw-lambda-dispatch-name22964_
                (lambda (_id23670_ _name23671_)
                  (if (uninterned-symbol? _id23670_)
                      (let ((_str23673_ (symbol->string _id23670_)))
                        (if (string-prefix? _str23673_ '"kw-lambda")
                            _name23671_
                            _id23670_))
                      _id23670_))))
        (let* ((_g2296923028_
                (lambda (_g2297023025_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2297023025_)))
               (_g2296823074_
                (lambda (_g2297023031_)
                  (if (gx#stx-pair? _g2297023031_)
                      (let ((_e2301523033_ (gx#stx-e _g2297023031_)))
                        (let ((_hd2301623036_ (##car _e2301523033_))
                              (_tl2301723038_ (##cdr _e2301523033_)))
                          (if (gx#stx-pair? _tl2301723038_)
                              (let ((_e2301823041_ (gx#stx-e _tl2301723038_)))
                                (let ((_hd2301923044_ (##car _e2301823041_))
                                      (_tl2302023046_ (##cdr _e2301823041_)))
                                  (if (gx#stx-pair? _tl2302023046_)
                                      (let ((_e2302123049_
                                             (gx#stx-e _tl2302023046_)))
                                        (let ((_hd2302223052_
                                               (##car _e2302123049_))
                                              (_tl2302323054_
                                               (##cdr _e2302123049_)))
                                          (if (gx#stx-null? _tl2302323054_)
                                              ((lambda (_L23057_ _L23058_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L23058_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23057_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22960_))
                                               _hd2302223052_
                                               _hd2301923044_)
                                              (_g2296923028_ _g2297023031_))))
                                      (_g2296923028_ _g2297023031_))))
                              (_g2296923028_ _g2297023031_))))
                      (_g2296923028_ _g2297023031_))))
               (_g2296723360_
                (lambda (_g2297023077_)
                  (if (gx#stx-pair? _g2297023077_)
                      (let ((_e2300123079_ (gx#stx-e _g2297023077_)))
                        (let ((_hd2300223082_ (##car _e2300123079_))
                              (_tl2300323084_ (##cdr _e2300123079_)))
                          (if (gx#stx-pair? _tl2300323084_)
                              (let ((_e2300423087_ (gx#stx-e _tl2300323084_)))
                                (let ((_hd2300523090_ (##car _e2300423087_))
                                      (_tl2300623092_ (##cdr _e2300423087_)))
                                  (if (gx#stx-pair? _hd2300523090_)
                                      (let ((_e2300723095_
                                             (gx#stx-e _hd2300523090_)))
                                        (let ((_hd2300823098_
                                               (##car _e2300723095_))
                                              (_tl2300923100_
                                               (##cdr _e2300723095_)))
                                          (if (gx#stx-null? _tl2300923100_)
                                              (if (gx#stx-pair? _tl2300623092_)
                                                  (let ((_e2301023103_
                                                         (gx#stx-e
                                                          _tl2300623092_)))
                                                    (let ((_hd2301123106_
                                                           (##car _e2301023103_))
                                                          (_tl2301223108_
                                                           (##cdr _e2301023103_)))
                                                      (if (gx#stx-null?
                                                           _tl2301223108_)
                                                          ((lambda (_L23111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23112_)
                     (if (if (gx#identifier? _L23112_)
                             (gxc#kw-lambda-expr? _L23111_)
                             '#f)
                         (let* ((_g2312823181_
                                 (lambda (_g2312923178_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2312923178_)))
                                (_g2312723357_
                                 (lambda (_g2312923184_)
                                   (if (gx#stx-pair? _g2312923184_)
                                       (let ((_e2313523186_
                                              (gx#stx-e _g2312923184_)))
                                         (let ((_hd2313623189_
                                                (##car _e2313523186_))
                                               (_tl2313723191_
                                                (##cdr _e2313523186_)))
                                           (if (gx#stx-pair? _tl2313723191_)
                                               (let ((_e2313823194_
                                                      (gx#stx-e
                                                       _tl2313723191_)))
                                                 (let ((_hd2313923197_
                                                        (##car _e2313823194_))
                                                       (_tl2314023199_
                                                        (##cdr _e2313823194_)))
                                                   (if (gx#stx-pair?
                                                        _hd2313923197_)
                                                       (let ((_e2314123202_
                                                              (gx#stx-e
                                                               _hd2313923197_)))
                                                         (let ((_hd2314223205_
                                                                (##car _e2314123202_))
                                                               (_tl2314323207_
                                                                (##cdr _e2314123202_)))
                                                           (if (gx#stx-pair?
                                                                _hd2314223205_)
                                                               (let ((_e2314423210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2314223205_)))
                         (let ((_hd2314523213_ (##car _e2314423210_))
                               (_tl2314623215_ (##cdr _e2314423210_)))
                           (if (gx#stx-pair? _hd2314523213_)
                               (let ((_e2314723218_ (gx#stx-e _hd2314523213_)))
                                 (let ((_hd2314823221_ (##car _e2314723218_))
                                       (_tl2314923223_ (##cdr _e2314723218_)))
                                   (if (gx#stx-null? _tl2314923223_)
                                       (if (gx#stx-pair? _tl2314623215_)
                                           (let ((_e2315023226_
                                                  (gx#stx-e _tl2314623215_)))
                                             (let ((_hd2315123229_
                                                    (##car _e2315023226_))
                                                   (_tl2315223231_
                                                    (##cdr _e2315023226_)))
                                               (if (gx#stx-pair?
                                                    _hd2315123229_)
                                                   (let ((_e2315323234_
                                                          (gx#stx-e
                                                           _hd2315123229_)))
                                                     (let ((_hd2315423237_
                                                            (##car _e2315323234_))
                                                           (_tl2315523239_
                                                            (##cdr _e2315323234_)))
                                                       (if (gx#stx-pair?
                                                            _tl2315523239_)
                                                           (let ((_e2315623242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2315523239_)))
                     (let ((_hd2315723245_ (##car _e2315623242_))
                           (_tl2315823247_ (##cdr _e2315623242_)))
                       (if (gx#stx-pair? _hd2315723245_)
                           (let ((_e2315923250_ (gx#stx-e _hd2315723245_)))
                             (let ((_hd2316023253_ (##car _e2315923250_))
                                   (_tl2316123255_ (##cdr _e2315923250_)))
                               (if (gx#stx-pair? _hd2316023253_)
                                   (let ((_e2316223258_
                                          (gx#stx-e _hd2316023253_)))
                                     (let ((_hd2316323261_
                                            (##car _e2316223258_))
                                           (_tl2316423263_
                                            (##cdr _e2316223258_)))
                                       (if (gx#stx-pair? _hd2316323261_)
                                           (let ((_e2316523266_
                                                  (gx#stx-e _hd2316323261_)))
                                             (let ((_hd2316623269_
                                                    (##car _e2316523266_))
                                                   (_tl2316723271_
                                                    (##cdr _e2316523266_)))
                                               (if (gx#stx-null?
                                                    _tl2316723271_)
                                                   (if (gx#stx-pair?
                                                        _tl2316423263_)
                                                       (let ((_e2316823274_
                                                              (gx#stx-e
                                                               _tl2316423263_)))
                                                         (let ((_hd2316923277_
                                                                (##car _e2316823274_))
                                                               (_tl2317023279_
                                                                (##cdr _e2316823274_)))
                                                           (if (gx#stx-null?
                                                                _tl2317023279_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2316123255_)
                           (if (gx#stx-pair? _tl2315823247_)
                               (let ((_e2317123282_ (gx#stx-e _tl2315823247_)))
                                 (let ((_hd2317223285_ (##car _e2317123282_))
                                       (_tl2317323287_ (##cdr _e2317123282_)))
                                   (if (gx#stx-null? _tl2317323287_)
                                       (if (gx#stx-null? _tl2315223231_)
                                           (if (gx#stx-null? _tl2314323207_)
                                               (if (gx#stx-pair?
                                                    _tl2314023199_)
                                                   (let ((_e2317423290_
                                                          (gx#stx-e
                                                           _tl2314023199_)))
                                                     (let ((_hd2317523293_
                                                            (##car _e2317423290_))
                                                           (_tl2317623295_
                                                            (##cdr _e2317423290_)))
                                                       (if (gx#stx-null?
                                                            _tl2317623295_)
                                                           ((lambda (_L23298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23299_
                             _L23300_
                             _L23301_
                             _L23302_)
                      (let* ((_get-kws-id23342_
                              (make-symbol
                               (gx#stx-e _L23112_)
                               '"__"
                               (_kw-lambda-dispatch-name22964_
                                (gx#stx-e _L23302_)
                                '"@")))
                             (_get-kws-id23344_
                              (gx#core-quote-syntax__1
                               _get-kws-id23342_
                               (gx#stx-source _stx22960_)))
                             (_main-id23346_
                              (make-symbol
                               (gx#stx-e _L23112_)
                               '"__"
                               (_kw-lambda-dispatch-name22964_
                                (gx#stx-e _L23301_)
                                '"%")))
                             (_main-id23348_
                              (gx#core-quote-syntax__1
                               _main-id23346_
                               (gx#stx-source _stx22960_)))
                             (_g27903_
                              (gx#core-bind-runtime!__0 _get-kws-id23344_))
                             (_g27904_
                              (gx#core-bind-runtime!__0 _main-id23348_))
                             (_new-kw-dispatch23352_
                              (gxc#apply-expression-subst
                               _L23298_
                               _L23302_
                               _get-kws-id23344_))
                             (_new-get-kws23354_
                              (gxc#apply-expression-subst
                               _L23299_
                               _L23301_
                               _main-id23348_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#identifier-symbol _L23112_)
                           '" => "
                           (gxc#identifier-symbol _get-kws-id23344_)
                           '" => "
                           (gxc#identifier-symbol _main-id23348_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id23348_ '())
                                                     (cons _L23300_ '())))
                                         _stx22960_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id23344_
                                                                '())
                                                          (cons _new-get-kws23354_
                                                                '())))
                                              _stx22960_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L23112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch23352_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22960_)
                                                   '()))))
                           _stx22960_))))
                    _hd2317523293_
                    _hd2317223285_
                    _hd2316923277_
                    _hd2316623269_
                    _hd2314823221_)
                   (_g2312823181_ _g2312923184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2312823181_
                                                    _g2312923184_))
                                               (_g2312823181_ _g2312923184_))
                                           (_g2312823181_ _g2312923184_))
                                       (_g2312823181_ _g2312923184_))))
                               (_g2312823181_ _g2312923184_))
                           (_g2312823181_ _g2312923184_))
                       (_g2312823181_ _g2312923184_))))
               (_g2312823181_ _g2312923184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2312823181_
                                                    _g2312923184_))))
                                           (_g2312823181_ _g2312923184_))))
                                   (_g2312823181_ _g2312923184_))))
                           (_g2312823181_ _g2312923184_))))
                   (_g2312823181_ _g2312923184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2312823181_
                                                    _g2312923184_))))
                                           (_g2312823181_ _g2312923184_))
                                       (_g2312823181_ _g2312923184_))))
                               (_g2312823181_ _g2312923184_))))
                       (_g2312823181_ _g2312923184_))))
               (_g2312823181_ _g2312923184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2312823181_ _g2312923184_))))
                                       (_g2312823181_ _g2312923184_)))))
                           (_g2312723357_ _L23111_))
                         (_g2296823074_ _g2297023077_)))
                   _hd2301123106_
                   _hd2300823098_)
                  (_g2296823074_ _g2297023077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296823074_
                                                   _g2297023077_))
                                              (_g2296823074_ _g2297023077_))))
                                      (_g2296823074_ _g2297023077_))))
                              (_g2296823074_ _g2297023077_))))
                      (_g2296823074_ _g2297023077_))))
               (_g2296623542_
                (lambda (_g2297023363_)
                  (if (gx#stx-pair? _g2297023363_)
                      (let ((_e2298723365_ (gx#stx-e _g2297023363_)))
                        (let ((_hd2298823368_ (##car _e2298723365_))
                              (_tl2298923370_ (##cdr _e2298723365_)))
                          (if (gx#stx-pair? _tl2298923370_)
                              (let ((_e2299023373_ (gx#stx-e _tl2298923370_)))
                                (let ((_hd2299123376_ (##car _e2299023373_))
                                      (_tl2299223378_ (##cdr _e2299023373_)))
                                  (if (gx#stx-pair? _hd2299123376_)
                                      (let ((_e2299323381_
                                             (gx#stx-e _hd2299123376_)))
                                        (let ((_hd2299423384_
                                               (##car _e2299323381_))
                                              (_tl2299523386_
                                               (##cdr _e2299323381_)))
                                          (if (gx#stx-null? _tl2299523386_)
                                              (if (gx#stx-pair? _tl2299223378_)
                                                  (let ((_e2299623389_
                                                         (gx#stx-e
                                                          _tl2299223378_)))
                                                    (let ((_hd2299723392_
                                                           (##car _e2299623389_))
                                                          (_tl2299823394_
                                                           (##cdr _e2299623389_)))
                                                      (if (gx#stx-null?
                                                           _tl2299823394_)
                                                          ((lambda (_L23397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23398_)
                     (if (if (gx#identifier? _L23398_)
                             (gxc#opt-lambda-expr? _L23397_)
                             '#f)
                         (let* ((_g2341423444_
                                 (lambda (_g2341523441_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2341523441_)))
                                (_g2341323539_
                                 (lambda (_g2341523447_)
                                   (if (gx#stx-pair? _g2341523447_)
                                       (let ((_e2341923449_
                                              (gx#stx-e _g2341523447_)))
                                         (let ((_hd2342023452_
                                                (##car _e2341923449_))
                                               (_tl2342123454_
                                                (##cdr _e2341923449_)))
                                           (if (gx#stx-pair? _tl2342123454_)
                                               (let ((_e2342223457_
                                                      (gx#stx-e
                                                       _tl2342123454_)))
                                                 (let ((_hd2342323460_
                                                        (##car _e2342223457_))
                                                       (_tl2342423462_
                                                        (##cdr _e2342223457_)))
                                                   (if (gx#stx-pair?
                                                        _hd2342323460_)
                                                       (let ((_e2342523465_
                                                              (gx#stx-e
                                                               _hd2342323460_)))
                                                         (let ((_hd2342623468_
                                                                (##car _e2342523465_))
                                                               (_tl2342723470_
                                                                (##cdr _e2342523465_)))
                                                           (if (gx#stx-pair?
                                                                _hd2342623468_)
                                                               (let ((_e2342823473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2342623468_)))
                         (let ((_hd2342923476_ (##car _e2342823473_))
                               (_tl2343023478_ (##cdr _e2342823473_)))
                           (if (gx#stx-pair? _hd2342923476_)
                               (let ((_e2343123481_ (gx#stx-e _hd2342923476_)))
                                 (let ((_hd2343223484_ (##car _e2343123481_))
                                       (_tl2343323486_ (##cdr _e2343123481_)))
                                   (if (gx#stx-null? _tl2343323486_)
                                       (if (gx#stx-pair? _tl2343023478_)
                                           (let ((_e2343423489_
                                                  (gx#stx-e _tl2343023478_)))
                                             (let ((_hd2343523492_
                                                    (##car _e2343423489_))
                                                   (_tl2343623494_
                                                    (##cdr _e2343423489_)))
                                               (if (gx#stx-null?
                                                    _tl2343623494_)
                                                   (if (gx#stx-null?
                                                        _tl2342723470_)
                                                       (if (gx#stx-pair?
                                                            _tl2342423462_)
                                                           (let ((_e2343723497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2342423462_)))
                     (let ((_hd2343823500_ (##car _e2343723497_))
                           (_tl2343923502_ (##cdr _e2343723497_)))
                       (if (gx#stx-null? _tl2343923502_)
                           ((lambda (_L23505_ _L23506_ _L23507_)
                              (let* ((_lambda-id23531_
                                      (make-symbol
                                       (gx#stx-e _L23398_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22963_
                                        (gx#stx-e _L23507_))))
                                     (_lambda-id23533_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23531_
                                       (gx#stx-source _stx22960_)))
                                     (_g27905_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23533_))
                                     (_new-case-lambda-expr23536_
                                      (gxc#apply-expression-subst
                                       _L23505_
                                       _L23507_
                                       _lambda-id23533_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#identifier-symbol _L23398_)
                                   '" => "
                                   (gxc#identifier-symbol _lambda-id23533_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L23506_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22960_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L23398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23536_ '())))
               _stx22960_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22960_))))
                            _hd2343823500_
                            _hd2343523492_
                            _hd2343223484_)
                           (_g2341423444_ _g2341523447_))))
                   (_g2341423444_ _g2341523447_))
               (_g2341423444_ _g2341523447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2341423444_
                                                    _g2341523447_))))
                                           (_g2341423444_ _g2341523447_))
                                       (_g2341423444_ _g2341523447_))))
                               (_g2341423444_ _g2341523447_))))
                       (_g2341423444_ _g2341523447_))))
               (_g2341423444_ _g2341523447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2341423444_ _g2341523447_))))
                                       (_g2341423444_ _g2341523447_)))))
                           (_g2341323539_ _L23397_))
                         (_g2296723360_ _g2297023363_)))
                   _hd2299723392_
                   _hd2299423384_)
                  (_g2296723360_ _g2297023363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296723360_
                                                   _g2297023363_))
                                              (_g2296723360_ _g2297023363_))))
                                      (_g2296723360_ _g2297023363_))))
                              (_g2296723360_ _g2297023363_))))
                      (_g2296723360_ _g2297023363_))))
               (_g2296523667_
                (lambda (_g2297023545_)
                  (if (gx#stx-pair? _g2297023545_)
                      (let ((_e2297323547_ (gx#stx-e _g2297023545_)))
                        (let ((_hd2297423550_ (##car _e2297323547_))
                              (_tl2297523552_ (##cdr _e2297323547_)))
                          (if (gx#stx-pair? _tl2297523552_)
                              (let ((_e2297623555_ (gx#stx-e _tl2297523552_)))
                                (let ((_hd2297723558_ (##car _e2297623555_))
                                      (_tl2297823560_ (##cdr _e2297623555_)))
                                  (if (gx#stx-pair? _hd2297723558_)
                                      (let ((_e2297923563_
                                             (gx#stx-e _hd2297723558_)))
                                        (let ((_hd2298023566_
                                               (##car _e2297923563_))
                                              (_tl2298123568_
                                               (##cdr _e2297923563_)))
                                          (if (gx#stx-null? _tl2298123568_)
                                              (if (gx#stx-pair? _tl2297823560_)
                                                  (let ((_e2298223571_
                                                         (gx#stx-e
                                                          _tl2297823560_)))
                                                    (let ((_hd2298323574_
                                                           (##car _e2298223571_))
                                                          (_tl2298423576_
                                                           (##cdr _e2298223571_)))
                                                      (if (gx#stx-null?
                                                           _tl2298423576_)
                                                          ((lambda (_L23579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23580_)
                     (if (if (gx#identifier? _L23580_)
                             (gxc#case-lambda-expr? _L23579_)
                             '#f)
                         (let* ((_g2359723611_
                                 (lambda (_g2359823608_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2359823608_)))
                                (_g2359623642_
                                 (lambda (_g2359823614_)
                                   (if (gx#stx-pair? _g2359823614_)
                                       (let ((_e2360423616_
                                              (gx#stx-e _g2359823614_)))
                                         (let ((_hd2360523619_
                                                (##car _e2360423616_))
                                               (_tl2360623621_
                                                (##cdr _e2360423616_)))
                                           ((lambda (_L23624_)
                                              (let ((_g27906_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22960_
                                                      _L23580_
                                                      _L23624_)))
                                                (begin
                                                  (let ((_g27907_
                                                         (if (##values?
                                                              _g27906_)
                                                             (##vector-length
                                                              _g27906_)
                                                             1)))
                                                    (if (not (##fx= _g27907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            3))
                (error "Context expects 3 values" _g27907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_ids23634_
                                                         (##vector-ref
                                                          _g27906_
                                                          0))
                                                        (_impls23635_
                                                         (##vector-ref
                                                          _g27906_
                                                          1))
                                                        (_clauses23636_
                                                         (##vector-ref
                                                          _g27906_
                                                          2)))
                                                    (let* ((_g27908_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23634_))
                                                           (_defs23639_
                                                            (map _case-lambda-clause-def22962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23634_
                         _impls23635_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#identifier-symbol _L23580_)
                 '" => "
                 (map gxc#identifier-symbol _ids23634_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23580_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23636_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22960_)
                                     '())
                               _defs23639_))
                 _stx22960_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2360623621_)))
                                       (_g2359723611_ _g2359823614_))))
                                (_g2359523664_
                                 (lambda (_g2359823645_)
                                   (if (gx#stx-pair? _g2359823645_)
                                       (let ((_e2360023647_
                                              (gx#stx-e _g2359823645_)))
                                         (let ((_hd2360123650_
                                                (##car _e2360023647_))
                                               (_tl2360223652_
                                                (##cdr _e2360023647_)))
                                           ((lambda (_L23655_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23655_)
                                                  _stx22960_
                                                  (_g2359623642_
                                                   _g2359823645_)))
                                            _tl2360223652_)))
                                       (_g2359623642_ _g2359823645_)))))
                           (_g2359523664_ _L23579_))
                         (_g2296623542_ _g2297023545_)))
                   _hd2298323574_
                   _hd2298023566_)
                  (_g2296623542_ _g2297023545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296623542_
                                                   _g2297023545_))
                                              (_g2296623542_ _g2297023545_))))
                                      (_g2296623542_ _g2297023545_))))
                              (_g2296623542_ _g2297023545_))))
                      (_g2296623542_ _g2297023545_)))))
          (_g2296523667_ _stx22960_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21892_)
      (letrec* ((_bind-e__2785327854_
                 (lambda (_id22944_ _expr22945_ _compile?22946_)
                   (cons (cons _id22944_ '())
                         (cons (if _compile?22946_
                                   (gxc#compile-e _expr22945_)
                                   _expr22945_)
                               '()))))
                (_bind-e__0__2785527856_
                 (lambda (_id22951_ _expr22952_)
                   (let ((_compile?22954_ '#t))
                     (_bind-e__2785327854_
                      _id22951_
                      _expr22952_
                      _compile?22954_))))
                (_bind-e21894_
                 (lambda _g27910_
                   (let ((_g27909_ (length _g27910_)))
                     (cond ((##fx= _g27909_ 2)
                            (apply _bind-e__0__2785527856_ _g27910_))
                           ((##fx= _g27909_ 3)
                            (apply _bind-e__2785327854_ _g27910_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27910_))))))
                (_compile-bindings21895_
                 (lambda (_bindings22528_)
                   (let _lp22530_ ((_rest22532_ _bindings22528_)
                                   (_lift122533_ '())
                                   (_lift222534_ '())
                                   (_bind22535_ '()))
                     (let* ((_rest2253622544_ _rest22532_)
                            (_E2253922548_
                             (lambda ()
                               (error '"No clause matching" _rest2253622544_)))
                            (_else2253822552_
                             (lambda ()
                               (values (reverse _lift122533_)
                                       (reverse _lift222534_)
                                       (reverse _bind22535_))))
                            (_K2254022931_
                             (lambda (_rest22555_ _hd22556_)
                               (let* ((_g2256022596_
                                       (lambda (_g2256122593_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2256122593_)))
                                      (_g2255922637_
                                       (lambda (_g2256122599_)
                                         (if (gx#stx-pair? _g2256122599_)
                                             (let ((_e2258622601_
                                                    (gx#stx-e _g2256122599_)))
                                               (let ((_hd2258722604_
                                                      (##car _e2258622601_))
                                                     (_tl2258822606_
                                                      (##cdr _e2258622601_)))
                                                 (if (gx#stx-pair?
                                                      _tl2258822606_)
                                                     (let ((_e2258922609_
                                                            (gx#stx-e
                                                             _tl2258822606_)))
                                                       (let ((_hd2259022612_
                                                              (##car _e2258922609_))
                                                             (_tl2259122614_
                                                              (##cdr _e2258922609_)))
                                                         (if (gx#stx-null?
                                                              _tl2259122614_)
                                                             ((lambda (_L22617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22618_)
                        (_lp22530_
                         _rest22555_
                         _lift122533_
                         _lift222534_
                         (cons (cons _L22618_
                                     (cons (gxc#compile-e _L22617_) '()))
                               _bind22535_)))
                      _hd2259022612_
                      _hd2258722604_)
                     (_g2256022596_ _g2256122599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2256022596_
                                                      _g2256122599_))))
                                             (_g2256022596_ _g2256122599_))))
                                      (_g2255822809_
                                       (lambda (_g2256122640_)
                                         (if (gx#stx-pair? _g2256122640_)
                                             (let ((_e2257522642_
                                                    (gx#stx-e _g2256122640_)))
                                               (let ((_hd2257622645_
                                                      (##car _e2257522642_))
                                                     (_tl2257722647_
                                                      (##cdr _e2257522642_)))
                                                 (if (gx#stx-pair?
                                                      _hd2257622645_)
                                                     (let ((_e2257822650_
                                                            (gx#stx-e
                                                             _hd2257622645_)))
                                                       (let ((_hd2257922653_
                                                              (##car _e2257822650_))
                                                             (_tl2258022655_
                                                              (##cdr _e2257822650_)))
                                                         (if (gx#stx-null?
                                                              _tl2258022655_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2257722647_)
                         (let ((_e2258122658_ (gx#stx-e _tl2257722647_)))
                           (let ((_hd2258222661_ (##car _e2258122658_))
                                 (_tl2258322663_ (##cdr _e2258122658_)))
                             (if (gx#stx-null? _tl2258322663_)
                                 ((lambda (_L22666_ _L22667_)
                                    (if (if (gx#identifier? _L22667_)
                                            (gxc#opt-lambda-expr? _L22666_)
                                            '#f)
                                        (let* ((_g2268122711_
                                                (lambda (_g2268222708_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2268222708_)))
                                               (_g2268022806_
                                                (lambda (_g2268222714_)
                                                  (if (gx#stx-pair?
                                                       _g2268222714_)
                                                      (let ((_e2268622716_
                                                             (gx#stx-e
                                                              _g2268222714_)))
                                                        (let ((_hd2268722719_
                                                               (##car _e2268622716_))
                                                              (_tl2268822721_
                                                               (##cdr _e2268622716_)))
                                                          (if (gx#stx-pair?
                                                               _tl2268822721_)
                                                              (let ((_e2268922724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2268822721_)))
                        (let ((_hd2269022727_ (##car _e2268922724_))
                              (_tl2269122729_ (##cdr _e2268922724_)))
                          (if (gx#stx-pair? _hd2269022727_)
                              (let ((_e2269222732_ (gx#stx-e _hd2269022727_)))
                                (let ((_hd2269322735_ (##car _e2269222732_))
                                      (_tl2269422737_ (##cdr _e2269222732_)))
                                  (if (gx#stx-pair? _hd2269322735_)
                                      (let ((_e2269522740_
                                             (gx#stx-e _hd2269322735_)))
                                        (let ((_hd2269622743_
                                               (##car _e2269522740_))
                                              (_tl2269722745_
                                               (##cdr _e2269522740_)))
                                          (if (gx#stx-pair? _hd2269622743_)
                                              (let ((_e2269822748_
                                                     (gx#stx-e
                                                      _hd2269622743_)))
                                                (let ((_hd2269922751_
                                                       (##car _e2269822748_))
                                                      (_tl2270022753_
                                                       (##cdr _e2269822748_)))
                                                  (if (gx#stx-null?
                                                       _tl2270022753_)
                                                      (if (gx#stx-pair?
                                                           _tl2269722745_)
                                                          (let ((_e2270122756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2269722745_)))
                    (let ((_hd2270222759_ (##car _e2270122756_))
                          (_tl2270322761_ (##cdr _e2270122756_)))
                      (if (gx#stx-null? _tl2270322761_)
                          (if (gx#stx-null? _tl2269422737_)
                              (if (gx#stx-pair? _tl2269122729_)
                                  (let ((_e2270422764_
                                         (gx#stx-e _tl2269122729_)))
                                    (let ((_hd2270522767_
                                           (##car _e2270422764_))
                                          (_tl2270622769_
                                           (##cdr _e2270422764_)))
                                      (if (gx#stx-null? _tl2270622769_)
                                          ((lambda (_L22772_ _L22773_ _L22774_)
                                             (let* ((_lambda-id22798_
                                                     (make-symbol
                                                      (gx#stx-e _L22667_)
                                                      (gensym '__)))
                                                    (_lambda-id22800_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22798_
                                                      (gx#stx-source
                                                       _stx21892_)))
                                                    (_g27911_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22800_))
                                                    (_new-case-lambda-expr22803_
                                                     (gxc#apply-expression-subst
                                                      _L22772_
                                                      _L22774_
                                                      _lambda-id22800_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L22667_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id22800_))
                                                 (_lp22530_
                                                  (cons (_bind-e__2785327854_
                                                         _L22667_
                                                         _new-case-lambda-expr22803_
                                                         '#f)
                                                        _rest22555_)
                                                  (cons (_bind-e__0__2785527856_
                                                         _lambda-id22800_
                                                         _L22773_)
                                                        _lift122533_)
                                                  _lift222534_
                                                  _bind22535_))))
                                           _hd2270522767_
                                           _hd2270222759_
                                           _hd2269922751_)
                                          (_g2268122711_ _g2268222714_))))
                                  (_g2268122711_ _g2268222714_))
                              (_g2268122711_ _g2268222714_))
                          (_g2268122711_ _g2268222714_))))
                  (_g2268122711_ _g2268222714_))
              (_g2268122711_ _g2268222714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2268122711_ _g2268222714_))))
                                      (_g2268122711_ _g2268222714_))))
                              (_g2268122711_ _g2268222714_))))
                      (_g2268122711_ _g2268222714_))))
              (_g2268122711_ _g2268222714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2268022806_ _L22666_))
                                        (_g2255922637_ _g2256122640_)))
                                  _hd2258222661_
                                  _hd2257922653_)
                                 (_g2255922637_ _g2256122640_))))
                         (_g2255922637_ _g2256122640_))
                     (_g2255922637_ _g2256122640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2255922637_
                                                      _g2256122640_))))
                                             (_g2255922637_ _g2256122640_))))
                                      (_g2255722928_
                                       (lambda (_g2256122812_)
                                         (if (gx#stx-pair? _g2256122812_)
                                             (let ((_e2256422814_
                                                    (gx#stx-e _g2256122812_)))
                                               (let ((_hd2256522817_
                                                      (##car _e2256422814_))
                                                     (_tl2256622819_
                                                      (##cdr _e2256422814_)))
                                                 (if (gx#stx-pair?
                                                      _hd2256522817_)
                                                     (let ((_e2256722822_
                                                            (gx#stx-e
                                                             _hd2256522817_)))
                                                       (let ((_hd2256822825_
                                                              (##car _e2256722822_))
                                                             (_tl2256922827_
                                                              (##cdr _e2256722822_)))
                                                         (if (gx#stx-null?
                                                              _tl2256922827_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2256622819_)
                         (let ((_e2257022830_ (gx#stx-e _tl2256622819_)))
                           (let ((_hd2257122833_ (##car _e2257022830_))
                                 (_tl2257222835_ (##cdr _e2257022830_)))
                             (if (gx#stx-null? _tl2257222835_)
                                 ((lambda (_L22838_ _L22839_)
                                    (if (if (gx#identifier? _L22839_)
                                            (gxc#case-lambda-expr? _L22838_)
                                            '#f)
                                        (let* ((_g2285422868_
                                                (lambda (_g2285522865_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2285522865_)))
                                               (_g2285322903_
                                                (lambda (_g2285522871_)
                                                  (if (gx#stx-pair?
                                                       _g2285522871_)
                                                      (let ((_e2286122873_
                                                             (gx#stx-e
                                                              _g2285522871_)))
                                                        (let ((_hd2286222876_
                                                               (##car _e2286122873_))
                                                              (_tl2286322878_
                                                               (##cdr _e2286122873_)))
                                                          ((lambda (_L22881_)
                                                             (let ((_g27912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21892_
                             _L22839_
                             _L22881_
                             '#t)))
                       (begin
                         (let ((_g27913_
                                (if (##values? _g27912_)
                                    (##vector-length _g27912_)
                                    1)))
                           (if (not (##fx= _g27913_ 3))
                               (error "Context expects 3 values" _g27913_)))
                         (let ((_ids22891_ (##vector-ref _g27912_ 0))
                               (_impls22892_ (##vector-ref _g27912_ 1))
                               (_clauses22893_ (##vector-ref _g27912_ 2)))
                           (let* ((_g27914_
                                   (for-each gx#core-bind-runtime! _ids22891_))
                                  (_xbind22896_
                                   (map _bind-e21894_ _ids22891_ _impls22892_))
                                  (_expr*22898_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22893_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22900_
                                   (_bind-e__2785327854_
                                    _L22839_
                                    _expr*22898_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L22839_)
                                '" => "
                                (map gxc#identifier-symbol _ids22891_))
                               (_lp22530_
                                _rest22555_
                                _lift122533_
                                (foldl1 cons _lift222534_ _xbind22896_)
                                (cons _bind*22900_ _bind22535_))))))))
                   _tl2286322878_)))
              (_g2285422868_ _g2285522871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2285222925_
                                                (lambda (_g2285522906_)
                                                  (if (gx#stx-pair?
                                                       _g2285522906_)
                                                      (let ((_e2285722908_
                                                             (gx#stx-e
                                                              _g2285522906_)))
                                                        (let ((_hd2285822911_
                                                               (##car _e2285722908_))
                                                              (_tl2285922913_
                                                               (##cdr _e2285722908_)))
                                                          ((lambda (_L22916_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22916_)
                         (_lp22530_
                          _rest22555_
                          _lift122533_
                          _lift222534_
                          (cons (_bind-e__2785327854_ _L22839_ _L22838_ '#f)
                                _bind22535_))
                         (_g2285322903_ _g2285522906_)))
                   _tl2285922913_)))
              (_g2285322903_ _g2285522906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2285222925_ _L22838_))
                                        (_g2255822809_ _g2256122812_)))
                                  _hd2257122833_
                                  _hd2256822825_)
                                 (_g2255822809_ _g2256122812_))))
                         (_g2255822809_ _g2256122812_))
                     (_g2255822809_ _g2256122812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2255822809_
                                                      _g2256122812_))))
                                             (_g2255822809_ _g2256122812_)))))
                                 (_g2255722928_ _hd22556_)))))
                       (if (##pair? _rest2253622544_)
                           (let ((_hd2254122934_ (##car _rest2253622544_))
                                 (_tl2254222936_ (##cdr _rest2253622544_)))
                             (let* ((_hd22939_ _hd2254122934_)
                                    (_rest22941_ _tl2254222936_))
                               (_K2254022931_ _rest22941_ _hd22939_)))
                           (_else2253822552_))))))
                (_lift-kw-lambda?21896_
                 (lambda (_bind22452_)
                   (let* ((_g2245522472_
                           (lambda (_g2245622469_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2245622469_)))
                          (_g2245422479_
                           (lambda (_g2245622475_) ((lambda () '#f))))
                          (_g2245322525_
                           (lambda (_g2245622482_)
                             (if (gx#stx-pair? _g2245622482_)
                                 (let ((_e2245922484_
                                        (gx#stx-e _g2245622482_)))
                                   (let ((_hd2246022487_ (##car _e2245922484_))
                                         (_tl2246122489_
                                          (##cdr _e2245922484_)))
                                     (if (gx#stx-pair? _hd2246022487_)
                                         (let ((_e2246222492_
                                                (gx#stx-e _hd2246022487_)))
                                           (let ((_hd2246322495_
                                                  (##car _e2246222492_))
                                                 (_tl2246422497_
                                                  (##cdr _e2246222492_)))
                                             (if (gx#stx-null? _tl2246422497_)
                                                 (if (gx#stx-pair?
                                                      _tl2246122489_)
                                                     (let ((_e2246522500_
                                                            (gx#stx-e
                                                             _tl2246122489_)))
                                                       (let ((_hd2246622503_
                                                              (##car _e2246522500_))
                                                             (_tl2246722505_
                                                              (##cdr _e2246522500_)))
                                                         (if (gx#stx-null?
                                                              _tl2246722505_)
                                                             ((lambda (_L22508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22509_)
                        (if (gx#identifier? _L22509_)
                            (gxc#kw-lambda-expr? _L22508_)
                            '#f))
                      _hd2246622503_
                      _hd2246322495_)
                     (_g2245422479_ _g2245622482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2245422479_
                                                      _g2245622482_))
                                                 (_g2245422479_
                                                  _g2245622482_))))
                                         (_g2245422479_ _g2245622482_))))
                                 (_g2245422479_ _g2245622482_)))))
                     (_g2245322525_ _bind22452_))))
                (_lift-kw-lambda-bindings21897_
                 (lambda (_bindings22064_)
                   (let _lp22066_ ((_rest22068_ _bindings22064_)
                                   (_lift122069_ '())
                                   (_lift222070_ '())
                                   (_bind22071_ '()))
                     (let* ((_rest2207222080_ _rest22068_)
                            (_E2207522084_
                             (lambda ()
                               (error '"No clause matching" _rest2207222080_)))
                            (_else2207422088_
                             (lambda ()
                               (values (reverse _lift122069_)
                                       (reverse _lift222070_)
                                       (reverse _bind22071_))))
                            (_K2207622440_
                             (lambda (_rest22091_ _hd22092_)
                               (let* ((_g2209522120_
                                       (lambda (_g2209622117_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2209622117_)))
                                      (_g2209422161_
                                       (lambda (_g2209622123_)
                                         (if (gx#stx-pair? _g2209622123_)
                                             (let ((_e2211022125_
                                                    (gx#stx-e _g2209622123_)))
                                               (let ((_hd2211122128_
                                                      (##car _e2211022125_))
                                                     (_tl2211222130_
                                                      (##cdr _e2211022125_)))
                                                 (if (gx#stx-pair?
                                                      _tl2211222130_)
                                                     (let ((_e2211322133_
                                                            (gx#stx-e
                                                             _tl2211222130_)))
                                                       (let ((_hd2211422136_
                                                              (##car _e2211322133_))
                                                             (_tl2211522138_
                                                              (##cdr _e2211322133_)))
                                                         (if (gx#stx-null?
                                                              _tl2211522138_)
                                                             ((lambda (_L22141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22142_)
                        (_lp22066_
                         _rest22091_
                         _lift122069_
                         _lift222070_
                         (cons (cons _L22142_ (cons _L22141_ '()))
                               _bind22071_)))
                      _hd2211422136_
                      _hd2211122128_)
                     (_g2209522120_ _g2209622123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2209522120_
                                                      _g2209622123_))))
                                             (_g2209522120_ _g2209622123_))))
                                      (_g2209322437_
                                       (lambda (_g2209622164_)
                                         (if (gx#stx-pair? _g2209622164_)
                                             (let ((_e2209922166_
                                                    (gx#stx-e _g2209622164_)))
                                               (let ((_hd2210022169_
                                                      (##car _e2209922166_))
                                                     (_tl2210122171_
                                                      (##cdr _e2209922166_)))
                                                 (if (gx#stx-pair?
                                                      _hd2210022169_)
                                                     (let ((_e2210222174_
                                                            (gx#stx-e
                                                             _hd2210022169_)))
                                                       (let ((_hd2210322177_
                                                              (##car _e2210222174_))
                                                             (_tl2210422179_
                                                              (##cdr _e2210222174_)))
                                                         (if (gx#stx-null?
                                                              _tl2210422179_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2210122171_)
                         (let ((_e2210522182_ (gx#stx-e _tl2210122171_)))
                           (let ((_hd2210622185_ (##car _e2210522182_))
                                 (_tl2210722187_ (##cdr _e2210522182_)))
                             (if (gx#stx-null? _tl2210722187_)
                                 ((lambda (_L22190_ _L22191_)
                                    (if (if (gx#identifier? _L22191_)
                                            (gxc#kw-lambda-expr? _L22190_)
                                            '#f)
                                        (let* ((_g2220522258_
                                                (lambda (_g2220622255_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2220622255_)))
                                               (_g2220422434_
                                                (lambda (_g2220622261_)
                                                  (if (gx#stx-pair?
                                                       _g2220622261_)
                                                      (let ((_e2221222263_
                                                             (gx#stx-e
                                                              _g2220622261_)))
                                                        (let ((_hd2221322266_
                                                               (##car _e2221222263_))
                                                              (_tl2221422268_
                                                               (##cdr _e2221222263_)))
                                                          (if (gx#stx-pair?
                                                               _tl2221422268_)
                                                              (let ((_e2221522271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2221422268_)))
                        (let ((_hd2221622274_ (##car _e2221522271_))
                              (_tl2221722276_ (##cdr _e2221522271_)))
                          (if (gx#stx-pair? _hd2221622274_)
                              (let ((_e2221822279_ (gx#stx-e _hd2221622274_)))
                                (let ((_hd2221922282_ (##car _e2221822279_))
                                      (_tl2222022284_ (##cdr _e2221822279_)))
                                  (if (gx#stx-pair? _hd2221922282_)
                                      (let ((_e2222122287_
                                             (gx#stx-e _hd2221922282_)))
                                        (let ((_hd2222222290_
                                               (##car _e2222122287_))
                                              (_tl2222322292_
                                               (##cdr _e2222122287_)))
                                          (if (gx#stx-pair? _hd2222222290_)
                                              (let ((_e2222422295_
                                                     (gx#stx-e
                                                      _hd2222222290_)))
                                                (let ((_hd2222522298_
                                                       (##car _e2222422295_))
                                                      (_tl2222622300_
                                                       (##cdr _e2222422295_)))
                                                  (if (gx#stx-null?
                                                       _tl2222622300_)
                                                      (if (gx#stx-pair?
                                                           _tl2222322292_)
                                                          (let ((_e2222722303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2222322292_)))
                    (let ((_hd2222822306_ (##car _e2222722303_))
                          (_tl2222922308_ (##cdr _e2222722303_)))
                      (if (gx#stx-pair? _hd2222822306_)
                          (let ((_e2223022311_ (gx#stx-e _hd2222822306_)))
                            (let ((_hd2223122314_ (##car _e2223022311_))
                                  (_tl2223222316_ (##cdr _e2223022311_)))
                              (if (gx#stx-pair? _tl2223222316_)
                                  (let ((_e2223322319_
                                         (gx#stx-e _tl2223222316_)))
                                    (let ((_hd2223422322_
                                           (##car _e2223322319_))
                                          (_tl2223522324_
                                           (##cdr _e2223322319_)))
                                      (if (gx#stx-pair? _hd2223422322_)
                                          (let ((_e2223622327_
                                                 (gx#stx-e _hd2223422322_)))
                                            (let ((_hd2223722330_
                                                   (##car _e2223622327_))
                                                  (_tl2223822332_
                                                   (##cdr _e2223622327_)))
                                              (if (gx#stx-pair? _hd2223722330_)
                                                  (let ((_e2223922335_
                                                         (gx#stx-e
                                                          _hd2223722330_)))
                                                    (let ((_hd2224022338_
                                                           (##car _e2223922335_))
                                                          (_tl2224122340_
                                                           (##cdr _e2223922335_)))
                                                      (if (gx#stx-pair?
                                                           _hd2224022338_)
                                                          (let ((_e2224222343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2224022338_)))
                    (let ((_hd2224322346_ (##car _e2224222343_))
                          (_tl2224422348_ (##cdr _e2224222343_)))
                      (if (gx#stx-null? _tl2224422348_)
                          (if (gx#stx-pair? _tl2224122340_)
                              (let ((_e2224522351_ (gx#stx-e _tl2224122340_)))
                                (let ((_hd2224622354_ (##car _e2224522351_))
                                      (_tl2224722356_ (##cdr _e2224522351_)))
                                  (if (gx#stx-null? _tl2224722356_)
                                      (if (gx#stx-null? _tl2223822332_)
                                          (if (gx#stx-pair? _tl2223522324_)
                                              (let ((_e2224822359_
                                                     (gx#stx-e
                                                      _tl2223522324_)))
                                                (let ((_hd2224922362_
                                                       (##car _e2224822359_))
                                                      (_tl2225022364_
                                                       (##cdr _e2224822359_)))
                                                  (if (gx#stx-null?
                                                       _tl2225022364_)
                                                      (if (gx#stx-null?
                                                           _tl2222922308_)
                                                          (if (gx#stx-null?
                                                               _tl2222022284_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2221722276_)
                          (let ((_e2225122367_ (gx#stx-e _tl2221722276_)))
                            (let ((_hd2225222370_ (##car _e2225122367_))
                                  (_tl2225322372_ (##cdr _e2225122367_)))
                              (if (gx#stx-null? _tl2225322372_)
                                  ((lambda (_L22375_
                                            _L22376_
                                            _L22377_
                                            _L22378_
                                            _L22379_)
                                     (let* ((_get-kws-id22419_
                                             (make-symbol
                                              (gx#stx-e _L22191_)
                                              (gensym '__)))
                                            (_get-kws-id22421_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id22419_
                                              (gx#stx-source _stx21892_)))
                                            (_main-id22423_
                                             (make-symbol
                                              (gx#stx-e _L22191_)
                                              (gensym '__)))
                                            (_main-id22425_
                                             (gx#core-quote-syntax__1
                                              _main-id22423_
                                              (gx#stx-source _stx21892_)))
                                            (_g27915_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id22421_))
                                            (_g27916_
                                             (gx#core-bind-runtime!__0
                                              _main-id22425_))
                                            (_new-kw-dispatch22429_
                                             (gxc#apply-expression-subst
                                              _L22375_
                                              _L22379_
                                              _get-kws-id22421_))
                                            (_new-get-kws22431_
                                             (gxc#apply-expression-subst
                                              _L22376_
                                              _L22378_
                                              _main-id22425_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L22191_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id22421_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id22425_))
                                         (_lp22066_
                                          _rest22091_
                                          (cons (_bind-e__2785327854_
                                                 _main-id22425_
                                                 _L22377_
                                                 '#f)
                                                _lift122069_)
                                          (cons (_bind-e__2785327854_
                                                 _get-kws-id22421_
                                                 _new-get-kws22431_
                                                 '#f)
                                                _lift222070_)
                                          (cons (_bind-e__2785327854_
                                                 _L22191_
                                                 _new-kw-dispatch22429_
                                                 '#f)
                                                _bind22071_)))))
                                   _hd2225222370_
                                   _hd2224922362_
                                   _hd2224622354_
                                   _hd2224322346_
                                   _hd2222522298_)
                                  (_g2220522258_ _g2220622261_))))
                          (_g2220522258_ _g2220622261_))
                      (_g2220522258_ _g2220622261_))
                  (_g2220522258_ _g2220622261_))
              (_g2220522258_ _g2220622261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2220522258_ _g2220622261_))
                                          (_g2220522258_ _g2220622261_))
                                      (_g2220522258_ _g2220622261_))))
                              (_g2220522258_ _g2220622261_))
                          (_g2220522258_ _g2220622261_))))
                  (_g2220522258_ _g2220622261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2220522258_
                                                   _g2220622261_))))
                                          (_g2220522258_ _g2220622261_))))
                                  (_g2220522258_ _g2220622261_))))
                          (_g2220522258_ _g2220622261_))))
                  (_g2220522258_ _g2220622261_))
              (_g2220522258_ _g2220622261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2220522258_ _g2220622261_))))
                                      (_g2220522258_ _g2220622261_))))
                              (_g2220522258_ _g2220622261_))))
                      (_g2220522258_ _g2220622261_))))
              (_g2220522258_ _g2220622261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2220422434_ _L22190_))
                                        (_g2209422161_ _g2209622164_)))
                                  _hd2210622185_
                                  _hd2210322177_)
                                 (_g2209422161_ _g2209622164_))))
                         (_g2209422161_ _g2209622164_))
                     (_g2209422161_ _g2209622164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2209422161_
                                                      _g2209622164_))))
                                             (_g2209422161_ _g2209622164_)))))
                                 (_g2209322437_ _hd22092_)))))
                       (if (##pair? _rest2207222080_)
                           (let ((_hd2207722443_ (##car _rest2207222080_))
                                 (_tl2207822445_ (##cdr _rest2207222080_)))
                             (let* ((_hd22448_ _hd2207722443_)
                                    (_rest22450_ _tl2207822445_))
                               (_K2207622440_ _rest22450_ _hd22448_)))
                           (_else2207422088_)))))))
        (let* ((_g2190021926_
                (lambda (_g2190121923_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2190121923_)))
               (_g2189921933_
                (lambda (_g2190121929_)
                  ((lambda () (gxc#xform-let-values% _stx21892_)))))
               (_g2189822061_
                (lambda (_g2190121936_)
                  (if (gx#stx-pair? _g2190121936_)
                      (let ((_e2190421938_ (gx#stx-e _g2190121936_)))
                        (let ((_hd2190521941_ (##car _e2190421938_))
                              (_tl2190621943_ (##cdr _e2190421938_)))
                          (if (gx#stx-pair? _tl2190621943_)
                              (let ((_e2190721946_ (gx#stx-e _tl2190621943_)))
                                (let ((_hd2190821949_ (##car _e2190721946_))
                                      (_tl2190921951_ (##cdr _e2190721946_)))
                                  (if (gx#stx-pair/null? _hd2190821949_)
                                      (if (fx>= (gx#stx-length _hd2190821949_)
                                                '0)
                                          (let ((_g27917_
                                                 (gx#syntax-split-splice
                                                  _hd2190821949_
                                                  '0)))
                                            (begin
                                              (let ((_g27918_
                                                     (if (##values? _g27917_)
                                                         (##vector-length
                                                          _g27917_)
                                                         1)))
                                                (if (not (##fx= _g27918_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27918_)))
                                              (let ((_target2191021954_
                                                     (##vector-ref _g27917_ 0))
                                                    (_tl2191221956_
                                                     (##vector-ref
                                                      _g27917_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2191221956_)
                                                    (letrec ((_loop2191321959_
                                                              (lambda (_hd2191121962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2191721964_)
                        (if (gx#stx-pair? _hd2191121962_)
                            (let ((_e2191421967_ (gx#stx-e _hd2191121962_)))
                              (let ((_lp-hd2191521970_ (##car _e2191421967_))
                                    (_lp-tl2191621972_ (##cdr _e2191421967_)))
                                (_loop2191321959_
                                 _lp-tl2191621972_
                                 (cons _lp-hd2191521970_ _bind2191721964_))))
                            (let ((_bind2191821975_
                                   (reverse _bind2191721964_)))
                              (if (gx#stx-pair? _tl2190921951_)
                                  (let ((_e2191921978_
                                         (gx#stx-e _tl2190921951_)))
                                    (let ((_hd2192021981_
                                           (##car _e2191921978_))
                                          (_tl2192121983_
                                           (##cdr _e2191921978_)))
                                      (if (gx#stx-null? _tl2192121983_)
                                          ((lambda (_L21986_ _L21987_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2200722010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2200822012_)
                             (cons _g2200722010_ _g2200822012_))
                           '()
                           _L21987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?21896_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2201522018_ _g2201622020_)
                                    (cons _g2201522018_ _g2201622020_))
                                  '()
                                  _L21987_)))
                (let ((_g27919_
                       (_lift-kw-lambda-bindings21897_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2202222025_ _g2202322027_)
                                    (cons _g2202222025_ _g2202322027_))
                                  '()
                                  _L21987_)))))
                  (begin
                    (let ((_g27920_
                           (if (##values? _g27919_)
                               (##vector-length _g27919_)
                               1)))
                      (if (not (##fx= _g27920_ 3))
                          (error "Context expects 3 values" _g27920_)))
                    (let ((_lift122030_ (##vector-ref _g27919_ 0))
                          (_lift222031_ (##vector-ref _g27919_ 1))
                          (_hd22032_ (##vector-ref _g27919_ 2)))
                      (let* ((_expr22034_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd22032_ (cons _L21986_ '())))
                               _stx21892_))
                             (_expr22036_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift222031_
                                           (cons _expr22034_ '())))
                               _stx21892_))
                             (_expr22038_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift122030_
                                           (cons _expr22036_ '())))
                               _stx21892_)))
                        (gxc#lift-top-lambda-let-values% _expr22038_)))))
                (let ((_g27921_
                       (_compile-bindings21895_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2204022043_ _g2204122045_)
                                    (cons _g2204022043_ _g2204122045_))
                                  '()
                                  _L21987_)))))
                  (begin
                    (let ((_g27922_
                           (if (##values? _g27921_)
                               (##vector-length _g27921_)
                               1)))
                      (if (not (##fx= _g27922_ 3))
                          (error "Context expects 3 values" _g27922_)))
                    (let ((_lift122048_ (##vector-ref _g27921_ 0))
                          (_lift222049_ (##vector-ref _g27921_ 1))
                          (_hd22050_ (##vector-ref _g27921_ 2)))
                      (let* ((_body22052_ (gxc#compile-e _L21986_))
                             (_expr22054_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd22050_ (cons _body22052_ '())))
                               _stx21892_))
                             (_expr22056_
                              (if (null? _lift222049_)
                                  _expr22054_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift222049_
                                               (cons _expr22054_ '())))
                                   _stx21892_)))
                             (_expr22058_
                              (if (null? _lift122048_)
                                  _expr22056_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift122048_
                                               (cons _expr22056_ '())))
                                   _stx21892_))))
                        _expr22058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27863
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27863)
                                                      __obj27863)))
                                                 (_g2189921933_
                                                  _g2190121936_)))
                                           _hd2192021981_
                                           _bind2191821975_)
                                          (_g2189921933_ _g2190121936_))))
                                  (_g2189921933_ _g2190121936_)))))))
              (_loop2191321959_ _target2191021954_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2189921933_
                                                     _g2190121936_)))))
                                          (_g2189921933_ _g2190121936_))
                                      (_g2189921933_ _g2190121936_))))
                              (_g2189921933_ _g2190121936_))))
                      (_g2189921933_ _g2190121936_)))))
          (_g2189822061_ _stx21892_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx21036_)
      (letrec* ((_bind-e__2785827859_
                 (lambda (_id21876_ _expr21877_ _compile?21878_)
                   (cons (cons _id21876_ '())
                         (cons (if _compile?21878_
                                   (gxc#compile-e _expr21877_)
                                   _expr21877_)
                               '()))))
                (_bind-e__0__2786027861_
                 (lambda (_id21883_ _expr21884_)
                   (let ((_compile?21886_ '#t))
                     (_bind-e__2785827859_
                      _id21883_
                      _expr21884_
                      _compile?21886_))))
                (_bind-e21038_
                 (lambda _g27924_
                   (let ((_g27923_ (length _g27924_)))
                     (cond ((##fx= _g27923_ 2)
                            (apply _bind-e__0__2786027861_ _g27924_))
                           ((##fx= _g27923_ 3)
                            (apply _bind-e__2785827859_ _g27924_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27924_))))))
                (_compile-bindings21039_
                 (lambda (_rest21174_)
                   (let _lp21176_ ((_rest21178_ _rest21174_) (_bind21179_ '()))
                     (let* ((_rest2118021188_ _rest21178_)
                            (_E2118321192_
                             (lambda ()
                               (error '"No clause matching" _rest2118021188_)))
                            (_else2118221196_
                             (lambda () (reverse _bind21179_)))
                            (_K2118421863_
                             (lambda (_rest21199_ _hd21200_)
                               (let* ((_g2120521252_
                                       (lambda (_g2120621249_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2120621249_)))
                                      (_g2120421293_
                                       (lambda (_g2120621255_)
                                         (if (gx#stx-pair? _g2120621255_)
                                             (let ((_e2124221257_
                                                    (gx#stx-e _g2120621255_)))
                                               (let ((_hd2124321260_
                                                      (##car _e2124221257_))
                                                     (_tl2124421262_
                                                      (##cdr _e2124221257_)))
                                                 (if (gx#stx-pair?
                                                      _tl2124421262_)
                                                     (let ((_e2124521265_
                                                            (gx#stx-e
                                                             _tl2124421262_)))
                                                       (let ((_hd2124621268_
                                                              (##car _e2124521265_))
                                                             (_tl2124721270_
                                                              (##cdr _e2124521265_)))
                                                         (if (gx#stx-null?
                                                              _tl2124721270_)
                                                             ((lambda (_L21273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21274_)
                        (_lp21176_
                         _rest21199_
                         (cons (cons _L21274_
                                     (cons (gxc#compile-e _L21273_) '()))
                               _bind21179_)))
                      _hd2124621268_
                      _hd2124321260_)
                     (_g2120521252_ _g2120621255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120521252_
                                                      _g2120621255_))))
                                             (_g2120521252_ _g2120621255_))))
                                      (_g2120321569_
                                       (lambda (_g2120621296_)
                                         (if (gx#stx-pair? _g2120621296_)
                                             (let ((_e2123121298_
                                                    (gx#stx-e _g2120621296_)))
                                               (let ((_hd2123221301_
                                                      (##car _e2123121298_))
                                                     (_tl2123321303_
                                                      (##cdr _e2123121298_)))
                                                 (if (gx#stx-pair?
                                                      _hd2123221301_)
                                                     (let ((_e2123421306_
                                                            (gx#stx-e
                                                             _hd2123221301_)))
                                                       (let ((_hd2123521309_
                                                              (##car _e2123421306_))
                                                             (_tl2123621311_
                                                              (##cdr _e2123421306_)))
                                                         (if (gx#stx-null?
                                                              _tl2123621311_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2123321303_)
                         (let ((_e2123721314_ (gx#stx-e _tl2123321303_)))
                           (let ((_hd2123821317_ (##car _e2123721314_))
                                 (_tl2123921319_ (##cdr _e2123721314_)))
                             (if (gx#stx-null? _tl2123921319_)
                                 ((lambda (_L21322_ _L21323_)
                                    (if (if (gx#identifier? _L21323_)
                                            (gxc#kw-lambda-expr? _L21322_)
                                            '#f)
                                        (let* ((_g2133721390_
                                                (lambda (_g2133821387_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2133821387_)))
                                               (_g2133621566_
                                                (lambda (_g2133821393_)
                                                  (if (gx#stx-pair?
                                                       _g2133821393_)
                                                      (let ((_e2134421395_
                                                             (gx#stx-e
                                                              _g2133821393_)))
                                                        (let ((_hd2134521398_
                                                               (##car _e2134421395_))
                                                              (_tl2134621400_
                                                               (##cdr _e2134421395_)))
                                                          (if (gx#stx-pair?
                                                               _tl2134621400_)
                                                              (let ((_e2134721403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2134621400_)))
                        (let ((_hd2134821406_ (##car _e2134721403_))
                              (_tl2134921408_ (##cdr _e2134721403_)))
                          (if (gx#stx-pair? _hd2134821406_)
                              (let ((_e2135021411_ (gx#stx-e _hd2134821406_)))
                                (let ((_hd2135121414_ (##car _e2135021411_))
                                      (_tl2135221416_ (##cdr _e2135021411_)))
                                  (if (gx#stx-pair? _hd2135121414_)
                                      (let ((_e2135321419_
                                             (gx#stx-e _hd2135121414_)))
                                        (let ((_hd2135421422_
                                               (##car _e2135321419_))
                                              (_tl2135521424_
                                               (##cdr _e2135321419_)))
                                          (if (gx#stx-pair? _hd2135421422_)
                                              (let ((_e2135621427_
                                                     (gx#stx-e
                                                      _hd2135421422_)))
                                                (let ((_hd2135721430_
                                                       (##car _e2135621427_))
                                                      (_tl2135821432_
                                                       (##cdr _e2135621427_)))
                                                  (if (gx#stx-null?
                                                       _tl2135821432_)
                                                      (if (gx#stx-pair?
                                                           _tl2135521424_)
                                                          (let ((_e2135921435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2135521424_)))
                    (let ((_hd2136021438_ (##car _e2135921435_))
                          (_tl2136121440_ (##cdr _e2135921435_)))
                      (if (gx#stx-pair? _hd2136021438_)
                          (let ((_e2136221443_ (gx#stx-e _hd2136021438_)))
                            (let ((_hd2136321446_ (##car _e2136221443_))
                                  (_tl2136421448_ (##cdr _e2136221443_)))
                              (if (gx#stx-pair? _tl2136421448_)
                                  (let ((_e2136521451_
                                         (gx#stx-e _tl2136421448_)))
                                    (let ((_hd2136621454_
                                           (##car _e2136521451_))
                                          (_tl2136721456_
                                           (##cdr _e2136521451_)))
                                      (if (gx#stx-pair? _hd2136621454_)
                                          (let ((_e2136821459_
                                                 (gx#stx-e _hd2136621454_)))
                                            (let ((_hd2136921462_
                                                   (##car _e2136821459_))
                                                  (_tl2137021464_
                                                   (##cdr _e2136821459_)))
                                              (if (gx#stx-pair? _hd2136921462_)
                                                  (let ((_e2137121467_
                                                         (gx#stx-e
                                                          _hd2136921462_)))
                                                    (let ((_hd2137221470_
                                                           (##car _e2137121467_))
                                                          (_tl2137321472_
                                                           (##cdr _e2137121467_)))
                                                      (if (gx#stx-pair?
                                                           _hd2137221470_)
                                                          (let ((_e2137421475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2137221470_)))
                    (let ((_hd2137521478_ (##car _e2137421475_))
                          (_tl2137621480_ (##cdr _e2137421475_)))
                      (if (gx#stx-null? _tl2137621480_)
                          (if (gx#stx-pair? _tl2137321472_)
                              (let ((_e2137721483_ (gx#stx-e _tl2137321472_)))
                                (let ((_hd2137821486_ (##car _e2137721483_))
                                      (_tl2137921488_ (##cdr _e2137721483_)))
                                  (if (gx#stx-null? _tl2137921488_)
                                      (if (gx#stx-null? _tl2137021464_)
                                          (if (gx#stx-pair? _tl2136721456_)
                                              (let ((_e2138021491_
                                                     (gx#stx-e
                                                      _tl2136721456_)))
                                                (let ((_hd2138121494_
                                                       (##car _e2138021491_))
                                                      (_tl2138221496_
                                                       (##cdr _e2138021491_)))
                                                  (if (gx#stx-null?
                                                       _tl2138221496_)
                                                      (if (gx#stx-null?
                                                           _tl2136121440_)
                                                          (if (gx#stx-null?
                                                               _tl2135221416_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2134921408_)
                          (let ((_e2138321499_ (gx#stx-e _tl2134921408_)))
                            (let ((_hd2138421502_ (##car _e2138321499_))
                                  (_tl2138521504_ (##cdr _e2138321499_)))
                              (if (gx#stx-null? _tl2138521504_)
                                  ((lambda (_L21507_
                                            _L21508_
                                            _L21509_
                                            _L21510_
                                            _L21511_)
                                     (let* ((_get-kws-id21551_
                                             (make-symbol
                                              (gx#stx-e _L21323_)
                                              (gensym '__)))
                                            (_get-kws-id21553_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id21551_
                                              (gx#stx-source _stx21036_)))
                                            (_main-id21555_
                                             (make-symbol
                                              (gx#stx-e _L21323_)
                                              (gensym '__)))
                                            (_main-id21557_
                                             (gx#core-quote-syntax__1
                                              _main-id21555_
                                              (gx#stx-source _stx21036_)))
                                            (_g27925_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21553_))
                                            (_g27926_
                                             (gx#core-bind-runtime!__0
                                              _main-id21557_))
                                            (_new-kw-dispatch21561_
                                             (gxc#apply-expression-subst
                                              _L21507_
                                              _L21511_
                                              _get-kws-id21553_))
                                            (_new-get-kws21563_
                                             (gxc#apply-expression-subst
                                              _L21508_
                                              _L21510_
                                              _main-id21557_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L21323_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id21553_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id21557_))
                                         (_lp21176_
                                          (cons (_bind-e__2785827859_
                                                 _main-id21557_
                                                 _L21509_
                                                 '#f)
                                                (cons (_bind-e__2785827859_
                                                       _get-kws-id21553_
                                                       _new-get-kws21563_
                                                       '#f)
                                                      (cons (_bind-e__2785827859_
                                                             _L21323_
                                                             _new-kw-dispatch21561_
                                                             '#f)
                                                            _rest21199_)))
                                          _bind21179_))))
                                   _hd2138421502_
                                   _hd2138121494_
                                   _hd2137821486_
                                   _hd2137521478_
                                   _hd2135721430_)
                                  (_g2133721390_ _g2133821393_))))
                          (_g2133721390_ _g2133821393_))
                      (_g2133721390_ _g2133821393_))
                  (_g2133721390_ _g2133821393_))
              (_g2133721390_ _g2133821393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2133721390_ _g2133821393_))
                                          (_g2133721390_ _g2133821393_))
                                      (_g2133721390_ _g2133821393_))))
                              (_g2133721390_ _g2133821393_))
                          (_g2133721390_ _g2133821393_))))
                  (_g2133721390_ _g2133821393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133721390_
                                                   _g2133821393_))))
                                          (_g2133721390_ _g2133821393_))))
                                  (_g2133721390_ _g2133821393_))))
                          (_g2133721390_ _g2133821393_))))
                  (_g2133721390_ _g2133821393_))
              (_g2133721390_ _g2133821393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2133721390_ _g2133821393_))))
                                      (_g2133721390_ _g2133821393_))))
                              (_g2133721390_ _g2133821393_))))
                      (_g2133721390_ _g2133821393_))))
              (_g2133721390_ _g2133821393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2133621566_ _L21322_))
                                        (_g2120421293_ _g2120621296_)))
                                  _hd2123821317_
                                  _hd2123521309_)
                                 (_g2120421293_ _g2120621296_))))
                         (_g2120421293_ _g2120621296_))
                     (_g2120421293_ _g2120621296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120421293_
                                                      _g2120621296_))))
                                             (_g2120421293_ _g2120621296_))))
                                      (_g2120221741_
                                       (lambda (_g2120621572_)
                                         (if (gx#stx-pair? _g2120621572_)
                                             (let ((_e2122021574_
                                                    (gx#stx-e _g2120621572_)))
                                               (let ((_hd2122121577_
                                                      (##car _e2122021574_))
                                                     (_tl2122221579_
                                                      (##cdr _e2122021574_)))
                                                 (if (gx#stx-pair?
                                                      _hd2122121577_)
                                                     (let ((_e2122321582_
                                                            (gx#stx-e
                                                             _hd2122121577_)))
                                                       (let ((_hd2122421585_
                                                              (##car _e2122321582_))
                                                             (_tl2122521587_
                                                              (##cdr _e2122321582_)))
                                                         (if (gx#stx-null?
                                                              _tl2122521587_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2122221579_)
                         (let ((_e2122621590_ (gx#stx-e _tl2122221579_)))
                           (let ((_hd2122721593_ (##car _e2122621590_))
                                 (_tl2122821595_ (##cdr _e2122621590_)))
                             (if (gx#stx-null? _tl2122821595_)
                                 ((lambda (_L21598_ _L21599_)
                                    (if (if (gx#identifier? _L21599_)
                                            (gxc#opt-lambda-expr? _L21598_)
                                            '#f)
                                        (let* ((_g2161321643_
                                                (lambda (_g2161421640_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2161421640_)))
                                               (_g2161221738_
                                                (lambda (_g2161421646_)
                                                  (if (gx#stx-pair?
                                                       _g2161421646_)
                                                      (let ((_e2161821648_
                                                             (gx#stx-e
                                                              _g2161421646_)))
                                                        (let ((_hd2161921651_
                                                               (##car _e2161821648_))
                                                              (_tl2162021653_
                                                               (##cdr _e2161821648_)))
                                                          (if (gx#stx-pair?
                                                               _tl2162021653_)
                                                              (let ((_e2162121656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2162021653_)))
                        (let ((_hd2162221659_ (##car _e2162121656_))
                              (_tl2162321661_ (##cdr _e2162121656_)))
                          (if (gx#stx-pair? _hd2162221659_)
                              (let ((_e2162421664_ (gx#stx-e _hd2162221659_)))
                                (let ((_hd2162521667_ (##car _e2162421664_))
                                      (_tl2162621669_ (##cdr _e2162421664_)))
                                  (if (gx#stx-pair? _hd2162521667_)
                                      (let ((_e2162721672_
                                             (gx#stx-e _hd2162521667_)))
                                        (let ((_hd2162821675_
                                               (##car _e2162721672_))
                                              (_tl2162921677_
                                               (##cdr _e2162721672_)))
                                          (if (gx#stx-pair? _hd2162821675_)
                                              (let ((_e2163021680_
                                                     (gx#stx-e
                                                      _hd2162821675_)))
                                                (let ((_hd2163121683_
                                                       (##car _e2163021680_))
                                                      (_tl2163221685_
                                                       (##cdr _e2163021680_)))
                                                  (if (gx#stx-null?
                                                       _tl2163221685_)
                                                      (if (gx#stx-pair?
                                                           _tl2162921677_)
                                                          (let ((_e2163321688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2162921677_)))
                    (let ((_hd2163421691_ (##car _e2163321688_))
                          (_tl2163521693_ (##cdr _e2163321688_)))
                      (if (gx#stx-null? _tl2163521693_)
                          (if (gx#stx-null? _tl2162621669_)
                              (if (gx#stx-pair? _tl2162321661_)
                                  (let ((_e2163621696_
                                         (gx#stx-e _tl2162321661_)))
                                    (let ((_hd2163721699_
                                           (##car _e2163621696_))
                                          (_tl2163821701_
                                           (##cdr _e2163621696_)))
                                      (if (gx#stx-null? _tl2163821701_)
                                          ((lambda (_L21704_ _L21705_ _L21706_)
                                             (let* ((_lambda-id21730_
                                                     (make-symbol
                                                      (gx#stx-e _L21599_)
                                                      (gensym '__)))
                                                    (_lambda-id21732_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21730_
                                                      (gx#stx-source
                                                       _stx21036_)))
                                                    (_g27927_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21732_))
                                                    (_new-case-lambda-expr21735_
                                                     (gxc#apply-expression-subst
                                                      _L21704_
                                                      _L21706_
                                                      _lambda-id21732_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L21599_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id21732_))
                                                 (_lp21176_
                                                  (cons (_bind-e__2785827859_
                                                         _L21599_
                                                         _new-case-lambda-expr21735_
                                                         '#f)
                                                        _rest21199_)
                                                  (cons (_bind-e__0__2786027861_
                                                         _lambda-id21732_
                                                         _L21705_)
                                                        _bind21179_)))))
                                           _hd2163721699_
                                           _hd2163421691_
                                           _hd2163121683_)
                                          (_g2161321643_ _g2161421646_))))
                                  (_g2161321643_ _g2161421646_))
                              (_g2161321643_ _g2161421646_))
                          (_g2161321643_ _g2161421646_))))
                  (_g2161321643_ _g2161421646_))
              (_g2161321643_ _g2161421646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2161321643_ _g2161421646_))))
                                      (_g2161321643_ _g2161421646_))))
                              (_g2161321643_ _g2161421646_))))
                      (_g2161321643_ _g2161421646_))))
              (_g2161321643_ _g2161421646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2161221738_ _L21598_))
                                        (_g2120321569_ _g2120621572_)))
                                  _hd2122721593_
                                  _hd2122421585_)
                                 (_g2120321569_ _g2120621572_))))
                         (_g2120321569_ _g2120621572_))
                     (_g2120321569_ _g2120621572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120321569_
                                                      _g2120621572_))))
                                             (_g2120321569_ _g2120621572_))))
                                      (_g2120121860_
                                       (lambda (_g2120621744_)
                                         (if (gx#stx-pair? _g2120621744_)
                                             (let ((_e2120921746_
                                                    (gx#stx-e _g2120621744_)))
                                               (let ((_hd2121021749_
                                                      (##car _e2120921746_))
                                                     (_tl2121121751_
                                                      (##cdr _e2120921746_)))
                                                 (if (gx#stx-pair?
                                                      _hd2121021749_)
                                                     (let ((_e2121221754_
                                                            (gx#stx-e
                                                             _hd2121021749_)))
                                                       (let ((_hd2121321757_
                                                              (##car _e2121221754_))
                                                             (_tl2121421759_
                                                              (##cdr _e2121221754_)))
                                                         (if (gx#stx-null?
                                                              _tl2121421759_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2121121751_)
                         (let ((_e2121521762_ (gx#stx-e _tl2121121751_)))
                           (let ((_hd2121621765_ (##car _e2121521762_))
                                 (_tl2121721767_ (##cdr _e2121521762_)))
                             (if (gx#stx-null? _tl2121721767_)
                                 ((lambda (_L21770_ _L21771_)
                                    (if (if (gx#identifier? _L21771_)
                                            (gxc#case-lambda-expr? _L21770_)
                                            '#f)
                                        (let* ((_g2178621800_
                                                (lambda (_g2178721797_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2178721797_)))
                                               (_g2178521835_
                                                (lambda (_g2178721803_)
                                                  (if (gx#stx-pair?
                                                       _g2178721803_)
                                                      (let ((_e2179321805_
                                                             (gx#stx-e
                                                              _g2178721803_)))
                                                        (let ((_hd2179421808_
                                                               (##car _e2179321805_))
                                                              (_tl2179521810_
                                                               (##cdr _e2179321805_)))
                                                          ((lambda (_L21813_)
                                                             (let ((_g27928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21036_
                             _L21771_
                             _L21813_
                             '#t)))
                       (begin
                         (let ((_g27929_
                                (if (##values? _g27928_)
                                    (##vector-length _g27928_)
                                    1)))
                           (if (not (##fx= _g27929_ 3))
                               (error "Context expects 3 values" _g27929_)))
                         (let ((_ids21823_ (##vector-ref _g27928_ 0))
                               (_impls21824_ (##vector-ref _g27928_ 1))
                               (_clauses21825_ (##vector-ref _g27928_ 2)))
                           (let* ((_g27930_
                                   (for-each gx#core-bind-runtime! _ids21823_))
                                  (_xbind21828_
                                   (map _bind-e21038_ _ids21823_ _impls21824_))
                                  (_expr*21830_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21825_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21832_
                                   (_bind-e__2785827859_
                                    _L21771_
                                    _expr*21830_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L21771_)
                                '" => "
                                (map gxc#identifier-symbol _ids21823_))
                               (_lp21176_
                                _rest21199_
                                (cons _bind*21832_
                                      (foldl1 cons
                                              _bind21179_
                                              _xbind21828_)))))))))
                   _tl2179521810_)))
              (_g2178621800_ _g2178721803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2178421857_
                                                (lambda (_g2178721838_)
                                                  (if (gx#stx-pair?
                                                       _g2178721838_)
                                                      (let ((_e2178921840_
                                                             (gx#stx-e
                                                              _g2178721838_)))
                                                        (let ((_hd2179021843_
                                                               (##car _e2178921840_))
                                                              (_tl2179121845_
                                                               (##cdr _e2178921840_)))
                                                          ((lambda (_L21848_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21848_)
                         (_lp21176_
                          _rest21199_
                          (cons (_bind-e__2785827859_ _L21771_ _L21770_ '#f)
                                _bind21179_))
                         (_g2178521835_ _g2178721838_)))
                   _tl2179121845_)))
              (_g2178521835_ _g2178721838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2178421857_ _L21770_))
                                        (_g2120221741_ _g2120621744_)))
                                  _hd2121621765_
                                  _hd2121321757_)
                                 (_g2120221741_ _g2120621744_))))
                         (_g2120221741_ _g2120621744_))
                     (_g2120221741_ _g2120621744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120221741_
                                                      _g2120621744_))))
                                             (_g2120221741_ _g2120621744_)))))
                                 (_g2120121860_ _hd21200_)))))
                       (if (##pair? _rest2118021188_)
                           (let ((_hd2118521866_ (##car _rest2118021188_))
                                 (_tl2118621868_ (##cdr _rest2118021188_)))
                             (let* ((_hd21871_ _hd2118521866_)
                                    (_rest21873_ _tl2118621868_))
                               (_K2118421863_ _rest21873_ _hd21871_)))
                           (_else2118221196_)))))))
        (let* ((_g2104221069_
                (lambda (_g2104321066_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2104321066_)))
               (_g2104121076_
                (lambda (_g2104321072_)
                  ((lambda () (gxc#xform-let-values% _stx21036_)))))
               (_g2104021171_
                (lambda (_g2104321079_)
                  (if (gx#stx-pair? _g2104321079_)
                      (let ((_e2104721081_ (gx#stx-e _g2104321079_)))
                        (let ((_hd2104821084_ (##car _e2104721081_))
                              (_tl2104921086_ (##cdr _e2104721081_)))
                          (if (gx#stx-pair? _tl2104921086_)
                              (let ((_e2105021089_ (gx#stx-e _tl2104921086_)))
                                (let ((_hd2105121092_ (##car _e2105021089_))
                                      (_tl2105221094_ (##cdr _e2105021089_)))
                                  (if (gx#stx-pair/null? _hd2105121092_)
                                      (if (fx>= (gx#stx-length _hd2105121092_)
                                                '0)
                                          (let ((_g27931_
                                                 (gx#syntax-split-splice
                                                  _hd2105121092_
                                                  '0)))
                                            (begin
                                              (let ((_g27932_
                                                     (if (##values? _g27931_)
                                                         (##vector-length
                                                          _g27931_)
                                                         1)))
                                                (if (not (##fx= _g27932_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27932_)))
                                              (let ((_target2105321097_
                                                     (##vector-ref _g27931_ 0))
                                                    (_tl2105521099_
                                                     (##vector-ref
                                                      _g27931_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2105521099_)
                                                    (letrec ((_loop2105621102_
                                                              (lambda (_hd2105421105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2106021107_)
                        (if (gx#stx-pair? _hd2105421105_)
                            (let ((_e2105721110_ (gx#stx-e _hd2105421105_)))
                              (let ((_lp-hd2105821113_ (##car _e2105721110_))
                                    (_lp-tl2105921115_ (##cdr _e2105721110_)))
                                (_loop2105621102_
                                 _lp-tl2105921115_
                                 (cons _lp-hd2105821113_ _bind2106021107_))))
                            (let ((_bind2106121118_
                                   (reverse _bind2106021107_)))
                              (if (gx#stx-pair? _tl2105221094_)
                                  (let ((_e2106221121_
                                         (gx#stx-e _tl2105221094_)))
                                    (let ((_hd2106321124_
                                           (##car _e2106221121_))
                                          (_tl2106421126_
                                           (##cdr _e2106221121_)))
                                      (if (gx#stx-null? _tl2106421126_)
                                          ((lambda (_L21129_ _L21130_ _L21131_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2115221155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2115321157_)
                             (cons _g2115221155_ _g2115321157_))
                           '()
                           _L21130_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd21168_
                                                           (_compile-bindings21039_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2116021163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2116121165_)
                                (cons _g2116021163_ _g2116121165_))
                              '()
                              _L21130_))))
                  (_body21169_ (gxc#compile-e _L21129_)))
              (gxc#xform-wrap-source
               (cons _L21131_ (cons _hd21168_ (cons _body21169_ '())))
               _stx21036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27864
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27864)
                                                      __obj27864)))
                                                 (_g2104121076_
                                                  _g2104321079_)))
                                           _hd2106321124_
                                           _bind2106121118_
                                           _hd2104821084_)
                                          (_g2104121076_ _g2104321079_))))
                                  (_g2104121076_ _g2104321079_)))))))
              (_loop2105621102_ _target2105321097_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2104121076_
                                                     _g2104321079_)))))
                                          (_g2104121076_ _g2104321079_))
                                      (_g2104121076_ _g2104321079_))))
                              (_g2104121076_ _g2104321079_))))
                      (_g2104121076_ _g2104321079_)))))
          (_g2104021171_ _stx21036_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20954_)
      (let* ((_g2095720974_
              (lambda (_g2095820971_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2095820971_)))
             (_g2095620981_ (lambda (_g2095820977_) ((lambda () '#f))))
             (_g2095521033_
              (lambda (_g2095820984_)
                (if (gx#stx-pair? _g2095820984_)
                    (let ((_e2096120986_ (gx#stx-e _g2095820984_)))
                      (let ((_hd2096220989_ (##car _e2096120986_))
                            (_tl2096320991_ (##cdr _e2096120986_)))
                        (if (gx#stx-pair? _hd2096220989_)
                            (let ((_e2096420994_ (gx#stx-e _hd2096220989_)))
                              (let ((_hd2096520997_ (##car _e2096420994_))
                                    (_tl2096620999_ (##cdr _e2096420994_)))
                                (if (gx#stx-null? _tl2096620999_)
                                    (if (gx#stx-pair? _tl2096320991_)
                                        (let ((_e2096721002_
                                               (gx#stx-e _tl2096320991_)))
                                          (let ((_hd2096821005_
                                                 (##car _e2096721002_))
                                                (_tl2096921007_
                                                 (##cdr _e2096721002_)))
                                            (if (gx#stx-null? _tl2096921007_)
                                                ((lambda (_L21010_ _L21011_)
                                                   (if (gx#identifier?
                                                        _L21011_)
                                                       (let ((_$e21027_
                                                              (gxc#case-lambda-expr?
                                                               _L21010_)))
                                                         (if _$e21027_
                                                             _$e21027_
                                                             (let ((_$e21030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L21010_)))
                       (if _$e21030_
                           _$e21030_
                           (gxc#kw-lambda-expr? _L21010_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2096821005_
                                                 _hd2096520997_)
                                                (_g2095620981_
                                                 _g2095820984_))))
                                        (_g2095620981_ _g2095820984_))
                                    (_g2095620981_ _g2095820984_))))
                            (_g2095620981_ _g2095820984_))))
                    (_g2095620981_ _g2095820984_)))))
        (_g2095521033_ _bind20954_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20892_ _id20893_ _new-id20894_)
      (let* ((_g2089720910_
              (lambda (_g2089820907_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2089820907_)))
             (_g2089620917_ (lambda (_g2089820913_) ((lambda () _stx20892_))))
             (_g2089520951_
              (lambda (_g2089820920_)
                (if (gx#stx-pair? _g2089820920_)
                    (let ((_e2090020922_ (gx#stx-e _g2089820920_)))
                      (let ((_hd2090120925_ (##car _e2090020922_))
                            (_tl2090220927_ (##cdr _e2090020922_)))
                        (if (gx#stx-pair? _tl2090220927_)
                            (let ((_e2090320930_ (gx#stx-e _tl2090220927_)))
                              (let ((_hd2090420933_ (##car _e2090320930_))
                                    (_tl2090520935_ (##cdr _e2090320930_)))
                                (if (gx#stx-null? _tl2090520935_)
                                    ((lambda (_L20938_)
                                       (if (gx#free-identifier=?
                                            _L20938_
                                            _id20893_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20894_ '()))
                                            _stx20892_)
                                           (_g2089620917_ _g2089820920_)))
                                     _hd2090420933_)
                                    (_g2089620917_ _g2089820920_))))
                            (_g2089620917_ _g2089820920_))))
                    (_g2089620917_ _g2089820920_)))))
        (_g2089520951_ _stx20892_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20748_)
      (let* ((_g2075120782_
              (lambda (_g2075220779_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2075220779_)))
             (_g2075020827_
              (lambda (_g2075220785_)
                (if (gx#stx-pair? _g2075220785_)
                    (let ((_e2076920787_ (gx#stx-e _g2075220785_)))
                      (let ((_hd2077020790_ (##car _e2076920787_))
                            (_tl2077120792_ (##cdr _e2076920787_)))
                        (if (gx#stx-pair? _tl2077120792_)
                            (let ((_e2077220795_ (gx#stx-e _tl2077120792_)))
                              (let ((_hd2077320798_ (##car _e2077220795_))
                                    (_tl2077420800_ (##cdr _e2077220795_)))
                                (if (gx#stx-pair? _tl2077420800_)
                                    (let ((_e2077520803_
                                           (gx#stx-e _tl2077420800_)))
                                      (let ((_hd2077620806_
                                             (##car _e2077520803_))
                                            (_tl2077720808_
                                             (##cdr _e2077520803_)))
                                        (if (gx#stx-null? _tl2077720808_)
                                            ((lambda (_L20811_ _L20812_)
                                               (gxc#compile-e _L20811_))
                                             _hd2077620806_
                                             _hd2077320798_)
                                            (_g2075120782_ _g2075220785_))))
                                    (_g2075120782_ _g2075220785_))))
                            (_g2075120782_ _g2075220785_))))
                    (_g2075120782_ _g2075220785_))))
             (_g2074920889_
              (lambda (_g2075220830_)
                (if (gx#stx-pair? _g2075220830_)
                    (let ((_e2075520832_ (gx#stx-e _g2075220830_)))
                      (let ((_hd2075620835_ (##car _e2075520832_))
                            (_tl2075720837_ (##cdr _e2075520832_)))
                        (if (gx#stx-pair? _tl2075720837_)
                            (let ((_e2075820840_ (gx#stx-e _tl2075720837_)))
                              (let ((_hd2075920843_ (##car _e2075820840_))
                                    (_tl2076020845_ (##cdr _e2075820840_)))
                                (if (gx#stx-pair? _hd2075920843_)
                                    (let ((_e2076120848_
                                           (gx#stx-e _hd2075920843_)))
                                      (let ((_hd2076220851_
                                             (##car _e2076120848_))
                                            (_tl2076320853_
                                             (##cdr _e2076120848_)))
                                        (if (gx#stx-null? _tl2076320853_)
                                            (if (gx#stx-pair? _tl2076020845_)
                                                (let ((_e2076420856_
                                                       (gx#stx-e
                                                        _tl2076020845_)))
                                                  (let ((_hd2076520859_
                                                         (##car _e2076420856_))
                                                        (_tl2076620861_
                                                         (##cdr _e2076420856_)))
                                                    (if (gx#stx-null?
                                                         _tl2076620861_)
                                                        ((lambda (_L20864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20865_)
                   (if (gx#identifier? _L20865_)
                       (let ((_sym20881_ (gxc#identifier-symbol _L20865_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20881_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20881_)
                               (let ((_type2088220884_
                                      (gxc#apply-basic-expression-type
                                       _L20864_)))
                                 (if _type2088220884_
                                     (let ((_type20887_ _type2088220884_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20881_
                                        _type20887_))
                                     '#f)))
                           (gxc#compile-e _L20864_)))
                       (_g2075020827_ _g2075220830_)))
                 _hd2076520859_
                 _hd2076220851_)
                (_g2075020827_ _g2075220830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2075020827_ _g2075220830_))
                                            (_g2075020827_ _g2075220830_))))
                                    (_g2075020827_ _g2075220830_))))
                            (_g2075020827_ _g2075220830_))))
                    (_g2075020827_ _g2075220830_)))))
        (_g2074920889_ _stx20748_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20533_)
      (letrec ((_collect-e20535_
                (lambda (_hd20692_ _expr20693_)
                  (let* ((_g2069620706_
                          (lambda (_g2069720703_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2069720703_)))
                         (_g2069520713_
                          (lambda (_g2069720709_) ((lambda () '#!void))))
                         (_g2069420745_
                          (lambda (_g2069720716_)
                            (if (gx#stx-pair? _g2069720716_)
                                (let ((_e2069920718_ (gx#stx-e _g2069720716_)))
                                  (let ((_hd2070020721_ (##car _e2069920718_))
                                        (_tl2070120723_ (##cdr _e2069920718_)))
                                    (if (gx#stx-null? _tl2070120723_)
                                        ((lambda (_L20726_)
                                           (if (gx#identifier? _L20726_)
                                               (let ((_sym20737_
                                                      (gxc#identifier-symbol
                                                       _L20726_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20737_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20737_)
                                                     (let ((_type2073820740_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20693_)))
                                                       (if _type2073820740_
                                                           (let ((_type20743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2073820740_))
                     (gxc#optimizer-declare-type!__%
                      _sym20737_
                      _type20743_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2069520713_ _g2069720716_)))
                                         _hd2070020721_)
                                        (_g2069520713_ _g2069720716_))))
                                (_g2069520713_ _g2069720716_)))))
                    (_g2069420745_ _hd20692_)))))
        (let* ((_g2053720572_
                (lambda (_g2053820569_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2053820569_)))
               (_g2053620689_
                (lambda (_g2053820575_)
                  (if (gx#stx-pair? _g2053820575_)
                      (let ((_e2054220577_ (gx#stx-e _g2053820575_)))
                        (let ((_hd2054320580_ (##car _e2054220577_))
                              (_tl2054420582_ (##cdr _e2054220577_)))
                          (if (gx#stx-pair? _tl2054420582_)
                              (let ((_e2054520585_ (gx#stx-e _tl2054420582_)))
                                (let ((_hd2054620588_ (##car _e2054520585_))
                                      (_tl2054720590_ (##cdr _e2054520585_)))
                                  (if (gx#stx-pair/null? _hd2054620588_)
                                      (if (fx>= (gx#stx-length _hd2054620588_)
                                                '0)
                                          (let ((_g27933_
                                                 (gx#syntax-split-splice
                                                  _hd2054620588_
                                                  '0)))
                                            (begin
                                              (let ((_g27934_
                                                     (if (##values? _g27933_)
                                                         (##vector-length
                                                          _g27933_)
                                                         1)))
                                                (if (not (##fx= _g27934_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27934_)))
                                              (let ((_target2054820593_
                                                     (##vector-ref _g27933_ 0))
                                                    (_tl2055020595_
                                                     (##vector-ref
                                                      _g27933_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2055020595_)
                                                    (letrec ((_loop2055120598_
                                                              (lambda (_hd2054920601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2055520603_
                               _hd2055620605_)
                        (if (gx#stx-pair? _hd2054920601_)
                            (let ((_e2055220608_ (gx#stx-e _hd2054920601_)))
                              (let ((_lp-hd2055320611_ (##car _e2055220608_))
                                    (_lp-tl2055420613_ (##cdr _e2055220608_)))
                                (if (gx#stx-pair? _lp-hd2055320611_)
                                    (let ((_e2055920616_
                                           (gx#stx-e _lp-hd2055320611_)))
                                      (let ((_hd2056020619_
                                             (##car _e2055920616_))
                                            (_tl2056120621_
                                             (##cdr _e2055920616_)))
                                        (if (gx#stx-pair? _tl2056120621_)
                                            (let ((_e2056220624_
                                                   (gx#stx-e _tl2056120621_)))
                                              (let ((_hd2056320627_
                                                     (##car _e2056220624_))
                                                    (_tl2056420629_
                                                     (##cdr _e2056220624_)))
                                                (if (gx#stx-null?
                                                     _tl2056420629_)
                                                    (_loop2055120598_
                                                     _lp-tl2055420613_
                                                     (cons _hd2056320627_
                                                           _expr2055520603_)
                                                     (cons _hd2056020619_
                                                           _hd2055620605_))
                                                    (_g2053720572_
                                                     _g2053820575_))))
                                            (_g2053720572_ _g2053820575_))))
                                    (_g2053720572_ _g2053820575_))))
                            (let ((_expr2055720632_ (reverse _expr2055520603_))
                                  (_hd2055820634_ (reverse _hd2055620605_)))
                              (if (gx#stx-pair? _tl2054720590_)
                                  (let ((_e2056520637_
                                         (gx#stx-e _tl2054720590_)))
                                    (let ((_hd2056620640_
                                           (##car _e2056520637_))
                                          (_tl2056720642_
                                           (##cdr _e2056520637_)))
                                      (if (gx#stx-null? _tl2056720642_)
                                          ((lambda (_L20645_ _L20646_ _L20647_)
                                             (begin
                                               (for-each
                                                _collect-e20535_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2066720670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2066820672_)
                    (cons _g2066720670_ _g2066820672_))
                  '()
                  _L20647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2067420677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2067520679_)
                    (cons _g2067420677_ _g2067520679_))
                  '()
                  _L20646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2068120684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2068220686_)
                    (cons _g2068120684_ _g2068220686_))
                  '()
                  _L20646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20645_)))
                                           _hd2056620640_
                                           _expr2055720632_
                                           _hd2055820634_)
                                          (_g2053720572_ _g2053820575_))))
                                  (_g2053720572_ _g2053820575_)))))))
              (_loop2055120598_ _target2054820593_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2053720572_
                                                     _g2053820575_)))))
                                          (_g2053720572_ _g2053820575_))
                                      (_g2053720572_ _g2053820575_))))
                              (_g2053720572_ _g2053820575_))))
                      (_g2053720572_ _g2053820575_)))))
          (_g2053620689_ _stx20533_)))))
  (define gxc#collect-type-call%
    (lambda (_stx20087_)
      (let* ((_g2009120193_
              (lambda (_g2009220190_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2009220190_)))
             (_g2009020200_ (lambda (_g2009220196_) ((lambda () '#!void))))
             (_g2008920350_
              (lambda (_g2009220203_)
                (if (gx#stx-pair? _g2009220203_)
                    (let ((_e2015020205_ (gx#stx-e _g2009220203_)))
                      (let ((_hd2015120208_ (##car _e2015020205_))
                            (_tl2015220210_ (##cdr _e2015020205_)))
                        (if (gx#stx-pair? _tl2015220210_)
                            (let ((_e2015320213_ (gx#stx-e _tl2015220210_)))
                              (let ((_hd2015420216_ (##car _e2015320213_))
                                    (_tl2015520218_ (##cdr _e2015320213_)))
                                (if (gx#stx-pair? _hd2015420216_)
                                    (let ((_e2015620221_
                                           (gx#stx-e _hd2015420216_)))
                                      (let ((_hd2015720224_
                                             (##car _e2015620221_))
                                            (_tl2015820226_
                                             (##cdr _e2015620221_)))
                                        (if (gx#identifier? _hd2015720224_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2015720224_)
                                                (if (gx#stx-pair?
                                                     _tl2015820226_)
                                                    (let ((_e2015920229_
                                                           (gx#stx-e
                                                            _tl2015820226_)))
                                                      (let ((_hd2016020232_
                                                             (##car _e2015920229_))
                                                            (_tl2016120234_
                                                             (##cdr _e2015920229_)))
                                                        (if (gx#stx-null?
                                                             _tl2016120234_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2015520218_)
                        (let ((_e2016220237_ (gx#stx-e _tl2015520218_)))
                          (let ((_hd2016320240_ (##car _e2016220237_))
                                (_tl2016420242_ (##cdr _e2016220237_)))
                            (if (gx#stx-pair? _hd2016320240_)
                                (let ((_e2016520245_
                                       (gx#stx-e _hd2016320240_)))
                                  (let ((_hd2016620248_ (##car _e2016520245_))
                                        (_tl2016720250_ (##cdr _e2016520245_)))
                                    (if (gx#identifier? _hd2016620248_)
                                        (if (gx#stx-eq? '%#ref _hd2016620248_)
                                            (if (gx#stx-pair? _tl2016720250_)
                                                (let ((_e2016820253_
                                                       (gx#stx-e
                                                        _tl2016720250_)))
                                                  (let ((_hd2016920256_
                                                         (##car _e2016820253_))
                                                        (_tl2017020258_
                                                         (##cdr _e2016820253_)))
                                                    (if (gx#stx-null?
                                                         _tl2017020258_)
                                                        (if (gx#stx-pair?
                                                             _tl2016420242_)
                                                            (let ((_e2017120261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2016420242_)))
                      (let ((_hd2017220264_ (##car _e2017120261_))
                            (_tl2017320266_ (##cdr _e2017120261_)))
                        (if (gx#stx-pair? _hd2017220264_)
                            (let ((_e2017420269_ (gx#stx-e _hd2017220264_)))
                              (let ((_hd2017520272_ (##car _e2017420269_))
                                    (_tl2017620274_ (##cdr _e2017420269_)))
                                (if (gx#identifier? _hd2017520272_)
                                    (if (gx#stx-eq? '%#quote _hd2017520272_)
                                        (if (gx#stx-pair? _tl2017620274_)
                                            (let ((_e2017720277_
                                                   (gx#stx-e _tl2017620274_)))
                                              (let ((_hd2017820280_
                                                     (##car _e2017720277_))
                                                    (_tl2017920282_
                                                     (##cdr _e2017720277_)))
                                                (if (gx#stx-null?
                                                     _tl2017920282_)
                                                    (if (gx#stx-pair?
                                                         _tl2017320266_)
                                                        (let ((_e2018020285_
                                                               (gx#stx-e
                                                                _tl2017320266_)))
                                                          (let ((_hd2018120288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2018020285_))
                        (_tl2018220290_ (##cdr _e2018020285_)))
                    (if (gx#stx-pair? _hd2018120288_)
                        (let ((_e2018320293_ (gx#stx-e _hd2018120288_)))
                          (let ((_hd2018420296_ (##car _e2018320293_))
                                (_tl2018520298_ (##cdr _e2018320293_)))
                            (if (gx#identifier? _hd2018420296_)
                                (if (gx#stx-eq? '%#ref _hd2018420296_)
                                    (if (gx#stx-pair? _tl2018520298_)
                                        (let ((_e2018620301_
                                               (gx#stx-e _tl2018520298_)))
                                          (let ((_hd2018720304_
                                                 (##car _e2018620301_))
                                                (_tl2018820306_
                                                 (##cdr _e2018620301_)))
                                            (if (gx#stx-null? _tl2018820306_)
                                                (if (gx#stx-null?
                                                     _tl2018220290_)
                                                    ((lambda (_L20309_
                                                              _L20310_
                                                              _L20311_
                                                              _L20312_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (gxc#optimizer-declare-method!__%
                                                            (gxc#identifier-symbol
                                                             _L20311_)
                                                            (gx#stx-e _L20310_)
                                                            (gxc#identifier-symbol
                                                             _L20309_)
                                                            '#f)
                                                           (_g2009020200_
                                                            _g2009220203_)))
                                                     _hd2018720304_
                                                     _hd2017820280_
                                                     _hd2016920256_
                                                     _hd2016020232_)
                                                    (_g2009020200_
                                                     _g2009220203_))
                                                (_g2009020200_
                                                 _g2009220203_))))
                                        (_g2009020200_ _g2009220203_))
                                    (_g2009020200_ _g2009220203_))
                                (_g2009020200_ _g2009220203_))))
                        (_g2009020200_ _g2009220203_))))
                (_g2009020200_ _g2009220203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2009020200_
                                                     _g2009220203_))))
                                            (_g2009020200_ _g2009220203_))
                                        (_g2009020200_ _g2009220203_))
                                    (_g2009020200_ _g2009220203_))))
                            (_g2009020200_ _g2009220203_))))
                    (_g2009020200_ _g2009220203_))
                (_g2009020200_ _g2009220203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2009020200_ _g2009220203_))
                                            (_g2009020200_ _g2009220203_))
                                        (_g2009020200_ _g2009220203_))))
                                (_g2009020200_ _g2009220203_))))
                        (_g2009020200_ _g2009220203_))
                    (_g2009020200_ _g2009220203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2009020200_
                                                     _g2009220203_))
                                                (_g2009020200_ _g2009220203_))
                                            (_g2009020200_ _g2009220203_))))
                                    (_g2009020200_ _g2009220203_))))
                            (_g2009020200_ _g2009220203_))))
                    (_g2009020200_ _g2009220203_))))
             (_g2008820530_
              (lambda (_g2009220353_)
                (if (gx#stx-pair? _g2009220353_)
                    (let ((_e2009820355_ (gx#stx-e _g2009220353_)))
                      (let ((_hd2009920358_ (##car _e2009820355_))
                            (_tl2010020360_ (##cdr _e2009820355_)))
                        (if (gx#stx-pair? _tl2010020360_)
                            (let ((_e2010120363_ (gx#stx-e _tl2010020360_)))
                              (let ((_hd2010220366_ (##car _e2010120363_))
                                    (_tl2010320368_ (##cdr _e2010120363_)))
                                (if (gx#stx-pair? _hd2010220366_)
                                    (let ((_e2010420371_
                                           (gx#stx-e _hd2010220366_)))
                                      (let ((_hd2010520374_
                                             (##car _e2010420371_))
                                            (_tl2010620376_
                                             (##cdr _e2010420371_)))
                                        (if (gx#identifier? _hd2010520374_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2010520374_)
                                                (if (gx#stx-pair?
                                                     _tl2010620376_)
                                                    (let ((_e2010720379_
                                                           (gx#stx-e
                                                            _tl2010620376_)))
                                                      (let ((_hd2010820382_
                                                             (##car _e2010720379_))
                                                            (_tl2010920384_
                                                             (##cdr _e2010720379_)))
                                                        (if (gx#stx-null?
                                                             _tl2010920384_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2010320368_)
                        (let ((_e2011020387_ (gx#stx-e _tl2010320368_)))
                          (let ((_hd2011120390_ (##car _e2011020387_))
                                (_tl2011220392_ (##cdr _e2011020387_)))
                            (if (gx#stx-pair? _hd2011120390_)
                                (let ((_e2011320395_
                                       (gx#stx-e _hd2011120390_)))
                                  (let ((_hd2011420398_ (##car _e2011320395_))
                                        (_tl2011520400_ (##cdr _e2011320395_)))
                                    (if (gx#identifier? _hd2011420398_)
                                        (if (gx#stx-eq? '%#ref _hd2011420398_)
                                            (if (gx#stx-pair? _tl2011520400_)
                                                (let ((_e2011620403_
                                                       (gx#stx-e
                                                        _tl2011520400_)))
                                                  (let ((_hd2011720406_
                                                         (##car _e2011620403_))
                                                        (_tl2011820408_
                                                         (##cdr _e2011620403_)))
                                                    (if (gx#stx-null?
                                                         _tl2011820408_)
                                                        (if (gx#stx-pair?
                                                             _tl2011220392_)
                                                            (let ((_e2011920411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2011220392_)))
                      (let ((_hd2012020414_ (##car _e2011920411_))
                            (_tl2012120416_ (##cdr _e2011920411_)))
                        (if (gx#stx-pair? _hd2012020414_)
                            (let ((_e2012220419_ (gx#stx-e _hd2012020414_)))
                              (let ((_hd2012320422_ (##car _e2012220419_))
                                    (_tl2012420424_ (##cdr _e2012220419_)))
                                (if (gx#identifier? _hd2012320422_)
                                    (if (gx#stx-eq? '%#quote _hd2012320422_)
                                        (if (gx#stx-pair? _tl2012420424_)
                                            (let ((_e2012520427_
                                                   (gx#stx-e _tl2012420424_)))
                                              (let ((_hd2012620430_
                                                     (##car _e2012520427_))
                                                    (_tl2012720432_
                                                     (##cdr _e2012520427_)))
                                                (if (gx#stx-null?
                                                     _tl2012720432_)
                                                    (if (gx#stx-pair?
                                                         _tl2012120416_)
                                                        (let ((_e2012820435_
                                                               (gx#stx-e
                                                                _tl2012120416_)))
                                                          (let ((_hd2012920438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2012820435_))
                        (_tl2013020440_ (##cdr _e2012820435_)))
                    (if (gx#stx-pair? _hd2012920438_)
                        (let ((_e2013120443_ (gx#stx-e _hd2012920438_)))
                          (let ((_hd2013220446_ (##car _e2013120443_))
                                (_tl2013320448_ (##cdr _e2013120443_)))
                            (if (gx#identifier? _hd2013220446_)
                                (if (gx#stx-eq? '%#ref _hd2013220446_)
                                    (if (gx#stx-pair? _tl2013320448_)
                                        (let ((_e2013420451_
                                               (gx#stx-e _tl2013320448_)))
                                          (let ((_hd2013520454_
                                                 (##car _e2013420451_))
                                                (_tl2013620456_
                                                 (##cdr _e2013420451_)))
                                            (if (gx#stx-null? _tl2013620456_)
                                                (if (gx#stx-pair?
                                                     _tl2013020440_)
                                                    (let ((_e2013720459_
                                                           (gx#stx-e
                                                            _tl2013020440_)))
                                                      (let ((_hd2013820462_
                                                             (##car _e2013720459_))
                                                            (_tl2013920464_
                                                             (##cdr _e2013720459_)))
                                                        (if (gx#stx-pair?
                                                             _hd2013820462_)
                                                            (let ((_e2014020467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2013820462_)))
                      (let ((_hd2014120470_ (##car _e2014020467_))
                            (_tl2014220472_ (##cdr _e2014020467_)))
                        (if (gx#identifier? _hd2014120470_)
                            (if (gx#stx-eq? '%#quote _hd2014120470_)
                                (if (gx#stx-pair? _tl2014220472_)
                                    (let ((_e2014320475_
                                           (gx#stx-e _tl2014220472_)))
                                      (let ((_hd2014420478_
                                             (##car _e2014320475_))
                                            (_tl2014520480_
                                             (##cdr _e2014320475_)))
                                        (if (gx#stx-null? _tl2014520480_)
                                            (if (gx#stx-null? _tl2013920464_)
                                                ((lambda (_L20483_
                                                          _L20484_
                                                          _L20485_
                                                          _L20486_
                                                          _L20487_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L20487_
                                                        'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#identifier-symbol
                                                         _L20486_)
                                                        (gx#stx-e _L20485_)
                                                        (gxc#identifier-symbol
                                                         _L20484_)
                                                        (gx#stx-e _L20483_))
                                                       (_g2008920350_
                                                        _g2009220353_)))
                                                 _hd2014420478_
                                                 _hd2013520454_
                                                 _hd2012620430_
                                                 _hd2011720406_
                                                 _hd2010820382_)
                                                (_g2008920350_ _g2009220353_))
                                            (_g2008920350_ _g2009220353_))))
                                    (_g2008920350_ _g2009220353_))
                                (_g2008920350_ _g2009220353_))
                            (_g2008920350_ _g2009220353_))))
                    (_g2008920350_ _g2009220353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008920350_
                                                     _g2009220353_))
                                                (_g2008920350_
                                                 _g2009220353_))))
                                        (_g2008920350_ _g2009220353_))
                                    (_g2008920350_ _g2009220353_))
                                (_g2008920350_ _g2009220353_))))
                        (_g2008920350_ _g2009220353_))))
                (_g2008920350_ _g2009220353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008920350_
                                                     _g2009220353_))))
                                            (_g2008920350_ _g2009220353_))
                                        (_g2008920350_ _g2009220353_))
                                    (_g2008920350_ _g2009220353_))))
                            (_g2008920350_ _g2009220353_))))
                    (_g2008920350_ _g2009220353_))
                (_g2008920350_ _g2009220353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2008920350_ _g2009220353_))
                                            (_g2008920350_ _g2009220353_))
                                        (_g2008920350_ _g2009220353_))))
                                (_g2008920350_ _g2009220353_))))
                        (_g2008920350_ _g2009220353_))
                    (_g2008920350_ _g2009220353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008920350_
                                                     _g2009220353_))
                                                (_g2008920350_ _g2009220353_))
                                            (_g2008920350_ _g2009220353_))))
                                    (_g2008920350_ _g2009220353_))))
                            (_g2008920350_ _g2009220353_))))
                    (_g2008920350_ _g2009220353_)))))
        (_g2008820530_ _stx20087_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx20027_)
      (let* ((_g2003020043_
              (lambda (_g2003120040_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2003120040_)))
             (_g2002920050_ (lambda (_g2003120046_) ((lambda () '#f))))
             (_g2002820084_
              (lambda (_g2003120053_)
                (if (gx#stx-pair? _g2003120053_)
                    (let ((_e2003320055_ (gx#stx-e _g2003120053_)))
                      (let ((_hd2003420058_ (##car _e2003320055_))
                            (_tl2003520060_ (##cdr _e2003320055_)))
                        (if (gx#stx-pair? _tl2003520060_)
                            (let ((_e2003620063_ (gx#stx-e _tl2003520060_)))
                              (let ((_hd2003720066_ (##car _e2003620063_))
                                    (_tl2003820068_ (##cdr _e2003620063_)))
                                (if (gx#stx-null? _tl2003820068_)
                                    ((lambda (_L20071_)
                                       (gxc#compile-e _L20071_))
                                     _hd2003720066_)
                                    (_g2002920050_ _g2003120053_))))
                            (_g2002920050_ _g2003120053_))))
                    (_g2002920050_ _g2003120053_)))))
        (_g2002820084_ _stx20027_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19960_)
      (let* ((_g1996219979_
              (lambda (_g1996319976_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1996319976_)))
             (_g1996120024_
              (lambda (_g1996319982_)
                (if (gx#stx-pair? _g1996319982_)
                    (let ((_e1996619984_ (gx#stx-e _g1996319982_)))
                      (let ((_hd1996719987_ (##car _e1996619984_))
                            (_tl1996819989_ (##cdr _e1996619984_)))
                        (if (gx#stx-pair? _tl1996819989_)
                            (let ((_e1996919992_ (gx#stx-e _tl1996819989_)))
                              (let ((_hd1997019995_ (##car _e1996919992_))
                                    (_tl1997119997_ (##cdr _e1996919992_)))
                                (if (gx#stx-pair? _tl1997119997_)
                                    (let ((_e1997220000_
                                           (gx#stx-e _tl1997119997_)))
                                      (let ((_hd1997320003_
                                             (##car _e1997220000_))
                                            (_tl1997420005_
                                             (##cdr _e1997220000_)))
                                        (if (gx#stx-null? _tl1997420005_)
                                            ((lambda (_L20008_ _L20009_)
                                               (gxc#compile-e _L20008_))
                                             _hd1997320003_
                                             _hd1997019995_)
                                            (_g1996219979_ _g1996319982_))))
                                    (_g1996219979_ _g1996319982_))))
                            (_g1996219979_ _g1996319982_))))
                    (_g1996219979_ _g1996319982_)))))
        (_g1996120024_ _stx19960_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18597_)
      (let* ((_g1860418903_
              (lambda (_g1860518900_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1860518900_)))
             (_g1860318910_ (lambda (_g1860518906_) ((lambda () '#f))))
             (_g1860219303_
              (lambda (_g1860518913_)
                (if (gx#stx-pair? _g1860518913_)
                    (let ((_e1879418915_ (gx#stx-e _g1860518913_)))
                      (let ((_hd1879518918_ (##car _e1879418915_))
                            (_tl1879618920_ (##cdr _e1879418915_)))
                        (if (gx#stx-pair? _tl1879618920_)
                            (let ((_e1879718923_ (gx#stx-e _tl1879618920_)))
                              (let ((_hd1879818926_ (##car _e1879718923_))
                                    (_tl1879918928_ (##cdr _e1879718923_)))
                                (if (gx#stx-pair? _hd1879818926_)
                                    (let ((_e1880018931_
                                           (gx#stx-e _hd1879818926_)))
                                      (let ((_hd1880118934_
                                             (##car _e1880018931_))
                                            (_tl1880218936_
                                             (##cdr _e1880018931_)))
                                        (if (gx#stx-pair? _tl1879918928_)
                                            (let ((_e1880318939_
                                                   (gx#stx-e _tl1879918928_)))
                                              (let ((_hd1880418942_
                                                     (##car _e1880318939_))
                                                    (_tl1880518944_
                                                     (##cdr _e1880318939_)))
                                                (if (gx#stx-pair?
                                                     _hd1880418942_)
                                                    (let ((_e1880618947_
                                                           (gx#stx-e
                                                            _hd1880418942_)))
                                                      (let ((_hd1880718950_
                                                             (##car _e1880618947_))
                                                            (_tl1880818952_
                                                             (##cdr _e1880618947_)))
                                                        (if (gx#identifier?
                                                             _hd1880718950_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1880718950_)
                        (if (gx#stx-pair? _tl1880818952_)
                            (let ((_e1880918955_ (gx#stx-e _tl1880818952_)))
                              (let ((_hd1881018958_ (##car _e1880918955_))
                                    (_tl1881118960_ (##cdr _e1880918955_)))
                                (if (gx#stx-pair? _hd1881018958_)
                                    (let ((_e1881218963_
                                           (gx#stx-e _hd1881018958_)))
                                      (let ((_hd1881318966_
                                             (##car _e1881218963_))
                                            (_tl1881418968_
                                             (##cdr _e1881218963_)))
                                        (if (gx#identifier? _hd1881318966_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1881318966_)
                                                (if (gx#stx-pair?
                                                     _tl1881418968_)
                                                    (let ((_e1881518971_
                                                           (gx#stx-e
                                                            _tl1881418968_)))
                                                      (let ((_hd1881618974_
                                                             (##car _e1881518971_))
                                                            (_tl1881718976_
                                                             (##cdr _e1881518971_)))
                                                        (if (gx#stx-null?
                                                             _tl1881718976_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1881118960_)
                        (let ((_e1881818979_ (gx#stx-e _tl1881118960_)))
                          (let ((_hd1881918982_ (##car _e1881818979_))
                                (_tl1882018984_ (##cdr _e1881818979_)))
                            (if (gx#stx-pair? _hd1881918982_)
                                (let ((_e1882118987_
                                       (gx#stx-e _hd1881918982_)))
                                  (let ((_hd1882218990_ (##car _e1882118987_))
                                        (_tl1882318992_ (##cdr _e1882118987_)))
                                    (if (gx#identifier? _hd1882218990_)
                                        (if (gx#stx-eq? '%#ref _hd1882218990_)
                                            (if (gx#stx-pair? _tl1882318992_)
                                                (let ((_e1882418995_
                                                       (gx#stx-e
                                                        _tl1882318992_)))
                                                  (let ((_hd1882518998_
                                                         (##car _e1882418995_))
                                                        (_tl1882619000_
                                                         (##cdr _e1882418995_)))
                                                    (if (gx#stx-null?
                                                         _tl1882619000_)
                                                        (if (gx#stx-pair?
                                                             _tl1882018984_)
                                                            (let ((_e1882719003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1882018984_)))
                      (let ((_hd1882819006_ (##car _e1882719003_))
                            (_tl1882919008_ (##cdr _e1882719003_)))
                        (if (gx#stx-pair? _hd1882819006_)
                            (let ((_e1883019011_ (gx#stx-e _hd1882819006_)))
                              (let ((_hd1883119014_ (##car _e1883019011_))
                                    (_tl1883219016_ (##cdr _e1883019011_)))
                                (if (gx#identifier? _hd1883119014_)
                                    (if (gx#stx-eq? '%#ref _hd1883119014_)
                                        (if (gx#stx-pair? _tl1883219016_)
                                            (let ((_e1883319019_
                                                   (gx#stx-e _tl1883219016_)))
                                              (let ((_hd1883419022_
                                                     (##car _e1883319019_))
                                                    (_tl1883519024_
                                                     (##cdr _e1883319019_)))
                                                (if (gx#stx-null?
                                                     _tl1883519024_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1882919008_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1882919008_)
                          '1)
                    (let ((_g27935_
                           (gx#syntax-split-splice _tl1882919008_ '1)))
                      (begin
                        (let ((_g27936_
                               (if (##values? _g27935_)
                                   (##vector-length _g27935_)
                                   1)))
                          (if (not (##fx= _g27936_ 2))
                              (error "Context expects 2 values" _g27936_)))
                        (let ((_target1883619027_ (##vector-ref _g27935_ 0))
                              (_tl1883819029_ (##vector-ref _g27935_ 1)))
                          (if (gx#stx-pair? _tl1883819029_)
                              (let ((_e1885119032_ (gx#stx-e _tl1883819029_)))
                                (let ((_hd1885219035_ (##car _e1885119032_))
                                      (_tl1885319037_ (##cdr _e1885119032_)))
                                  (if (gx#stx-pair? _hd1885219035_)
                                      (let ((_e1885419040_
                                             (gx#stx-e _hd1885219035_)))
                                        (let ((_hd1885519043_
                                               (##car _e1885419040_))
                                              (_tl1885619045_
                                               (##cdr _e1885419040_)))
                                          (if (gx#identifier? _hd1885519043_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1885519043_)
                                                  (if (gx#stx-pair?
                                                       _tl1885619045_)
                                                      (let ((_e1885719048_
                                                             (gx#stx-e
                                                              _tl1885619045_)))
                                                        (let ((_hd1885819051_
                                                               (##car _e1885719048_))
                                                              (_tl1885919053_
                                                               (##cdr _e1885719048_)))
                                                          (if (gx#stx-null?
                                                               _tl1885919053_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1885319037_)
                          (letrec ((_loop1883919056_
                                    (lambda (_hd1883719059_
                                             _-absent-value1884319061_
                                             _key1884419063_
                                             _-xkwvar1884519065_
                                             _-hash-ref1884619067_)
                                      (if (gx#stx-pair? _hd1883719059_)
                                          (let ((_e1884019070_
                                                 (gx#stx-e _hd1883719059_)))
                                            (let ((_lp-hd1884119073_
                                                   (##car _e1884019070_))
                                                  (_lp-tl1884219075_
                                                   (##cdr _e1884019070_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1884119073_)
                                                  (let ((_e1886019078_
                                                         (gx#stx-e
                                                          _lp-hd1884119073_)))
                                                    (let ((_hd1886119081_
                                                           (##car _e1886019078_))
                                                          (_tl1886219083_
                                                           (##cdr _e1886019078_)))
                                                      (if (gx#identifier?
                                                           _hd1886119081_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1886119081_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1886219083_)
                          (let ((_e1886319086_ (gx#stx-e _tl1886219083_)))
                            (let ((_hd1886419089_ (##car _e1886319086_))
                                  (_tl1886519091_ (##cdr _e1886319086_)))
                              (if (gx#stx-pair? _hd1886419089_)
                                  (let ((_e1886619094_
                                         (gx#stx-e _hd1886419089_)))
                                    (let ((_hd1886719097_
                                           (##car _e1886619094_))
                                          (_tl1886819099_
                                           (##cdr _e1886619094_)))
                                      (if (gx#identifier? _hd1886719097_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1886719097_)
                                              (if (gx#stx-pair? _tl1886819099_)
                                                  (let ((_e1886919102_
                                                         (gx#stx-e
                                                          _tl1886819099_)))
                                                    (let ((_hd1887019105_
                                                           (##car _e1886919102_))
                                                          (_tl1887119107_
                                                           (##cdr _e1886919102_)))
                                                      (if (gx#stx-null?
                                                           _tl1887119107_)
                                                          (if (gx#stx-pair?
                                                               _tl1886519091_)
                                                              (let ((_e1887219110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1886519091_)))
                        (let ((_hd1887319113_ (##car _e1887219110_))
                              (_tl1887419115_ (##cdr _e1887219110_)))
                          (if (gx#stx-pair? _hd1887319113_)
                              (let ((_e1887519118_ (gx#stx-e _hd1887319113_)))
                                (let ((_hd1887619121_ (##car _e1887519118_))
                                      (_tl1887719123_ (##cdr _e1887519118_)))
                                  (if (gx#identifier? _hd1887619121_)
                                      (if (gx#stx-eq? '%#ref _hd1887619121_)
                                          (if (gx#stx-pair? _tl1887719123_)
                                              (let ((_e1887819126_
                                                     (gx#stx-e
                                                      _tl1887719123_)))
                                                (let ((_hd1887919129_
                                                       (##car _e1887819126_))
                                                      (_tl1888019131_
                                                       (##cdr _e1887819126_)))
                                                  (if (gx#stx-null?
                                                       _tl1888019131_)
                                                      (if (gx#stx-pair?
                                                           _tl1887419115_)
                                                          (let ((_e1888119134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1887419115_)))
                    (let ((_hd1888219137_ (##car _e1888119134_))
                          (_tl1888319139_ (##cdr _e1888119134_)))
                      (if (gx#stx-pair? _hd1888219137_)
                          (let ((_e1888419142_ (gx#stx-e _hd1888219137_)))
                            (let ((_hd1888519145_ (##car _e1888419142_))
                                  (_tl1888619147_ (##cdr _e1888419142_)))
                              (if (gx#identifier? _hd1888519145_)
                                  (if (gx#stx-eq? '%#quote _hd1888519145_)
                                      (if (gx#stx-pair? _tl1888619147_)
                                          (let ((_e1888719150_
                                                 (gx#stx-e _tl1888619147_)))
                                            (let ((_hd1888819153_
                                                   (##car _e1888719150_))
                                                  (_tl1888919155_
                                                   (##cdr _e1888719150_)))
                                              (if (gx#stx-null? _tl1888919155_)
                                                  (if (gx#stx-pair?
                                                       _tl1888319139_)
                                                      (let ((_e1889019158_
                                                             (gx#stx-e
                                                              _tl1888319139_)))
                                                        (let ((_hd1889119161_
                                                               (##car _e1889019158_))
                                                              (_tl1889219163_
                                                               (##cdr _e1889019158_)))
                                                          (if (gx#stx-pair?
                                                               _hd1889119161_)
                                                              (let ((_e1889319166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1889119161_)))
                        (let ((_hd1889419169_ (##car _e1889319166_))
                              (_tl1889519171_ (##cdr _e1889319166_)))
                          (if (gx#identifier? _hd1889419169_)
                              (if (gx#stx-eq? '%#ref _hd1889419169_)
                                  (if (gx#stx-pair? _tl1889519171_)
                                      (let ((_e1889619174_
                                             (gx#stx-e _tl1889519171_)))
                                        (let ((_hd1889719177_
                                               (##car _e1889619174_))
                                              (_tl1889819179_
                                               (##cdr _e1889619174_)))
                                          (if (gx#stx-null? _tl1889819179_)
                                              (if (gx#stx-null? _tl1889219163_)
                                                  (_loop1883919056_
                                                   _lp-tl1884219075_
                                                   (cons _hd1889719177_
                                                         _-absent-value1884319061_)
                                                   (cons _hd1888819153_
                                                         _key1884419063_)
                                                   (cons _hd1887919129_
                                                         _-xkwvar1884519065_)
                                                   (cons _hd1887019105_
                                                         _-hash-ref1884619067_))
                                                  (_g1860318910_
                                                   _g1860518913_))
                                              (_g1860318910_ _g1860518913_))))
                                      (_g1860318910_ _g1860518913_))
                                  (_g1860318910_ _g1860518913_))
                              (_g1860318910_ _g1860518913_))))
                      (_g1860318910_ _g1860518913_))))
              (_g1860318910_ _g1860518913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860318910_
                                                   _g1860518913_))))
                                          (_g1860318910_ _g1860518913_))
                                      (_g1860318910_ _g1860518913_))
                                  (_g1860318910_ _g1860518913_))))
                          (_g1860318910_ _g1860518913_))))
                  (_g1860318910_ _g1860518913_))
              (_g1860318910_ _g1860518913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1860318910_ _g1860518913_))
                                          (_g1860318910_ _g1860518913_))
                                      (_g1860318910_ _g1860518913_))))
                              (_g1860318910_ _g1860518913_))))
                      (_g1860318910_ _g1860518913_))
                  (_g1860318910_ _g1860518913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860318910_
                                                   _g1860518913_))
                                              (_g1860318910_ _g1860518913_))
                                          (_g1860318910_ _g1860518913_))))
                                  (_g1860318910_ _g1860518913_))))
                          (_g1860318910_ _g1860518913_))
                      (_g1860318910_ _g1860518913_))
                  (_g1860318910_ _g1860518913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860318910_
                                                   _g1860518913_))))
                                          (let ((_-absent-value1884719182_
                                                 (reverse _-absent-value1884319061_))
                                                (_key1884819184_
                                                 (reverse _key1884419063_))
                                                (_-xkwvar1884919186_
                                                 (reverse _-xkwvar1884519065_))
                                                (_-hash-ref1885019188_
                                                 (reverse _-hash-ref1884619067_)))
                                            (if (gx#stx-null? _tl1880518944_)
                                                ((lambda (_L19191_
                                                          _L19192_
                                                          _L19193_
                                                          _L19194_
                                                          _L19195_
                                                          _L19196_
                                                          _L19197_
                                                          _L19198_
                                                          _L19199_
                                                          _L19200_)
                                                   (if (if (gx#identifier?
                                                            _L19200_)
                                                           (if (gx#identifier?
                                                                _L19199_)
                                                               (if (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19198_
                            'apply)
                           (if (gx#free-identifier=? _L19200_ _L19196_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1925519258_
                                                               _g1925619260_)
                                                        (cons _g1925519258_
                                                              _g1925619260_))
                                                      '()
                                                      _L19193_)))
                                   (if (andmap1 (lambda (_g1926219264_)
                                                  (gxc#runtime-identifier=?
                                                   _g1926219264_
                                                   'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1926619269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1926719271_)
                    (cons _g1926619269_ _g1926719271_))
                  '()
                  _L19195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_g1927319275_)
                                                      (gxc#runtime-identifier=?
                                                       _g1927319275_
                                                       'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1927719280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1927819282_)
                        (cons _g1927719280_ _g1927819282_))
                      '()
                      _L19192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1928419286_)
                                                      (gx#free-identifier=?
                                                       _g1928419286_
                                                       _L19200_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1928819291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1928919293_)
                        (cons _g1928819291_ _g1928919293_))
                      '()
                      _L19194_)))
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
                       (foldr1 (lambda (_g1929519298_ _g1929619300_)
                                 (cons _g1929519298_ _g1929619300_))
                               '()
                               _L19193_)))
                (gxc#identifier-symbol _L19197_))
               (_g1860318910_ _g1860518913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1885819051_
                                                 _-absent-value1884719182_
                                                 _key1884819184_
                                                 _-xkwvar1884919186_
                                                 _-hash-ref1885019188_
                                                 _hd1883419022_
                                                 _hd1882518998_
                                                 _hd1881618974_
                                                 _tl1880218936_
                                                 _hd1880118934_)
                                                (_g1860318910_
                                                 _g1860518913_)))))))
                            (_loop1883919056_
                             _target1883619027_
                             '()
                             '()
                             '()
                             '()))
                          (_g1860318910_ _g1860518913_))
                      (_g1860318910_ _g1860518913_))))
              (_g1860318910_ _g1860518913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860318910_
                                                   _g1860518913_))
                                              (_g1860318910_ _g1860518913_))))
                                      (_g1860318910_ _g1860518913_))))
                              (_g1860318910_ _g1860518913_)))))
                    (_g1860318910_ _g1860518913_))
                (_g1860318910_ _g1860518913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860318910_
                                                     _g1860518913_))))
                                            (_g1860318910_ _g1860518913_))
                                        (_g1860318910_ _g1860518913_))
                                    (_g1860318910_ _g1860518913_))))
                            (_g1860318910_ _g1860518913_))))
                    (_g1860318910_ _g1860518913_))
                (_g1860318910_ _g1860518913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860318910_ _g1860518913_))
                                            (_g1860318910_ _g1860518913_))
                                        (_g1860318910_ _g1860518913_))))
                                (_g1860318910_ _g1860518913_))))
                        (_g1860318910_ _g1860518913_))
                    (_g1860318910_ _g1860518913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860318910_
                                                     _g1860518913_))
                                                (_g1860318910_ _g1860518913_))
                                            (_g1860318910_ _g1860518913_))))
                                    (_g1860318910_ _g1860518913_))))
                            (_g1860318910_ _g1860518913_))
                        (_g1860318910_ _g1860518913_))
                    (_g1860318910_ _g1860518913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860318910_
                                                     _g1860518913_))))
                                            (_g1860318910_ _g1860518913_))))
                                    (_g1860318910_ _g1860518913_))))
                            (_g1860318910_ _g1860518913_))))
                    (_g1860318910_ _g1860518913_))))
             (_g1860119520_
              (lambda (_g1860519306_)
                (if (gx#stx-pair? _g1860519306_)
                    (let ((_e1872719308_ (gx#stx-e _g1860519306_)))
                      (let ((_hd1872819311_ (##car _e1872719308_))
                            (_tl1872919313_ (##cdr _e1872719308_)))
                        (if (gx#stx-pair? _tl1872919313_)
                            (let ((_e1873019316_ (gx#stx-e _tl1872919313_)))
                              (let ((_hd1873119319_ (##car _e1873019316_))
                                    (_tl1873219321_ (##cdr _e1873019316_)))
                                (if (gx#stx-pair? _tl1873219321_)
                                    (let ((_e1873319324_
                                           (gx#stx-e _tl1873219321_)))
                                      (let ((_hd1873419327_
                                             (##car _e1873319324_))
                                            (_tl1873519329_
                                             (##cdr _e1873319324_)))
                                        (if (gx#stx-pair? _hd1873419327_)
                                            (let ((_e1873619332_
                                                   (gx#stx-e _hd1873419327_)))
                                              (let ((_hd1873719335_
                                                     (##car _e1873619332_))
                                                    (_tl1873819337_
                                                     (##cdr _e1873619332_)))
                                                (if (gx#identifier?
                                                     _hd1873719335_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1873719335_)
                                                        (if (gx#stx-pair?
                                                             _tl1873819337_)
                                                            (let ((_e1873919340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1873819337_)))
                      (let ((_hd1874019343_ (##car _e1873919340_))
                            (_tl1874119345_ (##cdr _e1873919340_)))
                        (if (gx#stx-pair? _hd1874019343_)
                            (let ((_e1874219348_ (gx#stx-e _hd1874019343_)))
                              (let ((_hd1874319351_ (##car _e1874219348_))
                                    (_tl1874419353_ (##cdr _e1874219348_)))
                                (if (gx#identifier? _hd1874319351_)
                                    (if (gx#stx-eq? '%#ref _hd1874319351_)
                                        (if (gx#stx-pair? _tl1874419353_)
                                            (let ((_e1874519356_
                                                   (gx#stx-e _tl1874419353_)))
                                              (let ((_hd1874619359_
                                                     (##car _e1874519356_))
                                                    (_tl1874719361_
                                                     (##cdr _e1874519356_)))
                                                (if (gx#stx-null?
                                                     _tl1874719361_)
                                                    (if (gx#stx-pair?
                                                         _tl1874119345_)
                                                        (let ((_e1874819364_
                                                               (gx#stx-e
                                                                _tl1874119345_)))
                                                          (let ((_hd1874919367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1874819364_))
                        (_tl1875019369_ (##cdr _e1874819364_)))
                    (if (gx#stx-pair? _hd1874919367_)
                        (let ((_e1875119372_ (gx#stx-e _hd1874919367_)))
                          (let ((_hd1875219375_ (##car _e1875119372_))
                                (_tl1875319377_ (##cdr _e1875119372_)))
                            (if (gx#identifier? _hd1875219375_)
                                (if (gx#stx-eq? '%#ref _hd1875219375_)
                                    (if (gx#stx-pair? _tl1875319377_)
                                        (let ((_e1875419380_
                                               (gx#stx-e _tl1875319377_)))
                                          (let ((_hd1875519383_
                                                 (##car _e1875419380_))
                                                (_tl1875619385_
                                                 (##cdr _e1875419380_)))
                                            (if (gx#stx-null? _tl1875619385_)
                                                (if (gx#stx-pair?
                                                     _tl1875019369_)
                                                    (let ((_e1875719388_
                                                           (gx#stx-e
                                                            _tl1875019369_)))
                                                      (let ((_hd1875819391_
                                                             (##car _e1875719388_))
                                                            (_tl1875919393_
                                                             (##cdr _e1875719388_)))
                                                        (if (gx#stx-pair?
                                                             _hd1875819391_)
                                                            (let ((_e1876019396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1875819391_)))
                      (let ((_hd1876119399_ (##car _e1876019396_))
                            (_tl1876219401_ (##cdr _e1876019396_)))
                        (if (gx#identifier? _hd1876119399_)
                            (if (gx#stx-eq? '%#quote _hd1876119399_)
                                (if (gx#stx-pair? _tl1876219401_)
                                    (let ((_e1876319404_
                                           (gx#stx-e _tl1876219401_)))
                                      (let ((_hd1876419407_
                                             (##car _e1876319404_))
                                            (_tl1876519409_
                                             (##cdr _e1876319404_)))
                                        (if (gx#stx-null? _tl1876519409_)
                                            (if (gx#stx-pair? _tl1875919393_)
                                                (let ((_e1876619412_
                                                       (gx#stx-e
                                                        _tl1875919393_)))
                                                  (let ((_hd1876719415_
                                                         (##car _e1876619412_))
                                                        (_tl1876819417_
                                                         (##cdr _e1876619412_)))
                                                    (if (gx#stx-pair?
                                                         _hd1876719415_)
                                                        (let ((_e1876919420_
                                                               (gx#stx-e
                                                                _hd1876719415_)))
                                                          (let ((_hd1877019423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1876919420_))
                        (_tl1877119425_ (##cdr _e1876919420_)))
                    (if (gx#identifier? _hd1877019423_)
                        (if (gx#stx-eq? '%#ref _hd1877019423_)
                            (if (gx#stx-pair? _tl1877119425_)
                                (let ((_e1877219428_
                                       (gx#stx-e _tl1877119425_)))
                                  (let ((_hd1877319431_ (##car _e1877219428_))
                                        (_tl1877419433_ (##cdr _e1877219428_)))
                                    (if (gx#stx-null? _tl1877419433_)
                                        (if (gx#stx-pair? _tl1876819417_)
                                            (let ((_e1877519436_
                                                   (gx#stx-e _tl1876819417_)))
                                              (let ((_hd1877619439_
                                                     (##car _e1877519436_))
                                                    (_tl1877719441_
                                                     (##cdr _e1877519436_)))
                                                (if (gx#stx-pair?
                                                     _hd1877619439_)
                                                    (let ((_e1877819444_
                                                           (gx#stx-e
                                                            _hd1877619439_)))
                                                      (let ((_hd1877919447_
                                                             (##car _e1877819444_))
                                                            (_tl1878019449_
                                                             (##cdr _e1877819444_)))
                                                        (if (gx#identifier?
                                                             _hd1877919447_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1877919447_)
                        (if (gx#stx-pair? _tl1878019449_)
                            (let ((_e1878119452_ (gx#stx-e _tl1878019449_)))
                              (let ((_hd1878219455_ (##car _e1878119452_))
                                    (_tl1878319457_ (##cdr _e1878119452_)))
                                (if (gx#stx-null? _tl1878319457_)
                                    (if (gx#stx-null? _tl1877719441_)
                                        (if (gx#stx-null? _tl1873519329_)
                                            ((lambda (_L19460_
                                                      _L19461_
                                                      _L19462_
                                                      _L19463_
                                                      _L19464_
                                                      _L19465_)
                                               (if (if (gx#identifier?
                                                        _L19465_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L19464_
                                                            'apply)
                                                           (if (gxc#runtime-identifier=?
                                                                _L19463_
                                                                'keyword-dispatch)
                                                               (gx#free-identifier=?
                                                                _L19465_
                                                                _L19460_)
                                                               '#f)
                                                           '#f)
                                                       '#f)
                                                   (let* ((_tab19515_
                                                           (gx#stx-e _L19462_))
                                                          (_keys19517_
                                                           (if _tab19515_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab19515_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys19517_
                                                      (gxc#identifier-symbol
                                                       _L19461_)))
                                                   (_g1860219303_
                                                    _g1860519306_)))
                                             _hd1878219455_
                                             _hd1877319431_
                                             _hd1876419407_
                                             _hd1875519383_
                                             _hd1874619359_
                                             _hd1873119319_)
                                            (_g1860219303_ _g1860519306_))
                                        (_g1860219303_ _g1860519306_))
                                    (_g1860219303_ _g1860519306_))))
                            (_g1860219303_ _g1860519306_))
                        (_g1860219303_ _g1860519306_))
                    (_g1860219303_ _g1860519306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219303_
                                                     _g1860519306_))))
                                            (_g1860219303_ _g1860519306_))
                                        (_g1860219303_ _g1860519306_))))
                                (_g1860219303_ _g1860519306_))
                            (_g1860219303_ _g1860519306_))
                        (_g1860219303_ _g1860519306_))))
                (_g1860219303_ _g1860519306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860219303_ _g1860519306_))
                                            (_g1860219303_ _g1860519306_))))
                                    (_g1860219303_ _g1860519306_))
                                (_g1860219303_ _g1860519306_))
                            (_g1860219303_ _g1860519306_))))
                    (_g1860219303_ _g1860519306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219303_
                                                     _g1860519306_))
                                                (_g1860219303_
                                                 _g1860519306_))))
                                        (_g1860219303_ _g1860519306_))
                                    (_g1860219303_ _g1860519306_))
                                (_g1860219303_ _g1860519306_))))
                        (_g1860219303_ _g1860519306_))))
                (_g1860219303_ _g1860519306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219303_
                                                     _g1860519306_))))
                                            (_g1860219303_ _g1860519306_))
                                        (_g1860219303_ _g1860519306_))
                                    (_g1860219303_ _g1860519306_))))
                            (_g1860219303_ _g1860519306_))))
                    (_g1860219303_ _g1860519306_))
                (_g1860219303_ _g1860519306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219303_
                                                     _g1860519306_))))
                                            (_g1860219303_ _g1860519306_))))
                                    (_g1860219303_ _g1860519306_))))
                            (_g1860219303_ _g1860519306_))))
                    (_g1860219303_ _g1860519306_))))
             (_g1860019542_
              (lambda (_g1860519523_)
                (if (gx#stx-pair? _g1860519523_)
                    (let ((_e1871819525_ (gx#stx-e _g1860519523_)))
                      (let ((_hd1871919528_ (##car _e1871819525_))
                            (_tl1872019530_ (##cdr _e1871819525_)))
                        ((lambda (_L19533_)
                           (if (gxc#dispatch-lambda-form? _L19533_)
                               (let ((__obj27865
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27865
                                    'lambda
                                    (gxc#lambda-form-arity _L19533_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19533_))
                                   __obj27865))
                               (_g1860119520_ _g1860519523_)))
                         _tl1872019530_)))
                    (_g1860119520_ _g1860519523_))))
             (_g1859919772_
              (lambda (_g1860519545_)
                (if (gx#stx-pair? _g1860519545_)
                    (let ((_e1866319547_ (gx#stx-e _g1860519545_)))
                      (let ((_hd1866419550_ (##car _e1866319547_))
                            (_tl1866519552_ (##cdr _e1866319547_)))
                        (if (gx#stx-pair? _tl1866519552_)
                            (let ((_e1866619555_ (gx#stx-e _tl1866519552_)))
                              (let ((_hd1866719558_ (##car _e1866619555_))
                                    (_tl1866819560_ (##cdr _e1866619555_)))
                                (if (gx#stx-pair/null? _hd1866719558_)
                                    (if (fx>= (gx#stx-length _hd1866719558_)
                                              '0)
                                        (let ((_g27937_
                                               (gx#syntax-split-splice
                                                _hd1866719558_
                                                '0)))
                                          (begin
                                            (let ((_g27938_
                                                   (if (##values? _g27937_)
                                                       (##vector-length
                                                        _g27937_)
                                                       1)))
                                              (if (not (##fx= _g27938_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27938_)))
                                            (let ((_target1866919563_
                                                   (##vector-ref _g27937_ 0))
                                                  (_tl1867119565_
                                                   (##vector-ref _g27937_ 1)))
                                              (if (gx#stx-null? _tl1867119565_)
                                                  (letrec ((_loop1867219568_
                                                            (lambda (_hd1867019571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1867619573_)
                      (if (gx#stx-pair? _hd1867019571_)
                          (let ((_e1867319576_ (gx#stx-e _hd1867019571_)))
                            (let ((_lp-hd1867419579_ (##car _e1867319576_))
                                  (_lp-tl1867519581_ (##cdr _e1867319576_)))
                              (_loop1867219568_
                               _lp-tl1867519581_
                               (cons _lp-hd1867419579_ _arg1867619573_))))
                          (let ((_arg1867719584_ (reverse _arg1867619573_)))
                            (if (gx#stx-pair? _tl1866819560_)
                                (let ((_e1867819587_
                                       (gx#stx-e _tl1866819560_)))
                                  (let ((_hd1867919590_ (##car _e1867819587_))
                                        (_tl1868019592_ (##cdr _e1867819587_)))
                                    (if (gx#stx-pair? _hd1867919590_)
                                        (let ((_e1868119595_
                                               (gx#stx-e _hd1867919590_)))
                                          (let ((_hd1868219598_
                                                 (##car _e1868119595_))
                                                (_tl1868319600_
                                                 (##cdr _e1868119595_)))
                                            (if (gx#identifier? _hd1868219598_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1868219598_)
                                                    (if (gx#stx-pair?
                                                         _tl1868319600_)
                                                        (let ((_e1868419603_
                                                               (gx#stx-e
                                                                _tl1868319600_)))
                                                          (let ((_hd1868519606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1868419603_))
                        (_tl1868619608_ (##cdr _e1868419603_)))
                    (if (gx#stx-pair? _hd1868519606_)
                        (let ((_e1868719611_ (gx#stx-e _hd1868519606_)))
                          (let ((_hd1868819614_ (##car _e1868719611_))
                                (_tl1868919616_ (##cdr _e1868719611_)))
                            (if (gx#identifier? _hd1868819614_)
                                (if (gx#stx-eq? '%#ref _hd1868819614_)
                                    (if (gx#stx-pair? _tl1868919616_)
                                        (let ((_e1869019619_
                                               (gx#stx-e _tl1868919616_)))
                                          (let ((_hd1869119622_
                                                 (##car _e1869019619_))
                                                (_tl1869219624_
                                                 (##cdr _e1869019619_)))
                                            (if (gx#stx-null? _tl1869219624_)
                                                (if (gx#stx-pair?
                                                     _tl1868619608_)
                                                    (let ((_e1869319627_
                                                           (gx#stx-e
                                                            _tl1868619608_)))
                                                      (let ((_hd1869419630_
                                                             (##car _e1869319627_))
                                                            (_tl1869519632_
                                                             (##cdr _e1869319627_)))
                                                        (if (gx#stx-pair?
                                                             _hd1869419630_)
                                                            (let ((_e1869619635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1869419630_)))
                      (let ((_hd1869719638_ (##car _e1869619635_))
                            (_tl1869819640_ (##cdr _e1869619635_)))
                        (if (gx#identifier? _hd1869719638_)
                            (if (gx#stx-eq? '%#ref _hd1869719638_)
                                (if (gx#stx-pair? _tl1869819640_)
                                    (let ((_e1869919643_
                                           (gx#stx-e _tl1869819640_)))
                                      (let ((_hd1870019646_
                                             (##car _e1869919643_))
                                            (_tl1870119648_
                                             (##cdr _e1869919643_)))
                                        (if (gx#stx-null? _tl1870119648_)
                                            (if (gx#stx-pair/null?
                                                 _tl1869519632_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1869519632_)
                                                          '0)
                                                    (let ((_g27939_
                                                           (gx#syntax-split-splice
                                                            _tl1869519632_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27940_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g27939_)
                           (##vector-length _g27939_)
                           1)))
                  (if (not (##fx= _g27940_ 2))
                      (error "Context expects 2 values" _g27940_)))
                (let ((_target1870219651_ (##vector-ref _g27939_ 0))
                      (_tl1870419653_ (##vector-ref _g27939_ 1)))
                  (if (gx#stx-null? _tl1870419653_)
                      (letrec ((_loop1870519656_
                                (lambda (_hd1870319659_ _xarg1870919661_)
                                  (if (gx#stx-pair? _hd1870319659_)
                                      (let ((_e1870619664_
                                             (gx#stx-e _hd1870319659_)))
                                        (let ((_lp-hd1870719667_
                                               (##car _e1870619664_))
                                              (_lp-tl1870819669_
                                               (##cdr _e1870619664_)))
                                          (if (gx#stx-pair? _lp-hd1870719667_)
                                              (let ((_e1871119672_
                                                     (gx#stx-e
                                                      _lp-hd1870719667_)))
                                                (let ((_hd1871219675_
                                                       (##car _e1871119672_))
                                                      (_tl1871319677_
                                                       (##cdr _e1871119672_)))
                                                  (if (gx#identifier?
                                                       _hd1871219675_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1871219675_)
                                                          (if (gx#stx-pair?
                                                               _tl1871319677_)
                                                              (let ((_e1871419680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1871319677_)))
                        (let ((_hd1871519683_ (##car _e1871419680_))
                              (_tl1871619685_ (##cdr _e1871419680_)))
                          (if (gx#stx-null? _tl1871619685_)
                              (_loop1870519656_
                               _lp-tl1870819669_
                               (cons _hd1871519683_ _xarg1870919661_))
                              (_g1860019542_ _g1860519545_))))
                      (_g1860019542_ _g1860519545_))
                  (_g1860019542_ _g1860519545_))
              (_g1860019542_ _g1860519545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1860019542_ _g1860519545_))))
                                      (let ((_xarg1871019688_
                                             (reverse _xarg1870919661_)))
                                        (if (gx#stx-null? _tl1868019592_)
                                            ((lambda (_L19691_
                                                      _L19692_
                                                      _L19693_
                                                      _L19694_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1973119734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1973219736_)
                            (cons _g1973119734_ _g1973219736_))
                          '()
                          _L19694_)))
               (if (gxc#runtime-identifier=? _L19693_ 'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1973819741_
                                                       _g1973919743_)
                                                (cons _g1973819741_
                                                      _g1973919743_))
                                              '()
                                              _L19694_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1974519748_
                                                       _g1974619750_)
                                                (cons _g1974519748_
                                                      _g1974619750_))
                                              '()
                                              _L19691_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1975219755_ _g1975319757_)
                                            (cons _g1975219755_ _g1975319757_))
                                          '()
                                          _L19694_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1975919762_ _g1976019764_)
                                            (cons _g1975919762_ _g1976019764_))
                                          '()
                                          _L19691_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19767_
                                                           (gxc#identifier-symbol
                                                            _L19692_))
                                                          (_type19769_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19767_)))
                                                     (if (##structure-instance-of?
                                                          _type19769_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19767_)
                                                         '#f))
                                                   (_g1860019542_
                                                    _g1860519545_)))
                                             _xarg1871019688_
                                             _hd1870019646_
                                             _hd1869119622_
                                             _arg1867719584_)
                                            (_g1860019542_ _g1860519545_)))))))
                        (_loop1870519656_ _target1870219651_ '()))
                      (_g1860019542_ _g1860519545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860019542_
                                                     _g1860519545_))
                                                (_g1860019542_ _g1860519545_))
                                            (_g1860019542_ _g1860519545_))))
                                    (_g1860019542_ _g1860519545_))
                                (_g1860019542_ _g1860519545_))
                            (_g1860019542_ _g1860519545_))))
                    (_g1860019542_ _g1860519545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860019542_
                                                     _g1860519545_))
                                                (_g1860019542_
                                                 _g1860519545_))))
                                        (_g1860019542_ _g1860519545_))
                                    (_g1860019542_ _g1860519545_))
                                (_g1860019542_ _g1860519545_))))
                        (_g1860019542_ _g1860519545_))))
                (_g1860019542_ _g1860519545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860019542_
                                                     _g1860519545_))
                                                (_g1860019542_
                                                 _g1860519545_))))
                                        (_g1860019542_ _g1860519545_))))
                                (_g1860019542_ _g1860519545_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1867219568_
                                                     _target1866919563_
                                                     '()))
                                                  (_g1860019542_
                                                   _g1860519545_)))))
                                        (_g1860019542_ _g1860519545_))
                                    (_g1860019542_ _g1860519545_))))
                            (_g1860019542_ _g1860519545_))))
                    (_g1860019542_ _g1860519545_))))
             (_g1859819957_
              (lambda (_g1860519775_)
                (if (gx#stx-pair? _g1860519775_)
                    (let ((_e1861119777_ (gx#stx-e _g1860519775_)))
                      (let ((_hd1861219780_ (##car _e1861119777_))
                            (_tl1861319782_ (##cdr _e1861119777_)))
                        (if (gx#stx-pair? _tl1861319782_)
                            (let ((_e1861419785_ (gx#stx-e _tl1861319782_)))
                              (let ((_hd1861519788_ (##car _e1861419785_))
                                    (_tl1861619790_ (##cdr _e1861419785_)))
                                (if (gx#stx-pair? _tl1861619790_)
                                    (let ((_e1861719793_
                                           (gx#stx-e _tl1861619790_)))
                                      (let ((_hd1861819796_
                                             (##car _e1861719793_))
                                            (_tl1861919798_
                                             (##cdr _e1861719793_)))
                                        (if (gx#stx-pair? _hd1861819796_)
                                            (let ((_e1862019801_
                                                   (gx#stx-e _hd1861819796_)))
                                              (let ((_hd1862119804_
                                                     (##car _e1862019801_))
                                                    (_tl1862219806_
                                                     (##cdr _e1862019801_)))
                                                (if (gx#identifier?
                                                     _hd1862119804_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1862119804_)
                                                        (if (gx#stx-pair?
                                                             _tl1862219806_)
                                                            (let ((_e1862319809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1862219806_)))
                      (let ((_hd1862419812_ (##car _e1862319809_))
                            (_tl1862519814_ (##cdr _e1862319809_)))
                        (if (gx#stx-pair? _hd1862419812_)
                            (let ((_e1862619817_ (gx#stx-e _hd1862419812_)))
                              (let ((_hd1862719820_ (##car _e1862619817_))
                                    (_tl1862819822_ (##cdr _e1862619817_)))
                                (if (gx#identifier? _hd1862719820_)
                                    (if (gx#stx-eq? '%#ref _hd1862719820_)
                                        (if (gx#stx-pair? _tl1862819822_)
                                            (let ((_e1862919825_
                                                   (gx#stx-e _tl1862819822_)))
                                              (let ((_hd1863019828_
                                                     (##car _e1862919825_))
                                                    (_tl1863119830_
                                                     (##cdr _e1862919825_)))
                                                (if (gx#stx-null?
                                                     _tl1863119830_)
                                                    (if (gx#stx-pair?
                                                         _tl1862519814_)
                                                        (let ((_e1863219833_
                                                               (gx#stx-e
                                                                _tl1862519814_)))
                                                          (let ((_hd1863319836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1863219833_))
                        (_tl1863419838_ (##cdr _e1863219833_)))
                    (if (gx#stx-pair? _hd1863319836_)
                        (let ((_e1863519841_ (gx#stx-e _hd1863319836_)))
                          (let ((_hd1863619844_ (##car _e1863519841_))
                                (_tl1863719846_ (##cdr _e1863519841_)))
                            (if (gx#identifier? _hd1863619844_)
                                (if (gx#stx-eq? '%#ref _hd1863619844_)
                                    (if (gx#stx-pair? _tl1863719846_)
                                        (let ((_e1863819849_
                                               (gx#stx-e _tl1863719846_)))
                                          (let ((_hd1863919852_
                                                 (##car _e1863819849_))
                                                (_tl1864019854_
                                                 (##cdr _e1863819849_)))
                                            (if (gx#stx-null? _tl1864019854_)
                                                (if (gx#stx-pair?
                                                     _tl1863419838_)
                                                    (let ((_e1864119857_
                                                           (gx#stx-e
                                                            _tl1863419838_)))
                                                      (let ((_hd1864219860_
                                                             (##car _e1864119857_))
                                                            (_tl1864319862_
                                                             (##cdr _e1864119857_)))
                                                        (if (gx#stx-pair?
                                                             _hd1864219860_)
                                                            (let ((_e1864419865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1864219860_)))
                      (let ((_hd1864519868_ (##car _e1864419865_))
                            (_tl1864619870_ (##cdr _e1864419865_)))
                        (if (gx#identifier? _hd1864519868_)
                            (if (gx#stx-eq? '%#ref _hd1864519868_)
                                (if (gx#stx-pair? _tl1864619870_)
                                    (let ((_e1864719873_
                                           (gx#stx-e _tl1864619870_)))
                                      (let ((_hd1864819876_
                                             (##car _e1864719873_))
                                            (_tl1864919878_
                                             (##cdr _e1864719873_)))
                                        (if (gx#stx-null? _tl1864919878_)
                                            (if (gx#stx-pair? _tl1864319862_)
                                                (let ((_e1865019881_
                                                       (gx#stx-e
                                                        _tl1864319862_)))
                                                  (let ((_hd1865119884_
                                                         (##car _e1865019881_))
                                                        (_tl1865219886_
                                                         (##cdr _e1865019881_)))
                                                    (if (gx#stx-pair?
                                                         _hd1865119884_)
                                                        (let ((_e1865319889_
                                                               (gx#stx-e
                                                                _hd1865119884_)))
                                                          (let ((_hd1865419892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1865319889_))
                        (_tl1865519894_ (##cdr _e1865319889_)))
                    (if (gx#identifier? _hd1865419892_)
                        (if (gx#stx-eq? '%#ref _hd1865419892_)
                            (if (gx#stx-pair? _tl1865519894_)
                                (let ((_e1865619897_
                                       (gx#stx-e _tl1865519894_)))
                                  (let ((_hd1865719900_ (##car _e1865619897_))
                                        (_tl1865819902_ (##cdr _e1865619897_)))
                                    (if (gx#stx-null? _tl1865819902_)
                                        (if (gx#stx-null? _tl1865219886_)
                                            (if (gx#stx-null? _tl1861919798_)
                                                ((lambda (_L19905_
                                                          _L19906_
                                                          _L19907_
                                                          _L19908_
                                                          _L19909_)
                                                   (if (if (gx#identifier?
                                                            _L19909_)
                                                           (if (gxc#runtime-identifier=?
                                                                _L19908_
                                                                'apply)
                                                               (if (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19907_
                            'make-struct-instance)
                           (gx#free-identifier=? _L19909_ _L19905_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19952_ (gxc#identifier-symbol _L19906_))
                      (_type19954_ (gxc#optimizer-resolve-type _type-t19952_)))
                 (if (##structure-instance-of?
                      _type19954_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19952_)
                     '#f))
               (_g1859919772_ _g1860519775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1865719900_
                                                 _hd1864819876_
                                                 _hd1863919852_
                                                 _hd1863019828_
                                                 _hd1861519788_)
                                                (_g1859919772_ _g1860519775_))
                                            (_g1859919772_ _g1860519775_))
                                        (_g1859919772_ _g1860519775_))))
                                (_g1859919772_ _g1860519775_))
                            (_g1859919772_ _g1860519775_))
                        (_g1859919772_ _g1860519775_))))
                (_g1859919772_ _g1860519775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1859919772_ _g1860519775_))
                                            (_g1859919772_ _g1860519775_))))
                                    (_g1859919772_ _g1860519775_))
                                (_g1859919772_ _g1860519775_))
                            (_g1859919772_ _g1860519775_))))
                    (_g1859919772_ _g1860519775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1859919772_
                                                     _g1860519775_))
                                                (_g1859919772_
                                                 _g1860519775_))))
                                        (_g1859919772_ _g1860519775_))
                                    (_g1859919772_ _g1860519775_))
                                (_g1859919772_ _g1860519775_))))
                        (_g1859919772_ _g1860519775_))))
                (_g1859919772_ _g1860519775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1859919772_
                                                     _g1860519775_))))
                                            (_g1859919772_ _g1860519775_))
                                        (_g1859919772_ _g1860519775_))
                                    (_g1859919772_ _g1860519775_))))
                            (_g1859919772_ _g1860519775_))))
                    (_g1859919772_ _g1860519775_))
                (_g1859919772_ _g1860519775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1859919772_
                                                     _g1860519775_))))
                                            (_g1859919772_ _g1860519775_))))
                                    (_g1859919772_ _g1860519775_))))
                            (_g1859919772_ _g1860519775_))))
                    (_g1859919772_ _g1860519775_)))))
        (_g1859819957_ _stx18597_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18543_)
      (letrec ((_clause-e18545_
                (lambda (_form18595_)
                  (let ((__obj27866 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27866
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18595_)
                       (gxc#dispatch-lambda-form-delegate _form18595_))
                      __obj27866)))))
        (let* ((_g1854818558_
                (lambda (_g1854918555_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1854918555_)))
               (_g1854718565_ (lambda (_g1854918561_) ((lambda () '#f))))
               (_g1854618592_
                (lambda (_g1854918568_)
                  (if (gx#stx-pair? _g1854918568_)
                      (let ((_e1855118570_ (gx#stx-e _g1854918568_)))
                        (let ((_hd1855218573_ (##car _e1855118570_))
                              (_tl1855318575_ (##cdr _e1855118570_)))
                          ((lambda (_L18578_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18578_)
                                 (let ((_clauses18590_
                                        (map _clause-e18545_ _L18578_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18590_))
                                 (_g1854718565_ _g1854918568_)))
                           _tl1855318575_)))
                      (_g1854718565_ _g1854918568_)))))
          (_g1854618592_ _stx18543_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx18448_)
      (let* ((_g1845118471_
              (lambda (_g1845218468_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1845218468_)))
             (_g1845018478_ (lambda (_g1845218474_) ((lambda () '#f))))
             (_g1844918540_
              (lambda (_g1845218481_)
                (if (gx#stx-pair? _g1845218481_)
                    (let ((_e1845518483_ (gx#stx-e _g1845218481_)))
                      (let ((_hd1845618486_ (##car _e1845518483_))
                            (_tl1845718488_ (##cdr _e1845518483_)))
                        (if (gx#stx-pair? _tl1845718488_)
                            (let ((_e1845818491_ (gx#stx-e _tl1845718488_)))
                              (let ((_hd1845918494_ (##car _e1845818491_))
                                    (_tl1846018496_ (##cdr _e1845818491_)))
                                (if (gx#stx-pair? _hd1845918494_)
                                    (let ((_e1846118499_
                                           (gx#stx-e _hd1845918494_)))
                                      (let ((_hd1846218502_
                                             (##car _e1846118499_))
                                            (_tl1846318504_
                                             (##cdr _e1846118499_)))
                                        (if (gx#identifier? _hd1846218502_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1846218502_)
                                                (if (gx#stx-pair?
                                                     _tl1846318504_)
                                                    (let ((_e1846418507_
                                                           (gx#stx-e
                                                            _tl1846318504_)))
                                                      (let ((_hd1846518510_
                                                             (##car _e1846418507_))
                                                            (_tl1846618512_
                                                             (##cdr _e1846418507_)))
                                                        (if (gx#stx-null?
                                                             _tl1846618512_)
                                                            ((lambda (_L18515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18516_)
                       (let ((_type-e1853318535_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#identifier-symbol _L18516_)
                               '#f)))
                         (if _type-e1853318535_
                             (let ((_type-e18538_ _type-e1853318535_))
                               (_type-e18538_ _stx18448_ _L18515_))
                             '#f)))
                     _tl1846018496_
                     _hd1846518510_)
                    (_g1845018478_ _g1845218481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1845018478_
                                                     _g1845218481_))
                                                (_g1845018478_ _g1845218481_))
                                            (_g1845018478_ _g1845218481_))))
                                    (_g1845018478_ _g1845218481_))))
                            (_g1845018478_ _g1845218481_))))
                    (_g1845018478_ _g1845218481_)))))
        (_g1844918540_ _stx18448_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17933_ _args17934_)
      (let* ((_g1793818051_
              (lambda (_g1793918048_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1793918048_)))
             (_g1793718058_
              (lambda (_g1793918054_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17933_))
                     '#f)))))
             (_g1793618265_
              (lambda (_g1793918061_)
                (if (gx#stx-pair? _g1793918061_)
                    (let ((_e1799918063_ (gx#stx-e _g1793918061_)))
                      (let ((_hd1800018066_ (##car _e1799918063_))
                            (_tl1800118068_ (##cdr _e1799918063_)))
                        (if (gx#stx-pair? _hd1800018066_)
                            (let ((_e1800218071_ (gx#stx-e _hd1800018066_)))
                              (let ((_hd1800318074_ (##car _e1800218071_))
                                    (_tl1800418076_ (##cdr _e1800218071_)))
                                (if (gx#identifier? _hd1800318074_)
                                    (if (gx#stx-eq? '%#quote _hd1800318074_)
                                        (if (gx#stx-pair? _tl1800418076_)
                                            (let ((_e1800518079_
                                                   (gx#stx-e _tl1800418076_)))
                                              (let ((_hd1800618082_
                                                     (##car _e1800518079_))
                                                    (_tl1800718084_
                                                     (##cdr _e1800518079_)))
                                                (if (gx#stx-null?
                                                     _tl1800718084_)
                                                    (if (gx#stx-pair?
                                                         _tl1800118068_)
                                                        (let ((_e1800818087_
                                                               (gx#stx-e
                                                                _tl1800118068_)))
                                                          (let ((_hd1800918090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1800818087_))
                        (_tl1801018092_ (##cdr _e1800818087_)))
                    (if (gx#stx-pair? _hd1800918090_)
                        (let ((_e1801118095_ (gx#stx-e _hd1800918090_)))
                          (let ((_hd1801218098_ (##car _e1801118095_))
                                (_tl1801318100_ (##cdr _e1801118095_)))
                            (if (gx#identifier? _hd1801218098_)
                                (if (gx#stx-eq? '%#ref _hd1801218098_)
                                    (if (gx#stx-pair? _tl1801318100_)
                                        (let ((_e1801418103_
                                               (gx#stx-e _tl1801318100_)))
                                          (let ((_hd1801518106_
                                                 (##car _e1801418103_))
                                                (_tl1801618108_
                                                 (##cdr _e1801418103_)))
                                            (if (gx#stx-null? _tl1801618108_)
                                                (if (gx#stx-pair?
                                                     _tl1801018092_)
                                                    (let ((_e1801718111_
                                                           (gx#stx-e
                                                            _tl1801018092_)))
                                                      (let ((_hd1801818114_
                                                             (##car _e1801718111_))
                                                            (_tl1801918116_
                                                             (##cdr _e1801718111_)))
                                                        (if (gx#stx-pair?
                                                             _hd1801818114_)
                                                            (let ((_e1802018119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1801818114_)))
                      (let ((_hd1802118122_ (##car _e1802018119_))
                            (_tl1802218124_ (##cdr _e1802018119_)))
                        (if (gx#identifier? _hd1802118122_)
                            (if (gx#stx-eq? '%#quote _hd1802118122_)
                                (if (gx#stx-pair? _tl1802218124_)
                                    (let ((_e1802318127_
                                           (gx#stx-e _tl1802218124_)))
                                      (let ((_hd1802418130_
                                             (##car _e1802318127_))
                                            (_tl1802518132_
                                             (##cdr _e1802318127_)))
                                        (if (gx#stx-null? _tl1802518132_)
                                            (if (gx#stx-pair? _tl1801918116_)
                                                (let ((_e1802618135_
                                                       (gx#stx-e
                                                        _tl1801918116_)))
                                                  (let ((_hd1802718138_
                                                         (##car _e1802618135_))
                                                        (_tl1802818140_
                                                         (##cdr _e1802618135_)))
                                                    (if (gx#stx-pair?
                                                         _tl1802818140_)
                                                        (let ((_e1802918143_
                                                               (gx#stx-e
                                                                _tl1802818140_)))
                                                          (let ((_hd1803018146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1802918143_))
                        (_tl1803118148_ (##cdr _e1802918143_)))
                    (if (gx#stx-pair? _hd1803018146_)
                        (let ((_e1803218151_ (gx#stx-e _hd1803018146_)))
                          (let ((_hd1803318154_ (##car _e1803218151_))
                                (_tl1803418156_ (##cdr _e1803218151_)))
                            (if (gx#identifier? _hd1803318154_)
                                (if (gx#stx-eq? '%#quote _hd1803318154_)
                                    (if (gx#stx-pair? _tl1803418156_)
                                        (let ((_e1803518159_
                                               (gx#stx-e _tl1803418156_)))
                                          (let ((_hd1803618162_
                                                 (##car _e1803518159_))
                                                (_tl1803718164_
                                                 (##cdr _e1803518159_)))
                                            (if (gx#stx-null? _tl1803718164_)
                                                (if (gx#stx-pair?
                                                     _tl1803118148_)
                                                    (let ((_e1803818167_
                                                           (gx#stx-e
                                                            _tl1803118148_)))
                                                      (let ((_hd1803918170_
                                                             (##car _e1803818167_))
                                                            (_tl1804018172_
                                                             (##cdr _e1803818167_)))
                                                        (if (gx#stx-pair?
                                                             _hd1803918170_)
                                                            (let ((_e1804118175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1803918170_)))
                      (let ((_hd1804218178_ (##car _e1804118175_))
                            (_tl1804318180_ (##cdr _e1804118175_)))
                        (if (gx#identifier? _hd1804218178_)
                            (if (gx#stx-eq? '%#quote _hd1804218178_)
                                (if (gx#stx-pair? _tl1804318180_)
                                    (let ((_e1804418183_
                                           (gx#stx-e _tl1804318180_)))
                                      (let ((_hd1804518186_
                                             (##car _e1804418183_))
                                            (_tl1804618188_
                                             (##cdr _e1804418183_)))
                                        (if (gx#stx-null? _tl1804618188_)
                                            ((lambda (_L18191_
                                                      _L18192_
                                                      _L18193_
                                                      _L18194_
                                                      _L18195_
                                                      _L18196_)
                                               (let* ((_super-t18242_
                                                       (if (gx#stx-e _L18195_)
                                                           (gxc#identifier-symbol
                                                            _L18195_)
                                                           '#f))
                                                      (_super-type18244_
                                                       (if _super-t18242_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t18242_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type18244_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type18244_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17933_
                _L18195_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields18260_
                                                          (gx#stx-e _L18194_))
                                                         (_xfields18261_
                                                          (if _super-type18244_
                                                              (let ((_super-fields1824618249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type18244_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1824718251_
                             (##structure-ref
                              _super-type18244_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1824618249_
                            (if _super-xfields1824718251_
                                (let ((_super-fields18254_
                                       _super-fields1824618249_)
                                      (_super-xfields18255_
                                       _super-xfields1824718251_))
                                  (fx+ _super-fields18254_
                                       _super-xfields18255_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist18262_ (gx#stx-e _L18192_))
                 (_ctor18263_
                  (let ((_$e18257_ (gx#stx-e _L18191_)))
                    (if _$e18257_
                        (values _$e18257_)
                        (if _super-type18244_
                            (##structure-ref
                             _super-type18244_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t18242_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27867
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27867
                                                          (gx#stx-e _L18196_)
                                                          _super-t18242_
                                                          _fields18260_
                                                          _xfields18261_
                                                          _ctor18263_
                                                          _plist18262_)
                                                         __obj27867))))))
                                             _hd1804518186_
                                             _hd1803618162_
                                             _hd1802718138_
                                             _hd1802418130_
                                             _hd1801518106_
                                             _hd1800618082_)
                                            (_g1793718058_ _g1793918061_))))
                                    (_g1793718058_ _g1793918061_))
                                (_g1793718058_ _g1793918061_))
                            (_g1793718058_ _g1793918061_))))
                    (_g1793718058_ _g1793918061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793718058_
                                                     _g1793918061_))
                                                (_g1793718058_
                                                 _g1793918061_))))
                                        (_g1793718058_ _g1793918061_))
                                    (_g1793718058_ _g1793918061_))
                                (_g1793718058_ _g1793918061_))))
                        (_g1793718058_ _g1793918061_))))
                (_g1793718058_ _g1793918061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1793718058_ _g1793918061_))
                                            (_g1793718058_ _g1793918061_))))
                                    (_g1793718058_ _g1793918061_))
                                (_g1793718058_ _g1793918061_))
                            (_g1793718058_ _g1793918061_))))
                    (_g1793718058_ _g1793918061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793718058_
                                                     _g1793918061_))
                                                (_g1793718058_
                                                 _g1793918061_))))
                                        (_g1793718058_ _g1793918061_))
                                    (_g1793718058_ _g1793918061_))
                                (_g1793718058_ _g1793918061_))))
                        (_g1793718058_ _g1793918061_))))
                (_g1793718058_ _g1793918061_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793718058_
                                                     _g1793918061_))))
                                            (_g1793718058_ _g1793918061_))
                                        (_g1793718058_ _g1793918061_))
                                    (_g1793718058_ _g1793918061_))))
                            (_g1793718058_ _g1793918061_))))
                    (_g1793718058_ _g1793918061_))))
             (_g1793518445_
              (lambda (_g1793918268_)
                (if (gx#stx-pair? _g1793918268_)
                    (let ((_e1794518270_ (gx#stx-e _g1793918268_)))
                      (let ((_hd1794618273_ (##car _e1794518270_))
                            (_tl1794718275_ (##cdr _e1794518270_)))
                        (if (gx#stx-pair? _hd1794618273_)
                            (let ((_e1794818278_ (gx#stx-e _hd1794618273_)))
                              (let ((_hd1794918281_ (##car _e1794818278_))
                                    (_tl1795018283_ (##cdr _e1794818278_)))
                                (if (gx#identifier? _hd1794918281_)
                                    (if (gx#stx-eq? '%#quote _hd1794918281_)
                                        (if (gx#stx-pair? _tl1795018283_)
                                            (let ((_e1795118286_
                                                   (gx#stx-e _tl1795018283_)))
                                              (let ((_hd1795218289_
                                                     (##car _e1795118286_))
                                                    (_tl1795318291_
                                                     (##cdr _e1795118286_)))
                                                (if (gx#stx-null?
                                                     _tl1795318291_)
                                                    (if (gx#stx-pair?
                                                         _tl1794718275_)
                                                        (let ((_e1795418294_
                                                               (gx#stx-e
                                                                _tl1794718275_)))
                                                          (let ((_hd1795518297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1795418294_))
                        (_tl1795618299_ (##cdr _e1795418294_)))
                    (if (gx#stx-pair? _hd1795518297_)
                        (let ((_e1795718302_ (gx#stx-e _hd1795518297_)))
                          (let ((_hd1795818305_ (##car _e1795718302_))
                                (_tl1795918307_ (##cdr _e1795718302_)))
                            (if (gx#identifier? _hd1795818305_)
                                (if (gx#stx-eq? '%#quote _hd1795818305_)
                                    (if (gx#stx-pair? _tl1795918307_)
                                        (let ((_e1796018310_
                                               (gx#stx-e _tl1795918307_)))
                                          (let ((_hd1796118313_
                                                 (##car _e1796018310_))
                                                (_tl1796218315_
                                                 (##cdr _e1796018310_)))
                                            (if (gx#stx-datum? _hd1796118313_)
                                                (if (equal? (gx#stx-e
                                                             _hd1796118313_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1796218315_)
                                                        (if (gx#stx-pair?
                                                             _tl1795618299_)
                                                            (let ((_e1796318318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1795618299_)))
                      (let ((_hd1796418321_ (##car _e1796318318_))
                            (_tl1796518323_ (##cdr _e1796318318_)))
                        (if (gx#stx-pair? _hd1796418321_)
                            (let ((_e1796618326_ (gx#stx-e _hd1796418321_)))
                              (let ((_hd1796718329_ (##car _e1796618326_))
                                    (_tl1796818331_ (##cdr _e1796618326_)))
                                (if (gx#identifier? _hd1796718329_)
                                    (if (gx#stx-eq? '%#quote _hd1796718329_)
                                        (if (gx#stx-pair? _tl1796818331_)
                                            (let ((_e1796918334_
                                                   (gx#stx-e _tl1796818331_)))
                                              (let ((_hd1797018337_
                                                     (##car _e1796918334_))
                                                    (_tl1797118339_
                                                     (##cdr _e1796918334_)))
                                                (if (gx#stx-null?
                                                     _tl1797118339_)
                                                    (if (gx#stx-pair?
                                                         _tl1796518323_)
                                                        (let ((_e1797218342_
                                                               (gx#stx-e
                                                                _tl1796518323_)))
                                                          (let ((_hd1797318345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1797218342_))
                        (_tl1797418347_ (##cdr _e1797218342_)))
                    (if (gx#stx-pair? _tl1797418347_)
                        (let ((_e1797518350_ (gx#stx-e _tl1797418347_)))
                          (let ((_hd1797618353_ (##car _e1797518350_))
                                (_tl1797718355_ (##cdr _e1797518350_)))
                            (if (gx#stx-pair? _hd1797618353_)
                                (let ((_e1797818358_
                                       (gx#stx-e _hd1797618353_)))
                                  (let ((_hd1797918361_ (##car _e1797818358_))
                                        (_tl1798018363_ (##cdr _e1797818358_)))
                                    (if (gx#identifier? _hd1797918361_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1797918361_)
                                            (if (gx#stx-pair? _tl1798018363_)
                                                (let ((_e1798118366_
                                                       (gx#stx-e
                                                        _tl1798018363_)))
                                                  (let ((_hd1798218369_
                                                         (##car _e1798118366_))
                                                        (_tl1798318371_
                                                         (##cdr _e1798118366_)))
                                                    (if (gx#stx-null?
                                                         _tl1798318371_)
                                                        (if (gx#stx-pair?
                                                             _tl1797718355_)
                                                            (let ((_e1798418374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1797718355_)))
                      (let ((_hd1798518377_ (##car _e1798418374_))
                            (_tl1798618379_ (##cdr _e1798418374_)))
                        (if (gx#stx-pair? _hd1798518377_)
                            (let ((_e1798718382_ (gx#stx-e _hd1798518377_)))
                              (let ((_hd1798818385_ (##car _e1798718382_))
                                    (_tl1798918387_ (##cdr _e1798718382_)))
                                (if (gx#identifier? _hd1798818385_)
                                    (if (gx#stx-eq? '%#quote _hd1798818385_)
                                        (if (gx#stx-pair? _tl1798918387_)
                                            (let ((_e1799018390_
                                                   (gx#stx-e _tl1798918387_)))
                                              (let ((_hd1799118393_
                                                     (##car _e1799018390_))
                                                    (_tl1799218395_
                                                     (##cdr _e1799018390_)))
                                                (if (gx#stx-null?
                                                     _tl1799218395_)
                                                    ((lambda (_L18398_
                                                              _L18399_
                                                              _L18400_
                                                              _L18401_
                                                              _L18402_)
                                                       (let ((__obj27868
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27868
                                                            (gx#stx-e _L18402_)
                                                            '#f
                                                            (gx#stx-e _L18401_)
                                                            '0
                                                            (gx#stx-e _L18398_)
                                                            (gx#stx-e
                                                             _L18399_))
                                                           __obj27868)))
                                                     _hd1799118393_
                                                     _hd1798218369_
                                                     _hd1797318345_
                                                     _hd1797018337_
                                                     _hd1795218289_)
                                                    (_g1793618265_
                                                     _g1793918268_))))
                                            (_g1793618265_ _g1793918268_))
                                        (_g1793618265_ _g1793918268_))
                                    (_g1793618265_ _g1793918268_))))
                            (_g1793618265_ _g1793918268_))))
                    (_g1793618265_ _g1793918268_))
                (_g1793618265_ _g1793918268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1793618265_ _g1793918268_))
                                            (_g1793618265_ _g1793918268_))
                                        (_g1793618265_ _g1793918268_))))
                                (_g1793618265_ _g1793918268_))))
                        (_g1793618265_ _g1793918268_))))
                (_g1793618265_ _g1793918268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793618265_
                                                     _g1793918268_))))
                                            (_g1793618265_ _g1793918268_))
                                        (_g1793618265_ _g1793918268_))
                                    (_g1793618265_ _g1793918268_))))
                            (_g1793618265_ _g1793918268_))))
                    (_g1793618265_ _g1793918268_))
                (_g1793618265_ _g1793918268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793618265_
                                                     _g1793918268_))
                                                (_g1793618265_
                                                 _g1793918268_))))
                                        (_g1793618265_ _g1793918268_))
                                    (_g1793618265_ _g1793918268_))
                                (_g1793618265_ _g1793918268_))))
                        (_g1793618265_ _g1793918268_))))
                (_g1793618265_ _g1793918268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793618265_
                                                     _g1793918268_))))
                                            (_g1793618265_ _g1793918268_))
                                        (_g1793618265_ _g1793918268_))
                                    (_g1793618265_ _g1793918268_))))
                            (_g1793618265_ _g1793918268_))))
                    (_g1793618265_ _g1793918268_)))))
        (_g1793518445_ _args17934_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17859_ _args17860_)
      (let* ((_g1786317879_
              (lambda (_g1786417876_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1786417876_)))
             (_g1786217886_ (lambda (_g1786417882_) ((lambda () '#f))))
             (_g1786117930_
              (lambda (_g1786417889_)
                (if (gx#stx-pair? _g1786417889_)
                    (let ((_e1786617891_ (gx#stx-e _g1786417889_)))
                      (let ((_hd1786717894_ (##car _e1786617891_))
                            (_tl1786817896_ (##cdr _e1786617891_)))
                        (if (gx#stx-pair? _hd1786717894_)
                            (let ((_e1786917899_ (gx#stx-e _hd1786717894_)))
                              (let ((_hd1787017902_ (##car _e1786917899_))
                                    (_tl1787117904_ (##cdr _e1786917899_)))
                                (if (gx#identifier? _hd1787017902_)
                                    (if (gx#stx-eq? '%#ref _hd1787017902_)
                                        (if (gx#stx-pair? _tl1787117904_)
                                            (let ((_e1787217907_
                                                   (gx#stx-e _tl1787117904_)))
                                              (let ((_hd1787317910_
                                                     (##car _e1787217907_))
                                                    (_tl1787417912_
                                                     (##cdr _e1787217907_)))
                                                (if (gx#stx-null?
                                                     _tl1787417912_)
                                                    (if (gx#stx-null?
                                                         _tl1786817896_)
                                                        ((lambda (_L17915_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#identifier-symbol
                                                             _L17915_)))
                                                         _hd1787317910_)
                                                        (_g1786217886_
                                                         _g1786417889_))
                                                    (_g1786217886_
                                                     _g1786417889_))))
                                            (_g1786217886_ _g1786417889_))
                                        (_g1786217886_ _g1786417889_))
                                    (_g1786217886_ _g1786417889_))))
                            (_g1786217886_ _g1786417889_))))
                    (_g1786217886_ _g1786417889_)))))
        (_g1786117930_ _args17860_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17730_ _args17731_ _unchecked?17732_)
        (let* ((_g1773517761_
                (lambda (_g1773617758_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1773617758_)))
               (_g1773417768_ (lambda (_g1773617764_) ((lambda () '#f))))
               (_g1773317844_
                (lambda (_g1773617771_)
                  (if (gx#stx-pair? _g1773617771_)
                      (let ((_e1773917773_ (gx#stx-e _g1773617771_)))
                        (let ((_hd1774017776_ (##car _e1773917773_))
                              (_tl1774117778_ (##cdr _e1773917773_)))
                          (if (gx#stx-pair? _hd1774017776_)
                              (let ((_e1774217781_ (gx#stx-e _hd1774017776_)))
                                (let ((_hd1774317784_ (##car _e1774217781_))
                                      (_tl1774417786_ (##cdr _e1774217781_)))
                                  (if (gx#identifier? _hd1774317784_)
                                      (if (gx#stx-eq? '%#ref _hd1774317784_)
                                          (if (gx#stx-pair? _tl1774417786_)
                                              (let ((_e1774517789_
                                                     (gx#stx-e
                                                      _tl1774417786_)))
                                                (let ((_hd1774617792_
                                                       (##car _e1774517789_))
                                                      (_tl1774717794_
                                                       (##cdr _e1774517789_)))
                                                  (if (gx#stx-null?
                                                       _tl1774717794_)
                                                      (if (gx#stx-pair?
                                                           _tl1774117778_)
                                                          (let ((_e1774817797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1774117778_)))
                    (let ((_hd1774917800_ (##car _e1774817797_))
                          (_tl1775017802_ (##cdr _e1774817797_)))
                      (if (gx#stx-pair? _hd1774917800_)
                          (let ((_e1775117805_ (gx#stx-e _hd1774917800_)))
                            (let ((_hd1775217808_ (##car _e1775117805_))
                                  (_tl1775317810_ (##cdr _e1775117805_)))
                              (if (gx#identifier? _hd1775217808_)
                                  (if (gx#stx-eq? '%#quote _hd1775217808_)
                                      (if (gx#stx-pair? _tl1775317810_)
                                          (let ((_e1775417813_
                                                 (gx#stx-e _tl1775317810_)))
                                            (let ((_hd1775517816_
                                                   (##car _e1775417813_))
                                                  (_tl1775617818_
                                                   (##cdr _e1775417813_)))
                                              (if (gx#stx-null? _tl1775617818_)
                                                  (if (gx#stx-null?
                                                       _tl1775017802_)
                                                      ((lambda (_L17821_
                                                                _L17822_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#identifier-symbol
                                                           _L17822_)
                                                          (gx#stx-e _L17821_)
                                                          _unchecked?17732_))
                                                       _hd1775517816_
                                                       _hd1774617792_)
                                                      (_g1773417768_
                                                       _g1773617771_))
                                                  (_g1773417768_
                                                   _g1773617771_))))
                                          (_g1773417768_ _g1773617771_))
                                      (_g1773417768_ _g1773617771_))
                                  (_g1773417768_ _g1773617771_))))
                          (_g1773417768_ _g1773617771_))))
                  (_g1773417768_ _g1773617771_))
              (_g1773417768_ _g1773617771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1773417768_ _g1773617771_))
                                          (_g1773417768_ _g1773617771_))
                                      (_g1773417768_ _g1773617771_))))
                              (_g1773417768_ _g1773617771_))))
                      (_g1773417768_ _g1773617771_)))))
          (_g1773317844_ _args17731_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17850_ _args17851_)
          (let ((_unchecked?17853_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17850_
             _args17851_
             _unchecked?17853_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27942_
          (let ((_g27941_ (length _g27942_)))
            (cond ((##fx= _g27941_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27942_))
                  ((##fx= _g27941_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27942_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27942_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17600_ _args17601_ _unchecked?17602_)
        (let* ((_g1760517631_
                (lambda (_g1760617628_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1760617628_)))
               (_g1760417638_ (lambda (_g1760617634_) ((lambda () '#f))))
               (_g1760317714_
                (lambda (_g1760617641_)
                  (if (gx#stx-pair? _g1760617641_)
                      (let ((_e1760917643_ (gx#stx-e _g1760617641_)))
                        (let ((_hd1761017646_ (##car _e1760917643_))
                              (_tl1761117648_ (##cdr _e1760917643_)))
                          (if (gx#stx-pair? _hd1761017646_)
                              (let ((_e1761217651_ (gx#stx-e _hd1761017646_)))
                                (let ((_hd1761317654_ (##car _e1761217651_))
                                      (_tl1761417656_ (##cdr _e1761217651_)))
                                  (if (gx#identifier? _hd1761317654_)
                                      (if (gx#stx-eq? '%#ref _hd1761317654_)
                                          (if (gx#stx-pair? _tl1761417656_)
                                              (let ((_e1761517659_
                                                     (gx#stx-e
                                                      _tl1761417656_)))
                                                (let ((_hd1761617662_
                                                       (##car _e1761517659_))
                                                      (_tl1761717664_
                                                       (##cdr _e1761517659_)))
                                                  (if (gx#stx-null?
                                                       _tl1761717664_)
                                                      (if (gx#stx-pair?
                                                           _tl1761117648_)
                                                          (let ((_e1761817667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1761117648_)))
                    (let ((_hd1761917670_ (##car _e1761817667_))
                          (_tl1762017672_ (##cdr _e1761817667_)))
                      (if (gx#stx-pair? _hd1761917670_)
                          (let ((_e1762117675_ (gx#stx-e _hd1761917670_)))
                            (let ((_hd1762217678_ (##car _e1762117675_))
                                  (_tl1762317680_ (##cdr _e1762117675_)))
                              (if (gx#identifier? _hd1762217678_)
                                  (if (gx#stx-eq? '%#quote _hd1762217678_)
                                      (if (gx#stx-pair? _tl1762317680_)
                                          (let ((_e1762417683_
                                                 (gx#stx-e _tl1762317680_)))
                                            (let ((_hd1762517686_
                                                   (##car _e1762417683_))
                                                  (_tl1762617688_
                                                   (##cdr _e1762417683_)))
                                              (if (gx#stx-null? _tl1762617688_)
                                                  (if (gx#stx-null?
                                                       _tl1762017672_)
                                                      ((lambda (_L17691_
                                                                _L17692_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#identifier-symbol
                                                           _L17692_)
                                                          (gx#stx-e _L17691_)
                                                          _unchecked?17602_))
                                                       _hd1762517686_
                                                       _hd1761617662_)
                                                      (_g1760417638_
                                                       _g1760617641_))
                                                  (_g1760417638_
                                                   _g1760617641_))))
                                          (_g1760417638_ _g1760617641_))
                                      (_g1760417638_ _g1760617641_))
                                  (_g1760417638_ _g1760617641_))))
                          (_g1760417638_ _g1760617641_))))
                  (_g1760417638_ _g1760617641_))
              (_g1760417638_ _g1760617641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1760417638_ _g1760617641_))
                                          (_g1760417638_ _g1760617641_))
                                      (_g1760417638_ _g1760617641_))))
                              (_g1760417638_ _g1760617641_))))
                      (_g1760417638_ _g1760617641_)))))
          (_g1760317714_ _args17601_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17720_ _args17721_)
          (let ((_unchecked?17723_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17720_
             _args17721_
             _unchecked?17723_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27944_
          (let ((_g27943_ (length _g27944_)))
            (cond ((##fx= _g27943_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27944_))
                  ((##fx= _g27943_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27944_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27944_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17596_ _args17597_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17596_
       _args17597_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17593_ _args17594_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17593_
       _args17594_
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
    (lambda (_stx17542_)
      (let* ((_g1754417557_
              (lambda (_g1754517554_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1754517554_)))
             (_g1754317590_
              (lambda (_g1754517560_)
                (if (gx#stx-pair? _g1754517560_)
                    (let ((_e1754717562_ (gx#stx-e _g1754517560_)))
                      (let ((_hd1754817565_ (##car _e1754717562_))
                            (_tl1754917567_ (##cdr _e1754717562_)))
                        (if (gx#stx-pair? _tl1754917567_)
                            (let ((_e1755017570_ (gx#stx-e _tl1754917567_)))
                              (let ((_hd1755117573_ (##car _e1755017570_))
                                    (_tl1755217575_ (##cdr _e1755017570_)))
                                (if (gx#stx-null? _tl1755217575_)
                                    ((lambda (_L17578_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L17578_)))
                                     _hd1755117573_)
                                    (_g1754417557_ _g1754517560_))))
                            (_g1754417557_ _g1754517560_))))
                    (_g1754417557_ _g1754517560_)))))
        (_g1754317590_ _stx17542_))))
  (define gxc#optimize-call%
    (lambda (_stx17448_)
      (let* ((_g1745117471_
              (lambda (_g1745217468_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1745217468_)))
             (_g1745017478_
              (lambda (_g1745217474_)
                ((lambda () (gxc#xform-call% _stx17448_)))))
             (_g1744917539_
              (lambda (_g1745217481_)
                (if (gx#stx-pair? _g1745217481_)
                    (let ((_e1745517483_ (gx#stx-e _g1745217481_)))
                      (let ((_hd1745617486_ (##car _e1745517483_))
                            (_tl1745717488_ (##cdr _e1745517483_)))
                        (if (gx#stx-pair? _tl1745717488_)
                            (let ((_e1745817491_ (gx#stx-e _tl1745717488_)))
                              (let ((_hd1745917494_ (##car _e1745817491_))
                                    (_tl1746017496_ (##cdr _e1745817491_)))
                                (if (gx#stx-pair? _hd1745917494_)
                                    (let ((_e1746117499_
                                           (gx#stx-e _hd1745917494_)))
                                      (let ((_hd1746217502_
                                             (##car _e1746117499_))
                                            (_tl1746317504_
                                             (##cdr _e1746117499_)))
                                        (if (gx#identifier? _hd1746217502_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1746217502_)
                                                (if (gx#stx-pair?
                                                     _tl1746317504_)
                                                    (let ((_e1746417507_
                                                           (gx#stx-e
                                                            _tl1746317504_)))
                                                      (let ((_hd1746517510_
                                                             (##car _e1746417507_))
                                                            (_tl1746617512_
                                                             (##cdr _e1746417507_)))
                                                        (if (gx#stx-null?
                                                             _tl1746617512_)
                                                            ((lambda (_L17515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17516_)
                       (let* ((_rator-id17534_
                               (gxc#identifier-symbol _L17516_))
                              (_rator-type17536_
                               (gxc#optimizer-resolve-type _rator-id17534_)))
                         (if (##structure-instance-of?
                              _rator-type17536_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17534_
                                '" => "
                                _rator-type17536_
                                '" "
                                (##structure-ref
                                 _rator-type17536_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17536_
                                'optimize-call
                                _stx17448_
                                _L17515_))
                             (if (not _rator-type17536_)
                                 (gxc#xform-call% _stx17448_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx17448_
                                  _rator-type17536_)))))
                     _tl1746017496_
                     _hd1746517510_)
                    (_g1745017478_ _g1745217481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745017478_
                                                     _g1745217481_))
                                                (_g1745017478_ _g1745217481_))
                                            (_g1745017478_ _g1745217481_))))
                                    (_g1745017478_ _g1745217481_))))
                            (_g1745017478_ _g1745217481_))))
                    (_g1745017478_ _g1745217481_)))))
        (_g1744917539_ _stx17448_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self17302_ _stx17303_ _args17304_)
      (let* ((_self1730517311_ _self17302_)
             (_E1730717315_
              (lambda () (error '"No clause matching" _self1730517311_)))
             (_K1730817440_
              (lambda (_struct-t17318_)
                (let* ((_struct-type17320_
                        (gxc#optimizer-resolve-type _struct-t17318_))
                       (_struct-type1732117335_ _struct-type17320_)
                       (_E1732517339_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1732117335_)))
                       (_else1732417343_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx17303_
                           _struct-t17318_
                           _struct-type17320_)))
                       (_try-match1732317351_
                        (lambda ()
                          (let ((_K1732617348_
                                 (lambda () (gxc#xform-call% _stx17303_))))
                            (if (##eq? _struct-type1732117335_ '#f)
                                (_K1732617348_)
                                (_else1732417343_)))))
                       (_K1732717415_
                        (lambda (_plist17354_ _struct-type-id17355_)
                          (let* ((_g1735817368_
                                  (lambda (_g1735917365_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1735917365_)))
                                 (_g1735717375_
                                  (lambda (_g1735917371_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx17303_)))))
                                 (_g1735617412_
                                  (lambda (_g1735917378_)
                                    (if (gx#stx-pair? _g1735917378_)
                                        (let ((_e1736117380_
                                               (gx#stx-e _g1735917378_)))
                                          (let ((_hd1736217383_
                                                 (##car _e1736117380_))
                                                (_tl1736317385_
                                                 (##cdr _e1736117380_)))
                                            (if (gx#stx-null? _tl1736317385_)
                                                ((lambda (_L17388_)
                                                   (let ((_expr17409_
                                                          (gxc#compile-e
                                                           _L17388_))
                                                         (_op17410_
                                                          (if (if _plist17354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist17354_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op17410_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id17355_ '()))
                          (cons _expr17409_ '())))
              _stx17303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1736217383_)
                                                (_g1735717375_
                                                 _g1735917378_))))
                                        (_g1735717375_ _g1735917378_)))))
                            (_g1735617412_ _args17304_)))))
                  (if (##structure-instance-of?
                       _struct-type1732117335_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1732817418_
                              (##vector-ref _struct-type1732117335_ '1))
                             (_struct-type-id17421_ _e1732817418_)
                             (_e1732917423_
                              (##vector-ref _struct-type1732117335_ '2))
                             (_e1733017426_
                              (##vector-ref _struct-type1732117335_ '3))
                             (_e1733117429_
                              (##vector-ref _struct-type1732117335_ '4))
                             (_e1733217432_
                              (##vector-ref _struct-type1732117335_ '5))
                             (_e1733317435_
                              (##vector-ref _struct-type1732117335_ '6))
                             (_plist17438_ _e1733317435_))
                        (_K1732717415_ _plist17438_ _struct-type-id17421_))
                      (_try-match1732317351_))))))
        (if (##structure-instance-of?
             _self1730517311_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1730917443_ (##vector-ref _self1730517311_ '1))
                   (_struct-t17446_ _e1730917443_))
              (_K1730817440_ _struct-t17446_))
            (_E1730717315_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self17076_ _stx17077_ _args17078_)
      (let* ((_self1707917085_ _self17076_)
             (_E1708117089_
              (lambda () (error '"No clause matching" _self1707917085_)))
             (_K1708217172_
              (lambda (_struct-t17092_)
                (let* ((_struct-type17094_
                        (gxc#optimizer-resolve-type _struct-t17092_))
                       (_struct-type1709517108_ _struct-type17094_)
                       (_E1709917112_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1709517108_)))
                       (_else1709817116_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx17077_
                           _struct-t17092_
                           _struct-type17094_)))
                       (_try-match1709717124_
                        (lambda ()
                          (let ((_K1710017121_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t17092_)
                                     (gxc#xform-call% _stx17077_)))))
                            (if (##eq? _struct-type1709517108_ '#f)
                                (_K1710017121_)
                                (_else1709817116_)))))
                       (_K1710117146_
                        (lambda (_ctor17127_
                                 _xfields17128_
                                 _fields17129_
                                 _type-id17130_)
                          (let* ((_args17132_ (map gxc#compile-e _args17078_))
                                 (_$e17134_
                                  (if _ctor17127_
                                      (if _xfields17128_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type17094_
                                           _ctor17127_)
                                          '#f)
                                      '#f)))
                            (if _$e17134_
                                ((lambda (_kons17137_)
                                   (let ((_$obj17139_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj17139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t17092_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields17129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields17128_)
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
                                    (cons (cons '%#ref (cons _kons17137_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj17139_ '()))
                                                _args17132_)))
                              _stx17077_))
                            (cons (cons '%#ref (cons _$obj17139_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx17077_)))
                                 _$e17134_)
                                (if (let ((_$e17141_ _ctor17127_))
                                      (if _$e17141_
                                          _$e17141_
                                          (not _xfields17128_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t17092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args17132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx17077_)
                                    (let ((_arity17144_
                                           (fx+ _fields17129_ _xfields17128_)))
                                      (if (fx= _arity17144_
                                               (length _args17132_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t17092_ '())) _args17132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx17077_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx17077_
                                           _struct-t17092_
                                           _arity17144_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1709517108_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1710217149_
                              (##vector-ref _struct-type1709517108_ '1))
                             (_type-id17152_ _e1710217149_)
                             (_e1710317154_
                              (##vector-ref _struct-type1709517108_ '2))
                             (_e1710417157_
                              (##vector-ref _struct-type1709517108_ '3))
                             (_fields17160_ _e1710417157_)
                             (_e1710517162_
                              (##vector-ref _struct-type1709517108_ '4))
                             (_xfields17165_ _e1710517162_)
                             (_e1710617167_
                              (##vector-ref _struct-type1709517108_ '5))
                             (_ctor17170_ _e1710617167_))
                        (_K1710117146_
                         _ctor17170_
                         _xfields17165_
                         _fields17160_
                         _type-id17152_))
                      (_try-match1709717124_))))))
        (if (##structure-instance-of?
             _self1707917085_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1708317175_ (##vector-ref _self1707917085_ '1))
                   (_struct-t17178_ _e1708317175_))
              (_K1708217172_ _struct-t17178_))
            (_E1708117089_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16787_ _stx16788_ _args16789_)
      (let* ((_self1679016798_ _self16787_)
             (_E1679216802_
              (lambda () (error '"No clause matching" _self1679016798_)))
             (_K1679316936_
              (lambda (_unchecked?16805_ _off16806_ _struct-t16807_)
                (let* ((_struct-type16809_
                        (gxc#optimizer-resolve-type _struct-t16807_))
                       (_struct-type1681016824_ _struct-type16809_)
                       (_E1681416828_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1681016824_)))
                       (_else1681316832_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16788_
                           _struct-t16807_
                           _struct-type16809_)))
                       (_try-match1681216840_
                        (lambda ()
                          (let ((_K1681516837_
                                 (lambda () (gxc#xform-call% _stx16788_))))
                            (if (##eq? _struct-type1681016824_ '#f)
                                (_K1681516837_)
                                (_else1681316832_)))))
                       (_K1681616907_
                        (lambda (_plist16843_
                                 _xfields16844_
                                 _fields16845_
                                 _struct-type-id16846_)
                          (if _xfields16844_
                              (let* ((_g1684916859_
                                      (lambda (_g1685016856_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1685016856_)))
                                     (_g1684816866_
                                      (lambda (_g1685016862_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16788_)))))
                                     (_g1684716904_
                                      (lambda (_g1685016869_)
                                        (if (gx#stx-pair? _g1685016869_)
                                            (let ((_e1685216871_
                                                   (gx#stx-e _g1685016869_)))
                                              (let ((_hd1685316874_
                                                     (##car _e1685216871_))
                                                    (_tl1685416876_
                                                     (##cdr _e1685216871_)))
                                                (if (gx#stx-null?
                                                     _tl1685416876_)
                                                    ((lambda (_L16879_)
                                                       (let ((_expr16900_
                                                              (gxc#compile-e
                                                               _L16879_))
                                                             (_off16901_
                                                              (fx+ _off16806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16844_
                           '1))
                     (_op16902_
                      (if _unchecked?16805_
                          '%#struct-unchecked-ref
                          (if (if _plist16843_
                                  (assgetq 'final: _plist16843_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16902_
                        (cons (cons '%#ref (cons _struct-t16807_ '()))
                              (cons (cons '%#quote (cons _off16901_ '()))
                                    (cons _expr16900_ '()))))
                  _stx16788_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1685316874_)
                                                    (_g1684816866_
                                                     _g1685016869_))))
                                            (_g1684816866_ _g1685016869_)))))
                                (_g1684716904_ _args16789_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16846_)
                                (gxc#xform-call% _stx16788_))))))
                  (if (##structure-instance-of?
                       _struct-type1681016824_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1681716910_
                              (##vector-ref _struct-type1681016824_ '1))
                             (_struct-type-id16913_ _e1681716910_)
                             (_e1681816915_
                              (##vector-ref _struct-type1681016824_ '2))
                             (_e1681916918_
                              (##vector-ref _struct-type1681016824_ '3))
                             (_fields16921_ _e1681916918_)
                             (_e1682016923_
                              (##vector-ref _struct-type1681016824_ '4))
                             (_xfields16926_ _e1682016923_)
                             (_e1682116928_
                              (##vector-ref _struct-type1681016824_ '5))
                             (_e1682216931_
                              (##vector-ref _struct-type1681016824_ '6))
                             (_plist16934_ _e1682216931_))
                        (_K1681616907_
                         _plist16934_
                         _xfields16926_
                         _fields16921_
                         _struct-type-id16913_))
                      (_try-match1681216840_))))))
        (if (##structure-instance-of?
             _self1679016798_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1679416939_ (##vector-ref _self1679016798_ '1))
                   (_struct-t16942_ _e1679416939_)
                   (_e1679516944_ (##vector-ref _self1679016798_ '2))
                   (_off16947_ _e1679516944_)
                   (_e1679616949_ (##vector-ref _self1679016798_ '3))
                   (_unchecked?16952_ _e1679616949_))
              (_K1679316936_ _unchecked?16952_ _off16947_ _struct-t16942_))
            (_E1679216802_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self16481_ _stx16482_ _args16483_)
      (let* ((_self1648416492_ _self16481_)
             (_E1648616496_
              (lambda () (error '"No clause matching" _self1648416492_)))
             (_K1648716647_
              (lambda (_unchecked?16499_ _off16500_ _struct-t16501_)
                (let* ((_struct-type16503_
                        (gxc#optimizer-resolve-type _struct-t16501_))
                       (_struct-type1650416518_ _struct-type16503_)
                       (_E1650816522_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1650416518_)))
                       (_else1650716526_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16482_
                           _struct-t16501_
                           _struct-type16503_)))
                       (_try-match1650616534_
                        (lambda ()
                          (let ((_K1650916531_
                                 (lambda () (gxc#xform-call% _stx16482_))))
                            (if (##eq? _struct-type1650416518_ '#f)
                                (_K1650916531_)
                                (_else1650716526_)))))
                       (_K1651016618_
                        (lambda (_plist16537_
                                 _xfields16538_
                                 _fields16539_
                                 _struct-type-id16540_)
                          (if _xfields16538_
                              (let* ((_g1654316557_
                                      (lambda (_g1654416554_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1654416554_)))
                                     (_g1654216564_
                                      (lambda (_g1654416560_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx16482_)))))
                                     (_g1654116615_
                                      (lambda (_g1654416567_)
                                        (if (gx#stx-pair? _g1654416567_)
                                            (let ((_e1654716569_
                                                   (gx#stx-e _g1654416567_)))
                                              (let ((_hd1654816572_
                                                     (##car _e1654716569_))
                                                    (_tl1654916574_
                                                     (##cdr _e1654716569_)))
                                                (if (gx#stx-pair?
                                                     _tl1654916574_)
                                                    (let ((_e1655016577_
                                                           (gx#stx-e
                                                            _tl1654916574_)))
                                                      (let ((_hd1655116580_
                                                             (##car _e1655016577_))
                                                            (_tl1655216582_
                                                             (##cdr _e1655016577_)))
                                                        (if (gx#stx-null?
                                                             _tl1655216582_)
                                                            ((lambda (_L16585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16586_)
                       (let ((_expr16610_ (gxc#compile-e _L16586_))
                             (_val16611_ (gxc#compile-e _L16585_))
                             (_off16612_ (fx+ _off16500_ _xfields16538_ '1))
                             (_op16613_
                              (if _unchecked?16499_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16537_
                                          (assgetq 'final: _plist16537_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16613_
                                (cons (cons '%#ref (cons _struct-t16501_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16612_ '()))
                                            (cons _expr16610_
                                                  (cons _val16611_ '())))))
                          _stx16482_)))
                     _hd1655116580_
                     _hd1654816572_)
                    (_g1654216564_ _g1654416567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1654216564_
                                                     _g1654416567_))))
                                            (_g1654216564_ _g1654416567_)))))
                                (_g1654116615_ _args16483_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16540_)
                                (gxc#xform-call% _stx16482_))))))
                  (if (##structure-instance-of?
                       _struct-type1650416518_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1651116621_
                              (##vector-ref _struct-type1650416518_ '1))
                             (_struct-type-id16624_ _e1651116621_)
                             (_e1651216626_
                              (##vector-ref _struct-type1650416518_ '2))
                             (_e1651316629_
                              (##vector-ref _struct-type1650416518_ '3))
                             (_fields16632_ _e1651316629_)
                             (_e1651416634_
                              (##vector-ref _struct-type1650416518_ '4))
                             (_xfields16637_ _e1651416634_)
                             (_e1651516639_
                              (##vector-ref _struct-type1650416518_ '5))
                             (_e1651616642_
                              (##vector-ref _struct-type1650416518_ '6))
                             (_plist16645_ _e1651616642_))
                        (_K1651016618_
                         _plist16645_
                         _xfields16637_
                         _fields16632_
                         _struct-type-id16624_))
                      (_try-match1650616534_))))))
        (if (##structure-instance-of?
             _self1648416492_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1648816650_ (##vector-ref _self1648416492_ '1))
                   (_struct-t16653_ _e1648816650_)
                   (_e1648916655_ (##vector-ref _self1648416492_ '2))
                   (_off16658_ _e1648916655_)
                   (_e1649016660_ (##vector-ref _self1648416492_ '3))
                   (_unchecked?16663_ _e1649016660_))
              (_K1648716647_ _unchecked?16663_ _off16658_ _struct-t16653_))
            (_E1648616496_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self16315_ _stx16316_ _args16317_)
      (let* ((_self1631816327_ _self16315_)
             (_E1632016331_
              (lambda () (error '"No clause matching" _self1631816327_)))
             (_K1632116338_
              (lambda (_inline16334_ _dispatch16335_ _arity16336_)
                (begin
                  (if (gxc#!lambda-arity-match? _self16315_ _args16317_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx16316_
                       _arity16336_))
                  (if _inline16334_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline16334_ _stx16316_)
                          _stx16316_)))
                      (if _dispatch16335_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch16335_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch16335_ '()))
                                          _args16317_))
                              _stx16316_)))
                          (gxc#xform-call% _stx16316_)))))))
        (if (##structure-instance-of?
             _self1631816327_
             (##type-id gxc#!lambda::t))
            (let* ((_e1632216341_ (##vector-ref _self1631816327_ '1))
                   (_e1632316344_ (##vector-ref _self1631816327_ '2))
                   (_arity16347_ _e1632316344_)
                   (_e1632416349_ (##vector-ref _self1631816327_ '3))
                   (_dispatch16352_ _e1632416349_)
                   (_e1632516354_ (##vector-ref _self1631816327_ '4))
                   (_inline16357_ _e1632516354_))
              (_K1632116338_ _inline16357_ _dispatch16352_ _arity16347_))
            (_E1632016331_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self16154_ _stx16155_ _args16156_)
      (let* ((_self1615716164_ _self16154_)
             (_E1615916168_
              (lambda () (error '"No clause matching" _self1615716164_)))
             (_K1616016182_
              (lambda (_clauses16171_)
                (let ((_$e16177_
                       (find (lambda (_g1617216174_)
                               (gxc#!lambda-arity-match?
                                _g1617216174_
                                _args16156_))
                             _clauses16171_)))
                  (if _$e16177_
                      ((lambda (_clause16180_)
                         (call-method
                          _clause16180_
                          'optimize-call
                          _stx16155_
                          _args16156_))
                       _$e16177_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx16155_
                       (map gxc#!lambda-arity _clauses16171_)))))))
        (if (##structure-instance-of?
             _self1615716164_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1616116185_ (##vector-ref _self1615716164_ '1))
                   (_e1616216188_ (##vector-ref _self1615716164_ '2))
                   (_clauses16191_ _e1616216188_))
              (_K1616016182_ _clauses16191_))
            (_E1615916168_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15968_ _args15969_)
      (let* ((_self1597015977_ _self15968_)
             (_E1597215981_
              (lambda () (error '"No clause matching" _self1597015977_)))
             (_K1597316021_
              (lambda (_arity15984_)
                (let* ((_arity1598515994_ _arity15984_)
                       (_E1598815998_
                        (lambda ()
                          (error '"No clause matching" _arity1598515994_)))
                       (_try-match1598716014_
                        (lambda ()
                          (let ((_K1598916004_
                                 (lambda (_arity16002_)
                                   (fx>= (length _args15969_) _arity16002_))))
                            (if (##pair? _arity1598515994_)
                                (let ((_hd1599016007_
                                       (##car _arity1598515994_))
                                      (_tl1599116009_
                                       (##cdr _arity1598515994_)))
                                  (let ((_arity16012_ _hd1599016007_))
                                    (if (##null? _tl1599116009_)
                                        (_K1598916004_ _arity16012_)
                                        (_E1598815998_))))
                                (_E1598815998_)))))
                       (_K1599216018_
                        (lambda () (fx= (length _args15969_) _arity15984_))))
                  (if (fixnum? _arity1598515994_)
                      (_K1599216018_)
                      (_try-match1598716014_))))))
        (if (##structure-instance-of?
             _self1597015977_
             (##type-id gxc#!lambda::t))
            (let* ((_e1597416024_ (##vector-ref _self1597015977_ '1))
                   (_e1597516027_ (##vector-ref _self1597015977_ '2))
                   (_arity16030_ _e1597516027_))
              (_K1597316021_ _arity16030_))
            (_E1597215981_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15853_ _stx15854_ _args15855_)
      (let* ((_self1585615864_ _self15853_)
             (_E1585815868_
              (lambda () (error '"No clause matching" _self1585615864_)))
             (_K1585915952_
              (lambda (_dispatch15871_ _table15872_)
                (let* ((_g1587315882_
                        (gxc#optimizer-lookup-type _dispatch15871_))
                       (_E1587615886_
                        (lambda ()
                          (error '"No clause matching" _g1587315882_)))
                       (_else1587515890_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15871_)
                            (gxc#xform-call% _stx15854_))))
                       (_K1587715936_
                        (lambda (_main15893_ _keys15894_)
                          (let ((_g27945_
                                 (gxc#!kw-lambda-split-args
                                  _stx15854_
                                  _args15855_)))
                            (begin
                              (let ((_g27946_
                                     (if (##values? _g27945_)
                                         (##vector-length _g27945_)
                                         1)))
                                (if (not (##fx= _g27946_ 2))
                                    (error "Context expects 2 values"
                                           _g27946_)))
                              (let ((_pargs15896_ (##vector-ref _g27945_ 0))
                                    (_kwargs15897_ (##vector-ref _g27945_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15893_)
                                  (if _table15872_
                                      (let ((_xargs15904_
                                             (map (lambda (_key15899_)
                                                    (let ((_$e15901_
                                                           (assgetq _key15899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15897_)))
              (if _$e15901_ (values _$e15901_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15894_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15906_)
                                             (if (memq (car _kw15906_)
                                                       _keys15894_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx15854_
                                                  _keys15894_
                                                  _kw15906_)))
                                           _kwargs15897_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15896_ _xargs15904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15854_))))
                                      (let* ((_kwt15908_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15911_
                                              (map (lambda (_g27947_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15897_))
                                             (_kwbind15916_
                                              (map (lambda (_kw15913_
                                                            _kwvar15914_)
                                                     (cons (cons _kwvar15914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15913_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15897_
                                                   _kwvars15911_))
                                             (_kwset15921_
                                              (map (lambda (_kw15918_
                                                            _kwvar15919_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15908_ '()))
                               (cons (cons '%#quote (cons (car _kw15918_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15919_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15897_
                                                   _kwvars15911_))
                                             (_xkwargs15926_
                                              (map (lambda (_kw15923_
                                                            _kwvar15924_)
                                                     (cons (car _kw15923_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15924_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15897_
                                                   _kwvars15911_))
                                             (_xargs15933_
                                              (map (lambda (_key15928_)
                                                     (let ((_$e15930_
                                                            (assgetq _key15928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15926_)))
               (if _$e15930_ (values _$e15930_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15894_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15916_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15908_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15897_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15854_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15893_ '()))
                               (cons (cons '%#ref (cons _kwt15908_ '()))
                                     (foldr1 cons _pargs15896_ _xargs15933_))))
                   _stx15854_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15921_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15854_)))))))))))
                  (if (##structure-instance-of?
                       _g1587315882_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1587815939_ (##vector-ref _g1587315882_ '1))
                             (_e1587915942_ (##vector-ref _g1587315882_ '2))
                             (_keys15945_ _e1587915942_)
                             (_e1588015947_ (##vector-ref _g1587315882_ '3))
                             (_main15950_ _e1588015947_))
                        (_K1587715936_ _main15950_ _keys15945_))
                      (_else1587515890_))))))
        (if (##structure-instance-of?
             _self1585615864_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1586015955_ (##vector-ref _self1585615864_ '1))
                   (_e1586115958_ (##vector-ref _self1585615864_ '2))
                   (_table15961_ _e1586115958_)
                   (_e1586215963_ (##vector-ref _self1585615864_ '3))
                   (_dispatch15966_ _e1586215963_))
              (_K1585915952_ _dispatch15966_ _table15961_))
            (_E1585815868_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx15476_ _args15477_)
      (let _lp15479_ ((_rest15481_ _args15477_)
                      (_pargs15482_ '())
                      (_kwargs15483_ '()))
        (let* ((_g1548915539_
                (lambda (_g1549015536_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1549015536_)))
               (_g1548815546_
                (lambda (_g1549015542_)
                  (if (gx#stx-null? _g1549015542_)
                      ((lambda ()
                         (values (reverse _pargs15482_)
                                 (reverse _kwargs15483_))))
                      (_g1548915539_ _g1549015542_))))
               (_g1548715574_
                (lambda (_g1549015549_)
                  (if (gx#stx-pair? _g1549015549_)
                      (let ((_e1553215551_ (gx#stx-e _g1549015549_)))
                        (let ((_hd1553315554_ (##car _e1553215551_))
                              (_tl1553415556_ (##cdr _e1553215551_)))
                          ((lambda (_L15559_ _L15560_)
                             (_lp15479_
                              _L15559_
                              (cons _L15560_ _pargs15482_)
                              _kwargs15483_))
                           _tl1553415556_
                           _hd1553315554_)))
                      (_g1548815546_ _g1549015549_))))
               (_g1548615632_
                (lambda (_g1549015577_)
                  (if (gx#stx-pair? _g1549015577_)
                      (let ((_e1551815579_ (gx#stx-e _g1549015577_)))
                        (let ((_hd1551915582_ (##car _e1551815579_))
                              (_tl1552015584_ (##cdr _e1551815579_)))
                          (if (gx#stx-pair? _hd1551915582_)
                              (let ((_e1552115587_ (gx#stx-e _hd1551915582_)))
                                (let ((_hd1552215590_ (##car _e1552115587_))
                                      (_tl1552315592_ (##cdr _e1552115587_)))
                                  (if (gx#identifier? _hd1552215590_)
                                      (if (gx#stx-eq? '%#quote _hd1552215590_)
                                          (if (gx#stx-pair? _tl1552315592_)
                                              (let ((_e1552415595_
                                                     (gx#stx-e
                                                      _tl1552315592_)))
                                                (let ((_hd1552515598_
                                                       (##car _e1552415595_))
                                                      (_tl1552615600_
                                                       (##cdr _e1552415595_)))
                                                  (if (gx#stx-null?
                                                       _tl1552615600_)
                                                      (if (gx#stx-pair?
                                                           _tl1552015584_)
                                                          (let ((_e1552715603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1552015584_)))
                    (let ((_hd1552815606_ (##car _e1552715603_))
                          (_tl1552915608_ (##cdr _e1552715603_)))
                      ((lambda (_L15611_ _L15612_ _L15613_)
                         (if (gx#stx-keyword? _L15613_)
                             (let ((_kw15630_ (gx#stx-e _L15613_)))
                               (if (assq _kw15630_ _kwargs15483_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx15476_
                                    _kw15630_)
                                   (_lp15479_
                                    _L15611_
                                    _pargs15482_
                                    (cons (cons _kw15630_ _L15612_)
                                          _kwargs15483_))))
                             (_g1548715574_ _g1549015577_)))
                       _tl1552915608_
                       _hd1552815606_
                       _hd1552515598_)))
                  (_g1548715574_ _g1549015577_))
              (_g1548715574_ _g1549015577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1548715574_ _g1549015577_))
                                          (_g1548715574_ _g1549015577_))
                                      (_g1548715574_ _g1549015577_))))
                              (_g1548715574_ _g1549015577_))))
                      (_g1548715574_ _g1549015577_))))
               (_g1548515674_
                (lambda (_g1549015635_)
                  (if (gx#stx-pair? _g1549015635_)
                      (let ((_e1550615637_ (gx#stx-e _g1549015635_)))
                        (let ((_hd1550715640_ (##car _e1550615637_))
                              (_tl1550815642_ (##cdr _e1550615637_)))
                          (if (gx#stx-pair? _hd1550715640_)
                              (let ((_e1550915645_ (gx#stx-e _hd1550715640_)))
                                (let ((_hd1551015648_ (##car _e1550915645_))
                                      (_tl1551115650_ (##cdr _e1550915645_)))
                                  (if (gx#identifier? _hd1551015648_)
                                      (if (gx#stx-eq? '%#quote _hd1551015648_)
                                          (if (gx#stx-pair? _tl1551115650_)
                                              (let ((_e1551215653_
                                                     (gx#stx-e
                                                      _tl1551115650_)))
                                                (let ((_hd1551315656_
                                                       (##car _e1551215653_))
                                                      (_tl1551415658_
                                                       (##cdr _e1551215653_)))
                                                  (if (gx#stx-datum?
                                                       _hd1551315656_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1551315656_)
                          '#!rest)
                  (if (gx#stx-null? _tl1551415658_)
                      ((lambda (_L15661_)
                         (values (foldl1 cons _L15661_ _pargs15482_)
                                 (reverse _kwargs15483_)))
                       _tl1550815642_)
                      (_g1548615632_ _g1549015635_))
                  (_g1548615632_ _g1549015635_))
              (_g1548615632_ _g1549015635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1548615632_ _g1549015635_))
                                          (_g1548615632_ _g1549015635_))
                                      (_g1548615632_ _g1549015635_))))
                              (_g1548615632_ _g1549015635_))))
                      (_g1548615632_ _g1549015635_))))
               (_g1548415728_
                (lambda (_g1549015677_)
                  (if (gx#stx-pair? _g1549015677_)
                      (let ((_e1549315679_ (gx#stx-e _g1549015677_)))
                        (let ((_hd1549415682_ (##car _e1549315679_))
                              (_tl1549515684_ (##cdr _e1549315679_)))
                          (if (gx#stx-pair? _hd1549415682_)
                              (let ((_e1549615687_ (gx#stx-e _hd1549415682_)))
                                (let ((_hd1549715690_ (##car _e1549615687_))
                                      (_tl1549815692_ (##cdr _e1549615687_)))
                                  (if (gx#identifier? _hd1549715690_)
                                      (if (gx#stx-eq? '%#quote _hd1549715690_)
                                          (if (gx#stx-pair? _tl1549815692_)
                                              (let ((_e1549915695_
                                                     (gx#stx-e
                                                      _tl1549815692_)))
                                                (let ((_hd1550015698_
                                                       (##car _e1549915695_))
                                                      (_tl1550115700_
                                                       (##cdr _e1549915695_)))
                                                  (if (gx#stx-datum?
                                                       _hd1550015698_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1550015698_)
                          '#!key)
                  (if (gx#stx-null? _tl1550115700_)
                      (if (gx#stx-pair? _tl1549515684_)
                          (let ((_e1550215703_ (gx#stx-e _tl1549515684_)))
                            (let ((_hd1550315706_ (##car _e1550215703_))
                                  (_tl1550415708_ (##cdr _e1550215703_)))
                              ((lambda (_L15711_ _L15712_)
                                 (_lp15479_
                                  _L15711_
                                  (cons _L15712_ _pargs15482_)
                                  _kwargs15483_))
                               _tl1550415708_
                               _hd1550315706_)))
                          (_g1548515674_ _g1549015677_))
                      (_g1548515674_ _g1549015677_))
                  (_g1548515674_ _g1549015677_))
              (_g1548515674_ _g1549015677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1548515674_ _g1549015677_))
                                          (_g1548515674_ _g1549015677_))
                                      (_g1548515674_ _g1549015677_))))
                              (_g1548515674_ _g1549015677_))))
                      (_g1548515674_ _g1549015677_)))))
          (_g1548415728_ _rest15481_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self15472_ _stx15473_ _args15474_) (gxc#xform-call% _stx15473_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#generate-ssxi-module%
    (lambda (_stx15290_)
      (let* ((_g1529215306_
              (lambda (_g1529315303_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1529315303_)))
             (_g1529115347_
              (lambda (_g1529315309_)
                (if (gx#stx-pair? _g1529315309_)
                    (let ((_e1529615311_ (gx#stx-e _g1529315309_)))
                      (let ((_hd1529715314_ (##car _e1529615311_))
                            (_tl1529815316_ (##cdr _e1529615311_)))
                        (if (gx#stx-pair? _tl1529815316_)
                            (let ((_e1529915319_ (gx#stx-e _tl1529815316_)))
                              (let ((_hd1530015322_ (##car _e1529915319_))
                                    (_tl1530115324_ (##cdr _e1529915319_)))
                                ((lambda (_L15327_ _L15328_)
                                   (let* ((_ctx15341_
                                           (gx#syntax-local-e__0 _L15328_))
                                          (_code15343_
                                           (##structure-ref
                                            _ctx15341_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code15343_))
                                      gx#current-expander-context
                                      _ctx15341_)))
                                 _tl1530115324_
                                 _hd1530015322_)))
                            (_g1529215306_ _g1529315309_))))
                    (_g1529215306_ _g1529315309_)))))
        (_g1529115347_ _stx15290_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx15100_)
      (letrec ((_generate-e15102_
                (lambda (_id15279_)
                  (let* ((_sym15281_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id15279_)
                              '#f))
                         (_$e15283_
                          (if _sym15281_
                              (gxc#optimizer-lookup-type _sym15281_)
                              '#f)))
                    (if _$e15283_
                        ((lambda (_type15286_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym15281_)
                             (let ((_typedecl15288_
                                    (call-method _type15286_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym15281_
                                           (cons _typedecl15288_ '()))))))
                         _$e15283_)
                        '(begin))))))
        (let* ((_g1510515143_
                (lambda (_g1510615140_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1510615140_)))
               (_g1510415224_
                (lambda (_g1510615146_)
                  (if (gx#stx-pair? _g1510615146_)
                      (let ((_e1512115148_ (gx#stx-e _g1510615146_)))
                        (let ((_hd1512215151_ (##car _e1512115148_))
                              (_tl1512315153_ (##cdr _e1512115148_)))
                          (if (gx#stx-pair? _tl1512315153_)
                              (let ((_e1512415156_ (gx#stx-e _tl1512315153_)))
                                (let ((_hd1512515159_ (##car _e1512415156_))
                                      (_tl1512615161_ (##cdr _e1512415156_)))
                                  (if (gx#stx-pair/null? _hd1512515159_)
                                      (if (fx>= (gx#stx-length _hd1512515159_)
                                                '0)
                                          (let ((_g27948_
                                                 (gx#syntax-split-splice
                                                  _hd1512515159_
                                                  '0)))
                                            (begin
                                              (let ((_g27949_
                                                     (if (##values? _g27948_)
                                                         (##vector-length
                                                          _g27948_)
                                                         1)))
                                                (if (not (##fx= _g27949_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27949_)))
                                              (let ((_target1512715164_
                                                     (##vector-ref _g27948_ 0))
                                                    (_tl1512915166_
                                                     (##vector-ref
                                                      _g27948_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1512915166_)
                                                    (letrec ((_loop1513015169_
                                                              (lambda (_hd1512815172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1513415174_)
                        (if (gx#stx-pair? _hd1512815172_)
                            (let ((_e1513115177_ (gx#stx-e _hd1512815172_)))
                              (let ((_lp-hd1513215180_ (##car _e1513115177_))
                                    (_lp-tl1513315182_ (##cdr _e1513115177_)))
                                (_loop1513015169_
                                 _lp-tl1513315182_
                                 (cons _lp-hd1513215180_ _id1513415174_))))
                            (let ((_id1513515185_ (reverse _id1513415174_)))
                              (if (gx#stx-pair? _tl1512615161_)
                                  (let ((_e1513615188_
                                         (gx#stx-e _tl1512615161_)))
                                    (let ((_hd1513715191_
                                           (##car _e1513615188_))
                                          (_tl1513815193_
                                           (##cdr _e1513615188_)))
                                      (if (gx#stx-null? _tl1513815193_)
                                          ((lambda (_L15196_)
                                             (let ((_types15222_
                                                    (map _generate-e15102_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1521415217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1521515219_)
                             (cons _g1521415217_ _g1521515219_))
                           '()
                           _L15196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types15222_)))
                                           _id1513515185_)
                                          (_g1510515143_ _g1510615146_))))
                                  (_g1510515143_ _g1510615146_)))))))
              (_loop1513015169_ _target1512715164_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1510515143_
                                                     _g1510615146_)))))
                                          (_g1510515143_ _g1510615146_))
                                      (_g1510515143_ _g1510615146_))))
                              (_g1510515143_ _g1510615146_))))
                      (_g1510515143_ _g1510615146_))))
               (_g1510315276_
                (lambda (_g1510615227_)
                  (if (gx#stx-pair? _g1510615227_)
                      (let ((_e1510815229_ (gx#stx-e _g1510615227_)))
                        (let ((_hd1510915232_ (##car _e1510815229_))
                              (_tl1511015234_ (##cdr _e1510815229_)))
                          (if (gx#stx-pair? _tl1511015234_)
                              (let ((_e1511115237_ (gx#stx-e _tl1511015234_)))
                                (let ((_hd1511215240_ (##car _e1511115237_))
                                      (_tl1511315242_ (##cdr _e1511115237_)))
                                  (if (gx#stx-pair? _hd1511215240_)
                                      (let ((_e1511415245_
                                             (gx#stx-e _hd1511215240_)))
                                        (let ((_hd1511515248_
                                               (##car _e1511415245_))
                                              (_tl1511615250_
                                               (##cdr _e1511415245_)))
                                          (if (gx#stx-null? _tl1511615250_)
                                              (if (gx#stx-pair? _tl1511315242_)
                                                  (let ((_e1511715253_
                                                         (gx#stx-e
                                                          _tl1511315242_)))
                                                    (let ((_hd1511815256_
                                                           (##car _e1511715253_))
                                                          (_tl1511915258_
                                                           (##cdr _e1511715253_)))
                                                      (if (gx#stx-null?
                                                           _tl1511915258_)
                                                          ((lambda (_L15261_)
                                                             (_generate-e15102_
                                                              _L15261_))
                                                           _hd1511515248_)
                                                          (_g1510415224_
                                                           _g1510615227_))))
                                                  (_g1510415224_
                                                   _g1510615227_))
                                              (_g1510415224_ _g1510615227_))))
                                      (_g1510415224_ _g1510615227_))))
                              (_g1510415224_ _g1510615227_))))
                      (_g1510415224_ _g1510615227_)))))
          (_g1510315276_ _stx15100_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14654_)
      (let* ((_g1465814760_
              (lambda (_g1465914757_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1465914757_)))
             (_g1465714767_ (lambda (_g1465914763_) ((lambda () '(begin)))))
             (_g1465614917_
              (lambda (_g1465914770_)
                (if (gx#stx-pair? _g1465914770_)
                    (let ((_e1471714772_ (gx#stx-e _g1465914770_)))
                      (let ((_hd1471814775_ (##car _e1471714772_))
                            (_tl1471914777_ (##cdr _e1471714772_)))
                        (if (gx#stx-pair? _tl1471914777_)
                            (let ((_e1472014780_ (gx#stx-e _tl1471914777_)))
                              (let ((_hd1472114783_ (##car _e1472014780_))
                                    (_tl1472214785_ (##cdr _e1472014780_)))
                                (if (gx#stx-pair? _hd1472114783_)
                                    (let ((_e1472314788_
                                           (gx#stx-e _hd1472114783_)))
                                      (let ((_hd1472414791_
                                             (##car _e1472314788_))
                                            (_tl1472514793_
                                             (##cdr _e1472314788_)))
                                        (if (gx#identifier? _hd1472414791_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1472414791_)
                                                (if (gx#stx-pair?
                                                     _tl1472514793_)
                                                    (let ((_e1472614796_
                                                           (gx#stx-e
                                                            _tl1472514793_)))
                                                      (let ((_hd1472714799_
                                                             (##car _e1472614796_))
                                                            (_tl1472814801_
                                                             (##cdr _e1472614796_)))
                                                        (if (gx#stx-null?
                                                             _tl1472814801_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1472214785_)
                        (let ((_e1472914804_ (gx#stx-e _tl1472214785_)))
                          (let ((_hd1473014807_ (##car _e1472914804_))
                                (_tl1473114809_ (##cdr _e1472914804_)))
                            (if (gx#stx-pair? _hd1473014807_)
                                (let ((_e1473214812_
                                       (gx#stx-e _hd1473014807_)))
                                  (let ((_hd1473314815_ (##car _e1473214812_))
                                        (_tl1473414817_ (##cdr _e1473214812_)))
                                    (if (gx#identifier? _hd1473314815_)
                                        (if (gx#stx-eq? '%#ref _hd1473314815_)
                                            (if (gx#stx-pair? _tl1473414817_)
                                                (let ((_e1473514820_
                                                       (gx#stx-e
                                                        _tl1473414817_)))
                                                  (let ((_hd1473614823_
                                                         (##car _e1473514820_))
                                                        (_tl1473714825_
                                                         (##cdr _e1473514820_)))
                                                    (if (gx#stx-null?
                                                         _tl1473714825_)
                                                        (if (gx#stx-pair?
                                                             _tl1473114809_)
                                                            (let ((_e1473814828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1473114809_)))
                      (let ((_hd1473914831_ (##car _e1473814828_))
                            (_tl1474014833_ (##cdr _e1473814828_)))
                        (if (gx#stx-pair? _hd1473914831_)
                            (let ((_e1474114836_ (gx#stx-e _hd1473914831_)))
                              (let ((_hd1474214839_ (##car _e1474114836_))
                                    (_tl1474314841_ (##cdr _e1474114836_)))
                                (if (gx#identifier? _hd1474214839_)
                                    (if (gx#stx-eq? '%#quote _hd1474214839_)
                                        (if (gx#stx-pair? _tl1474314841_)
                                            (let ((_e1474414844_
                                                   (gx#stx-e _tl1474314841_)))
                                              (let ((_hd1474514847_
                                                     (##car _e1474414844_))
                                                    (_tl1474614849_
                                                     (##cdr _e1474414844_)))
                                                (if (gx#stx-null?
                                                     _tl1474614849_)
                                                    (if (gx#stx-pair?
                                                         _tl1474014833_)
                                                        (let ((_e1474714852_
                                                               (gx#stx-e
                                                                _tl1474014833_)))
                                                          (let ((_hd1474814855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1474714852_))
                        (_tl1474914857_ (##cdr _e1474714852_)))
                    (if (gx#stx-pair? _hd1474814855_)
                        (let ((_e1475014860_ (gx#stx-e _hd1474814855_)))
                          (let ((_hd1475114863_ (##car _e1475014860_))
                                (_tl1475214865_ (##cdr _e1475014860_)))
                            (if (gx#identifier? _hd1475114863_)
                                (if (gx#stx-eq? '%#ref _hd1475114863_)
                                    (if (gx#stx-pair? _tl1475214865_)
                                        (let ((_e1475314868_
                                               (gx#stx-e _tl1475214865_)))
                                          (let ((_hd1475414871_
                                                 (##car _e1475314868_))
                                                (_tl1475514873_
                                                 (##cdr _e1475314868_)))
                                            (if (gx#stx-null? _tl1475514873_)
                                                (if (gx#stx-null?
                                                     _tl1474914857_)
                                                    ((lambda (_L14876_
                                                              _L14877_
                                                              _L14878_
                                                              _L14879_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#identifier-symbol _L14878_)
                               (cons (gx#stx-e _L14877_)
                                     (cons (gxc#identifier-symbol _L14876_)
                                           (cons '#f '())))))
                   (_g1465714767_ _g1465914770_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1475414871_
                                                     _hd1474514847_
                                                     _hd1473614823_
                                                     _hd1472714799_)
                                                    (_g1465714767_
                                                     _g1465914770_))
                                                (_g1465714767_
                                                 _g1465914770_))))
                                        (_g1465714767_ _g1465914770_))
                                    (_g1465714767_ _g1465914770_))
                                (_g1465714767_ _g1465914770_))))
                        (_g1465714767_ _g1465914770_))))
                (_g1465714767_ _g1465914770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465714767_
                                                     _g1465914770_))))
                                            (_g1465714767_ _g1465914770_))
                                        (_g1465714767_ _g1465914770_))
                                    (_g1465714767_ _g1465914770_))))
                            (_g1465714767_ _g1465914770_))))
                    (_g1465714767_ _g1465914770_))
                (_g1465714767_ _g1465914770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1465714767_ _g1465914770_))
                                            (_g1465714767_ _g1465914770_))
                                        (_g1465714767_ _g1465914770_))))
                                (_g1465714767_ _g1465914770_))))
                        (_g1465714767_ _g1465914770_))
                    (_g1465714767_ _g1465914770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465714767_
                                                     _g1465914770_))
                                                (_g1465714767_ _g1465914770_))
                                            (_g1465714767_ _g1465914770_))))
                                    (_g1465714767_ _g1465914770_))))
                            (_g1465714767_ _g1465914770_))))
                    (_g1465714767_ _g1465914770_))))
             (_g1465515097_
              (lambda (_g1465914920_)
                (if (gx#stx-pair? _g1465914920_)
                    (let ((_e1466514922_ (gx#stx-e _g1465914920_)))
                      (let ((_hd1466614925_ (##car _e1466514922_))
                            (_tl1466714927_ (##cdr _e1466514922_)))
                        (if (gx#stx-pair? _tl1466714927_)
                            (let ((_e1466814930_ (gx#stx-e _tl1466714927_)))
                              (let ((_hd1466914933_ (##car _e1466814930_))
                                    (_tl1467014935_ (##cdr _e1466814930_)))
                                (if (gx#stx-pair? _hd1466914933_)
                                    (let ((_e1467114938_
                                           (gx#stx-e _hd1466914933_)))
                                      (let ((_hd1467214941_
                                             (##car _e1467114938_))
                                            (_tl1467314943_
                                             (##cdr _e1467114938_)))
                                        (if (gx#identifier? _hd1467214941_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1467214941_)
                                                (if (gx#stx-pair?
                                                     _tl1467314943_)
                                                    (let ((_e1467414946_
                                                           (gx#stx-e
                                                            _tl1467314943_)))
                                                      (let ((_hd1467514949_
                                                             (##car _e1467414946_))
                                                            (_tl1467614951_
                                                             (##cdr _e1467414946_)))
                                                        (if (gx#stx-null?
                                                             _tl1467614951_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1467014935_)
                        (let ((_e1467714954_ (gx#stx-e _tl1467014935_)))
                          (let ((_hd1467814957_ (##car _e1467714954_))
                                (_tl1467914959_ (##cdr _e1467714954_)))
                            (if (gx#stx-pair? _hd1467814957_)
                                (let ((_e1468014962_
                                       (gx#stx-e _hd1467814957_)))
                                  (let ((_hd1468114965_ (##car _e1468014962_))
                                        (_tl1468214967_ (##cdr _e1468014962_)))
                                    (if (gx#identifier? _hd1468114965_)
                                        (if (gx#stx-eq? '%#ref _hd1468114965_)
                                            (if (gx#stx-pair? _tl1468214967_)
                                                (let ((_e1468314970_
                                                       (gx#stx-e
                                                        _tl1468214967_)))
                                                  (let ((_hd1468414973_
                                                         (##car _e1468314970_))
                                                        (_tl1468514975_
                                                         (##cdr _e1468314970_)))
                                                    (if (gx#stx-null?
                                                         _tl1468514975_)
                                                        (if (gx#stx-pair?
                                                             _tl1467914959_)
                                                            (let ((_e1468614978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1467914959_)))
                      (let ((_hd1468714981_ (##car _e1468614978_))
                            (_tl1468814983_ (##cdr _e1468614978_)))
                        (if (gx#stx-pair? _hd1468714981_)
                            (let ((_e1468914986_ (gx#stx-e _hd1468714981_)))
                              (let ((_hd1469014989_ (##car _e1468914986_))
                                    (_tl1469114991_ (##cdr _e1468914986_)))
                                (if (gx#identifier? _hd1469014989_)
                                    (if (gx#stx-eq? '%#quote _hd1469014989_)
                                        (if (gx#stx-pair? _tl1469114991_)
                                            (let ((_e1469214994_
                                                   (gx#stx-e _tl1469114991_)))
                                              (let ((_hd1469314997_
                                                     (##car _e1469214994_))
                                                    (_tl1469414999_
                                                     (##cdr _e1469214994_)))
                                                (if (gx#stx-null?
                                                     _tl1469414999_)
                                                    (if (gx#stx-pair?
                                                         _tl1468814983_)
                                                        (let ((_e1469515002_
                                                               (gx#stx-e
                                                                _tl1468814983_)))
                                                          (let ((_hd1469615005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1469515002_))
                        (_tl1469715007_ (##cdr _e1469515002_)))
                    (if (gx#stx-pair? _hd1469615005_)
                        (let ((_e1469815010_ (gx#stx-e _hd1469615005_)))
                          (let ((_hd1469915013_ (##car _e1469815010_))
                                (_tl1470015015_ (##cdr _e1469815010_)))
                            (if (gx#identifier? _hd1469915013_)
                                (if (gx#stx-eq? '%#ref _hd1469915013_)
                                    (if (gx#stx-pair? _tl1470015015_)
                                        (let ((_e1470115018_
                                               (gx#stx-e _tl1470015015_)))
                                          (let ((_hd1470215021_
                                                 (##car _e1470115018_))
                                                (_tl1470315023_
                                                 (##cdr _e1470115018_)))
                                            (if (gx#stx-null? _tl1470315023_)
                                                (if (gx#stx-pair?
                                                     _tl1469715007_)
                                                    (let ((_e1470415026_
                                                           (gx#stx-e
                                                            _tl1469715007_)))
                                                      (let ((_hd1470515029_
                                                             (##car _e1470415026_))
                                                            (_tl1470615031_
                                                             (##cdr _e1470415026_)))
                                                        (if (gx#stx-pair?
                                                             _hd1470515029_)
                                                            (let ((_e1470715034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1470515029_)))
                      (let ((_hd1470815037_ (##car _e1470715034_))
                            (_tl1470915039_ (##cdr _e1470715034_)))
                        (if (gx#identifier? _hd1470815037_)
                            (if (gx#stx-eq? '%#quote _hd1470815037_)
                                (if (gx#stx-pair? _tl1470915039_)
                                    (let ((_e1471015042_
                                           (gx#stx-e _tl1470915039_)))
                                      (let ((_hd1471115045_
                                             (##car _e1471015042_))
                                            (_tl1471215047_
                                             (##cdr _e1471015042_)))
                                        (if (gx#stx-null? _tl1471215047_)
                                            (if (gx#stx-null? _tl1470615031_)
                                                ((lambda (_L15050_
                                                          _L15051_
                                                          _L15052_
                                                          _L15053_
                                                          _L15054_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L15054_
                                                        'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15053_)
                           (cons (gx#stx-e _L15052_)
                                 (cons (gxc#identifier-symbol _L15051_)
                                       (cons (gx#stx-e _L15050_) '())))))
               (_g1465614917_ _g1465914920_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1471115045_
                                                 _hd1470215021_
                                                 _hd1469314997_
                                                 _hd1468414973_
                                                 _hd1467514949_)
                                                (_g1465614917_ _g1465914920_))
                                            (_g1465614917_ _g1465914920_))))
                                    (_g1465614917_ _g1465914920_))
                                (_g1465614917_ _g1465914920_))
                            (_g1465614917_ _g1465914920_))))
                    (_g1465614917_ _g1465914920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465614917_
                                                     _g1465914920_))
                                                (_g1465614917_
                                                 _g1465914920_))))
                                        (_g1465614917_ _g1465914920_))
                                    (_g1465614917_ _g1465914920_))
                                (_g1465614917_ _g1465914920_))))
                        (_g1465614917_ _g1465914920_))))
                (_g1465614917_ _g1465914920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465614917_
                                                     _g1465914920_))))
                                            (_g1465614917_ _g1465914920_))
                                        (_g1465614917_ _g1465914920_))
                                    (_g1465614917_ _g1465914920_))))
                            (_g1465614917_ _g1465914920_))))
                    (_g1465614917_ _g1465914920_))
                (_g1465614917_ _g1465914920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1465614917_ _g1465914920_))
                                            (_g1465614917_ _g1465914920_))
                                        (_g1465614917_ _g1465914920_))))
                                (_g1465614917_ _g1465914920_))))
                        (_g1465614917_ _g1465914920_))
                    (_g1465614917_ _g1465914920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465614917_
                                                     _g1465914920_))
                                                (_g1465614917_ _g1465914920_))
                                            (_g1465614917_ _g1465914920_))))
                                    (_g1465614917_ _g1465914920_))))
                            (_g1465614917_ _g1465914920_))))
                    (_g1465614917_ _g1465914920_)))))
        (_g1465515097_ _stx14654_))))
  (define gxc#!alias::typedecl
    (lambda (_self14630_)
      (let* ((_self1463114637_ _self14630_)
             (_E1463314641_
              (lambda () (error '"No clause matching" _self1463114637_)))
             (_K1463414646_
              (lambda (_alias-id14644_)
                (cons '@alias (cons _alias-id14644_ '())))))
        (if (##structure-instance-of?
             _self1463114637_
             (##type-id gxc#!alias::t))
            (let* ((_e1463514649_ (##vector-ref _self1463114637_ '1))
                   (_alias-id14652_ _e1463514649_))
              (_K1463414646_ _alias-id14652_))
            (_E1463314641_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self14452_)
      (let* ((_self1445314464_ _self14452_)
             (_E1445514468_
              (lambda () (error '"No clause matching" _self1445314464_)))
             (_K1445614477_
              (lambda (_plist14471_
                       _ctor14472_
                       _fields14473_
                       _super14474_
                       _type-id14475_)
                (cons '@struct-type
                      (cons _type-id14475_
                            (cons _super14474_
                                  (cons _fields14473_
                                        (cons _ctor14472_
                                              (cons _plist14471_ '())))))))))
        (if (##structure-instance-of?
             _self1445314464_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1445714480_ (##vector-ref _self1445314464_ '1))
                   (_type-id14483_ _e1445714480_)
                   (_e1445814485_ (##vector-ref _self1445314464_ '2))
                   (_super14488_ _e1445814485_)
                   (_e1445914490_ (##vector-ref _self1445314464_ '3))
                   (_fields14493_ _e1445914490_)
                   (_e1446014495_ (##vector-ref _self1445314464_ '4))
                   (_e1446114498_ (##vector-ref _self1445314464_ '5))
                   (_ctor14501_ _e1446114498_)
                   (_e1446214503_ (##vector-ref _self1445314464_ '6))
                   (_plist14506_ _e1446214503_))
              (_K1445614477_
               _plist14506_
               _ctor14501_
               _fields14493_
               _super14488_
               _type-id14483_))
            (_E1445514468_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self14306_)
      (let* ((_self1430714313_ _self14306_)
             (_E1430914317_
              (lambda () (error '"No clause matching" _self1430714313_)))
             (_K1431014322_
              (lambda (_struct-t14320_)
                (cons '@struct-pred (cons _struct-t14320_ '())))))
        (if (##structure-instance-of?
             _self1430714313_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1431114325_ (##vector-ref _self1430714313_ '1))
                   (_struct-t14328_ _e1431114325_))
              (_K1431014322_ _struct-t14328_))
            (_E1430914317_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self14160_)
      (let* ((_self1416114167_ _self14160_)
             (_E1416314171_
              (lambda () (error '"No clause matching" _self1416114167_)))
             (_K1416414176_
              (lambda (_struct-t14174_)
                (cons '@struct-cons (cons _struct-t14174_ '())))))
        (if (##structure-instance-of?
             _self1416114167_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1416514179_ (##vector-ref _self1416114167_ '1))
                   (_struct-t14182_ _e1416514179_))
              (_K1416414176_ _struct-t14182_))
            (_E1416314171_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self14000_)
      (let* ((_self1400114009_ _self14000_)
             (_E1400314013_
              (lambda () (error '"No clause matching" _self1400114009_)))
             (_K1400414020_
              (lambda (_unchecked?14016_ _off14017_ _struct-t14018_)
                (cons '@struct-getf
                      (cons _struct-t14018_
                            (cons _off14017_ (cons _unchecked?14016_ '())))))))
        (if (##structure-instance-of?
             _self1400114009_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1400514023_ (##vector-ref _self1400114009_ '1))
                   (_struct-t14026_ _e1400514023_)
                   (_e1400614028_ (##vector-ref _self1400114009_ '2))
                   (_off14031_ _e1400614028_)
                   (_e1400714033_ (##vector-ref _self1400114009_ '3))
                   (_unchecked?14036_ _e1400714033_))
              (_K1400414020_ _unchecked?14036_ _off14031_ _struct-t14026_))
            (_E1400314013_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13840_)
      (let* ((_self1384113849_ _self13840_)
             (_E1384313853_
              (lambda () (error '"No clause matching" _self1384113849_)))
             (_K1384413860_
              (lambda (_unchecked?13856_ _off13857_ _struct-t13858_)
                (cons '@struct-setf
                      (cons _struct-t13858_
                            (cons _off13857_ (cons _unchecked?13856_ '())))))))
        (if (##structure-instance-of?
             _self1384113849_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1384513863_ (##vector-ref _self1384113849_ '1))
                   (_struct-t13866_ _e1384513863_)
                   (_e1384613868_ (##vector-ref _self1384113849_ '2))
                   (_off13871_ _e1384613868_)
                   (_e1384713873_ (##vector-ref _self1384113849_ '3))
                   (_unchecked?13876_ _e1384713873_))
              (_K1384413860_ _unchecked?13876_ _off13871_ _struct-t13866_))
            (_E1384313853_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13666_)
      (let* ((_self1366713677_ _self13666_)
             (_E1366913681_
              (lambda () (error '"No clause matching" _self1366713677_)))
             (_K1367013692_
              (lambda (_typedecl13684_
                       _inline13685_
                       _dispatch13686_
                       _arity13687_)
                (if _inline13685_
                    (let ((_$e13689_ _typedecl13684_))
                      (if _$e13689_
                          _$e13689_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13687_ (cons _dispatch13686_ '())))))))
        (if (##structure-instance-of?
             _self1366713677_
             (##type-id gxc#!lambda::t))
            (let* ((_e1367113695_ (##vector-ref _self1366713677_ '1))
                   (_e1367213698_ (##vector-ref _self1366713677_ '2))
                   (_arity13701_ _e1367213698_)
                   (_e1367313703_ (##vector-ref _self1366713677_ '3))
                   (_dispatch13706_ _e1367313703_)
                   (_e1367413708_ (##vector-ref _self1366713677_ '4))
                   (_inline13711_ _e1367413708_)
                   (_e1367513713_ (##vector-ref _self1366713677_ '5))
                   (_typedecl13716_ _e1367513713_))
              (_K1367013692_
               _typedecl13716_
               _inline13711_
               _dispatch13706_
               _arity13701_))
            (_E1366913681_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self13477_)
      (letrec ((_clause-e13479_
                (lambda (_clause13509_)
                  (let* ((_clause1351013518_ _clause13509_)
                         (_E1351213522_
                          (lambda ()
                            (error '"No clause matching" _clause1351013518_)))
                         (_K1351313528_
                          (lambda (_dispatch13525_ _arity13526_)
                            (cons _arity13526_ (cons _dispatch13525_ '())))))
                    (if (##structure-instance-of?
                         _clause1351013518_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1351413531_
                                (##vector-ref _clause1351013518_ '1))
                               (_e1351513534_
                                (##vector-ref _clause1351013518_ '2))
                               (_arity13537_ _e1351513534_)
                               (_e1351613539_
                                (##vector-ref _clause1351013518_ '3))
                               (_dispatch13542_ _e1351613539_))
                          (_K1351313528_ _dispatch13542_ _arity13537_))
                        (_E1351213522_))))))
        (let* ((_self1348013487_ _self13477_)
               (_E1348213491_
                (lambda () (error '"No clause matching" _self1348013487_)))
               (_K1348313498_
                (lambda (_clauses13494_)
                  (let ((_clauses13496_ (map _clause-e13479_ _clauses13494_)))
                    (cons '@case-lambda _clauses13496_)))))
          (if (##structure-instance-of?
               _self1348013487_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1348413501_ (##vector-ref _self1348013487_ '1))
                     (_e1348513504_ (##vector-ref _self1348013487_ '2))
                     (_clauses13507_ _e1348513504_))
                (_K1348313498_ _clauses13507_))
              (_E1348213491_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self13320_)
      (let* ((_self1332113329_ _self13320_)
             (_E1332313333_
              (lambda () (error '"No clause matching" _self1332113329_)))
             (_K1332413339_
              (lambda (_dispatch13336_ _table13337_)
                (cons '@kw-lambda
                      (cons _table13337_ (cons _dispatch13336_ '()))))))
        (if (##structure-instance-of?
             _self1332113329_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1332513342_ (##vector-ref _self1332113329_ '1))
                   (_e1332613345_ (##vector-ref _self1332113329_ '2))
                   (_table13348_ _e1332613345_)
                   (_e1332713350_ (##vector-ref _self1332113329_ '3))
                   (_dispatch13353_ _e1332713350_))
              (_K1332413339_ _dispatch13353_ _table13348_))
            (_E1332313333_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self13163_)
      (let* ((_self1316413172_ _self13163_)
             (_E1316613176_
              (lambda () (error '"No clause matching" _self1316413172_)))
             (_K1316713182_
              (lambda (_main13179_ _keys13180_)
                (cons '@kw-lambda-dispatch
                      (cons _keys13180_ (cons _main13179_ '()))))))
        (if (##structure-instance-of?
             _self1316413172_
             (##type-id gxc#!kw-lambda-primary::t))
            (let* ((_e1316813185_ (##vector-ref _self1316413172_ '1))
                   (_e1316913188_ (##vector-ref _self1316413172_ '2))
                   (_keys13191_ _e1316913188_)
                   (_e1317013193_ (##vector-ref _self1316413172_ '3))
                   (_main13196_ _e1317013193_))
              (_K1316713182_ _main13196_ _keys13191_))
            (_E1316613176_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx13039_)
      (if (##structure-direct-instance-of? _stx13039_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx13039_)
          (gx#stx-e _stx13039_)))))
