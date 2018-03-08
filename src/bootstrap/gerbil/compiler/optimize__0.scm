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
    (lambda _$args23860_
      (apply make-struct-instance gxc#optimizer-info::t _$args23860_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23858_)
      (if (##fx< '2 (##vector-length _self23858_))
          (begin
            (##vector-set! _self23858_ '1 (make-hash-table-eq))
            (##vector-set! _self23858_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23858_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23872 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23872) __obj23872))))))
  (define gxc#optimize!
    (lambda (_ctx23730_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23730_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23730_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23733_
                  (gxc#optimize-source
                   (##structure-ref _ctx23730_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23730_
              _code23733_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23675_)
      (letrec* ((_deps23677_
                 (let* ((_imports23721_
                         (##structure-ref
                          _ctx23675_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23723_ (gx#core-context-prelude__% _ctx23675_)))
                   (if _$e23723_
                       ((lambda (_g2372523727_)
                          (cons _g2372523727_ _imports23721_))
                        _$e23723_)
                       _imports23721_))))
        (let _lp23679_ ((_rest23681_ _deps23677_))
          (let* ((_rest2368223690_ _rest23681_)
                 (_E2368523694_
                  (lambda () (error '"No clause matching" _rest2368223690_)))
                 (_else2368423698_ (lambda () '#!void))
                 (_K2368623709_
                  (lambda (_rest23701_ _hd23702_)
                    (if (##structure-instance-of?
                         _hd23702_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23702_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23704_
                                       (gx#core-context-prelude__% _hd23702_)))
                                  (if _$e23704_
                                      ((lambda (_pre23707_)
                                         (_lp23679_
                                          (cons _pre23707_
                                                (##structure-ref
                                                 _hd23702_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23704_)
                                      (_lp23679_
                                       (##structure-ref
                                        _hd23702_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23702_)))
                          (_lp23679_ _rest23701_))
                        (if (##structure-instance-of?
                             _hd23702_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23702_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23679_
                                     (##structure-ref
                                      _hd23702_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23702_)))
                              (_lp23679_ _rest23701_))
                            (if (##structure-direct-instance-of?
                                 _hd23702_
                                 'gx#module-import::t)
                                (_lp23679_
                                 (cons (##direct-structure-ref
                                        _hd23702_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23701_))
                                (if (##structure-direct-instance-of?
                                     _hd23702_
                                     'gx#module-export::t)
                                    (_lp23679_
                                     (cons (##direct-structure-ref
                                            _hd23702_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23701_))
                                    (if (##structure-direct-instance-of?
                                         _hd23702_
                                         'gx#import-set::t)
                                        (_lp23679_
                                         (cons (##direct-structure-ref
                                                _hd23702_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23701_))
                                        (error '"Unexpected module import"
                                               _hd23702_)))))))))
            (if (##pair? _rest2368223690_)
                (let ((_hd2368723712_ (##car _rest2368223690_))
                      (_tl2368823714_ (##cdr _rest2368223690_)))
                  (let* ((_hd23717_ _hd2368723712_)
                         (_rest23719_ _tl2368823714_))
                    (_K2368623709_ _rest23719_ _hd23717_)))
                (_else2368423698_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23655_)
      (if (if (##structure-instance-of? _ctx23655_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23655_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23657_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23659_
                  (##structure-ref _ctx23655_ '1 gx#expander-context::t '#f))
                 (_mod23661_ (table-ref _ht23657_ _id23659_ '#f)))
            (let ((_$e23664_ _mod23661_))
              (if _$e23664_
                  _$e23664_
                  (let* ((_mod23667_ (gxc#optimizer-import-ssxi _ctx23655_))
                         (_val23672_
                          (let ((_$e23669_ _mod23667_))
                            (if _$e23669_ _$e23669_ '#!void))))
                    (begin
                      (table-set! _ht23657_ _id23659_ _val23672_)
                      _val23672_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23632_)
      (letrec ((_catch-e23634_
                (lambda (_exn23653_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23632_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23653_))
                        '#!void)
                    '#f)))
               (_import-e23635_
                (lambda ()
                  (let* ((_str-id23638_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23632_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23646_
                          (let ((_odir2363923641_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2363923641_
                                (let ((_odir23644_ _odir2363923641_))
                                  (path-expand
                                   (string-append _str-id23638_ '".ss")
                                   _odir23644_))
                                '#f)))
                         (_library-path23648_
                          (string->symbol
                           (string-append '":" _str-id23638_ '".ss")))
                         (_ssxi-path23650_
                          (if (if _artefact-path23646_
                                  (file-exists? _artefact-path23646_)
                                  '#f)
                              _artefact-path23646_
                              _library-path23648_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23650_)
                      (gx#import-module__% _ssxi-path23650_ '#t '#t))))))
        (if (##structure-ref _ctx23632_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23634_ _import-e23635_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23629_
      (apply make-struct-instance gxc#!type::t _$args23629_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23626_
      (apply make-struct-instance gxc#!alias::t _$args23626_)))
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
    (lambda _$args23623_
      (apply make-struct-instance gxc#!struct-type::t _$args23623_)))
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
    (lambda _$args23620_
      (apply make-struct-instance gxc#!procedure::t _$args23620_)))
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
    (lambda _$args23617_
      (apply make-struct-instance gxc#!struct-pred::t _$args23617_)))
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
    (lambda _$args23614_
      (apply make-struct-instance gxc#!struct-cons::t _$args23614_)))
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
    (lambda _$args23611_
      (apply make-struct-instance gxc#!struct-getf::t _$args23611_)))
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
    (lambda _$args23608_
      (apply make-struct-instance gxc#!struct-setf::t _$args23608_)))
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
    (lambda _$args23605_
      (apply make-struct-instance gxc#!lambda::t _$args23605_)))
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
    (lambda _$args23602_
      (apply make-struct-instance gxc#!case-lambda::t _$args23602_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23594_
             _id23595_
             _super23596_
             _fields23597_
             _xfields23598_
             _ctor23599_
             _plist23600_)
      (if (##fx< '7 (##vector-length _self23594_))
          (begin
            (##vector-set! _self23594_ '1 _id23595_)
            (##vector-set! _self23594_ '2 _super23596_)
            (##vector-set! _self23594_ '3 _fields23597_)
            (##vector-set! _self23594_ '4 _xfields23598_)
            (##vector-set! _self23594_ '5 _ctor23599_)
            (##vector-set! _self23594_ '6 _plist23600_)
            (##vector-set! _self23594_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23594_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self23438_
               _id23439_
               _arity23440_
               _dispatch23441_
               _inline23442_
               _typedecl23443_)
        (if (##fx< '5 (##vector-length _self23438_))
            (begin
              (##vector-set! _self23438_ '1 _id23439_)
              (##vector-set! _self23438_ '2 _arity23440_)
              (##vector-set! _self23438_ '3 _dispatch23441_)
              (##vector-set! _self23438_ '4 _inline23442_)
              (##vector-set! _self23438_ '5 _typedecl23443_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23438_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23448_ _id23449_ _arity23450_ _dispatch23451_)
          (let* ((_inline23453_ '#f) (_typedecl23455_ '#f))
            (if (##fx< '5 (##vector-length _self23448_))
                (begin
                  (##vector-set! _self23448_ '1 _id23449_)
                  (##vector-set! _self23448_ '2 _arity23450_)
                  (##vector-set! _self23448_ '3 _dispatch23451_)
                  (##vector-set! _self23448_ '4 _inline23453_)
                  (##vector-set! _self23448_ '5 _typedecl23455_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23448_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23457_
                 _id23458_
                 _arity23459_
                 _dispatch23460_
                 _inline23461_)
          (let ((_typedecl23463_ '#f))
            (if (##fx< '5 (##vector-length _self23457_))
                (begin
                  (##vector-set! _self23457_ '1 _id23458_)
                  (##vector-set! _self23457_ '2 _arity23459_)
                  (##vector-set! _self23457_ '3 _dispatch23460_)
                  (##vector-set! _self23457_ '4 _inline23461_)
                  (##vector-set! _self23457_ '5 _typedecl23463_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23457_)))))
      (define gxc#!lambda:::init!
        (lambda _g23880_
          (let ((_g23879_ (length _g23880_)))
            (cond ((fx= _g23879_ 4) (apply gxc#!lambda:::init!__0 _g23880_))
                  ((fx= _g23879_ 5) (apply gxc#!lambda:::init!__1 _g23880_))
                  ((fx= _g23879_ 6)
                   (apply (lambda (_self23465_
                                   _id23466_
                                   _arity23467_
                                   _dispatch23468_
                                   _inline23469_
                                   _typedecl23470_)
                            (if (##fx< '5 (##vector-length _self23465_))
                                (begin
                                  (##vector-set! _self23465_ '1 _id23466_)
                                  (##vector-set! _self23465_ '2 _arity23467_)
                                  (##vector-set!
                                   _self23465_
                                   '3
                                   _dispatch23468_)
                                  (##vector-set! _self23465_ '4 _inline23469_)
                                  (##vector-set!
                                   _self23465_
                                   '5
                                   _typedecl23470_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23465_)))
                          _g23880_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23880_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23308_)
      (let ((_$e23310_
             (##structure-ref _type23308_ '7 gxc#!struct-type::t '#f)))
        (if _$e23310_
            (values _$e23310_)
            (let ((_vtab23313_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23308_
                 _vtab23313_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23313_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23299_ _method23300_)
      (let ((_vtab2330123303_
             (##structure-ref _type23299_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2330123303_
            (let ((_vtab23306_ _vtab2330123303_))
              (table-ref _vtab23306_ _method23300_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym23283_ _type23284_ _local?23285_)
        (begin
          (if (##structure-instance-of? _type23284_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23283_
                     _type23284_))
          (gxc#verbose
           '"declare-type "
           _sym23283_
           '" "
           (struct->list _type23284_))
          (table-set!
           (if _local?23285_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23283_
           _type23284_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23290_ _type23291_)
          (let ((_local?23293_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym23290_
             _type23291_
             _local?23293_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23882_
          (let ((_g23881_ (length _g23882_)))
            (cond ((fx= _g23881_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23882_))
                  ((fx= _g23881_ 3)
                   (apply gxc#optimizer-declare-type!__% _g23882_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23882_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t23259_ _method23260_ _sym23261_ _rebind?23262_)
        (let ((_type23264_ (gxc#optimizer-resolve-type _type-t23259_)))
          (if (##structure-instance-of? _type23264_ 'gxc#!struct-type::t)
              (let ((_vtab23266_ (gxc#!struct-type-vtab _type23264_)))
                (if _rebind?23262_
                    (if (hash-key? _vtab23266_ _method23260_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t23259_
                         '" "
                         _method23260_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t23259_
                         '" "
                         _method23260_))
                    (if (hash-key? _vtab23266_ _method23260_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t23259_
                           '" "
                           _method23260_
                           '" => "
                           _sym23261_)
                          (table-set! _vtab23266_ _method23260_ _sym23261_)))))
              (if (not _type23264_)
                  (gxc#verbose '"declare-method: unknown type " _type-t23259_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t23259_
                         _type23264_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t23271_ _method23272_ _sym23273_)
          (let ((_rebind?23275_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t23271_
             _method23272_
             _sym23273_
             _rebind?23275_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23884_
          (let ((_g23883_ (length _g23884_)))
            (cond ((fx= _g23883_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23884_))
                  ((fx= _g23883_ 4)
                   (apply gxc#optimizer-declare-method!__% _g23884_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23884_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym23247_)
      (let ((_$e23255_
             (let ((_ht2324823250_ (gxc#current-compile-local-type)))
               (if _ht2324823250_
                   (let ((_ht23253_ _ht2324823250_))
                     (table-ref _ht23253_ _sym23247_ '#f))
                   '#f))))
        (if _$e23255_
            _$e23255_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym23247_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym23239_)
      (let ((_type2324023242_ (gxc#optimizer-lookup-type _sym23239_)))
        (if _type2324023242_
            (let ((_type23245_ _type2324023242_))
              (if (##structure-instance-of? _type23245_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type23245_ '1 gxc#!type::t '#f))
                  _type23245_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t23234_ _method23235_)
      (let ((_type23237_ (gxc#optimizer-resolve-type _type-t23234_)))
        (if (##structure-instance-of? _type23237_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type23237_ _method23235_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx23230_)
      (begin
        (gxc#apply-collect-mutators _stx23230_)
        (let ((_stx23232_ (gxc#apply-lift-top-lambdas _stx23230_)))
          (begin
            (gxc#apply-collect-type-info _stx23232_)
            (gxc#apply-optimize-call _stx23232_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl23227_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl23227_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl23227_ '%#lambda gxc#xform-identity)
           (table-set! _tbl23227_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl23227_ '%#let-values gxc#xform-identity)
           (table-set! _tbl23227_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl23227_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl23227_ '%#quote gxc#xform-identity)
           (table-set! _tbl23227_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl23227_ '%#call gxc#xform-identity)
           (table-set! _tbl23227_ '%#if gxc#xform-identity)
           (table-set! _tbl23227_ '%#ref gxc#xform-identity)
           (table-set! _tbl23227_ '%#set! gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl23227_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl23227_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl23227_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl23223_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl23223_ '%#begin gxc#xform-identity)
           (table-set! _tbl23223_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl23223_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl23223_ '%#module gxc#xform-identity)
           (table-set! _tbl23223_ '%#import gxc#xform-identity)
           (table-set! _tbl23223_ '%#export gxc#xform-identity)
           (table-set! _tbl23223_ '%#provide gxc#xform-identity)
           (table-set! _tbl23223_ '%#extern gxc#xform-identity)
           (table-set! _tbl23223_ '%#define-values gxc#xform-identity)
           (table-set! _tbl23223_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl23223_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl23223_ '%#declare gxc#xform-identity)
           _tbl23223_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl23219_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23219_ (force gxc#&identity-special-form))
           (hash-copy! _tbl23219_ (force gxc#&identity-expression))
           _tbl23219_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl23215_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl23215_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl23215_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl23215_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl23215_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl23215_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl23215_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl23215_ '%#quote gxc#xform-identity)
           (table-set! _tbl23215_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl23215_ '%#call gxc#xform-operands)
           (table-set! _tbl23215_ '%#if gxc#xform-operands)
           (table-set! _tbl23215_ '%#ref gxc#xform-identity)
           (table-set! _tbl23215_ '%#set! gxc#xform-setq%)
           (table-set! _tbl23215_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl23215_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl23215_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl23215_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl23215_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl23215_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl23215_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl23215_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl23215_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl23211_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23211_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl23211_ (force gxc#&identity))
           (table-set! _tbl23211_ '%#begin gxc#xform-begin%)
           (table-set! _tbl23211_ '%#module gxc#xform-module%)
           (table-set! _tbl23211_ '%#define-values gxc#xform-define-values%)
           _tbl23211_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl23207_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23207_ (force gxc#&void))
           (table-set! _tbl23207_ '%#begin gxc#collect-begin%)
           (table-set! _tbl23207_ '%#module gxc#collect-module%)
           (table-set!
            _tbl23207_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl23207_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl23207_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl23207_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl23207_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl23207_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl23207_ '%#call gxc#collect-operands)
           (table-set! _tbl23207_ '%#if gxc#collect-operands)
           (table-set! _tbl23207_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl23207_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl23207_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl23207_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl23207_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl23207_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl23207_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl23207_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl23207_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl23207_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx23200_ . _args23202_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23200_ _args23202_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl23197_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23197_ (force gxc#&basic-xform))
           (table-set!
            _tbl23197_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl23197_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl23197_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl23197_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl23197_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx23190_ . _args23192_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23190_ _args23192_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl23187_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23187_ (force gxc#&basic-xform-expression))
           (table-set! _tbl23187_ '%#begin gxc#xform-begin%)
           (table-set! _tbl23187_ '%#ref gxc#expression-subst-ref%)
           _tbl23187_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx23180_ . _args23182_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23180_ _args23182_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl23177_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23177_ (force gxc#&void))
           (table-set! _tbl23177_ '%#begin gxc#collect-begin%)
           (table-set! _tbl23177_ '%#module gxc#collect-module%)
           (table-set!
            _tbl23177_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl23177_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl23177_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl23177_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl23177_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl23177_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl23177_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl23177_ '%#call gxc#collect-type-call%)
           (table-set! _tbl23177_ '%#if gxc#collect-operands)
           (table-set! _tbl23177_ '%#set! gxc#collect-body-setq%)
           _tbl23177_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx23170_ . _args23172_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23170_ _args23172_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl23167_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23167_ (force gxc#&false))
           (table-set! _tbl23167_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl23167_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl23167_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl23167_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl23167_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl23167_ '%#ref gxc#basic-expression-type-ref%)
           _tbl23167_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx23160_ . _args23162_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23160_ _args23162_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl23157_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23157_ (force gxc#&basic-xform))
           (table-set! _tbl23157_ '%#call gxc#optimize-call%)
           _tbl23157_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx23150_ . _args23152_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23150_ _args23152_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl23147_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl23147_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl23147_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl23147_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl23147_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl23147_ '%#call gxc#generate-ssxi-call%)
           _tbl23147_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx23140_ . _args23142_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx23140_ _args23142_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx23137_ . _args23138_) _stx23137_))
  (define gxc#xform-wrap-source
    (lambda (_stx23134_ _src-stx23135_)
      (gx#stx-wrap-source _stx23134_ (gx#stx-source _src-stx23135_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args23128_)
      (lambda (_g2312923131_)
        (apply gxc#compile-e _g2312923131_ _args23128_))))
  (define gxc#xform-begin%
    (lambda (_stx23087_ . _args23088_)
      (let* ((_g2309023100_
              (lambda (_g2309123097_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2309123097_)))
             (_g2308923125_
              (lambda (_g2309123103_)
                (if (gx#stx-pair? _g2309123103_)
                    (let ((_e2309323105_ (gx#stx-e _g2309123103_)))
                      (let ((_hd2309423108_ (##car _e2309323105_))
                            (_tl2309523110_ (##cdr _e2309323105_)))
                        ((lambda (_L23113_)
                           (let ((_forms23123_
                                  (map (gxc#xform-apply-compile-e _args23088_)
                                       _L23113_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms23123_)
                              _stx23087_)))
                         _tl2309523110_)))
                    (_g2309023100_ _g2309123103_)))))
        (_g2308923125_ _stx23087_))))
  (define gxc#xform-module%
    (lambda (_stx23024_ . _args23025_)
      (let* ((_g2302723041_
              (lambda (_g2302823038_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2302823038_)))
             (_g2302623084_
              (lambda (_g2302823044_)
                (if (gx#stx-pair? _g2302823044_)
                    (let ((_e2303123046_ (gx#stx-e _g2302823044_)))
                      (let ((_hd2303223049_ (##car _e2303123046_))
                            (_tl2303323051_ (##cdr _e2303123046_)))
                        (if (gx#stx-pair? _tl2303323051_)
                            (let ((_e2303423054_ (gx#stx-e _tl2303323051_)))
                              (let ((_hd2303523057_ (##car _e2303423054_))
                                    (_tl2303623059_ (##cdr _e2303423054_)))
                                ((lambda (_L23062_ _L23063_)
                                   (let* ((_ctx23076_
                                           (gx#syntax-local-e__0 _L23063_))
                                          (_code23078_
                                           (##structure-ref
                                            _ctx23076_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code23081_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code23078_
                                                     _args23025_))
                                            gx#current-expander-context
                                            _ctx23076_)))
                                     (begin
                                       (##structure-set!
                                        _ctx23076_
                                        _code23081_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L23063_
                                                    (cons _code23081_ '())))
                                        _stx23024_))))
                                 _tl2303623059_
                                 _hd2303523057_)))
                            (_g2302723041_ _g2302823044_))))
                    (_g2302723041_ _g2302823044_)))))
        (_g2302623084_ _stx23024_))))
  (define gxc#xform-define-values%
    (lambda (_stx22954_ . _args22955_)
      (let* ((_g2295722974_
              (lambda (_g2295822971_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2295822971_)))
             (_g2295623021_
              (lambda (_g2295822977_)
                (if (gx#stx-pair? _g2295822977_)
                    (let ((_e2296122979_ (gx#stx-e _g2295822977_)))
                      (let ((_hd2296222982_ (##car _e2296122979_))
                            (_tl2296322984_ (##cdr _e2296122979_)))
                        (if (gx#stx-pair? _tl2296322984_)
                            (let ((_e2296422987_ (gx#stx-e _tl2296322984_)))
                              (let ((_hd2296522990_ (##car _e2296422987_))
                                    (_tl2296622992_ (##cdr _e2296422987_)))
                                (if (gx#stx-pair? _tl2296622992_)
                                    (let ((_e2296722995_
                                           (gx#stx-e _tl2296622992_)))
                                      (let ((_hd2296822998_
                                             (##car _e2296722995_))
                                            (_tl2296923000_
                                             (##cdr _e2296722995_)))
                                        (if (gx#stx-null? _tl2296923000_)
                                            ((lambda (_L23003_ _L23004_)
                                               (let ((_expr23019_
                                                      (apply gxc#compile-e
                                                             _L23003_
                                                             _args22955_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L23004_
                                                              (cons _expr23019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22954_)))
                                             _hd2296822998_
                                             _hd2296522990_)
                                            (_g2295722974_ _g2295822977_))))
                                    (_g2295722974_ _g2295822977_))))
                            (_g2295722974_ _g2295822977_))))
                    (_g2295722974_ _g2295822977_)))))
        (_g2295623021_ _stx22954_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22884_ . _args22885_)
      (let* ((_g2288722904_
              (lambda (_g2288822901_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2288822901_)))
             (_g2288622951_
              (lambda (_g2288822907_)
                (if (gx#stx-pair? _g2288822907_)
                    (let ((_e2289122909_ (gx#stx-e _g2288822907_)))
                      (let ((_hd2289222912_ (##car _e2289122909_))
                            (_tl2289322914_ (##cdr _e2289122909_)))
                        (if (gx#stx-pair? _tl2289322914_)
                            (let ((_e2289422917_ (gx#stx-e _tl2289322914_)))
                              (let ((_hd2289522920_ (##car _e2289422917_))
                                    (_tl2289622922_ (##cdr _e2289422917_)))
                                (if (gx#stx-pair? _tl2289622922_)
                                    (let ((_e2289722925_
                                           (gx#stx-e _tl2289622922_)))
                                      (let ((_hd2289822928_
                                             (##car _e2289722925_))
                                            (_tl2289922930_
                                             (##cdr _e2289722925_)))
                                        (if (gx#stx-null? _tl2289922930_)
                                            ((lambda (_L22933_ _L22934_)
                                               (let ((_expr22949_
                                                      (apply gxc#compile-e
                                                             _L22933_
                                                             _args22885_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22934_
                                                              (cons _expr22949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22884_)))
                                             _hd2289822928_
                                             _hd2289522920_)
                                            (_g2288722904_ _g2288822907_))))
                                    (_g2288722904_ _g2288822907_))))
                            (_g2288722904_ _g2288822907_))))
                    (_g2288722904_ _g2288822907_)))))
        (_g2288622951_ _stx22884_))))
  (define gxc#xform-lambda%
    (lambda (_stx22827_ . _args22828_)
      (let* ((_g2283022844_
              (lambda (_g2283122841_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2283122841_)))
             (_g2282922881_
              (lambda (_g2283122847_)
                (if (gx#stx-pair? _g2283122847_)
                    (let ((_e2283422849_ (gx#stx-e _g2283122847_)))
                      (let ((_hd2283522852_ (##car _e2283422849_))
                            (_tl2283622854_ (##cdr _e2283422849_)))
                        (if (gx#stx-pair? _tl2283622854_)
                            (let ((_e2283722857_ (gx#stx-e _tl2283622854_)))
                              (let ((_hd2283822860_ (##car _e2283722857_))
                                    (_tl2283922862_ (##cdr _e2283722857_)))
                                ((lambda (_L22865_ _L22866_)
                                   (let ((_body22879_
                                          (map (gxc#xform-apply-compile-e
                                                _args22828_)
                                               _L22865_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22866_ _body22879_))
                                      _stx22827_)))
                                 _tl2283922862_
                                 _hd2283822860_)))
                            (_g2283022844_ _g2283122847_))))
                    (_g2283022844_ _g2283122847_)))))
        (_g2282922881_ _stx22827_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22740_ . _args22741_)
      (letrec ((_clause-e22743_
                (lambda (_clause22784_)
                  (let* ((_g2278622797_
                          (lambda (_g2278722794_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2278722794_)))
                         (_g2278522824_
                          (lambda (_g2278722800_)
                            (if (gx#stx-pair? _g2278722800_)
                                (let ((_e2279022802_ (gx#stx-e _g2278722800_)))
                                  (let ((_hd2279122805_ (##car _e2279022802_))
                                        (_tl2279222807_ (##cdr _e2279022802_)))
                                    ((lambda (_L22810_ _L22811_)
                                       (let ((_body22822_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22741_)
                                                   _L22810_)))
                                         (cons _L22811_ _body22822_)))
                                     _tl2279222807_
                                     _hd2279122805_)))
                                (_g2278622797_ _g2278722800_)))))
                    (_g2278522824_ _clause22784_)))))
        (let* ((_g2274522755_
                (lambda (_g2274622752_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2274622752_)))
               (_g2274422781_
                (lambda (_g2274622758_)
                  (if (gx#stx-pair? _g2274622758_)
                      (let ((_e2274822760_ (gx#stx-e _g2274622758_)))
                        (let ((_hd2274922763_ (##car _e2274822760_))
                              (_tl2275022765_ (##cdr _e2274822760_)))
                          ((lambda (_L22768_)
                             (let ((_clauses22779_
                                    (map _clause-e22743_ _L22768_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22779_)
                                _stx22740_)))
                           _tl2275022765_)))
                      (_g2274522755_ _g2274622758_)))))
          (_g2274422781_ _stx22740_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22534_ . _args22535_)
      (let* ((_g2253722570_
              (lambda (_g2253822567_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2253822567_)))
             (_g2253622737_
              (lambda (_g2253822573_)
                (if (gx#stx-pair? _g2253822573_)
                    (let ((_e2254322575_ (gx#stx-e _g2253822573_)))
                      (let ((_hd2254422578_ (##car _e2254322575_))
                            (_tl2254522580_ (##cdr _e2254322575_)))
                        (if (gx#stx-pair? _tl2254522580_)
                            (let ((_e2254622583_ (gx#stx-e _tl2254522580_)))
                              (let ((_hd2254722586_ (##car _e2254622583_))
                                    (_tl2254822588_ (##cdr _e2254622583_)))
                                (if (gx#stx-pair/null? _hd2254722586_)
                                    (if (fx>= (gx#stx-length _hd2254722586_)
                                              '0)
                                        (let ((_g23885_
                                               (gx#syntax-split-splice
                                                _hd2254722586_
                                                '0)))
                                          (begin
                                            (let ((_g23886_
                                                   (values-count _g23885_)))
                                              (if (not (fx= _g23886_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23886_)))
                                            (let ((_target2254922591_
                                                   (values-ref _g23885_ 0))
                                                  (_tl2255122593_
                                                   (values-ref _g23885_ 1)))
                                              (if (gx#stx-null? _tl2255122593_)
                                                  (letrec ((_loop2255222596_
                                                            (lambda (_hd2255022599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2255622601_
                             _hd2255722603_)
                      (if (gx#stx-pair? _hd2255022599_)
                          (let ((_e2255322606_ (gx#stx-e _hd2255022599_)))
                            (let ((_lp-hd2255422609_ (##car _e2255322606_))
                                  (_lp-tl2255522611_ (##cdr _e2255322606_)))
                              (if (gx#stx-pair? _lp-hd2255422609_)
                                  (let ((_e2256022614_
                                         (gx#stx-e _lp-hd2255422609_)))
                                    (let ((_hd2256122617_
                                           (##car _e2256022614_))
                                          (_tl2256222619_
                                           (##cdr _e2256022614_)))
                                      (if (gx#stx-pair? _tl2256222619_)
                                          (let ((_e2256322622_
                                                 (gx#stx-e _tl2256222619_)))
                                            (let ((_hd2256422625_
                                                   (##car _e2256322622_))
                                                  (_tl2256522627_
                                                   (##cdr _e2256322622_)))
                                              (if (gx#stx-null? _tl2256522627_)
                                                  (_loop2255222596_
                                                   _lp-tl2255522611_
                                                   (cons _hd2256422625_
                                                         _expr2255622601_)
                                                   (cons _hd2256122617_
                                                         _hd2255722603_))
                                                  (_g2253722570_
                                                   _g2253822573_))))
                                          (_g2253722570_ _g2253822573_))))
                                  (_g2253722570_ _g2253822573_))))
                          (let ((_expr2255822630_ (reverse _expr2255622601_))
                                (_hd2255922632_ (reverse _hd2255722603_)))
                            ((lambda (_L22635_ _L22636_ _L22637_ _L22638_)
                               (let* ((_g2265722673_
                                       (lambda (_g2265822670_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2265822670_)))
                                      (_g2265622727_
                                       (lambda (_g2265822676_)
                                         (if (gx#stx-pair/null? _g2265822676_)
                                             (if (fx>= (gx#stx-length
                                                        _g2265822676_)
                                                       '0)
                                                 (let ((_g23887_
                                                        (gx#syntax-split-splice
                                                         _g2265822676_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23888_
                                                            (values-count
                                                             _g23887_)))
                                                       (if (not (fx= _g23888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2266022678_
                                                            (values-ref
                                                             _g23887_
                                                             0))
                                                           (_tl2266222680_
                                                            (values-ref
                                                             _g23887_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2266222680_)
                                                           (letrec ((_loop2266322683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2266122686_ _expr2266722688_)
                               (if (gx#stx-pair? _hd2266122686_)
                                   (let ((_e2266422691_
                                          (gx#syntax-e _hd2266122686_)))
                                     (let ((_lp-hd2266522694_
                                            (##car _e2266422691_))
                                           (_lp-tl2266622696_
                                            (##cdr _e2266422691_)))
                                       (_loop2266322683_
                                        _lp-tl2266622696_
                                        (cons _lp-hd2266522694_
                                              _expr2266722688_))))
                                   (let ((_expr2266822699_
                                          (reverse _expr2266722688_)))
                                     ((lambda (_L22702_)
                                        (let ()
                                          (let ((_body22715_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22535_)
                                                      _L22635_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22638_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22702_
                                                            _L22637_)
                                                           (foldr2 (lambda (_g2271622720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2271722722_
                                    _g2271822724_)
                             (cons (cons _g2271722722_
                                         (cons _g2271622720_ '()))
                                   _g2271822724_))
                           '()
                           _L22702_
                           _L22637_))
                 _body22715_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22534_))))
                                      _expr2266822699_))))))
                     (_loop2266322683_ _target2266022678_ '()))
                   (_g2265722673_ _g2265822676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2265722673_ _g2265822676_))
                                             (_g2265722673_ _g2265822676_)))))
                                 (_g2265622727_
                                  (map (gxc#xform-apply-compile-e _args22535_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2272922732_
                                                          _g2273022734_)
                                                   (cons _g2272922732_
                                                         _g2273022734_))
                                                 '()
                                                 _L22636_))))))
                             _tl2254822588_
                             _expr2255822630_
                             _hd2255922632_
                             _hd2254422578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2255222596_
                                                     _target2254922591_
                                                     '()
                                                     '()))
                                                  (_g2253722570_
                                                   _g2253822573_)))))
                                        (_g2253722570_ _g2253822573_))
                                    (_g2253722570_ _g2253822573_))))
                            (_g2253722570_ _g2253822573_))))
                    (_g2253722570_ _g2253822573_)))))
        (_g2253622737_ _stx22534_))))
  (define gxc#xform-operands
    (lambda (_stx22490_ . _args22491_)
      (let* ((_g2249322504_
              (lambda (_g2249422501_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2249422501_)))
             (_g2249222531_
              (lambda (_g2249422507_)
                (if (gx#stx-pair? _g2249422507_)
                    (let ((_e2249722509_ (gx#stx-e _g2249422507_)))
                      (let ((_hd2249822512_ (##car _e2249722509_))
                            (_tl2249922514_ (##cdr _e2249722509_)))
                        ((lambda (_L22517_ _L22518_)
                           (let ((_rands22529_
                                  (map (gxc#xform-apply-compile-e _args22491_)
                                       _L22517_)))
                             (gxc#xform-wrap-source
                              (cons _L22518_ _rands22529_)
                              _stx22490_)))
                         _tl2249922514_
                         _hd2249822512_)))
                    (_g2249322504_ _g2249422507_)))))
        (_g2249222531_ _stx22490_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22420_ . _args22421_)
      (let* ((_g2242322440_
              (lambda (_g2242422437_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2242422437_)))
             (_g2242222487_
              (lambda (_g2242422443_)
                (if (gx#stx-pair? _g2242422443_)
                    (let ((_e2242722445_ (gx#stx-e _g2242422443_)))
                      (let ((_hd2242822448_ (##car _e2242722445_))
                            (_tl2242922450_ (##cdr _e2242722445_)))
                        (if (gx#stx-pair? _tl2242922450_)
                            (let ((_e2243022453_ (gx#stx-e _tl2242922450_)))
                              (let ((_hd2243122456_ (##car _e2243022453_))
                                    (_tl2243222458_ (##cdr _e2243022453_)))
                                (if (gx#stx-pair? _tl2243222458_)
                                    (let ((_e2243322461_
                                           (gx#stx-e _tl2243222458_)))
                                      (let ((_hd2243422464_
                                             (##car _e2243322461_))
                                            (_tl2243522466_
                                             (##cdr _e2243322461_)))
                                        (if (gx#stx-null? _tl2243522466_)
                                            ((lambda (_L22469_ _L22470_)
                                               (let ((_expr22485_
                                                      (apply gxc#compile-e
                                                             _L22469_
                                                             _args22421_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22470_
                                                              (cons _expr22485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22420_)))
                                             _hd2243422464_
                                             _hd2243122456_)
                                            (_g2242322440_ _g2242422443_))))
                                    (_g2242322440_ _g2242422443_))))
                            (_g2242322440_ _g2242422443_))))
                    (_g2242322440_ _g2242422443_)))))
        (_g2242222487_ _stx22420_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22351_)
      (let* ((_g2235322370_
              (lambda (_g2235422367_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2235422367_)))
             (_g2235222417_
              (lambda (_g2235422373_)
                (if (gx#stx-pair? _g2235422373_)
                    (let ((_e2235722375_ (gx#stx-e _g2235422373_)))
                      (let ((_hd2235822378_ (##car _e2235722375_))
                            (_tl2235922380_ (##cdr _e2235722375_)))
                        (if (gx#stx-pair? _tl2235922380_)
                            (let ((_e2236022383_ (gx#stx-e _tl2235922380_)))
                              (let ((_hd2236122386_ (##car _e2236022383_))
                                    (_tl2236222388_ (##cdr _e2236022383_)))
                                (if (gx#stx-pair? _tl2236222388_)
                                    (let ((_e2236322391_
                                           (gx#stx-e _tl2236222388_)))
                                      (let ((_hd2236422394_
                                             (##car _e2236322391_))
                                            (_tl2236522396_
                                             (##cdr _e2236322391_)))
                                        (if (gx#stx-null? _tl2236522396_)
                                            ((lambda (_L22399_ _L22400_)
                                               (let ((_sym22415_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22400_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22415_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22415_
                                                    '#t)
                                                   (gxc#compile-e _L22399_))))
                                             _hd2236422394_
                                             _hd2236122386_)
                                            (_g2235322370_ _g2235422373_))))
                                    (_g2235322370_ _g2235422373_))))
                            (_g2235322370_ _g2235422373_))))
                    (_g2235322370_ _g2235422373_)))))
        (_g2235222417_ _stx22351_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21585_)
      (let* ((_g2159021747_
              (lambda (_g2159121744_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2159121744_)))
             (_g2158921754_ (lambda (_g2159121750_) ((lambda () '#f))))
             (_g2158821894_
              (lambda (_g2159121757_)
                (if (gx#stx-pair? _g2159121757_)
                    (let ((_e2170721759_ (gx#stx-e _g2159121757_)))
                      (let ((_hd2170821762_ (##car _e2170721759_))
                            (_tl2170921764_ (##cdr _e2170721759_)))
                        (if (gx#stx-pair? _tl2170921764_)
                            (let ((_e2171021767_ (gx#stx-e _tl2170921764_)))
                              (let ((_hd2171121770_ (##car _e2171021767_))
                                    (_tl2171221772_ (##cdr _e2171021767_)))
                                (if (gx#stx-pair? _hd2171121770_)
                                    (let ((_e2171321775_
                                           (gx#stx-e _hd2171121770_)))
                                      (let ((_hd2171421778_
                                             (##car _e2171321775_))
                                            (_tl2171521780_
                                             (##cdr _e2171321775_)))
                                        (if (gx#identifier? _hd2171421778_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2171421778_)
                                                (if (gx#stx-pair?
                                                     _tl2171521780_)
                                                    (let ((_e2171621783_
                                                           (gx#stx-e
                                                            _tl2171521780_)))
                                                      (let ((_hd2171721786_
                                                             (##car _e2171621783_))
                                                            (_tl2171821788_
                                                             (##cdr _e2171621783_)))
                                                        (if (gx#stx-pair?
                                                             _hd2171721786_)
                                                            (let ((_e2171921791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2171721786_)))
                      (let ((_hd2172021794_ (##car _e2171921791_))
                            (_tl2172121796_ (##cdr _e2171921791_)))
                        (if (gx#identifier? _hd2172021794_)
                            (if (gx#stx-eq? '%#ref _hd2172021794_)
                                (if (gx#stx-pair? _tl2172121796_)
                                    (let ((_e2172221799_
                                           (gx#stx-e _tl2172121796_)))
                                      (let ((_hd2172321802_
                                             (##car _e2172221799_))
                                            (_tl2172421804_
                                             (##cdr _e2172221799_)))
                                        (if (gx#stx-null? _tl2172421804_)
                                            (if (gx#stx-pair? _tl2171821788_)
                                                (let ((_e2172521807_
                                                       (gx#stx-e
                                                        _tl2171821788_)))
                                                  (let ((_hd2172621810_
                                                         (##car _e2172521807_))
                                                        (_tl2172721812_
                                                         (##cdr _e2172521807_)))
                                                    (if (gx#stx-pair?
                                                         _hd2172621810_)
                                                        (let ((_e2172821815_
                                                               (gx#stx-e
                                                                _hd2172621810_)))
                                                          (let ((_hd2172921818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2172821815_))
                        (_tl2173021820_ (##cdr _e2172821815_)))
                    (if (gx#identifier? _hd2172921818_)
                        (if (gx#stx-eq? '%#ref _hd2172921818_)
                            (if (gx#stx-pair? _tl2173021820_)
                                (let ((_e2173121823_
                                       (gx#stx-e _tl2173021820_)))
                                  (let ((_hd2173221826_ (##car _e2173121823_))
                                        (_tl2173321828_ (##cdr _e2173121823_)))
                                    (if (gx#stx-null? _tl2173321828_)
                                        (if (gx#stx-pair? _tl2172721812_)
                                            (let ((_e2173421831_
                                                   (gx#stx-e _tl2172721812_)))
                                              (let ((_hd2173521834_
                                                     (##car _e2173421831_))
                                                    (_tl2173621836_
                                                     (##cdr _e2173421831_)))
                                                (if (gx#stx-pair?
                                                     _hd2173521834_)
                                                    (let ((_e2173721839_
                                                           (gx#stx-e
                                                            _hd2173521834_)))
                                                      (let ((_hd2173821842_
                                                             (##car _e2173721839_))
                                                            (_tl2173921844_
                                                             (##cdr _e2173721839_)))
                                                        (if (gx#identifier?
                                                             _hd2173821842_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2173821842_)
                        (if (gx#stx-pair? _tl2173921844_)
                            (let ((_e2174021847_ (gx#stx-e _tl2173921844_)))
                              (let ((_hd2174121850_ (##car _e2174021847_))
                                    (_tl2174221852_ (##cdr _e2174021847_)))
                                (if (gx#stx-null? _tl2174221852_)
                                    (if (gx#stx-null? _tl2173621836_)
                                        (if (gx#stx-null? _tl2171221772_)
                                            ((lambda (_L21855_
                                                      _L21856_
                                                      _L21857_
                                                      _L21858_)
                                               (if (if (gx#identifier?
                                                        _L21858_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21857_)
                        'apply)
                   (if (gx#free-identifier=? _L21858_ _L21855_)
                       (not (gx#free-identifier=? _L21856_ _L21858_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2158921754_
                                                    _g2159121757_)))
                                             _hd2174121850_
                                             _hd2173221826_
                                             _hd2172321802_
                                             _hd2170821762_)
                                            (_g2158921754_ _g2159121757_))
                                        (_g2158921754_ _g2159121757_))
                                    (_g2158921754_ _g2159121757_))))
                            (_g2158921754_ _g2159121757_))
                        (_g2158921754_ _g2159121757_))
                    (_g2158921754_ _g2159121757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2158921754_
                                                     _g2159121757_))))
                                            (_g2158921754_ _g2159121757_))
                                        (_g2158921754_ _g2159121757_))))
                                (_g2158921754_ _g2159121757_))
                            (_g2158921754_ _g2159121757_))
                        (_g2158921754_ _g2159121757_))))
                (_g2158921754_ _g2159121757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2158921754_ _g2159121757_))
                                            (_g2158921754_ _g2159121757_))))
                                    (_g2158921754_ _g2159121757_))
                                (_g2158921754_ _g2159121757_))
                            (_g2158921754_ _g2159121757_))))
                    (_g2158921754_ _g2159121757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2158921754_
                                                     _g2159121757_))
                                                (_g2158921754_ _g2159121757_))
                                            (_g2158921754_ _g2159121757_))))
                                    (_g2158921754_ _g2159121757_))))
                            (_g2158921754_ _g2159121757_))))
                    (_g2158921754_ _g2159121757_))))
             (_g2158722154_
              (lambda (_g2159121897_)
                (if (gx#stx-pair? _g2159121897_)
                    (let ((_e2164321899_ (gx#stx-e _g2159121897_)))
                      (let ((_hd2164421902_ (##car _e2164321899_))
                            (_tl2164521904_ (##cdr _e2164321899_)))
                        (if (gx#stx-pair/null? _hd2164421902_)
                            (if (fx>= (gx#stx-length _hd2164421902_) '0)
                                (let ((_g23889_
                                       (gx#syntax-split-splice
                                        _hd2164421902_
                                        '0)))
                                  (begin
                                    (let ((_g23890_ (values-count _g23889_)))
                                      (if (not (fx= _g23890_ 2))
                                          (error "Context expects 2 values"
                                                 _g23890_)))
                                    (let ((_target2164621907_
                                           (values-ref _g23889_ 0))
                                          (_tl2164821909_
                                           (values-ref _g23889_ 1)))
                                      (letrec ((_loop2164921912_
                                                (lambda (_hd2164721915_
                                                         _arg2165321917_)
                                                  (if (gx#stx-pair?
                                                       _hd2164721915_)
                                                      (let ((_e2165021920_
                                                             (gx#stx-e
                                                              _hd2164721915_)))
                                                        (let ((_lp-hd2165121923_
                                                               (##car _e2165021920_))
                                                              (_lp-tl2165221925_
                                                               (##cdr _e2165021920_)))
                                                          (_loop2164921912_
                                                           _lp-tl2165221925_
                                                           (cons _lp-hd2165121923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2165321917_))))
              (let ((_arg2165421928_ (reverse _arg2165321917_)))
                (if (gx#stx-pair? _tl2164521904_)
                    (let ((_e2165521931_ (gx#stx-e _tl2164521904_)))
                      (let ((_hd2165621934_ (##car _e2165521931_))
                            (_tl2165721936_ (##cdr _e2165521931_)))
                        (if (gx#stx-pair? _hd2165621934_)
                            (let ((_e2165821939_ (gx#stx-e _hd2165621934_)))
                              (let ((_hd2165921942_ (##car _e2165821939_))
                                    (_tl2166021944_ (##cdr _e2165821939_)))
                                (if (gx#identifier? _hd2165921942_)
                                    (if (gx#stx-eq? '%#call _hd2165921942_)
                                        (if (gx#stx-pair? _tl2166021944_)
                                            (let ((_e2166121947_
                                                   (gx#stx-e _tl2166021944_)))
                                              (let ((_hd2166221950_
                                                     (##car _e2166121947_))
                                                    (_tl2166321952_
                                                     (##cdr _e2166121947_)))
                                                (if (gx#stx-pair?
                                                     _hd2166221950_)
                                                    (let ((_e2166421955_
                                                           (gx#stx-e
                                                            _hd2166221950_)))
                                                      (let ((_hd2166521958_
                                                             (##car _e2166421955_))
                                                            (_tl2166621960_
                                                             (##cdr _e2166421955_)))
                                                        (if (gx#identifier?
                                                             _hd2166521958_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2166521958_)
                        (if (gx#stx-pair? _tl2166621960_)
                            (let ((_e2166721963_ (gx#stx-e _tl2166621960_)))
                              (let ((_hd2166821966_ (##car _e2166721963_))
                                    (_tl2166921968_ (##cdr _e2166721963_)))
                                (if (gx#stx-null? _tl2166921968_)
                                    (if (gx#stx-pair? _tl2166321952_)
                                        (let ((_e2167021971_
                                               (gx#stx-e _tl2166321952_)))
                                          (let ((_hd2167121974_
                                                 (##car _e2167021971_))
                                                (_tl2167221976_
                                                 (##cdr _e2167021971_)))
                                            (if (gx#stx-pair? _hd2167121974_)
                                                (let ((_e2167321979_
                                                       (gx#stx-e
                                                        _hd2167121974_)))
                                                  (let ((_hd2167421982_
                                                         (##car _e2167321979_))
                                                        (_tl2167521984_
                                                         (##cdr _e2167321979_)))
                                                    (if (gx#identifier?
                                                         _hd2167421982_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2167421982_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2167521984_)
                        (let ((_e2167621987_ (gx#stx-e _tl2167521984_)))
                          (let ((_hd2167721990_ (##car _e2167621987_))
                                (_tl2167821992_ (##cdr _e2167621987_)))
                            (if (gx#stx-null? _tl2167821992_)
                                (if (gx#stx-pair/null? _tl2167221976_)
                                    (if (fx>= (gx#stx-length _tl2167221976_)
                                              '1)
                                        (let ((_g23891_
                                               (gx#syntax-split-splice
                                                _tl2167221976_
                                                '1)))
                                          (begin
                                            (let ((_g23892_
                                                   (values-count _g23891_)))
                                              (if (not (fx= _g23892_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23892_)))
                                            (let ((_target2167921995_
                                                   (values-ref _g23891_ 0))
                                                  (_tl2168121997_
                                                   (values-ref _g23891_ 1)))
                                              (if (gx#stx-pair? _tl2168121997_)
                                                  (let ((_e2168822000_
                                                         (gx#stx-e
                                                          _tl2168121997_)))
                                                    (let ((_hd2168922003_
                                                           (##car _e2168822000_))
                                                          (_tl2169022005_
                                                           (##cdr _e2168822000_)))
                                                      (if (gx#stx-pair?
                                                           _hd2168922003_)
                                                          (let ((_e2169122008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2168922003_)))
                    (let ((_hd2169222011_ (##car _e2169122008_))
                          (_tl2169322013_ (##cdr _e2169122008_)))
                      (if (gx#identifier? _hd2169222011_)
                          (if (gx#stx-eq? '%#ref _hd2169222011_)
                              (if (gx#stx-pair? _tl2169322013_)
                                  (let ((_e2169422016_
                                         (gx#stx-e _tl2169322013_)))
                                    (let ((_hd2169522019_
                                           (##car _e2169422016_))
                                          (_tl2169622021_
                                           (##cdr _e2169422016_)))
                                      (if (gx#stx-null? _tl2169622021_)
                                          (if (gx#stx-null? _tl2169022005_)
                                              (letrec ((_loop2168222024_
                                                        (lambda (_hd2168022027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2168622029_)
                  (if (gx#stx-pair? _hd2168022027_)
                      (let ((_e2168322032_ (gx#stx-e _hd2168022027_)))
                        (let ((_lp-hd2168422035_ (##car _e2168322032_))
                              (_lp-tl2168522037_ (##cdr _e2168322032_)))
                          (if (gx#stx-pair? _lp-hd2168422035_)
                              (let ((_e2169722040_
                                     (gx#stx-e _lp-hd2168422035_)))
                                (let ((_hd2169822043_ (##car _e2169722040_))
                                      (_tl2169922045_ (##cdr _e2169722040_)))
                                  (if (gx#identifier? _hd2169822043_)
                                      (if (gx#stx-eq? '%#ref _hd2169822043_)
                                          (if (gx#stx-pair? _tl2169922045_)
                                              (let ((_e2170022048_
                                                     (gx#stx-e
                                                      _tl2169922045_)))
                                                (let ((_hd2170122051_
                                                       (##car _e2170022048_))
                                                      (_tl2170222053_
                                                       (##cdr _e2170022048_)))
                                                  (if (gx#stx-null?
                                                       _tl2170222053_)
                                                      (_loop2168222024_
                                                       _lp-tl2168522037_
                                                       (cons _hd2170122051_
                                                             _xarg2168622029_))
                                                      (_g2158821894_
                                                       _g2159121897_))))
                                              (_g2158821894_ _g2159121897_))
                                          (_g2158821894_ _g2159121897_))
                                      (_g2158821894_ _g2159121897_))))
                              (_g2158821894_ _g2159121897_))))
                      (let ((_xarg2168722056_ (reverse _xarg2168622029_)))
                        (if (gx#stx-null? _tl2165721936_)
                            ((lambda (_L22059_
                                      _L22060_
                                      _L22061_
                                      _L22062_
                                      _L22063_
                                      _L22064_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2210722110_
                                                           _g2210822112_)
                                                    (cons _g2210722110_
                                                          _g2210822112_))
                                                  '()
                                                  _L22064_)))
                                       (if (gx#identifier? _L22063_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L22062_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2211422117_ _g2211522119_)
                                    (cons _g2211422117_ _g2211522119_))
                                  '()
                                  _L22064_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2212122124_ _g2212222126_)
                                    (cons _g2212122124_ _g2212222126_))
                                  '()
                                  _L22060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2212822131_ _g2212922133_)
                                    (cons _g2212822131_ _g2212922133_))
                                  '()
                                  _L22064_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2213522138_ _g2213622140_)
                                    (cons _g2213522138_ _g2213622140_))
                                  '()
                                  _L22060_)))
               (if (gx#free-identifier=? _L22063_ _L22059_)
                   (not (find (lambda (_g2214222144_)
                                (gx#free-identifier=? _g2214222144_ _L22061_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2214622149_ _g2214722151_)
                                          (cons _g2214622149_ _g2214722151_))
                                        (cons _L22063_ '())
                                        _L22064_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2158821894_ _g2159121897_)))
                             _hd2169522019_
                             _xarg2168722056_
                             _hd2167721990_
                             _hd2166821966_
                             _tl2164821909_
                             _arg2165421928_)
                            (_g2158821894_ _g2159121897_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2168222024_
                                                 _target2167921995_
                                                 '()))
                                              (_g2158821894_ _g2159121897_))
                                          (_g2158821894_ _g2159121897_))))
                                  (_g2158821894_ _g2159121897_))
                              (_g2158821894_ _g2159121897_))
                          (_g2158821894_ _g2159121897_))))
                  (_g2158821894_ _g2159121897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2158821894_
                                                   _g2159121897_)))))
                                        (_g2158821894_ _g2159121897_))
                                    (_g2158821894_ _g2159121897_))
                                (_g2158821894_ _g2159121897_))))
                        (_g2158821894_ _g2159121897_))
                    (_g2158821894_ _g2159121897_))
                (_g2158821894_ _g2159121897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2158821894_
                                                 _g2159121897_))))
                                        (_g2158821894_ _g2159121897_))
                                    (_g2158821894_ _g2159121897_))))
                            (_g2158821894_ _g2159121897_))
                        (_g2158821894_ _g2159121897_))
                    (_g2158821894_ _g2159121897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2158821894_
                                                     _g2159121897_))))
                                            (_g2158821894_ _g2159121897_))
                                        (_g2158821894_ _g2159121897_))
                                    (_g2158821894_ _g2159121897_))))
                            (_g2158821894_ _g2159121897_))))
                    (_g2158821894_ _g2159121897_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2164921912_
                                         _target2164621907_
                                         '())))))
                                (_g2158821894_ _g2159121897_))
                            (_g2158821894_ _g2159121897_))))
                    (_g2158821894_ _g2159121897_))))
             (_g2158622348_
              (lambda (_g2159122157_)
                (if (gx#stx-pair? _g2159122157_)
                    (let ((_e2159522159_ (gx#stx-e _g2159122157_)))
                      (let ((_hd2159622162_ (##car _e2159522159_))
                            (_tl2159722164_ (##cdr _e2159522159_)))
                        (if (gx#stx-pair/null? _hd2159622162_)
                            (if (fx>= (gx#stx-length _hd2159622162_) '0)
                                (let ((_g23893_
                                       (gx#syntax-split-splice
                                        _hd2159622162_
                                        '0)))
                                  (begin
                                    (let ((_g23894_ (values-count _g23893_)))
                                      (if (not (fx= _g23894_ 2))
                                          (error "Context expects 2 values"
                                                 _g23894_)))
                                    (let ((_target2159822167_
                                           (values-ref _g23893_ 0))
                                          (_tl2160022169_
                                           (values-ref _g23893_ 1)))
                                      (if (gx#stx-null? _tl2160022169_)
                                          (letrec ((_loop2160122172_
                                                    (lambda (_hd2159922175_
                                                             _arg2160522177_)
                                                      (if (gx#stx-pair?
                                                           _hd2159922175_)
                                                          (let ((_e2160222180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2159922175_)))
                    (let ((_lp-hd2160322183_ (##car _e2160222180_))
                          (_lp-tl2160422185_ (##cdr _e2160222180_)))
                      (_loop2160122172_
                       _lp-tl2160422185_
                       (cons _lp-hd2160322183_ _arg2160522177_))))
                  (let ((_arg2160622188_ (reverse _arg2160522177_)))
                    (if (gx#stx-pair? _tl2159722164_)
                        (let ((_e2160722191_ (gx#stx-e _tl2159722164_)))
                          (let ((_hd2160822194_ (##car _e2160722191_))
                                (_tl2160922196_ (##cdr _e2160722191_)))
                            (if (gx#stx-pair? _hd2160822194_)
                                (let ((_e2161022199_
                                       (gx#stx-e _hd2160822194_)))
                                  (let ((_hd2161122202_ (##car _e2161022199_))
                                        (_tl2161222204_ (##cdr _e2161022199_)))
                                    (if (gx#identifier? _hd2161122202_)
                                        (if (gx#stx-eq? '%#call _hd2161122202_)
                                            (if (gx#stx-pair? _tl2161222204_)
                                                (let ((_e2161322207_
                                                       (gx#stx-e
                                                        _tl2161222204_)))
                                                  (let ((_hd2161422210_
                                                         (##car _e2161322207_))
                                                        (_tl2161522212_
                                                         (##cdr _e2161322207_)))
                                                    (if (gx#stx-pair?
                                                         _hd2161422210_)
                                                        (let ((_e2161622215_
                                                               (gx#stx-e
                                                                _hd2161422210_)))
                                                          (let ((_hd2161722218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2161622215_))
                        (_tl2161822220_ (##cdr _e2161622215_)))
                    (if (gx#identifier? _hd2161722218_)
                        (if (gx#stx-eq? '%#ref _hd2161722218_)
                            (if (gx#stx-pair? _tl2161822220_)
                                (let ((_e2161922223_
                                       (gx#stx-e _tl2161822220_)))
                                  (let ((_hd2162022226_ (##car _e2161922223_))
                                        (_tl2162122228_ (##cdr _e2161922223_)))
                                    (if (gx#stx-null? _tl2162122228_)
                                        (if (gx#stx-pair/null? _tl2161522212_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2161522212_)
                                                      '0)
                                                (let ((_g23895_
                                                       (gx#syntax-split-splice
                                                        _tl2161522212_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23896_
                                                           (values-count
                                                            _g23895_)))
                                                      (if (not (fx= _g23896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2162222231_
                                                           (values-ref
                                                            _g23895_
                                                            0))
                                                          (_tl2162422233_
                                                           (values-ref
                                                            _g23895_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2162422233_)
                                                          (letrec ((_loop2162522236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2162322239_ _xarg2162922241_)
                              (if (gx#stx-pair? _hd2162322239_)
                                  (let ((_e2162622244_
                                         (gx#stx-e _hd2162322239_)))
                                    (let ((_lp-hd2162722247_
                                           (##car _e2162622244_))
                                          (_lp-tl2162822249_
                                           (##cdr _e2162622244_)))
                                      (if (gx#stx-pair? _lp-hd2162722247_)
                                          (let ((_e2163122252_
                                                 (gx#stx-e _lp-hd2162722247_)))
                                            (let ((_hd2163222255_
                                                   (##car _e2163122252_))
                                                  (_tl2163322257_
                                                   (##cdr _e2163122252_)))
                                              (if (gx#identifier?
                                                   _hd2163222255_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2163222255_)
                                                      (if (gx#stx-pair?
                                                           _tl2163322257_)
                                                          (let ((_e2163422260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2163322257_)))
                    (let ((_hd2163522263_ (##car _e2163422260_))
                          (_tl2163622265_ (##cdr _e2163422260_)))
                      (if (gx#stx-null? _tl2163622265_)
                          (_loop2162522236_
                           _lp-tl2162822249_
                           (cons _hd2163522263_ _xarg2162922241_))
                          (_g2158722154_ _g2159122157_))))
                  (_g2158722154_ _g2159122157_))
              (_g2158722154_ _g2159122157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2158722154_
                                                   _g2159122157_))))
                                          (_g2158722154_ _g2159122157_))))
                                  (let ((_xarg2163022268_
                                         (reverse _xarg2162922241_)))
                                    (if (gx#stx-null? _tl2160922196_)
                                        ((lambda (_L22271_ _L22272_ _L22273_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2230122304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2230222306_)
                        (cons _g2230122304_ _g2230222306_))
                      '()
                      _L22273_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2230822311_ _g2230922313_)
                                        (cons _g2230822311_ _g2230922313_))
                                      '()
                                      _L22273_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2231522318_ _g2231622320_)
                                        (cons _g2231522318_ _g2231622320_))
                                      '()
                                      _L22271_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2232222325_ _g2232322327_)
                                        (cons _g2232222325_ _g2232322327_))
                                      '()
                                      _L22273_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2232922332_ _g2233022334_)
                                        (cons _g2232922332_ _g2233022334_))
                                      '()
                                      _L22271_)))
                   (not (find (lambda (_g2233622338_)
                                (gx#free-identifier=? _g2233622338_ _L22272_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2234022343_ _g2234122345_)
                                          (cons _g2234022343_ _g2234122345_))
                                        '()
                                        _L22273_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2158722154_ _g2159122157_)))
                                         _xarg2163022268_
                                         _hd2162022226_
                                         _arg2160622188_)
                                        (_g2158722154_ _g2159122157_)))))))
                    (_loop2162522236_ _target2162222231_ '()))
                  (_g2158722154_ _g2159122157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2158722154_ _g2159122157_))
                                            (_g2158722154_ _g2159122157_))
                                        (_g2158722154_ _g2159122157_))))
                                (_g2158722154_ _g2159122157_))
                            (_g2158722154_ _g2159122157_))
                        (_g2158722154_ _g2159122157_))))
                (_g2158722154_ _g2159122157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2158722154_ _g2159122157_))
                                            (_g2158722154_ _g2159122157_))
                                        (_g2158722154_ _g2159122157_))))
                                (_g2158722154_ _g2159122157_))))
                        (_g2158722154_ _g2159122157_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2160122172_
                                             _target2159822167_
                                             '()))
                                          (_g2158722154_ _g2159122157_)))))
                                (_g2158722154_ _g2159122157_))
                            (_g2158722154_ _g2159122157_))))
                    (_g2158722154_ _g2159122157_)))))
        (_g2158622348_ _form21585_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21053_)
      (let* ((_g2105721181_
              (lambda (_g2105821178_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2105821178_)))
             (_g2105621298_
              (lambda (_g2105821184_)
                (if (gx#stx-pair? _g2105821184_)
                    (let ((_e2114721186_ (gx#stx-e _g2105821184_)))
                      (let ((_hd2114821189_ (##car _e2114721186_))
                            (_tl2114921191_ (##cdr _e2114721186_)))
                        (if (gx#stx-pair? _tl2114921191_)
                            (let ((_e2115021194_ (gx#stx-e _tl2114921191_)))
                              (let ((_hd2115121197_ (##car _e2115021194_))
                                    (_tl2115221199_ (##cdr _e2115021194_)))
                                (if (gx#stx-pair? _hd2115121197_)
                                    (let ((_e2115321202_
                                           (gx#stx-e _hd2115121197_)))
                                      (let ((_hd2115421205_
                                             (##car _e2115321202_))
                                            (_tl2115521207_
                                             (##cdr _e2115321202_)))
                                        (if (gx#identifier? _hd2115421205_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2115421205_)
                                                (if (gx#stx-pair?
                                                     _tl2115521207_)
                                                    (let ((_e2115621210_
                                                           (gx#stx-e
                                                            _tl2115521207_)))
                                                      (let ((_hd2115721213_
                                                             (##car _e2115621210_))
                                                            (_tl2115821215_
                                                             (##cdr _e2115621210_)))
                                                        (if (gx#stx-pair?
                                                             _hd2115721213_)
                                                            (let ((_e2115921218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2115721213_)))
                      (let ((_hd2116021221_ (##car _e2115921218_))
                            (_tl2116121223_ (##cdr _e2115921218_)))
                        (if (gx#identifier? _hd2116021221_)
                            (if (gx#stx-eq? '%#ref _hd2116021221_)
                                (if (gx#stx-pair? _tl2116121223_)
                                    (let ((_e2116221226_
                                           (gx#stx-e _tl2116121223_)))
                                      (let ((_hd2116321229_
                                             (##car _e2116221226_))
                                            (_tl2116421231_
                                             (##cdr _e2116221226_)))
                                        (if (gx#stx-null? _tl2116421231_)
                                            (if (gx#stx-pair? _tl2115821215_)
                                                (let ((_e2116521234_
                                                       (gx#stx-e
                                                        _tl2115821215_)))
                                                  (let ((_hd2116621237_
                                                         (##car _e2116521234_))
                                                        (_tl2116721239_
                                                         (##cdr _e2116521234_)))
                                                    (if (gx#stx-pair?
                                                         _hd2116621237_)
                                                        (let ((_e2116821242_
                                                               (gx#stx-e
                                                                _hd2116621237_)))
                                                          (let ((_hd2116921245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2116821242_))
                        (_tl2117021247_ (##cdr _e2116821242_)))
                    (if (gx#identifier? _hd2116921245_)
                        (if (gx#stx-eq? '%#ref _hd2116921245_)
                            (if (gx#stx-pair? _tl2117021247_)
                                (let ((_e2117121250_
                                       (gx#stx-e _tl2117021247_)))
                                  (let ((_hd2117221253_ (##car _e2117121250_))
                                        (_tl2117321255_ (##cdr _e2117121250_)))
                                    (if (gx#stx-null? _tl2117321255_)
                                        (if (gx#stx-pair? _tl2116721239_)
                                            (let ((_e2117421258_
                                                   (gx#stx-e _tl2116721239_)))
                                              (let ((_hd2117521261_
                                                     (##car _e2117421258_))
                                                    (_tl2117621263_
                                                     (##cdr _e2117421258_)))
                                                (if (gx#stx-null?
                                                     _tl2117621263_)
                                                    (if (gx#stx-null?
                                                         _tl2115221199_)
                                                        ((lambda (_L21266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21267_
                          _L21268_)
                   (gxc#generate-runtime-binding-id _L21266_))
                 _hd2117221253_
                 _hd2116321229_
                 _hd2114821189_)
                (_g2105721181_ _g2105821184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2105721181_
                                                     _g2105821184_))))
                                            (_g2105721181_ _g2105821184_))
                                        (_g2105721181_ _g2105821184_))))
                                (_g2105721181_ _g2105821184_))
                            (_g2105721181_ _g2105821184_))
                        (_g2105721181_ _g2105821184_))))
                (_g2105721181_ _g2105821184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2105721181_ _g2105821184_))
                                            (_g2105721181_ _g2105821184_))))
                                    (_g2105721181_ _g2105821184_))
                                (_g2105721181_ _g2105821184_))
                            (_g2105721181_ _g2105821184_))))
                    (_g2105721181_ _g2105821184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2105721181_
                                                     _g2105821184_))
                                                (_g2105721181_ _g2105821184_))
                                            (_g2105721181_ _g2105821184_))))
                                    (_g2105721181_ _g2105821184_))))
                            (_g2105721181_ _g2105821184_))))
                    (_g2105721181_ _g2105821184_))))
             (_g2105521434_
              (lambda (_g2105821301_)
                (if (gx#stx-pair? _g2105821301_)
                    (let ((_e2110821303_ (gx#stx-e _g2105821301_)))
                      (let ((_hd2110921306_ (##car _e2110821303_))
                            (_tl2111021308_ (##cdr _e2110821303_)))
                        (if (gx#stx-pair/null? _hd2110921306_)
                            (if (fx>= (gx#stx-length _hd2110921306_) '0)
                                (let ((_g23897_
                                       (gx#syntax-split-splice
                                        _hd2110921306_
                                        '0)))
                                  (begin
                                    (let ((_g23898_ (values-count _g23897_)))
                                      (if (not (fx= _g23898_ 2))
                                          (error "Context expects 2 values"
                                                 _g23898_)))
                                    (let ((_target2111121311_
                                           (values-ref _g23897_ 0))
                                          (_tl2111321313_
                                           (values-ref _g23897_ 1)))
                                      (letrec ((_loop2111421316_
                                                (lambda (_hd2111221319_
                                                         _arg2111821321_)
                                                  (if (gx#stx-pair?
                                                       _hd2111221319_)
                                                      (let ((_e2111521324_
                                                             (gx#stx-e
                                                              _hd2111221319_)))
                                                        (let ((_lp-hd2111621327_
                                                               (##car _e2111521324_))
                                                              (_lp-tl2111721329_
                                                               (##cdr _e2111521324_)))
                                                          (_loop2111421316_
                                                           _lp-tl2111721329_
                                                           (cons _lp-hd2111621327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2111821321_))))
              (let ((_arg2111921332_ (reverse _arg2111821321_)))
                (if (gx#stx-pair? _tl2111021308_)
                    (let ((_e2112021335_ (gx#stx-e _tl2111021308_)))
                      (let ((_hd2112121338_ (##car _e2112021335_))
                            (_tl2112221340_ (##cdr _e2112021335_)))
                        (if (gx#stx-pair? _hd2112121338_)
                            (let ((_e2112321343_ (gx#stx-e _hd2112121338_)))
                              (let ((_hd2112421346_ (##car _e2112321343_))
                                    (_tl2112521348_ (##cdr _e2112321343_)))
                                (if (gx#identifier? _hd2112421346_)
                                    (if (gx#stx-eq? '%#call _hd2112421346_)
                                        (if (gx#stx-pair? _tl2112521348_)
                                            (let ((_e2112621351_
                                                   (gx#stx-e _tl2112521348_)))
                                              (let ((_hd2112721354_
                                                     (##car _e2112621351_))
                                                    (_tl2112821356_
                                                     (##cdr _e2112621351_)))
                                                (if (gx#stx-pair?
                                                     _hd2112721354_)
                                                    (let ((_e2112921359_
                                                           (gx#stx-e
                                                            _hd2112721354_)))
                                                      (let ((_hd2113021362_
                                                             (##car _e2112921359_))
                                                            (_tl2113121364_
                                                             (##cdr _e2112921359_)))
                                                        (if (gx#identifier?
                                                             _hd2113021362_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2113021362_)
                        (if (gx#stx-pair? _tl2113121364_)
                            (let ((_e2113221367_ (gx#stx-e _tl2113121364_)))
                              (let ((_hd2113321370_ (##car _e2113221367_))
                                    (_tl2113421372_ (##cdr _e2113221367_)))
                                (if (gx#stx-null? _tl2113421372_)
                                    (if (gx#stx-pair? _tl2112821356_)
                                        (let ((_e2113521375_
                                               (gx#stx-e _tl2112821356_)))
                                          (let ((_hd2113621378_
                                                 (##car _e2113521375_))
                                                (_tl2113721380_
                                                 (##cdr _e2113521375_)))
                                            (if (gx#stx-pair? _hd2113621378_)
                                                (let ((_e2113821383_
                                                       (gx#stx-e
                                                        _hd2113621378_)))
                                                  (let ((_hd2113921386_
                                                         (##car _e2113821383_))
                                                        (_tl2114021388_
                                                         (##cdr _e2113821383_)))
                                                    (if (gx#identifier?
                                                         _hd2113921386_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2113921386_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2114021388_)
                        (let ((_e2114121391_ (gx#stx-e _tl2114021388_)))
                          (let ((_hd2114221394_ (##car _e2114121391_))
                                (_tl2114321396_ (##cdr _e2114121391_)))
                            (if (gx#stx-null? _tl2114321396_)
                                (if (gx#stx-null? _tl2112221340_)
                                    ((lambda (_L21399_
                                              _L21400_
                                              _L21401_
                                              _L21402_)
                                       (gxc#generate-runtime-binding-id
                                        _L21399_))
                                     _hd2114221394_
                                     _hd2113321370_
                                     _tl2111321313_
                                     _arg2111921332_)
                                    (_g2105621298_ _g2105821301_))
                                (_g2105621298_ _g2105821301_))))
                        (_g2105621298_ _g2105821301_))
                    (_g2105621298_ _g2105821301_))
                (_g2105621298_ _g2105821301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2105621298_
                                                 _g2105821301_))))
                                        (_g2105621298_ _g2105821301_))
                                    (_g2105621298_ _g2105821301_))))
                            (_g2105621298_ _g2105821301_))
                        (_g2105621298_ _g2105821301_))
                    (_g2105621298_ _g2105821301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2105621298_
                                                     _g2105821301_))))
                                            (_g2105621298_ _g2105821301_))
                                        (_g2105621298_ _g2105821301_))
                                    (_g2105621298_ _g2105821301_))))
                            (_g2105621298_ _g2105821301_))))
                    (_g2105621298_ _g2105821301_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2111421316_
                                         _target2111121311_
                                         '())))))
                                (_g2105621298_ _g2105821301_))
                            (_g2105621298_ _g2105821301_))))
                    (_g2105621298_ _g2105821301_))))
             (_g2105421582_
              (lambda (_g2105821437_)
                (if (gx#stx-pair? _g2105821437_)
                    (let ((_e2106221439_ (gx#stx-e _g2105821437_)))
                      (let ((_hd2106321442_ (##car _e2106221439_))
                            (_tl2106421444_ (##cdr _e2106221439_)))
                        (if (gx#stx-pair/null? _hd2106321442_)
                            (if (fx>= (gx#stx-length _hd2106321442_) '0)
                                (let ((_g23899_
                                       (gx#syntax-split-splice
                                        _hd2106321442_
                                        '0)))
                                  (begin
                                    (let ((_g23900_ (values-count _g23899_)))
                                      (if (not (fx= _g23900_ 2))
                                          (error "Context expects 2 values"
                                                 _g23900_)))
                                    (let ((_target2106521447_
                                           (values-ref _g23899_ 0))
                                          (_tl2106721449_
                                           (values-ref _g23899_ 1)))
                                      (if (gx#stx-null? _tl2106721449_)
                                          (letrec ((_loop2106821452_
                                                    (lambda (_hd2106621455_
                                                             _arg2107221457_)
                                                      (if (gx#stx-pair?
                                                           _hd2106621455_)
                                                          (let ((_e2106921460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2106621455_)))
                    (let ((_lp-hd2107021463_ (##car _e2106921460_))
                          (_lp-tl2107121465_ (##cdr _e2106921460_)))
                      (_loop2106821452_
                       _lp-tl2107121465_
                       (cons _lp-hd2107021463_ _arg2107221457_))))
                  (let ((_arg2107321468_ (reverse _arg2107221457_)))
                    (if (gx#stx-pair? _tl2106421444_)
                        (let ((_e2107421471_ (gx#stx-e _tl2106421444_)))
                          (let ((_hd2107521474_ (##car _e2107421471_))
                                (_tl2107621476_ (##cdr _e2107421471_)))
                            (if (gx#stx-pair? _hd2107521474_)
                                (let ((_e2107721479_
                                       (gx#stx-e _hd2107521474_)))
                                  (let ((_hd2107821482_ (##car _e2107721479_))
                                        (_tl2107921484_ (##cdr _e2107721479_)))
                                    (if (gx#identifier? _hd2107821482_)
                                        (if (gx#stx-eq? '%#call _hd2107821482_)
                                            (if (gx#stx-pair? _tl2107921484_)
                                                (let ((_e2108021487_
                                                       (gx#stx-e
                                                        _tl2107921484_)))
                                                  (let ((_hd2108121490_
                                                         (##car _e2108021487_))
                                                        (_tl2108221492_
                                                         (##cdr _e2108021487_)))
                                                    (if (gx#stx-pair?
                                                         _hd2108121490_)
                                                        (let ((_e2108321495_
                                                               (gx#stx-e
                                                                _hd2108121490_)))
                                                          (let ((_hd2108421498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2108321495_))
                        (_tl2108521500_ (##cdr _e2108321495_)))
                    (if (gx#identifier? _hd2108421498_)
                        (if (gx#stx-eq? '%#ref _hd2108421498_)
                            (if (gx#stx-pair? _tl2108521500_)
                                (let ((_e2108621503_
                                       (gx#stx-e _tl2108521500_)))
                                  (let ((_hd2108721506_ (##car _e2108621503_))
                                        (_tl2108821508_ (##cdr _e2108621503_)))
                                    (if (gx#stx-null? _tl2108821508_)
                                        (if (gx#stx-pair/null? _tl2108221492_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2108221492_)
                                                      '0)
                                                (let ((_g23901_
                                                       (gx#syntax-split-splice
                                                        _tl2108221492_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23902_
                                                           (values-count
                                                            _g23901_)))
                                                      (if (not (fx= _g23902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2108921511_
                                                           (values-ref
                                                            _g23901_
                                                            0))
                                                          (_tl2109121513_
                                                           (values-ref
                                                            _g23901_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2109121513_)
                                                          (letrec ((_loop2109221516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2109021519_ _xarg2109621521_)
                              (if (gx#stx-pair? _hd2109021519_)
                                  (let ((_e2109321524_
                                         (gx#stx-e _hd2109021519_)))
                                    (let ((_lp-hd2109421527_
                                           (##car _e2109321524_))
                                          (_lp-tl2109521529_
                                           (##cdr _e2109321524_)))
                                      (if (gx#stx-pair? _lp-hd2109421527_)
                                          (let ((_e2109821532_
                                                 (gx#stx-e _lp-hd2109421527_)))
                                            (let ((_hd2109921535_
                                                   (##car _e2109821532_))
                                                  (_tl2110021537_
                                                   (##cdr _e2109821532_)))
                                              (if (gx#identifier?
                                                   _hd2109921535_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2109921535_)
                                                      (if (gx#stx-pair?
                                                           _tl2110021537_)
                                                          (let ((_e2110121540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2110021537_)))
                    (let ((_hd2110221543_ (##car _e2110121540_))
                          (_tl2110321545_ (##cdr _e2110121540_)))
                      (if (gx#stx-null? _tl2110321545_)
                          (_loop2109221516_
                           _lp-tl2109521529_
                           (cons _hd2110221543_ _xarg2109621521_))
                          (_g2105521434_ _g2105821437_))))
                  (_g2105521434_ _g2105821437_))
              (_g2105521434_ _g2105821437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2105521434_
                                                   _g2105821437_))))
                                          (_g2105521434_ _g2105821437_))))
                                  (let ((_xarg2109721548_
                                         (reverse _xarg2109621521_)))
                                    (if (gx#stx-null? _tl2107621476_)
                                        ((lambda (_L21551_ _L21552_ _L21553_)
                                           (gxc#generate-runtime-binding-id
                                            _L21552_))
                                         _xarg2109721548_
                                         _hd2108721506_
                                         _arg2107321468_)
                                        (_g2105521434_ _g2105821437_)))))))
                    (_loop2109221516_ _target2108921511_ '()))
                  (_g2105521434_ _g2105821437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2105521434_ _g2105821437_))
                                            (_g2105521434_ _g2105821437_))
                                        (_g2105521434_ _g2105821437_))))
                                (_g2105521434_ _g2105821437_))
                            (_g2105521434_ _g2105821437_))
                        (_g2105521434_ _g2105821437_))))
                (_g2105521434_ _g2105821437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2105521434_ _g2105821437_))
                                            (_g2105521434_ _g2105821437_))
                                        (_g2105521434_ _g2105821437_))))
                                (_g2105521434_ _g2105821437_))))
                        (_g2105521434_ _g2105821437_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2106821452_
                                             _target2106521447_
                                             '()))
                                          (_g2105521434_ _g2105821437_)))))
                                (_g2105521434_ _g2105821437_))
                            (_g2105521434_ _g2105821437_))))
                    (_g2105521434_ _g2105821437_)))))
        (_g2105421582_ _form21053_))))
  (define gxc#lambda-form-arity
    (lambda (_form20857_)
      (let* ((_g2085920873_
              (lambda (_g2086020870_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2086020870_)))
             (_g2085821050_
              (lambda (_g2086020876_)
                (if (gx#stx-pair? _g2086020876_)
                    (let ((_e2086320878_ (gx#stx-e _g2086020876_)))
                      (let ((_hd2086420881_ (##car _e2086320878_))
                            (_tl2086520883_ (##cdr _e2086320878_)))
                        (if (gx#stx-pair? _tl2086520883_)
                            (let ((_e2086620886_ (gx#stx-e _tl2086520883_)))
                              (let ((_hd2086720889_ (##car _e2086620886_))
                                    (_tl2086820891_ (##cdr _e2086620886_)))
                                (if (gx#stx-null? _tl2086820891_)
                                    ((lambda (_L20894_ _L20895_)
                                       (let* ((_g2091020938_
                                               (lambda (_g2091120935_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2091120935_)))
                                              (_g2090920951_
                                               (lambda (_g2091120941_)
                                                 ((lambda (_L20943_)
                                                    (cons '0 '()))
                                                  _g2091120941_)))
                                              (_g2090821000_
                                               (lambda (_g2091120954_)
                                                 (if (gx#stx-pair/null?
                                                      _g2091120954_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2091120954_)
                                                               '0)
                                                         (let ((_g23903_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2091120954_
                         '0)))
                   (begin
                     (let ((_g23904_ (values-count _g23903_)))
                       (if (not (fx= _g23904_ 2))
                           (error "Context expects 2 values" _g23904_)))
                     (let ((_target2092420956_ (values-ref _g23903_ 0))
                           (_tl2092620958_ (values-ref _g23903_ 1)))
                       (letrec ((_loop2092720961_
                                 (lambda (_hd2092520964_ _arg2093120966_)
                                   (if (gx#stx-pair? _hd2092520964_)
                                       (let ((_e2092820969_
                                              (gx#stx-e _hd2092520964_)))
                                         (let ((_lp-hd2092920972_
                                                (##car _e2092820969_))
                                               (_lp-tl2093020974_
                                                (##cdr _e2092820969_)))
                                           (_loop2092720961_
                                            _lp-tl2093020974_
                                            (cons _lp-hd2092920972_
                                                  _arg2093120966_))))
                                       (let ((_arg2093220977_
                                              (reverse _arg2093120966_)))
                                         ((lambda (_L20980_ _L20981_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2099220995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2099320997_)
                              (cons _g2099220995_ _g2099320997_))
                            '()
                            _L20981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2092620958_
                                          _arg2093220977_))))))
                         (_loop2092720961_ _target2092420956_ '())))))
                 (_g2090920951_ _g2091120954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2090920951_
                                                      _g2091120954_))))
                                              (_g2090721047_
                                               (lambda (_g2091121003_)
                                                 (if (gx#stx-pair/null?
                                                      _g2091121003_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2091121003_)
                                                               '0)
                                                         (let ((_g23905_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2091121003_
                         '0)))
                   (begin
                     (let ((_g23906_ (values-count _g23905_)))
                       (if (not (fx= _g23906_ 2))
                           (error "Context expects 2 values" _g23906_)))
                     (let ((_target2091321005_ (values-ref _g23905_ 0))
                           (_tl2091521007_ (values-ref _g23905_ 1)))
                       (if (gx#stx-null? _tl2091521007_)
                           (letrec ((_loop2091621010_
                                     (lambda (_hd2091421013_ _arg2092021015_)
                                       (if (gx#stx-pair? _hd2091421013_)
                                           (let ((_e2091721018_
                                                  (gx#stx-e _hd2091421013_)))
                                             (let ((_lp-hd2091821021_
                                                    (##car _e2091721018_))
                                                   (_lp-tl2091921023_
                                                    (##cdr _e2091721018_)))
                                               (_loop2091621010_
                                                _lp-tl2091921023_
                                                (cons _lp-hd2091821021_
                                                      _arg2092021015_))))
                                           (let ((_arg2092121026_
                                                  (reverse _arg2092021015_)))
                                             ((lambda (_L21029_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2103921042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2104021044_)
                            (cons _g2103921042_ _g2104021044_))
                          '()
                          _L21029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2092121026_))))))
                             (_loop2091621010_ _target2091321005_ '()))
                           (_g2090821000_ _g2091121003_)))))
                 (_g2090821000_ _g2091121003_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2090821000_
                                                      _g2091121003_)))))
                                         (_g2090721047_ _L20895_)))
                                     _hd2086720889_
                                     _hd2086420881_)
                                    (_g2085920873_ _g2086020876_))))
                            (_g2085920873_ _g2086020876_))))
                    (_g2085920873_ _g2086020876_)))))
        (_g2085821050_ _form20857_))))
  (define gxc#lambda-expr?
    (lambda (_expr20810_)
      (let* ((_g2081320823_
              (lambda (_g2081420820_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2081420820_)))
             (_g2081220830_ (lambda (_g2081420826_) ((lambda () '#f))))
             (_g2081120854_
              (lambda (_g2081420833_)
                (if (gx#stx-pair? _g2081420833_)
                    (let ((_e2081620835_ (gx#stx-e _g2081420833_)))
                      (let ((_hd2081720838_ (##car _e2081620835_))
                            (_tl2081820840_ (##cdr _e2081620835_)))
                        (if (gx#identifier? _hd2081720838_)
                            (if (gx#stx-eq? '%#lambda _hd2081720838_)
                                ((lambda (_L20843_) '#t) _tl2081820840_)
                                (_g2081220830_ _g2081420833_))
                            (_g2081220830_ _g2081420833_))))
                    (_g2081220830_ _g2081420833_)))))
        (_g2081120854_ _expr20810_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20763_)
      (let* ((_g2076620776_
              (lambda (_g2076720773_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2076720773_)))
             (_g2076520783_ (lambda (_g2076720779_) ((lambda () '#f))))
             (_g2076420807_
              (lambda (_g2076720786_)
                (if (gx#stx-pair? _g2076720786_)
                    (let ((_e2076920788_ (gx#stx-e _g2076720786_)))
                      (let ((_hd2077020791_ (##car _e2076920788_))
                            (_tl2077120793_ (##cdr _e2076920788_)))
                        (if (gx#identifier? _hd2077020791_)
                            (if (gx#stx-eq? '%#case-lambda _hd2077020791_)
                                ((lambda (_L20796_) '#t) _tl2077120793_)
                                (_g2076520783_ _g2076720786_))
                            (_g2076520783_ _g2076720786_))))
                    (_g2076520783_ _g2076720786_)))))
        (_g2076420807_ _expr20763_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20632_)
      (let* ((_g2063520665_
              (lambda (_g2063620662_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2063620662_)))
             (_g2063420672_ (lambda (_g2063620668_) ((lambda () '#f))))
             (_g2063320760_
              (lambda (_g2063620675_)
                (if (gx#stx-pair? _g2063620675_)
                    (let ((_e2064020677_ (gx#stx-e _g2063620675_)))
                      (let ((_hd2064120680_ (##car _e2064020677_))
                            (_tl2064220682_ (##cdr _e2064020677_)))
                        (if (gx#identifier? _hd2064120680_)
                            (if (gx#stx-eq? '%#let-values _hd2064120680_)
                                (if (gx#stx-pair? _tl2064220682_)
                                    (let ((_e2064320685_
                                           (gx#stx-e _tl2064220682_)))
                                      (let ((_hd2064420688_
                                             (##car _e2064320685_))
                                            (_tl2064520690_
                                             (##cdr _e2064320685_)))
                                        (if (gx#stx-pair? _hd2064420688_)
                                            (let ((_e2064620693_
                                                   (gx#stx-e _hd2064420688_)))
                                              (let ((_hd2064720696_
                                                     (##car _e2064620693_))
                                                    (_tl2064820698_
                                                     (##cdr _e2064620693_)))
                                                (if (gx#stx-pair?
                                                     _hd2064720696_)
                                                    (let ((_e2064920701_
                                                           (gx#stx-e
                                                            _hd2064720696_)))
                                                      (let ((_hd2065020704_
                                                             (##car _e2064920701_))
                                                            (_tl2065120706_
                                                             (##cdr _e2064920701_)))
                                                        (if (gx#stx-pair?
                                                             _hd2065020704_)
                                                            (let ((_e2065220709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2065020704_)))
                      (let ((_hd2065320712_ (##car _e2065220709_))
                            (_tl2065420714_ (##cdr _e2065220709_)))
                        (if (gx#stx-null? _tl2065420714_)
                            (if (gx#stx-pair? _tl2065120706_)
                                (let ((_e2065520717_
                                       (gx#stx-e _tl2065120706_)))
                                  (let ((_hd2065620720_ (##car _e2065520717_))
                                        (_tl2065720722_ (##cdr _e2065520717_)))
                                    (if (gx#stx-null? _tl2065720722_)
                                        (if (gx#stx-null? _tl2064820698_)
                                            (if (gx#stx-pair? _tl2064520690_)
                                                (let ((_e2065820725_
                                                       (gx#stx-e
                                                        _tl2064520690_)))
                                                  (let ((_hd2065920728_
                                                         (##car _e2065820725_))
                                                        (_tl2066020730_
                                                         (##cdr _e2065820725_)))
                                                    (if (gx#stx-null?
                                                         _tl2066020730_)
                                                        ((lambda (_L20733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20734_
                          _L20735_)
                   (if (gx#identifier? _L20735_)
                       (if (gxc#lambda-expr? _L20734_)
                           (gxc#case-lambda-expr? _L20733_)
                           '#f)
                       '#f))
                 _hd2065920728_
                 _hd2065620720_
                 _hd2065320712_)
                (_g2063420672_ _g2063620675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2063420672_ _g2063620675_))
                                            (_g2063420672_ _g2063620675_))
                                        (_g2063420672_ _g2063620675_))))
                                (_g2063420672_ _g2063620675_))
                            (_g2063420672_ _g2063620675_))))
                    (_g2063420672_ _g2063620675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2063420672_
                                                     _g2063620675_))))
                                            (_g2063420672_ _g2063620675_))))
                                    (_g2063420672_ _g2063620675_))
                                (_g2063420672_ _g2063620675_))
                            (_g2063420672_ _g2063620675_))))
                    (_g2063420672_ _g2063620675_)))))
        (_g2063320760_ _expr20632_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx20374_ _id20375_ _clauses20376_ _gensym?20377_)
        (let _lp20379_ ((_rest20381_ _clauses20376_)
                        (_ids20382_ '())
                        (_impls20383_ '())
                        (_clauses20384_ '()))
          (let* ((_rest2038520393_ _rest20381_)
                 (_E2038820397_
                  (lambda () (error '"No clause matching" _rest2038520393_)))
                 (_else2038720401_
                  (lambda ()
                    (values (reverse _ids20382_)
                            (reverse _impls20383_)
                            (reverse _clauses20384_))))
                 (_K2038920606_
                  (lambda (_rest20404_ _clause20405_)
                    (if (gxc#dispatch-lambda-form? _clause20405_)
                        (_lp20379_
                         _rest20404_
                         _ids20382_
                         _impls20383_
                         (cons _clause20405_ _clauses20384_))
                        (let* ((_g2040720418_
                                (lambda (_g2040820415_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2040820415_)))
                               (_g2040620603_
                                (lambda (_g2040820421_)
                                  (if (gx#stx-pair? _g2040820421_)
                                      (let ((_e2041120423_
                                             (gx#stx-e _g2040820421_)))
                                        (let ((_hd2041220426_
                                               (##car _e2041120423_))
                                              (_tl2041320428_
                                               (##cdr _e2041120423_)))
                                          ((lambda (_L20431_ _L20432_)
                                             (let* ((_id20449_
                                                     (make-symbol
                                                      (gx#stx-e _id20375_)
                                                      '"__"
                                                      (length _clauses20384_)
                                                      (if _gensym?20377_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20451_
                                                     (gx#core-quote-syntax__1
                                                      _id20449_
                                                      (gx#stx-source
                                                       _stx20374_)))
                                                    (_impl20453_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20431_))
              _stx20374_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20600_
                                                     (let* ((_g2045720485_
                                                             (lambda (_g2045820482_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2045820482_)))
                                                            (_g2045620501_
                                                             (lambda (_g2045820488_)
                                                               ((lambda (_L20490_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20432_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20490_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20374_)
                                      '())))
                        _g2045820488_)))
                    (_g2045520550_
                     (lambda (_g2045820504_)
                       (if (gx#stx-pair/null? _g2045820504_)
                           (if (fx>= (gx#stx-length _g2045820504_) '0)
                               (let ((_g23907_
                                      (gx#syntax-split-splice
                                       _g2045820504_
                                       '0)))
                                 (begin
                                   (let ((_g23908_ (values-count _g23907_)))
                                     (if (not (fx= _g23908_ 2))
                                         (error "Context expects 2 values"
                                                _g23908_)))
                                   (let ((_target2047120506_
                                          (values-ref _g23907_ 0))
                                         (_tl2047320508_
                                          (values-ref _g23907_ 1)))
                                     (letrec ((_loop2047420511_
                                               (lambda (_hd2047220514_
                                                        _arg2047820516_)
                                                 (if (gx#stx-pair?
                                                      _hd2047220514_)
                                                     (let ((_e2047520519_
                                                            (gx#stx-e
                                                             _hd2047220514_)))
                                                       (let ((_lp-hd2047620522_
                                                              (##car _e2047520519_))
                                                             (_lp-tl2047720524_
                                                              (##cdr _e2047520519_)))
                                                         (_loop2047420511_
                                                          _lp-tl2047720524_
                                                          (cons _lp-hd2047620522_
                                                                _arg2047820516_))))
                                                     (let ((_arg2047920527_
                                                            (reverse _arg2047820516_)))
                                                       ((lambda (_L20530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20531_)
                  (cons _L20432_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20451_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20530_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2054220545_ _g2054320547_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2054220545_ '()))
                                   _g2054320547_))
                           '()
                           _L20531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20374_)
                              '())))
                _tl2047320508_
                _arg2047920527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2047420511_
                                        _target2047120506_
                                        '())))))
                               (_g2045620501_ _g2045820504_))
                           (_g2045620501_ _g2045820504_))))
                    (_g2045420597_
                     (lambda (_g2045820553_)
                       (if (gx#stx-pair/null? _g2045820553_)
                           (if (fx>= (gx#stx-length _g2045820553_) '0)
                               (let ((_g23909_
                                      (gx#syntax-split-splice
                                       _g2045820553_
                                       '0)))
                                 (begin
                                   (let ((_g23910_ (values-count _g23909_)))
                                     (if (not (fx= _g23910_ 2))
                                         (error "Context expects 2 values"
                                                _g23910_)))
                                   (let ((_target2046020555_
                                          (values-ref _g23909_ 0))
                                         (_tl2046220557_
                                          (values-ref _g23909_ 1)))
                                     (if (gx#stx-null? _tl2046220557_)
                                         (letrec ((_loop2046320560_
                                                   (lambda (_hd2046120563_
                                                            _arg2046720565_)
                                                     (if (gx#stx-pair?
                                                          _hd2046120563_)
                                                         (let ((_e2046420568_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2046120563_)))
                   (let ((_lp-hd2046520571_ (##car _e2046420568_))
                         (_lp-tl2046620573_ (##cdr _e2046420568_)))
                     (_loop2046320560_
                      _lp-tl2046620573_
                      (cons _lp-hd2046520571_ _arg2046720565_))))
                 (let ((_arg2046820576_ (reverse _arg2046720565_)))
                   ((lambda (_L20579_)
                      (cons _L20432_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20451_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2058920592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2059020594_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2058920592_ '()))
                         _g2059020594_))
                 '()
                 _L20579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20374_)
                                  '())))
                    _arg2046820576_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2046320560_
                                            _target2046020555_
                                            '()))
                                         (_g2045520550_ _g2045820553_)))))
                               (_g2045520550_ _g2045820553_))
                           (_g2045520550_ _g2045820553_)))))
               (_g2045420597_ _L20432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20379_
                                                _rest20404_
                                                (cons _id20451_ _ids20382_)
                                                (cons _impl20453_ _impls20383_)
                                                (cons _clause20600_
                                                      _clauses20384_))))
                                           _tl2041320428_
                                           _hd2041220426_)))
                                      (_g2040720418_ _g2040820421_)))))
                          (_g2040620603_ _clause20405_))))))
            (if (##pair? _rest2038520393_)
                (let ((_hd2039020609_ (##car _rest2038520393_))
                      (_tl2039120611_ (##cdr _rest2038520393_)))
                  (let* ((_clause20614_ _hd2039020609_)
                         (_rest20616_ _tl2039120611_))
                    (_K2038920606_ _rest20616_ _clause20614_)))
                (_else2038720401_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20621_ _id20622_ _clauses20623_)
          (let ((_gensym?20625_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20621_
             _id20622_
             _clauses20623_
             _gensym?20625_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23912_
          (let ((_g23911_ (length _g23912_)))
            (cond ((fx= _g23911_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23912_))
                  ((fx= _g23911_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g23912_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23912_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19958_)
      (letrec ((_case-lambda-clause-def19960_
                (lambda (_id20370_ _impl20371_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20370_ '())
                               (cons (gxc#compile-e _impl20371_) '())))
                   _stx19958_)))
               (_opt-lambda-dispatch-name19961_
                (lambda (_id20366_)
                  (if (uninterned-symbol? _id20366_)
                      (let ((_str20368_ (symbol->string _id20366_)))
                        (if (string-prefix? _str20368_ '"opt-lambda")
                            '"%"
                            _id20366_))
                      _id20366_))))
        (let* ((_g1996520010_
                (lambda (_g1996620007_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1996620007_)))
               (_g1996420056_
                (lambda (_g1996620013_)
                  (if (gx#stx-pair? _g1996620013_)
                      (let ((_e1999720015_ (gx#stx-e _g1996620013_)))
                        (let ((_hd1999820018_ (##car _e1999720015_))
                              (_tl1999920020_ (##cdr _e1999720015_)))
                          (if (gx#stx-pair? _tl1999920020_)
                              (let ((_e2000020023_ (gx#stx-e _tl1999920020_)))
                                (let ((_hd2000120026_ (##car _e2000020023_))
                                      (_tl2000220028_ (##cdr _e2000020023_)))
                                  (if (gx#stx-pair? _tl2000220028_)
                                      (let ((_e2000320031_
                                             (gx#stx-e _tl2000220028_)))
                                        (let ((_hd2000420034_
                                               (##car _e2000320031_))
                                              (_tl2000520036_
                                               (##cdr _e2000320031_)))
                                          (if (gx#stx-null? _tl2000520036_)
                                              ((lambda (_L20039_ _L20040_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L20040_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20039_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19958_))
                                               _hd2000420034_
                                               _hd2000120026_)
                                              (_g1996520010_ _g1996620013_))))
                                      (_g1996520010_ _g1996620013_))))
                              (_g1996520010_ _g1996620013_))))
                      (_g1996520010_ _g1996620013_))))
               (_g1996320238_
                (lambda (_g1996620059_)
                  (if (gx#stx-pair? _g1996620059_)
                      (let ((_e1998320061_ (gx#stx-e _g1996620059_)))
                        (let ((_hd1998420064_ (##car _e1998320061_))
                              (_tl1998520066_ (##cdr _e1998320061_)))
                          (if (gx#stx-pair? _tl1998520066_)
                              (let ((_e1998620069_ (gx#stx-e _tl1998520066_)))
                                (let ((_hd1998720072_ (##car _e1998620069_))
                                      (_tl1998820074_ (##cdr _e1998620069_)))
                                  (if (gx#stx-pair? _hd1998720072_)
                                      (let ((_e1998920077_
                                             (gx#stx-e _hd1998720072_)))
                                        (let ((_hd1999020080_
                                               (##car _e1998920077_))
                                              (_tl1999120082_
                                               (##cdr _e1998920077_)))
                                          (if (gx#stx-null? _tl1999120082_)
                                              (if (gx#stx-pair? _tl1998820074_)
                                                  (let ((_e1999220085_
                                                         (gx#stx-e
                                                          _tl1998820074_)))
                                                    (let ((_hd1999320088_
                                                           (##car _e1999220085_))
                                                          (_tl1999420090_
                                                           (##cdr _e1999220085_)))
                                                      (if (gx#stx-null?
                                                           _tl1999420090_)
                                                          ((lambda (_L20093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20094_)
                     (if (if (gx#identifier? _L20094_)
                             (gxc#opt-lambda-expr? _L20093_)
                             '#f)
                         (let* ((_g2011020140_
                                 (lambda (_g2011120137_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2011120137_)))
                                (_g2010920235_
                                 (lambda (_g2011120143_)
                                   (if (gx#stx-pair? _g2011120143_)
                                       (let ((_e2011520145_
                                              (gx#stx-e _g2011120143_)))
                                         (let ((_hd2011620148_
                                                (##car _e2011520145_))
                                               (_tl2011720150_
                                                (##cdr _e2011520145_)))
                                           (if (gx#stx-pair? _tl2011720150_)
                                               (let ((_e2011820153_
                                                      (gx#stx-e
                                                       _tl2011720150_)))
                                                 (let ((_hd2011920156_
                                                        (##car _e2011820153_))
                                                       (_tl2012020158_
                                                        (##cdr _e2011820153_)))
                                                   (if (gx#stx-pair?
                                                        _hd2011920156_)
                                                       (let ((_e2012120161_
                                                              (gx#stx-e
                                                               _hd2011920156_)))
                                                         (let ((_hd2012220164_
                                                                (##car _e2012120161_))
                                                               (_tl2012320166_
                                                                (##cdr _e2012120161_)))
                                                           (if (gx#stx-pair?
                                                                _hd2012220164_)
                                                               (let ((_e2012420169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2012220164_)))
                         (let ((_hd2012520172_ (##car _e2012420169_))
                               (_tl2012620174_ (##cdr _e2012420169_)))
                           (if (gx#stx-pair? _hd2012520172_)
                               (let ((_e2012720177_ (gx#stx-e _hd2012520172_)))
                                 (let ((_hd2012820180_ (##car _e2012720177_))
                                       (_tl2012920182_ (##cdr _e2012720177_)))
                                   (if (gx#stx-null? _tl2012920182_)
                                       (if (gx#stx-pair? _tl2012620174_)
                                           (let ((_e2013020185_
                                                  (gx#stx-e _tl2012620174_)))
                                             (let ((_hd2013120188_
                                                    (##car _e2013020185_))
                                                   (_tl2013220190_
                                                    (##cdr _e2013020185_)))
                                               (if (gx#stx-null?
                                                    _tl2013220190_)
                                                   (if (gx#stx-null?
                                                        _tl2012320166_)
                                                       (if (gx#stx-pair?
                                                            _tl2012020158_)
                                                           (let ((_e2013320193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2012020158_)))
                     (let ((_hd2013420196_ (##car _e2013320193_))
                           (_tl2013520198_ (##cdr _e2013320193_)))
                       (if (gx#stx-null? _tl2013520198_)
                           ((lambda (_L20201_ _L20202_ _L20203_)
                              (let* ((_lambda-id20227_
                                      (make-symbol
                                       (gx#stx-e _L20094_)
                                       '"__"
                                       (_opt-lambda-dispatch-name19961_
                                        (gx#stx-e _L20203_))))
                                     (_lambda-id20229_
                                      (gx#core-quote-syntax__1
                                       _lambda-id20227_
                                       (gx#stx-source _stx19958_)))
                                     (_g23913_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id20229_))
                                     (_new-case-lambda-expr20232_
                                      (gxc#apply-expression-subst
                                       _L20201_
                                       _L20203_
                                       _lambda-id20229_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L20094_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id20229_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id20229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L20202_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19958_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L20094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr20232_ '())))
               _stx19958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19958_))))
                            _hd2013420196_
                            _hd2013120188_
                            _hd2012820180_)
                           (_g2011020140_ _g2011120143_))))
                   (_g2011020140_ _g2011120143_))
               (_g2011020140_ _g2011120143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2011020140_
                                                    _g2011120143_))))
                                           (_g2011020140_ _g2011120143_))
                                       (_g2011020140_ _g2011120143_))))
                               (_g2011020140_ _g2011120143_))))
                       (_g2011020140_ _g2011120143_))))
               (_g2011020140_ _g2011120143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2011020140_ _g2011120143_))))
                                       (_g2011020140_ _g2011120143_)))))
                           (_g2010920235_ _L20093_))
                         (_g1996420056_ _g1996620059_)))
                   _hd1999320088_
                   _hd1999020080_)
                  (_g1996420056_ _g1996620059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1996420056_
                                                   _g1996620059_))
                                              (_g1996420056_ _g1996620059_))))
                                      (_g1996420056_ _g1996620059_))))
                              (_g1996420056_ _g1996620059_))))
                      (_g1996420056_ _g1996620059_))))
               (_g1996220363_
                (lambda (_g1996620241_)
                  (if (gx#stx-pair? _g1996620241_)
                      (let ((_e1996920243_ (gx#stx-e _g1996620241_)))
                        (let ((_hd1997020246_ (##car _e1996920243_))
                              (_tl1997120248_ (##cdr _e1996920243_)))
                          (if (gx#stx-pair? _tl1997120248_)
                              (let ((_e1997220251_ (gx#stx-e _tl1997120248_)))
                                (let ((_hd1997320254_ (##car _e1997220251_))
                                      (_tl1997420256_ (##cdr _e1997220251_)))
                                  (if (gx#stx-pair? _hd1997320254_)
                                      (let ((_e1997520259_
                                             (gx#stx-e _hd1997320254_)))
                                        (let ((_hd1997620262_
                                               (##car _e1997520259_))
                                              (_tl1997720264_
                                               (##cdr _e1997520259_)))
                                          (if (gx#stx-null? _tl1997720264_)
                                              (if (gx#stx-pair? _tl1997420256_)
                                                  (let ((_e1997820267_
                                                         (gx#stx-e
                                                          _tl1997420256_)))
                                                    (let ((_hd1997920270_
                                                           (##car _e1997820267_))
                                                          (_tl1998020272_
                                                           (##cdr _e1997820267_)))
                                                      (if (gx#stx-null?
                                                           _tl1998020272_)
                                                          ((lambda (_L20275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20276_)
                     (if (if (gx#identifier? _L20276_)
                             (gxc#case-lambda-expr? _L20275_)
                             '#f)
                         (let* ((_g2029320307_
                                 (lambda (_g2029420304_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2029420304_)))
                                (_g2029220338_
                                 (lambda (_g2029420310_)
                                   (if (gx#stx-pair? _g2029420310_)
                                       (let ((_e2030020312_
                                              (gx#stx-e _g2029420310_)))
                                         (let ((_hd2030120315_
                                                (##car _e2030020312_))
                                               (_tl2030220317_
                                                (##cdr _e2030020312_)))
                                           ((lambda (_L20320_)
                                              (let ((_g23914_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19958_
                                                      _L20276_
                                                      _L20320_)))
                                                (begin
                                                  (let ((_g23915_
                                                         (values-count
                                                          _g23914_)))
                                                    (if (not (fx= _g23915_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23915_)))
                                                  (let ((_ids20330_
                                                         (values-ref
                                                          _g23914_
                                                          0))
                                                        (_impls20331_
                                                         (values-ref
                                                          _g23914_
                                                          1))
                                                        (_clauses20332_
                                                         (values-ref
                                                          _g23914_
                                                          2)))
                                                    (let* ((_g23916_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20330_))
                                                           (_defs20335_
                                                            (map _case-lambda-clause-def19960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20330_
                         _impls20331_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L20276_)
                 '" => "
                 (map gxc#identifier-symbol _ids20330_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L20276_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20332_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19958_)
                                     '())
                               _defs20335_))
                 _stx19958_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2030220317_)))
                                       (_g2029320307_ _g2029420310_))))
                                (_g2029120360_
                                 (lambda (_g2029420341_)
                                   (if (gx#stx-pair? _g2029420341_)
                                       (let ((_e2029620343_
                                              (gx#stx-e _g2029420341_)))
                                         (let ((_hd2029720346_
                                                (##car _e2029620343_))
                                               (_tl2029820348_
                                                (##cdr _e2029620343_)))
                                           ((lambda (_L20351_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20351_)
                                                  _stx19958_
                                                  (_g2029220338_
                                                   _g2029420341_)))
                                            _tl2029820348_)))
                                       (_g2029220338_ _g2029420341_)))))
                           (_g2029120360_ _L20275_))
                         (_g1996320238_ _g1996620241_)))
                   _hd1997920270_
                   _hd1997620262_)
                  (_g1996320238_ _g1996620241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1996320238_
                                                   _g1996620241_))
                                              (_g1996320238_ _g1996620241_))))
                                      (_g1996320238_ _g1996620241_))))
                              (_g1996320238_ _g1996620241_))))
                      (_g1996320238_ _g1996620241_)))))
          (_g1996220363_ _stx19958_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19381_)
      (letrec* ((_bind-e__opt-lambda19940__2386323864_
                 (lambda (_id19942_ _expr19943_ _compile?19944_)
                   (cons (cons _id19942_ '())
                         (cons (if _compile?19944_
                                   (gxc#compile-e _expr19943_)
                                   _expr19943_)
                               '()))))
                (_bind-e__0__2386523866_
                 (lambda (_id19949_ _expr19950_)
                   (let ((_compile?19952_ '#t))
                     (_bind-e__opt-lambda19940__2386323864_
                      _id19949_
                      _expr19950_
                      _compile?19952_))))
                (_bind-e19383_
                 (lambda _g23918_
                   (let ((_g23917_ (length _g23918_)))
                     (cond ((fx= _g23917_ 2)
                            (apply _bind-e__0__2386523866_ _g23918_))
                           ((fx= _g23917_ 3)
                            (apply _bind-e__opt-lambda19940__2386323864_
                                   _g23918_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23918_))))))
                (_compile-bindings19384_
                 (lambda (_rest19526_)
                   (let _lp19528_ ((_rest19530_ _rest19526_)
                                   (_lift119531_ '())
                                   (_lift219532_ '())
                                   (_bind19533_ '()))
                     (let* ((_rest1953419542_ _rest19530_)
                            (_E1953719546_
                             (lambda ()
                               (error '"No clause matching" _rest1953419542_)))
                            (_else1953619550_
                             (lambda ()
                               (values (reverse _lift119531_)
                                       (reverse _lift219532_)
                                       (reverse _bind19533_))))
                            (_K1953819929_
                             (lambda (_rest19553_ _hd19554_)
                               (let* ((_g1955819594_
                                       (lambda (_g1955919591_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1955919591_)))
                                      (_g1955719635_
                                       (lambda (_g1955919597_)
                                         (if (gx#stx-pair? _g1955919597_)
                                             (let ((_e1958419599_
                                                    (gx#stx-e _g1955919597_)))
                                               (let ((_hd1958519602_
                                                      (##car _e1958419599_))
                                                     (_tl1958619604_
                                                      (##cdr _e1958419599_)))
                                                 (if (gx#stx-pair?
                                                      _tl1958619604_)
                                                     (let ((_e1958719607_
                                                            (gx#stx-e
                                                             _tl1958619604_)))
                                                       (let ((_hd1958819610_
                                                              (##car _e1958719607_))
                                                             (_tl1958919612_
                                                              (##cdr _e1958719607_)))
                                                         (if (gx#stx-null?
                                                              _tl1958919612_)
                                                             ((lambda (_L19615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19616_)
                        (_lp19528_
                         _rest19553_
                         _lift119531_
                         _lift219532_
                         (cons (cons _L19616_
                                     (cons (gxc#compile-e _L19615_) '()))
                               _bind19533_)))
                      _hd1958819610_
                      _hd1958519602_)
                     (_g1955819594_ _g1955919597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1955819594_
                                                      _g1955919597_))))
                                             (_g1955819594_ _g1955919597_))))
                                      (_g1955619807_
                                       (lambda (_g1955919638_)
                                         (if (gx#stx-pair? _g1955919638_)
                                             (let ((_e1957319640_
                                                    (gx#stx-e _g1955919638_)))
                                               (let ((_hd1957419643_
                                                      (##car _e1957319640_))
                                                     (_tl1957519645_
                                                      (##cdr _e1957319640_)))
                                                 (if (gx#stx-pair?
                                                      _hd1957419643_)
                                                     (let ((_e1957619648_
                                                            (gx#stx-e
                                                             _hd1957419643_)))
                                                       (let ((_hd1957719651_
                                                              (##car _e1957619648_))
                                                             (_tl1957819653_
                                                              (##cdr _e1957619648_)))
                                                         (if (gx#stx-null?
                                                              _tl1957819653_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1957519645_)
                         (let ((_e1957919656_ (gx#stx-e _tl1957519645_)))
                           (let ((_hd1958019659_ (##car _e1957919656_))
                                 (_tl1958119661_ (##cdr _e1957919656_)))
                             (if (gx#stx-null? _tl1958119661_)
                                 ((lambda (_L19664_ _L19665_)
                                    (if (if (gx#identifier? _L19665_)
                                            (gxc#opt-lambda-expr? _L19664_)
                                            '#f)
                                        (let* ((_g1967919709_
                                                (lambda (_g1968019706_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1968019706_)))
                                               (_g1967819804_
                                                (lambda (_g1968019712_)
                                                  (if (gx#stx-pair?
                                                       _g1968019712_)
                                                      (let ((_e1968419714_
                                                             (gx#stx-e
                                                              _g1968019712_)))
                                                        (let ((_hd1968519717_
                                                               (##car _e1968419714_))
                                                              (_tl1968619719_
                                                               (##cdr _e1968419714_)))
                                                          (if (gx#stx-pair?
                                                               _tl1968619719_)
                                                              (let ((_e1968719722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1968619719_)))
                        (let ((_hd1968819725_ (##car _e1968719722_))
                              (_tl1968919727_ (##cdr _e1968719722_)))
                          (if (gx#stx-pair? _hd1968819725_)
                              (let ((_e1969019730_ (gx#stx-e _hd1968819725_)))
                                (let ((_hd1969119733_ (##car _e1969019730_))
                                      (_tl1969219735_ (##cdr _e1969019730_)))
                                  (if (gx#stx-pair? _hd1969119733_)
                                      (let ((_e1969319738_
                                             (gx#stx-e _hd1969119733_)))
                                        (let ((_hd1969419741_
                                               (##car _e1969319738_))
                                              (_tl1969519743_
                                               (##cdr _e1969319738_)))
                                          (if (gx#stx-pair? _hd1969419741_)
                                              (let ((_e1969619746_
                                                     (gx#stx-e
                                                      _hd1969419741_)))
                                                (let ((_hd1969719749_
                                                       (##car _e1969619746_))
                                                      (_tl1969819751_
                                                       (##cdr _e1969619746_)))
                                                  (if (gx#stx-null?
                                                       _tl1969819751_)
                                                      (if (gx#stx-pair?
                                                           _tl1969519743_)
                                                          (let ((_e1969919754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1969519743_)))
                    (let ((_hd1970019757_ (##car _e1969919754_))
                          (_tl1970119759_ (##cdr _e1969919754_)))
                      (if (gx#stx-null? _tl1970119759_)
                          (if (gx#stx-null? _tl1969219735_)
                              (if (gx#stx-pair? _tl1968919727_)
                                  (let ((_e1970219762_
                                         (gx#stx-e _tl1968919727_)))
                                    (let ((_hd1970319765_
                                           (##car _e1970219762_))
                                          (_tl1970419767_
                                           (##cdr _e1970219762_)))
                                      (if (gx#stx-null? _tl1970419767_)
                                          ((lambda (_L19770_ _L19771_ _L19772_)
                                             (let* ((_lambda-id19796_
                                                     (make-symbol
                                                      (gx#stx-e _L19665_)
                                                      '"__"
                                                      (gx#stx-e _L19772_)
                                                      (gensym '__)))
                                                    (_lambda-id19798_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19796_
                                                      (gx#stx-source
                                                       _stx19381_)))
                                                    (_g23919_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19798_))
                                                    (_new-case-lambda-expr19801_
                                                     (gxc#apply-expression-subst
                                                      _L19770_
                                                      _L19772_
                                                      _lambda-id19798_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19665_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19798_))
                                                 (_lp19528_
                                                  (cons (_bind-e__opt-lambda19940__2386323864_
                                                         _L19665_
                                                         _new-case-lambda-expr19801_
                                                         '#f)
                                                        _rest19553_)
                                                  (cons (_bind-e__0__2386523866_
                                                         _lambda-id19798_
                                                         _L19771_)
                                                        _lift119531_)
                                                  _lift219532_
                                                  _bind19533_))))
                                           _hd1970319765_
                                           _hd1970019757_
                                           _hd1969719749_)
                                          (_g1967919709_ _g1968019712_))))
                                  (_g1967919709_ _g1968019712_))
                              (_g1967919709_ _g1968019712_))
                          (_g1967919709_ _g1968019712_))))
                  (_g1967919709_ _g1968019712_))
              (_g1967919709_ _g1968019712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1967919709_ _g1968019712_))))
                                      (_g1967919709_ _g1968019712_))))
                              (_g1967919709_ _g1968019712_))))
                      (_g1967919709_ _g1968019712_))))
              (_g1967919709_ _g1968019712_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1967819804_ _L19664_))
                                        (_g1955719635_ _g1955919638_)))
                                  _hd1958019659_
                                  _hd1957719651_)
                                 (_g1955719635_ _g1955919638_))))
                         (_g1955719635_ _g1955919638_))
                     (_g1955719635_ _g1955919638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1955719635_
                                                      _g1955919638_))))
                                             (_g1955719635_ _g1955919638_))))
                                      (_g1955519926_
                                       (lambda (_g1955919810_)
                                         (if (gx#stx-pair? _g1955919810_)
                                             (let ((_e1956219812_
                                                    (gx#stx-e _g1955919810_)))
                                               (let ((_hd1956319815_
                                                      (##car _e1956219812_))
                                                     (_tl1956419817_
                                                      (##cdr _e1956219812_)))
                                                 (if (gx#stx-pair?
                                                      _hd1956319815_)
                                                     (let ((_e1956519820_
                                                            (gx#stx-e
                                                             _hd1956319815_)))
                                                       (let ((_hd1956619823_
                                                              (##car _e1956519820_))
                                                             (_tl1956719825_
                                                              (##cdr _e1956519820_)))
                                                         (if (gx#stx-null?
                                                              _tl1956719825_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1956419817_)
                         (let ((_e1956819828_ (gx#stx-e _tl1956419817_)))
                           (let ((_hd1956919831_ (##car _e1956819828_))
                                 (_tl1957019833_ (##cdr _e1956819828_)))
                             (if (gx#stx-null? _tl1957019833_)
                                 ((lambda (_L19836_ _L19837_)
                                    (if (if (gx#identifier? _L19837_)
                                            (gxc#case-lambda-expr? _L19836_)
                                            '#f)
                                        (let* ((_g1985219866_
                                                (lambda (_g1985319863_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1985319863_)))
                                               (_g1985119901_
                                                (lambda (_g1985319869_)
                                                  (if (gx#stx-pair?
                                                       _g1985319869_)
                                                      (let ((_e1985919871_
                                                             (gx#stx-e
                                                              _g1985319869_)))
                                                        (let ((_hd1986019874_
                                                               (##car _e1985919871_))
                                                              (_tl1986119876_
                                                               (##cdr _e1985919871_)))
                                                          ((lambda (_L19879_)
                                                             (let ((_g23920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx19381_
                             _L19837_
                             _L19879_
                             '#t)))
                       (begin
                         (let ((_g23921_ (values-count _g23920_)))
                           (if (not (fx= _g23921_ 3))
                               (error "Context expects 3 values" _g23921_)))
                         (let ((_ids19889_ (values-ref _g23920_ 0))
                               (_impls19890_ (values-ref _g23920_ 1))
                               (_clauses19891_ (values-ref _g23920_ 2)))
                           (let* ((_g23922_
                                   (for-each gx#core-bind-runtime! _ids19889_))
                                  (_xbind19894_
                                   (map _bind-e19383_ _ids19889_ _impls19890_))
                                  (_expr*19896_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19891_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19898_
                                   (_bind-e__opt-lambda19940__2386323864_
                                    _L19837_
                                    _expr*19896_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19837_)
                                '" => "
                                (map gxc#identifier-symbol _ids19889_))
                               (_lp19528_
                                _rest19553_
                                _lift119531_
                                (foldl1 cons _lift219532_ _xbind19894_)
                                (cons _bind*19898_ _bind19533_))))))))
                   _tl1986119876_)))
              (_g1985219866_ _g1985319869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1985019923_
                                                (lambda (_g1985319904_)
                                                  (if (gx#stx-pair?
                                                       _g1985319904_)
                                                      (let ((_e1985519906_
                                                             (gx#stx-e
                                                              _g1985319904_)))
                                                        (let ((_hd1985619909_
                                                               (##car _e1985519906_))
                                                              (_tl1985719911_
                                                               (##cdr _e1985519906_)))
                                                          ((lambda (_L19914_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19914_)
                         (_lp19528_
                          _rest19553_
                          _lift119531_
                          _lift219532_
                          (cons (_bind-e__opt-lambda19940__2386323864_
                                 _L19837_
                                 _L19836_
                                 '#f)
                                _bind19533_))
                         (_g1985119901_ _g1985319904_)))
                   _tl1985719911_)))
              (_g1985119901_ _g1985319904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1985019923_ _L19836_))
                                        (_g1955619807_ _g1955919810_)))
                                  _hd1956919831_
                                  _hd1956619823_)
                                 (_g1955619807_ _g1955919810_))))
                         (_g1955619807_ _g1955919810_))
                     (_g1955619807_ _g1955919810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1955619807_
                                                      _g1955919810_))))
                                             (_g1955619807_ _g1955919810_)))))
                                 (_g1955519926_ _hd19554_)))))
                       (if (##pair? _rest1953419542_)
                           (let ((_hd1953919932_ (##car _rest1953419542_))
                                 (_tl1954019934_ (##cdr _rest1953419542_)))
                             (let* ((_hd19937_ _hd1953919932_)
                                    (_rest19939_ _tl1954019934_))
                               (_K1953819929_ _rest19939_ _hd19937_)))
                           (_else1953619550_)))))))
        (let* ((_g1938719413_
                (lambda (_g1938819410_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1938819410_)))
               (_g1938619420_
                (lambda (_g1938819416_)
                  ((lambda () (gxc#xform-let-values% _stx19381_)))))
               (_g1938519523_
                (lambda (_g1938819423_)
                  (if (gx#stx-pair? _g1938819423_)
                      (let ((_e1939119425_ (gx#stx-e _g1938819423_)))
                        (let ((_hd1939219428_ (##car _e1939119425_))
                              (_tl1939319430_ (##cdr _e1939119425_)))
                          (if (gx#stx-pair? _tl1939319430_)
                              (let ((_e1939419433_ (gx#stx-e _tl1939319430_)))
                                (let ((_hd1939519436_ (##car _e1939419433_))
                                      (_tl1939619438_ (##cdr _e1939419433_)))
                                  (if (gx#stx-pair/null? _hd1939519436_)
                                      (if (fx>= (gx#stx-length _hd1939519436_)
                                                '0)
                                          (let ((_g23923_
                                                 (gx#syntax-split-splice
                                                  _hd1939519436_
                                                  '0)))
                                            (begin
                                              (let ((_g23924_
                                                     (values-count _g23923_)))
                                                (if (not (fx= _g23924_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23924_)))
                                              (let ((_target1939719441_
                                                     (values-ref _g23923_ 0))
                                                    (_tl1939919443_
                                                     (values-ref _g23923_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1939919443_)
                                                    (letrec ((_loop1940019446_
                                                              (lambda (_hd1939819449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1940419451_)
                        (if (gx#stx-pair? _hd1939819449_)
                            (let ((_e1940119454_ (gx#stx-e _hd1939819449_)))
                              (let ((_lp-hd1940219457_ (##car _e1940119454_))
                                    (_lp-tl1940319459_ (##cdr _e1940119454_)))
                                (_loop1940019446_
                                 _lp-tl1940319459_
                                 (cons _lp-hd1940219457_ _bind1940419451_))))
                            (let ((_bind1940519462_
                                   (reverse _bind1940419451_)))
                              (if (gx#stx-pair? _tl1939619438_)
                                  (let ((_e1940619465_
                                         (gx#stx-e _tl1939619438_)))
                                    (let ((_hd1940719468_
                                           (##car _e1940619465_))
                                          (_tl1940819470_
                                           (##cdr _e1940619465_)))
                                      (if (gx#stx-null? _tl1940819470_)
                                          ((lambda (_L19473_ _L19474_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1949419497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1949519499_)
                             (cons _g1949419497_ _g1949519499_))
                           '()
                           _L19474_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g23925_
                                                           (_compile-bindings19384_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1950219505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1950319507_)
                                (cons _g1950219505_ _g1950319507_))
                              '()
                              _L19474_)))))
              (begin
                (let ((_g23926_ (values-count _g23925_)))
                  (if (not (fx= _g23926_ 3))
                      (error "Context expects 3 values" _g23926_)))
                (let ((_lift119510_ (values-ref _g23925_ 0))
                      (_lift219511_ (values-ref _g23925_ 1))
                      (_hd19512_ (values-ref _g23925_ 2)))
                  (let* ((_body19514_ (gxc#compile-e _L19473_))
                         (_expr19516_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd19512_ (cons _body19514_ '())))
                           _stx19381_))
                         (_expr19518_
                          (if (null? _lift219511_)
                              _expr19516_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift219511_
                                           (cons _expr19516_ '())))
                               _stx19381_)))
                         (_expr19520_
                          (if (null? _lift119510_)
                              _expr19518_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift119510_
                                           (cons _expr19518_ '())))
                               _stx19381_))))
                    _expr19520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23873
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23873)
                                                      __obj23873)))
                                                 (_g1938619420_
                                                  _g1938819423_)))
                                           _hd1940719468_
                                           _bind1940519462_)
                                          (_g1938619420_ _g1938819423_))))
                                  (_g1938619420_ _g1938819423_)))))))
              (_loop1940019446_ _target1939719441_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1938619420_
                                                     _g1938819423_)))))
                                          (_g1938619420_ _g1938819423_))
                                      (_g1938619420_ _g1938819423_))))
                              (_g1938619420_ _g1938819423_))))
                      (_g1938619420_ _g1938819423_)))))
          (_g1938519523_ _stx19381_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18813_)
      (letrec* ((_bind-e__opt-lambda19363__2386823869_
                 (lambda (_id19365_ _expr19366_ _compile?19367_)
                   (cons (cons _id19365_ '())
                         (cons (if _compile?19367_
                                   (gxc#compile-e _expr19366_)
                                   _expr19366_)
                               '()))))
                (_bind-e__0__2387023871_
                 (lambda (_id19372_ _expr19373_)
                   (let ((_compile?19375_ '#t))
                     (_bind-e__opt-lambda19363__2386823869_
                      _id19372_
                      _expr19373_
                      _compile?19375_))))
                (_bind-e18815_
                 (lambda _g23928_
                   (let ((_g23927_ (length _g23928_)))
                     (cond ((fx= _g23927_ 2)
                            (apply _bind-e__0__2387023871_ _g23928_))
                           ((fx= _g23927_ 3)
                            (apply _bind-e__opt-lambda19363__2386823869_
                                   _g23928_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23928_))))))
                (_compile-bindings18816_
                 (lambda (_rest18951_)
                   (let _lp18953_ ((_rest18955_ _rest18951_) (_bind18956_ '()))
                     (let* ((_rest1895718965_ _rest18955_)
                            (_E1896018969_
                             (lambda ()
                               (error '"No clause matching" _rest1895718965_)))
                            (_else1895918973_
                             (lambda () (reverse _bind18956_)))
                            (_K1896119352_
                             (lambda (_rest18976_ _hd18977_)
                               (let* ((_g1898119017_
                                       (lambda (_g1898219014_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1898219014_)))
                                      (_g1898019058_
                                       (lambda (_g1898219020_)
                                         (if (gx#stx-pair? _g1898219020_)
                                             (let ((_e1900719022_
                                                    (gx#stx-e _g1898219020_)))
                                               (let ((_hd1900819025_
                                                      (##car _e1900719022_))
                                                     (_tl1900919027_
                                                      (##cdr _e1900719022_)))
                                                 (if (gx#stx-pair?
                                                      _tl1900919027_)
                                                     (let ((_e1901019030_
                                                            (gx#stx-e
                                                             _tl1900919027_)))
                                                       (let ((_hd1901119033_
                                                              (##car _e1901019030_))
                                                             (_tl1901219035_
                                                              (##cdr _e1901019030_)))
                                                         (if (gx#stx-null?
                                                              _tl1901219035_)
                                                             ((lambda (_L19038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19039_)
                        (_lp18953_
                         _rest18976_
                         (cons (cons _L19039_
                                     (cons (gxc#compile-e _L19038_) '()))
                               _bind18956_)))
                      _hd1901119033_
                      _hd1900819025_)
                     (_g1898119017_ _g1898219020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1898119017_
                                                      _g1898219020_))))
                                             (_g1898119017_ _g1898219020_))))
                                      (_g1897919230_
                                       (lambda (_g1898219061_)
                                         (if (gx#stx-pair? _g1898219061_)
                                             (let ((_e1899619063_
                                                    (gx#stx-e _g1898219061_)))
                                               (let ((_hd1899719066_
                                                      (##car _e1899619063_))
                                                     (_tl1899819068_
                                                      (##cdr _e1899619063_)))
                                                 (if (gx#stx-pair?
                                                      _hd1899719066_)
                                                     (let ((_e1899919071_
                                                            (gx#stx-e
                                                             _hd1899719066_)))
                                                       (let ((_hd1900019074_
                                                              (##car _e1899919071_))
                                                             (_tl1900119076_
                                                              (##cdr _e1899919071_)))
                                                         (if (gx#stx-null?
                                                              _tl1900119076_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1899819068_)
                         (let ((_e1900219079_ (gx#stx-e _tl1899819068_)))
                           (let ((_hd1900319082_ (##car _e1900219079_))
                                 (_tl1900419084_ (##cdr _e1900219079_)))
                             (if (gx#stx-null? _tl1900419084_)
                                 ((lambda (_L19087_ _L19088_)
                                    (if (if (gx#identifier? _L19088_)
                                            (gxc#opt-lambda-expr? _L19087_)
                                            '#f)
                                        (let* ((_g1910219132_
                                                (lambda (_g1910319129_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1910319129_)))
                                               (_g1910119227_
                                                (lambda (_g1910319135_)
                                                  (if (gx#stx-pair?
                                                       _g1910319135_)
                                                      (let ((_e1910719137_
                                                             (gx#stx-e
                                                              _g1910319135_)))
                                                        (let ((_hd1910819140_
                                                               (##car _e1910719137_))
                                                              (_tl1910919142_
                                                               (##cdr _e1910719137_)))
                                                          (if (gx#stx-pair?
                                                               _tl1910919142_)
                                                              (let ((_e1911019145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1910919142_)))
                        (let ((_hd1911119148_ (##car _e1911019145_))
                              (_tl1911219150_ (##cdr _e1911019145_)))
                          (if (gx#stx-pair? _hd1911119148_)
                              (let ((_e1911319153_ (gx#stx-e _hd1911119148_)))
                                (let ((_hd1911419156_ (##car _e1911319153_))
                                      (_tl1911519158_ (##cdr _e1911319153_)))
                                  (if (gx#stx-pair? _hd1911419156_)
                                      (let ((_e1911619161_
                                             (gx#stx-e _hd1911419156_)))
                                        (let ((_hd1911719164_
                                               (##car _e1911619161_))
                                              (_tl1911819166_
                                               (##cdr _e1911619161_)))
                                          (if (gx#stx-pair? _hd1911719164_)
                                              (let ((_e1911919169_
                                                     (gx#stx-e
                                                      _hd1911719164_)))
                                                (let ((_hd1912019172_
                                                       (##car _e1911919169_))
                                                      (_tl1912119174_
                                                       (##cdr _e1911919169_)))
                                                  (if (gx#stx-null?
                                                       _tl1912119174_)
                                                      (if (gx#stx-pair?
                                                           _tl1911819166_)
                                                          (let ((_e1912219177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1911819166_)))
                    (let ((_hd1912319180_ (##car _e1912219177_))
                          (_tl1912419182_ (##cdr _e1912219177_)))
                      (if (gx#stx-null? _tl1912419182_)
                          (if (gx#stx-null? _tl1911519158_)
                              (if (gx#stx-pair? _tl1911219150_)
                                  (let ((_e1912519185_
                                         (gx#stx-e _tl1911219150_)))
                                    (let ((_hd1912619188_
                                           (##car _e1912519185_))
                                          (_tl1912719190_
                                           (##cdr _e1912519185_)))
                                      (if (gx#stx-null? _tl1912719190_)
                                          ((lambda (_L19193_ _L19194_ _L19195_)
                                             (let* ((_lambda-id19219_
                                                     (make-symbol
                                                      (gx#stx-e _L19088_)
                                                      '"__"
                                                      (gx#stx-e _L19195_)
                                                      (gensym '__)))
                                                    (_lambda-id19221_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19219_
                                                      (gx#stx-source
                                                       _stx18813_)))
                                                    (_g23929_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19221_))
                                                    (_new-case-lambda-expr19224_
                                                     (gxc#apply-expression-subst
                                                      _L19193_
                                                      _L19195_
                                                      _lambda-id19221_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19088_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19221_))
                                                 (_lp18953_
                                                  (cons (_bind-e__opt-lambda19363__2386823869_
                                                         _L19088_
                                                         _new-case-lambda-expr19224_
                                                         '#f)
                                                        _rest18976_)
                                                  (cons (_bind-e__0__2387023871_
                                                         _lambda-id19221_
                                                         _L19194_)
                                                        _bind18956_)))))
                                           _hd1912619188_
                                           _hd1912319180_
                                           _hd1912019172_)
                                          (_g1910219132_ _g1910319135_))))
                                  (_g1910219132_ _g1910319135_))
                              (_g1910219132_ _g1910319135_))
                          (_g1910219132_ _g1910319135_))))
                  (_g1910219132_ _g1910319135_))
              (_g1910219132_ _g1910319135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1910219132_ _g1910319135_))))
                                      (_g1910219132_ _g1910319135_))))
                              (_g1910219132_ _g1910319135_))))
                      (_g1910219132_ _g1910319135_))))
              (_g1910219132_ _g1910319135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1910119227_ _L19087_))
                                        (_g1898019058_ _g1898219061_)))
                                  _hd1900319082_
                                  _hd1900019074_)
                                 (_g1898019058_ _g1898219061_))))
                         (_g1898019058_ _g1898219061_))
                     (_g1898019058_ _g1898219061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1898019058_
                                                      _g1898219061_))))
                                             (_g1898019058_ _g1898219061_))))
                                      (_g1897819349_
                                       (lambda (_g1898219233_)
                                         (if (gx#stx-pair? _g1898219233_)
                                             (let ((_e1898519235_
                                                    (gx#stx-e _g1898219233_)))
                                               (let ((_hd1898619238_
                                                      (##car _e1898519235_))
                                                     (_tl1898719240_
                                                      (##cdr _e1898519235_)))
                                                 (if (gx#stx-pair?
                                                      _hd1898619238_)
                                                     (let ((_e1898819243_
                                                            (gx#stx-e
                                                             _hd1898619238_)))
                                                       (let ((_hd1898919246_
                                                              (##car _e1898819243_))
                                                             (_tl1899019248_
                                                              (##cdr _e1898819243_)))
                                                         (if (gx#stx-null?
                                                              _tl1899019248_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1898719240_)
                         (let ((_e1899119251_ (gx#stx-e _tl1898719240_)))
                           (let ((_hd1899219254_ (##car _e1899119251_))
                                 (_tl1899319256_ (##cdr _e1899119251_)))
                             (if (gx#stx-null? _tl1899319256_)
                                 ((lambda (_L19259_ _L19260_)
                                    (if (if (gx#identifier? _L19260_)
                                            (gxc#case-lambda-expr? _L19259_)
                                            '#f)
                                        (let* ((_g1927519289_
                                                (lambda (_g1927619286_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1927619286_)))
                                               (_g1927419324_
                                                (lambda (_g1927619292_)
                                                  (if (gx#stx-pair?
                                                       _g1927619292_)
                                                      (let ((_e1928219294_
                                                             (gx#stx-e
                                                              _g1927619292_)))
                                                        (let ((_hd1928319297_
                                                               (##car _e1928219294_))
                                                              (_tl1928419299_
                                                               (##cdr _e1928219294_)))
                                                          ((lambda (_L19302_)
                                                             (let ((_g23930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx18813_
                             _L19260_
                             _L19302_
                             '#t)))
                       (begin
                         (let ((_g23931_ (values-count _g23930_)))
                           (if (not (fx= _g23931_ 3))
                               (error "Context expects 3 values" _g23931_)))
                         (let ((_ids19312_ (values-ref _g23930_ 0))
                               (_impls19313_ (values-ref _g23930_ 1))
                               (_clauses19314_ (values-ref _g23930_ 2)))
                           (let* ((_g23932_
                                   (for-each gx#core-bind-runtime! _ids19312_))
                                  (_xbind19317_
                                   (map _bind-e18815_ _ids19312_ _impls19313_))
                                  (_expr*19319_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19314_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19321_
                                   (_bind-e__opt-lambda19363__2386823869_
                                    _L19260_
                                    _expr*19319_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19260_)
                                '" => "
                                (map gxc#identifier-symbol _ids19312_))
                               (_lp18953_
                                _rest18976_
                                (cons _bind*19321_
                                      (foldl1 cons
                                              _bind18956_
                                              _xbind19317_)))))))))
                   _tl1928419299_)))
              (_g1927519289_ _g1927619292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1927319346_
                                                (lambda (_g1927619327_)
                                                  (if (gx#stx-pair?
                                                       _g1927619327_)
                                                      (let ((_e1927819329_
                                                             (gx#stx-e
                                                              _g1927619327_)))
                                                        (let ((_hd1927919332_
                                                               (##car _e1927819329_))
                                                              (_tl1928019334_
                                                               (##cdr _e1927819329_)))
                                                          ((lambda (_L19337_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19337_)
                         (_lp18953_
                          _rest18976_
                          (cons (_bind-e__opt-lambda19363__2386823869_
                                 _L19260_
                                 _L19259_
                                 '#f)
                                _bind18956_))
                         (_g1927419324_ _g1927619327_)))
                   _tl1928019334_)))
              (_g1927419324_ _g1927619327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1927319346_ _L19259_))
                                        (_g1897919230_ _g1898219233_)))
                                  _hd1899219254_
                                  _hd1898919246_)
                                 (_g1897919230_ _g1898219233_))))
                         (_g1897919230_ _g1898219233_))
                     (_g1897919230_ _g1898219233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1897919230_
                                                      _g1898219233_))))
                                             (_g1897919230_ _g1898219233_)))))
                                 (_g1897819349_ _hd18977_)))))
                       (if (##pair? _rest1895718965_)
                           (let ((_hd1896219355_ (##car _rest1895718965_))
                                 (_tl1896319357_ (##cdr _rest1895718965_)))
                             (let* ((_hd19360_ _hd1896219355_)
                                    (_rest19362_ _tl1896319357_))
                               (_K1896119352_ _rest19362_ _hd19360_)))
                           (_else1895918973_)))))))
        (let* ((_g1881918846_
                (lambda (_g1882018843_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1882018843_)))
               (_g1881818853_
                (lambda (_g1882018849_)
                  ((lambda () (gxc#xform-let-values% _stx18813_)))))
               (_g1881718948_
                (lambda (_g1882018856_)
                  (if (gx#stx-pair? _g1882018856_)
                      (let ((_e1882418858_ (gx#stx-e _g1882018856_)))
                        (let ((_hd1882518861_ (##car _e1882418858_))
                              (_tl1882618863_ (##cdr _e1882418858_)))
                          (if (gx#stx-pair? _tl1882618863_)
                              (let ((_e1882718866_ (gx#stx-e _tl1882618863_)))
                                (let ((_hd1882818869_ (##car _e1882718866_))
                                      (_tl1882918871_ (##cdr _e1882718866_)))
                                  (if (gx#stx-pair/null? _hd1882818869_)
                                      (if (fx>= (gx#stx-length _hd1882818869_)
                                                '0)
                                          (let ((_g23933_
                                                 (gx#syntax-split-splice
                                                  _hd1882818869_
                                                  '0)))
                                            (begin
                                              (let ((_g23934_
                                                     (values-count _g23933_)))
                                                (if (not (fx= _g23934_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23934_)))
                                              (let ((_target1883018874_
                                                     (values-ref _g23933_ 0))
                                                    (_tl1883218876_
                                                     (values-ref _g23933_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1883218876_)
                                                    (letrec ((_loop1883318879_
                                                              (lambda (_hd1883118882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1883718884_)
                        (if (gx#stx-pair? _hd1883118882_)
                            (let ((_e1883418887_ (gx#stx-e _hd1883118882_)))
                              (let ((_lp-hd1883518890_ (##car _e1883418887_))
                                    (_lp-tl1883618892_ (##cdr _e1883418887_)))
                                (_loop1883318879_
                                 _lp-tl1883618892_
                                 (cons _lp-hd1883518890_ _bind1883718884_))))
                            (let ((_bind1883818895_
                                   (reverse _bind1883718884_)))
                              (if (gx#stx-pair? _tl1882918871_)
                                  (let ((_e1883918898_
                                         (gx#stx-e _tl1882918871_)))
                                    (let ((_hd1884018901_
                                           (##car _e1883918898_))
                                          (_tl1884118903_
                                           (##cdr _e1883918898_)))
                                      (if (gx#stx-null? _tl1884118903_)
                                          ((lambda (_L18906_ _L18907_ _L18908_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1892918932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1893018934_)
                             (cons _g1892918932_ _g1893018934_))
                           '()
                           _L18907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd18945_
                                                           (_compile-bindings18816_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1893718940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1893818942_)
                                (cons _g1893718940_ _g1893818942_))
                              '()
                              _L18907_))))
                  (_body18946_ (gxc#compile-e _L18906_)))
              (gxc#xform-wrap-source
               (cons _L18908_ (cons _hd18945_ (cons _body18946_ '())))
               _stx18813_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23874
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23874)
                                                      __obj23874)))
                                                 (_g1881818853_
                                                  _g1882018856_)))
                                           _hd1884018901_
                                           _bind1883818895_
                                           _hd1882518861_)
                                          (_g1881818853_ _g1882018856_))))
                                  (_g1881818853_ _g1882018856_)))))))
              (_loop1883318879_ _target1883018874_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1881818853_
                                                     _g1882018856_)))))
                                          (_g1881818853_ _g1882018856_))
                                      (_g1881818853_ _g1882018856_))))
                              (_g1881818853_ _g1882018856_))))
                      (_g1881818853_ _g1882018856_)))))
          (_g1881718948_ _stx18813_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18734_)
      (let* ((_g1873718754_
              (lambda (_g1873818751_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1873818751_)))
             (_g1873618761_ (lambda (_g1873818757_) ((lambda () '#f))))
             (_g1873518810_
              (lambda (_g1873818764_)
                (if (gx#stx-pair? _g1873818764_)
                    (let ((_e1874118766_ (gx#stx-e _g1873818764_)))
                      (let ((_hd1874218769_ (##car _e1874118766_))
                            (_tl1874318771_ (##cdr _e1874118766_)))
                        (if (gx#stx-pair? _hd1874218769_)
                            (let ((_e1874418774_ (gx#stx-e _hd1874218769_)))
                              (let ((_hd1874518777_ (##car _e1874418774_))
                                    (_tl1874618779_ (##cdr _e1874418774_)))
                                (if (gx#stx-null? _tl1874618779_)
                                    (if (gx#stx-pair? _tl1874318771_)
                                        (let ((_e1874718782_
                                               (gx#stx-e _tl1874318771_)))
                                          (let ((_hd1874818785_
                                                 (##car _e1874718782_))
                                                (_tl1874918787_
                                                 (##cdr _e1874718782_)))
                                            (if (gx#stx-null? _tl1874918787_)
                                                ((lambda (_L18790_ _L18791_)
                                                   (if (gx#identifier?
                                                        _L18791_)
                                                       (let ((_$e18807_
                                                              (gxc#case-lambda-expr?
                                                               _L18790_)))
                                                         (if _$e18807_
                                                             _$e18807_
                                                             (gxc#opt-lambda-expr?
                                                              _L18790_)))
                                                       '#f))
                                                 _hd1874818785_
                                                 _hd1874518777_)
                                                (_g1873618761_
                                                 _g1873818764_))))
                                        (_g1873618761_ _g1873818764_))
                                    (_g1873618761_ _g1873818764_))))
                            (_g1873618761_ _g1873818764_))))
                    (_g1873618761_ _g1873818764_)))))
        (_g1873518810_ _bind18734_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18672_ _id18673_ _new-id18674_)
      (let* ((_g1867718690_
              (lambda (_g1867818687_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1867818687_)))
             (_g1867618697_ (lambda (_g1867818693_) ((lambda () _stx18672_))))
             (_g1867518731_
              (lambda (_g1867818700_)
                (if (gx#stx-pair? _g1867818700_)
                    (let ((_e1868018702_ (gx#stx-e _g1867818700_)))
                      (let ((_hd1868118705_ (##car _e1868018702_))
                            (_tl1868218707_ (##cdr _e1868018702_)))
                        (if (gx#stx-pair? _tl1868218707_)
                            (let ((_e1868318710_ (gx#stx-e _tl1868218707_)))
                              (let ((_hd1868418713_ (##car _e1868318710_))
                                    (_tl1868518715_ (##cdr _e1868318710_)))
                                (if (gx#stx-null? _tl1868518715_)
                                    ((lambda (_L18718_)
                                       (if (gx#free-identifier=?
                                            _L18718_
                                            _id18673_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18674_ '()))
                                            _stx18672_)
                                           (_g1867618697_ _g1867818700_)))
                                     _hd1868418713_)
                                    (_g1867618697_ _g1867818700_))))
                            (_g1867618697_ _g1867818700_))))
                    (_g1867618697_ _g1867818700_)))))
        (_g1867518731_ _stx18672_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx18528_)
      (let* ((_g1853118562_
              (lambda (_g1853218559_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1853218559_)))
             (_g1853018607_
              (lambda (_g1853218565_)
                (if (gx#stx-pair? _g1853218565_)
                    (let ((_e1854918567_ (gx#stx-e _g1853218565_)))
                      (let ((_hd1855018570_ (##car _e1854918567_))
                            (_tl1855118572_ (##cdr _e1854918567_)))
                        (if (gx#stx-pair? _tl1855118572_)
                            (let ((_e1855218575_ (gx#stx-e _tl1855118572_)))
                              (let ((_hd1855318578_ (##car _e1855218575_))
                                    (_tl1855418580_ (##cdr _e1855218575_)))
                                (if (gx#stx-pair? _tl1855418580_)
                                    (let ((_e1855518583_
                                           (gx#stx-e _tl1855418580_)))
                                      (let ((_hd1855618586_
                                             (##car _e1855518583_))
                                            (_tl1855718588_
                                             (##cdr _e1855518583_)))
                                        (if (gx#stx-null? _tl1855718588_)
                                            ((lambda (_L18591_ _L18592_)
                                               (gxc#compile-e _L18591_))
                                             _hd1855618586_
                                             _hd1855318578_)
                                            (_g1853118562_ _g1853218565_))))
                                    (_g1853118562_ _g1853218565_))))
                            (_g1853118562_ _g1853218565_))))
                    (_g1853118562_ _g1853218565_))))
             (_g1852918669_
              (lambda (_g1853218610_)
                (if (gx#stx-pair? _g1853218610_)
                    (let ((_e1853518612_ (gx#stx-e _g1853218610_)))
                      (let ((_hd1853618615_ (##car _e1853518612_))
                            (_tl1853718617_ (##cdr _e1853518612_)))
                        (if (gx#stx-pair? _tl1853718617_)
                            (let ((_e1853818620_ (gx#stx-e _tl1853718617_)))
                              (let ((_hd1853918623_ (##car _e1853818620_))
                                    (_tl1854018625_ (##cdr _e1853818620_)))
                                (if (gx#stx-pair? _hd1853918623_)
                                    (let ((_e1854118628_
                                           (gx#stx-e _hd1853918623_)))
                                      (let ((_hd1854218631_
                                             (##car _e1854118628_))
                                            (_tl1854318633_
                                             (##cdr _e1854118628_)))
                                        (if (gx#stx-null? _tl1854318633_)
                                            (if (gx#stx-pair? _tl1854018625_)
                                                (let ((_e1854418636_
                                                       (gx#stx-e
                                                        _tl1854018625_)))
                                                  (let ((_hd1854518639_
                                                         (##car _e1854418636_))
                                                        (_tl1854618641_
                                                         (##cdr _e1854418636_)))
                                                    (if (gx#stx-null?
                                                         _tl1854618641_)
                                                        ((lambda (_L18644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18645_)
                   (if (gx#identifier? _L18645_)
                       (let ((_sym18661_
                              (gxc#generate-runtime-binding-id _L18645_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym18661_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym18661_)
                               (let ((_type1866218664_
                                      (gxc#apply-basic-expression-type
                                       _L18644_)))
                                 (if _type1866218664_
                                     (let ((_type18667_ _type1866218664_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym18661_
                                        _type18667_))
                                     '#f)))
                           (gxc#compile-e _L18644_)))
                       (_g1853018607_ _g1853218610_)))
                 _hd1854518639_
                 _hd1854218631_)
                (_g1853018607_ _g1853218610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1853018607_ _g1853218610_))
                                            (_g1853018607_ _g1853218610_))))
                                    (_g1853018607_ _g1853218610_))))
                            (_g1853018607_ _g1853218610_))))
                    (_g1853018607_ _g1853218610_)))))
        (_g1852918669_ _stx18528_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx18313_)
      (letrec ((_collect-e18315_
                (lambda (_hd18472_ _expr18473_)
                  (let* ((_g1847618486_
                          (lambda (_g1847718483_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1847718483_)))
                         (_g1847518493_
                          (lambda (_g1847718489_) ((lambda () '#!void))))
                         (_g1847418525_
                          (lambda (_g1847718496_)
                            (if (gx#stx-pair? _g1847718496_)
                                (let ((_e1847918498_ (gx#stx-e _g1847718496_)))
                                  (let ((_hd1848018501_ (##car _e1847918498_))
                                        (_tl1848118503_ (##cdr _e1847918498_)))
                                    (if (gx#stx-null? _tl1848118503_)
                                        ((lambda (_L18506_)
                                           (if (gx#identifier? _L18506_)
                                               (let ((_sym18517_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18506_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym18517_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym18517_)
                                                     (let ((_type1851818520_
                                                            (gxc#apply-basic-expression-type
                                                             _expr18473_)))
                                                       (if _type1851818520_
                                                           (let ((_type18523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1851818520_))
                     (gxc#optimizer-declare-type!__%
                      _sym18517_
                      _type18523_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1847518493_ _g1847718496_)))
                                         _hd1848018501_)
                                        (_g1847518493_ _g1847718496_))))
                                (_g1847518493_ _g1847718496_)))))
                    (_g1847418525_ _hd18472_)))))
        (let* ((_g1831718352_
                (lambda (_g1831818349_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1831818349_)))
               (_g1831618469_
                (lambda (_g1831818355_)
                  (if (gx#stx-pair? _g1831818355_)
                      (let ((_e1832218357_ (gx#stx-e _g1831818355_)))
                        (let ((_hd1832318360_ (##car _e1832218357_))
                              (_tl1832418362_ (##cdr _e1832218357_)))
                          (if (gx#stx-pair? _tl1832418362_)
                              (let ((_e1832518365_ (gx#stx-e _tl1832418362_)))
                                (let ((_hd1832618368_ (##car _e1832518365_))
                                      (_tl1832718370_ (##cdr _e1832518365_)))
                                  (if (gx#stx-pair/null? _hd1832618368_)
                                      (if (fx>= (gx#stx-length _hd1832618368_)
                                                '0)
                                          (let ((_g23935_
                                                 (gx#syntax-split-splice
                                                  _hd1832618368_
                                                  '0)))
                                            (begin
                                              (let ((_g23936_
                                                     (values-count _g23935_)))
                                                (if (not (fx= _g23936_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23936_)))
                                              (let ((_target1832818373_
                                                     (values-ref _g23935_ 0))
                                                    (_tl1833018375_
                                                     (values-ref _g23935_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1833018375_)
                                                    (letrec ((_loop1833118378_
                                                              (lambda (_hd1832918381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1833518383_
                               _hd1833618385_)
                        (if (gx#stx-pair? _hd1832918381_)
                            (let ((_e1833218388_ (gx#stx-e _hd1832918381_)))
                              (let ((_lp-hd1833318391_ (##car _e1833218388_))
                                    (_lp-tl1833418393_ (##cdr _e1833218388_)))
                                (if (gx#stx-pair? _lp-hd1833318391_)
                                    (let ((_e1833918396_
                                           (gx#stx-e _lp-hd1833318391_)))
                                      (let ((_hd1834018399_
                                             (##car _e1833918396_))
                                            (_tl1834118401_
                                             (##cdr _e1833918396_)))
                                        (if (gx#stx-pair? _tl1834118401_)
                                            (let ((_e1834218404_
                                                   (gx#stx-e _tl1834118401_)))
                                              (let ((_hd1834318407_
                                                     (##car _e1834218404_))
                                                    (_tl1834418409_
                                                     (##cdr _e1834218404_)))
                                                (if (gx#stx-null?
                                                     _tl1834418409_)
                                                    (_loop1833118378_
                                                     _lp-tl1833418393_
                                                     (cons _hd1834318407_
                                                           _expr1833518383_)
                                                     (cons _hd1834018399_
                                                           _hd1833618385_))
                                                    (_g1831718352_
                                                     _g1831818355_))))
                                            (_g1831718352_ _g1831818355_))))
                                    (_g1831718352_ _g1831818355_))))
                            (let ((_expr1833718412_ (reverse _expr1833518383_))
                                  (_hd1833818414_ (reverse _hd1833618385_)))
                              (if (gx#stx-pair? _tl1832718370_)
                                  (let ((_e1834518417_
                                         (gx#stx-e _tl1832718370_)))
                                    (let ((_hd1834618420_
                                           (##car _e1834518417_))
                                          (_tl1834718422_
                                           (##cdr _e1834518417_)))
                                      (if (gx#stx-null? _tl1834718422_)
                                          ((lambda (_L18425_ _L18426_ _L18427_)
                                             (begin
                                               (for-each
                                                _collect-e18315_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1844718450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1844818452_)
                    (cons _g1844718450_ _g1844818452_))
                  '()
                  _L18427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1845418457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1845518459_)
                    (cons _g1845418457_ _g1845518459_))
                  '()
                  _L18426_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1846118464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1846218466_)
                    (cons _g1846118464_ _g1846218466_))
                  '()
                  _L18426_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L18425_)))
                                           _hd1834618420_
                                           _expr1833718412_
                                           _hd1833818414_)
                                          (_g1831718352_ _g1831818355_))))
                                  (_g1831718352_ _g1831818355_)))))))
              (_loop1833118378_ _target1832818373_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1831718352_
                                                     _g1831818355_)))))
                                          (_g1831718352_ _g1831818355_))
                                      (_g1831718352_ _g1831818355_))))
                              (_g1831718352_ _g1831818355_))))
                      (_g1831718352_ _g1831818355_)))))
          (_g1831618469_ _stx18313_)))))
  (define gxc#collect-type-call%
    (lambda (_stx17867_)
      (let* ((_g1787117973_
              (lambda (_g1787217970_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1787217970_)))
             (_g1787017980_ (lambda (_g1787217976_) ((lambda () '#!void))))
             (_g1786918130_
              (lambda (_g1787217983_)
                (if (gx#stx-pair? _g1787217983_)
                    (let ((_e1793017985_ (gx#stx-e _g1787217983_)))
                      (let ((_hd1793117988_ (##car _e1793017985_))
                            (_tl1793217990_ (##cdr _e1793017985_)))
                        (if (gx#stx-pair? _tl1793217990_)
                            (let ((_e1793317993_ (gx#stx-e _tl1793217990_)))
                              (let ((_hd1793417996_ (##car _e1793317993_))
                                    (_tl1793517998_ (##cdr _e1793317993_)))
                                (if (gx#stx-pair? _hd1793417996_)
                                    (let ((_e1793618001_
                                           (gx#stx-e _hd1793417996_)))
                                      (let ((_hd1793718004_
                                             (##car _e1793618001_))
                                            (_tl1793818006_
                                             (##cdr _e1793618001_)))
                                        (if (gx#identifier? _hd1793718004_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1793718004_)
                                                (if (gx#stx-pair?
                                                     _tl1793818006_)
                                                    (let ((_e1793918009_
                                                           (gx#stx-e
                                                            _tl1793818006_)))
                                                      (let ((_hd1794018012_
                                                             (##car _e1793918009_))
                                                            (_tl1794118014_
                                                             (##cdr _e1793918009_)))
                                                        (if (gx#stx-null?
                                                             _tl1794118014_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1793517998_)
                        (let ((_e1794218017_ (gx#stx-e _tl1793517998_)))
                          (let ((_hd1794318020_ (##car _e1794218017_))
                                (_tl1794418022_ (##cdr _e1794218017_)))
                            (if (gx#stx-pair? _hd1794318020_)
                                (let ((_e1794518025_
                                       (gx#stx-e _hd1794318020_)))
                                  (let ((_hd1794618028_ (##car _e1794518025_))
                                        (_tl1794718030_ (##cdr _e1794518025_)))
                                    (if (gx#identifier? _hd1794618028_)
                                        (if (gx#stx-eq? '%#ref _hd1794618028_)
                                            (if (gx#stx-pair? _tl1794718030_)
                                                (let ((_e1794818033_
                                                       (gx#stx-e
                                                        _tl1794718030_)))
                                                  (let ((_hd1794918036_
                                                         (##car _e1794818033_))
                                                        (_tl1795018038_
                                                         (##cdr _e1794818033_)))
                                                    (if (gx#stx-null?
                                                         _tl1795018038_)
                                                        (if (gx#stx-pair?
                                                             _tl1794418022_)
                                                            (let ((_e1795118041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1794418022_)))
                      (let ((_hd1795218044_ (##car _e1795118041_))
                            (_tl1795318046_ (##cdr _e1795118041_)))
                        (if (gx#stx-pair? _hd1795218044_)
                            (let ((_e1795418049_ (gx#stx-e _hd1795218044_)))
                              (let ((_hd1795518052_ (##car _e1795418049_))
                                    (_tl1795618054_ (##cdr _e1795418049_)))
                                (if (gx#identifier? _hd1795518052_)
                                    (if (gx#stx-eq? '%#quote _hd1795518052_)
                                        (if (gx#stx-pair? _tl1795618054_)
                                            (let ((_e1795718057_
                                                   (gx#stx-e _tl1795618054_)))
                                              (let ((_hd1795818060_
                                                     (##car _e1795718057_))
                                                    (_tl1795918062_
                                                     (##cdr _e1795718057_)))
                                                (if (gx#stx-null?
                                                     _tl1795918062_)
                                                    (if (gx#stx-pair?
                                                         _tl1795318046_)
                                                        (let ((_e1796018065_
                                                               (gx#stx-e
                                                                _tl1795318046_)))
                                                          (let ((_hd1796118068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1796018065_))
                        (_tl1796218070_ (##cdr _e1796018065_)))
                    (if (gx#stx-pair? _hd1796118068_)
                        (let ((_e1796318073_ (gx#stx-e _hd1796118068_)))
                          (let ((_hd1796418076_ (##car _e1796318073_))
                                (_tl1796518078_ (##cdr _e1796318073_)))
                            (if (gx#identifier? _hd1796418076_)
                                (if (gx#stx-eq? '%#ref _hd1796418076_)
                                    (if (gx#stx-pair? _tl1796518078_)
                                        (let ((_e1796618081_
                                               (gx#stx-e _tl1796518078_)))
                                          (let ((_hd1796718084_
                                                 (##car _e1796618081_))
                                                (_tl1796818086_
                                                 (##cdr _e1796618081_)))
                                            (if (gx#stx-null? _tl1796818086_)
                                                (if (gx#stx-null?
                                                     _tl1796218070_)
                                                    ((lambda (_L18089_
                                                              _L18090_
                                                              _L18091_
                                                              _L18092_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#generate-runtime-binding-id _L18091_)
                    (gx#stx-e _L18090_)
                    (gxc#generate-runtime-binding-id _L18089_)
                    '#f)
                   (_g1787017980_ _g1787217983_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1796718084_
                                                     _hd1795818060_
                                                     _hd1794918036_
                                                     _hd1794018012_)
                                                    (_g1787017980_
                                                     _g1787217983_))
                                                (_g1787017980_
                                                 _g1787217983_))))
                                        (_g1787017980_ _g1787217983_))
                                    (_g1787017980_ _g1787217983_))
                                (_g1787017980_ _g1787217983_))))
                        (_g1787017980_ _g1787217983_))))
                (_g1787017980_ _g1787217983_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1787017980_
                                                     _g1787217983_))))
                                            (_g1787017980_ _g1787217983_))
                                        (_g1787017980_ _g1787217983_))
                                    (_g1787017980_ _g1787217983_))))
                            (_g1787017980_ _g1787217983_))))
                    (_g1787017980_ _g1787217983_))
                (_g1787017980_ _g1787217983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1787017980_ _g1787217983_))
                                            (_g1787017980_ _g1787217983_))
                                        (_g1787017980_ _g1787217983_))))
                                (_g1787017980_ _g1787217983_))))
                        (_g1787017980_ _g1787217983_))
                    (_g1787017980_ _g1787217983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1787017980_
                                                     _g1787217983_))
                                                (_g1787017980_ _g1787217983_))
                                            (_g1787017980_ _g1787217983_))))
                                    (_g1787017980_ _g1787217983_))))
                            (_g1787017980_ _g1787217983_))))
                    (_g1787017980_ _g1787217983_))))
             (_g1786818310_
              (lambda (_g1787218133_)
                (if (gx#stx-pair? _g1787218133_)
                    (let ((_e1787818135_ (gx#stx-e _g1787218133_)))
                      (let ((_hd1787918138_ (##car _e1787818135_))
                            (_tl1788018140_ (##cdr _e1787818135_)))
                        (if (gx#stx-pair? _tl1788018140_)
                            (let ((_e1788118143_ (gx#stx-e _tl1788018140_)))
                              (let ((_hd1788218146_ (##car _e1788118143_))
                                    (_tl1788318148_ (##cdr _e1788118143_)))
                                (if (gx#stx-pair? _hd1788218146_)
                                    (let ((_e1788418151_
                                           (gx#stx-e _hd1788218146_)))
                                      (let ((_hd1788518154_
                                             (##car _e1788418151_))
                                            (_tl1788618156_
                                             (##cdr _e1788418151_)))
                                        (if (gx#identifier? _hd1788518154_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1788518154_)
                                                (if (gx#stx-pair?
                                                     _tl1788618156_)
                                                    (let ((_e1788718159_
                                                           (gx#stx-e
                                                            _tl1788618156_)))
                                                      (let ((_hd1788818162_
                                                             (##car _e1788718159_))
                                                            (_tl1788918164_
                                                             (##cdr _e1788718159_)))
                                                        (if (gx#stx-null?
                                                             _tl1788918164_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1788318148_)
                        (let ((_e1789018167_ (gx#stx-e _tl1788318148_)))
                          (let ((_hd1789118170_ (##car _e1789018167_))
                                (_tl1789218172_ (##cdr _e1789018167_)))
                            (if (gx#stx-pair? _hd1789118170_)
                                (let ((_e1789318175_
                                       (gx#stx-e _hd1789118170_)))
                                  (let ((_hd1789418178_ (##car _e1789318175_))
                                        (_tl1789518180_ (##cdr _e1789318175_)))
                                    (if (gx#identifier? _hd1789418178_)
                                        (if (gx#stx-eq? '%#ref _hd1789418178_)
                                            (if (gx#stx-pair? _tl1789518180_)
                                                (let ((_e1789618183_
                                                       (gx#stx-e
                                                        _tl1789518180_)))
                                                  (let ((_hd1789718186_
                                                         (##car _e1789618183_))
                                                        (_tl1789818188_
                                                         (##cdr _e1789618183_)))
                                                    (if (gx#stx-null?
                                                         _tl1789818188_)
                                                        (if (gx#stx-pair?
                                                             _tl1789218172_)
                                                            (let ((_e1789918191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1789218172_)))
                      (let ((_hd1790018194_ (##car _e1789918191_))
                            (_tl1790118196_ (##cdr _e1789918191_)))
                        (if (gx#stx-pair? _hd1790018194_)
                            (let ((_e1790218199_ (gx#stx-e _hd1790018194_)))
                              (let ((_hd1790318202_ (##car _e1790218199_))
                                    (_tl1790418204_ (##cdr _e1790218199_)))
                                (if (gx#identifier? _hd1790318202_)
                                    (if (gx#stx-eq? '%#quote _hd1790318202_)
                                        (if (gx#stx-pair? _tl1790418204_)
                                            (let ((_e1790518207_
                                                   (gx#stx-e _tl1790418204_)))
                                              (let ((_hd1790618210_
                                                     (##car _e1790518207_))
                                                    (_tl1790718212_
                                                     (##cdr _e1790518207_)))
                                                (if (gx#stx-null?
                                                     _tl1790718212_)
                                                    (if (gx#stx-pair?
                                                         _tl1790118196_)
                                                        (let ((_e1790818215_
                                                               (gx#stx-e
                                                                _tl1790118196_)))
                                                          (let ((_hd1790918218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1790818215_))
                        (_tl1791018220_ (##cdr _e1790818215_)))
                    (if (gx#stx-pair? _hd1790918218_)
                        (let ((_e1791118223_ (gx#stx-e _hd1790918218_)))
                          (let ((_hd1791218226_ (##car _e1791118223_))
                                (_tl1791318228_ (##cdr _e1791118223_)))
                            (if (gx#identifier? _hd1791218226_)
                                (if (gx#stx-eq? '%#ref _hd1791218226_)
                                    (if (gx#stx-pair? _tl1791318228_)
                                        (let ((_e1791418231_
                                               (gx#stx-e _tl1791318228_)))
                                          (let ((_hd1791518234_
                                                 (##car _e1791418231_))
                                                (_tl1791618236_
                                                 (##cdr _e1791418231_)))
                                            (if (gx#stx-null? _tl1791618236_)
                                                (if (gx#stx-pair?
                                                     _tl1791018220_)
                                                    (let ((_e1791718239_
                                                           (gx#stx-e
                                                            _tl1791018220_)))
                                                      (let ((_hd1791818242_
                                                             (##car _e1791718239_))
                                                            (_tl1791918244_
                                                             (##cdr _e1791718239_)))
                                                        (if (gx#stx-pair?
                                                             _hd1791818242_)
                                                            (let ((_e1792018247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1791818242_)))
                      (let ((_hd1792118250_ (##car _e1792018247_))
                            (_tl1792218252_ (##cdr _e1792018247_)))
                        (if (gx#identifier? _hd1792118250_)
                            (if (gx#stx-eq? '%#quote _hd1792118250_)
                                (if (gx#stx-pair? _tl1792218252_)
                                    (let ((_e1792318255_
                                           (gx#stx-e _tl1792218252_)))
                                      (let ((_hd1792418258_
                                             (##car _e1792318255_))
                                            (_tl1792518260_
                                             (##cdr _e1792318255_)))
                                        (if (gx#stx-null? _tl1792518260_)
                                            (if (gx#stx-null? _tl1791918244_)
                                                ((lambda (_L18263_
                                                          _L18264_
                                                          _L18265_
                                                          _L18266_
                                                          _L18267_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L18267_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#generate-runtime-binding-id
                                                         _L18266_)
                                                        (gx#stx-e _L18265_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L18264_)
                                                        (gx#stx-e _L18263_))
                                                       (_g1786918130_
                                                        _g1787218133_)))
                                                 _hd1792418258_
                                                 _hd1791518234_
                                                 _hd1790618210_
                                                 _hd1789718186_
                                                 _hd1788818162_)
                                                (_g1786918130_ _g1787218133_))
                                            (_g1786918130_ _g1787218133_))))
                                    (_g1786918130_ _g1787218133_))
                                (_g1786918130_ _g1787218133_))
                            (_g1786918130_ _g1787218133_))))
                    (_g1786918130_ _g1787218133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1786918130_
                                                     _g1787218133_))
                                                (_g1786918130_
                                                 _g1787218133_))))
                                        (_g1786918130_ _g1787218133_))
                                    (_g1786918130_ _g1787218133_))
                                (_g1786918130_ _g1787218133_))))
                        (_g1786918130_ _g1787218133_))))
                (_g1786918130_ _g1787218133_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1786918130_
                                                     _g1787218133_))))
                                            (_g1786918130_ _g1787218133_))
                                        (_g1786918130_ _g1787218133_))
                                    (_g1786918130_ _g1787218133_))))
                            (_g1786918130_ _g1787218133_))))
                    (_g1786918130_ _g1787218133_))
                (_g1786918130_ _g1787218133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1786918130_ _g1787218133_))
                                            (_g1786918130_ _g1787218133_))
                                        (_g1786918130_ _g1787218133_))))
                                (_g1786918130_ _g1787218133_))))
                        (_g1786918130_ _g1787218133_))
                    (_g1786918130_ _g1787218133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1786918130_
                                                     _g1787218133_))
                                                (_g1786918130_ _g1787218133_))
                                            (_g1786918130_ _g1787218133_))))
                                    (_g1786918130_ _g1787218133_))))
                            (_g1786918130_ _g1787218133_))))
                    (_g1786918130_ _g1787218133_)))))
        (_g1786818310_ _stx17867_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx17807_)
      (let* ((_g1781017823_
              (lambda (_g1781117820_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1781117820_)))
             (_g1780917830_ (lambda (_g1781117826_) ((lambda () '#f))))
             (_g1780817864_
              (lambda (_g1781117833_)
                (if (gx#stx-pair? _g1781117833_)
                    (let ((_e1781317835_ (gx#stx-e _g1781117833_)))
                      (let ((_hd1781417838_ (##car _e1781317835_))
                            (_tl1781517840_ (##cdr _e1781317835_)))
                        (if (gx#stx-pair? _tl1781517840_)
                            (let ((_e1781617843_ (gx#stx-e _tl1781517840_)))
                              (let ((_hd1781717846_ (##car _e1781617843_))
                                    (_tl1781817848_ (##cdr _e1781617843_)))
                                (if (gx#stx-null? _tl1781817848_)
                                    ((lambda (_L17851_)
                                       (gxc#compile-e _L17851_))
                                     _hd1781717846_)
                                    (_g1780917830_ _g1781117833_))))
                            (_g1780917830_ _g1781117833_))))
                    (_g1780917830_ _g1781117833_)))))
        (_g1780817864_ _stx17807_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx17740_)
      (let* ((_g1774217759_
              (lambda (_g1774317756_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1774317756_)))
             (_g1774117804_
              (lambda (_g1774317762_)
                (if (gx#stx-pair? _g1774317762_)
                    (let ((_e1774617764_ (gx#stx-e _g1774317762_)))
                      (let ((_hd1774717767_ (##car _e1774617764_))
                            (_tl1774817769_ (##cdr _e1774617764_)))
                        (if (gx#stx-pair? _tl1774817769_)
                            (let ((_e1774917772_ (gx#stx-e _tl1774817769_)))
                              (let ((_hd1775017775_ (##car _e1774917772_))
                                    (_tl1775117777_ (##cdr _e1774917772_)))
                                (if (gx#stx-pair? _tl1775117777_)
                                    (let ((_e1775217780_
                                           (gx#stx-e _tl1775117777_)))
                                      (let ((_hd1775317783_
                                             (##car _e1775217780_))
                                            (_tl1775417785_
                                             (##cdr _e1775217780_)))
                                        (if (gx#stx-null? _tl1775417785_)
                                            ((lambda (_L17788_ _L17789_)
                                               (gxc#compile-e _L17788_))
                                             _hd1775317783_
                                             _hd1775017775_)
                                            (_g1774217759_ _g1774317762_))))
                                    (_g1774217759_ _g1774317762_))))
                            (_g1774217759_ _g1774317762_))))
                    (_g1774217759_ _g1774317762_)))))
        (_g1774117804_ _stx17740_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx17165_)
      (let* ((_g1717017291_
              (lambda (_g1717117288_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1717117288_)))
             (_g1716917298_ (lambda (_g1717117294_) ((lambda () '#f))))
             (_g1716817322_
              (lambda (_g1717117301_)
                (if (gx#stx-pair? _g1717117301_)
                    (let ((_e1728417303_ (gx#stx-e _g1717117301_)))
                      (let ((_hd1728517306_ (##car _e1728417303_))
                            (_tl1728617308_ (##cdr _e1728417303_)))
                        ((lambda (_L17311_)
                           (if (gxc#dispatch-lambda-form? _L17311_)
                               (let ((__obj23875
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23875
                                    'lambda
                                    (gxc#lambda-form-arity _L17311_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17311_))
                                   __obj23875))
                               (_g1716917298_ _g1717117301_)))
                         _tl1728617308_)))
                    (_g1716917298_ _g1717117301_))))
             (_g1716717552_
              (lambda (_g1717117325_)
                (if (gx#stx-pair? _g1717117325_)
                    (let ((_e1722917327_ (gx#stx-e _g1717117325_)))
                      (let ((_hd1723017330_ (##car _e1722917327_))
                            (_tl1723117332_ (##cdr _e1722917327_)))
                        (if (gx#stx-pair? _tl1723117332_)
                            (let ((_e1723217335_ (gx#stx-e _tl1723117332_)))
                              (let ((_hd1723317338_ (##car _e1723217335_))
                                    (_tl1723417340_ (##cdr _e1723217335_)))
                                (if (gx#stx-pair/null? _hd1723317338_)
                                    (if (fx>= (gx#stx-length _hd1723317338_)
                                              '0)
                                        (let ((_g23937_
                                               (gx#syntax-split-splice
                                                _hd1723317338_
                                                '0)))
                                          (begin
                                            (let ((_g23938_
                                                   (values-count _g23937_)))
                                              (if (not (fx= _g23938_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23938_)))
                                            (let ((_target1723517343_
                                                   (values-ref _g23937_ 0))
                                                  (_tl1723717345_
                                                   (values-ref _g23937_ 1)))
                                              (if (gx#stx-null? _tl1723717345_)
                                                  (letrec ((_loop1723817348_
                                                            (lambda (_hd1723617351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1724217353_)
                      (if (gx#stx-pair? _hd1723617351_)
                          (let ((_e1723917356_ (gx#stx-e _hd1723617351_)))
                            (let ((_lp-hd1724017359_ (##car _e1723917356_))
                                  (_lp-tl1724117361_ (##cdr _e1723917356_)))
                              (_loop1723817348_
                               _lp-tl1724117361_
                               (cons _lp-hd1724017359_ _arg1724217353_))))
                          (let ((_arg1724317364_ (reverse _arg1724217353_)))
                            (if (gx#stx-pair? _tl1723417340_)
                                (let ((_e1724417367_
                                       (gx#stx-e _tl1723417340_)))
                                  (let ((_hd1724517370_ (##car _e1724417367_))
                                        (_tl1724617372_ (##cdr _e1724417367_)))
                                    (if (gx#stx-pair? _hd1724517370_)
                                        (let ((_e1724717375_
                                               (gx#stx-e _hd1724517370_)))
                                          (let ((_hd1724817378_
                                                 (##car _e1724717375_))
                                                (_tl1724917380_
                                                 (##cdr _e1724717375_)))
                                            (if (gx#identifier? _hd1724817378_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1724817378_)
                                                    (if (gx#stx-pair?
                                                         _tl1724917380_)
                                                        (let ((_e1725017383_
                                                               (gx#stx-e
                                                                _tl1724917380_)))
                                                          (let ((_hd1725117386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1725017383_))
                        (_tl1725217388_ (##cdr _e1725017383_)))
                    (if (gx#stx-pair? _hd1725117386_)
                        (let ((_e1725317391_ (gx#stx-e _hd1725117386_)))
                          (let ((_hd1725417394_ (##car _e1725317391_))
                                (_tl1725517396_ (##cdr _e1725317391_)))
                            (if (gx#identifier? _hd1725417394_)
                                (if (gx#stx-eq? '%#ref _hd1725417394_)
                                    (if (gx#stx-pair? _tl1725517396_)
                                        (let ((_e1725617399_
                                               (gx#stx-e _tl1725517396_)))
                                          (let ((_hd1725717402_
                                                 (##car _e1725617399_))
                                                (_tl1725817404_
                                                 (##cdr _e1725617399_)))
                                            (if (gx#stx-null? _tl1725817404_)
                                                (if (gx#stx-pair?
                                                     _tl1725217388_)
                                                    (let ((_e1725917407_
                                                           (gx#stx-e
                                                            _tl1725217388_)))
                                                      (let ((_hd1726017410_
                                                             (##car _e1725917407_))
                                                            (_tl1726117412_
                                                             (##cdr _e1725917407_)))
                                                        (if (gx#stx-pair?
                                                             _hd1726017410_)
                                                            (let ((_e1726217415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1726017410_)))
                      (let ((_hd1726317418_ (##car _e1726217415_))
                            (_tl1726417420_ (##cdr _e1726217415_)))
                        (if (gx#identifier? _hd1726317418_)
                            (if (gx#stx-eq? '%#ref _hd1726317418_)
                                (if (gx#stx-pair? _tl1726417420_)
                                    (let ((_e1726517423_
                                           (gx#stx-e _tl1726417420_)))
                                      (let ((_hd1726617426_
                                             (##car _e1726517423_))
                                            (_tl1726717428_
                                             (##cdr _e1726517423_)))
                                        (if (gx#stx-null? _tl1726717428_)
                                            (if (gx#stx-pair/null?
                                                 _tl1726117412_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1726117412_)
                                                          '0)
                                                    (let ((_g23939_
                                                           (gx#syntax-split-splice
                                                            _tl1726117412_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23940_
                                                               (values-count
                                                                _g23939_)))
                                                          (if (not (fx= _g23940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23940_)))
                (let ((_target1726817431_ (values-ref _g23939_ 0))
                      (_tl1727017433_ (values-ref _g23939_ 1)))
                  (if (gx#stx-null? _tl1727017433_)
                      (letrec ((_loop1727117436_
                                (lambda (_hd1726917439_ _xarg1727517441_)
                                  (if (gx#stx-pair? _hd1726917439_)
                                      (let ((_e1727217444_
                                             (gx#stx-e _hd1726917439_)))
                                        (let ((_lp-hd1727317447_
                                               (##car _e1727217444_))
                                              (_lp-tl1727417449_
                                               (##cdr _e1727217444_)))
                                          (if (gx#stx-pair? _lp-hd1727317447_)
                                              (let ((_e1727717452_
                                                     (gx#stx-e
                                                      _lp-hd1727317447_)))
                                                (let ((_hd1727817455_
                                                       (##car _e1727717452_))
                                                      (_tl1727917457_
                                                       (##cdr _e1727717452_)))
                                                  (if (gx#identifier?
                                                       _hd1727817455_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1727817455_)
                                                          (if (gx#stx-pair?
                                                               _tl1727917457_)
                                                              (let ((_e1728017460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1727917457_)))
                        (let ((_hd1728117463_ (##car _e1728017460_))
                              (_tl1728217465_ (##cdr _e1728017460_)))
                          (if (gx#stx-null? _tl1728217465_)
                              (_loop1727117436_
                               _lp-tl1727417449_
                               (cons _hd1728117463_ _xarg1727517441_))
                              (_g1716817322_ _g1717117325_))))
                      (_g1716817322_ _g1717117325_))
                  (_g1716817322_ _g1717117325_))
              (_g1716817322_ _g1717117325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1716817322_ _g1717117325_))))
                                      (let ((_xarg1727617468_
                                             (reverse _xarg1727517441_)))
                                        (if (gx#stx-null? _tl1724617372_)
                                            ((lambda (_L17471_
                                                      _L17472_
                                                      _L17473_
                                                      _L17474_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1751117514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1751217516_)
                            (cons _g1751117514_ _g1751217516_))
                          '()
                          _L17474_)))
               (if (eq? (gxc#generate-runtime-binding-id _L17473_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1751817521_
                                                       _g1751917523_)
                                                (cons _g1751817521_
                                                      _g1751917523_))
                                              '()
                                              _L17474_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1752517528_
                                                       _g1752617530_)
                                                (cons _g1752517528_
                                                      _g1752617530_))
                                              '()
                                              _L17471_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1753217535_ _g1753317537_)
                                            (cons _g1753217535_ _g1753317537_))
                                          '()
                                          _L17474_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1753917542_ _g1754017544_)
                                            (cons _g1753917542_ _g1754017544_))
                                          '()
                                          _L17471_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t17547_
                                                           (gxc#generate-runtime-binding-id
                                                            _L17472_))
                                                          (_type17549_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t17547_)))
                                                     (if (##structure-instance-of?
                                                          _type17549_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t17547_)
                                                         '#f))
                                                   (_g1716817322_
                                                    _g1717117325_)))
                                             _xarg1727617468_
                                             _hd1726617426_
                                             _hd1725717402_
                                             _arg1724317364_)
                                            (_g1716817322_ _g1717117325_)))))))
                        (_loop1727117436_ _target1726817431_ '()))
                      (_g1716817322_ _g1717117325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716817322_
                                                     _g1717117325_))
                                                (_g1716817322_ _g1717117325_))
                                            (_g1716817322_ _g1717117325_))))
                                    (_g1716817322_ _g1717117325_))
                                (_g1716817322_ _g1717117325_))
                            (_g1716817322_ _g1717117325_))))
                    (_g1716817322_ _g1717117325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716817322_
                                                     _g1717117325_))
                                                (_g1716817322_
                                                 _g1717117325_))))
                                        (_g1716817322_ _g1717117325_))
                                    (_g1716817322_ _g1717117325_))
                                (_g1716817322_ _g1717117325_))))
                        (_g1716817322_ _g1717117325_))))
                (_g1716817322_ _g1717117325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716817322_
                                                     _g1717117325_))
                                                (_g1716817322_
                                                 _g1717117325_))))
                                        (_g1716817322_ _g1717117325_))))
                                (_g1716817322_ _g1717117325_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1723817348_
                                                     _target1723517343_
                                                     '()))
                                                  (_g1716817322_
                                                   _g1717117325_)))))
                                        (_g1716817322_ _g1717117325_))
                                    (_g1716817322_ _g1717117325_))))
                            (_g1716817322_ _g1717117325_))))
                    (_g1716817322_ _g1717117325_))))
             (_g1716617737_
              (lambda (_g1717117555_)
                (if (gx#stx-pair? _g1717117555_)
                    (let ((_e1717717557_ (gx#stx-e _g1717117555_)))
                      (let ((_hd1717817560_ (##car _e1717717557_))
                            (_tl1717917562_ (##cdr _e1717717557_)))
                        (if (gx#stx-pair? _tl1717917562_)
                            (let ((_e1718017565_ (gx#stx-e _tl1717917562_)))
                              (let ((_hd1718117568_ (##car _e1718017565_))
                                    (_tl1718217570_ (##cdr _e1718017565_)))
                                (if (gx#stx-pair? _tl1718217570_)
                                    (let ((_e1718317573_
                                           (gx#stx-e _tl1718217570_)))
                                      (let ((_hd1718417576_
                                             (##car _e1718317573_))
                                            (_tl1718517578_
                                             (##cdr _e1718317573_)))
                                        (if (gx#stx-pair? _hd1718417576_)
                                            (let ((_e1718617581_
                                                   (gx#stx-e _hd1718417576_)))
                                              (let ((_hd1718717584_
                                                     (##car _e1718617581_))
                                                    (_tl1718817586_
                                                     (##cdr _e1718617581_)))
                                                (if (gx#identifier?
                                                     _hd1718717584_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1718717584_)
                                                        (if (gx#stx-pair?
                                                             _tl1718817586_)
                                                            (let ((_e1718917589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1718817586_)))
                      (let ((_hd1719017592_ (##car _e1718917589_))
                            (_tl1719117594_ (##cdr _e1718917589_)))
                        (if (gx#stx-pair? _hd1719017592_)
                            (let ((_e1719217597_ (gx#stx-e _hd1719017592_)))
                              (let ((_hd1719317600_ (##car _e1719217597_))
                                    (_tl1719417602_ (##cdr _e1719217597_)))
                                (if (gx#identifier? _hd1719317600_)
                                    (if (gx#stx-eq? '%#ref _hd1719317600_)
                                        (if (gx#stx-pair? _tl1719417602_)
                                            (let ((_e1719517605_
                                                   (gx#stx-e _tl1719417602_)))
                                              (let ((_hd1719617608_
                                                     (##car _e1719517605_))
                                                    (_tl1719717610_
                                                     (##cdr _e1719517605_)))
                                                (if (gx#stx-null?
                                                     _tl1719717610_)
                                                    (if (gx#stx-pair?
                                                         _tl1719117594_)
                                                        (let ((_e1719817613_
                                                               (gx#stx-e
                                                                _tl1719117594_)))
                                                          (let ((_hd1719917616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1719817613_))
                        (_tl1720017618_ (##cdr _e1719817613_)))
                    (if (gx#stx-pair? _hd1719917616_)
                        (let ((_e1720117621_ (gx#stx-e _hd1719917616_)))
                          (let ((_hd1720217624_ (##car _e1720117621_))
                                (_tl1720317626_ (##cdr _e1720117621_)))
                            (if (gx#identifier? _hd1720217624_)
                                (if (gx#stx-eq? '%#ref _hd1720217624_)
                                    (if (gx#stx-pair? _tl1720317626_)
                                        (let ((_e1720417629_
                                               (gx#stx-e _tl1720317626_)))
                                          (let ((_hd1720517632_
                                                 (##car _e1720417629_))
                                                (_tl1720617634_
                                                 (##cdr _e1720417629_)))
                                            (if (gx#stx-null? _tl1720617634_)
                                                (if (gx#stx-pair?
                                                     _tl1720017618_)
                                                    (let ((_e1720717637_
                                                           (gx#stx-e
                                                            _tl1720017618_)))
                                                      (let ((_hd1720817640_
                                                             (##car _e1720717637_))
                                                            (_tl1720917642_
                                                             (##cdr _e1720717637_)))
                                                        (if (gx#stx-pair?
                                                             _hd1720817640_)
                                                            (let ((_e1721017645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1720817640_)))
                      (let ((_hd1721117648_ (##car _e1721017645_))
                            (_tl1721217650_ (##cdr _e1721017645_)))
                        (if (gx#identifier? _hd1721117648_)
                            (if (gx#stx-eq? '%#ref _hd1721117648_)
                                (if (gx#stx-pair? _tl1721217650_)
                                    (let ((_e1721317653_
                                           (gx#stx-e _tl1721217650_)))
                                      (let ((_hd1721417656_
                                             (##car _e1721317653_))
                                            (_tl1721517658_
                                             (##cdr _e1721317653_)))
                                        (if (gx#stx-null? _tl1721517658_)
                                            (if (gx#stx-pair? _tl1720917642_)
                                                (let ((_e1721617661_
                                                       (gx#stx-e
                                                        _tl1720917642_)))
                                                  (let ((_hd1721717664_
                                                         (##car _e1721617661_))
                                                        (_tl1721817666_
                                                         (##cdr _e1721617661_)))
                                                    (if (gx#stx-pair?
                                                         _hd1721717664_)
                                                        (let ((_e1721917669_
                                                               (gx#stx-e
                                                                _hd1721717664_)))
                                                          (let ((_hd1722017672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1721917669_))
                        (_tl1722117674_ (##cdr _e1721917669_)))
                    (if (gx#identifier? _hd1722017672_)
                        (if (gx#stx-eq? '%#ref _hd1722017672_)
                            (if (gx#stx-pair? _tl1722117674_)
                                (let ((_e1722217677_
                                       (gx#stx-e _tl1722117674_)))
                                  (let ((_hd1722317680_ (##car _e1722217677_))
                                        (_tl1722417682_ (##cdr _e1722217677_)))
                                    (if (gx#stx-null? _tl1722417682_)
                                        (if (gx#stx-null? _tl1721817666_)
                                            (if (gx#stx-null? _tl1718517578_)
                                                ((lambda (_L17685_
                                                          _L17686_
                                                          _L17687_
                                                          _L17688_
                                                          _L17689_)
                                                   (if (if (gx#identifier?
                                                            _L17689_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17688_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L17687_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L17689_ _L17685_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t17732_
                       (gxc#generate-runtime-binding-id _L17686_))
                      (_type17734_ (gxc#optimizer-resolve-type _type-t17732_)))
                 (if (##structure-instance-of?
                      _type17734_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t17732_)
                     '#f))
               (_g1716717552_ _g1717117555_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1722317680_
                                                 _hd1721417656_
                                                 _hd1720517632_
                                                 _hd1719617608_
                                                 _hd1718117568_)
                                                (_g1716717552_ _g1717117555_))
                                            (_g1716717552_ _g1717117555_))
                                        (_g1716717552_ _g1717117555_))))
                                (_g1716717552_ _g1717117555_))
                            (_g1716717552_ _g1717117555_))
                        (_g1716717552_ _g1717117555_))))
                (_g1716717552_ _g1717117555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1716717552_ _g1717117555_))
                                            (_g1716717552_ _g1717117555_))))
                                    (_g1716717552_ _g1717117555_))
                                (_g1716717552_ _g1717117555_))
                            (_g1716717552_ _g1717117555_))))
                    (_g1716717552_ _g1717117555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716717552_
                                                     _g1717117555_))
                                                (_g1716717552_
                                                 _g1717117555_))))
                                        (_g1716717552_ _g1717117555_))
                                    (_g1716717552_ _g1717117555_))
                                (_g1716717552_ _g1717117555_))))
                        (_g1716717552_ _g1717117555_))))
                (_g1716717552_ _g1717117555_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716717552_
                                                     _g1717117555_))))
                                            (_g1716717552_ _g1717117555_))
                                        (_g1716717552_ _g1717117555_))
                                    (_g1716717552_ _g1717117555_))))
                            (_g1716717552_ _g1717117555_))))
                    (_g1716717552_ _g1717117555_))
                (_g1716717552_ _g1717117555_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716717552_
                                                     _g1717117555_))))
                                            (_g1716717552_ _g1717117555_))))
                                    (_g1716717552_ _g1717117555_))))
                            (_g1716717552_ _g1717117555_))))
                    (_g1716717552_ _g1717117555_)))))
        (_g1716617737_ _stx17165_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx17111_)
      (letrec ((_clause-e17113_
                (lambda (_form17163_)
                  (let ((__obj23876 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23876
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form17163_)
                       (gxc#dispatch-lambda-form-delegate _form17163_))
                      __obj23876)))))
        (let* ((_g1711617126_
                (lambda (_g1711717123_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1711717123_)))
               (_g1711517133_ (lambda (_g1711717129_) ((lambda () '#f))))
               (_g1711417160_
                (lambda (_g1711717136_)
                  (if (gx#stx-pair? _g1711717136_)
                      (let ((_e1711917138_ (gx#stx-e _g1711717136_)))
                        (let ((_hd1712017141_ (##car _e1711917138_))
                              (_tl1712117143_ (##cdr _e1711917138_)))
                          ((lambda (_L17146_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L17146_)
                                 (let ((_clauses17158_
                                        (map _clause-e17113_ _L17146_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses17158_))
                                 (_g1711517133_ _g1711717136_)))
                           _tl1712117143_)))
                      (_g1711517133_ _g1711717136_)))))
          (_g1711417160_ _stx17111_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx17016_)
      (let* ((_g1701917039_
              (lambda (_g1702017036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1702017036_)))
             (_g1701817046_ (lambda (_g1702017042_) ((lambda () '#f))))
             (_g1701717108_
              (lambda (_g1702017049_)
                (if (gx#stx-pair? _g1702017049_)
                    (let ((_e1702317051_ (gx#stx-e _g1702017049_)))
                      (let ((_hd1702417054_ (##car _e1702317051_))
                            (_tl1702517056_ (##cdr _e1702317051_)))
                        (if (gx#stx-pair? _tl1702517056_)
                            (let ((_e1702617059_ (gx#stx-e _tl1702517056_)))
                              (let ((_hd1702717062_ (##car _e1702617059_))
                                    (_tl1702817064_ (##cdr _e1702617059_)))
                                (if (gx#stx-pair? _hd1702717062_)
                                    (let ((_e1702917067_
                                           (gx#stx-e _hd1702717062_)))
                                      (let ((_hd1703017070_
                                             (##car _e1702917067_))
                                            (_tl1703117072_
                                             (##cdr _e1702917067_)))
                                        (if (gx#identifier? _hd1703017070_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1703017070_)
                                                (if (gx#stx-pair?
                                                     _tl1703117072_)
                                                    (let ((_e1703217075_
                                                           (gx#stx-e
                                                            _tl1703117072_)))
                                                      (let ((_hd1703317078_
                                                             (##car _e1703217075_))
                                                            (_tl1703417080_
                                                             (##cdr _e1703217075_)))
                                                        (if (gx#stx-null?
                                                             _tl1703417080_)
                                                            ((lambda (_L17083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17084_)
                       (let ((_type-e1710117103_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L17084_)
                               '#f)))
                         (if _type-e1710117103_
                             (let ((_type-e17106_ _type-e1710117103_))
                               (_type-e17106_ _stx17016_ _L17083_))
                             '#f)))
                     _tl1702817064_
                     _hd1703317078_)
                    (_g1701817046_ _g1702017049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1701817046_
                                                     _g1702017049_))
                                                (_g1701817046_ _g1702017049_))
                                            (_g1701817046_ _g1702017049_))))
                                    (_g1701817046_ _g1702017049_))))
                            (_g1701817046_ _g1702017049_))))
                    (_g1701817046_ _g1702017049_)))))
        (_g1701717108_ _stx17016_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx16501_ _args16502_)
      (let* ((_g1650616619_
              (lambda (_g1650716616_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1650716616_)))
             (_g1650516626_
              (lambda (_g1650716622_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx16501_))
                     '#f)))))
             (_g1650416833_
              (lambda (_g1650716629_)
                (if (gx#stx-pair? _g1650716629_)
                    (let ((_e1656716631_ (gx#stx-e _g1650716629_)))
                      (let ((_hd1656816634_ (##car _e1656716631_))
                            (_tl1656916636_ (##cdr _e1656716631_)))
                        (if (gx#stx-pair? _hd1656816634_)
                            (let ((_e1657016639_ (gx#stx-e _hd1656816634_)))
                              (let ((_hd1657116642_ (##car _e1657016639_))
                                    (_tl1657216644_ (##cdr _e1657016639_)))
                                (if (gx#identifier? _hd1657116642_)
                                    (if (gx#stx-eq? '%#quote _hd1657116642_)
                                        (if (gx#stx-pair? _tl1657216644_)
                                            (let ((_e1657316647_
                                                   (gx#stx-e _tl1657216644_)))
                                              (let ((_hd1657416650_
                                                     (##car _e1657316647_))
                                                    (_tl1657516652_
                                                     (##cdr _e1657316647_)))
                                                (if (gx#stx-null?
                                                     _tl1657516652_)
                                                    (if (gx#stx-pair?
                                                         _tl1656916636_)
                                                        (let ((_e1657616655_
                                                               (gx#stx-e
                                                                _tl1656916636_)))
                                                          (let ((_hd1657716658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1657616655_))
                        (_tl1657816660_ (##cdr _e1657616655_)))
                    (if (gx#stx-pair? _hd1657716658_)
                        (let ((_e1657916663_ (gx#stx-e _hd1657716658_)))
                          (let ((_hd1658016666_ (##car _e1657916663_))
                                (_tl1658116668_ (##cdr _e1657916663_)))
                            (if (gx#identifier? _hd1658016666_)
                                (if (gx#stx-eq? '%#ref _hd1658016666_)
                                    (if (gx#stx-pair? _tl1658116668_)
                                        (let ((_e1658216671_
                                               (gx#stx-e _tl1658116668_)))
                                          (let ((_hd1658316674_
                                                 (##car _e1658216671_))
                                                (_tl1658416676_
                                                 (##cdr _e1658216671_)))
                                            (if (gx#stx-null? _tl1658416676_)
                                                (if (gx#stx-pair?
                                                     _tl1657816660_)
                                                    (let ((_e1658516679_
                                                           (gx#stx-e
                                                            _tl1657816660_)))
                                                      (let ((_hd1658616682_
                                                             (##car _e1658516679_))
                                                            (_tl1658716684_
                                                             (##cdr _e1658516679_)))
                                                        (if (gx#stx-pair?
                                                             _hd1658616682_)
                                                            (let ((_e1658816687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1658616682_)))
                      (let ((_hd1658916690_ (##car _e1658816687_))
                            (_tl1659016692_ (##cdr _e1658816687_)))
                        (if (gx#identifier? _hd1658916690_)
                            (if (gx#stx-eq? '%#quote _hd1658916690_)
                                (if (gx#stx-pair? _tl1659016692_)
                                    (let ((_e1659116695_
                                           (gx#stx-e _tl1659016692_)))
                                      (let ((_hd1659216698_
                                             (##car _e1659116695_))
                                            (_tl1659316700_
                                             (##cdr _e1659116695_)))
                                        (if (gx#stx-null? _tl1659316700_)
                                            (if (gx#stx-pair? _tl1658716684_)
                                                (let ((_e1659416703_
                                                       (gx#stx-e
                                                        _tl1658716684_)))
                                                  (let ((_hd1659516706_
                                                         (##car _e1659416703_))
                                                        (_tl1659616708_
                                                         (##cdr _e1659416703_)))
                                                    (if (gx#stx-pair?
                                                         _tl1659616708_)
                                                        (let ((_e1659716711_
                                                               (gx#stx-e
                                                                _tl1659616708_)))
                                                          (let ((_hd1659816714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1659716711_))
                        (_tl1659916716_ (##cdr _e1659716711_)))
                    (if (gx#stx-pair? _hd1659816714_)
                        (let ((_e1660016719_ (gx#stx-e _hd1659816714_)))
                          (let ((_hd1660116722_ (##car _e1660016719_))
                                (_tl1660216724_ (##cdr _e1660016719_)))
                            (if (gx#identifier? _hd1660116722_)
                                (if (gx#stx-eq? '%#quote _hd1660116722_)
                                    (if (gx#stx-pair? _tl1660216724_)
                                        (let ((_e1660316727_
                                               (gx#stx-e _tl1660216724_)))
                                          (let ((_hd1660416730_
                                                 (##car _e1660316727_))
                                                (_tl1660516732_
                                                 (##cdr _e1660316727_)))
                                            (if (gx#stx-null? _tl1660516732_)
                                                (if (gx#stx-pair?
                                                     _tl1659916716_)
                                                    (let ((_e1660616735_
                                                           (gx#stx-e
                                                            _tl1659916716_)))
                                                      (let ((_hd1660716738_
                                                             (##car _e1660616735_))
                                                            (_tl1660816740_
                                                             (##cdr _e1660616735_)))
                                                        (if (gx#stx-pair?
                                                             _hd1660716738_)
                                                            (let ((_e1660916743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1660716738_)))
                      (let ((_hd1661016746_ (##car _e1660916743_))
                            (_tl1661116748_ (##cdr _e1660916743_)))
                        (if (gx#identifier? _hd1661016746_)
                            (if (gx#stx-eq? '%#quote _hd1661016746_)
                                (if (gx#stx-pair? _tl1661116748_)
                                    (let ((_e1661216751_
                                           (gx#stx-e _tl1661116748_)))
                                      (let ((_hd1661316754_
                                             (##car _e1661216751_))
                                            (_tl1661416756_
                                             (##cdr _e1661216751_)))
                                        (if (gx#stx-null? _tl1661416756_)
                                            ((lambda (_L16759_
                                                      _L16760_
                                                      _L16761_
                                                      _L16762_
                                                      _L16763_
                                                      _L16764_)
                                               (let* ((_super-t16810_
                                                       (if (gx#stx-e _L16763_)
                                                           (gxc#generate-runtime-binding-id
                                                            _L16763_)
                                                           '#f))
                                                      (_super-type16812_
                                                       (if _super-t16810_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t16810_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type16812_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type16812_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx16501_
                _L16763_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields16828_
                                                          (gx#stx-e _L16762_))
                                                         (_xfields16829_
                                                          (if _super-type16812_
                                                              (let ((_super-fields1681416817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type16812_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1681516819_
                             (##structure-ref
                              _super-type16812_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1681416817_
                            (if _super-xfields1681516819_
                                (let ((_super-fields16822_
                                       _super-fields1681416817_)
                                      (_super-xfields16823_
                                       _super-xfields1681516819_))
                                  (fx+ _super-fields16822_
                                       _super-xfields16823_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist16830_ (gx#stx-e _L16760_))
                 (_ctor16831_
                  (let ((_$e16825_ (gx#stx-e _L16759_)))
                    (if _$e16825_
                        (values _$e16825_)
                        (if _super-type16812_
                            (##structure-ref
                             _super-type16812_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t16810_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj23877
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj23877
                                                          (gx#stx-e _L16764_)
                                                          _super-t16810_
                                                          _fields16828_
                                                          _xfields16829_
                                                          _ctor16831_
                                                          _plist16830_)
                                                         __obj23877))))))
                                             _hd1661316754_
                                             _hd1660416730_
                                             _hd1659516706_
                                             _hd1659216698_
                                             _hd1658316674_
                                             _hd1657416650_)
                                            (_g1650516626_ _g1650716629_))))
                                    (_g1650516626_ _g1650716629_))
                                (_g1650516626_ _g1650716629_))
                            (_g1650516626_ _g1650716629_))))
                    (_g1650516626_ _g1650716629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1650516626_
                                                     _g1650716629_))
                                                (_g1650516626_
                                                 _g1650716629_))))
                                        (_g1650516626_ _g1650716629_))
                                    (_g1650516626_ _g1650716629_))
                                (_g1650516626_ _g1650716629_))))
                        (_g1650516626_ _g1650716629_))))
                (_g1650516626_ _g1650716629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1650516626_ _g1650716629_))
                                            (_g1650516626_ _g1650716629_))))
                                    (_g1650516626_ _g1650716629_))
                                (_g1650516626_ _g1650716629_))
                            (_g1650516626_ _g1650716629_))))
                    (_g1650516626_ _g1650716629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1650516626_
                                                     _g1650716629_))
                                                (_g1650516626_
                                                 _g1650716629_))))
                                        (_g1650516626_ _g1650716629_))
                                    (_g1650516626_ _g1650716629_))
                                (_g1650516626_ _g1650716629_))))
                        (_g1650516626_ _g1650716629_))))
                (_g1650516626_ _g1650716629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1650516626_
                                                     _g1650716629_))))
                                            (_g1650516626_ _g1650716629_))
                                        (_g1650516626_ _g1650716629_))
                                    (_g1650516626_ _g1650716629_))))
                            (_g1650516626_ _g1650716629_))))
                    (_g1650516626_ _g1650716629_))))
             (_g1650317013_
              (lambda (_g1650716836_)
                (if (gx#stx-pair? _g1650716836_)
                    (let ((_e1651316838_ (gx#stx-e _g1650716836_)))
                      (let ((_hd1651416841_ (##car _e1651316838_))
                            (_tl1651516843_ (##cdr _e1651316838_)))
                        (if (gx#stx-pair? _hd1651416841_)
                            (let ((_e1651616846_ (gx#stx-e _hd1651416841_)))
                              (let ((_hd1651716849_ (##car _e1651616846_))
                                    (_tl1651816851_ (##cdr _e1651616846_)))
                                (if (gx#identifier? _hd1651716849_)
                                    (if (gx#stx-eq? '%#quote _hd1651716849_)
                                        (if (gx#stx-pair? _tl1651816851_)
                                            (let ((_e1651916854_
                                                   (gx#stx-e _tl1651816851_)))
                                              (let ((_hd1652016857_
                                                     (##car _e1651916854_))
                                                    (_tl1652116859_
                                                     (##cdr _e1651916854_)))
                                                (if (gx#stx-null?
                                                     _tl1652116859_)
                                                    (if (gx#stx-pair?
                                                         _tl1651516843_)
                                                        (let ((_e1652216862_
                                                               (gx#stx-e
                                                                _tl1651516843_)))
                                                          (let ((_hd1652316865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1652216862_))
                        (_tl1652416867_ (##cdr _e1652216862_)))
                    (if (gx#stx-pair? _hd1652316865_)
                        (let ((_e1652516870_ (gx#stx-e _hd1652316865_)))
                          (let ((_hd1652616873_ (##car _e1652516870_))
                                (_tl1652716875_ (##cdr _e1652516870_)))
                            (if (gx#identifier? _hd1652616873_)
                                (if (gx#stx-eq? '%#quote _hd1652616873_)
                                    (if (gx#stx-pair? _tl1652716875_)
                                        (let ((_e1652816878_
                                               (gx#stx-e _tl1652716875_)))
                                          (let ((_hd1652916881_
                                                 (##car _e1652816878_))
                                                (_tl1653016883_
                                                 (##cdr _e1652816878_)))
                                            (if (gx#stx-datum? _hd1652916881_)
                                                (if (equal? (gx#stx-e
                                                             _hd1652916881_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1653016883_)
                                                        (if (gx#stx-pair?
                                                             _tl1652416867_)
                                                            (let ((_e1653116886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1652416867_)))
                      (let ((_hd1653216889_ (##car _e1653116886_))
                            (_tl1653316891_ (##cdr _e1653116886_)))
                        (if (gx#stx-pair? _hd1653216889_)
                            (let ((_e1653416894_ (gx#stx-e _hd1653216889_)))
                              (let ((_hd1653516897_ (##car _e1653416894_))
                                    (_tl1653616899_ (##cdr _e1653416894_)))
                                (if (gx#identifier? _hd1653516897_)
                                    (if (gx#stx-eq? '%#quote _hd1653516897_)
                                        (if (gx#stx-pair? _tl1653616899_)
                                            (let ((_e1653716902_
                                                   (gx#stx-e _tl1653616899_)))
                                              (let ((_hd1653816905_
                                                     (##car _e1653716902_))
                                                    (_tl1653916907_
                                                     (##cdr _e1653716902_)))
                                                (if (gx#stx-null?
                                                     _tl1653916907_)
                                                    (if (gx#stx-pair?
                                                         _tl1653316891_)
                                                        (let ((_e1654016910_
                                                               (gx#stx-e
                                                                _tl1653316891_)))
                                                          (let ((_hd1654116913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1654016910_))
                        (_tl1654216915_ (##cdr _e1654016910_)))
                    (if (gx#stx-pair? _tl1654216915_)
                        (let ((_e1654316918_ (gx#stx-e _tl1654216915_)))
                          (let ((_hd1654416921_ (##car _e1654316918_))
                                (_tl1654516923_ (##cdr _e1654316918_)))
                            (if (gx#stx-pair? _hd1654416921_)
                                (let ((_e1654616926_
                                       (gx#stx-e _hd1654416921_)))
                                  (let ((_hd1654716929_ (##car _e1654616926_))
                                        (_tl1654816931_ (##cdr _e1654616926_)))
                                    (if (gx#identifier? _hd1654716929_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1654716929_)
                                            (if (gx#stx-pair? _tl1654816931_)
                                                (let ((_e1654916934_
                                                       (gx#stx-e
                                                        _tl1654816931_)))
                                                  (let ((_hd1655016937_
                                                         (##car _e1654916934_))
                                                        (_tl1655116939_
                                                         (##cdr _e1654916934_)))
                                                    (if (gx#stx-null?
                                                         _tl1655116939_)
                                                        (if (gx#stx-pair?
                                                             _tl1654516923_)
                                                            (let ((_e1655216942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1654516923_)))
                      (let ((_hd1655316945_ (##car _e1655216942_))
                            (_tl1655416947_ (##cdr _e1655216942_)))
                        (if (gx#stx-pair? _hd1655316945_)
                            (let ((_e1655516950_ (gx#stx-e _hd1655316945_)))
                              (let ((_hd1655616953_ (##car _e1655516950_))
                                    (_tl1655716955_ (##cdr _e1655516950_)))
                                (if (gx#identifier? _hd1655616953_)
                                    (if (gx#stx-eq? '%#quote _hd1655616953_)
                                        (if (gx#stx-pair? _tl1655716955_)
                                            (let ((_e1655816958_
                                                   (gx#stx-e _tl1655716955_)))
                                              (let ((_hd1655916961_
                                                     (##car _e1655816958_))
                                                    (_tl1656016963_
                                                     (##cdr _e1655816958_)))
                                                (if (gx#stx-null?
                                                     _tl1656016963_)
                                                    ((lambda (_L16966_
                                                              _L16967_
                                                              _L16968_
                                                              _L16969_
                                                              _L16970_)
                                                       (let ((__obj23878
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj23878
                                                            (gx#stx-e _L16970_)
                                                            '#f
                                                            (gx#stx-e _L16969_)
                                                            '0
                                                            (gx#stx-e _L16966_)
                                                            (gx#stx-e
                                                             _L16967_))
                                                           __obj23878)))
                                                     _hd1655916961_
                                                     _hd1655016937_
                                                     _hd1654116913_
                                                     _hd1653816905_
                                                     _hd1652016857_)
                                                    (_g1650416833_
                                                     _g1650716836_))))
                                            (_g1650416833_ _g1650716836_))
                                        (_g1650416833_ _g1650716836_))
                                    (_g1650416833_ _g1650716836_))))
                            (_g1650416833_ _g1650716836_))))
                    (_g1650416833_ _g1650716836_))
                (_g1650416833_ _g1650716836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1650416833_ _g1650716836_))
                                            (_g1650416833_ _g1650716836_))
                                        (_g1650416833_ _g1650716836_))))
                                (_g1650416833_ _g1650716836_))))
                        (_g1650416833_ _g1650716836_))))
                (_g1650416833_ _g1650716836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1650416833_
                                                     _g1650716836_))))
                                            (_g1650416833_ _g1650716836_))
                                        (_g1650416833_ _g1650716836_))
                                    (_g1650416833_ _g1650716836_))))
                            (_g1650416833_ _g1650716836_))))
                    (_g1650416833_ _g1650716836_))
                (_g1650416833_ _g1650716836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1650416833_
                                                     _g1650716836_))
                                                (_g1650416833_
                                                 _g1650716836_))))
                                        (_g1650416833_ _g1650716836_))
                                    (_g1650416833_ _g1650716836_))
                                (_g1650416833_ _g1650716836_))))
                        (_g1650416833_ _g1650716836_))))
                (_g1650416833_ _g1650716836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1650416833_
                                                     _g1650716836_))))
                                            (_g1650416833_ _g1650716836_))
                                        (_g1650416833_ _g1650716836_))
                                    (_g1650416833_ _g1650716836_))))
                            (_g1650416833_ _g1650716836_))))
                    (_g1650416833_ _g1650716836_)))))
        (_g1650317013_ _args16502_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx16427_ _args16428_)
      (let* ((_g1643116447_
              (lambda (_g1643216444_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1643216444_)))
             (_g1643016454_ (lambda (_g1643216450_) ((lambda () '#f))))
             (_g1642916498_
              (lambda (_g1643216457_)
                (if (gx#stx-pair? _g1643216457_)
                    (let ((_e1643416459_ (gx#stx-e _g1643216457_)))
                      (let ((_hd1643516462_ (##car _e1643416459_))
                            (_tl1643616464_ (##cdr _e1643416459_)))
                        (if (gx#stx-pair? _hd1643516462_)
                            (let ((_e1643716467_ (gx#stx-e _hd1643516462_)))
                              (let ((_hd1643816470_ (##car _e1643716467_))
                                    (_tl1643916472_ (##cdr _e1643716467_)))
                                (if (gx#identifier? _hd1643816470_)
                                    (if (gx#stx-eq? '%#ref _hd1643816470_)
                                        (if (gx#stx-pair? _tl1643916472_)
                                            (let ((_e1644016475_
                                                   (gx#stx-e _tl1643916472_)))
                                              (let ((_hd1644116478_
                                                     (##car _e1644016475_))
                                                    (_tl1644216480_
                                                     (##cdr _e1644016475_)))
                                                (if (gx#stx-null?
                                                     _tl1644216480_)
                                                    (if (gx#stx-null?
                                                         _tl1643616464_)
                                                        ((lambda (_L16483_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L16483_)))
                                                         _hd1644116478_)
                                                        (_g1643016454_
                                                         _g1643216457_))
                                                    (_g1643016454_
                                                     _g1643216457_))))
                                            (_g1643016454_ _g1643216457_))
                                        (_g1643016454_ _g1643216457_))
                                    (_g1643016454_ _g1643216457_))))
                            (_g1643016454_ _g1643216457_))))
                    (_g1643016454_ _g1643216457_)))))
        (_g1642916498_ _args16428_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx16298_ _args16299_ _unchecked?16300_)
        (let* ((_g1630316329_
                (lambda (_g1630416326_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1630416326_)))
               (_g1630216336_ (lambda (_g1630416332_) ((lambda () '#f))))
               (_g1630116412_
                (lambda (_g1630416339_)
                  (if (gx#stx-pair? _g1630416339_)
                      (let ((_e1630716341_ (gx#stx-e _g1630416339_)))
                        (let ((_hd1630816344_ (##car _e1630716341_))
                              (_tl1630916346_ (##cdr _e1630716341_)))
                          (if (gx#stx-pair? _hd1630816344_)
                              (let ((_e1631016349_ (gx#stx-e _hd1630816344_)))
                                (let ((_hd1631116352_ (##car _e1631016349_))
                                      (_tl1631216354_ (##cdr _e1631016349_)))
                                  (if (gx#identifier? _hd1631116352_)
                                      (if (gx#stx-eq? '%#ref _hd1631116352_)
                                          (if (gx#stx-pair? _tl1631216354_)
                                              (let ((_e1631316357_
                                                     (gx#stx-e
                                                      _tl1631216354_)))
                                                (let ((_hd1631416360_
                                                       (##car _e1631316357_))
                                                      (_tl1631516362_
                                                       (##cdr _e1631316357_)))
                                                  (if (gx#stx-null?
                                                       _tl1631516362_)
                                                      (if (gx#stx-pair?
                                                           _tl1630916346_)
                                                          (let ((_e1631616365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1630916346_)))
                    (let ((_hd1631716368_ (##car _e1631616365_))
                          (_tl1631816370_ (##cdr _e1631616365_)))
                      (if (gx#stx-pair? _hd1631716368_)
                          (let ((_e1631916373_ (gx#stx-e _hd1631716368_)))
                            (let ((_hd1632016376_ (##car _e1631916373_))
                                  (_tl1632116378_ (##cdr _e1631916373_)))
                              (if (gx#identifier? _hd1632016376_)
                                  (if (gx#stx-eq? '%#quote _hd1632016376_)
                                      (if (gx#stx-pair? _tl1632116378_)
                                          (let ((_e1632216381_
                                                 (gx#stx-e _tl1632116378_)))
                                            (let ((_hd1632316384_
                                                   (##car _e1632216381_))
                                                  (_tl1632416386_
                                                   (##cdr _e1632216381_)))
                                              (if (gx#stx-null? _tl1632416386_)
                                                  (if (gx#stx-null?
                                                       _tl1631816370_)
                                                      ((lambda (_L16389_
                                                                _L16390_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16390_)
                                                          (gx#stx-e _L16389_)
                                                          _unchecked?16300_))
                                                       _hd1632316384_
                                                       _hd1631416360_)
                                                      (_g1630216336_
                                                       _g1630416339_))
                                                  (_g1630216336_
                                                   _g1630416339_))))
                                          (_g1630216336_ _g1630416339_))
                                      (_g1630216336_ _g1630416339_))
                                  (_g1630216336_ _g1630416339_))))
                          (_g1630216336_ _g1630416339_))))
                  (_g1630216336_ _g1630416339_))
              (_g1630216336_ _g1630416339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1630216336_ _g1630416339_))
                                          (_g1630216336_ _g1630416339_))
                                      (_g1630216336_ _g1630416339_))))
                              (_g1630216336_ _g1630416339_))))
                      (_g1630216336_ _g1630416339_)))))
          (_g1630116412_ _args16299_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx16418_ _args16419_)
          (let ((_unchecked?16421_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx16418_
             _args16419_
             _unchecked?16421_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23942_
          (let ((_g23941_ (length _g23942_)))
            (cond ((fx= _g23941_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23942_))
                  ((fx= _g23941_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g23942_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23942_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx16168_ _args16169_ _unchecked?16170_)
        (let* ((_g1617316199_
                (lambda (_g1617416196_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1617416196_)))
               (_g1617216206_ (lambda (_g1617416202_) ((lambda () '#f))))
               (_g1617116282_
                (lambda (_g1617416209_)
                  (if (gx#stx-pair? _g1617416209_)
                      (let ((_e1617716211_ (gx#stx-e _g1617416209_)))
                        (let ((_hd1617816214_ (##car _e1617716211_))
                              (_tl1617916216_ (##cdr _e1617716211_)))
                          (if (gx#stx-pair? _hd1617816214_)
                              (let ((_e1618016219_ (gx#stx-e _hd1617816214_)))
                                (let ((_hd1618116222_ (##car _e1618016219_))
                                      (_tl1618216224_ (##cdr _e1618016219_)))
                                  (if (gx#identifier? _hd1618116222_)
                                      (if (gx#stx-eq? '%#ref _hd1618116222_)
                                          (if (gx#stx-pair? _tl1618216224_)
                                              (let ((_e1618316227_
                                                     (gx#stx-e
                                                      _tl1618216224_)))
                                                (let ((_hd1618416230_
                                                       (##car _e1618316227_))
                                                      (_tl1618516232_
                                                       (##cdr _e1618316227_)))
                                                  (if (gx#stx-null?
                                                       _tl1618516232_)
                                                      (if (gx#stx-pair?
                                                           _tl1617916216_)
                                                          (let ((_e1618616235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1617916216_)))
                    (let ((_hd1618716238_ (##car _e1618616235_))
                          (_tl1618816240_ (##cdr _e1618616235_)))
                      (if (gx#stx-pair? _hd1618716238_)
                          (let ((_e1618916243_ (gx#stx-e _hd1618716238_)))
                            (let ((_hd1619016246_ (##car _e1618916243_))
                                  (_tl1619116248_ (##cdr _e1618916243_)))
                              (if (gx#identifier? _hd1619016246_)
                                  (if (gx#stx-eq? '%#quote _hd1619016246_)
                                      (if (gx#stx-pair? _tl1619116248_)
                                          (let ((_e1619216251_
                                                 (gx#stx-e _tl1619116248_)))
                                            (let ((_hd1619316254_
                                                   (##car _e1619216251_))
                                                  (_tl1619416256_
                                                   (##cdr _e1619216251_)))
                                              (if (gx#stx-null? _tl1619416256_)
                                                  (if (gx#stx-null?
                                                       _tl1618816240_)
                                                      ((lambda (_L16259_
                                                                _L16260_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16260_)
                                                          (gx#stx-e _L16259_)
                                                          _unchecked?16170_))
                                                       _hd1619316254_
                                                       _hd1618416230_)
                                                      (_g1617216206_
                                                       _g1617416209_))
                                                  (_g1617216206_
                                                   _g1617416209_))))
                                          (_g1617216206_ _g1617416209_))
                                      (_g1617216206_ _g1617416209_))
                                  (_g1617216206_ _g1617416209_))))
                          (_g1617216206_ _g1617416209_))))
                  (_g1617216206_ _g1617416209_))
              (_g1617216206_ _g1617416209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1617216206_ _g1617416209_))
                                          (_g1617216206_ _g1617416209_))
                                      (_g1617216206_ _g1617416209_))))
                              (_g1617216206_ _g1617416209_))))
                      (_g1617216206_ _g1617416209_)))))
          (_g1617116282_ _args16169_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx16288_ _args16289_)
          (let ((_unchecked?16291_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx16288_
             _args16289_
             _unchecked?16291_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23944_
          (let ((_g23943_ (length _g23944_)))
            (cond ((fx= _g23943_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23944_))
                  ((fx= _g23943_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g23944_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23944_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx16164_ _args16165_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx16164_
       _args16165_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx16161_ _args16162_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx16161_
       _args16162_
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
    (lambda (_stx16110_)
      (let* ((_g1611216125_
              (lambda (_g1611316122_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1611316122_)))
             (_g1611116158_
              (lambda (_g1611316128_)
                (if (gx#stx-pair? _g1611316128_)
                    (let ((_e1611516130_ (gx#stx-e _g1611316128_)))
                      (let ((_hd1611616133_ (##car _e1611516130_))
                            (_tl1611716135_ (##cdr _e1611516130_)))
                        (if (gx#stx-pair? _tl1611716135_)
                            (let ((_e1611816138_ (gx#stx-e _tl1611716135_)))
                              (let ((_hd1611916141_ (##car _e1611816138_))
                                    (_tl1612016143_ (##cdr _e1611816138_)))
                                (if (gx#stx-null? _tl1612016143_)
                                    ((lambda (_L16146_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L16146_)))
                                     _hd1611916141_)
                                    (_g1611216125_ _g1611316128_))))
                            (_g1611216125_ _g1611316128_))))
                    (_g1611216125_ _g1611316128_)))))
        (_g1611116158_ _stx16110_))))
  (define gxc#optimize-call%
    (lambda (_stx16016_)
      (let* ((_g1601916039_
              (lambda (_g1602016036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1602016036_)))
             (_g1601816046_
              (lambda (_g1602016042_)
                ((lambda () (gxc#xform-call% _stx16016_)))))
             (_g1601716107_
              (lambda (_g1602016049_)
                (if (gx#stx-pair? _g1602016049_)
                    (let ((_e1602316051_ (gx#stx-e _g1602016049_)))
                      (let ((_hd1602416054_ (##car _e1602316051_))
                            (_tl1602516056_ (##cdr _e1602316051_)))
                        (if (gx#stx-pair? _tl1602516056_)
                            (let ((_e1602616059_ (gx#stx-e _tl1602516056_)))
                              (let ((_hd1602716062_ (##car _e1602616059_))
                                    (_tl1602816064_ (##cdr _e1602616059_)))
                                (if (gx#stx-pair? _hd1602716062_)
                                    (let ((_e1602916067_
                                           (gx#stx-e _hd1602716062_)))
                                      (let ((_hd1603016070_
                                             (##car _e1602916067_))
                                            (_tl1603116072_
                                             (##cdr _e1602916067_)))
                                        (if (gx#identifier? _hd1603016070_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1603016070_)
                                                (if (gx#stx-pair?
                                                     _tl1603116072_)
                                                    (let ((_e1603216075_
                                                           (gx#stx-e
                                                            _tl1603116072_)))
                                                      (let ((_hd1603316078_
                                                             (##car _e1603216075_))
                                                            (_tl1603416080_
                                                             (##cdr _e1603216075_)))
                                                        (if (gx#stx-null?
                                                             _tl1603416080_)
                                                            ((lambda (_L16083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16084_)
                       (let* ((_rator-id16102_
                               (gxc#generate-runtime-binding-id _L16084_))
                              (_rator-type16104_
                               (gxc#optimizer-resolve-type _rator-id16102_)))
                         (if (##structure-instance-of?
                              _rator-type16104_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id16102_
                                '" => "
                                _rator-type16104_
                                '" "
                                (##structure-ref
                                 _rator-type16104_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type16104_
                                'optimize-call
                                _stx16016_
                                _L16083_))
                             (if (not _rator-type16104_)
                                 (gxc#xform-call% _stx16016_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx16016_
                                  _rator-type16104_)))))
                     _tl1602816064_
                     _hd1603316078_)
                    (_g1601816046_ _g1602016049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1601816046_
                                                     _g1602016049_))
                                                (_g1601816046_ _g1602016049_))
                                            (_g1601816046_ _g1602016049_))))
                                    (_g1601816046_ _g1602016049_))))
                            (_g1601816046_ _g1602016049_))))
                    (_g1601816046_ _g1602016049_)))))
        (_g1601716107_ _stx16016_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self15870_ _stx15871_ _args15872_)
      (let* ((_self1587315879_ _self15870_)
             (_E1587515883_
              (lambda () (error '"No clause matching" _self1587315879_)))
             (_K1587616008_
              (lambda (_struct-t15886_)
                (let* ((_struct-type15888_
                        (gxc#optimizer-resolve-type _struct-t15886_))
                       (_struct-type1588915903_ _struct-type15888_)
                       (_E1589315907_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1588915903_)))
                       (_else1589215911_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15871_
                           _struct-t15886_
                           _struct-type15888_)))
                       (_try-match1589115919_
                        (lambda ()
                          (let ((_K1589415916_
                                 (lambda () (gxc#xform-call% _stx15871_))))
                            (if (##eq? _struct-type1588915903_ '#f)
                                (_K1589415916_)
                                (_else1589215911_)))))
                       (_K1589515983_
                        (lambda (_plist15922_ _struct-type-id15923_)
                          (let* ((_g1592615936_
                                  (lambda (_g1592715933_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1592715933_)))
                                 (_g1592515943_
                                  (lambda (_g1592715939_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx15871_)))))
                                 (_g1592415980_
                                  (lambda (_g1592715946_)
                                    (if (gx#stx-pair? _g1592715946_)
                                        (let ((_e1592915948_
                                               (gx#stx-e _g1592715946_)))
                                          (let ((_hd1593015951_
                                                 (##car _e1592915948_))
                                                (_tl1593115953_
                                                 (##cdr _e1592915948_)))
                                            (if (gx#stx-null? _tl1593115953_)
                                                ((lambda (_L15956_)
                                                   (let ((_expr15977_
                                                          (gxc#compile-e
                                                           _L15956_))
                                                         (_op15978_
                                                          (if (if _plist15922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist15922_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op15978_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id15923_ '()))
                          (cons _expr15977_ '())))
              _stx15871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1593015951_)
                                                (_g1592515943_
                                                 _g1592715946_))))
                                        (_g1592515943_ _g1592715946_)))))
                            (_g1592415980_ _args15872_)))))
                  (if (##structure-instance-of?
                       _struct-type1588915903_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1589615986_
                              (##vector-ref _struct-type1588915903_ '1))
                             (_struct-type-id15989_ _e1589615986_)
                             (_e1589715991_
                              (##vector-ref _struct-type1588915903_ '2))
                             (_e1589815994_
                              (##vector-ref _struct-type1588915903_ '3))
                             (_e1589915997_
                              (##vector-ref _struct-type1588915903_ '4))
                             (_e1590016000_
                              (##vector-ref _struct-type1588915903_ '5))
                             (_e1590116003_
                              (##vector-ref _struct-type1588915903_ '6))
                             (_plist16006_ _e1590116003_))
                        (_K1589515983_ _plist16006_ _struct-type-id15989_))
                      (_try-match1589115919_))))))
        (if (##structure-instance-of?
             _self1587315879_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1587716011_ (##vector-ref _self1587315879_ '1))
                   (_struct-t16014_ _e1587716011_))
              (_K1587616008_ _struct-t16014_))
            (_E1587515883_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self15644_ _stx15645_ _args15646_)
      (let* ((_self1564715653_ _self15644_)
             (_E1564915657_
              (lambda () (error '"No clause matching" _self1564715653_)))
             (_K1565015740_
              (lambda (_struct-t15660_)
                (let* ((_struct-type15662_
                        (gxc#optimizer-resolve-type _struct-t15660_))
                       (_struct-type1566315676_ _struct-type15662_)
                       (_E1566715680_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1566315676_)))
                       (_else1566615684_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx15645_
                           _struct-t15660_
                           _struct-type15662_)))
                       (_try-match1566515692_
                        (lambda ()
                          (let ((_K1566815689_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t15660_)
                                     (gxc#xform-call% _stx15645_)))))
                            (if (##eq? _struct-type1566315676_ '#f)
                                (_K1566815689_)
                                (_else1566615684_)))))
                       (_K1566915714_
                        (lambda (_ctor15695_
                                 _xfields15696_
                                 _fields15697_
                                 _type-id15698_)
                          (let* ((_args15700_ (map gxc#compile-e _args15646_))
                                 (_$e15702_
                                  (if _ctor15695_
                                      (if _xfields15696_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type15662_
                                           _ctor15695_)
                                          '#f)
                                      '#f)))
                            (if _$e15702_
                                ((lambda (_kons15705_)
                                   (let ((_$obj15707_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj15707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t15660_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields15697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields15696_)
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
                                    (cons (cons '%#ref (cons _kons15705_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj15707_ '()))
                                                _args15700_)))
                              _stx15645_))
                            (cons (cons '%#ref (cons _$obj15707_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx15645_)))
                                 _$e15702_)
                                (if (let ((_$e15709_ _ctor15695_))
                                      (if _$e15709_
                                          _$e15709_
                                          (not _xfields15696_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t15660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args15700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx15645_)
                                    (let ((_arity15712_
                                           (fx+ _fields15697_ _xfields15696_)))
                                      (if (fx= _arity15712_
                                               (length _args15700_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t15660_ '())) _args15700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx15645_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx15645_
                                           _struct-t15660_
                                           _arity15712_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1566315676_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1567015717_
                              (##vector-ref _struct-type1566315676_ '1))
                             (_type-id15720_ _e1567015717_)
                             (_e1567115722_
                              (##vector-ref _struct-type1566315676_ '2))
                             (_e1567215725_
                              (##vector-ref _struct-type1566315676_ '3))
                             (_fields15728_ _e1567215725_)
                             (_e1567315730_
                              (##vector-ref _struct-type1566315676_ '4))
                             (_xfields15733_ _e1567315730_)
                             (_e1567415735_
                              (##vector-ref _struct-type1566315676_ '5))
                             (_ctor15738_ _e1567415735_))
                        (_K1566915714_
                         _ctor15738_
                         _xfields15733_
                         _fields15728_
                         _type-id15720_))
                      (_try-match1566515692_))))))
        (if (##structure-instance-of?
             _self1564715653_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1565115743_ (##vector-ref _self1564715653_ '1))
                   (_struct-t15746_ _e1565115743_))
              (_K1565015740_ _struct-t15746_))
            (_E1564915657_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self15355_ _stx15356_ _args15357_)
      (let* ((_self1535815366_ _self15355_)
             (_E1536015370_
              (lambda () (error '"No clause matching" _self1535815366_)))
             (_K1536115504_
              (lambda (_unchecked?15373_ _off15374_ _struct-t15375_)
                (let* ((_struct-type15377_
                        (gxc#optimizer-resolve-type _struct-t15375_))
                       (_struct-type1537815392_ _struct-type15377_)
                       (_E1538215396_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1537815392_)))
                       (_else1538115400_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15356_
                           _struct-t15375_
                           _struct-type15377_)))
                       (_try-match1538015408_
                        (lambda ()
                          (let ((_K1538315405_
                                 (lambda () (gxc#xform-call% _stx15356_))))
                            (if (##eq? _struct-type1537815392_ '#f)
                                (_K1538315405_)
                                (_else1538115400_)))))
                       (_K1538415475_
                        (lambda (_plist15411_
                                 _xfields15412_
                                 _fields15413_
                                 _struct-type-id15414_)
                          (if _xfields15412_
                              (let* ((_g1541715427_
                                      (lambda (_g1541815424_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1541815424_)))
                                     (_g1541615434_
                                      (lambda (_g1541815430_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx15356_)))))
                                     (_g1541515472_
                                      (lambda (_g1541815437_)
                                        (if (gx#stx-pair? _g1541815437_)
                                            (let ((_e1542015439_
                                                   (gx#stx-e _g1541815437_)))
                                              (let ((_hd1542115442_
                                                     (##car _e1542015439_))
                                                    (_tl1542215444_
                                                     (##cdr _e1542015439_)))
                                                (if (gx#stx-null?
                                                     _tl1542215444_)
                                                    ((lambda (_L15447_)
                                                       (let ((_expr15468_
                                                              (gxc#compile-e
                                                               _L15447_))
                                                             (_off15469_
                                                              (fx+ _off15374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields15412_
                           '1))
                     (_op15470_
                      (if _unchecked?15373_
                          '%#struct-unchecked-ref
                          (if (if _plist15411_
                                  (assgetq 'final: _plist15411_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op15470_
                        (cons (cons '%#ref (cons _struct-t15375_ '()))
                              (cons (cons '%#quote (cons _off15469_ '()))
                                    (cons _expr15468_ '()))))
                  _stx15356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1542115442_)
                                                    (_g1541615434_
                                                     _g1541815437_))))
                                            (_g1541615434_ _g1541815437_)))))
                                (_g1541515472_ _args15357_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id15414_)
                                (gxc#xform-call% _stx15356_))))))
                  (if (##structure-instance-of?
                       _struct-type1537815392_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1538515478_
                              (##vector-ref _struct-type1537815392_ '1))
                             (_struct-type-id15481_ _e1538515478_)
                             (_e1538615483_
                              (##vector-ref _struct-type1537815392_ '2))
                             (_e1538715486_
                              (##vector-ref _struct-type1537815392_ '3))
                             (_fields15489_ _e1538715486_)
                             (_e1538815491_
                              (##vector-ref _struct-type1537815392_ '4))
                             (_xfields15494_ _e1538815491_)
                             (_e1538915496_
                              (##vector-ref _struct-type1537815392_ '5))
                             (_e1539015499_
                              (##vector-ref _struct-type1537815392_ '6))
                             (_plist15502_ _e1539015499_))
                        (_K1538415475_
                         _plist15502_
                         _xfields15494_
                         _fields15489_
                         _struct-type-id15481_))
                      (_try-match1538015408_))))))
        (if (##structure-instance-of?
             _self1535815366_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1536215507_ (##vector-ref _self1535815366_ '1))
                   (_struct-t15510_ _e1536215507_)
                   (_e1536315512_ (##vector-ref _self1535815366_ '2))
                   (_off15515_ _e1536315512_)
                   (_e1536415517_ (##vector-ref _self1535815366_ '3))
                   (_unchecked?15520_ _e1536415517_))
              (_K1536115504_ _unchecked?15520_ _off15515_ _struct-t15510_))
            (_E1536015370_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self15049_ _stx15050_ _args15051_)
      (let* ((_self1505215060_ _self15049_)
             (_E1505415064_
              (lambda () (error '"No clause matching" _self1505215060_)))
             (_K1505515215_
              (lambda (_unchecked?15067_ _off15068_ _struct-t15069_)
                (let* ((_struct-type15071_
                        (gxc#optimizer-resolve-type _struct-t15069_))
                       (_struct-type1507215086_ _struct-type15071_)
                       (_E1507615090_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1507215086_)))
                       (_else1507515094_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15050_
                           _struct-t15069_
                           _struct-type15071_)))
                       (_try-match1507415102_
                        (lambda ()
                          (let ((_K1507715099_
                                 (lambda () (gxc#xform-call% _stx15050_))))
                            (if (##eq? _struct-type1507215086_ '#f)
                                (_K1507715099_)
                                (_else1507515094_)))))
                       (_K1507815186_
                        (lambda (_plist15105_
                                 _xfields15106_
                                 _fields15107_
                                 _struct-type-id15108_)
                          (if _xfields15106_
                              (let* ((_g1511115125_
                                      (lambda (_g1511215122_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1511215122_)))
                                     (_g1511015132_
                                      (lambda (_g1511215128_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx15050_)))))
                                     (_g1510915183_
                                      (lambda (_g1511215135_)
                                        (if (gx#stx-pair? _g1511215135_)
                                            (let ((_e1511515137_
                                                   (gx#stx-e _g1511215135_)))
                                              (let ((_hd1511615140_
                                                     (##car _e1511515137_))
                                                    (_tl1511715142_
                                                     (##cdr _e1511515137_)))
                                                (if (gx#stx-pair?
                                                     _tl1511715142_)
                                                    (let ((_e1511815145_
                                                           (gx#stx-e
                                                            _tl1511715142_)))
                                                      (let ((_hd1511915148_
                                                             (##car _e1511815145_))
                                                            (_tl1512015150_
                                                             (##cdr _e1511815145_)))
                                                        (if (gx#stx-null?
                                                             _tl1512015150_)
                                                            ((lambda (_L15153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15154_)
                       (let ((_expr15178_ (gxc#compile-e _L15154_))
                             (_val15179_ (gxc#compile-e _L15153_))
                             (_off15180_ (fx+ _off15068_ _xfields15106_ '1))
                             (_op15181_
                              (if _unchecked?15067_
                                  '%#struct-unchecked-set!
                                  (if (if _plist15105_
                                          (assgetq 'final: _plist15105_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op15181_
                                (cons (cons '%#ref (cons _struct-t15069_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off15180_ '()))
                                            (cons _expr15178_
                                                  (cons _val15179_ '())))))
                          _stx15050_)))
                     _hd1511915148_
                     _hd1511615140_)
                    (_g1511015132_ _g1511215135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1511015132_
                                                     _g1511215135_))))
                                            (_g1511015132_ _g1511215135_)))))
                                (_g1510915183_ _args15051_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id15108_)
                                (gxc#xform-call% _stx15050_))))))
                  (if (##structure-instance-of?
                       _struct-type1507215086_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1507915189_
                              (##vector-ref _struct-type1507215086_ '1))
                             (_struct-type-id15192_ _e1507915189_)
                             (_e1508015194_
                              (##vector-ref _struct-type1507215086_ '2))
                             (_e1508115197_
                              (##vector-ref _struct-type1507215086_ '3))
                             (_fields15200_ _e1508115197_)
                             (_e1508215202_
                              (##vector-ref _struct-type1507215086_ '4))
                             (_xfields15205_ _e1508215202_)
                             (_e1508315207_
                              (##vector-ref _struct-type1507215086_ '5))
                             (_e1508415210_
                              (##vector-ref _struct-type1507215086_ '6))
                             (_plist15213_ _e1508415210_))
                        (_K1507815186_
                         _plist15213_
                         _xfields15205_
                         _fields15200_
                         _struct-type-id15192_))
                      (_try-match1507415102_))))))
        (if (##structure-instance-of?
             _self1505215060_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1505615218_ (##vector-ref _self1505215060_ '1))
                   (_struct-t15221_ _e1505615218_)
                   (_e1505715223_ (##vector-ref _self1505215060_ '2))
                   (_off15226_ _e1505715223_)
                   (_e1505815228_ (##vector-ref _self1505215060_ '3))
                   (_unchecked?15231_ _e1505815228_))
              (_K1505515215_ _unchecked?15231_ _off15226_ _struct-t15221_))
            (_E1505415064_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self14883_ _stx14884_ _args14885_)
      (let* ((_self1488614895_ _self14883_)
             (_E1488814899_
              (lambda () (error '"No clause matching" _self1488614895_)))
             (_K1488914906_
              (lambda (_inline14902_ _dispatch14903_ _arity14904_)
                (begin
                  (if (gxc#!lambda-arity-match? _self14883_ _args14885_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx14884_
                       _arity14904_))
                  (if _inline14902_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline14902_ _stx14884_)
                          _stx14884_)))
                      (if _dispatch14903_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch14903_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch14903_ '()))
                                          _args14885_))
                              _stx14884_)))
                          (gxc#xform-call% _stx14884_)))))))
        (if (##structure-instance-of?
             _self1488614895_
             (##type-id gxc#!lambda::t))
            (let* ((_e1489014909_ (##vector-ref _self1488614895_ '1))
                   (_e1489114912_ (##vector-ref _self1488614895_ '2))
                   (_arity14915_ _e1489114912_)
                   (_e1489214917_ (##vector-ref _self1488614895_ '3))
                   (_dispatch14920_ _e1489214917_)
                   (_e1489314922_ (##vector-ref _self1488614895_ '4))
                   (_inline14925_ _e1489314922_))
              (_K1488914906_ _inline14925_ _dispatch14920_ _arity14915_))
            (_E1488814899_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self14722_ _stx14723_ _args14724_)
      (let* ((_self1472514732_ _self14722_)
             (_E1472714736_
              (lambda () (error '"No clause matching" _self1472514732_)))
             (_K1472814750_
              (lambda (_clauses14739_)
                (let ((_$e14745_
                       (find (lambda (_g1474014742_)
                               (gxc#!lambda-arity-match?
                                _g1474014742_
                                _args14724_))
                             _clauses14739_)))
                  (if _$e14745_
                      ((lambda (_clause14748_)
                         (call-method
                          _clause14748_
                          'optimize-call
                          _stx14723_
                          _args14724_))
                       _$e14745_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx14723_
                       (map gxc#!lambda-arity _clauses14739_)))))))
        (if (##structure-instance-of?
             _self1472514732_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1472914753_ (##vector-ref _self1472514732_ '1))
                   (_e1473014756_ (##vector-ref _self1472514732_ '2))
                   (_clauses14759_ _e1473014756_))
              (_K1472814750_ _clauses14759_))
            (_E1472714736_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self14536_ _args14537_)
      (let* ((_self1453814545_ _self14536_)
             (_E1454014549_
              (lambda () (error '"No clause matching" _self1453814545_)))
             (_K1454114589_
              (lambda (_arity14552_)
                (let* ((_arity1455314562_ _arity14552_)
                       (_E1455614566_
                        (lambda ()
                          (error '"No clause matching" _arity1455314562_)))
                       (_try-match1455514582_
                        (lambda ()
                          (let ((_K1455714572_
                                 (lambda (_arity14570_)
                                   (fx>= (length _args14537_) _arity14570_))))
                            (if (##pair? _arity1455314562_)
                                (let ((_hd1455814575_
                                       (##car _arity1455314562_))
                                      (_tl1455914577_
                                       (##cdr _arity1455314562_)))
                                  (let ((_arity14580_ _hd1455814575_))
                                    (if (##null? _tl1455914577_)
                                        (_K1455714572_ _arity14580_)
                                        (_E1455614566_))))
                                (_E1455614566_)))))
                       (_K1456014586_
                        (lambda () (fx= (length _args14537_) _arity14552_))))
                  (if (fixnum? _arity1455314562_)
                      (_K1456014586_)
                      (_try-match1455514582_))))))
        (if (##structure-instance-of?
             _self1453814545_
             (##type-id gxc#!lambda::t))
            (let* ((_e1454214592_ (##vector-ref _self1453814545_ '1))
                   (_e1454314595_ (##vector-ref _self1453814545_ '2))
                   (_arity14598_ _e1454314595_))
              (_K1454114589_ _arity14598_))
            (_E1454014549_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx14476_)
      (let* ((_g1447814492_
              (lambda (_g1447914489_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1447914489_)))
             (_g1447714533_
              (lambda (_g1447914495_)
                (if (gx#stx-pair? _g1447914495_)
                    (let ((_e1448214497_ (gx#stx-e _g1447914495_)))
                      (let ((_hd1448314500_ (##car _e1448214497_))
                            (_tl1448414502_ (##cdr _e1448214497_)))
                        (if (gx#stx-pair? _tl1448414502_)
                            (let ((_e1448514505_ (gx#stx-e _tl1448414502_)))
                              (let ((_hd1448614508_ (##car _e1448514505_))
                                    (_tl1448714510_ (##cdr _e1448514505_)))
                                ((lambda (_L14513_ _L14514_)
                                   (let* ((_ctx14527_
                                           (gx#syntax-local-e__0 _L14514_))
                                          (_code14529_
                                           (##structure-ref
                                            _ctx14527_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14529_))
                                      gx#current-expander-context
                                      _ctx14527_)))
                                 _tl1448714510_
                                 _hd1448614508_)))
                            (_g1447814492_ _g1447914495_))))
                    (_g1447814492_ _g1447914495_)))))
        (_g1447714533_ _stx14476_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14286_)
      (letrec ((_generate-e14288_
                (lambda (_id14465_)
                  (let* ((_sym14467_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14465_)
                              '#f))
                         (_$e14469_
                          (if _sym14467_
                              (gxc#optimizer-lookup-type _sym14467_)
                              '#f)))
                    (if _$e14469_
                        ((lambda (_type14472_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14467_)
                             (let ((_typedecl14474_
                                    (call-method _type14472_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14467_
                                           (cons _typedecl14474_ '()))))))
                         _$e14469_)
                        '(begin))))))
        (let* ((_g1429114329_
                (lambda (_g1429214326_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1429214326_)))
               (_g1429014410_
                (lambda (_g1429214332_)
                  (if (gx#stx-pair? _g1429214332_)
                      (let ((_e1430714334_ (gx#stx-e _g1429214332_)))
                        (let ((_hd1430814337_ (##car _e1430714334_))
                              (_tl1430914339_ (##cdr _e1430714334_)))
                          (if (gx#stx-pair? _tl1430914339_)
                              (let ((_e1431014342_ (gx#stx-e _tl1430914339_)))
                                (let ((_hd1431114345_ (##car _e1431014342_))
                                      (_tl1431214347_ (##cdr _e1431014342_)))
                                  (if (gx#stx-pair/null? _hd1431114345_)
                                      (if (fx>= (gx#stx-length _hd1431114345_)
                                                '0)
                                          (let ((_g23945_
                                                 (gx#syntax-split-splice
                                                  _hd1431114345_
                                                  '0)))
                                            (begin
                                              (let ((_g23946_
                                                     (values-count _g23945_)))
                                                (if (not (fx= _g23946_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23946_)))
                                              (let ((_target1431314350_
                                                     (values-ref _g23945_ 0))
                                                    (_tl1431514352_
                                                     (values-ref _g23945_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1431514352_)
                                                    (letrec ((_loop1431614355_
                                                              (lambda (_hd1431414358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1432014360_)
                        (if (gx#stx-pair? _hd1431414358_)
                            (let ((_e1431714363_ (gx#stx-e _hd1431414358_)))
                              (let ((_lp-hd1431814366_ (##car _e1431714363_))
                                    (_lp-tl1431914368_ (##cdr _e1431714363_)))
                                (_loop1431614355_
                                 _lp-tl1431914368_
                                 (cons _lp-hd1431814366_ _id1432014360_))))
                            (let ((_id1432114371_ (reverse _id1432014360_)))
                              (if (gx#stx-pair? _tl1431214347_)
                                  (let ((_e1432214374_
                                         (gx#stx-e _tl1431214347_)))
                                    (let ((_hd1432314377_
                                           (##car _e1432214374_))
                                          (_tl1432414379_
                                           (##cdr _e1432214374_)))
                                      (if (gx#stx-null? _tl1432414379_)
                                          ((lambda (_L14382_)
                                             (let ((_types14408_
                                                    (map _generate-e14288_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1440014403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1440114405_)
                             (cons _g1440014403_ _g1440114405_))
                           '()
                           _L14382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14408_)))
                                           _id1432114371_)
                                          (_g1429114329_ _g1429214332_))))
                                  (_g1429114329_ _g1429214332_)))))))
              (_loop1431614355_ _target1431314350_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1429114329_
                                                     _g1429214332_)))))
                                          (_g1429114329_ _g1429214332_))
                                      (_g1429114329_ _g1429214332_))))
                              (_g1429114329_ _g1429214332_))))
                      (_g1429114329_ _g1429214332_))))
               (_g1428914462_
                (lambda (_g1429214413_)
                  (if (gx#stx-pair? _g1429214413_)
                      (let ((_e1429414415_ (gx#stx-e _g1429214413_)))
                        (let ((_hd1429514418_ (##car _e1429414415_))
                              (_tl1429614420_ (##cdr _e1429414415_)))
                          (if (gx#stx-pair? _tl1429614420_)
                              (let ((_e1429714423_ (gx#stx-e _tl1429614420_)))
                                (let ((_hd1429814426_ (##car _e1429714423_))
                                      (_tl1429914428_ (##cdr _e1429714423_)))
                                  (if (gx#stx-pair? _hd1429814426_)
                                      (let ((_e1430014431_
                                             (gx#stx-e _hd1429814426_)))
                                        (let ((_hd1430114434_
                                               (##car _e1430014431_))
                                              (_tl1430214436_
                                               (##cdr _e1430014431_)))
                                          (if (gx#stx-null? _tl1430214436_)
                                              (if (gx#stx-pair? _tl1429914428_)
                                                  (let ((_e1430314439_
                                                         (gx#stx-e
                                                          _tl1429914428_)))
                                                    (let ((_hd1430414442_
                                                           (##car _e1430314439_))
                                                          (_tl1430514444_
                                                           (##cdr _e1430314439_)))
                                                      (if (gx#stx-null?
                                                           _tl1430514444_)
                                                          ((lambda (_L14447_)
                                                             (_generate-e14288_
                                                              _L14447_))
                                                           _hd1430114434_)
                                                          (_g1429014410_
                                                           _g1429214413_))))
                                                  (_g1429014410_
                                                   _g1429214413_))
                                              (_g1429014410_ _g1429214413_))))
                                      (_g1429014410_ _g1429214413_))))
                              (_g1429014410_ _g1429214413_))))
                      (_g1429014410_ _g1429214413_)))))
          (_g1428914462_ _stx14286_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx13840_)
      (let* ((_g1384413946_
              (lambda (_g1384513943_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1384513943_)))
             (_g1384313953_ (lambda (_g1384513949_) ((lambda () '(begin)))))
             (_g1384214103_
              (lambda (_g1384513956_)
                (if (gx#stx-pair? _g1384513956_)
                    (let ((_e1390313958_ (gx#stx-e _g1384513956_)))
                      (let ((_hd1390413961_ (##car _e1390313958_))
                            (_tl1390513963_ (##cdr _e1390313958_)))
                        (if (gx#stx-pair? _tl1390513963_)
                            (let ((_e1390613966_ (gx#stx-e _tl1390513963_)))
                              (let ((_hd1390713969_ (##car _e1390613966_))
                                    (_tl1390813971_ (##cdr _e1390613966_)))
                                (if (gx#stx-pair? _hd1390713969_)
                                    (let ((_e1390913974_
                                           (gx#stx-e _hd1390713969_)))
                                      (let ((_hd1391013977_
                                             (##car _e1390913974_))
                                            (_tl1391113979_
                                             (##cdr _e1390913974_)))
                                        (if (gx#identifier? _hd1391013977_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1391013977_)
                                                (if (gx#stx-pair?
                                                     _tl1391113979_)
                                                    (let ((_e1391213982_
                                                           (gx#stx-e
                                                            _tl1391113979_)))
                                                      (let ((_hd1391313985_
                                                             (##car _e1391213982_))
                                                            (_tl1391413987_
                                                             (##cdr _e1391213982_)))
                                                        (if (gx#stx-null?
                                                             _tl1391413987_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1390813971_)
                        (let ((_e1391513990_ (gx#stx-e _tl1390813971_)))
                          (let ((_hd1391613993_ (##car _e1391513990_))
                                (_tl1391713995_ (##cdr _e1391513990_)))
                            (if (gx#stx-pair? _hd1391613993_)
                                (let ((_e1391813998_
                                       (gx#stx-e _hd1391613993_)))
                                  (let ((_hd1391914001_ (##car _e1391813998_))
                                        (_tl1392014003_ (##cdr _e1391813998_)))
                                    (if (gx#identifier? _hd1391914001_)
                                        (if (gx#stx-eq? '%#ref _hd1391914001_)
                                            (if (gx#stx-pair? _tl1392014003_)
                                                (let ((_e1392114006_
                                                       (gx#stx-e
                                                        _tl1392014003_)))
                                                  (let ((_hd1392214009_
                                                         (##car _e1392114006_))
                                                        (_tl1392314011_
                                                         (##cdr _e1392114006_)))
                                                    (if (gx#stx-null?
                                                         _tl1392314011_)
                                                        (if (gx#stx-pair?
                                                             _tl1391713995_)
                                                            (let ((_e1392414014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1391713995_)))
                      (let ((_hd1392514017_ (##car _e1392414014_))
                            (_tl1392614019_ (##cdr _e1392414014_)))
                        (if (gx#stx-pair? _hd1392514017_)
                            (let ((_e1392714022_ (gx#stx-e _hd1392514017_)))
                              (let ((_hd1392814025_ (##car _e1392714022_))
                                    (_tl1392914027_ (##cdr _e1392714022_)))
                                (if (gx#identifier? _hd1392814025_)
                                    (if (gx#stx-eq? '%#quote _hd1392814025_)
                                        (if (gx#stx-pair? _tl1392914027_)
                                            (let ((_e1393014030_
                                                   (gx#stx-e _tl1392914027_)))
                                              (let ((_hd1393114033_
                                                     (##car _e1393014030_))
                                                    (_tl1393214035_
                                                     (##cdr _e1393014030_)))
                                                (if (gx#stx-null?
                                                     _tl1393214035_)
                                                    (if (gx#stx-pair?
                                                         _tl1392614019_)
                                                        (let ((_e1393314038_
                                                               (gx#stx-e
                                                                _tl1392614019_)))
                                                          (let ((_hd1393414041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1393314038_))
                        (_tl1393514043_ (##cdr _e1393314038_)))
                    (if (gx#stx-pair? _hd1393414041_)
                        (let ((_e1393614046_ (gx#stx-e _hd1393414041_)))
                          (let ((_hd1393714049_ (##car _e1393614046_))
                                (_tl1393814051_ (##cdr _e1393614046_)))
                            (if (gx#identifier? _hd1393714049_)
                                (if (gx#stx-eq? '%#ref _hd1393714049_)
                                    (if (gx#stx-pair? _tl1393814051_)
                                        (let ((_e1393914054_
                                               (gx#stx-e _tl1393814051_)))
                                          (let ((_hd1394014057_
                                                 (##car _e1393914054_))
                                                (_tl1394114059_
                                                 (##cdr _e1393914054_)))
                                            (if (gx#stx-null? _tl1394114059_)
                                                (if (gx#stx-null?
                                                     _tl1393514043_)
                                                    ((lambda (_L14062_
                                                              _L14063_
                                                              _L14064_
                                                              _L14065_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L14064_)
                               (cons (gx#stx-e _L14063_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L14062_)
                                           (cons '#f '())))))
                   (_g1384313953_ _g1384513956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1394014057_
                                                     _hd1393114033_
                                                     _hd1392214009_
                                                     _hd1391313985_)
                                                    (_g1384313953_
                                                     _g1384513956_))
                                                (_g1384313953_
                                                 _g1384513956_))))
                                        (_g1384313953_ _g1384513956_))
                                    (_g1384313953_ _g1384513956_))
                                (_g1384313953_ _g1384513956_))))
                        (_g1384313953_ _g1384513956_))))
                (_g1384313953_ _g1384513956_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1384313953_
                                                     _g1384513956_))))
                                            (_g1384313953_ _g1384513956_))
                                        (_g1384313953_ _g1384513956_))
                                    (_g1384313953_ _g1384513956_))))
                            (_g1384313953_ _g1384513956_))))
                    (_g1384313953_ _g1384513956_))
                (_g1384313953_ _g1384513956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1384313953_ _g1384513956_))
                                            (_g1384313953_ _g1384513956_))
                                        (_g1384313953_ _g1384513956_))))
                                (_g1384313953_ _g1384513956_))))
                        (_g1384313953_ _g1384513956_))
                    (_g1384313953_ _g1384513956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1384313953_
                                                     _g1384513956_))
                                                (_g1384313953_ _g1384513956_))
                                            (_g1384313953_ _g1384513956_))))
                                    (_g1384313953_ _g1384513956_))))
                            (_g1384313953_ _g1384513956_))))
                    (_g1384313953_ _g1384513956_))))
             (_g1384114283_
              (lambda (_g1384514106_)
                (if (gx#stx-pair? _g1384514106_)
                    (let ((_e1385114108_ (gx#stx-e _g1384514106_)))
                      (let ((_hd1385214111_ (##car _e1385114108_))
                            (_tl1385314113_ (##cdr _e1385114108_)))
                        (if (gx#stx-pair? _tl1385314113_)
                            (let ((_e1385414116_ (gx#stx-e _tl1385314113_)))
                              (let ((_hd1385514119_ (##car _e1385414116_))
                                    (_tl1385614121_ (##cdr _e1385414116_)))
                                (if (gx#stx-pair? _hd1385514119_)
                                    (let ((_e1385714124_
                                           (gx#stx-e _hd1385514119_)))
                                      (let ((_hd1385814127_
                                             (##car _e1385714124_))
                                            (_tl1385914129_
                                             (##cdr _e1385714124_)))
                                        (if (gx#identifier? _hd1385814127_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1385814127_)
                                                (if (gx#stx-pair?
                                                     _tl1385914129_)
                                                    (let ((_e1386014132_
                                                           (gx#stx-e
                                                            _tl1385914129_)))
                                                      (let ((_hd1386114135_
                                                             (##car _e1386014132_))
                                                            (_tl1386214137_
                                                             (##cdr _e1386014132_)))
                                                        (if (gx#stx-null?
                                                             _tl1386214137_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1385614121_)
                        (let ((_e1386314140_ (gx#stx-e _tl1385614121_)))
                          (let ((_hd1386414143_ (##car _e1386314140_))
                                (_tl1386514145_ (##cdr _e1386314140_)))
                            (if (gx#stx-pair? _hd1386414143_)
                                (let ((_e1386614148_
                                       (gx#stx-e _hd1386414143_)))
                                  (let ((_hd1386714151_ (##car _e1386614148_))
                                        (_tl1386814153_ (##cdr _e1386614148_)))
                                    (if (gx#identifier? _hd1386714151_)
                                        (if (gx#stx-eq? '%#ref _hd1386714151_)
                                            (if (gx#stx-pair? _tl1386814153_)
                                                (let ((_e1386914156_
                                                       (gx#stx-e
                                                        _tl1386814153_)))
                                                  (let ((_hd1387014159_
                                                         (##car _e1386914156_))
                                                        (_tl1387114161_
                                                         (##cdr _e1386914156_)))
                                                    (if (gx#stx-null?
                                                         _tl1387114161_)
                                                        (if (gx#stx-pair?
                                                             _tl1386514145_)
                                                            (let ((_e1387214164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1386514145_)))
                      (let ((_hd1387314167_ (##car _e1387214164_))
                            (_tl1387414169_ (##cdr _e1387214164_)))
                        (if (gx#stx-pair? _hd1387314167_)
                            (let ((_e1387514172_ (gx#stx-e _hd1387314167_)))
                              (let ((_hd1387614175_ (##car _e1387514172_))
                                    (_tl1387714177_ (##cdr _e1387514172_)))
                                (if (gx#identifier? _hd1387614175_)
                                    (if (gx#stx-eq? '%#quote _hd1387614175_)
                                        (if (gx#stx-pair? _tl1387714177_)
                                            (let ((_e1387814180_
                                                   (gx#stx-e _tl1387714177_)))
                                              (let ((_hd1387914183_
                                                     (##car _e1387814180_))
                                                    (_tl1388014185_
                                                     (##cdr _e1387814180_)))
                                                (if (gx#stx-null?
                                                     _tl1388014185_)
                                                    (if (gx#stx-pair?
                                                         _tl1387414169_)
                                                        (let ((_e1388114188_
                                                               (gx#stx-e
                                                                _tl1387414169_)))
                                                          (let ((_hd1388214191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1388114188_))
                        (_tl1388314193_ (##cdr _e1388114188_)))
                    (if (gx#stx-pair? _hd1388214191_)
                        (let ((_e1388414196_ (gx#stx-e _hd1388214191_)))
                          (let ((_hd1388514199_ (##car _e1388414196_))
                                (_tl1388614201_ (##cdr _e1388414196_)))
                            (if (gx#identifier? _hd1388514199_)
                                (if (gx#stx-eq? '%#ref _hd1388514199_)
                                    (if (gx#stx-pair? _tl1388614201_)
                                        (let ((_e1388714204_
                                               (gx#stx-e _tl1388614201_)))
                                          (let ((_hd1388814207_
                                                 (##car _e1388714204_))
                                                (_tl1388914209_
                                                 (##cdr _e1388714204_)))
                                            (if (gx#stx-null? _tl1388914209_)
                                                (if (gx#stx-pair?
                                                     _tl1388314193_)
                                                    (let ((_e1389014212_
                                                           (gx#stx-e
                                                            _tl1388314193_)))
                                                      (let ((_hd1389114215_
                                                             (##car _e1389014212_))
                                                            (_tl1389214217_
                                                             (##cdr _e1389014212_)))
                                                        (if (gx#stx-pair?
                                                             _hd1389114215_)
                                                            (let ((_e1389314220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1389114215_)))
                      (let ((_hd1389414223_ (##car _e1389314220_))
                            (_tl1389514225_ (##cdr _e1389314220_)))
                        (if (gx#identifier? _hd1389414223_)
                            (if (gx#stx-eq? '%#quote _hd1389414223_)
                                (if (gx#stx-pair? _tl1389514225_)
                                    (let ((_e1389614228_
                                           (gx#stx-e _tl1389514225_)))
                                      (let ((_hd1389714231_
                                             (##car _e1389614228_))
                                            (_tl1389814233_
                                             (##cdr _e1389614228_)))
                                        (if (gx#stx-null? _tl1389814233_)
                                            (if (gx#stx-null? _tl1389214217_)
                                                ((lambda (_L14236_
                                                          _L14237_
                                                          _L14238_
                                                          _L14239_
                                                          _L14240_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L14240_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14239_)
                           (cons (gx#stx-e _L14238_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L14237_)
                                       (cons (gx#stx-e _L14236_) '())))))
               (_g1384214103_ _g1384514106_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1389714231_
                                                 _hd1388814207_
                                                 _hd1387914183_
                                                 _hd1387014159_
                                                 _hd1386114135_)
                                                (_g1384214103_ _g1384514106_))
                                            (_g1384214103_ _g1384514106_))))
                                    (_g1384214103_ _g1384514106_))
                                (_g1384214103_ _g1384514106_))
                            (_g1384214103_ _g1384514106_))))
                    (_g1384214103_ _g1384514106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1384214103_
                                                     _g1384514106_))
                                                (_g1384214103_
                                                 _g1384514106_))))
                                        (_g1384214103_ _g1384514106_))
                                    (_g1384214103_ _g1384514106_))
                                (_g1384214103_ _g1384514106_))))
                        (_g1384214103_ _g1384514106_))))
                (_g1384214103_ _g1384514106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1384214103_
                                                     _g1384514106_))))
                                            (_g1384214103_ _g1384514106_))
                                        (_g1384214103_ _g1384514106_))
                                    (_g1384214103_ _g1384514106_))))
                            (_g1384214103_ _g1384514106_))))
                    (_g1384214103_ _g1384514106_))
                (_g1384214103_ _g1384514106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1384214103_ _g1384514106_))
                                            (_g1384214103_ _g1384514106_))
                                        (_g1384214103_ _g1384514106_))))
                                (_g1384214103_ _g1384514106_))))
                        (_g1384214103_ _g1384514106_))
                    (_g1384214103_ _g1384514106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1384214103_
                                                     _g1384514106_))
                                                (_g1384214103_ _g1384514106_))
                                            (_g1384214103_ _g1384514106_))))
                                    (_g1384214103_ _g1384514106_))))
                            (_g1384214103_ _g1384514106_))))
                    (_g1384214103_ _g1384514106_)))))
        (_g1384114283_ _stx13840_))))
  (define gxc#!alias::typedecl
    (lambda (_self13816_)
      (let* ((_self1381713823_ _self13816_)
             (_E1381913827_
              (lambda () (error '"No clause matching" _self1381713823_)))
             (_K1382013832_
              (lambda (_alias-id13830_)
                (cons '@alias (cons _alias-id13830_ '())))))
        (if (##structure-instance-of?
             _self1381713823_
             (##type-id gxc#!alias::t))
            (let* ((_e1382113835_ (##vector-ref _self1381713823_ '1))
                   (_alias-id13838_ _e1382113835_))
              (_K1382013832_ _alias-id13838_))
            (_E1381913827_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13638_)
      (let* ((_self1363913650_ _self13638_)
             (_E1364113654_
              (lambda () (error '"No clause matching" _self1363913650_)))
             (_K1364213663_
              (lambda (_plist13657_
                       _ctor13658_
                       _fields13659_
                       _super13660_
                       _type-id13661_)
                (cons '@struct-type
                      (cons _type-id13661_
                            (cons _super13660_
                                  (cons _fields13659_
                                        (cons _ctor13658_
                                              (cons _plist13657_ '())))))))))
        (if (##structure-instance-of?
             _self1363913650_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1364313666_ (##vector-ref _self1363913650_ '1))
                   (_type-id13669_ _e1364313666_)
                   (_e1364413671_ (##vector-ref _self1363913650_ '2))
                   (_super13674_ _e1364413671_)
                   (_e1364513676_ (##vector-ref _self1363913650_ '3))
                   (_fields13679_ _e1364513676_)
                   (_e1364613681_ (##vector-ref _self1363913650_ '4))
                   (_e1364713684_ (##vector-ref _self1363913650_ '5))
                   (_ctor13687_ _e1364713684_)
                   (_e1364813689_ (##vector-ref _self1363913650_ '6))
                   (_plist13692_ _e1364813689_))
              (_K1364213663_
               _plist13692_
               _ctor13687_
               _fields13679_
               _super13674_
               _type-id13669_))
            (_E1364113654_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13492_)
      (let* ((_self1349313499_ _self13492_)
             (_E1349513503_
              (lambda () (error '"No clause matching" _self1349313499_)))
             (_K1349613508_
              (lambda (_struct-t13506_)
                (cons '@struct-pred (cons _struct-t13506_ '())))))
        (if (##structure-instance-of?
             _self1349313499_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1349713511_ (##vector-ref _self1349313499_ '1))
                   (_struct-t13514_ _e1349713511_))
              (_K1349613508_ _struct-t13514_))
            (_E1349513503_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13346_)
      (let* ((_self1334713353_ _self13346_)
             (_E1334913357_
              (lambda () (error '"No clause matching" _self1334713353_)))
             (_K1335013362_
              (lambda (_struct-t13360_)
                (cons '@struct-cons (cons _struct-t13360_ '())))))
        (if (##structure-instance-of?
             _self1334713353_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1335113365_ (##vector-ref _self1334713353_ '1))
                   (_struct-t13368_ _e1335113365_))
              (_K1335013362_ _struct-t13368_))
            (_E1334913357_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self13186_)
      (let* ((_self1318713195_ _self13186_)
             (_E1318913199_
              (lambda () (error '"No clause matching" _self1318713195_)))
             (_K1319013206_
              (lambda (_unchecked?13202_ _off13203_ _struct-t13204_)
                (cons '@struct-getf
                      (cons _struct-t13204_
                            (cons _off13203_ (cons _unchecked?13202_ '())))))))
        (if (##structure-instance-of?
             _self1318713195_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1319113209_ (##vector-ref _self1318713195_ '1))
                   (_struct-t13212_ _e1319113209_)
                   (_e1319213214_ (##vector-ref _self1318713195_ '2))
                   (_off13217_ _e1319213214_)
                   (_e1319313219_ (##vector-ref _self1318713195_ '3))
                   (_unchecked?13222_ _e1319313219_))
              (_K1319013206_ _unchecked?13222_ _off13217_ _struct-t13212_))
            (_E1318913199_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13026_)
      (let* ((_self1302713035_ _self13026_)
             (_E1302913039_
              (lambda () (error '"No clause matching" _self1302713035_)))
             (_K1303013046_
              (lambda (_unchecked?13042_ _off13043_ _struct-t13044_)
                (cons '@struct-setf
                      (cons _struct-t13044_
                            (cons _off13043_ (cons _unchecked?13042_ '())))))))
        (if (##structure-instance-of?
             _self1302713035_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1303113049_ (##vector-ref _self1302713035_ '1))
                   (_struct-t13052_ _e1303113049_)
                   (_e1303213054_ (##vector-ref _self1302713035_ '2))
                   (_off13057_ _e1303213054_)
                   (_e1303313059_ (##vector-ref _self1302713035_ '3))
                   (_unchecked?13062_ _e1303313059_))
              (_K1303013046_ _unchecked?13062_ _off13057_ _struct-t13052_))
            (_E1302913039_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12852_)
      (let* ((_self1285312863_ _self12852_)
             (_E1285512867_
              (lambda () (error '"No clause matching" _self1285312863_)))
             (_K1285612878_
              (lambda (_typedecl12870_
                       _inline12871_
                       _dispatch12872_
                       _arity12873_)
                (if _inline12871_
                    (let ((_$e12875_ _typedecl12870_))
                      (if _$e12875_
                          _$e12875_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12873_ (cons _dispatch12872_ '())))))))
        (if (##structure-instance-of?
             _self1285312863_
             (##type-id gxc#!lambda::t))
            (let* ((_e1285712881_ (##vector-ref _self1285312863_ '1))
                   (_e1285812884_ (##vector-ref _self1285312863_ '2))
                   (_arity12887_ _e1285812884_)
                   (_e1285912889_ (##vector-ref _self1285312863_ '3))
                   (_dispatch12892_ _e1285912889_)
                   (_e1286012894_ (##vector-ref _self1285312863_ '4))
                   (_inline12897_ _e1286012894_)
                   (_e1286112899_ (##vector-ref _self1285312863_ '5))
                   (_typedecl12902_ _e1286112899_))
              (_K1285612878_
               _typedecl12902_
               _inline12897_
               _dispatch12892_
               _arity12887_))
            (_E1285512867_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12663_)
      (letrec ((_clause-e12665_
                (lambda (_clause12695_)
                  (let* ((_clause1269612704_ _clause12695_)
                         (_E1269812708_
                          (lambda ()
                            (error '"No clause matching" _clause1269612704_)))
                         (_K1269912714_
                          (lambda (_dispatch12711_ _arity12712_)
                            (cons _arity12712_ (cons _dispatch12711_ '())))))
                    (if (##structure-instance-of?
                         _clause1269612704_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1270012717_
                                (##vector-ref _clause1269612704_ '1))
                               (_e1270112720_
                                (##vector-ref _clause1269612704_ '2))
                               (_arity12723_ _e1270112720_)
                               (_e1270212725_
                                (##vector-ref _clause1269612704_ '3))
                               (_dispatch12728_ _e1270212725_))
                          (_K1269912714_ _dispatch12728_ _arity12723_))
                        (_E1269812708_))))))
        (let* ((_self1266612673_ _self12663_)
               (_E1266812677_
                (lambda () (error '"No clause matching" _self1266612673_)))
               (_K1266912684_
                (lambda (_clauses12680_)
                  (let ((_clauses12682_ (map _clause-e12665_ _clauses12680_)))
                    (cons '@case-lambda _clauses12682_)))))
          (if (##structure-instance-of?
               _self1266612673_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1267012687_ (##vector-ref _self1266612673_ '1))
                     (_e1267112690_ (##vector-ref _self1266612673_ '2))
                     (_clauses12693_ _e1267112690_))
                (_K1266912684_ _clauses12693_))
              (_E1266812677_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12539_) (gxc#generate-runtime-binding-id _stx12539_))))
