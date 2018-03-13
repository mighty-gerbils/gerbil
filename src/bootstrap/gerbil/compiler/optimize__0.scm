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
    (lambda _$args27849_
      (apply make-struct-instance gxc#optimizer-info::t _$args27849_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27847_)
      (if (##fx< '2 (##vector-length _self27847_))
          (begin
            (##vector-set! _self27847_ '1 (make-hash-table-eq))
            (##vector-set! _self27847_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27847_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27861 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27861) __obj27861))))))
  (define gxc#optimize!
    (lambda (_ctx27719_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27719_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27719_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27722_
                  (gxc#optimize-source
                   (##structure-ref _ctx27719_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27719_
              _code27722_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27664_)
      (letrec* ((_deps27666_
                 (let* ((_imports27710_
                         (##structure-ref
                          _ctx27664_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27712_ (gx#core-context-prelude__% _ctx27664_)))
                   (if _$e27712_
                       ((lambda (_g2771427716_)
                          (cons _g2771427716_ _imports27710_))
                        _$e27712_)
                       _imports27710_))))
        (let _lp27668_ ((_rest27670_ _deps27666_))
          (let* ((_rest2767127679_ _rest27670_)
                 (_E2767427683_
                  (lambda () (error '"No clause matching" _rest2767127679_)))
                 (_else2767327687_ (lambda () '#!void))
                 (_K2767527698_
                  (lambda (_rest27690_ _hd27691_)
                    (if (##structure-instance-of?
                         _hd27691_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27691_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27693_
                                       (gx#core-context-prelude__% _hd27691_)))
                                  (if _$e27693_
                                      ((lambda (_pre27696_)
                                         (_lp27668_
                                          (cons _pre27696_
                                                (##structure-ref
                                                 _hd27691_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27693_)
                                      (_lp27668_
                                       (##structure-ref
                                        _hd27691_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27691_)))
                          (_lp27668_ _rest27690_))
                        (if (##structure-instance-of?
                             _hd27691_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27691_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27668_
                                     (##structure-ref
                                      _hd27691_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27691_)))
                              (_lp27668_ _rest27690_))
                            (if (##structure-direct-instance-of?
                                 _hd27691_
                                 'gx#module-import::t)
                                (_lp27668_
                                 (cons (##direct-structure-ref
                                        _hd27691_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27690_))
                                (if (##structure-direct-instance-of?
                                     _hd27691_
                                     'gx#module-export::t)
                                    (_lp27668_
                                     (cons (##direct-structure-ref
                                            _hd27691_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27690_))
                                    (if (##structure-direct-instance-of?
                                         _hd27691_
                                         'gx#import-set::t)
                                        (_lp27668_
                                         (cons (##direct-structure-ref
                                                _hd27691_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27690_))
                                        (error '"Unexpected module import"
                                               _hd27691_)))))))))
            (if (##pair? _rest2767127679_)
                (let ((_hd2767627701_ (##car _rest2767127679_))
                      (_tl2767727703_ (##cdr _rest2767127679_)))
                  (let* ((_hd27706_ _hd2767627701_)
                         (_rest27708_ _tl2767727703_))
                    (_K2767527698_ _rest27708_ _hd27706_)))
                (_else2767327687_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27644_)
      (if (if (##structure-instance-of? _ctx27644_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27644_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27646_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27648_
                  (##structure-ref _ctx27644_ '1 gx#expander-context::t '#f))
                 (_mod27650_ (table-ref _ht27646_ _id27648_ '#f)))
            (let ((_$e27653_ _mod27650_))
              (if _$e27653_
                  _$e27653_
                  (let* ((_mod27656_ (gxc#optimizer-import-ssxi _ctx27644_))
                         (_val27661_
                          (let ((_$e27658_ _mod27656_))
                            (if _$e27658_ _$e27658_ '#!void))))
                    (begin
                      (table-set! _ht27646_ _id27648_ _val27661_)
                      _val27661_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27621_)
      (letrec ((_catch-e27623_
                (lambda (_exn27642_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27621_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27642_))
                        '#!void)
                    '#f)))
               (_import-e27624_
                (lambda ()
                  (let* ((_str-id27627_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx27621_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27635_
                          (let ((_odir2762827630_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2762827630_
                                (let ((_odir27633_ _odir2762827630_))
                                  (path-expand
                                   (string-append _str-id27627_ '".ss")
                                   _odir27633_))
                                '#f)))
                         (_library-path27637_
                          (string->symbol
                           (string-append '":" _str-id27627_ '".ss")))
                         (_ssxi-path27639_
                          (if (if _artefact-path27635_
                                  (file-exists? _artefact-path27635_)
                                  '#f)
                              _artefact-path27635_
                              _library-path27637_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27639_)
                      (gx#import-module__% _ssxi-path27639_ '#t '#t))))))
        (if (##structure-ref _ctx27621_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27623_ _import-e27624_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27618_
      (apply make-struct-instance gxc#!type::t _$args27618_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27615_
      (apply make-struct-instance gxc#!alias::t _$args27615_)))
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
    (lambda _$args27612_
      (apply make-struct-instance gxc#!struct-type::t _$args27612_)))
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
    (lambda _$args27609_
      (apply make-struct-instance gxc#!procedure::t _$args27609_)))
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
    (lambda _$args27606_
      (apply make-struct-instance gxc#!struct-pred::t _$args27606_)))
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
    (lambda _$args27603_
      (apply make-struct-instance gxc#!struct-cons::t _$args27603_)))
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
    (lambda _$args27600_
      (apply make-struct-instance gxc#!struct-getf::t _$args27600_)))
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
    (lambda _$args27597_
      (apply make-struct-instance gxc#!struct-setf::t _$args27597_)))
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
    (lambda _$args27594_
      (apply make-struct-instance gxc#!lambda::t _$args27594_)))
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
    (lambda _$args27591_
      (apply make-struct-instance gxc#!case-lambda::t _$args27591_)))
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
    (lambda _$args27588_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27588_)))
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
    (lambda _$args27585_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27585_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27577_
             _id27578_
             _super27579_
             _fields27580_
             _xfields27581_
             _ctor27582_
             _plist27583_)
      (if (##fx< '7 (##vector-length _self27577_))
          (begin
            (##vector-set! _self27577_ '1 _id27578_)
            (##vector-set! _self27577_ '2 _super27579_)
            (##vector-set! _self27577_ '3 _fields27580_)
            (##vector-set! _self27577_ '4 _xfields27581_)
            (##vector-set! _self27577_ '5 _ctor27582_)
            (##vector-set! _self27577_ '6 _plist27583_)
            (##vector-set! _self27577_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27577_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self27421_
               _id27422_
               _arity27423_
               _dispatch27424_
               _inline27425_
               _typedecl27426_)
        (if (##fx< '5 (##vector-length _self27421_))
            (begin
              (##vector-set! _self27421_ '1 _id27422_)
              (##vector-set! _self27421_ '2 _arity27423_)
              (##vector-set! _self27421_ '3 _dispatch27424_)
              (##vector-set! _self27421_ '4 _inline27425_)
              (##vector-set! _self27421_ '5 _typedecl27426_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self27421_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self27431_ _id27432_ _arity27433_ _dispatch27434_)
          (let* ((_inline27436_ '#f) (_typedecl27438_ '#f))
            (if (##fx< '5 (##vector-length _self27431_))
                (begin
                  (##vector-set! _self27431_ '1 _id27432_)
                  (##vector-set! _self27431_ '2 _arity27433_)
                  (##vector-set! _self27431_ '3 _dispatch27434_)
                  (##vector-set! _self27431_ '4 _inline27436_)
                  (##vector-set! _self27431_ '5 _typedecl27438_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self27431_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self27440_
                 _id27441_
                 _arity27442_
                 _dispatch27443_
                 _inline27444_)
          (let ((_typedecl27446_ '#f))
            (if (##fx< '5 (##vector-length _self27440_))
                (begin
                  (##vector-set! _self27440_ '1 _id27441_)
                  (##vector-set! _self27440_ '2 _arity27442_)
                  (##vector-set! _self27440_ '3 _dispatch27443_)
                  (##vector-set! _self27440_ '4 _inline27444_)
                  (##vector-set! _self27440_ '5 _typedecl27446_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self27440_)))))
      (define gxc#!lambda:::init!
        (lambda _g27869_
          (let ((_g27868_ (length _g27869_)))
            (cond ((##fx= _g27868_ 4) (apply gxc#!lambda:::init!__0 _g27869_))
                  ((##fx= _g27868_ 5) (apply gxc#!lambda:::init!__1 _g27869_))
                  ((##fx= _g27868_ 6)
                   (apply (lambda (_self27448_
                                   _id27449_
                                   _arity27450_
                                   _dispatch27451_
                                   _inline27452_
                                   _typedecl27453_)
                            (if (##fx< '5 (##vector-length _self27448_))
                                (begin
                                  (##vector-set! _self27448_ '1 _id27449_)
                                  (##vector-set! _self27448_ '2 _arity27450_)
                                  (##vector-set!
                                   _self27448_
                                   '3
                                   _dispatch27451_)
                                  (##vector-set! _self27448_ '4 _inline27452_)
                                  (##vector-set!
                                   _self27448_
                                   '5
                                   _typedecl27453_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self27448_)))
                          _g27869_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27869_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type27291_)
      (let ((_$e27293_
             (##structure-ref _type27291_ '7 gxc#!struct-type::t '#f)))
        (if _$e27293_
            (values _$e27293_)
            (let ((_vtab27296_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type27291_
                 _vtab27296_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab27296_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type27282_ _method27283_)
      (let ((_vtab2728427286_
             (##structure-ref _type27282_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2728427286_
            (let ((_vtab27289_ _vtab2728427286_))
              (table-ref _vtab27289_ _method27283_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym27266_ _type27267_ _local?27268_)
        (begin
          (if (##structure-instance-of? _type27267_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym27266_
                     _type27267_))
          (gxc#verbose
           '"declare-type "
           _sym27266_
           '" "
           (struct->list _type27267_))
          (table-set!
           (if _local?27268_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym27266_
           _type27267_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym27273_ _type27274_)
          (let ((_local?27276_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym27273_
             _type27274_
             _local?27276_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27871_
          (let ((_g27870_ (length _g27871_)))
            (cond ((##fx= _g27870_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27871_))
                  ((##fx= _g27870_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27871_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27871_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t27242_ _method27243_ _sym27244_ _rebind?27245_)
        (let ((_type27247_ (gxc#optimizer-resolve-type _type-t27242_)))
          (if (##structure-instance-of? _type27247_ 'gxc#!struct-type::t)
              (let ((_vtab27249_ (gxc#!struct-type-vtab _type27247_)))
                (if _rebind?27245_
                    (if (hash-key? _vtab27249_ _method27243_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t27242_
                         '" "
                         _method27243_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t27242_
                         '" "
                         _method27243_))
                    (if (hash-key? _vtab27249_ _method27243_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t27242_
                           '" "
                           _method27243_
                           '" => "
                           _sym27244_)
                          (table-set! _vtab27249_ _method27243_ _sym27244_)))))
              (if (not _type27247_)
                  (gxc#verbose '"declare-method: unknown type " _type-t27242_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t27242_
                         _type27247_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t27254_ _method27255_ _sym27256_)
          (let ((_rebind?27258_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t27254_
             _method27255_
             _sym27256_
             _rebind?27258_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27873_
          (let ((_g27872_ (length _g27873_)))
            (cond ((##fx= _g27872_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27873_))
                  ((##fx= _g27872_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27873_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27873_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym27230_)
      (let ((_$e27238_
             (let ((_ht2723127233_ (gxc#current-compile-local-type)))
               (if _ht2723127233_
                   (let ((_ht27236_ _ht2723127233_))
                     (table-ref _ht27236_ _sym27230_ '#f))
                   '#f))))
        (if _$e27238_
            _$e27238_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym27230_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym27222_)
      (let ((_type2722327225_ (gxc#optimizer-lookup-type _sym27222_)))
        (if _type2722327225_
            (let ((_type27228_ _type2722327225_))
              (if (##structure-instance-of? _type27228_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type27228_ '1 gxc#!type::t '#f))
                  _type27228_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t27217_ _method27218_)
      (let ((_type27220_ (gxc#optimizer-resolve-type _type-t27217_)))
        (if (##structure-instance-of? _type27220_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type27220_ _method27218_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx27213_)
      (begin
        (gxc#apply-collect-mutators _stx27213_)
        (let ((_stx27215_ (gxc#apply-lift-top-lambdas _stx27213_)))
          (begin
            (gxc#apply-collect-type-info _stx27215_)
            (gxc#apply-optimize-call _stx27215_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl27210_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl27210_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl27210_ '%#lambda gxc#xform-identity)
           (table-set! _tbl27210_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl27210_ '%#let-values gxc#xform-identity)
           (table-set! _tbl27210_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl27210_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl27210_ '%#quote gxc#xform-identity)
           (table-set! _tbl27210_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl27210_ '%#call gxc#xform-identity)
           (table-set! _tbl27210_ '%#if gxc#xform-identity)
           (table-set! _tbl27210_ '%#ref gxc#xform-identity)
           (table-set! _tbl27210_ '%#set! gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl27210_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl27210_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl27210_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl27206_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl27206_ '%#begin gxc#xform-identity)
           (table-set! _tbl27206_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl27206_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl27206_ '%#module gxc#xform-identity)
           (table-set! _tbl27206_ '%#import gxc#xform-identity)
           (table-set! _tbl27206_ '%#export gxc#xform-identity)
           (table-set! _tbl27206_ '%#provide gxc#xform-identity)
           (table-set! _tbl27206_ '%#extern gxc#xform-identity)
           (table-set! _tbl27206_ '%#define-values gxc#xform-identity)
           (table-set! _tbl27206_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl27206_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl27206_ '%#declare gxc#xform-identity)
           _tbl27206_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl27202_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27202_ (force gxc#&identity-special-form))
           (hash-copy! _tbl27202_ (force gxc#&identity-expression))
           _tbl27202_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl27198_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl27198_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl27198_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl27198_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl27198_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl27198_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl27198_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl27198_ '%#quote gxc#xform-identity)
           (table-set! _tbl27198_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl27198_ '%#call gxc#xform-operands)
           (table-set! _tbl27198_ '%#if gxc#xform-operands)
           (table-set! _tbl27198_ '%#ref gxc#xform-identity)
           (table-set! _tbl27198_ '%#set! gxc#xform-setq%)
           (table-set! _tbl27198_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl27198_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl27198_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl27198_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl27198_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl27198_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl27198_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl27198_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl27198_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl27194_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27194_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl27194_ (force gxc#&identity))
           (table-set! _tbl27194_ '%#begin gxc#xform-begin%)
           (table-set! _tbl27194_ '%#module gxc#xform-module%)
           (table-set! _tbl27194_ '%#define-values gxc#xform-define-values%)
           _tbl27194_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl27190_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27190_ (force gxc#&void))
           (table-set! _tbl27190_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27190_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27190_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27190_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27190_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27190_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl27190_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl27190_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl27190_ '%#call gxc#collect-operands)
           (table-set! _tbl27190_ '%#if gxc#collect-operands)
           (table-set! _tbl27190_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl27190_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl27190_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl27190_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl27190_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl27190_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl27190_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl27190_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl27190_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl27190_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx27183_ . _args27185_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27183_ _args27185_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl27180_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27180_ (force gxc#&basic-xform))
           (table-set!
            _tbl27180_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl27180_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl27180_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl27180_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl27180_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx27173_ . _args27175_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27173_ _args27175_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl27170_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27170_ (force gxc#&basic-xform-expression))
           (table-set! _tbl27170_ '%#begin gxc#xform-begin%)
           (table-set! _tbl27170_ '%#ref gxc#expression-subst-ref%)
           _tbl27170_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx27163_ . _args27165_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27163_ _args27165_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl27160_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27160_ (force gxc#&void))
           (table-set! _tbl27160_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27160_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27160_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl27160_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27160_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27160_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27160_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl27160_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl27160_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl27160_ '%#call gxc#collect-type-call%)
           (table-set! _tbl27160_ '%#if gxc#collect-operands)
           (table-set! _tbl27160_ '%#set! gxc#collect-body-setq%)
           _tbl27160_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx27153_ . _args27155_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27153_ _args27155_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl27150_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27150_ (force gxc#&false))
           (table-set! _tbl27150_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl27150_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl27150_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl27150_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl27150_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl27150_ '%#ref gxc#basic-expression-type-ref%)
           _tbl27150_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx27143_ . _args27145_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27143_ _args27145_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl27140_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27140_ (force gxc#&basic-xform))
           (table-set! _tbl27140_ '%#call gxc#optimize-call%)
           _tbl27140_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx27133_ . _args27135_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27133_ _args27135_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl27130_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl27130_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl27130_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl27130_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl27130_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl27130_ '%#call gxc#generate-ssxi-call%)
           _tbl27130_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx27123_ . _args27125_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27123_ _args27125_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx27120_ . _args27121_) _stx27120_))
  (define gxc#xform-wrap-source
    (lambda (_stx27117_ _src-stx27118_)
      (gx#stx-wrap-source _stx27117_ (gx#stx-source _src-stx27118_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args27111_)
      (lambda (_g2711227114_)
        (apply gxc#compile-e _g2711227114_ _args27111_))))
  (define gxc#xform-begin%
    (lambda (_stx27070_ . _args27071_)
      (let* ((_g2707327083_
              (lambda (_g2707427080_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2707427080_)))
             (_g2707227108_
              (lambda (_g2707427086_)
                (if (gx#stx-pair? _g2707427086_)
                    (let ((_e2707627088_ (gx#stx-e _g2707427086_)))
                      (let ((_hd2707727091_ (##car _e2707627088_))
                            (_tl2707827093_ (##cdr _e2707627088_)))
                        ((lambda (_L27096_)
                           (let ((_forms27106_
                                  (map (gxc#xform-apply-compile-e _args27071_)
                                       _L27096_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms27106_)
                              _stx27070_)))
                         _tl2707827093_)))
                    (_g2707327083_ _g2707427086_)))))
        (_g2707227108_ _stx27070_))))
  (define gxc#xform-module%
    (lambda (_stx27007_ . _args27008_)
      (let* ((_g2701027024_
              (lambda (_g2701127021_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2701127021_)))
             (_g2700927067_
              (lambda (_g2701127027_)
                (if (gx#stx-pair? _g2701127027_)
                    (let ((_e2701427029_ (gx#stx-e _g2701127027_)))
                      (let ((_hd2701527032_ (##car _e2701427029_))
                            (_tl2701627034_ (##cdr _e2701427029_)))
                        (if (gx#stx-pair? _tl2701627034_)
                            (let ((_e2701727037_ (gx#stx-e _tl2701627034_)))
                              (let ((_hd2701827040_ (##car _e2701727037_))
                                    (_tl2701927042_ (##cdr _e2701727037_)))
                                ((lambda (_L27045_ _L27046_)
                                   (let* ((_ctx27059_
                                           (gx#syntax-local-e__0 _L27046_))
                                          (_code27061_
                                           (##structure-ref
                                            _ctx27059_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code27064_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code27061_
                                                     _args27008_))
                                            gx#current-expander-context
                                            _ctx27059_)))
                                     (begin
                                       (##structure-set!
                                        _ctx27059_
                                        _code27064_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L27046_
                                                    (cons _code27064_ '())))
                                        _stx27007_))))
                                 _tl2701927042_
                                 _hd2701827040_)))
                            (_g2701027024_ _g2701127027_))))
                    (_g2701027024_ _g2701127027_)))))
        (_g2700927067_ _stx27007_))))
  (define gxc#xform-define-values%
    (lambda (_stx26937_ . _args26938_)
      (let* ((_g2694026957_
              (lambda (_g2694126954_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2694126954_)))
             (_g2693927004_
              (lambda (_g2694126960_)
                (if (gx#stx-pair? _g2694126960_)
                    (let ((_e2694426962_ (gx#stx-e _g2694126960_)))
                      (let ((_hd2694526965_ (##car _e2694426962_))
                            (_tl2694626967_ (##cdr _e2694426962_)))
                        (if (gx#stx-pair? _tl2694626967_)
                            (let ((_e2694726970_ (gx#stx-e _tl2694626967_)))
                              (let ((_hd2694826973_ (##car _e2694726970_))
                                    (_tl2694926975_ (##cdr _e2694726970_)))
                                (if (gx#stx-pair? _tl2694926975_)
                                    (let ((_e2695026978_
                                           (gx#stx-e _tl2694926975_)))
                                      (let ((_hd2695126981_
                                             (##car _e2695026978_))
                                            (_tl2695226983_
                                             (##cdr _e2695026978_)))
                                        (if (gx#stx-null? _tl2695226983_)
                                            ((lambda (_L26986_ _L26987_)
                                               (let ((_expr27002_
                                                      (apply gxc#compile-e
                                                             _L26986_
                                                             _args26938_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26987_
                                                              (cons _expr27002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26937_)))
                                             _hd2695126981_
                                             _hd2694826973_)
                                            (_g2694026957_ _g2694126960_))))
                                    (_g2694026957_ _g2694126960_))))
                            (_g2694026957_ _g2694126960_))))
                    (_g2694026957_ _g2694126960_)))))
        (_g2693927004_ _stx26937_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26867_ . _args26868_)
      (let* ((_g2687026887_
              (lambda (_g2687126884_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2687126884_)))
             (_g2686926934_
              (lambda (_g2687126890_)
                (if (gx#stx-pair? _g2687126890_)
                    (let ((_e2687426892_ (gx#stx-e _g2687126890_)))
                      (let ((_hd2687526895_ (##car _e2687426892_))
                            (_tl2687626897_ (##cdr _e2687426892_)))
                        (if (gx#stx-pair? _tl2687626897_)
                            (let ((_e2687726900_ (gx#stx-e _tl2687626897_)))
                              (let ((_hd2687826903_ (##car _e2687726900_))
                                    (_tl2687926905_ (##cdr _e2687726900_)))
                                (if (gx#stx-pair? _tl2687926905_)
                                    (let ((_e2688026908_
                                           (gx#stx-e _tl2687926905_)))
                                      (let ((_hd2688126911_
                                             (##car _e2688026908_))
                                            (_tl2688226913_
                                             (##cdr _e2688026908_)))
                                        (if (gx#stx-null? _tl2688226913_)
                                            ((lambda (_L26916_ _L26917_)
                                               (let ((_expr26932_
                                                      (apply gxc#compile-e
                                                             _L26916_
                                                             _args26868_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26917_
                                                              (cons _expr26932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26867_)))
                                             _hd2688126911_
                                             _hd2687826903_)
                                            (_g2687026887_ _g2687126890_))))
                                    (_g2687026887_ _g2687126890_))))
                            (_g2687026887_ _g2687126890_))))
                    (_g2687026887_ _g2687126890_)))))
        (_g2686926934_ _stx26867_))))
  (define gxc#xform-lambda%
    (lambda (_stx26810_ . _args26811_)
      (let* ((_g2681326827_
              (lambda (_g2681426824_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2681426824_)))
             (_g2681226864_
              (lambda (_g2681426830_)
                (if (gx#stx-pair? _g2681426830_)
                    (let ((_e2681726832_ (gx#stx-e _g2681426830_)))
                      (let ((_hd2681826835_ (##car _e2681726832_))
                            (_tl2681926837_ (##cdr _e2681726832_)))
                        (if (gx#stx-pair? _tl2681926837_)
                            (let ((_e2682026840_ (gx#stx-e _tl2681926837_)))
                              (let ((_hd2682126843_ (##car _e2682026840_))
                                    (_tl2682226845_ (##cdr _e2682026840_)))
                                ((lambda (_L26848_ _L26849_)
                                   (let ((_body26862_
                                          (map (gxc#xform-apply-compile-e
                                                _args26811_)
                                               _L26848_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26849_ _body26862_))
                                      _stx26810_)))
                                 _tl2682226845_
                                 _hd2682126843_)))
                            (_g2681326827_ _g2681426830_))))
                    (_g2681326827_ _g2681426830_)))))
        (_g2681226864_ _stx26810_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26723_ . _args26724_)
      (letrec ((_clause-e26726_
                (lambda (_clause26767_)
                  (let* ((_g2676926780_
                          (lambda (_g2677026777_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2677026777_)))
                         (_g2676826807_
                          (lambda (_g2677026783_)
                            (if (gx#stx-pair? _g2677026783_)
                                (let ((_e2677326785_ (gx#stx-e _g2677026783_)))
                                  (let ((_hd2677426788_ (##car _e2677326785_))
                                        (_tl2677526790_ (##cdr _e2677326785_)))
                                    ((lambda (_L26793_ _L26794_)
                                       (let ((_body26805_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26724_)
                                                   _L26793_)))
                                         (cons _L26794_ _body26805_)))
                                     _tl2677526790_
                                     _hd2677426788_)))
                                (_g2676926780_ _g2677026783_)))))
                    (_g2676826807_ _clause26767_)))))
        (let* ((_g2672826738_
                (lambda (_g2672926735_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2672926735_)))
               (_g2672726764_
                (lambda (_g2672926741_)
                  (if (gx#stx-pair? _g2672926741_)
                      (let ((_e2673126743_ (gx#stx-e _g2672926741_)))
                        (let ((_hd2673226746_ (##car _e2673126743_))
                              (_tl2673326748_ (##cdr _e2673126743_)))
                          ((lambda (_L26751_)
                             (let ((_clauses26762_
                                    (map _clause-e26726_ _L26751_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26762_)
                                _stx26723_)))
                           _tl2673326748_)))
                      (_g2672826738_ _g2672926741_)))))
          (_g2672726764_ _stx26723_)))))
  (define gxc#xform-let-values%
    (lambda (_stx26517_ . _args26518_)
      (let* ((_g2652026553_
              (lambda (_g2652126550_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2652126550_)))
             (_g2651926720_
              (lambda (_g2652126556_)
                (if (gx#stx-pair? _g2652126556_)
                    (let ((_e2652626558_ (gx#stx-e _g2652126556_)))
                      (let ((_hd2652726561_ (##car _e2652626558_))
                            (_tl2652826563_ (##cdr _e2652626558_)))
                        (if (gx#stx-pair? _tl2652826563_)
                            (let ((_e2652926566_ (gx#stx-e _tl2652826563_)))
                              (let ((_hd2653026569_ (##car _e2652926566_))
                                    (_tl2653126571_ (##cdr _e2652926566_)))
                                (if (gx#stx-pair/null? _hd2653026569_)
                                    (if (fx>= (gx#stx-length _hd2653026569_)
                                              '0)
                                        (let ((_g27874_
                                               (gx#syntax-split-splice
                                                _hd2653026569_
                                                '0)))
                                          (begin
                                            (let ((_g27875_
                                                   (if (##values? _g27874_)
                                                       (##vector-length
                                                        _g27874_)
                                                       1)))
                                              (if (not (##fx= _g27875_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27875_)))
                                            (let ((_target2653226574_
                                                   (##vector-ref _g27874_ 0))
                                                  (_tl2653426576_
                                                   (##vector-ref _g27874_ 1)))
                                              (if (gx#stx-null? _tl2653426576_)
                                                  (letrec ((_loop2653526579_
                                                            (lambda (_hd2653326582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2653926584_
                             _hd2654026586_)
                      (if (gx#stx-pair? _hd2653326582_)
                          (let ((_e2653626589_ (gx#stx-e _hd2653326582_)))
                            (let ((_lp-hd2653726592_ (##car _e2653626589_))
                                  (_lp-tl2653826594_ (##cdr _e2653626589_)))
                              (if (gx#stx-pair? _lp-hd2653726592_)
                                  (let ((_e2654326597_
                                         (gx#stx-e _lp-hd2653726592_)))
                                    (let ((_hd2654426600_
                                           (##car _e2654326597_))
                                          (_tl2654526602_
                                           (##cdr _e2654326597_)))
                                      (if (gx#stx-pair? _tl2654526602_)
                                          (let ((_e2654626605_
                                                 (gx#stx-e _tl2654526602_)))
                                            (let ((_hd2654726608_
                                                   (##car _e2654626605_))
                                                  (_tl2654826610_
                                                   (##cdr _e2654626605_)))
                                              (if (gx#stx-null? _tl2654826610_)
                                                  (_loop2653526579_
                                                   _lp-tl2653826594_
                                                   (cons _hd2654726608_
                                                         _expr2653926584_)
                                                   (cons _hd2654426600_
                                                         _hd2654026586_))
                                                  (_g2652026553_
                                                   _g2652126556_))))
                                          (_g2652026553_ _g2652126556_))))
                                  (_g2652026553_ _g2652126556_))))
                          (let ((_expr2654126613_ (reverse _expr2653926584_))
                                (_hd2654226615_ (reverse _hd2654026586_)))
                            ((lambda (_L26618_ _L26619_ _L26620_ _L26621_)
                               (let* ((_g2664026656_
                                       (lambda (_g2664126653_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2664126653_)))
                                      (_g2663926710_
                                       (lambda (_g2664126659_)
                                         (if (gx#stx-pair/null? _g2664126659_)
                                             (if (fx>= (gx#stx-length
                                                        _g2664126659_)
                                                       '0)
                                                 (let ((_g27876_
                                                        (gx#syntax-split-splice
                                                         _g2664126659_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27877_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27876_)
                        (##vector-length _g27876_)
                        1)))
               (if (not (##fx= _g27877_ 2))
                   (error "Context expects 2 values" _g27877_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2664326661_
                                                            (##vector-ref
                                                             _g27876_
                                                             0))
                                                           (_tl2664526663_
                                                            (##vector-ref
                                                             _g27876_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2664526663_)
                                                           (letrec ((_loop2664626666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2664426669_ _expr2665026671_)
                               (if (gx#stx-pair? _hd2664426669_)
                                   (let ((_e2664726674_
                                          (gx#syntax-e _hd2664426669_)))
                                     (let ((_lp-hd2664826677_
                                            (##car _e2664726674_))
                                           (_lp-tl2664926679_
                                            (##cdr _e2664726674_)))
                                       (_loop2664626666_
                                        _lp-tl2664926679_
                                        (cons _lp-hd2664826677_
                                              _expr2665026671_))))
                                   (let ((_expr2665126682_
                                          (reverse _expr2665026671_)))
                                     ((lambda (_L26685_)
                                        (let ()
                                          (let ((_body26698_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26518_)
                                                      _L26618_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26621_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26685_
                                                            _L26620_)
                                                           (foldr2 (lambda (_g2669926703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2670026705_
                                    _g2670126707_)
                             (cons (cons _g2670026705_
                                         (cons _g2669926703_ '()))
                                   _g2670126707_))
                           '()
                           _L26685_
                           _L26620_))
                 _body26698_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx26517_))))
                                      _expr2665126682_))))))
                     (_loop2664626666_ _target2664326661_ '()))
                   (_g2664026656_ _g2664126659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2664026656_ _g2664126659_))
                                             (_g2664026656_ _g2664126659_)))))
                                 (_g2663926710_
                                  (map (gxc#xform-apply-compile-e _args26518_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2671226715_
                                                          _g2671326717_)
                                                   (cons _g2671226715_
                                                         _g2671326717_))
                                                 '()
                                                 _L26619_))))))
                             _tl2653126571_
                             _expr2654126613_
                             _hd2654226615_
                             _hd2652726561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2653526579_
                                                     _target2653226574_
                                                     '()
                                                     '()))
                                                  (_g2652026553_
                                                   _g2652126556_)))))
                                        (_g2652026553_ _g2652126556_))
                                    (_g2652026553_ _g2652126556_))))
                            (_g2652026553_ _g2652126556_))))
                    (_g2652026553_ _g2652126556_)))))
        (_g2651926720_ _stx26517_))))
  (define gxc#xform-operands
    (lambda (_stx26473_ . _args26474_)
      (let* ((_g2647626487_
              (lambda (_g2647726484_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2647726484_)))
             (_g2647526514_
              (lambda (_g2647726490_)
                (if (gx#stx-pair? _g2647726490_)
                    (let ((_e2648026492_ (gx#stx-e _g2647726490_)))
                      (let ((_hd2648126495_ (##car _e2648026492_))
                            (_tl2648226497_ (##cdr _e2648026492_)))
                        ((lambda (_L26500_ _L26501_)
                           (let ((_rands26512_
                                  (map (gxc#xform-apply-compile-e _args26474_)
                                       _L26500_)))
                             (gxc#xform-wrap-source
                              (cons _L26501_ _rands26512_)
                              _stx26473_)))
                         _tl2648226497_
                         _hd2648126495_)))
                    (_g2647626487_ _g2647726490_)))))
        (_g2647526514_ _stx26473_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx26403_ . _args26404_)
      (let* ((_g2640626423_
              (lambda (_g2640726420_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2640726420_)))
             (_g2640526470_
              (lambda (_g2640726426_)
                (if (gx#stx-pair? _g2640726426_)
                    (let ((_e2641026428_ (gx#stx-e _g2640726426_)))
                      (let ((_hd2641126431_ (##car _e2641026428_))
                            (_tl2641226433_ (##cdr _e2641026428_)))
                        (if (gx#stx-pair? _tl2641226433_)
                            (let ((_e2641326436_ (gx#stx-e _tl2641226433_)))
                              (let ((_hd2641426439_ (##car _e2641326436_))
                                    (_tl2641526441_ (##cdr _e2641326436_)))
                                (if (gx#stx-pair? _tl2641526441_)
                                    (let ((_e2641626444_
                                           (gx#stx-e _tl2641526441_)))
                                      (let ((_hd2641726447_
                                             (##car _e2641626444_))
                                            (_tl2641826449_
                                             (##cdr _e2641626444_)))
                                        (if (gx#stx-null? _tl2641826449_)
                                            ((lambda (_L26452_ _L26453_)
                                               (let ((_expr26468_
                                                      (apply gxc#compile-e
                                                             _L26452_
                                                             _args26404_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L26453_
                                                              (cons _expr26468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26403_)))
                                             _hd2641726447_
                                             _hd2641426439_)
                                            (_g2640626423_ _g2640726426_))))
                                    (_g2640626423_ _g2640726426_))))
                            (_g2640626423_ _g2640726426_))))
                    (_g2640626423_ _g2640726426_)))))
        (_g2640526470_ _stx26403_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx26334_)
      (let* ((_g2633626353_
              (lambda (_g2633726350_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2633726350_)))
             (_g2633526400_
              (lambda (_g2633726356_)
                (if (gx#stx-pair? _g2633726356_)
                    (let ((_e2634026358_ (gx#stx-e _g2633726356_)))
                      (let ((_hd2634126361_ (##car _e2634026358_))
                            (_tl2634226363_ (##cdr _e2634026358_)))
                        (if (gx#stx-pair? _tl2634226363_)
                            (let ((_e2634326366_ (gx#stx-e _tl2634226363_)))
                              (let ((_hd2634426369_ (##car _e2634326366_))
                                    (_tl2634526371_ (##cdr _e2634326366_)))
                                (if (gx#stx-pair? _tl2634526371_)
                                    (let ((_e2634626374_
                                           (gx#stx-e _tl2634526371_)))
                                      (let ((_hd2634726377_
                                             (##car _e2634626374_))
                                            (_tl2634826379_
                                             (##cdr _e2634626374_)))
                                        (if (gx#stx-null? _tl2634826379_)
                                            ((lambda (_L26382_ _L26383_)
                                               (let ((_sym26398_
                                                      (gxc#identifier-symbol
                                                       _L26383_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym26398_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym26398_
                                                    '#t)
                                                   (gxc#compile-e _L26382_))))
                                             _hd2634726377_
                                             _hd2634426369_)
                                            (_g2633626353_ _g2633726356_))))
                                    (_g2633626353_ _g2633726356_))))
                            (_g2633626353_ _g2633726356_))))
                    (_g2633626353_ _g2633726356_)))))
        (_g2633526400_ _stx26334_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25568_)
      (let* ((_g2557325730_
              (lambda (_g2557425727_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2557425727_)))
             (_g2557225737_ (lambda (_g2557425733_) ((lambda () '#f))))
             (_g2557125877_
              (lambda (_g2557425740_)
                (if (gx#stx-pair? _g2557425740_)
                    (let ((_e2569025742_ (gx#stx-e _g2557425740_)))
                      (let ((_hd2569125745_ (##car _e2569025742_))
                            (_tl2569225747_ (##cdr _e2569025742_)))
                        (if (gx#stx-pair? _tl2569225747_)
                            (let ((_e2569325750_ (gx#stx-e _tl2569225747_)))
                              (let ((_hd2569425753_ (##car _e2569325750_))
                                    (_tl2569525755_ (##cdr _e2569325750_)))
                                (if (gx#stx-pair? _hd2569425753_)
                                    (let ((_e2569625758_
                                           (gx#stx-e _hd2569425753_)))
                                      (let ((_hd2569725761_
                                             (##car _e2569625758_))
                                            (_tl2569825763_
                                             (##cdr _e2569625758_)))
                                        (if (gx#identifier? _hd2569725761_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2569725761_)
                                                (if (gx#stx-pair?
                                                     _tl2569825763_)
                                                    (let ((_e2569925766_
                                                           (gx#stx-e
                                                            _tl2569825763_)))
                                                      (let ((_hd2570025769_
                                                             (##car _e2569925766_))
                                                            (_tl2570125771_
                                                             (##cdr _e2569925766_)))
                                                        (if (gx#stx-pair?
                                                             _hd2570025769_)
                                                            (let ((_e2570225774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2570025769_)))
                      (let ((_hd2570325777_ (##car _e2570225774_))
                            (_tl2570425779_ (##cdr _e2570225774_)))
                        (if (gx#identifier? _hd2570325777_)
                            (if (gx#stx-eq? '%#ref _hd2570325777_)
                                (if (gx#stx-pair? _tl2570425779_)
                                    (let ((_e2570525782_
                                           (gx#stx-e _tl2570425779_)))
                                      (let ((_hd2570625785_
                                             (##car _e2570525782_))
                                            (_tl2570725787_
                                             (##cdr _e2570525782_)))
                                        (if (gx#stx-null? _tl2570725787_)
                                            (if (gx#stx-pair? _tl2570125771_)
                                                (let ((_e2570825790_
                                                       (gx#stx-e
                                                        _tl2570125771_)))
                                                  (let ((_hd2570925793_
                                                         (##car _e2570825790_))
                                                        (_tl2571025795_
                                                         (##cdr _e2570825790_)))
                                                    (if (gx#stx-pair?
                                                         _hd2570925793_)
                                                        (let ((_e2571125798_
                                                               (gx#stx-e
                                                                _hd2570925793_)))
                                                          (let ((_hd2571225801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2571125798_))
                        (_tl2571325803_ (##cdr _e2571125798_)))
                    (if (gx#identifier? _hd2571225801_)
                        (if (gx#stx-eq? '%#ref _hd2571225801_)
                            (if (gx#stx-pair? _tl2571325803_)
                                (let ((_e2571425806_
                                       (gx#stx-e _tl2571325803_)))
                                  (let ((_hd2571525809_ (##car _e2571425806_))
                                        (_tl2571625811_ (##cdr _e2571425806_)))
                                    (if (gx#stx-null? _tl2571625811_)
                                        (if (gx#stx-pair? _tl2571025795_)
                                            (let ((_e2571725814_
                                                   (gx#stx-e _tl2571025795_)))
                                              (let ((_hd2571825817_
                                                     (##car _e2571725814_))
                                                    (_tl2571925819_
                                                     (##cdr _e2571725814_)))
                                                (if (gx#stx-pair?
                                                     _hd2571825817_)
                                                    (let ((_e2572025822_
                                                           (gx#stx-e
                                                            _hd2571825817_)))
                                                      (let ((_hd2572125825_
                                                             (##car _e2572025822_))
                                                            (_tl2572225827_
                                                             (##cdr _e2572025822_)))
                                                        (if (gx#identifier?
                                                             _hd2572125825_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2572125825_)
                        (if (gx#stx-pair? _tl2572225827_)
                            (let ((_e2572325830_ (gx#stx-e _tl2572225827_)))
                              (let ((_hd2572425833_ (##car _e2572325830_))
                                    (_tl2572525835_ (##cdr _e2572325830_)))
                                (if (gx#stx-null? _tl2572525835_)
                                    (if (gx#stx-null? _tl2571925819_)
                                        (if (gx#stx-null? _tl2569525755_)
                                            ((lambda (_L25838_
                                                      _L25839_
                                                      _L25840_
                                                      _L25841_)
                                               (if (if (gx#identifier?
                                                        _L25841_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25840_)
                        'apply)
                   (if (gx#free-identifier=? _L25841_ _L25838_)
                       (not (gx#free-identifier=? _L25839_ _L25841_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2557225737_
                                                    _g2557425740_)))
                                             _hd2572425833_
                                             _hd2571525809_
                                             _hd2570625785_
                                             _hd2569125745_)
                                            (_g2557225737_ _g2557425740_))
                                        (_g2557225737_ _g2557425740_))
                                    (_g2557225737_ _g2557425740_))))
                            (_g2557225737_ _g2557425740_))
                        (_g2557225737_ _g2557425740_))
                    (_g2557225737_ _g2557425740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2557225737_
                                                     _g2557425740_))))
                                            (_g2557225737_ _g2557425740_))
                                        (_g2557225737_ _g2557425740_))))
                                (_g2557225737_ _g2557425740_))
                            (_g2557225737_ _g2557425740_))
                        (_g2557225737_ _g2557425740_))))
                (_g2557225737_ _g2557425740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557225737_ _g2557425740_))
                                            (_g2557225737_ _g2557425740_))))
                                    (_g2557225737_ _g2557425740_))
                                (_g2557225737_ _g2557425740_))
                            (_g2557225737_ _g2557425740_))))
                    (_g2557225737_ _g2557425740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2557225737_
                                                     _g2557425740_))
                                                (_g2557225737_ _g2557425740_))
                                            (_g2557225737_ _g2557425740_))))
                                    (_g2557225737_ _g2557425740_))))
                            (_g2557225737_ _g2557425740_))))
                    (_g2557225737_ _g2557425740_))))
             (_g2557026137_
              (lambda (_g2557425880_)
                (if (gx#stx-pair? _g2557425880_)
                    (let ((_e2562625882_ (gx#stx-e _g2557425880_)))
                      (let ((_hd2562725885_ (##car _e2562625882_))
                            (_tl2562825887_ (##cdr _e2562625882_)))
                        (if (gx#stx-pair/null? _hd2562725885_)
                            (if (fx>= (gx#stx-length _hd2562725885_) '0)
                                (let ((_g27878_
                                       (gx#syntax-split-splice
                                        _hd2562725885_
                                        '0)))
                                  (begin
                                    (let ((_g27879_
                                           (if (##values? _g27878_)
                                               (##vector-length _g27878_)
                                               1)))
                                      (if (not (##fx= _g27879_ 2))
                                          (error "Context expects 2 values"
                                                 _g27879_)))
                                    (let ((_target2562925890_
                                           (##vector-ref _g27878_ 0))
                                          (_tl2563125892_
                                           (##vector-ref _g27878_ 1)))
                                      (letrec ((_loop2563225895_
                                                (lambda (_hd2563025898_
                                                         _arg2563625900_)
                                                  (if (gx#stx-pair?
                                                       _hd2563025898_)
                                                      (let ((_e2563325903_
                                                             (gx#stx-e
                                                              _hd2563025898_)))
                                                        (let ((_lp-hd2563425906_
                                                               (##car _e2563325903_))
                                                              (_lp-tl2563525908_
                                                               (##cdr _e2563325903_)))
                                                          (_loop2563225895_
                                                           _lp-tl2563525908_
                                                           (cons _lp-hd2563425906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2563625900_))))
              (let ((_arg2563725911_ (reverse _arg2563625900_)))
                (if (gx#stx-pair? _tl2562825887_)
                    (let ((_e2563825914_ (gx#stx-e _tl2562825887_)))
                      (let ((_hd2563925917_ (##car _e2563825914_))
                            (_tl2564025919_ (##cdr _e2563825914_)))
                        (if (gx#stx-pair? _hd2563925917_)
                            (let ((_e2564125922_ (gx#stx-e _hd2563925917_)))
                              (let ((_hd2564225925_ (##car _e2564125922_))
                                    (_tl2564325927_ (##cdr _e2564125922_)))
                                (if (gx#identifier? _hd2564225925_)
                                    (if (gx#stx-eq? '%#call _hd2564225925_)
                                        (if (gx#stx-pair? _tl2564325927_)
                                            (let ((_e2564425930_
                                                   (gx#stx-e _tl2564325927_)))
                                              (let ((_hd2564525933_
                                                     (##car _e2564425930_))
                                                    (_tl2564625935_
                                                     (##cdr _e2564425930_)))
                                                (if (gx#stx-pair?
                                                     _hd2564525933_)
                                                    (let ((_e2564725938_
                                                           (gx#stx-e
                                                            _hd2564525933_)))
                                                      (let ((_hd2564825941_
                                                             (##car _e2564725938_))
                                                            (_tl2564925943_
                                                             (##cdr _e2564725938_)))
                                                        (if (gx#identifier?
                                                             _hd2564825941_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2564825941_)
                        (if (gx#stx-pair? _tl2564925943_)
                            (let ((_e2565025946_ (gx#stx-e _tl2564925943_)))
                              (let ((_hd2565125949_ (##car _e2565025946_))
                                    (_tl2565225951_ (##cdr _e2565025946_)))
                                (if (gx#stx-null? _tl2565225951_)
                                    (if (gx#stx-pair? _tl2564625935_)
                                        (let ((_e2565325954_
                                               (gx#stx-e _tl2564625935_)))
                                          (let ((_hd2565425957_
                                                 (##car _e2565325954_))
                                                (_tl2565525959_
                                                 (##cdr _e2565325954_)))
                                            (if (gx#stx-pair? _hd2565425957_)
                                                (let ((_e2565625962_
                                                       (gx#stx-e
                                                        _hd2565425957_)))
                                                  (let ((_hd2565725965_
                                                         (##car _e2565625962_))
                                                        (_tl2565825967_
                                                         (##cdr _e2565625962_)))
                                                    (if (gx#identifier?
                                                         _hd2565725965_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2565725965_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2565825967_)
                        (let ((_e2565925970_ (gx#stx-e _tl2565825967_)))
                          (let ((_hd2566025973_ (##car _e2565925970_))
                                (_tl2566125975_ (##cdr _e2565925970_)))
                            (if (gx#stx-null? _tl2566125975_)
                                (if (gx#stx-pair/null? _tl2565525959_)
                                    (if (fx>= (gx#stx-length _tl2565525959_)
                                              '1)
                                        (let ((_g27880_
                                               (gx#syntax-split-splice
                                                _tl2565525959_
                                                '1)))
                                          (begin
                                            (let ((_g27881_
                                                   (if (##values? _g27880_)
                                                       (##vector-length
                                                        _g27880_)
                                                       1)))
                                              (if (not (##fx= _g27881_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27881_)))
                                            (let ((_target2566225978_
                                                   (##vector-ref _g27880_ 0))
                                                  (_tl2566425980_
                                                   (##vector-ref _g27880_ 1)))
                                              (if (gx#stx-pair? _tl2566425980_)
                                                  (let ((_e2567125983_
                                                         (gx#stx-e
                                                          _tl2566425980_)))
                                                    (let ((_hd2567225986_
                                                           (##car _e2567125983_))
                                                          (_tl2567325988_
                                                           (##cdr _e2567125983_)))
                                                      (if (gx#stx-pair?
                                                           _hd2567225986_)
                                                          (let ((_e2567425991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2567225986_)))
                    (let ((_hd2567525994_ (##car _e2567425991_))
                          (_tl2567625996_ (##cdr _e2567425991_)))
                      (if (gx#identifier? _hd2567525994_)
                          (if (gx#stx-eq? '%#ref _hd2567525994_)
                              (if (gx#stx-pair? _tl2567625996_)
                                  (let ((_e2567725999_
                                         (gx#stx-e _tl2567625996_)))
                                    (let ((_hd2567826002_
                                           (##car _e2567725999_))
                                          (_tl2567926004_
                                           (##cdr _e2567725999_)))
                                      (if (gx#stx-null? _tl2567926004_)
                                          (if (gx#stx-null? _tl2567325988_)
                                              (letrec ((_loop2566526007_
                                                        (lambda (_hd2566326010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2566926012_)
                  (if (gx#stx-pair? _hd2566326010_)
                      (let ((_e2566626015_ (gx#stx-e _hd2566326010_)))
                        (let ((_lp-hd2566726018_ (##car _e2566626015_))
                              (_lp-tl2566826020_ (##cdr _e2566626015_)))
                          (if (gx#stx-pair? _lp-hd2566726018_)
                              (let ((_e2568026023_
                                     (gx#stx-e _lp-hd2566726018_)))
                                (let ((_hd2568126026_ (##car _e2568026023_))
                                      (_tl2568226028_ (##cdr _e2568026023_)))
                                  (if (gx#identifier? _hd2568126026_)
                                      (if (gx#stx-eq? '%#ref _hd2568126026_)
                                          (if (gx#stx-pair? _tl2568226028_)
                                              (let ((_e2568326031_
                                                     (gx#stx-e
                                                      _tl2568226028_)))
                                                (let ((_hd2568426034_
                                                       (##car _e2568326031_))
                                                      (_tl2568526036_
                                                       (##cdr _e2568326031_)))
                                                  (if (gx#stx-null?
                                                       _tl2568526036_)
                                                      (_loop2566526007_
                                                       _lp-tl2566826020_
                                                       (cons _hd2568426034_
                                                             _xarg2566926012_))
                                                      (_g2557125877_
                                                       _g2557425880_))))
                                              (_g2557125877_ _g2557425880_))
                                          (_g2557125877_ _g2557425880_))
                                      (_g2557125877_ _g2557425880_))))
                              (_g2557125877_ _g2557425880_))))
                      (let ((_xarg2567026039_ (reverse _xarg2566926012_)))
                        (if (gx#stx-null? _tl2564025919_)
                            ((lambda (_L26042_
                                      _L26043_
                                      _L26044_
                                      _L26045_
                                      _L26046_
                                      _L26047_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2609026093_
                                                           _g2609126095_)
                                                    (cons _g2609026093_
                                                          _g2609126095_))
                                                  '()
                                                  _L26047_)))
                                       (if (gx#identifier? _L26046_)
                                           (if (eq? (gxc#identifier-symbol
                                                     _L26045_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2609726100_ _g2609826102_)
                                    (cons _g2609726100_ _g2609826102_))
                                  '()
                                  _L26047_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2610426107_ _g2610526109_)
                                    (cons _g2610426107_ _g2610526109_))
                                  '()
                                  _L26043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2611126114_ _g2611226116_)
                                    (cons _g2611126114_ _g2611226116_))
                                  '()
                                  _L26047_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2611826121_ _g2611926123_)
                                    (cons _g2611826121_ _g2611926123_))
                                  '()
                                  _L26043_)))
               (if (gx#free-identifier=? _L26046_ _L26042_)
                   (not (find (lambda (_g2612526127_)
                                (gx#free-identifier=? _g2612526127_ _L26044_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2612926132_ _g2613026134_)
                                          (cons _g2612926132_ _g2613026134_))
                                        (cons _L26046_ '())
                                        _L26047_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2557125877_ _g2557425880_)))
                             _hd2567826002_
                             _xarg2567026039_
                             _hd2566025973_
                             _hd2565125949_
                             _tl2563125892_
                             _arg2563725911_)
                            (_g2557125877_ _g2557425880_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2566526007_
                                                 _target2566225978_
                                                 '()))
                                              (_g2557125877_ _g2557425880_))
                                          (_g2557125877_ _g2557425880_))))
                                  (_g2557125877_ _g2557425880_))
                              (_g2557125877_ _g2557425880_))
                          (_g2557125877_ _g2557425880_))))
                  (_g2557125877_ _g2557425880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2557125877_
                                                   _g2557425880_)))))
                                        (_g2557125877_ _g2557425880_))
                                    (_g2557125877_ _g2557425880_))
                                (_g2557125877_ _g2557425880_))))
                        (_g2557125877_ _g2557425880_))
                    (_g2557125877_ _g2557425880_))
                (_g2557125877_ _g2557425880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557125877_
                                                 _g2557425880_))))
                                        (_g2557125877_ _g2557425880_))
                                    (_g2557125877_ _g2557425880_))))
                            (_g2557125877_ _g2557425880_))
                        (_g2557125877_ _g2557425880_))
                    (_g2557125877_ _g2557425880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2557125877_
                                                     _g2557425880_))))
                                            (_g2557125877_ _g2557425880_))
                                        (_g2557125877_ _g2557425880_))
                                    (_g2557125877_ _g2557425880_))))
                            (_g2557125877_ _g2557425880_))))
                    (_g2557125877_ _g2557425880_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2563225895_
                                         _target2562925890_
                                         '())))))
                                (_g2557125877_ _g2557425880_))
                            (_g2557125877_ _g2557425880_))))
                    (_g2557125877_ _g2557425880_))))
             (_g2556926331_
              (lambda (_g2557426140_)
                (if (gx#stx-pair? _g2557426140_)
                    (let ((_e2557826142_ (gx#stx-e _g2557426140_)))
                      (let ((_hd2557926145_ (##car _e2557826142_))
                            (_tl2558026147_ (##cdr _e2557826142_)))
                        (if (gx#stx-pair/null? _hd2557926145_)
                            (if (fx>= (gx#stx-length _hd2557926145_) '0)
                                (let ((_g27882_
                                       (gx#syntax-split-splice
                                        _hd2557926145_
                                        '0)))
                                  (begin
                                    (let ((_g27883_
                                           (if (##values? _g27882_)
                                               (##vector-length _g27882_)
                                               1)))
                                      (if (not (##fx= _g27883_ 2))
                                          (error "Context expects 2 values"
                                                 _g27883_)))
                                    (let ((_target2558126150_
                                           (##vector-ref _g27882_ 0))
                                          (_tl2558326152_
                                           (##vector-ref _g27882_ 1)))
                                      (if (gx#stx-null? _tl2558326152_)
                                          (letrec ((_loop2558426155_
                                                    (lambda (_hd2558226158_
                                                             _arg2558826160_)
                                                      (if (gx#stx-pair?
                                                           _hd2558226158_)
                                                          (let ((_e2558526163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2558226158_)))
                    (let ((_lp-hd2558626166_ (##car _e2558526163_))
                          (_lp-tl2558726168_ (##cdr _e2558526163_)))
                      (_loop2558426155_
                       _lp-tl2558726168_
                       (cons _lp-hd2558626166_ _arg2558826160_))))
                  (let ((_arg2558926171_ (reverse _arg2558826160_)))
                    (if (gx#stx-pair? _tl2558026147_)
                        (let ((_e2559026174_ (gx#stx-e _tl2558026147_)))
                          (let ((_hd2559126177_ (##car _e2559026174_))
                                (_tl2559226179_ (##cdr _e2559026174_)))
                            (if (gx#stx-pair? _hd2559126177_)
                                (let ((_e2559326182_
                                       (gx#stx-e _hd2559126177_)))
                                  (let ((_hd2559426185_ (##car _e2559326182_))
                                        (_tl2559526187_ (##cdr _e2559326182_)))
                                    (if (gx#identifier? _hd2559426185_)
                                        (if (gx#stx-eq? '%#call _hd2559426185_)
                                            (if (gx#stx-pair? _tl2559526187_)
                                                (let ((_e2559626190_
                                                       (gx#stx-e
                                                        _tl2559526187_)))
                                                  (let ((_hd2559726193_
                                                         (##car _e2559626190_))
                                                        (_tl2559826195_
                                                         (##cdr _e2559626190_)))
                                                    (if (gx#stx-pair?
                                                         _hd2559726193_)
                                                        (let ((_e2559926198_
                                                               (gx#stx-e
                                                                _hd2559726193_)))
                                                          (let ((_hd2560026201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2559926198_))
                        (_tl2560126203_ (##cdr _e2559926198_)))
                    (if (gx#identifier? _hd2560026201_)
                        (if (gx#stx-eq? '%#ref _hd2560026201_)
                            (if (gx#stx-pair? _tl2560126203_)
                                (let ((_e2560226206_
                                       (gx#stx-e _tl2560126203_)))
                                  (let ((_hd2560326209_ (##car _e2560226206_))
                                        (_tl2560426211_ (##cdr _e2560226206_)))
                                    (if (gx#stx-null? _tl2560426211_)
                                        (if (gx#stx-pair/null? _tl2559826195_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2559826195_)
                                                      '0)
                                                (let ((_g27884_
                                                       (gx#syntax-split-splice
                                                        _tl2559826195_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27885_
                                                           (if (##values?
                                                                _g27884_)
                                                               (##vector-length
                                                                _g27884_)
                                                               1)))
                                                      (if (not (##fx= _g27885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g27885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2560526214_
                                                           (##vector-ref
                                                            _g27884_
                                                            0))
                                                          (_tl2560726216_
                                                           (##vector-ref
                                                            _g27884_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2560726216_)
                                                          (letrec ((_loop2560826219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2560626222_ _xarg2561226224_)
                              (if (gx#stx-pair? _hd2560626222_)
                                  (let ((_e2560926227_
                                         (gx#stx-e _hd2560626222_)))
                                    (let ((_lp-hd2561026230_
                                           (##car _e2560926227_))
                                          (_lp-tl2561126232_
                                           (##cdr _e2560926227_)))
                                      (if (gx#stx-pair? _lp-hd2561026230_)
                                          (let ((_e2561426235_
                                                 (gx#stx-e _lp-hd2561026230_)))
                                            (let ((_hd2561526238_
                                                   (##car _e2561426235_))
                                                  (_tl2561626240_
                                                   (##cdr _e2561426235_)))
                                              (if (gx#identifier?
                                                   _hd2561526238_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2561526238_)
                                                      (if (gx#stx-pair?
                                                           _tl2561626240_)
                                                          (let ((_e2561726243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2561626240_)))
                    (let ((_hd2561826246_ (##car _e2561726243_))
                          (_tl2561926248_ (##cdr _e2561726243_)))
                      (if (gx#stx-null? _tl2561926248_)
                          (_loop2560826219_
                           _lp-tl2561126232_
                           (cons _hd2561826246_ _xarg2561226224_))
                          (_g2557026137_ _g2557426140_))))
                  (_g2557026137_ _g2557426140_))
              (_g2557026137_ _g2557426140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2557026137_
                                                   _g2557426140_))))
                                          (_g2557026137_ _g2557426140_))))
                                  (let ((_xarg2561326251_
                                         (reverse _xarg2561226224_)))
                                    (if (gx#stx-null? _tl2559226179_)
                                        ((lambda (_L26254_ _L26255_ _L26256_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2628426287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2628526289_)
                        (cons _g2628426287_ _g2628526289_))
                      '()
                      _L26256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2629126294_ _g2629226296_)
                                        (cons _g2629126294_ _g2629226296_))
                                      '()
                                      _L26256_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2629826301_ _g2629926303_)
                                        (cons _g2629826301_ _g2629926303_))
                                      '()
                                      _L26254_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2630526308_ _g2630626310_)
                                        (cons _g2630526308_ _g2630626310_))
                                      '()
                                      _L26256_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2631226315_ _g2631326317_)
                                        (cons _g2631226315_ _g2631326317_))
                                      '()
                                      _L26254_)))
                   (not (find (lambda (_g2631926321_)
                                (gx#free-identifier=? _g2631926321_ _L26255_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2632326326_ _g2632426328_)
                                          (cons _g2632326326_ _g2632426328_))
                                        '()
                                        _L26256_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2557026137_ _g2557426140_)))
                                         _xarg2561326251_
                                         _hd2560326209_
                                         _arg2558926171_)
                                        (_g2557026137_ _g2557426140_)))))))
                    (_loop2560826219_ _target2560526214_ '()))
                  (_g2557026137_ _g2557426140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557026137_ _g2557426140_))
                                            (_g2557026137_ _g2557426140_))
                                        (_g2557026137_ _g2557426140_))))
                                (_g2557026137_ _g2557426140_))
                            (_g2557026137_ _g2557426140_))
                        (_g2557026137_ _g2557426140_))))
                (_g2557026137_ _g2557426140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2557026137_ _g2557426140_))
                                            (_g2557026137_ _g2557426140_))
                                        (_g2557026137_ _g2557426140_))))
                                (_g2557026137_ _g2557426140_))))
                        (_g2557026137_ _g2557426140_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2558426155_
                                             _target2558126150_
                                             '()))
                                          (_g2557026137_ _g2557426140_)))))
                                (_g2557026137_ _g2557426140_))
                            (_g2557026137_ _g2557426140_))))
                    (_g2557026137_ _g2557426140_)))))
        (_g2556926331_ _form25568_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form25036_)
      (let* ((_g2504025164_
              (lambda (_g2504125161_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2504125161_)))
             (_g2503925281_
              (lambda (_g2504125167_)
                (if (gx#stx-pair? _g2504125167_)
                    (let ((_e2513025169_ (gx#stx-e _g2504125167_)))
                      (let ((_hd2513125172_ (##car _e2513025169_))
                            (_tl2513225174_ (##cdr _e2513025169_)))
                        (if (gx#stx-pair? _tl2513225174_)
                            (let ((_e2513325177_ (gx#stx-e _tl2513225174_)))
                              (let ((_hd2513425180_ (##car _e2513325177_))
                                    (_tl2513525182_ (##cdr _e2513325177_)))
                                (if (gx#stx-pair? _hd2513425180_)
                                    (let ((_e2513625185_
                                           (gx#stx-e _hd2513425180_)))
                                      (let ((_hd2513725188_
                                             (##car _e2513625185_))
                                            (_tl2513825190_
                                             (##cdr _e2513625185_)))
                                        (if (gx#identifier? _hd2513725188_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2513725188_)
                                                (if (gx#stx-pair?
                                                     _tl2513825190_)
                                                    (let ((_e2513925193_
                                                           (gx#stx-e
                                                            _tl2513825190_)))
                                                      (let ((_hd2514025196_
                                                             (##car _e2513925193_))
                                                            (_tl2514125198_
                                                             (##cdr _e2513925193_)))
                                                        (if (gx#stx-pair?
                                                             _hd2514025196_)
                                                            (let ((_e2514225201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2514025196_)))
                      (let ((_hd2514325204_ (##car _e2514225201_))
                            (_tl2514425206_ (##cdr _e2514225201_)))
                        (if (gx#identifier? _hd2514325204_)
                            (if (gx#stx-eq? '%#ref _hd2514325204_)
                                (if (gx#stx-pair? _tl2514425206_)
                                    (let ((_e2514525209_
                                           (gx#stx-e _tl2514425206_)))
                                      (let ((_hd2514625212_
                                             (##car _e2514525209_))
                                            (_tl2514725214_
                                             (##cdr _e2514525209_)))
                                        (if (gx#stx-null? _tl2514725214_)
                                            (if (gx#stx-pair? _tl2514125198_)
                                                (let ((_e2514825217_
                                                       (gx#stx-e
                                                        _tl2514125198_)))
                                                  (let ((_hd2514925220_
                                                         (##car _e2514825217_))
                                                        (_tl2515025222_
                                                         (##cdr _e2514825217_)))
                                                    (if (gx#stx-pair?
                                                         _hd2514925220_)
                                                        (let ((_e2515125225_
                                                               (gx#stx-e
                                                                _hd2514925220_)))
                                                          (let ((_hd2515225228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2515125225_))
                        (_tl2515325230_ (##cdr _e2515125225_)))
                    (if (gx#identifier? _hd2515225228_)
                        (if (gx#stx-eq? '%#ref _hd2515225228_)
                            (if (gx#stx-pair? _tl2515325230_)
                                (let ((_e2515425233_
                                       (gx#stx-e _tl2515325230_)))
                                  (let ((_hd2515525236_ (##car _e2515425233_))
                                        (_tl2515625238_ (##cdr _e2515425233_)))
                                    (if (gx#stx-null? _tl2515625238_)
                                        (if (gx#stx-pair? _tl2515025222_)
                                            (let ((_e2515725241_
                                                   (gx#stx-e _tl2515025222_)))
                                              (let ((_hd2515825244_
                                                     (##car _e2515725241_))
                                                    (_tl2515925246_
                                                     (##cdr _e2515725241_)))
                                                (if (gx#stx-null?
                                                     _tl2515925246_)
                                                    (if (gx#stx-null?
                                                         _tl2513525182_)
                                                        ((lambda (_L25249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L25250_
                          _L25251_)
                   (gxc#identifier-symbol _L25249_))
                 _hd2515525236_
                 _hd2514625212_
                 _hd2513125172_)
                (_g2504025164_ _g2504125167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2504025164_
                                                     _g2504125167_))))
                                            (_g2504025164_ _g2504125167_))
                                        (_g2504025164_ _g2504125167_))))
                                (_g2504025164_ _g2504125167_))
                            (_g2504025164_ _g2504125167_))
                        (_g2504025164_ _g2504125167_))))
                (_g2504025164_ _g2504125167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2504025164_ _g2504125167_))
                                            (_g2504025164_ _g2504125167_))))
                                    (_g2504025164_ _g2504125167_))
                                (_g2504025164_ _g2504125167_))
                            (_g2504025164_ _g2504125167_))))
                    (_g2504025164_ _g2504125167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2504025164_
                                                     _g2504125167_))
                                                (_g2504025164_ _g2504125167_))
                                            (_g2504025164_ _g2504125167_))))
                                    (_g2504025164_ _g2504125167_))))
                            (_g2504025164_ _g2504125167_))))
                    (_g2504025164_ _g2504125167_))))
             (_g2503825417_
              (lambda (_g2504125284_)
                (if (gx#stx-pair? _g2504125284_)
                    (let ((_e2509125286_ (gx#stx-e _g2504125284_)))
                      (let ((_hd2509225289_ (##car _e2509125286_))
                            (_tl2509325291_ (##cdr _e2509125286_)))
                        (if (gx#stx-pair/null? _hd2509225289_)
                            (if (fx>= (gx#stx-length _hd2509225289_) '0)
                                (let ((_g27886_
                                       (gx#syntax-split-splice
                                        _hd2509225289_
                                        '0)))
                                  (begin
                                    (let ((_g27887_
                                           (if (##values? _g27886_)
                                               (##vector-length _g27886_)
                                               1)))
                                      (if (not (##fx= _g27887_ 2))
                                          (error "Context expects 2 values"
                                                 _g27887_)))
                                    (let ((_target2509425294_
                                           (##vector-ref _g27886_ 0))
                                          (_tl2509625296_
                                           (##vector-ref _g27886_ 1)))
                                      (letrec ((_loop2509725299_
                                                (lambda (_hd2509525302_
                                                         _arg2510125304_)
                                                  (if (gx#stx-pair?
                                                       _hd2509525302_)
                                                      (let ((_e2509825307_
                                                             (gx#stx-e
                                                              _hd2509525302_)))
                                                        (let ((_lp-hd2509925310_
                                                               (##car _e2509825307_))
                                                              (_lp-tl2510025312_
                                                               (##cdr _e2509825307_)))
                                                          (_loop2509725299_
                                                           _lp-tl2510025312_
                                                           (cons _lp-hd2509925310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2510125304_))))
              (let ((_arg2510225315_ (reverse _arg2510125304_)))
                (if (gx#stx-pair? _tl2509325291_)
                    (let ((_e2510325318_ (gx#stx-e _tl2509325291_)))
                      (let ((_hd2510425321_ (##car _e2510325318_))
                            (_tl2510525323_ (##cdr _e2510325318_)))
                        (if (gx#stx-pair? _hd2510425321_)
                            (let ((_e2510625326_ (gx#stx-e _hd2510425321_)))
                              (let ((_hd2510725329_ (##car _e2510625326_))
                                    (_tl2510825331_ (##cdr _e2510625326_)))
                                (if (gx#identifier? _hd2510725329_)
                                    (if (gx#stx-eq? '%#call _hd2510725329_)
                                        (if (gx#stx-pair? _tl2510825331_)
                                            (let ((_e2510925334_
                                                   (gx#stx-e _tl2510825331_)))
                                              (let ((_hd2511025337_
                                                     (##car _e2510925334_))
                                                    (_tl2511125339_
                                                     (##cdr _e2510925334_)))
                                                (if (gx#stx-pair?
                                                     _hd2511025337_)
                                                    (let ((_e2511225342_
                                                           (gx#stx-e
                                                            _hd2511025337_)))
                                                      (let ((_hd2511325345_
                                                             (##car _e2511225342_))
                                                            (_tl2511425347_
                                                             (##cdr _e2511225342_)))
                                                        (if (gx#identifier?
                                                             _hd2511325345_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2511325345_)
                        (if (gx#stx-pair? _tl2511425347_)
                            (let ((_e2511525350_ (gx#stx-e _tl2511425347_)))
                              (let ((_hd2511625353_ (##car _e2511525350_))
                                    (_tl2511725355_ (##cdr _e2511525350_)))
                                (if (gx#stx-null? _tl2511725355_)
                                    (if (gx#stx-pair? _tl2511125339_)
                                        (let ((_e2511825358_
                                               (gx#stx-e _tl2511125339_)))
                                          (let ((_hd2511925361_
                                                 (##car _e2511825358_))
                                                (_tl2512025363_
                                                 (##cdr _e2511825358_)))
                                            (if (gx#stx-pair? _hd2511925361_)
                                                (let ((_e2512125366_
                                                       (gx#stx-e
                                                        _hd2511925361_)))
                                                  (let ((_hd2512225369_
                                                         (##car _e2512125366_))
                                                        (_tl2512325371_
                                                         (##cdr _e2512125366_)))
                                                    (if (gx#identifier?
                                                         _hd2512225369_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2512225369_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2512325371_)
                        (let ((_e2512425374_ (gx#stx-e _tl2512325371_)))
                          (let ((_hd2512525377_ (##car _e2512425374_))
                                (_tl2512625379_ (##cdr _e2512425374_)))
                            (if (gx#stx-null? _tl2512625379_)
                                (if (gx#stx-null? _tl2510525323_)
                                    ((lambda (_L25382_
                                              _L25383_
                                              _L25384_
                                              _L25385_)
                                       (gxc#identifier-symbol _L25382_))
                                     _hd2512525377_
                                     _hd2511625353_
                                     _tl2509625296_
                                     _arg2510225315_)
                                    (_g2503925281_ _g2504125284_))
                                (_g2503925281_ _g2504125284_))))
                        (_g2503925281_ _g2504125284_))
                    (_g2503925281_ _g2504125284_))
                (_g2503925281_ _g2504125284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2503925281_
                                                 _g2504125284_))))
                                        (_g2503925281_ _g2504125284_))
                                    (_g2503925281_ _g2504125284_))))
                            (_g2503925281_ _g2504125284_))
                        (_g2503925281_ _g2504125284_))
                    (_g2503925281_ _g2504125284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2503925281_
                                                     _g2504125284_))))
                                            (_g2503925281_ _g2504125284_))
                                        (_g2503925281_ _g2504125284_))
                                    (_g2503925281_ _g2504125284_))))
                            (_g2503925281_ _g2504125284_))))
                    (_g2503925281_ _g2504125284_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2509725299_
                                         _target2509425294_
                                         '())))))
                                (_g2503925281_ _g2504125284_))
                            (_g2503925281_ _g2504125284_))))
                    (_g2503925281_ _g2504125284_))))
             (_g2503725565_
              (lambda (_g2504125420_)
                (if (gx#stx-pair? _g2504125420_)
                    (let ((_e2504525422_ (gx#stx-e _g2504125420_)))
                      (let ((_hd2504625425_ (##car _e2504525422_))
                            (_tl2504725427_ (##cdr _e2504525422_)))
                        (if (gx#stx-pair/null? _hd2504625425_)
                            (if (fx>= (gx#stx-length _hd2504625425_) '0)
                                (let ((_g27888_
                                       (gx#syntax-split-splice
                                        _hd2504625425_
                                        '0)))
                                  (begin
                                    (let ((_g27889_
                                           (if (##values? _g27888_)
                                               (##vector-length _g27888_)
                                               1)))
                                      (if (not (##fx= _g27889_ 2))
                                          (error "Context expects 2 values"
                                                 _g27889_)))
                                    (let ((_target2504825430_
                                           (##vector-ref _g27888_ 0))
                                          (_tl2505025432_
                                           (##vector-ref _g27888_ 1)))
                                      (if (gx#stx-null? _tl2505025432_)
                                          (letrec ((_loop2505125435_
                                                    (lambda (_hd2504925438_
                                                             _arg2505525440_)
                                                      (if (gx#stx-pair?
                                                           _hd2504925438_)
                                                          (let ((_e2505225443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2504925438_)))
                    (let ((_lp-hd2505325446_ (##car _e2505225443_))
                          (_lp-tl2505425448_ (##cdr _e2505225443_)))
                      (_loop2505125435_
                       _lp-tl2505425448_
                       (cons _lp-hd2505325446_ _arg2505525440_))))
                  (let ((_arg2505625451_ (reverse _arg2505525440_)))
                    (if (gx#stx-pair? _tl2504725427_)
                        (let ((_e2505725454_ (gx#stx-e _tl2504725427_)))
                          (let ((_hd2505825457_ (##car _e2505725454_))
                                (_tl2505925459_ (##cdr _e2505725454_)))
                            (if (gx#stx-pair? _hd2505825457_)
                                (let ((_e2506025462_
                                       (gx#stx-e _hd2505825457_)))
                                  (let ((_hd2506125465_ (##car _e2506025462_))
                                        (_tl2506225467_ (##cdr _e2506025462_)))
                                    (if (gx#identifier? _hd2506125465_)
                                        (if (gx#stx-eq? '%#call _hd2506125465_)
                                            (if (gx#stx-pair? _tl2506225467_)
                                                (let ((_e2506325470_
                                                       (gx#stx-e
                                                        _tl2506225467_)))
                                                  (let ((_hd2506425473_
                                                         (##car _e2506325470_))
                                                        (_tl2506525475_
                                                         (##cdr _e2506325470_)))
                                                    (if (gx#stx-pair?
                                                         _hd2506425473_)
                                                        (let ((_e2506625478_
                                                               (gx#stx-e
                                                                _hd2506425473_)))
                                                          (let ((_hd2506725481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2506625478_))
                        (_tl2506825483_ (##cdr _e2506625478_)))
                    (if (gx#identifier? _hd2506725481_)
                        (if (gx#stx-eq? '%#ref _hd2506725481_)
                            (if (gx#stx-pair? _tl2506825483_)
                                (let ((_e2506925486_
                                       (gx#stx-e _tl2506825483_)))
                                  (let ((_hd2507025489_ (##car _e2506925486_))
                                        (_tl2507125491_ (##cdr _e2506925486_)))
                                    (if (gx#stx-null? _tl2507125491_)
                                        (if (gx#stx-pair/null? _tl2506525475_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2506525475_)
                                                      '0)
                                                (let ((_g27890_
                                                       (gx#syntax-split-splice
                                                        _tl2506525475_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27891_
                                                           (if (##values?
                                                                _g27890_)
                                                               (##vector-length
                                                                _g27890_)
                                                               1)))
                                                      (if (not (##fx= _g27891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g27891_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2507225494_
                                                           (##vector-ref
                                                            _g27890_
                                                            0))
                                                          (_tl2507425496_
                                                           (##vector-ref
                                                            _g27890_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2507425496_)
                                                          (letrec ((_loop2507525499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2507325502_ _xarg2507925504_)
                              (if (gx#stx-pair? _hd2507325502_)
                                  (let ((_e2507625507_
                                         (gx#stx-e _hd2507325502_)))
                                    (let ((_lp-hd2507725510_
                                           (##car _e2507625507_))
                                          (_lp-tl2507825512_
                                           (##cdr _e2507625507_)))
                                      (if (gx#stx-pair? _lp-hd2507725510_)
                                          (let ((_e2508125515_
                                                 (gx#stx-e _lp-hd2507725510_)))
                                            (let ((_hd2508225518_
                                                   (##car _e2508125515_))
                                                  (_tl2508325520_
                                                   (##cdr _e2508125515_)))
                                              (if (gx#identifier?
                                                   _hd2508225518_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2508225518_)
                                                      (if (gx#stx-pair?
                                                           _tl2508325520_)
                                                          (let ((_e2508425523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2508325520_)))
                    (let ((_hd2508525526_ (##car _e2508425523_))
                          (_tl2508625528_ (##cdr _e2508425523_)))
                      (if (gx#stx-null? _tl2508625528_)
                          (_loop2507525499_
                           _lp-tl2507825512_
                           (cons _hd2508525526_ _xarg2507925504_))
                          (_g2503825417_ _g2504125420_))))
                  (_g2503825417_ _g2504125420_))
              (_g2503825417_ _g2504125420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2503825417_
                                                   _g2504125420_))))
                                          (_g2503825417_ _g2504125420_))))
                                  (let ((_xarg2508025531_
                                         (reverse _xarg2507925504_)))
                                    (if (gx#stx-null? _tl2505925459_)
                                        ((lambda (_L25534_ _L25535_ _L25536_)
                                           (gxc#identifier-symbol _L25535_))
                                         _xarg2508025531_
                                         _hd2507025489_
                                         _arg2505625451_)
                                        (_g2503825417_ _g2504125420_)))))))
                    (_loop2507525499_ _target2507225494_ '()))
                  (_g2503825417_ _g2504125420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2503825417_ _g2504125420_))
                                            (_g2503825417_ _g2504125420_))
                                        (_g2503825417_ _g2504125420_))))
                                (_g2503825417_ _g2504125420_))
                            (_g2503825417_ _g2504125420_))
                        (_g2503825417_ _g2504125420_))))
                (_g2503825417_ _g2504125420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2503825417_ _g2504125420_))
                                            (_g2503825417_ _g2504125420_))
                                        (_g2503825417_ _g2504125420_))))
                                (_g2503825417_ _g2504125420_))))
                        (_g2503825417_ _g2504125420_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2505125435_
                                             _target2504825430_
                                             '()))
                                          (_g2503825417_ _g2504125420_)))))
                                (_g2503825417_ _g2504125420_))
                            (_g2503825417_ _g2504125420_))))
                    (_g2503825417_ _g2504125420_)))))
        (_g2503725565_ _form25036_))))
  (define gxc#lambda-form-arity
    (lambda (_form24840_)
      (let* ((_g2484224856_
              (lambda (_g2484324853_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2484324853_)))
             (_g2484125033_
              (lambda (_g2484324859_)
                (if (gx#stx-pair? _g2484324859_)
                    (let ((_e2484624861_ (gx#stx-e _g2484324859_)))
                      (let ((_hd2484724864_ (##car _e2484624861_))
                            (_tl2484824866_ (##cdr _e2484624861_)))
                        (if (gx#stx-pair? _tl2484824866_)
                            (let ((_e2484924869_ (gx#stx-e _tl2484824866_)))
                              (let ((_hd2485024872_ (##car _e2484924869_))
                                    (_tl2485124874_ (##cdr _e2484924869_)))
                                (if (gx#stx-null? _tl2485124874_)
                                    ((lambda (_L24877_ _L24878_)
                                       (let* ((_g2489324921_
                                               (lambda (_g2489424918_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2489424918_)))
                                              (_g2489224934_
                                               (lambda (_g2489424924_)
                                                 ((lambda (_L24926_)
                                                    (cons '0 '()))
                                                  _g2489424924_)))
                                              (_g2489124983_
                                               (lambda (_g2489424937_)
                                                 (if (gx#stx-pair/null?
                                                      _g2489424937_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2489424937_)
                                                               '0)
                                                         (let ((_g27892_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2489424937_
                         '0)))
                   (begin
                     (let ((_g27893_
                            (if (##values? _g27892_)
                                (##vector-length _g27892_)
                                1)))
                       (if (not (##fx= _g27893_ 2))
                           (error "Context expects 2 values" _g27893_)))
                     (let ((_target2490724939_ (##vector-ref _g27892_ 0))
                           (_tl2490924941_ (##vector-ref _g27892_ 1)))
                       (letrec ((_loop2491024944_
                                 (lambda (_hd2490824947_ _arg2491424949_)
                                   (if (gx#stx-pair? _hd2490824947_)
                                       (let ((_e2491124952_
                                              (gx#stx-e _hd2490824947_)))
                                         (let ((_lp-hd2491224955_
                                                (##car _e2491124952_))
                                               (_lp-tl2491324957_
                                                (##cdr _e2491124952_)))
                                           (_loop2491024944_
                                            _lp-tl2491324957_
                                            (cons _lp-hd2491224955_
                                                  _arg2491424949_))))
                                       (let ((_arg2491524960_
                                              (reverse _arg2491424949_)))
                                         ((lambda (_L24963_ _L24964_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2497524978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2497624980_)
                              (cons _g2497524978_ _g2497624980_))
                            '()
                            _L24964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2490924941_
                                          _arg2491524960_))))))
                         (_loop2491024944_ _target2490724939_ '())))))
                 (_g2489224934_ _g2489424937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2489224934_
                                                      _g2489424937_))))
                                              (_g2489025030_
                                               (lambda (_g2489424986_)
                                                 (if (gx#stx-pair/null?
                                                      _g2489424986_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2489424986_)
                                                               '0)
                                                         (let ((_g27894_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2489424986_
                         '0)))
                   (begin
                     (let ((_g27895_
                            (if (##values? _g27894_)
                                (##vector-length _g27894_)
                                1)))
                       (if (not (##fx= _g27895_ 2))
                           (error "Context expects 2 values" _g27895_)))
                     (let ((_target2489624988_ (##vector-ref _g27894_ 0))
                           (_tl2489824990_ (##vector-ref _g27894_ 1)))
                       (if (gx#stx-null? _tl2489824990_)
                           (letrec ((_loop2489924993_
                                     (lambda (_hd2489724996_ _arg2490324998_)
                                       (if (gx#stx-pair? _hd2489724996_)
                                           (let ((_e2490025001_
                                                  (gx#stx-e _hd2489724996_)))
                                             (let ((_lp-hd2490125004_
                                                    (##car _e2490025001_))
                                                   (_lp-tl2490225006_
                                                    (##cdr _e2490025001_)))
                                               (_loop2489924993_
                                                _lp-tl2490225006_
                                                (cons _lp-hd2490125004_
                                                      _arg2490324998_))))
                                           (let ((_arg2490425009_
                                                  (reverse _arg2490324998_)))
                                             ((lambda (_L25012_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2502225025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2502325027_)
                            (cons _g2502225025_ _g2502325027_))
                          '()
                          _L25012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2490425009_))))))
                             (_loop2489924993_ _target2489624988_ '()))
                           (_g2489124983_ _g2489424986_)))))
                 (_g2489124983_ _g2489424986_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2489124983_
                                                      _g2489424986_)))))
                                         (_g2489025030_ _L24878_)))
                                     _hd2485024872_
                                     _hd2484724864_)
                                    (_g2484224856_ _g2484324859_))))
                            (_g2484224856_ _g2484324859_))))
                    (_g2484224856_ _g2484324859_)))))
        (_g2484125033_ _form24840_))))
  (define gxc#lambda-expr?
    (lambda (_expr24793_)
      (let* ((_g2479624806_
              (lambda (_g2479724803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2479724803_)))
             (_g2479524813_ (lambda (_g2479724809_) ((lambda () '#f))))
             (_g2479424837_
              (lambda (_g2479724816_)
                (if (gx#stx-pair? _g2479724816_)
                    (let ((_e2479924818_ (gx#stx-e _g2479724816_)))
                      (let ((_hd2480024821_ (##car _e2479924818_))
                            (_tl2480124823_ (##cdr _e2479924818_)))
                        (if (gx#identifier? _hd2480024821_)
                            (if (gx#stx-eq? '%#lambda _hd2480024821_)
                                ((lambda (_L24826_) '#t) _tl2480124823_)
                                (_g2479524813_ _g2479724816_))
                            (_g2479524813_ _g2479724816_))))
                    (_g2479524813_ _g2479724816_)))))
        (_g2479424837_ _expr24793_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24746_)
      (let* ((_g2474924759_
              (lambda (_g2475024756_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2475024756_)))
             (_g2474824766_ (lambda (_g2475024762_) ((lambda () '#f))))
             (_g2474724790_
              (lambda (_g2475024769_)
                (if (gx#stx-pair? _g2475024769_)
                    (let ((_e2475224771_ (gx#stx-e _g2475024769_)))
                      (let ((_hd2475324774_ (##car _e2475224771_))
                            (_tl2475424776_ (##cdr _e2475224771_)))
                        (if (gx#identifier? _hd2475324774_)
                            (if (gx#stx-eq? '%#case-lambda _hd2475324774_)
                                ((lambda (_L24779_) '#t) _tl2475424776_)
                                (_g2474824766_ _g2475024769_))
                            (_g2474824766_ _g2475024769_))))
                    (_g2474824766_ _g2475024769_)))))
        (_g2474724790_ _expr24746_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24615_)
      (let* ((_g2461824648_
              (lambda (_g2461924645_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2461924645_)))
             (_g2461724655_ (lambda (_g2461924651_) ((lambda () '#f))))
             (_g2461624743_
              (lambda (_g2461924658_)
                (if (gx#stx-pair? _g2461924658_)
                    (let ((_e2462324660_ (gx#stx-e _g2461924658_)))
                      (let ((_hd2462424663_ (##car _e2462324660_))
                            (_tl2462524665_ (##cdr _e2462324660_)))
                        (if (gx#identifier? _hd2462424663_)
                            (if (gx#stx-eq? '%#let-values _hd2462424663_)
                                (if (gx#stx-pair? _tl2462524665_)
                                    (let ((_e2462624668_
                                           (gx#stx-e _tl2462524665_)))
                                      (let ((_hd2462724671_
                                             (##car _e2462624668_))
                                            (_tl2462824673_
                                             (##cdr _e2462624668_)))
                                        (if (gx#stx-pair? _hd2462724671_)
                                            (let ((_e2462924676_
                                                   (gx#stx-e _hd2462724671_)))
                                              (let ((_hd2463024679_
                                                     (##car _e2462924676_))
                                                    (_tl2463124681_
                                                     (##cdr _e2462924676_)))
                                                (if (gx#stx-pair?
                                                     _hd2463024679_)
                                                    (let ((_e2463224684_
                                                           (gx#stx-e
                                                            _hd2463024679_)))
                                                      (let ((_hd2463324687_
                                                             (##car _e2463224684_))
                                                            (_tl2463424689_
                                                             (##cdr _e2463224684_)))
                                                        (if (gx#stx-pair?
                                                             _hd2463324687_)
                                                            (let ((_e2463524692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2463324687_)))
                      (let ((_hd2463624695_ (##car _e2463524692_))
                            (_tl2463724697_ (##cdr _e2463524692_)))
                        (if (gx#stx-null? _tl2463724697_)
                            (if (gx#stx-pair? _tl2463424689_)
                                (let ((_e2463824700_
                                       (gx#stx-e _tl2463424689_)))
                                  (let ((_hd2463924703_ (##car _e2463824700_))
                                        (_tl2464024705_ (##cdr _e2463824700_)))
                                    (if (gx#stx-null? _tl2464024705_)
                                        (if (gx#stx-null? _tl2463124681_)
                                            (if (gx#stx-pair? _tl2462824673_)
                                                (let ((_e2464124708_
                                                       (gx#stx-e
                                                        _tl2462824673_)))
                                                  (let ((_hd2464224711_
                                                         (##car _e2464124708_))
                                                        (_tl2464324713_
                                                         (##cdr _e2464124708_)))
                                                    (if (gx#stx-null?
                                                         _tl2464324713_)
                                                        ((lambda (_L24716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24717_
                          _L24718_)
                   (if (gx#identifier? _L24718_)
                       (if (gxc#lambda-expr? _L24717_)
                           (gxc#case-lambda-expr? _L24716_)
                           '#f)
                       '#f))
                 _hd2464224711_
                 _hd2463924703_
                 _hd2463624695_)
                (_g2461724655_ _g2461924658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2461724655_ _g2461924658_))
                                            (_g2461724655_ _g2461924658_))
                                        (_g2461724655_ _g2461924658_))))
                                (_g2461724655_ _g2461924658_))
                            (_g2461724655_ _g2461924658_))))
                    (_g2461724655_ _g2461924658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2461724655_
                                                     _g2461924658_))))
                                            (_g2461724655_ _g2461924658_))))
                                    (_g2461724655_ _g2461924658_))
                                (_g2461724655_ _g2461924658_))
                            (_g2461724655_ _g2461924658_))))
                    (_g2461724655_ _g2461924658_)))))
        (_g2461624743_ _expr24615_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23940_)
      (let* ((_g2394324101_
              (lambda (_g2394424098_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2394424098_)))
             (_g2394224108_ (lambda (_g2394424104_) ((lambda () '#f))))
             (_g2394124612_
              (lambda (_g2394424111_)
                (if (gx#stx-pair? _g2394424111_)
                    (let ((_e2395624113_ (gx#stx-e _g2394424111_)))
                      (let ((_hd2395724116_ (##car _e2395624113_))
                            (_tl2395824118_ (##cdr _e2395624113_)))
                        (if (gx#identifier? _hd2395724116_)
                            (if (gx#stx-eq? '%#let-values _hd2395724116_)
                                (if (gx#stx-pair? _tl2395824118_)
                                    (let ((_e2395924121_
                                           (gx#stx-e _tl2395824118_)))
                                      (let ((_hd2396024124_
                                             (##car _e2395924121_))
                                            (_tl2396124126_
                                             (##cdr _e2395924121_)))
                                        (if (gx#stx-pair? _hd2396024124_)
                                            (let ((_e2396224129_
                                                   (gx#stx-e _hd2396024124_)))
                                              (let ((_hd2396324132_
                                                     (##car _e2396224129_))
                                                    (_tl2396424134_
                                                     (##cdr _e2396224129_)))
                                                (if (gx#stx-pair?
                                                     _hd2396324132_)
                                                    (let ((_e2396524137_
                                                           (gx#stx-e
                                                            _hd2396324132_)))
                                                      (let ((_hd2396624140_
                                                             (##car _e2396524137_))
                                                            (_tl2396724142_
                                                             (##cdr _e2396524137_)))
                                                        (if (gx#stx-pair?
                                                             _hd2396624140_)
                                                            (let ((_e2396824145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2396624140_)))
                      (let ((_hd2396924148_ (##car _e2396824145_))
                            (_tl2397024150_ (##cdr _e2396824145_)))
                        (if (gx#stx-null? _tl2397024150_)
                            (if (gx#stx-pair? _tl2396724142_)
                                (let ((_e2397124153_
                                       (gx#stx-e _tl2396724142_)))
                                  (let ((_hd2397224156_ (##car _e2397124153_))
                                        (_tl2397324158_ (##cdr _e2397124153_)))
                                    (if (gx#stx-pair? _hd2397224156_)
                                        (let ((_e2397424161_
                                               (gx#stx-e _hd2397224156_)))
                                          (let ((_hd2397524164_
                                                 (##car _e2397424161_))
                                                (_tl2397624166_
                                                 (##cdr _e2397424161_)))
                                            (if (gx#identifier? _hd2397524164_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2397524164_)
                                                    (if (gx#stx-pair?
                                                         _tl2397624166_)
                                                        (let ((_e2397724169_
                                                               (gx#stx-e
                                                                _tl2397624166_)))
                                                          (let ((_hd2397824172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2397724169_))
                        (_tl2397924174_ (##cdr _e2397724169_)))
                    (if (gx#stx-pair? _hd2397824172_)
                        (let ((_e2398024177_ (gx#stx-e _hd2397824172_)))
                          (let ((_hd2398124180_ (##car _e2398024177_))
                                (_tl2398224182_ (##cdr _e2398024177_)))
                            (if (gx#stx-pair? _hd2398124180_)
                                (let ((_e2398324185_
                                       (gx#stx-e _hd2398124180_)))
                                  (let ((_hd2398424188_ (##car _e2398324185_))
                                        (_tl2398524190_ (##cdr _e2398324185_)))
                                    (if (gx#stx-pair? _hd2398424188_)
                                        (let ((_e2398624193_
                                               (gx#stx-e _hd2398424188_)))
                                          (let ((_hd2398724196_
                                                 (##car _e2398624193_))
                                                (_tl2398824198_
                                                 (##cdr _e2398624193_)))
                                            (if (gx#stx-null? _tl2398824198_)
                                                (if (gx#stx-pair?
                                                     _tl2398524190_)
                                                    (let ((_e2398924201_
                                                           (gx#stx-e
                                                            _tl2398524190_)))
                                                      (let ((_hd2399024204_
                                                             (##car _e2398924201_))
                                                            (_tl2399124206_
                                                             (##cdr _e2398924201_)))
                                                        (if (gx#stx-null?
                                                             _tl2399124206_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2398224182_)
                        (if (gx#stx-pair? _tl2397924174_)
                            (let ((_e2399224209_ (gx#stx-e _tl2397924174_)))
                              (let ((_hd2399324212_ (##car _e2399224209_))
                                    (_tl2399424214_ (##cdr _e2399224209_)))
                                (if (gx#stx-pair? _hd2399324212_)
                                    (let ((_e2399524217_
                                           (gx#stx-e _hd2399324212_)))
                                      (let ((_hd2399624220_
                                             (##car _e2399524217_))
                                            (_tl2399724222_
                                             (##cdr _e2399524217_)))
                                        (if (gx#identifier? _hd2399624220_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2399624220_)
                                                (if (gx#stx-pair?
                                                     _tl2399724222_)
                                                    (let ((_e2399824225_
                                                           (gx#stx-e
                                                            _tl2399724222_)))
                                                      (let ((_hd2399924228_
                                                             (##car _e2399824225_))
                                                            (_tl2400024230_
                                                             (##cdr _e2399824225_)))
                                                        (if (gx#stx-pair?
                                                             _hd2399924228_)
                                                            (let ((_e2400124233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2399924228_)))
                      (let ((_hd2400224236_ (##car _e2400124233_))
                            (_tl2400324238_ (##cdr _e2400124233_)))
                        (if (gx#stx-pair? _tl2400024230_)
                            (let ((_e2400424241_ (gx#stx-e _tl2400024230_)))
                              (let ((_hd2400524244_ (##car _e2400424241_))
                                    (_tl2400624246_ (##cdr _e2400424241_)))
                                (if (gx#stx-pair? _hd2400524244_)
                                    (let ((_e2400724249_
                                           (gx#stx-e _hd2400524244_)))
                                      (let ((_hd2400824252_
                                             (##car _e2400724249_))
                                            (_tl2400924254_
                                             (##cdr _e2400724249_)))
                                        (if (gx#identifier? _hd2400824252_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2400824252_)
                                                (if (gx#stx-pair?
                                                     _tl2400924254_)
                                                    (let ((_e2401024257_
                                                           (gx#stx-e
                                                            _tl2400924254_)))
                                                      (let ((_hd2401124260_
                                                             (##car _e2401024257_))
                                                            (_tl2401224262_
                                                             (##cdr _e2401024257_)))
                                                        (if (gx#stx-pair?
                                                             _hd2401124260_)
                                                            (let ((_e2401324265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2401124260_)))
                      (let ((_hd2401424268_ (##car _e2401324265_))
                            (_tl2401524270_ (##cdr _e2401324265_)))
                        (if (gx#identifier? _hd2401424268_)
                            (if (gx#stx-eq? '%#ref _hd2401424268_)
                                (if (gx#stx-pair? _tl2401524270_)
                                    (let ((_e2401624273_
                                           (gx#stx-e _tl2401524270_)))
                                      (let ((_hd2401724276_
                                             (##car _e2401624273_))
                                            (_tl2401824278_
                                             (##cdr _e2401624273_)))
                                        (if (gx#stx-null? _tl2401824278_)
                                            (if (gx#stx-pair? _tl2401224262_)
                                                (let ((_e2401924281_
                                                       (gx#stx-e
                                                        _tl2401224262_)))
                                                  (let ((_hd2402024284_
                                                         (##car _e2401924281_))
                                                        (_tl2402124286_
                                                         (##cdr _e2401924281_)))
                                                    (if (gx#stx-pair?
                                                         _hd2402024284_)
                                                        (let ((_e2402224289_
                                                               (gx#stx-e
                                                                _hd2402024284_)))
                                                          (let ((_hd2402324292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2402224289_))
                        (_tl2402424294_ (##cdr _e2402224289_)))
                    (if (gx#identifier? _hd2402324292_)
                        (if (gx#stx-eq? '%#ref _hd2402324292_)
                            (if (gx#stx-pair? _tl2402424294_)
                                (let ((_e2402524297_
                                       (gx#stx-e _tl2402424294_)))
                                  (let ((_hd2402624300_ (##car _e2402524297_))
                                        (_tl2402724302_ (##cdr _e2402524297_)))
                                    (if (gx#stx-null? _tl2402724302_)
                                        (if (gx#stx-pair? _tl2402124286_)
                                            (let ((_e2402824305_
                                                   (gx#stx-e _tl2402124286_)))
                                              (let ((_hd2402924308_
                                                     (##car _e2402824305_))
                                                    (_tl2403024310_
                                                     (##cdr _e2402824305_)))
                                                (if (gx#stx-pair?
                                                     _hd2402924308_)
                                                    (let ((_e2403124313_
                                                           (gx#stx-e
                                                            _hd2402924308_)))
                                                      (let ((_hd2403224316_
                                                             (##car _e2403124313_))
                                                            (_tl2403324318_
                                                             (##cdr _e2403124313_)))
                                                        (if (gx#identifier?
                                                             _hd2403224316_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2403224316_)
                        (if (gx#stx-pair? _tl2403324318_)
                            (let ((_e2403424321_ (gx#stx-e _tl2403324318_)))
                              (let ((_hd2403524324_ (##car _e2403424321_))
                                    (_tl2403624326_ (##cdr _e2403424321_)))
                                (if (gx#stx-null? _tl2403624326_)
                                    (if (gx#stx-null? _tl2400624246_)
                                        (if (gx#stx-null? _tl2399424214_)
                                            (if (gx#stx-null? _tl2397324158_)
                                                (if (gx#stx-null?
                                                     _tl2396424134_)
                                                    (if (gx#stx-pair?
                                                         _tl2396124126_)
                                                        (let ((_e2403724329_
                                                               (gx#stx-e
                                                                _tl2396124126_)))
                                                          (let ((_hd2403824332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2403724329_))
                        (_tl2403924334_ (##cdr _e2403724329_)))
                    (if (gx#stx-pair? _hd2403824332_)
                        (let ((_e2404024337_ (gx#stx-e _hd2403824332_)))
                          (let ((_hd2404124340_ (##car _e2404024337_))
                                (_tl2404224342_ (##cdr _e2404024337_)))
                            (if (gx#identifier? _hd2404124340_)
                                (if (gx#stx-eq? '%#lambda _hd2404124340_)
                                    (if (gx#stx-pair? _tl2404224342_)
                                        (let ((_e2404324345_
                                               (gx#stx-e _tl2404224342_)))
                                          (let ((_hd2404424348_
                                                 (##car _e2404324345_))
                                                (_tl2404524350_
                                                 (##cdr _e2404324345_)))
                                            (if (gx#stx-pair? _tl2404524350_)
                                                (let ((_e2404624353_
                                                       (gx#stx-e
                                                        _tl2404524350_)))
                                                  (let ((_hd2404724356_
                                                         (##car _e2404624353_))
                                                        (_tl2404824358_
                                                         (##cdr _e2404624353_)))
                                                    (if (gx#stx-pair?
                                                         _hd2404724356_)
                                                        (let ((_e2404924361_
                                                               (gx#stx-e
                                                                _hd2404724356_)))
                                                          (let ((_hd2405024364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2404924361_))
                        (_tl2405124366_ (##cdr _e2404924361_)))
                    (if (gx#identifier? _hd2405024364_)
                        (if (gx#stx-eq? '%#call _hd2405024364_)
                            (if (gx#stx-pair? _tl2405124366_)
                                (let ((_e2405224369_
                                       (gx#stx-e _tl2405124366_)))
                                  (let ((_hd2405324372_ (##car _e2405224369_))
                                        (_tl2405424374_ (##cdr _e2405224369_)))
                                    (if (gx#stx-pair? _hd2405324372_)
                                        (let ((_e2405524377_
                                               (gx#stx-e _hd2405324372_)))
                                          (let ((_hd2405624380_
                                                 (##car _e2405524377_))
                                                (_tl2405724382_
                                                 (##cdr _e2405524377_)))
                                            (if (gx#identifier? _hd2405624380_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2405624380_)
                                                    (if (gx#stx-pair?
                                                         _tl2405724382_)
                                                        (let ((_e2405824385_
                                                               (gx#stx-e
                                                                _tl2405724382_)))
                                                          (let ((_hd2405924388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2405824385_))
                        (_tl2406024390_ (##cdr _e2405824385_)))
                    (if (gx#stx-null? _tl2406024390_)
                        (if (gx#stx-pair? _tl2405424374_)
                            (let ((_e2406124393_ (gx#stx-e _tl2405424374_)))
                              (let ((_hd2406224396_ (##car _e2406124393_))
                                    (_tl2406324398_ (##cdr _e2406124393_)))
                                (if (gx#stx-pair? _hd2406224396_)
                                    (let ((_e2406424401_
                                           (gx#stx-e _hd2406224396_)))
                                      (let ((_hd2406524404_
                                             (##car _e2406424401_))
                                            (_tl2406624406_
                                             (##cdr _e2406424401_)))
                                        (if (gx#identifier? _hd2406524404_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2406524404_)
                                                (if (gx#stx-pair?
                                                     _tl2406624406_)
                                                    (let ((_e2406724409_
                                                           (gx#stx-e
                                                            _tl2406624406_)))
                                                      (let ((_hd2406824412_
                                                             (##car _e2406724409_))
                                                            (_tl2406924414_
                                                             (##cdr _e2406724409_)))
                                                        (if (gx#stx-null?
                                                             _tl2406924414_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2406324398_)
                        (let ((_e2407024417_ (gx#stx-e _tl2406324398_)))
                          (let ((_hd2407124420_ (##car _e2407024417_))
                                (_tl2407224422_ (##cdr _e2407024417_)))
                            (if (gx#stx-pair? _hd2407124420_)
                                (let ((_e2407324425_
                                       (gx#stx-e _hd2407124420_)))
                                  (let ((_hd2407424428_ (##car _e2407324425_))
                                        (_tl2407524430_ (##cdr _e2407324425_)))
                                    (if (gx#identifier? _hd2407424428_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2407424428_)
                                            (if (gx#stx-pair? _tl2407524430_)
                                                (let ((_e2407624433_
                                                       (gx#stx-e
                                                        _tl2407524430_)))
                                                  (let ((_hd2407724436_
                                                         (##car _e2407624433_))
                                                        (_tl2407824438_
                                                         (##cdr _e2407624433_)))
                                                    (if (gx#stx-null?
                                                         _tl2407824438_)
                                                        (if (gx#stx-pair?
                                                             _tl2407224422_)
                                                            (let ((_e2407924441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2407224422_)))
                      (let ((_hd2408024444_ (##car _e2407924441_))
                            (_tl2408124446_ (##cdr _e2407924441_)))
                        (if (gx#stx-pair? _hd2408024444_)
                            (let ((_e2408224449_ (gx#stx-e _hd2408024444_)))
                              (let ((_hd2408324452_ (##car _e2408224449_))
                                    (_tl2408424454_ (##cdr _e2408224449_)))
                                (if (gx#identifier? _hd2408324452_)
                                    (if (gx#stx-eq? '%#ref _hd2408324452_)
                                        (if (gx#stx-pair? _tl2408424454_)
                                            (let ((_e2408524457_
                                                   (gx#stx-e _tl2408424454_)))
                                              (let ((_hd2408624460_
                                                     (##car _e2408524457_))
                                                    (_tl2408724462_
                                                     (##cdr _e2408524457_)))
                                                (if (gx#stx-null?
                                                     _tl2408724462_)
                                                    (if (gx#stx-pair?
                                                         _tl2408124446_)
                                                        (let ((_e2408824465_
                                                               (gx#stx-e
                                                                _tl2408124446_)))
                                                          (let ((_hd2408924468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2408824465_))
                        (_tl2409024470_ (##cdr _e2408824465_)))
                    (if (gx#stx-pair? _hd2408924468_)
                        (let ((_e2409124473_ (gx#stx-e _hd2408924468_)))
                          (let ((_hd2409224476_ (##car _e2409124473_))
                                (_tl2409324478_ (##cdr _e2409124473_)))
                            (if (gx#identifier? _hd2409224476_)
                                (if (gx#stx-eq? '%#ref _hd2409224476_)
                                    (if (gx#stx-pair? _tl2409324478_)
                                        (let ((_e2409424481_
                                               (gx#stx-e _tl2409324478_)))
                                          (let ((_hd2409524484_
                                                 (##car _e2409424481_))
                                                (_tl2409624486_
                                                 (##cdr _e2409424481_)))
                                            (if (gx#stx-null? _tl2409624486_)
                                                (if (gx#stx-null?
                                                     _tl2409024470_)
                                                    (if (gx#stx-null?
                                                         _tl2404824358_)
                                                        (if (gx#stx-null?
                                                             _tl2403924334_)
                                                            ((lambda (_L24489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24490_
                              _L24491_
                              _L24492_
                              _L24493_
                              _L24494_
                              _L24495_
                              _L24496_
                              _L24497_
                              _L24498_
                              _L24499_)
                       (if (eq? (gxc#identifier-symbol _L24496_) 'apply)
                           (if (eq? (gxc#identifier-symbol _L24492_) 'apply)
                               (if (eq? (gxc#identifier-symbol _L24491_)
                                        'keyword-dispatch)
                                   (if (gx#free-identifier=? _L24499_ _L24490_)
                                       (if (gx#free-identifier=?
                                            _L24498_
                                            _L24495_)
                                           (if (gx#free-identifier=?
                                                _L24493_
                                                _L24489_)
                                               (gx#free-identifier=?
                                                _L24497_
                                                _L24494_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2409524484_
                     _hd2408624460_
                     _hd2406824412_
                     _hd2405924388_
                     _hd2404424348_
                     _hd2403524324_
                     _hd2402624300_
                     _hd2401724276_
                     _hd2400224236_
                     _hd2398724196_
                     _hd2396924148_)
                    (_g2394224108_ _g2394424111_))
                (_g2394224108_ _g2394424111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_
                                                 _g2394424111_))))
                                        (_g2394224108_ _g2394424111_))
                                    (_g2394224108_ _g2394424111_))
                                (_g2394224108_ _g2394424111_))))
                        (_g2394224108_ _g2394424111_))))
                (_g2394224108_ _g2394424111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))))
                                            (_g2394224108_ _g2394424111_))
                                        (_g2394224108_ _g2394424111_))
                                    (_g2394224108_ _g2394424111_))))
                            (_g2394224108_ _g2394424111_))))
                    (_g2394224108_ _g2394424111_))
                (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2394224108_ _g2394424111_))
                                            (_g2394224108_ _g2394424111_))
                                        (_g2394224108_ _g2394424111_))))
                                (_g2394224108_ _g2394424111_))))
                        (_g2394224108_ _g2394424111_))
                    (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_ _g2394424111_))
                                            (_g2394224108_ _g2394424111_))))
                                    (_g2394224108_ _g2394424111_))))
                            (_g2394224108_ _g2394424111_))
                        (_g2394224108_ _g2394424111_))))
                (_g2394224108_ _g2394424111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_
                                                 _g2394424111_))))
                                        (_g2394224108_ _g2394424111_))))
                                (_g2394224108_ _g2394424111_))
                            (_g2394224108_ _g2394424111_))
                        (_g2394224108_ _g2394424111_))))
                (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2394224108_
                                                 _g2394424111_))))
                                        (_g2394224108_ _g2394424111_))
                                    (_g2394224108_ _g2394424111_))
                                (_g2394224108_ _g2394424111_))))
                        (_g2394224108_ _g2394424111_))))
                (_g2394224108_ _g2394424111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_ _g2394424111_))
                                            (_g2394224108_ _g2394424111_))
                                        (_g2394224108_ _g2394424111_))
                                    (_g2394224108_ _g2394424111_))))
                            (_g2394224108_ _g2394424111_))
                        (_g2394224108_ _g2394424111_))
                    (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))))
                                            (_g2394224108_ _g2394424111_))
                                        (_g2394224108_ _g2394424111_))))
                                (_g2394224108_ _g2394424111_))
                            (_g2394224108_ _g2394424111_))
                        (_g2394224108_ _g2394424111_))))
                (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2394224108_ _g2394424111_))
                                            (_g2394224108_ _g2394424111_))))
                                    (_g2394224108_ _g2394424111_))
                                (_g2394224108_ _g2394424111_))
                            (_g2394224108_ _g2394424111_))))
                    (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_ _g2394424111_))
                                            (_g2394224108_ _g2394424111_))))
                                    (_g2394224108_ _g2394424111_))))
                            (_g2394224108_ _g2394424111_))))
                    (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_ _g2394424111_))
                                            (_g2394224108_ _g2394424111_))))
                                    (_g2394224108_ _g2394424111_))))
                            (_g2394224108_ _g2394424111_))
                        (_g2394224108_ _g2394424111_))
                    (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_
                                                 _g2394424111_))))
                                        (_g2394224108_ _g2394424111_))))
                                (_g2394224108_ _g2394424111_))))
                        (_g2394224108_ _g2394424111_))))
                (_g2394224108_ _g2394424111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))
                                                (_g2394224108_
                                                 _g2394424111_))))
                                        (_g2394224108_ _g2394424111_))))
                                (_g2394224108_ _g2394424111_))
                            (_g2394224108_ _g2394424111_))))
                    (_g2394224108_ _g2394424111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2394224108_
                                                     _g2394424111_))))
                                            (_g2394224108_ _g2394424111_))))
                                    (_g2394224108_ _g2394424111_))
                                (_g2394224108_ _g2394424111_))
                            (_g2394224108_ _g2394424111_))))
                    (_g2394224108_ _g2394424111_)))))
        (_g2394124612_ _expr23940_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23682_ _id23683_ _clauses23684_ _gensym?23685_)
        (let _lp23687_ ((_rest23689_ _clauses23684_)
                        (_ids23690_ '())
                        (_impls23691_ '())
                        (_clauses23692_ '()))
          (let* ((_rest2369323701_ _rest23689_)
                 (_E2369623705_
                  (lambda () (error '"No clause matching" _rest2369323701_)))
                 (_else2369523709_
                  (lambda ()
                    (values (reverse _ids23690_)
                            (reverse _impls23691_)
                            (reverse _clauses23692_))))
                 (_K2369723914_
                  (lambda (_rest23712_ _clause23713_)
                    (if (gxc#dispatch-lambda-form? _clause23713_)
                        (_lp23687_
                         _rest23712_
                         _ids23690_
                         _impls23691_
                         (cons _clause23713_ _clauses23692_))
                        (let* ((_g2371523726_
                                (lambda (_g2371623723_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2371623723_)))
                               (_g2371423911_
                                (lambda (_g2371623729_)
                                  (if (gx#stx-pair? _g2371623729_)
                                      (let ((_e2371923731_
                                             (gx#stx-e _g2371623729_)))
                                        (let ((_hd2372023734_
                                               (##car _e2371923731_))
                                              (_tl2372123736_
                                               (##cdr _e2371923731_)))
                                          ((lambda (_L23739_ _L23740_)
                                             (let* ((_id23757_
                                                     (make-symbol
                                                      (gx#stx-e _id23683_)
                                                      '"__"
                                                      (length _clauses23692_)
                                                      (if _gensym?23685_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23759_
                                                     (gx#core-quote-syntax__1
                                                      _id23757_
                                                      (gx#stx-source
                                                       _stx23682_)))
                                                    (_impl23761_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23739_))
              _stx23682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23908_
                                                     (let* ((_g2376523793_
                                                             (lambda (_g2376623790_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2376623790_)))
                                                            (_g2376423809_
                                                             (lambda (_g2376623796_)
                                                               ((lambda (_L23798_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23740_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23798_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23682_)
                                      '())))
                        _g2376623796_)))
                    (_g2376323858_
                     (lambda (_g2376623812_)
                       (if (gx#stx-pair/null? _g2376623812_)
                           (if (fx>= (gx#stx-length _g2376623812_) '0)
                               (let ((_g27896_
                                      (gx#syntax-split-splice
                                       _g2376623812_
                                       '0)))
                                 (begin
                                   (let ((_g27897_
                                          (if (##values? _g27896_)
                                              (##vector-length _g27896_)
                                              1)))
                                     (if (not (##fx= _g27897_ 2))
                                         (error "Context expects 2 values"
                                                _g27897_)))
                                   (let ((_target2377923814_
                                          (##vector-ref _g27896_ 0))
                                         (_tl2378123816_
                                          (##vector-ref _g27896_ 1)))
                                     (letrec ((_loop2378223819_
                                               (lambda (_hd2378023822_
                                                        _arg2378623824_)
                                                 (if (gx#stx-pair?
                                                      _hd2378023822_)
                                                     (let ((_e2378323827_
                                                            (gx#stx-e
                                                             _hd2378023822_)))
                                                       (let ((_lp-hd2378423830_
                                                              (##car _e2378323827_))
                                                             (_lp-tl2378523832_
                                                              (##cdr _e2378323827_)))
                                                         (_loop2378223819_
                                                          _lp-tl2378523832_
                                                          (cons _lp-hd2378423830_
                                                                _arg2378623824_))))
                                                     (let ((_arg2378723835_
                                                            (reverse _arg2378623824_)))
                                                       ((lambda (_L23838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23839_)
                  (cons _L23740_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23759_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23838_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2385023853_ _g2385123855_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2385023853_ '()))
                                   _g2385123855_))
                           '()
                           _L23839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23682_)
                              '())))
                _tl2378123816_
                _arg2378723835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2378223819_
                                        _target2377923814_
                                        '())))))
                               (_g2376423809_ _g2376623812_))
                           (_g2376423809_ _g2376623812_))))
                    (_g2376223905_
                     (lambda (_g2376623861_)
                       (if (gx#stx-pair/null? _g2376623861_)
                           (if (fx>= (gx#stx-length _g2376623861_) '0)
                               (let ((_g27898_
                                      (gx#syntax-split-splice
                                       _g2376623861_
                                       '0)))
                                 (begin
                                   (let ((_g27899_
                                          (if (##values? _g27898_)
                                              (##vector-length _g27898_)
                                              1)))
                                     (if (not (##fx= _g27899_ 2))
                                         (error "Context expects 2 values"
                                                _g27899_)))
                                   (let ((_target2376823863_
                                          (##vector-ref _g27898_ 0))
                                         (_tl2377023865_
                                          (##vector-ref _g27898_ 1)))
                                     (if (gx#stx-null? _tl2377023865_)
                                         (letrec ((_loop2377123868_
                                                   (lambda (_hd2376923871_
                                                            _arg2377523873_)
                                                     (if (gx#stx-pair?
                                                          _hd2376923871_)
                                                         (let ((_e2377223876_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2376923871_)))
                   (let ((_lp-hd2377323879_ (##car _e2377223876_))
                         (_lp-tl2377423881_ (##cdr _e2377223876_)))
                     (_loop2377123868_
                      _lp-tl2377423881_
                      (cons _lp-hd2377323879_ _arg2377523873_))))
                 (let ((_arg2377623884_ (reverse _arg2377523873_)))
                   ((lambda (_L23887_)
                      (cons _L23740_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23759_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2389723900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2389823902_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2389723900_ '()))
                         _g2389823902_))
                 '()
                 _L23887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23682_)
                                  '())))
                    _arg2377623884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2377123868_
                                            _target2376823863_
                                            '()))
                                         (_g2376323858_ _g2376623861_)))))
                               (_g2376323858_ _g2376623861_))
                           (_g2376323858_ _g2376623861_)))))
               (_g2376223905_ _L23740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23687_
                                                _rest23712_
                                                (cons _id23759_ _ids23690_)
                                                (cons _impl23761_ _impls23691_)
                                                (cons _clause23908_
                                                      _clauses23692_))))
                                           _tl2372123736_
                                           _hd2372023734_)))
                                      (_g2371523726_ _g2371623729_)))))
                          (_g2371423911_ _clause23713_))))))
            (if (##pair? _rest2369323701_)
                (let ((_hd2369823917_ (##car _rest2369323701_))
                      (_tl2369923919_ (##cdr _rest2369323701_)))
                  (let* ((_clause23922_ _hd2369823917_)
                         (_rest23924_ _tl2369923919_))
                    (_K2369723914_ _rest23924_ _clause23922_)))
                (_else2369523709_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23929_ _id23930_ _clauses23931_)
          (let ((_gensym?23933_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23929_
             _id23930_
             _clauses23931_
             _gensym?23933_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27901_
          (let ((_g27900_ (length _g27901_)))
            (cond ((##fx= _g27900_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27901_))
                  ((##fx= _g27900_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27901_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27901_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22959_)
      (letrec ((_case-lambda-clause-def22961_
                (lambda (_id23678_ _impl23679_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23678_ '())
                               (cons (gxc#compile-e _impl23679_) '())))
                   _stx22959_)))
               (_opt-lambda-dispatch-name22962_
                (lambda (_id23674_)
                  (if (uninterned-symbol? _id23674_)
                      (let ((_str23676_ (symbol->string _id23674_)))
                        (if (string-prefix? _str23676_ '"opt-lambda")
                            '"%"
                            _id23674_))
                      _id23674_)))
               (_kw-lambda-dispatch-name22963_
                (lambda (_id23669_ _name23670_)
                  (if (uninterned-symbol? _id23669_)
                      (let ((_str23672_ (symbol->string _id23669_)))
                        (if (string-prefix? _str23672_ '"kw-lambda")
                            _name23670_
                            _id23669_))
                      _id23669_))))
        (let* ((_g2296823027_
                (lambda (_g2296923024_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2296923024_)))
               (_g2296723073_
                (lambda (_g2296923030_)
                  (if (gx#stx-pair? _g2296923030_)
                      (let ((_e2301423032_ (gx#stx-e _g2296923030_)))
                        (let ((_hd2301523035_ (##car _e2301423032_))
                              (_tl2301623037_ (##cdr _e2301423032_)))
                          (if (gx#stx-pair? _tl2301623037_)
                              (let ((_e2301723040_ (gx#stx-e _tl2301623037_)))
                                (let ((_hd2301823043_ (##car _e2301723040_))
                                      (_tl2301923045_ (##cdr _e2301723040_)))
                                  (if (gx#stx-pair? _tl2301923045_)
                                      (let ((_e2302023048_
                                             (gx#stx-e _tl2301923045_)))
                                        (let ((_hd2302123051_
                                               (##car _e2302023048_))
                                              (_tl2302223053_
                                               (##cdr _e2302023048_)))
                                          (if (gx#stx-null? _tl2302223053_)
                                              ((lambda (_L23056_ _L23057_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L23057_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23056_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22959_))
                                               _hd2302123051_
                                               _hd2301823043_)
                                              (_g2296823027_ _g2296923030_))))
                                      (_g2296823027_ _g2296923030_))))
                              (_g2296823027_ _g2296923030_))))
                      (_g2296823027_ _g2296923030_))))
               (_g2296623359_
                (lambda (_g2296923076_)
                  (if (gx#stx-pair? _g2296923076_)
                      (let ((_e2300023078_ (gx#stx-e _g2296923076_)))
                        (let ((_hd2300123081_ (##car _e2300023078_))
                              (_tl2300223083_ (##cdr _e2300023078_)))
                          (if (gx#stx-pair? _tl2300223083_)
                              (let ((_e2300323086_ (gx#stx-e _tl2300223083_)))
                                (let ((_hd2300423089_ (##car _e2300323086_))
                                      (_tl2300523091_ (##cdr _e2300323086_)))
                                  (if (gx#stx-pair? _hd2300423089_)
                                      (let ((_e2300623094_
                                             (gx#stx-e _hd2300423089_)))
                                        (let ((_hd2300723097_
                                               (##car _e2300623094_))
                                              (_tl2300823099_
                                               (##cdr _e2300623094_)))
                                          (if (gx#stx-null? _tl2300823099_)
                                              (if (gx#stx-pair? _tl2300523091_)
                                                  (let ((_e2300923102_
                                                         (gx#stx-e
                                                          _tl2300523091_)))
                                                    (let ((_hd2301023105_
                                                           (##car _e2300923102_))
                                                          (_tl2301123107_
                                                           (##cdr _e2300923102_)))
                                                      (if (gx#stx-null?
                                                           _tl2301123107_)
                                                          ((lambda (_L23110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23111_)
                     (if (if (gx#identifier? _L23111_)
                             (gxc#kw-lambda-expr? _L23110_)
                             '#f)
                         (let* ((_g2312723180_
                                 (lambda (_g2312823177_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2312823177_)))
                                (_g2312623356_
                                 (lambda (_g2312823183_)
                                   (if (gx#stx-pair? _g2312823183_)
                                       (let ((_e2313423185_
                                              (gx#stx-e _g2312823183_)))
                                         (let ((_hd2313523188_
                                                (##car _e2313423185_))
                                               (_tl2313623190_
                                                (##cdr _e2313423185_)))
                                           (if (gx#stx-pair? _tl2313623190_)
                                               (let ((_e2313723193_
                                                      (gx#stx-e
                                                       _tl2313623190_)))
                                                 (let ((_hd2313823196_
                                                        (##car _e2313723193_))
                                                       (_tl2313923198_
                                                        (##cdr _e2313723193_)))
                                                   (if (gx#stx-pair?
                                                        _hd2313823196_)
                                                       (let ((_e2314023201_
                                                              (gx#stx-e
                                                               _hd2313823196_)))
                                                         (let ((_hd2314123204_
                                                                (##car _e2314023201_))
                                                               (_tl2314223206_
                                                                (##cdr _e2314023201_)))
                                                           (if (gx#stx-pair?
                                                                _hd2314123204_)
                                                               (let ((_e2314323209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2314123204_)))
                         (let ((_hd2314423212_ (##car _e2314323209_))
                               (_tl2314523214_ (##cdr _e2314323209_)))
                           (if (gx#stx-pair? _hd2314423212_)
                               (let ((_e2314623217_ (gx#stx-e _hd2314423212_)))
                                 (let ((_hd2314723220_ (##car _e2314623217_))
                                       (_tl2314823222_ (##cdr _e2314623217_)))
                                   (if (gx#stx-null? _tl2314823222_)
                                       (if (gx#stx-pair? _tl2314523214_)
                                           (let ((_e2314923225_
                                                  (gx#stx-e _tl2314523214_)))
                                             (let ((_hd2315023228_
                                                    (##car _e2314923225_))
                                                   (_tl2315123230_
                                                    (##cdr _e2314923225_)))
                                               (if (gx#stx-pair?
                                                    _hd2315023228_)
                                                   (let ((_e2315223233_
                                                          (gx#stx-e
                                                           _hd2315023228_)))
                                                     (let ((_hd2315323236_
                                                            (##car _e2315223233_))
                                                           (_tl2315423238_
                                                            (##cdr _e2315223233_)))
                                                       (if (gx#stx-pair?
                                                            _tl2315423238_)
                                                           (let ((_e2315523241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2315423238_)))
                     (let ((_hd2315623244_ (##car _e2315523241_))
                           (_tl2315723246_ (##cdr _e2315523241_)))
                       (if (gx#stx-pair? _hd2315623244_)
                           (let ((_e2315823249_ (gx#stx-e _hd2315623244_)))
                             (let ((_hd2315923252_ (##car _e2315823249_))
                                   (_tl2316023254_ (##cdr _e2315823249_)))
                               (if (gx#stx-pair? _hd2315923252_)
                                   (let ((_e2316123257_
                                          (gx#stx-e _hd2315923252_)))
                                     (let ((_hd2316223260_
                                            (##car _e2316123257_))
                                           (_tl2316323262_
                                            (##cdr _e2316123257_)))
                                       (if (gx#stx-pair? _hd2316223260_)
                                           (let ((_e2316423265_
                                                  (gx#stx-e _hd2316223260_)))
                                             (let ((_hd2316523268_
                                                    (##car _e2316423265_))
                                                   (_tl2316623270_
                                                    (##cdr _e2316423265_)))
                                               (if (gx#stx-null?
                                                    _tl2316623270_)
                                                   (if (gx#stx-pair?
                                                        _tl2316323262_)
                                                       (let ((_e2316723273_
                                                              (gx#stx-e
                                                               _tl2316323262_)))
                                                         (let ((_hd2316823276_
                                                                (##car _e2316723273_))
                                                               (_tl2316923278_
                                                                (##cdr _e2316723273_)))
                                                           (if (gx#stx-null?
                                                                _tl2316923278_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2316023254_)
                           (if (gx#stx-pair? _tl2315723246_)
                               (let ((_e2317023281_ (gx#stx-e _tl2315723246_)))
                                 (let ((_hd2317123284_ (##car _e2317023281_))
                                       (_tl2317223286_ (##cdr _e2317023281_)))
                                   (if (gx#stx-null? _tl2317223286_)
                                       (if (gx#stx-null? _tl2315123230_)
                                           (if (gx#stx-null? _tl2314223206_)
                                               (if (gx#stx-pair?
                                                    _tl2313923198_)
                                                   (let ((_e2317323289_
                                                          (gx#stx-e
                                                           _tl2313923198_)))
                                                     (let ((_hd2317423292_
                                                            (##car _e2317323289_))
                                                           (_tl2317523294_
                                                            (##cdr _e2317323289_)))
                                                       (if (gx#stx-null?
                                                            _tl2317523294_)
                                                           ((lambda (_L23297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23298_
                             _L23299_
                             _L23300_
                             _L23301_)
                      (let* ((_get-kws-id23341_
                              (make-symbol
                               (gx#stx-e _L23111_)
                               '"__"
                               (_kw-lambda-dispatch-name22963_
                                (gx#stx-e _L23301_)
                                '"@")))
                             (_get-kws-id23343_
                              (gx#core-quote-syntax__1
                               _get-kws-id23341_
                               (gx#stx-source _stx22959_)))
                             (_main-id23345_
                              (make-symbol
                               (gx#stx-e _L23111_)
                               '"__"
                               (_kw-lambda-dispatch-name22963_
                                (gx#stx-e _L23300_)
                                '"%")))
                             (_main-id23347_
                              (gx#core-quote-syntax__1
                               _main-id23345_
                               (gx#stx-source _stx22959_)))
                             (_g27902_
                              (gx#core-bind-runtime!__0 _get-kws-id23343_))
                             (_g27903_
                              (gx#core-bind-runtime!__0 _main-id23347_))
                             (_new-kw-dispatch23351_
                              (gxc#apply-expression-subst
                               _L23297_
                               _L23301_
                               _get-kws-id23343_))
                             (_new-get-kws23353_
                              (gxc#apply-expression-subst
                               _L23298_
                               _L23300_
                               _main-id23347_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#identifier-symbol _L23111_)
                           '" => "
                           (gxc#identifier-symbol _get-kws-id23343_)
                           '" => "
                           (gxc#identifier-symbol _main-id23347_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id23347_ '())
                                                     (cons _L23299_ '())))
                                         _stx22959_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id23343_
                                                                '())
                                                          (cons _new-get-kws23353_
                                                                '())))
                                              _stx22959_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L23111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch23351_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22959_)
                                                   '()))))
                           _stx22959_))))
                    _hd2317423292_
                    _hd2317123284_
                    _hd2316823276_
                    _hd2316523268_
                    _hd2314723220_)
                   (_g2312723180_ _g2312823183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2312723180_
                                                    _g2312823183_))
                                               (_g2312723180_ _g2312823183_))
                                           (_g2312723180_ _g2312823183_))
                                       (_g2312723180_ _g2312823183_))))
                               (_g2312723180_ _g2312823183_))
                           (_g2312723180_ _g2312823183_))
                       (_g2312723180_ _g2312823183_))))
               (_g2312723180_ _g2312823183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2312723180_
                                                    _g2312823183_))))
                                           (_g2312723180_ _g2312823183_))))
                                   (_g2312723180_ _g2312823183_))))
                           (_g2312723180_ _g2312823183_))))
                   (_g2312723180_ _g2312823183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2312723180_
                                                    _g2312823183_))))
                                           (_g2312723180_ _g2312823183_))
                                       (_g2312723180_ _g2312823183_))))
                               (_g2312723180_ _g2312823183_))))
                       (_g2312723180_ _g2312823183_))))
               (_g2312723180_ _g2312823183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2312723180_ _g2312823183_))))
                                       (_g2312723180_ _g2312823183_)))))
                           (_g2312623356_ _L23110_))
                         (_g2296723073_ _g2296923076_)))
                   _hd2301023105_
                   _hd2300723097_)
                  (_g2296723073_ _g2296923076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296723073_
                                                   _g2296923076_))
                                              (_g2296723073_ _g2296923076_))))
                                      (_g2296723073_ _g2296923076_))))
                              (_g2296723073_ _g2296923076_))))
                      (_g2296723073_ _g2296923076_))))
               (_g2296523541_
                (lambda (_g2296923362_)
                  (if (gx#stx-pair? _g2296923362_)
                      (let ((_e2298623364_ (gx#stx-e _g2296923362_)))
                        (let ((_hd2298723367_ (##car _e2298623364_))
                              (_tl2298823369_ (##cdr _e2298623364_)))
                          (if (gx#stx-pair? _tl2298823369_)
                              (let ((_e2298923372_ (gx#stx-e _tl2298823369_)))
                                (let ((_hd2299023375_ (##car _e2298923372_))
                                      (_tl2299123377_ (##cdr _e2298923372_)))
                                  (if (gx#stx-pair? _hd2299023375_)
                                      (let ((_e2299223380_
                                             (gx#stx-e _hd2299023375_)))
                                        (let ((_hd2299323383_
                                               (##car _e2299223380_))
                                              (_tl2299423385_
                                               (##cdr _e2299223380_)))
                                          (if (gx#stx-null? _tl2299423385_)
                                              (if (gx#stx-pair? _tl2299123377_)
                                                  (let ((_e2299523388_
                                                         (gx#stx-e
                                                          _tl2299123377_)))
                                                    (let ((_hd2299623391_
                                                           (##car _e2299523388_))
                                                          (_tl2299723393_
                                                           (##cdr _e2299523388_)))
                                                      (if (gx#stx-null?
                                                           _tl2299723393_)
                                                          ((lambda (_L23396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23397_)
                     (if (if (gx#identifier? _L23397_)
                             (gxc#opt-lambda-expr? _L23396_)
                             '#f)
                         (let* ((_g2341323443_
                                 (lambda (_g2341423440_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2341423440_)))
                                (_g2341223538_
                                 (lambda (_g2341423446_)
                                   (if (gx#stx-pair? _g2341423446_)
                                       (let ((_e2341823448_
                                              (gx#stx-e _g2341423446_)))
                                         (let ((_hd2341923451_
                                                (##car _e2341823448_))
                                               (_tl2342023453_
                                                (##cdr _e2341823448_)))
                                           (if (gx#stx-pair? _tl2342023453_)
                                               (let ((_e2342123456_
                                                      (gx#stx-e
                                                       _tl2342023453_)))
                                                 (let ((_hd2342223459_
                                                        (##car _e2342123456_))
                                                       (_tl2342323461_
                                                        (##cdr _e2342123456_)))
                                                   (if (gx#stx-pair?
                                                        _hd2342223459_)
                                                       (let ((_e2342423464_
                                                              (gx#stx-e
                                                               _hd2342223459_)))
                                                         (let ((_hd2342523467_
                                                                (##car _e2342423464_))
                                                               (_tl2342623469_
                                                                (##cdr _e2342423464_)))
                                                           (if (gx#stx-pair?
                                                                _hd2342523467_)
                                                               (let ((_e2342723472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2342523467_)))
                         (let ((_hd2342823475_ (##car _e2342723472_))
                               (_tl2342923477_ (##cdr _e2342723472_)))
                           (if (gx#stx-pair? _hd2342823475_)
                               (let ((_e2343023480_ (gx#stx-e _hd2342823475_)))
                                 (let ((_hd2343123483_ (##car _e2343023480_))
                                       (_tl2343223485_ (##cdr _e2343023480_)))
                                   (if (gx#stx-null? _tl2343223485_)
                                       (if (gx#stx-pair? _tl2342923477_)
                                           (let ((_e2343323488_
                                                  (gx#stx-e _tl2342923477_)))
                                             (let ((_hd2343423491_
                                                    (##car _e2343323488_))
                                                   (_tl2343523493_
                                                    (##cdr _e2343323488_)))
                                               (if (gx#stx-null?
                                                    _tl2343523493_)
                                                   (if (gx#stx-null?
                                                        _tl2342623469_)
                                                       (if (gx#stx-pair?
                                                            _tl2342323461_)
                                                           (let ((_e2343623496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2342323461_)))
                     (let ((_hd2343723499_ (##car _e2343623496_))
                           (_tl2343823501_ (##cdr _e2343623496_)))
                       (if (gx#stx-null? _tl2343823501_)
                           ((lambda (_L23504_ _L23505_ _L23506_)
                              (let* ((_lambda-id23530_
                                      (make-symbol
                                       (gx#stx-e _L23397_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22962_
                                        (gx#stx-e _L23506_))))
                                     (_lambda-id23532_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23530_
                                       (gx#stx-source _stx22959_)))
                                     (_g27904_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23532_))
                                     (_new-case-lambda-expr23535_
                                      (gxc#apply-expression-subst
                                       _L23504_
                                       _L23506_
                                       _lambda-id23532_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#identifier-symbol _L23397_)
                                   '" => "
                                   (gxc#identifier-symbol _lambda-id23532_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L23505_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22959_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L23397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23535_ '())))
               _stx22959_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22959_))))
                            _hd2343723499_
                            _hd2343423491_
                            _hd2343123483_)
                           (_g2341323443_ _g2341423446_))))
                   (_g2341323443_ _g2341423446_))
               (_g2341323443_ _g2341423446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2341323443_
                                                    _g2341423446_))))
                                           (_g2341323443_ _g2341423446_))
                                       (_g2341323443_ _g2341423446_))))
                               (_g2341323443_ _g2341423446_))))
                       (_g2341323443_ _g2341423446_))))
               (_g2341323443_ _g2341423446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2341323443_ _g2341423446_))))
                                       (_g2341323443_ _g2341423446_)))))
                           (_g2341223538_ _L23396_))
                         (_g2296623359_ _g2296923362_)))
                   _hd2299623391_
                   _hd2299323383_)
                  (_g2296623359_ _g2296923362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296623359_
                                                   _g2296923362_))
                                              (_g2296623359_ _g2296923362_))))
                                      (_g2296623359_ _g2296923362_))))
                              (_g2296623359_ _g2296923362_))))
                      (_g2296623359_ _g2296923362_))))
               (_g2296423666_
                (lambda (_g2296923544_)
                  (if (gx#stx-pair? _g2296923544_)
                      (let ((_e2297223546_ (gx#stx-e _g2296923544_)))
                        (let ((_hd2297323549_ (##car _e2297223546_))
                              (_tl2297423551_ (##cdr _e2297223546_)))
                          (if (gx#stx-pair? _tl2297423551_)
                              (let ((_e2297523554_ (gx#stx-e _tl2297423551_)))
                                (let ((_hd2297623557_ (##car _e2297523554_))
                                      (_tl2297723559_ (##cdr _e2297523554_)))
                                  (if (gx#stx-pair? _hd2297623557_)
                                      (let ((_e2297823562_
                                             (gx#stx-e _hd2297623557_)))
                                        (let ((_hd2297923565_
                                               (##car _e2297823562_))
                                              (_tl2298023567_
                                               (##cdr _e2297823562_)))
                                          (if (gx#stx-null? _tl2298023567_)
                                              (if (gx#stx-pair? _tl2297723559_)
                                                  (let ((_e2298123570_
                                                         (gx#stx-e
                                                          _tl2297723559_)))
                                                    (let ((_hd2298223573_
                                                           (##car _e2298123570_))
                                                          (_tl2298323575_
                                                           (##cdr _e2298123570_)))
                                                      (if (gx#stx-null?
                                                           _tl2298323575_)
                                                          ((lambda (_L23578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23579_)
                     (if (if (gx#identifier? _L23579_)
                             (gxc#case-lambda-expr? _L23578_)
                             '#f)
                         (let* ((_g2359623610_
                                 (lambda (_g2359723607_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2359723607_)))
                                (_g2359523641_
                                 (lambda (_g2359723613_)
                                   (if (gx#stx-pair? _g2359723613_)
                                       (let ((_e2360323615_
                                              (gx#stx-e _g2359723613_)))
                                         (let ((_hd2360423618_
                                                (##car _e2360323615_))
                                               (_tl2360523620_
                                                (##cdr _e2360323615_)))
                                           ((lambda (_L23623_)
                                              (let ((_g27905_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22959_
                                                      _L23579_
                                                      _L23623_)))
                                                (begin
                                                  (let ((_g27906_
                                                         (if (##values?
                                                              _g27905_)
                                                             (##vector-length
                                                              _g27905_)
                                                             1)))
                                                    (if (not (##fx= _g27906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            3))
                (error "Context expects 3 values" _g27906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_ids23633_
                                                         (##vector-ref
                                                          _g27905_
                                                          0))
                                                        (_impls23634_
                                                         (##vector-ref
                                                          _g27905_
                                                          1))
                                                        (_clauses23635_
                                                         (##vector-ref
                                                          _g27905_
                                                          2)))
                                                    (let* ((_g27907_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23633_))
                                                           (_defs23638_
                                                            (map _case-lambda-clause-def22961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23633_
                         _impls23634_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#identifier-symbol _L23579_)
                 '" => "
                 (map gxc#identifier-symbol _ids23633_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23579_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23635_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22959_)
                                     '())
                               _defs23638_))
                 _stx22959_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2360523620_)))
                                       (_g2359623610_ _g2359723613_))))
                                (_g2359423663_
                                 (lambda (_g2359723644_)
                                   (if (gx#stx-pair? _g2359723644_)
                                       (let ((_e2359923646_
                                              (gx#stx-e _g2359723644_)))
                                         (let ((_hd2360023649_
                                                (##car _e2359923646_))
                                               (_tl2360123651_
                                                (##cdr _e2359923646_)))
                                           ((lambda (_L23654_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23654_)
                                                  _stx22959_
                                                  (_g2359523641_
                                                   _g2359723644_)))
                                            _tl2360123651_)))
                                       (_g2359523641_ _g2359723644_)))))
                           (_g2359423663_ _L23578_))
                         (_g2296523541_ _g2296923544_)))
                   _hd2298223573_
                   _hd2297923565_)
                  (_g2296523541_ _g2296923544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2296523541_
                                                   _g2296923544_))
                                              (_g2296523541_ _g2296923544_))))
                                      (_g2296523541_ _g2296923544_))))
                              (_g2296523541_ _g2296923544_))))
                      (_g2296523541_ _g2296923544_)))))
          (_g2296423666_ _stx22959_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21891_)
      (letrec* ((_bind-e__2785227853_
                 (lambda (_id22943_ _expr22944_ _compile?22945_)
                   (cons (cons _id22943_ '())
                         (cons (if _compile?22945_
                                   (gxc#compile-e _expr22944_)
                                   _expr22944_)
                               '()))))
                (_bind-e__0__2785427855_
                 (lambda (_id22950_ _expr22951_)
                   (let ((_compile?22953_ '#t))
                     (_bind-e__2785227853_
                      _id22950_
                      _expr22951_
                      _compile?22953_))))
                (_bind-e21893_
                 (lambda _g27909_
                   (let ((_g27908_ (length _g27909_)))
                     (cond ((##fx= _g27908_ 2)
                            (apply _bind-e__0__2785427855_ _g27909_))
                           ((##fx= _g27908_ 3)
                            (apply _bind-e__2785227853_ _g27909_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27909_))))))
                (_compile-bindings21894_
                 (lambda (_bindings22527_)
                   (let _lp22529_ ((_rest22531_ _bindings22527_)
                                   (_lift122532_ '())
                                   (_lift222533_ '())
                                   (_bind22534_ '()))
                     (let* ((_rest2253522543_ _rest22531_)
                            (_E2253822547_
                             (lambda ()
                               (error '"No clause matching" _rest2253522543_)))
                            (_else2253722551_
                             (lambda ()
                               (values (reverse _lift122532_)
                                       (reverse _lift222533_)
                                       (reverse _bind22534_))))
                            (_K2253922930_
                             (lambda (_rest22554_ _hd22555_)
                               (let* ((_g2255922595_
                                       (lambda (_g2256022592_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2256022592_)))
                                      (_g2255822636_
                                       (lambda (_g2256022598_)
                                         (if (gx#stx-pair? _g2256022598_)
                                             (let ((_e2258522600_
                                                    (gx#stx-e _g2256022598_)))
                                               (let ((_hd2258622603_
                                                      (##car _e2258522600_))
                                                     (_tl2258722605_
                                                      (##cdr _e2258522600_)))
                                                 (if (gx#stx-pair?
                                                      _tl2258722605_)
                                                     (let ((_e2258822608_
                                                            (gx#stx-e
                                                             _tl2258722605_)))
                                                       (let ((_hd2258922611_
                                                              (##car _e2258822608_))
                                                             (_tl2259022613_
                                                              (##cdr _e2258822608_)))
                                                         (if (gx#stx-null?
                                                              _tl2259022613_)
                                                             ((lambda (_L22616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22617_)
                        (_lp22529_
                         _rest22554_
                         _lift122532_
                         _lift222533_
                         (cons (cons _L22617_
                                     (cons (gxc#compile-e _L22616_) '()))
                               _bind22534_)))
                      _hd2258922611_
                      _hd2258622603_)
                     (_g2255922595_ _g2256022598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2255922595_
                                                      _g2256022598_))))
                                             (_g2255922595_ _g2256022598_))))
                                      (_g2255722808_
                                       (lambda (_g2256022639_)
                                         (if (gx#stx-pair? _g2256022639_)
                                             (let ((_e2257422641_
                                                    (gx#stx-e _g2256022639_)))
                                               (let ((_hd2257522644_
                                                      (##car _e2257422641_))
                                                     (_tl2257622646_
                                                      (##cdr _e2257422641_)))
                                                 (if (gx#stx-pair?
                                                      _hd2257522644_)
                                                     (let ((_e2257722649_
                                                            (gx#stx-e
                                                             _hd2257522644_)))
                                                       (let ((_hd2257822652_
                                                              (##car _e2257722649_))
                                                             (_tl2257922654_
                                                              (##cdr _e2257722649_)))
                                                         (if (gx#stx-null?
                                                              _tl2257922654_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2257622646_)
                         (let ((_e2258022657_ (gx#stx-e _tl2257622646_)))
                           (let ((_hd2258122660_ (##car _e2258022657_))
                                 (_tl2258222662_ (##cdr _e2258022657_)))
                             (if (gx#stx-null? _tl2258222662_)
                                 ((lambda (_L22665_ _L22666_)
                                    (if (if (gx#identifier? _L22666_)
                                            (gxc#opt-lambda-expr? _L22665_)
                                            '#f)
                                        (let* ((_g2268022710_
                                                (lambda (_g2268122707_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2268122707_)))
                                               (_g2267922805_
                                                (lambda (_g2268122713_)
                                                  (if (gx#stx-pair?
                                                       _g2268122713_)
                                                      (let ((_e2268522715_
                                                             (gx#stx-e
                                                              _g2268122713_)))
                                                        (let ((_hd2268622718_
                                                               (##car _e2268522715_))
                                                              (_tl2268722720_
                                                               (##cdr _e2268522715_)))
                                                          (if (gx#stx-pair?
                                                               _tl2268722720_)
                                                              (let ((_e2268822723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2268722720_)))
                        (let ((_hd2268922726_ (##car _e2268822723_))
                              (_tl2269022728_ (##cdr _e2268822723_)))
                          (if (gx#stx-pair? _hd2268922726_)
                              (let ((_e2269122731_ (gx#stx-e _hd2268922726_)))
                                (let ((_hd2269222734_ (##car _e2269122731_))
                                      (_tl2269322736_ (##cdr _e2269122731_)))
                                  (if (gx#stx-pair? _hd2269222734_)
                                      (let ((_e2269422739_
                                             (gx#stx-e _hd2269222734_)))
                                        (let ((_hd2269522742_
                                               (##car _e2269422739_))
                                              (_tl2269622744_
                                               (##cdr _e2269422739_)))
                                          (if (gx#stx-pair? _hd2269522742_)
                                              (let ((_e2269722747_
                                                     (gx#stx-e
                                                      _hd2269522742_)))
                                                (let ((_hd2269822750_
                                                       (##car _e2269722747_))
                                                      (_tl2269922752_
                                                       (##cdr _e2269722747_)))
                                                  (if (gx#stx-null?
                                                       _tl2269922752_)
                                                      (if (gx#stx-pair?
                                                           _tl2269622744_)
                                                          (let ((_e2270022755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2269622744_)))
                    (let ((_hd2270122758_ (##car _e2270022755_))
                          (_tl2270222760_ (##cdr _e2270022755_)))
                      (if (gx#stx-null? _tl2270222760_)
                          (if (gx#stx-null? _tl2269322736_)
                              (if (gx#stx-pair? _tl2269022728_)
                                  (let ((_e2270322763_
                                         (gx#stx-e _tl2269022728_)))
                                    (let ((_hd2270422766_
                                           (##car _e2270322763_))
                                          (_tl2270522768_
                                           (##cdr _e2270322763_)))
                                      (if (gx#stx-null? _tl2270522768_)
                                          ((lambda (_L22771_ _L22772_ _L22773_)
                                             (let* ((_lambda-id22797_
                                                     (make-symbol
                                                      (gx#stx-e _L22666_)
                                                      (gensym '__)))
                                                    (_lambda-id22799_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22797_
                                                      (gx#stx-source
                                                       _stx21891_)))
                                                    (_g27910_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22799_))
                                                    (_new-case-lambda-expr22802_
                                                     (gxc#apply-expression-subst
                                                      _L22771_
                                                      _L22773_
                                                      _lambda-id22799_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L22666_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id22799_))
                                                 (_lp22529_
                                                  (cons (_bind-e__2785227853_
                                                         _L22666_
                                                         _new-case-lambda-expr22802_
                                                         '#f)
                                                        _rest22554_)
                                                  (cons (_bind-e__0__2785427855_
                                                         _lambda-id22799_
                                                         _L22772_)
                                                        _lift122532_)
                                                  _lift222533_
                                                  _bind22534_))))
                                           _hd2270422766_
                                           _hd2270122758_
                                           _hd2269822750_)
                                          (_g2268022710_ _g2268122713_))))
                                  (_g2268022710_ _g2268122713_))
                              (_g2268022710_ _g2268122713_))
                          (_g2268022710_ _g2268122713_))))
                  (_g2268022710_ _g2268122713_))
              (_g2268022710_ _g2268122713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2268022710_ _g2268122713_))))
                                      (_g2268022710_ _g2268122713_))))
                              (_g2268022710_ _g2268122713_))))
                      (_g2268022710_ _g2268122713_))))
              (_g2268022710_ _g2268122713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2267922805_ _L22665_))
                                        (_g2255822636_ _g2256022639_)))
                                  _hd2258122660_
                                  _hd2257822652_)
                                 (_g2255822636_ _g2256022639_))))
                         (_g2255822636_ _g2256022639_))
                     (_g2255822636_ _g2256022639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2255822636_
                                                      _g2256022639_))))
                                             (_g2255822636_ _g2256022639_))))
                                      (_g2255622927_
                                       (lambda (_g2256022811_)
                                         (if (gx#stx-pair? _g2256022811_)
                                             (let ((_e2256322813_
                                                    (gx#stx-e _g2256022811_)))
                                               (let ((_hd2256422816_
                                                      (##car _e2256322813_))
                                                     (_tl2256522818_
                                                      (##cdr _e2256322813_)))
                                                 (if (gx#stx-pair?
                                                      _hd2256422816_)
                                                     (let ((_e2256622821_
                                                            (gx#stx-e
                                                             _hd2256422816_)))
                                                       (let ((_hd2256722824_
                                                              (##car _e2256622821_))
                                                             (_tl2256822826_
                                                              (##cdr _e2256622821_)))
                                                         (if (gx#stx-null?
                                                              _tl2256822826_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2256522818_)
                         (let ((_e2256922829_ (gx#stx-e _tl2256522818_)))
                           (let ((_hd2257022832_ (##car _e2256922829_))
                                 (_tl2257122834_ (##cdr _e2256922829_)))
                             (if (gx#stx-null? _tl2257122834_)
                                 ((lambda (_L22837_ _L22838_)
                                    (if (if (gx#identifier? _L22838_)
                                            (gxc#case-lambda-expr? _L22837_)
                                            '#f)
                                        (let* ((_g2285322867_
                                                (lambda (_g2285422864_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2285422864_)))
                                               (_g2285222902_
                                                (lambda (_g2285422870_)
                                                  (if (gx#stx-pair?
                                                       _g2285422870_)
                                                      (let ((_e2286022872_
                                                             (gx#stx-e
                                                              _g2285422870_)))
                                                        (let ((_hd2286122875_
                                                               (##car _e2286022872_))
                                                              (_tl2286222877_
                                                               (##cdr _e2286022872_)))
                                                          ((lambda (_L22880_)
                                                             (let ((_g27911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21891_
                             _L22838_
                             _L22880_
                             '#t)))
                       (begin
                         (let ((_g27912_
                                (if (##values? _g27911_)
                                    (##vector-length _g27911_)
                                    1)))
                           (if (not (##fx= _g27912_ 3))
                               (error "Context expects 3 values" _g27912_)))
                         (let ((_ids22890_ (##vector-ref _g27911_ 0))
                               (_impls22891_ (##vector-ref _g27911_ 1))
                               (_clauses22892_ (##vector-ref _g27911_ 2)))
                           (let* ((_g27913_
                                   (for-each gx#core-bind-runtime! _ids22890_))
                                  (_xbind22895_
                                   (map _bind-e21893_ _ids22890_ _impls22891_))
                                  (_expr*22897_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22892_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22899_
                                   (_bind-e__2785227853_
                                    _L22838_
                                    _expr*22897_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L22838_)
                                '" => "
                                (map gxc#identifier-symbol _ids22890_))
                               (_lp22529_
                                _rest22554_
                                _lift122532_
                                (foldl1 cons _lift222533_ _xbind22895_)
                                (cons _bind*22899_ _bind22534_))))))))
                   _tl2286222877_)))
              (_g2285322867_ _g2285422870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2285122924_
                                                (lambda (_g2285422905_)
                                                  (if (gx#stx-pair?
                                                       _g2285422905_)
                                                      (let ((_e2285622907_
                                                             (gx#stx-e
                                                              _g2285422905_)))
                                                        (let ((_hd2285722910_
                                                               (##car _e2285622907_))
                                                              (_tl2285822912_
                                                               (##cdr _e2285622907_)))
                                                          ((lambda (_L22915_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22915_)
                         (_lp22529_
                          _rest22554_
                          _lift122532_
                          _lift222533_
                          (cons (_bind-e__2785227853_ _L22838_ _L22837_ '#f)
                                _bind22534_))
                         (_g2285222902_ _g2285422905_)))
                   _tl2285822912_)))
              (_g2285222902_ _g2285422905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2285122924_ _L22837_))
                                        (_g2255722808_ _g2256022811_)))
                                  _hd2257022832_
                                  _hd2256722824_)
                                 (_g2255722808_ _g2256022811_))))
                         (_g2255722808_ _g2256022811_))
                     (_g2255722808_ _g2256022811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2255722808_
                                                      _g2256022811_))))
                                             (_g2255722808_ _g2256022811_)))))
                                 (_g2255622927_ _hd22555_)))))
                       (if (##pair? _rest2253522543_)
                           (let ((_hd2254022933_ (##car _rest2253522543_))
                                 (_tl2254122935_ (##cdr _rest2253522543_)))
                             (let* ((_hd22938_ _hd2254022933_)
                                    (_rest22940_ _tl2254122935_))
                               (_K2253922930_ _rest22940_ _hd22938_)))
                           (_else2253722551_))))))
                (_lift-kw-lambda?21895_
                 (lambda (_bind22451_)
                   (let* ((_g2245422471_
                           (lambda (_g2245522468_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2245522468_)))
                          (_g2245322478_
                           (lambda (_g2245522474_) ((lambda () '#f))))
                          (_g2245222524_
                           (lambda (_g2245522481_)
                             (if (gx#stx-pair? _g2245522481_)
                                 (let ((_e2245822483_
                                        (gx#stx-e _g2245522481_)))
                                   (let ((_hd2245922486_ (##car _e2245822483_))
                                         (_tl2246022488_
                                          (##cdr _e2245822483_)))
                                     (if (gx#stx-pair? _hd2245922486_)
                                         (let ((_e2246122491_
                                                (gx#stx-e _hd2245922486_)))
                                           (let ((_hd2246222494_
                                                  (##car _e2246122491_))
                                                 (_tl2246322496_
                                                  (##cdr _e2246122491_)))
                                             (if (gx#stx-null? _tl2246322496_)
                                                 (if (gx#stx-pair?
                                                      _tl2246022488_)
                                                     (let ((_e2246422499_
                                                            (gx#stx-e
                                                             _tl2246022488_)))
                                                       (let ((_hd2246522502_
                                                              (##car _e2246422499_))
                                                             (_tl2246622504_
                                                              (##cdr _e2246422499_)))
                                                         (if (gx#stx-null?
                                                              _tl2246622504_)
                                                             ((lambda (_L22507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22508_)
                        (if (gx#identifier? _L22508_)
                            (gxc#kw-lambda-expr? _L22507_)
                            '#f))
                      _hd2246522502_
                      _hd2246222494_)
                     (_g2245322478_ _g2245522481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2245322478_
                                                      _g2245522481_))
                                                 (_g2245322478_
                                                  _g2245522481_))))
                                         (_g2245322478_ _g2245522481_))))
                                 (_g2245322478_ _g2245522481_)))))
                     (_g2245222524_ _bind22451_))))
                (_lift-kw-lambda-bindings21896_
                 (lambda (_bindings22063_)
                   (let _lp22065_ ((_rest22067_ _bindings22063_)
                                   (_lift122068_ '())
                                   (_lift222069_ '())
                                   (_bind22070_ '()))
                     (let* ((_rest2207122079_ _rest22067_)
                            (_E2207422083_
                             (lambda ()
                               (error '"No clause matching" _rest2207122079_)))
                            (_else2207322087_
                             (lambda ()
                               (values (reverse _lift122068_)
                                       (reverse _lift222069_)
                                       (reverse _bind22070_))))
                            (_K2207522439_
                             (lambda (_rest22090_ _hd22091_)
                               (let* ((_g2209422119_
                                       (lambda (_g2209522116_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2209522116_)))
                                      (_g2209322160_
                                       (lambda (_g2209522122_)
                                         (if (gx#stx-pair? _g2209522122_)
                                             (let ((_e2210922124_
                                                    (gx#stx-e _g2209522122_)))
                                               (let ((_hd2211022127_
                                                      (##car _e2210922124_))
                                                     (_tl2211122129_
                                                      (##cdr _e2210922124_)))
                                                 (if (gx#stx-pair?
                                                      _tl2211122129_)
                                                     (let ((_e2211222132_
                                                            (gx#stx-e
                                                             _tl2211122129_)))
                                                       (let ((_hd2211322135_
                                                              (##car _e2211222132_))
                                                             (_tl2211422137_
                                                              (##cdr _e2211222132_)))
                                                         (if (gx#stx-null?
                                                              _tl2211422137_)
                                                             ((lambda (_L22140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22141_)
                        (_lp22065_
                         _rest22090_
                         _lift122068_
                         _lift222069_
                         (cons (cons _L22141_ (cons _L22140_ '()))
                               _bind22070_)))
                      _hd2211322135_
                      _hd2211022127_)
                     (_g2209422119_ _g2209522122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2209422119_
                                                      _g2209522122_))))
                                             (_g2209422119_ _g2209522122_))))
                                      (_g2209222436_
                                       (lambda (_g2209522163_)
                                         (if (gx#stx-pair? _g2209522163_)
                                             (let ((_e2209822165_
                                                    (gx#stx-e _g2209522163_)))
                                               (let ((_hd2209922168_
                                                      (##car _e2209822165_))
                                                     (_tl2210022170_
                                                      (##cdr _e2209822165_)))
                                                 (if (gx#stx-pair?
                                                      _hd2209922168_)
                                                     (let ((_e2210122173_
                                                            (gx#stx-e
                                                             _hd2209922168_)))
                                                       (let ((_hd2210222176_
                                                              (##car _e2210122173_))
                                                             (_tl2210322178_
                                                              (##cdr _e2210122173_)))
                                                         (if (gx#stx-null?
                                                              _tl2210322178_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2210022170_)
                         (let ((_e2210422181_ (gx#stx-e _tl2210022170_)))
                           (let ((_hd2210522184_ (##car _e2210422181_))
                                 (_tl2210622186_ (##cdr _e2210422181_)))
                             (if (gx#stx-null? _tl2210622186_)
                                 ((lambda (_L22189_ _L22190_)
                                    (if (if (gx#identifier? _L22190_)
                                            (gxc#kw-lambda-expr? _L22189_)
                                            '#f)
                                        (let* ((_g2220422257_
                                                (lambda (_g2220522254_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2220522254_)))
                                               (_g2220322433_
                                                (lambda (_g2220522260_)
                                                  (if (gx#stx-pair?
                                                       _g2220522260_)
                                                      (let ((_e2221122262_
                                                             (gx#stx-e
                                                              _g2220522260_)))
                                                        (let ((_hd2221222265_
                                                               (##car _e2221122262_))
                                                              (_tl2221322267_
                                                               (##cdr _e2221122262_)))
                                                          (if (gx#stx-pair?
                                                               _tl2221322267_)
                                                              (let ((_e2221422270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2221322267_)))
                        (let ((_hd2221522273_ (##car _e2221422270_))
                              (_tl2221622275_ (##cdr _e2221422270_)))
                          (if (gx#stx-pair? _hd2221522273_)
                              (let ((_e2221722278_ (gx#stx-e _hd2221522273_)))
                                (let ((_hd2221822281_ (##car _e2221722278_))
                                      (_tl2221922283_ (##cdr _e2221722278_)))
                                  (if (gx#stx-pair? _hd2221822281_)
                                      (let ((_e2222022286_
                                             (gx#stx-e _hd2221822281_)))
                                        (let ((_hd2222122289_
                                               (##car _e2222022286_))
                                              (_tl2222222291_
                                               (##cdr _e2222022286_)))
                                          (if (gx#stx-pair? _hd2222122289_)
                                              (let ((_e2222322294_
                                                     (gx#stx-e
                                                      _hd2222122289_)))
                                                (let ((_hd2222422297_
                                                       (##car _e2222322294_))
                                                      (_tl2222522299_
                                                       (##cdr _e2222322294_)))
                                                  (if (gx#stx-null?
                                                       _tl2222522299_)
                                                      (if (gx#stx-pair?
                                                           _tl2222222291_)
                                                          (let ((_e2222622302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2222222291_)))
                    (let ((_hd2222722305_ (##car _e2222622302_))
                          (_tl2222822307_ (##cdr _e2222622302_)))
                      (if (gx#stx-pair? _hd2222722305_)
                          (let ((_e2222922310_ (gx#stx-e _hd2222722305_)))
                            (let ((_hd2223022313_ (##car _e2222922310_))
                                  (_tl2223122315_ (##cdr _e2222922310_)))
                              (if (gx#stx-pair? _tl2223122315_)
                                  (let ((_e2223222318_
                                         (gx#stx-e _tl2223122315_)))
                                    (let ((_hd2223322321_
                                           (##car _e2223222318_))
                                          (_tl2223422323_
                                           (##cdr _e2223222318_)))
                                      (if (gx#stx-pair? _hd2223322321_)
                                          (let ((_e2223522326_
                                                 (gx#stx-e _hd2223322321_)))
                                            (let ((_hd2223622329_
                                                   (##car _e2223522326_))
                                                  (_tl2223722331_
                                                   (##cdr _e2223522326_)))
                                              (if (gx#stx-pair? _hd2223622329_)
                                                  (let ((_e2223822334_
                                                         (gx#stx-e
                                                          _hd2223622329_)))
                                                    (let ((_hd2223922337_
                                                           (##car _e2223822334_))
                                                          (_tl2224022339_
                                                           (##cdr _e2223822334_)))
                                                      (if (gx#stx-pair?
                                                           _hd2223922337_)
                                                          (let ((_e2224122342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2223922337_)))
                    (let ((_hd2224222345_ (##car _e2224122342_))
                          (_tl2224322347_ (##cdr _e2224122342_)))
                      (if (gx#stx-null? _tl2224322347_)
                          (if (gx#stx-pair? _tl2224022339_)
                              (let ((_e2224422350_ (gx#stx-e _tl2224022339_)))
                                (let ((_hd2224522353_ (##car _e2224422350_))
                                      (_tl2224622355_ (##cdr _e2224422350_)))
                                  (if (gx#stx-null? _tl2224622355_)
                                      (if (gx#stx-null? _tl2223722331_)
                                          (if (gx#stx-pair? _tl2223422323_)
                                              (let ((_e2224722358_
                                                     (gx#stx-e
                                                      _tl2223422323_)))
                                                (let ((_hd2224822361_
                                                       (##car _e2224722358_))
                                                      (_tl2224922363_
                                                       (##cdr _e2224722358_)))
                                                  (if (gx#stx-null?
                                                       _tl2224922363_)
                                                      (if (gx#stx-null?
                                                           _tl2222822307_)
                                                          (if (gx#stx-null?
                                                               _tl2221922283_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2221622275_)
                          (let ((_e2225022366_ (gx#stx-e _tl2221622275_)))
                            (let ((_hd2225122369_ (##car _e2225022366_))
                                  (_tl2225222371_ (##cdr _e2225022366_)))
                              (if (gx#stx-null? _tl2225222371_)
                                  ((lambda (_L22374_
                                            _L22375_
                                            _L22376_
                                            _L22377_
                                            _L22378_)
                                     (let* ((_get-kws-id22418_
                                             (make-symbol
                                              (gx#stx-e _L22190_)
                                              (gensym '__)))
                                            (_get-kws-id22420_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id22418_
                                              (gx#stx-source _stx21891_)))
                                            (_main-id22422_
                                             (make-symbol
                                              (gx#stx-e _L22190_)
                                              (gensym '__)))
                                            (_main-id22424_
                                             (gx#core-quote-syntax__1
                                              _main-id22422_
                                              (gx#stx-source _stx21891_)))
                                            (_g27914_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id22420_))
                                            (_g27915_
                                             (gx#core-bind-runtime!__0
                                              _main-id22424_))
                                            (_new-kw-dispatch22428_
                                             (gxc#apply-expression-subst
                                              _L22374_
                                              _L22378_
                                              _get-kws-id22420_))
                                            (_new-get-kws22430_
                                             (gxc#apply-expression-subst
                                              _L22375_
                                              _L22377_
                                              _main-id22424_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L22190_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id22420_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id22424_))
                                         (_lp22065_
                                          _rest22090_
                                          (cons (_bind-e__2785227853_
                                                 _main-id22424_
                                                 _L22376_
                                                 '#f)
                                                _lift122068_)
                                          (cons (_bind-e__2785227853_
                                                 _get-kws-id22420_
                                                 _new-get-kws22430_
                                                 '#f)
                                                _lift222069_)
                                          (cons (_bind-e__2785227853_
                                                 _L22190_
                                                 _new-kw-dispatch22428_
                                                 '#f)
                                                _bind22070_)))))
                                   _hd2225122369_
                                   _hd2224822361_
                                   _hd2224522353_
                                   _hd2224222345_
                                   _hd2222422297_)
                                  (_g2220422257_ _g2220522260_))))
                          (_g2220422257_ _g2220522260_))
                      (_g2220422257_ _g2220522260_))
                  (_g2220422257_ _g2220522260_))
              (_g2220422257_ _g2220522260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2220422257_ _g2220522260_))
                                          (_g2220422257_ _g2220522260_))
                                      (_g2220422257_ _g2220522260_))))
                              (_g2220422257_ _g2220522260_))
                          (_g2220422257_ _g2220522260_))))
                  (_g2220422257_ _g2220522260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2220422257_
                                                   _g2220522260_))))
                                          (_g2220422257_ _g2220522260_))))
                                  (_g2220422257_ _g2220522260_))))
                          (_g2220422257_ _g2220522260_))))
                  (_g2220422257_ _g2220522260_))
              (_g2220422257_ _g2220522260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2220422257_ _g2220522260_))))
                                      (_g2220422257_ _g2220522260_))))
                              (_g2220422257_ _g2220522260_))))
                      (_g2220422257_ _g2220522260_))))
              (_g2220422257_ _g2220522260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2220322433_ _L22189_))
                                        (_g2209322160_ _g2209522163_)))
                                  _hd2210522184_
                                  _hd2210222176_)
                                 (_g2209322160_ _g2209522163_))))
                         (_g2209322160_ _g2209522163_))
                     (_g2209322160_ _g2209522163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2209322160_
                                                      _g2209522163_))))
                                             (_g2209322160_ _g2209522163_)))))
                                 (_g2209222436_ _hd22091_)))))
                       (if (##pair? _rest2207122079_)
                           (let ((_hd2207622442_ (##car _rest2207122079_))
                                 (_tl2207722444_ (##cdr _rest2207122079_)))
                             (let* ((_hd22447_ _hd2207622442_)
                                    (_rest22449_ _tl2207722444_))
                               (_K2207522439_ _rest22449_ _hd22447_)))
                           (_else2207322087_)))))))
        (let* ((_g2189921925_
                (lambda (_g2190021922_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2190021922_)))
               (_g2189821932_
                (lambda (_g2190021928_)
                  ((lambda () (gxc#xform-let-values% _stx21891_)))))
               (_g2189722060_
                (lambda (_g2190021935_)
                  (if (gx#stx-pair? _g2190021935_)
                      (let ((_e2190321937_ (gx#stx-e _g2190021935_)))
                        (let ((_hd2190421940_ (##car _e2190321937_))
                              (_tl2190521942_ (##cdr _e2190321937_)))
                          (if (gx#stx-pair? _tl2190521942_)
                              (let ((_e2190621945_ (gx#stx-e _tl2190521942_)))
                                (let ((_hd2190721948_ (##car _e2190621945_))
                                      (_tl2190821950_ (##cdr _e2190621945_)))
                                  (if (gx#stx-pair/null? _hd2190721948_)
                                      (if (fx>= (gx#stx-length _hd2190721948_)
                                                '0)
                                          (let ((_g27916_
                                                 (gx#syntax-split-splice
                                                  _hd2190721948_
                                                  '0)))
                                            (begin
                                              (let ((_g27917_
                                                     (if (##values? _g27916_)
                                                         (##vector-length
                                                          _g27916_)
                                                         1)))
                                                (if (not (##fx= _g27917_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27917_)))
                                              (let ((_target2190921953_
                                                     (##vector-ref _g27916_ 0))
                                                    (_tl2191121955_
                                                     (##vector-ref
                                                      _g27916_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2191121955_)
                                                    (letrec ((_loop2191221958_
                                                              (lambda (_hd2191021961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2191621963_)
                        (if (gx#stx-pair? _hd2191021961_)
                            (let ((_e2191321966_ (gx#stx-e _hd2191021961_)))
                              (let ((_lp-hd2191421969_ (##car _e2191321966_))
                                    (_lp-tl2191521971_ (##cdr _e2191321966_)))
                                (_loop2191221958_
                                 _lp-tl2191521971_
                                 (cons _lp-hd2191421969_ _bind2191621963_))))
                            (let ((_bind2191721974_
                                   (reverse _bind2191621963_)))
                              (if (gx#stx-pair? _tl2190821950_)
                                  (let ((_e2191821977_
                                         (gx#stx-e _tl2190821950_)))
                                    (let ((_hd2191921980_
                                           (##car _e2191821977_))
                                          (_tl2192021982_
                                           (##cdr _e2191821977_)))
                                      (if (gx#stx-null? _tl2192021982_)
                                          ((lambda (_L21985_ _L21986_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2200622009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2200722011_)
                             (cons _g2200622009_ _g2200722011_))
                           '()
                           _L21986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?21895_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2201422017_ _g2201522019_)
                                    (cons _g2201422017_ _g2201522019_))
                                  '()
                                  _L21986_)))
                (let ((_g27918_
                       (_lift-kw-lambda-bindings21896_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2202122024_ _g2202222026_)
                                    (cons _g2202122024_ _g2202222026_))
                                  '()
                                  _L21986_)))))
                  (begin
                    (let ((_g27919_
                           (if (##values? _g27918_)
                               (##vector-length _g27918_)
                               1)))
                      (if (not (##fx= _g27919_ 3))
                          (error "Context expects 3 values" _g27919_)))
                    (let ((_lift122029_ (##vector-ref _g27918_ 0))
                          (_lift222030_ (##vector-ref _g27918_ 1))
                          (_hd22031_ (##vector-ref _g27918_ 2)))
                      (let* ((_expr22033_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd22031_ (cons _L21985_ '())))
                               _stx21891_))
                             (_expr22035_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift222030_
                                           (cons _expr22033_ '())))
                               _stx21891_))
                             (_expr22037_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift122029_
                                           (cons _expr22035_ '())))
                               _stx21891_)))
                        (gxc#lift-top-lambda-let-values% _expr22037_)))))
                (let ((_g27920_
                       (_compile-bindings21894_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2203922042_ _g2204022044_)
                                    (cons _g2203922042_ _g2204022044_))
                                  '()
                                  _L21986_)))))
                  (begin
                    (let ((_g27921_
                           (if (##values? _g27920_)
                               (##vector-length _g27920_)
                               1)))
                      (if (not (##fx= _g27921_ 3))
                          (error "Context expects 3 values" _g27921_)))
                    (let ((_lift122047_ (##vector-ref _g27920_ 0))
                          (_lift222048_ (##vector-ref _g27920_ 1))
                          (_hd22049_ (##vector-ref _g27920_ 2)))
                      (let* ((_body22051_ (gxc#compile-e _L21985_))
                             (_expr22053_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd22049_ (cons _body22051_ '())))
                               _stx21891_))
                             (_expr22055_
                              (if (null? _lift222048_)
                                  _expr22053_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift222048_
                                               (cons _expr22053_ '())))
                                   _stx21891_)))
                             (_expr22057_
                              (if (null? _lift122047_)
                                  _expr22055_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift122047_
                                               (cons _expr22055_ '())))
                                   _stx21891_))))
                        _expr22057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27862
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27862)
                                                      __obj27862)))
                                                 (_g2189821932_
                                                  _g2190021935_)))
                                           _hd2191921980_
                                           _bind2191721974_)
                                          (_g2189821932_ _g2190021935_))))
                                  (_g2189821932_ _g2190021935_)))))))
              (_loop2191221958_ _target2190921953_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2189821932_
                                                     _g2190021935_)))))
                                          (_g2189821932_ _g2190021935_))
                                      (_g2189821932_ _g2190021935_))))
                              (_g2189821932_ _g2190021935_))))
                      (_g2189821932_ _g2190021935_)))))
          (_g2189722060_ _stx21891_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx21035_)
      (letrec* ((_bind-e__2785727858_
                 (lambda (_id21875_ _expr21876_ _compile?21877_)
                   (cons (cons _id21875_ '())
                         (cons (if _compile?21877_
                                   (gxc#compile-e _expr21876_)
                                   _expr21876_)
                               '()))))
                (_bind-e__0__2785927860_
                 (lambda (_id21882_ _expr21883_)
                   (let ((_compile?21885_ '#t))
                     (_bind-e__2785727858_
                      _id21882_
                      _expr21883_
                      _compile?21885_))))
                (_bind-e21037_
                 (lambda _g27923_
                   (let ((_g27922_ (length _g27923_)))
                     (cond ((##fx= _g27922_ 2)
                            (apply _bind-e__0__2785927860_ _g27923_))
                           ((##fx= _g27922_ 3)
                            (apply _bind-e__2785727858_ _g27923_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27923_))))))
                (_compile-bindings21038_
                 (lambda (_rest21173_)
                   (let _lp21175_ ((_rest21177_ _rest21173_) (_bind21178_ '()))
                     (let* ((_rest2117921187_ _rest21177_)
                            (_E2118221191_
                             (lambda ()
                               (error '"No clause matching" _rest2117921187_)))
                            (_else2118121195_
                             (lambda () (reverse _bind21178_)))
                            (_K2118321862_
                             (lambda (_rest21198_ _hd21199_)
                               (let* ((_g2120421251_
                                       (lambda (_g2120521248_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2120521248_)))
                                      (_g2120321292_
                                       (lambda (_g2120521254_)
                                         (if (gx#stx-pair? _g2120521254_)
                                             (let ((_e2124121256_
                                                    (gx#stx-e _g2120521254_)))
                                               (let ((_hd2124221259_
                                                      (##car _e2124121256_))
                                                     (_tl2124321261_
                                                      (##cdr _e2124121256_)))
                                                 (if (gx#stx-pair?
                                                      _tl2124321261_)
                                                     (let ((_e2124421264_
                                                            (gx#stx-e
                                                             _tl2124321261_)))
                                                       (let ((_hd2124521267_
                                                              (##car _e2124421264_))
                                                             (_tl2124621269_
                                                              (##cdr _e2124421264_)))
                                                         (if (gx#stx-null?
                                                              _tl2124621269_)
                                                             ((lambda (_L21272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21273_)
                        (_lp21175_
                         _rest21198_
                         (cons (cons _L21273_
                                     (cons (gxc#compile-e _L21272_) '()))
                               _bind21178_)))
                      _hd2124521267_
                      _hd2124221259_)
                     (_g2120421251_ _g2120521254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120421251_
                                                      _g2120521254_))))
                                             (_g2120421251_ _g2120521254_))))
                                      (_g2120221568_
                                       (lambda (_g2120521295_)
                                         (if (gx#stx-pair? _g2120521295_)
                                             (let ((_e2123021297_
                                                    (gx#stx-e _g2120521295_)))
                                               (let ((_hd2123121300_
                                                      (##car _e2123021297_))
                                                     (_tl2123221302_
                                                      (##cdr _e2123021297_)))
                                                 (if (gx#stx-pair?
                                                      _hd2123121300_)
                                                     (let ((_e2123321305_
                                                            (gx#stx-e
                                                             _hd2123121300_)))
                                                       (let ((_hd2123421308_
                                                              (##car _e2123321305_))
                                                             (_tl2123521310_
                                                              (##cdr _e2123321305_)))
                                                         (if (gx#stx-null?
                                                              _tl2123521310_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2123221302_)
                         (let ((_e2123621313_ (gx#stx-e _tl2123221302_)))
                           (let ((_hd2123721316_ (##car _e2123621313_))
                                 (_tl2123821318_ (##cdr _e2123621313_)))
                             (if (gx#stx-null? _tl2123821318_)
                                 ((lambda (_L21321_ _L21322_)
                                    (if (if (gx#identifier? _L21322_)
                                            (gxc#kw-lambda-expr? _L21321_)
                                            '#f)
                                        (let* ((_g2133621389_
                                                (lambda (_g2133721386_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2133721386_)))
                                               (_g2133521565_
                                                (lambda (_g2133721392_)
                                                  (if (gx#stx-pair?
                                                       _g2133721392_)
                                                      (let ((_e2134321394_
                                                             (gx#stx-e
                                                              _g2133721392_)))
                                                        (let ((_hd2134421397_
                                                               (##car _e2134321394_))
                                                              (_tl2134521399_
                                                               (##cdr _e2134321394_)))
                                                          (if (gx#stx-pair?
                                                               _tl2134521399_)
                                                              (let ((_e2134621402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2134521399_)))
                        (let ((_hd2134721405_ (##car _e2134621402_))
                              (_tl2134821407_ (##cdr _e2134621402_)))
                          (if (gx#stx-pair? _hd2134721405_)
                              (let ((_e2134921410_ (gx#stx-e _hd2134721405_)))
                                (let ((_hd2135021413_ (##car _e2134921410_))
                                      (_tl2135121415_ (##cdr _e2134921410_)))
                                  (if (gx#stx-pair? _hd2135021413_)
                                      (let ((_e2135221418_
                                             (gx#stx-e _hd2135021413_)))
                                        (let ((_hd2135321421_
                                               (##car _e2135221418_))
                                              (_tl2135421423_
                                               (##cdr _e2135221418_)))
                                          (if (gx#stx-pair? _hd2135321421_)
                                              (let ((_e2135521426_
                                                     (gx#stx-e
                                                      _hd2135321421_)))
                                                (let ((_hd2135621429_
                                                       (##car _e2135521426_))
                                                      (_tl2135721431_
                                                       (##cdr _e2135521426_)))
                                                  (if (gx#stx-null?
                                                       _tl2135721431_)
                                                      (if (gx#stx-pair?
                                                           _tl2135421423_)
                                                          (let ((_e2135821434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2135421423_)))
                    (let ((_hd2135921437_ (##car _e2135821434_))
                          (_tl2136021439_ (##cdr _e2135821434_)))
                      (if (gx#stx-pair? _hd2135921437_)
                          (let ((_e2136121442_ (gx#stx-e _hd2135921437_)))
                            (let ((_hd2136221445_ (##car _e2136121442_))
                                  (_tl2136321447_ (##cdr _e2136121442_)))
                              (if (gx#stx-pair? _tl2136321447_)
                                  (let ((_e2136421450_
                                         (gx#stx-e _tl2136321447_)))
                                    (let ((_hd2136521453_
                                           (##car _e2136421450_))
                                          (_tl2136621455_
                                           (##cdr _e2136421450_)))
                                      (if (gx#stx-pair? _hd2136521453_)
                                          (let ((_e2136721458_
                                                 (gx#stx-e _hd2136521453_)))
                                            (let ((_hd2136821461_
                                                   (##car _e2136721458_))
                                                  (_tl2136921463_
                                                   (##cdr _e2136721458_)))
                                              (if (gx#stx-pair? _hd2136821461_)
                                                  (let ((_e2137021466_
                                                         (gx#stx-e
                                                          _hd2136821461_)))
                                                    (let ((_hd2137121469_
                                                           (##car _e2137021466_))
                                                          (_tl2137221471_
                                                           (##cdr _e2137021466_)))
                                                      (if (gx#stx-pair?
                                                           _hd2137121469_)
                                                          (let ((_e2137321474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2137121469_)))
                    (let ((_hd2137421477_ (##car _e2137321474_))
                          (_tl2137521479_ (##cdr _e2137321474_)))
                      (if (gx#stx-null? _tl2137521479_)
                          (if (gx#stx-pair? _tl2137221471_)
                              (let ((_e2137621482_ (gx#stx-e _tl2137221471_)))
                                (let ((_hd2137721485_ (##car _e2137621482_))
                                      (_tl2137821487_ (##cdr _e2137621482_)))
                                  (if (gx#stx-null? _tl2137821487_)
                                      (if (gx#stx-null? _tl2136921463_)
                                          (if (gx#stx-pair? _tl2136621455_)
                                              (let ((_e2137921490_
                                                     (gx#stx-e
                                                      _tl2136621455_)))
                                                (let ((_hd2138021493_
                                                       (##car _e2137921490_))
                                                      (_tl2138121495_
                                                       (##cdr _e2137921490_)))
                                                  (if (gx#stx-null?
                                                       _tl2138121495_)
                                                      (if (gx#stx-null?
                                                           _tl2136021439_)
                                                          (if (gx#stx-null?
                                                               _tl2135121415_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2134821407_)
                          (let ((_e2138221498_ (gx#stx-e _tl2134821407_)))
                            (let ((_hd2138321501_ (##car _e2138221498_))
                                  (_tl2138421503_ (##cdr _e2138221498_)))
                              (if (gx#stx-null? _tl2138421503_)
                                  ((lambda (_L21506_
                                            _L21507_
                                            _L21508_
                                            _L21509_
                                            _L21510_)
                                     (let* ((_get-kws-id21550_
                                             (make-symbol
                                              (gx#stx-e _L21322_)
                                              (gensym '__)))
                                            (_get-kws-id21552_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id21550_
                                              (gx#stx-source _stx21035_)))
                                            (_main-id21554_
                                             (make-symbol
                                              (gx#stx-e _L21322_)
                                              (gensym '__)))
                                            (_main-id21556_
                                             (gx#core-quote-syntax__1
                                              _main-id21554_
                                              (gx#stx-source _stx21035_)))
                                            (_g27924_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21552_))
                                            (_g27925_
                                             (gx#core-bind-runtime!__0
                                              _main-id21556_))
                                            (_new-kw-dispatch21560_
                                             (gxc#apply-expression-subst
                                              _L21506_
                                              _L21510_
                                              _get-kws-id21552_))
                                            (_new-get-kws21562_
                                             (gxc#apply-expression-subst
                                              _L21507_
                                              _L21509_
                                              _main-id21556_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L21322_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id21552_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id21556_))
                                         (_lp21175_
                                          (cons (_bind-e__2785727858_
                                                 _main-id21556_
                                                 _L21508_
                                                 '#f)
                                                (cons (_bind-e__2785727858_
                                                       _get-kws-id21552_
                                                       _new-get-kws21562_
                                                       '#f)
                                                      (cons (_bind-e__2785727858_
                                                             _L21322_
                                                             _new-kw-dispatch21560_
                                                             '#f)
                                                            _rest21198_)))
                                          _bind21178_))))
                                   _hd2138321501_
                                   _hd2138021493_
                                   _hd2137721485_
                                   _hd2137421477_
                                   _hd2135621429_)
                                  (_g2133621389_ _g2133721392_))))
                          (_g2133621389_ _g2133721392_))
                      (_g2133621389_ _g2133721392_))
                  (_g2133621389_ _g2133721392_))
              (_g2133621389_ _g2133721392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2133621389_ _g2133721392_))
                                          (_g2133621389_ _g2133721392_))
                                      (_g2133621389_ _g2133721392_))))
                              (_g2133621389_ _g2133721392_))
                          (_g2133621389_ _g2133721392_))))
                  (_g2133621389_ _g2133721392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133621389_
                                                   _g2133721392_))))
                                          (_g2133621389_ _g2133721392_))))
                                  (_g2133621389_ _g2133721392_))))
                          (_g2133621389_ _g2133721392_))))
                  (_g2133621389_ _g2133721392_))
              (_g2133621389_ _g2133721392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2133621389_ _g2133721392_))))
                                      (_g2133621389_ _g2133721392_))))
                              (_g2133621389_ _g2133721392_))))
                      (_g2133621389_ _g2133721392_))))
              (_g2133621389_ _g2133721392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2133521565_ _L21321_))
                                        (_g2120321292_ _g2120521295_)))
                                  _hd2123721316_
                                  _hd2123421308_)
                                 (_g2120321292_ _g2120521295_))))
                         (_g2120321292_ _g2120521295_))
                     (_g2120321292_ _g2120521295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120321292_
                                                      _g2120521295_))))
                                             (_g2120321292_ _g2120521295_))))
                                      (_g2120121740_
                                       (lambda (_g2120521571_)
                                         (if (gx#stx-pair? _g2120521571_)
                                             (let ((_e2121921573_
                                                    (gx#stx-e _g2120521571_)))
                                               (let ((_hd2122021576_
                                                      (##car _e2121921573_))
                                                     (_tl2122121578_
                                                      (##cdr _e2121921573_)))
                                                 (if (gx#stx-pair?
                                                      _hd2122021576_)
                                                     (let ((_e2122221581_
                                                            (gx#stx-e
                                                             _hd2122021576_)))
                                                       (let ((_hd2122321584_
                                                              (##car _e2122221581_))
                                                             (_tl2122421586_
                                                              (##cdr _e2122221581_)))
                                                         (if (gx#stx-null?
                                                              _tl2122421586_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2122121578_)
                         (let ((_e2122521589_ (gx#stx-e _tl2122121578_)))
                           (let ((_hd2122621592_ (##car _e2122521589_))
                                 (_tl2122721594_ (##cdr _e2122521589_)))
                             (if (gx#stx-null? _tl2122721594_)
                                 ((lambda (_L21597_ _L21598_)
                                    (if (if (gx#identifier? _L21598_)
                                            (gxc#opt-lambda-expr? _L21597_)
                                            '#f)
                                        (let* ((_g2161221642_
                                                (lambda (_g2161321639_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2161321639_)))
                                               (_g2161121737_
                                                (lambda (_g2161321645_)
                                                  (if (gx#stx-pair?
                                                       _g2161321645_)
                                                      (let ((_e2161721647_
                                                             (gx#stx-e
                                                              _g2161321645_)))
                                                        (let ((_hd2161821650_
                                                               (##car _e2161721647_))
                                                              (_tl2161921652_
                                                               (##cdr _e2161721647_)))
                                                          (if (gx#stx-pair?
                                                               _tl2161921652_)
                                                              (let ((_e2162021655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2161921652_)))
                        (let ((_hd2162121658_ (##car _e2162021655_))
                              (_tl2162221660_ (##cdr _e2162021655_)))
                          (if (gx#stx-pair? _hd2162121658_)
                              (let ((_e2162321663_ (gx#stx-e _hd2162121658_)))
                                (let ((_hd2162421666_ (##car _e2162321663_))
                                      (_tl2162521668_ (##cdr _e2162321663_)))
                                  (if (gx#stx-pair? _hd2162421666_)
                                      (let ((_e2162621671_
                                             (gx#stx-e _hd2162421666_)))
                                        (let ((_hd2162721674_
                                               (##car _e2162621671_))
                                              (_tl2162821676_
                                               (##cdr _e2162621671_)))
                                          (if (gx#stx-pair? _hd2162721674_)
                                              (let ((_e2162921679_
                                                     (gx#stx-e
                                                      _hd2162721674_)))
                                                (let ((_hd2163021682_
                                                       (##car _e2162921679_))
                                                      (_tl2163121684_
                                                       (##cdr _e2162921679_)))
                                                  (if (gx#stx-null?
                                                       _tl2163121684_)
                                                      (if (gx#stx-pair?
                                                           _tl2162821676_)
                                                          (let ((_e2163221687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2162821676_)))
                    (let ((_hd2163321690_ (##car _e2163221687_))
                          (_tl2163421692_ (##cdr _e2163221687_)))
                      (if (gx#stx-null? _tl2163421692_)
                          (if (gx#stx-null? _tl2162521668_)
                              (if (gx#stx-pair? _tl2162221660_)
                                  (let ((_e2163521695_
                                         (gx#stx-e _tl2162221660_)))
                                    (let ((_hd2163621698_
                                           (##car _e2163521695_))
                                          (_tl2163721700_
                                           (##cdr _e2163521695_)))
                                      (if (gx#stx-null? _tl2163721700_)
                                          ((lambda (_L21703_ _L21704_ _L21705_)
                                             (let* ((_lambda-id21729_
                                                     (make-symbol
                                                      (gx#stx-e _L21598_)
                                                      (gensym '__)))
                                                    (_lambda-id21731_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21729_
                                                      (gx#stx-source
                                                       _stx21035_)))
                                                    (_g27926_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21731_))
                                                    (_new-case-lambda-expr21734_
                                                     (gxc#apply-expression-subst
                                                      _L21703_
                                                      _L21705_
                                                      _lambda-id21731_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L21598_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id21731_))
                                                 (_lp21175_
                                                  (cons (_bind-e__2785727858_
                                                         _L21598_
                                                         _new-case-lambda-expr21734_
                                                         '#f)
                                                        _rest21198_)
                                                  (cons (_bind-e__0__2785927860_
                                                         _lambda-id21731_
                                                         _L21704_)
                                                        _bind21178_)))))
                                           _hd2163621698_
                                           _hd2163321690_
                                           _hd2163021682_)
                                          (_g2161221642_ _g2161321645_))))
                                  (_g2161221642_ _g2161321645_))
                              (_g2161221642_ _g2161321645_))
                          (_g2161221642_ _g2161321645_))))
                  (_g2161221642_ _g2161321645_))
              (_g2161221642_ _g2161321645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2161221642_ _g2161321645_))))
                                      (_g2161221642_ _g2161321645_))))
                              (_g2161221642_ _g2161321645_))))
                      (_g2161221642_ _g2161321645_))))
              (_g2161221642_ _g2161321645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2161121737_ _L21597_))
                                        (_g2120221568_ _g2120521571_)))
                                  _hd2122621592_
                                  _hd2122321584_)
                                 (_g2120221568_ _g2120521571_))))
                         (_g2120221568_ _g2120521571_))
                     (_g2120221568_ _g2120521571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120221568_
                                                      _g2120521571_))))
                                             (_g2120221568_ _g2120521571_))))
                                      (_g2120021859_
                                       (lambda (_g2120521743_)
                                         (if (gx#stx-pair? _g2120521743_)
                                             (let ((_e2120821745_
                                                    (gx#stx-e _g2120521743_)))
                                               (let ((_hd2120921748_
                                                      (##car _e2120821745_))
                                                     (_tl2121021750_
                                                      (##cdr _e2120821745_)))
                                                 (if (gx#stx-pair?
                                                      _hd2120921748_)
                                                     (let ((_e2121121753_
                                                            (gx#stx-e
                                                             _hd2120921748_)))
                                                       (let ((_hd2121221756_
                                                              (##car _e2121121753_))
                                                             (_tl2121321758_
                                                              (##cdr _e2121121753_)))
                                                         (if (gx#stx-null?
                                                              _tl2121321758_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2121021750_)
                         (let ((_e2121421761_ (gx#stx-e _tl2121021750_)))
                           (let ((_hd2121521764_ (##car _e2121421761_))
                                 (_tl2121621766_ (##cdr _e2121421761_)))
                             (if (gx#stx-null? _tl2121621766_)
                                 ((lambda (_L21769_ _L21770_)
                                    (if (if (gx#identifier? _L21770_)
                                            (gxc#case-lambda-expr? _L21769_)
                                            '#f)
                                        (let* ((_g2178521799_
                                                (lambda (_g2178621796_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2178621796_)))
                                               (_g2178421834_
                                                (lambda (_g2178621802_)
                                                  (if (gx#stx-pair?
                                                       _g2178621802_)
                                                      (let ((_e2179221804_
                                                             (gx#stx-e
                                                              _g2178621802_)))
                                                        (let ((_hd2179321807_
                                                               (##car _e2179221804_))
                                                              (_tl2179421809_
                                                               (##cdr _e2179221804_)))
                                                          ((lambda (_L21812_)
                                                             (let ((_g27927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21035_
                             _L21770_
                             _L21812_
                             '#t)))
                       (begin
                         (let ((_g27928_
                                (if (##values? _g27927_)
                                    (##vector-length _g27927_)
                                    1)))
                           (if (not (##fx= _g27928_ 3))
                               (error "Context expects 3 values" _g27928_)))
                         (let ((_ids21822_ (##vector-ref _g27927_ 0))
                               (_impls21823_ (##vector-ref _g27927_ 1))
                               (_clauses21824_ (##vector-ref _g27927_ 2)))
                           (let* ((_g27929_
                                   (for-each gx#core-bind-runtime! _ids21822_))
                                  (_xbind21827_
                                   (map _bind-e21037_ _ids21822_ _impls21823_))
                                  (_expr*21829_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21824_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21831_
                                   (_bind-e__2785727858_
                                    _L21770_
                                    _expr*21829_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L21770_)
                                '" => "
                                (map gxc#identifier-symbol _ids21822_))
                               (_lp21175_
                                _rest21198_
                                (cons _bind*21831_
                                      (foldl1 cons
                                              _bind21178_
                                              _xbind21827_)))))))))
                   _tl2179421809_)))
              (_g2178521799_ _g2178621802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2178321856_
                                                (lambda (_g2178621837_)
                                                  (if (gx#stx-pair?
                                                       _g2178621837_)
                                                      (let ((_e2178821839_
                                                             (gx#stx-e
                                                              _g2178621837_)))
                                                        (let ((_hd2178921842_
                                                               (##car _e2178821839_))
                                                              (_tl2179021844_
                                                               (##cdr _e2178821839_)))
                                                          ((lambda (_L21847_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21847_)
                         (_lp21175_
                          _rest21198_
                          (cons (_bind-e__2785727858_ _L21770_ _L21769_ '#f)
                                _bind21178_))
                         (_g2178421834_ _g2178621837_)))
                   _tl2179021844_)))
              (_g2178421834_ _g2178621837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2178321856_ _L21769_))
                                        (_g2120121740_ _g2120521743_)))
                                  _hd2121521764_
                                  _hd2121221756_)
                                 (_g2120121740_ _g2120521743_))))
                         (_g2120121740_ _g2120521743_))
                     (_g2120121740_ _g2120521743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2120121740_
                                                      _g2120521743_))))
                                             (_g2120121740_ _g2120521743_)))))
                                 (_g2120021859_ _hd21199_)))))
                       (if (##pair? _rest2117921187_)
                           (let ((_hd2118421865_ (##car _rest2117921187_))
                                 (_tl2118521867_ (##cdr _rest2117921187_)))
                             (let* ((_hd21870_ _hd2118421865_)
                                    (_rest21872_ _tl2118521867_))
                               (_K2118321862_ _rest21872_ _hd21870_)))
                           (_else2118121195_)))))))
        (let* ((_g2104121068_
                (lambda (_g2104221065_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2104221065_)))
               (_g2104021075_
                (lambda (_g2104221071_)
                  ((lambda () (gxc#xform-let-values% _stx21035_)))))
               (_g2103921170_
                (lambda (_g2104221078_)
                  (if (gx#stx-pair? _g2104221078_)
                      (let ((_e2104621080_ (gx#stx-e _g2104221078_)))
                        (let ((_hd2104721083_ (##car _e2104621080_))
                              (_tl2104821085_ (##cdr _e2104621080_)))
                          (if (gx#stx-pair? _tl2104821085_)
                              (let ((_e2104921088_ (gx#stx-e _tl2104821085_)))
                                (let ((_hd2105021091_ (##car _e2104921088_))
                                      (_tl2105121093_ (##cdr _e2104921088_)))
                                  (if (gx#stx-pair/null? _hd2105021091_)
                                      (if (fx>= (gx#stx-length _hd2105021091_)
                                                '0)
                                          (let ((_g27930_
                                                 (gx#syntax-split-splice
                                                  _hd2105021091_
                                                  '0)))
                                            (begin
                                              (let ((_g27931_
                                                     (if (##values? _g27930_)
                                                         (##vector-length
                                                          _g27930_)
                                                         1)))
                                                (if (not (##fx= _g27931_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27931_)))
                                              (let ((_target2105221096_
                                                     (##vector-ref _g27930_ 0))
                                                    (_tl2105421098_
                                                     (##vector-ref
                                                      _g27930_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2105421098_)
                                                    (letrec ((_loop2105521101_
                                                              (lambda (_hd2105321104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2105921106_)
                        (if (gx#stx-pair? _hd2105321104_)
                            (let ((_e2105621109_ (gx#stx-e _hd2105321104_)))
                              (let ((_lp-hd2105721112_ (##car _e2105621109_))
                                    (_lp-tl2105821114_ (##cdr _e2105621109_)))
                                (_loop2105521101_
                                 _lp-tl2105821114_
                                 (cons _lp-hd2105721112_ _bind2105921106_))))
                            (let ((_bind2106021117_
                                   (reverse _bind2105921106_)))
                              (if (gx#stx-pair? _tl2105121093_)
                                  (let ((_e2106121120_
                                         (gx#stx-e _tl2105121093_)))
                                    (let ((_hd2106221123_
                                           (##car _e2106121120_))
                                          (_tl2106321125_
                                           (##cdr _e2106121120_)))
                                      (if (gx#stx-null? _tl2106321125_)
                                          ((lambda (_L21128_ _L21129_ _L21130_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2115121154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2115221156_)
                             (cons _g2115121154_ _g2115221156_))
                           '()
                           _L21129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd21167_
                                                           (_compile-bindings21038_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2115921162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2116021164_)
                                (cons _g2115921162_ _g2116021164_))
                              '()
                              _L21129_))))
                  (_body21168_ (gxc#compile-e _L21128_)))
              (gxc#xform-wrap-source
               (cons _L21130_ (cons _hd21167_ (cons _body21168_ '())))
               _stx21035_)))
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
                                                 (_g2104021075_
                                                  _g2104221078_)))
                                           _hd2106221123_
                                           _bind2106021117_
                                           _hd2104721083_)
                                          (_g2104021075_ _g2104221078_))))
                                  (_g2104021075_ _g2104221078_)))))))
              (_loop2105521101_ _target2105221096_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2104021075_
                                                     _g2104221078_)))))
                                          (_g2104021075_ _g2104221078_))
                                      (_g2104021075_ _g2104221078_))))
                              (_g2104021075_ _g2104221078_))))
                      (_g2104021075_ _g2104221078_)))))
          (_g2103921170_ _stx21035_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20953_)
      (let* ((_g2095620973_
              (lambda (_g2095720970_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2095720970_)))
             (_g2095520980_ (lambda (_g2095720976_) ((lambda () '#f))))
             (_g2095421032_
              (lambda (_g2095720983_)
                (if (gx#stx-pair? _g2095720983_)
                    (let ((_e2096020985_ (gx#stx-e _g2095720983_)))
                      (let ((_hd2096120988_ (##car _e2096020985_))
                            (_tl2096220990_ (##cdr _e2096020985_)))
                        (if (gx#stx-pair? _hd2096120988_)
                            (let ((_e2096320993_ (gx#stx-e _hd2096120988_)))
                              (let ((_hd2096420996_ (##car _e2096320993_))
                                    (_tl2096520998_ (##cdr _e2096320993_)))
                                (if (gx#stx-null? _tl2096520998_)
                                    (if (gx#stx-pair? _tl2096220990_)
                                        (let ((_e2096621001_
                                               (gx#stx-e _tl2096220990_)))
                                          (let ((_hd2096721004_
                                                 (##car _e2096621001_))
                                                (_tl2096821006_
                                                 (##cdr _e2096621001_)))
                                            (if (gx#stx-null? _tl2096821006_)
                                                ((lambda (_L21009_ _L21010_)
                                                   (if (gx#identifier?
                                                        _L21010_)
                                                       (let ((_$e21026_
                                                              (gxc#case-lambda-expr?
                                                               _L21009_)))
                                                         (if _$e21026_
                                                             _$e21026_
                                                             (let ((_$e21029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L21009_)))
                       (if _$e21029_
                           _$e21029_
                           (gxc#kw-lambda-expr? _L21009_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2096721004_
                                                 _hd2096420996_)
                                                (_g2095520980_
                                                 _g2095720983_))))
                                        (_g2095520980_ _g2095720983_))
                                    (_g2095520980_ _g2095720983_))))
                            (_g2095520980_ _g2095720983_))))
                    (_g2095520980_ _g2095720983_)))))
        (_g2095421032_ _bind20953_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20891_ _id20892_ _new-id20893_)
      (let* ((_g2089620909_
              (lambda (_g2089720906_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2089720906_)))
             (_g2089520916_ (lambda (_g2089720912_) ((lambda () _stx20891_))))
             (_g2089420950_
              (lambda (_g2089720919_)
                (if (gx#stx-pair? _g2089720919_)
                    (let ((_e2089920921_ (gx#stx-e _g2089720919_)))
                      (let ((_hd2090020924_ (##car _e2089920921_))
                            (_tl2090120926_ (##cdr _e2089920921_)))
                        (if (gx#stx-pair? _tl2090120926_)
                            (let ((_e2090220929_ (gx#stx-e _tl2090120926_)))
                              (let ((_hd2090320932_ (##car _e2090220929_))
                                    (_tl2090420934_ (##cdr _e2090220929_)))
                                (if (gx#stx-null? _tl2090420934_)
                                    ((lambda (_L20937_)
                                       (if (gx#free-identifier=?
                                            _L20937_
                                            _id20892_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20893_ '()))
                                            _stx20891_)
                                           (_g2089520916_ _g2089720919_)))
                                     _hd2090320932_)
                                    (_g2089520916_ _g2089720919_))))
                            (_g2089520916_ _g2089720919_))))
                    (_g2089520916_ _g2089720919_)))))
        (_g2089420950_ _stx20891_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20747_)
      (let* ((_g2075020781_
              (lambda (_g2075120778_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2075120778_)))
             (_g2074920826_
              (lambda (_g2075120784_)
                (if (gx#stx-pair? _g2075120784_)
                    (let ((_e2076820786_ (gx#stx-e _g2075120784_)))
                      (let ((_hd2076920789_ (##car _e2076820786_))
                            (_tl2077020791_ (##cdr _e2076820786_)))
                        (if (gx#stx-pair? _tl2077020791_)
                            (let ((_e2077120794_ (gx#stx-e _tl2077020791_)))
                              (let ((_hd2077220797_ (##car _e2077120794_))
                                    (_tl2077320799_ (##cdr _e2077120794_)))
                                (if (gx#stx-pair? _tl2077320799_)
                                    (let ((_e2077420802_
                                           (gx#stx-e _tl2077320799_)))
                                      (let ((_hd2077520805_
                                             (##car _e2077420802_))
                                            (_tl2077620807_
                                             (##cdr _e2077420802_)))
                                        (if (gx#stx-null? _tl2077620807_)
                                            ((lambda (_L20810_ _L20811_)
                                               (gxc#compile-e _L20810_))
                                             _hd2077520805_
                                             _hd2077220797_)
                                            (_g2075020781_ _g2075120784_))))
                                    (_g2075020781_ _g2075120784_))))
                            (_g2075020781_ _g2075120784_))))
                    (_g2075020781_ _g2075120784_))))
             (_g2074820888_
              (lambda (_g2075120829_)
                (if (gx#stx-pair? _g2075120829_)
                    (let ((_e2075420831_ (gx#stx-e _g2075120829_)))
                      (let ((_hd2075520834_ (##car _e2075420831_))
                            (_tl2075620836_ (##cdr _e2075420831_)))
                        (if (gx#stx-pair? _tl2075620836_)
                            (let ((_e2075720839_ (gx#stx-e _tl2075620836_)))
                              (let ((_hd2075820842_ (##car _e2075720839_))
                                    (_tl2075920844_ (##cdr _e2075720839_)))
                                (if (gx#stx-pair? _hd2075820842_)
                                    (let ((_e2076020847_
                                           (gx#stx-e _hd2075820842_)))
                                      (let ((_hd2076120850_
                                             (##car _e2076020847_))
                                            (_tl2076220852_
                                             (##cdr _e2076020847_)))
                                        (if (gx#stx-null? _tl2076220852_)
                                            (if (gx#stx-pair? _tl2075920844_)
                                                (let ((_e2076320855_
                                                       (gx#stx-e
                                                        _tl2075920844_)))
                                                  (let ((_hd2076420858_
                                                         (##car _e2076320855_))
                                                        (_tl2076520860_
                                                         (##cdr _e2076320855_)))
                                                    (if (gx#stx-null?
                                                         _tl2076520860_)
                                                        ((lambda (_L20863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20864_)
                   (if (gx#identifier? _L20864_)
                       (let ((_sym20880_ (gxc#identifier-symbol _L20864_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20880_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20880_)
                               (let ((_type2088120883_
                                      (gxc#apply-basic-expression-type
                                       _L20863_)))
                                 (if _type2088120883_
                                     (let ((_type20886_ _type2088120883_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20880_
                                        _type20886_))
                                     '#f)))
                           (gxc#compile-e _L20863_)))
                       (_g2074920826_ _g2075120829_)))
                 _hd2076420858_
                 _hd2076120850_)
                (_g2074920826_ _g2075120829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2074920826_ _g2075120829_))
                                            (_g2074920826_ _g2075120829_))))
                                    (_g2074920826_ _g2075120829_))))
                            (_g2074920826_ _g2075120829_))))
                    (_g2074920826_ _g2075120829_)))))
        (_g2074820888_ _stx20747_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20532_)
      (letrec ((_collect-e20534_
                (lambda (_hd20691_ _expr20692_)
                  (let* ((_g2069520705_
                          (lambda (_g2069620702_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2069620702_)))
                         (_g2069420712_
                          (lambda (_g2069620708_) ((lambda () '#!void))))
                         (_g2069320744_
                          (lambda (_g2069620715_)
                            (if (gx#stx-pair? _g2069620715_)
                                (let ((_e2069820717_ (gx#stx-e _g2069620715_)))
                                  (let ((_hd2069920720_ (##car _e2069820717_))
                                        (_tl2070020722_ (##cdr _e2069820717_)))
                                    (if (gx#stx-null? _tl2070020722_)
                                        ((lambda (_L20725_)
                                           (if (gx#identifier? _L20725_)
                                               (let ((_sym20736_
                                                      (gxc#identifier-symbol
                                                       _L20725_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20736_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20736_)
                                                     (let ((_type2073720739_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20692_)))
                                                       (if _type2073720739_
                                                           (let ((_type20742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2073720739_))
                     (gxc#optimizer-declare-type!__%
                      _sym20736_
                      _type20742_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2069420712_ _g2069620715_)))
                                         _hd2069920720_)
                                        (_g2069420712_ _g2069620715_))))
                                (_g2069420712_ _g2069620715_)))))
                    (_g2069320744_ _hd20691_)))))
        (let* ((_g2053620571_
                (lambda (_g2053720568_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2053720568_)))
               (_g2053520688_
                (lambda (_g2053720574_)
                  (if (gx#stx-pair? _g2053720574_)
                      (let ((_e2054120576_ (gx#stx-e _g2053720574_)))
                        (let ((_hd2054220579_ (##car _e2054120576_))
                              (_tl2054320581_ (##cdr _e2054120576_)))
                          (if (gx#stx-pair? _tl2054320581_)
                              (let ((_e2054420584_ (gx#stx-e _tl2054320581_)))
                                (let ((_hd2054520587_ (##car _e2054420584_))
                                      (_tl2054620589_ (##cdr _e2054420584_)))
                                  (if (gx#stx-pair/null? _hd2054520587_)
                                      (if (fx>= (gx#stx-length _hd2054520587_)
                                                '0)
                                          (let ((_g27932_
                                                 (gx#syntax-split-splice
                                                  _hd2054520587_
                                                  '0)))
                                            (begin
                                              (let ((_g27933_
                                                     (if (##values? _g27932_)
                                                         (##vector-length
                                                          _g27932_)
                                                         1)))
                                                (if (not (##fx= _g27933_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27933_)))
                                              (let ((_target2054720592_
                                                     (##vector-ref _g27932_ 0))
                                                    (_tl2054920594_
                                                     (##vector-ref
                                                      _g27932_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2054920594_)
                                                    (letrec ((_loop2055020597_
                                                              (lambda (_hd2054820600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2055420602_
                               _hd2055520604_)
                        (if (gx#stx-pair? _hd2054820600_)
                            (let ((_e2055120607_ (gx#stx-e _hd2054820600_)))
                              (let ((_lp-hd2055220610_ (##car _e2055120607_))
                                    (_lp-tl2055320612_ (##cdr _e2055120607_)))
                                (if (gx#stx-pair? _lp-hd2055220610_)
                                    (let ((_e2055820615_
                                           (gx#stx-e _lp-hd2055220610_)))
                                      (let ((_hd2055920618_
                                             (##car _e2055820615_))
                                            (_tl2056020620_
                                             (##cdr _e2055820615_)))
                                        (if (gx#stx-pair? _tl2056020620_)
                                            (let ((_e2056120623_
                                                   (gx#stx-e _tl2056020620_)))
                                              (let ((_hd2056220626_
                                                     (##car _e2056120623_))
                                                    (_tl2056320628_
                                                     (##cdr _e2056120623_)))
                                                (if (gx#stx-null?
                                                     _tl2056320628_)
                                                    (_loop2055020597_
                                                     _lp-tl2055320612_
                                                     (cons _hd2056220626_
                                                           _expr2055420602_)
                                                     (cons _hd2055920618_
                                                           _hd2055520604_))
                                                    (_g2053620571_
                                                     _g2053720574_))))
                                            (_g2053620571_ _g2053720574_))))
                                    (_g2053620571_ _g2053720574_))))
                            (let ((_expr2055620631_ (reverse _expr2055420602_))
                                  (_hd2055720633_ (reverse _hd2055520604_)))
                              (if (gx#stx-pair? _tl2054620589_)
                                  (let ((_e2056420636_
                                         (gx#stx-e _tl2054620589_)))
                                    (let ((_hd2056520639_
                                           (##car _e2056420636_))
                                          (_tl2056620641_
                                           (##cdr _e2056420636_)))
                                      (if (gx#stx-null? _tl2056620641_)
                                          ((lambda (_L20644_ _L20645_ _L20646_)
                                             (begin
                                               (for-each
                                                _collect-e20534_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2066620669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2066720671_)
                    (cons _g2066620669_ _g2066720671_))
                  '()
                  _L20646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2067320676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2067420678_)
                    (cons _g2067320676_ _g2067420678_))
                  '()
                  _L20645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2068020683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2068120685_)
                    (cons _g2068020683_ _g2068120685_))
                  '()
                  _L20645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20644_)))
                                           _hd2056520639_
                                           _expr2055620631_
                                           _hd2055720633_)
                                          (_g2053620571_ _g2053720574_))))
                                  (_g2053620571_ _g2053720574_)))))))
              (_loop2055020597_ _target2054720592_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2053620571_
                                                     _g2053720574_)))))
                                          (_g2053620571_ _g2053720574_))
                                      (_g2053620571_ _g2053720574_))))
                              (_g2053620571_ _g2053720574_))))
                      (_g2053620571_ _g2053720574_)))))
          (_g2053520688_ _stx20532_)))))
  (define gxc#collect-type-call%
    (lambda (_stx20086_)
      (let* ((_g2009020192_
              (lambda (_g2009120189_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2009120189_)))
             (_g2008920199_ (lambda (_g2009120195_) ((lambda () '#!void))))
             (_g2008820349_
              (lambda (_g2009120202_)
                (if (gx#stx-pair? _g2009120202_)
                    (let ((_e2014920204_ (gx#stx-e _g2009120202_)))
                      (let ((_hd2015020207_ (##car _e2014920204_))
                            (_tl2015120209_ (##cdr _e2014920204_)))
                        (if (gx#stx-pair? _tl2015120209_)
                            (let ((_e2015220212_ (gx#stx-e _tl2015120209_)))
                              (let ((_hd2015320215_ (##car _e2015220212_))
                                    (_tl2015420217_ (##cdr _e2015220212_)))
                                (if (gx#stx-pair? _hd2015320215_)
                                    (let ((_e2015520220_
                                           (gx#stx-e _hd2015320215_)))
                                      (let ((_hd2015620223_
                                             (##car _e2015520220_))
                                            (_tl2015720225_
                                             (##cdr _e2015520220_)))
                                        (if (gx#identifier? _hd2015620223_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2015620223_)
                                                (if (gx#stx-pair?
                                                     _tl2015720225_)
                                                    (let ((_e2015820228_
                                                           (gx#stx-e
                                                            _tl2015720225_)))
                                                      (let ((_hd2015920231_
                                                             (##car _e2015820228_))
                                                            (_tl2016020233_
                                                             (##cdr _e2015820228_)))
                                                        (if (gx#stx-null?
                                                             _tl2016020233_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2015420217_)
                        (let ((_e2016120236_ (gx#stx-e _tl2015420217_)))
                          (let ((_hd2016220239_ (##car _e2016120236_))
                                (_tl2016320241_ (##cdr _e2016120236_)))
                            (if (gx#stx-pair? _hd2016220239_)
                                (let ((_e2016420244_
                                       (gx#stx-e _hd2016220239_)))
                                  (let ((_hd2016520247_ (##car _e2016420244_))
                                        (_tl2016620249_ (##cdr _e2016420244_)))
                                    (if (gx#identifier? _hd2016520247_)
                                        (if (gx#stx-eq? '%#ref _hd2016520247_)
                                            (if (gx#stx-pair? _tl2016620249_)
                                                (let ((_e2016720252_
                                                       (gx#stx-e
                                                        _tl2016620249_)))
                                                  (let ((_hd2016820255_
                                                         (##car _e2016720252_))
                                                        (_tl2016920257_
                                                         (##cdr _e2016720252_)))
                                                    (if (gx#stx-null?
                                                         _tl2016920257_)
                                                        (if (gx#stx-pair?
                                                             _tl2016320241_)
                                                            (let ((_e2017020260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2016320241_)))
                      (let ((_hd2017120263_ (##car _e2017020260_))
                            (_tl2017220265_ (##cdr _e2017020260_)))
                        (if (gx#stx-pair? _hd2017120263_)
                            (let ((_e2017320268_ (gx#stx-e _hd2017120263_)))
                              (let ((_hd2017420271_ (##car _e2017320268_))
                                    (_tl2017520273_ (##cdr _e2017320268_)))
                                (if (gx#identifier? _hd2017420271_)
                                    (if (gx#stx-eq? '%#quote _hd2017420271_)
                                        (if (gx#stx-pair? _tl2017520273_)
                                            (let ((_e2017620276_
                                                   (gx#stx-e _tl2017520273_)))
                                              (let ((_hd2017720279_
                                                     (##car _e2017620276_))
                                                    (_tl2017820281_
                                                     (##cdr _e2017620276_)))
                                                (if (gx#stx-null?
                                                     _tl2017820281_)
                                                    (if (gx#stx-pair?
                                                         _tl2017220265_)
                                                        (let ((_e2017920284_
                                                               (gx#stx-e
                                                                _tl2017220265_)))
                                                          (let ((_hd2018020287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2017920284_))
                        (_tl2018120289_ (##cdr _e2017920284_)))
                    (if (gx#stx-pair? _hd2018020287_)
                        (let ((_e2018220292_ (gx#stx-e _hd2018020287_)))
                          (let ((_hd2018320295_ (##car _e2018220292_))
                                (_tl2018420297_ (##cdr _e2018220292_)))
                            (if (gx#identifier? _hd2018320295_)
                                (if (gx#stx-eq? '%#ref _hd2018320295_)
                                    (if (gx#stx-pair? _tl2018420297_)
                                        (let ((_e2018520300_
                                               (gx#stx-e _tl2018420297_)))
                                          (let ((_hd2018620303_
                                                 (##car _e2018520300_))
                                                (_tl2018720305_
                                                 (##cdr _e2018520300_)))
                                            (if (gx#stx-null? _tl2018720305_)
                                                (if (gx#stx-null?
                                                     _tl2018120289_)
                                                    ((lambda (_L20308_
                                                              _L20309_
                                                              _L20310_
                                                              _L20311_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#identifier-symbol _L20310_)
                    (gx#stx-e _L20309_)
                    (gxc#identifier-symbol _L20308_)
                    '#f)
                   (_g2008920199_ _g2009120202_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2018620303_
                                                     _hd2017720279_
                                                     _hd2016820255_
                                                     _hd2015920231_)
                                                    (_g2008920199_
                                                     _g2009120202_))
                                                (_g2008920199_
                                                 _g2009120202_))))
                                        (_g2008920199_ _g2009120202_))
                                    (_g2008920199_ _g2009120202_))
                                (_g2008920199_ _g2009120202_))))
                        (_g2008920199_ _g2009120202_))))
                (_g2008920199_ _g2009120202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008920199_
                                                     _g2009120202_))))
                                            (_g2008920199_ _g2009120202_))
                                        (_g2008920199_ _g2009120202_))
                                    (_g2008920199_ _g2009120202_))))
                            (_g2008920199_ _g2009120202_))))
                    (_g2008920199_ _g2009120202_))
                (_g2008920199_ _g2009120202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2008920199_ _g2009120202_))
                                            (_g2008920199_ _g2009120202_))
                                        (_g2008920199_ _g2009120202_))))
                                (_g2008920199_ _g2009120202_))))
                        (_g2008920199_ _g2009120202_))
                    (_g2008920199_ _g2009120202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008920199_
                                                     _g2009120202_))
                                                (_g2008920199_ _g2009120202_))
                                            (_g2008920199_ _g2009120202_))))
                                    (_g2008920199_ _g2009120202_))))
                            (_g2008920199_ _g2009120202_))))
                    (_g2008920199_ _g2009120202_))))
             (_g2008720529_
              (lambda (_g2009120352_)
                (if (gx#stx-pair? _g2009120352_)
                    (let ((_e2009720354_ (gx#stx-e _g2009120352_)))
                      (let ((_hd2009820357_ (##car _e2009720354_))
                            (_tl2009920359_ (##cdr _e2009720354_)))
                        (if (gx#stx-pair? _tl2009920359_)
                            (let ((_e2010020362_ (gx#stx-e _tl2009920359_)))
                              (let ((_hd2010120365_ (##car _e2010020362_))
                                    (_tl2010220367_ (##cdr _e2010020362_)))
                                (if (gx#stx-pair? _hd2010120365_)
                                    (let ((_e2010320370_
                                           (gx#stx-e _hd2010120365_)))
                                      (let ((_hd2010420373_
                                             (##car _e2010320370_))
                                            (_tl2010520375_
                                             (##cdr _e2010320370_)))
                                        (if (gx#identifier? _hd2010420373_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2010420373_)
                                                (if (gx#stx-pair?
                                                     _tl2010520375_)
                                                    (let ((_e2010620378_
                                                           (gx#stx-e
                                                            _tl2010520375_)))
                                                      (let ((_hd2010720381_
                                                             (##car _e2010620378_))
                                                            (_tl2010820383_
                                                             (##cdr _e2010620378_)))
                                                        (if (gx#stx-null?
                                                             _tl2010820383_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2010220367_)
                        (let ((_e2010920386_ (gx#stx-e _tl2010220367_)))
                          (let ((_hd2011020389_ (##car _e2010920386_))
                                (_tl2011120391_ (##cdr _e2010920386_)))
                            (if (gx#stx-pair? _hd2011020389_)
                                (let ((_e2011220394_
                                       (gx#stx-e _hd2011020389_)))
                                  (let ((_hd2011320397_ (##car _e2011220394_))
                                        (_tl2011420399_ (##cdr _e2011220394_)))
                                    (if (gx#identifier? _hd2011320397_)
                                        (if (gx#stx-eq? '%#ref _hd2011320397_)
                                            (if (gx#stx-pair? _tl2011420399_)
                                                (let ((_e2011520402_
                                                       (gx#stx-e
                                                        _tl2011420399_)))
                                                  (let ((_hd2011620405_
                                                         (##car _e2011520402_))
                                                        (_tl2011720407_
                                                         (##cdr _e2011520402_)))
                                                    (if (gx#stx-null?
                                                         _tl2011720407_)
                                                        (if (gx#stx-pair?
                                                             _tl2011120391_)
                                                            (let ((_e2011820410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2011120391_)))
                      (let ((_hd2011920413_ (##car _e2011820410_))
                            (_tl2012020415_ (##cdr _e2011820410_)))
                        (if (gx#stx-pair? _hd2011920413_)
                            (let ((_e2012120418_ (gx#stx-e _hd2011920413_)))
                              (let ((_hd2012220421_ (##car _e2012120418_))
                                    (_tl2012320423_ (##cdr _e2012120418_)))
                                (if (gx#identifier? _hd2012220421_)
                                    (if (gx#stx-eq? '%#quote _hd2012220421_)
                                        (if (gx#stx-pair? _tl2012320423_)
                                            (let ((_e2012420426_
                                                   (gx#stx-e _tl2012320423_)))
                                              (let ((_hd2012520429_
                                                     (##car _e2012420426_))
                                                    (_tl2012620431_
                                                     (##cdr _e2012420426_)))
                                                (if (gx#stx-null?
                                                     _tl2012620431_)
                                                    (if (gx#stx-pair?
                                                         _tl2012020415_)
                                                        (let ((_e2012720434_
                                                               (gx#stx-e
                                                                _tl2012020415_)))
                                                          (let ((_hd2012820437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2012720434_))
                        (_tl2012920439_ (##cdr _e2012720434_)))
                    (if (gx#stx-pair? _hd2012820437_)
                        (let ((_e2013020442_ (gx#stx-e _hd2012820437_)))
                          (let ((_hd2013120445_ (##car _e2013020442_))
                                (_tl2013220447_ (##cdr _e2013020442_)))
                            (if (gx#identifier? _hd2013120445_)
                                (if (gx#stx-eq? '%#ref _hd2013120445_)
                                    (if (gx#stx-pair? _tl2013220447_)
                                        (let ((_e2013320450_
                                               (gx#stx-e _tl2013220447_)))
                                          (let ((_hd2013420453_
                                                 (##car _e2013320450_))
                                                (_tl2013520455_
                                                 (##cdr _e2013320450_)))
                                            (if (gx#stx-null? _tl2013520455_)
                                                (if (gx#stx-pair?
                                                     _tl2012920439_)
                                                    (let ((_e2013620458_
                                                           (gx#stx-e
                                                            _tl2012920439_)))
                                                      (let ((_hd2013720461_
                                                             (##car _e2013620458_))
                                                            (_tl2013820463_
                                                             (##cdr _e2013620458_)))
                                                        (if (gx#stx-pair?
                                                             _hd2013720461_)
                                                            (let ((_e2013920466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2013720461_)))
                      (let ((_hd2014020469_ (##car _e2013920466_))
                            (_tl2014120471_ (##cdr _e2013920466_)))
                        (if (gx#identifier? _hd2014020469_)
                            (if (gx#stx-eq? '%#quote _hd2014020469_)
                                (if (gx#stx-pair? _tl2014120471_)
                                    (let ((_e2014220474_
                                           (gx#stx-e _tl2014120471_)))
                                      (let ((_hd2014320477_
                                             (##car _e2014220474_))
                                            (_tl2014420479_
                                             (##cdr _e2014220474_)))
                                        (if (gx#stx-null? _tl2014420479_)
                                            (if (gx#stx-null? _tl2013820463_)
                                                ((lambda (_L20482_
                                                          _L20483_
                                                          _L20484_
                                                          _L20485_
                                                          _L20486_)
                                                   (if (eq? (gxc#identifier-symbol
                                                             _L20486_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#identifier-symbol
                                                         _L20485_)
                                                        (gx#stx-e _L20484_)
                                                        (gxc#identifier-symbol
                                                         _L20483_)
                                                        (gx#stx-e _L20482_))
                                                       (_g2008820349_
                                                        _g2009120352_)))
                                                 _hd2014320477_
                                                 _hd2013420453_
                                                 _hd2012520429_
                                                 _hd2011620405_
                                                 _hd2010720381_)
                                                (_g2008820349_ _g2009120352_))
                                            (_g2008820349_ _g2009120352_))))
                                    (_g2008820349_ _g2009120352_))
                                (_g2008820349_ _g2009120352_))
                            (_g2008820349_ _g2009120352_))))
                    (_g2008820349_ _g2009120352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008820349_
                                                     _g2009120352_))
                                                (_g2008820349_
                                                 _g2009120352_))))
                                        (_g2008820349_ _g2009120352_))
                                    (_g2008820349_ _g2009120352_))
                                (_g2008820349_ _g2009120352_))))
                        (_g2008820349_ _g2009120352_))))
                (_g2008820349_ _g2009120352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008820349_
                                                     _g2009120352_))))
                                            (_g2008820349_ _g2009120352_))
                                        (_g2008820349_ _g2009120352_))
                                    (_g2008820349_ _g2009120352_))))
                            (_g2008820349_ _g2009120352_))))
                    (_g2008820349_ _g2009120352_))
                (_g2008820349_ _g2009120352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2008820349_ _g2009120352_))
                                            (_g2008820349_ _g2009120352_))
                                        (_g2008820349_ _g2009120352_))))
                                (_g2008820349_ _g2009120352_))))
                        (_g2008820349_ _g2009120352_))
                    (_g2008820349_ _g2009120352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2008820349_
                                                     _g2009120352_))
                                                (_g2008820349_ _g2009120352_))
                                            (_g2008820349_ _g2009120352_))))
                                    (_g2008820349_ _g2009120352_))))
                            (_g2008820349_ _g2009120352_))))
                    (_g2008820349_ _g2009120352_)))))
        (_g2008720529_ _stx20086_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx20026_)
      (let* ((_g2002920042_
              (lambda (_g2003020039_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2003020039_)))
             (_g2002820049_ (lambda (_g2003020045_) ((lambda () '#f))))
             (_g2002720083_
              (lambda (_g2003020052_)
                (if (gx#stx-pair? _g2003020052_)
                    (let ((_e2003220054_ (gx#stx-e _g2003020052_)))
                      (let ((_hd2003320057_ (##car _e2003220054_))
                            (_tl2003420059_ (##cdr _e2003220054_)))
                        (if (gx#stx-pair? _tl2003420059_)
                            (let ((_e2003520062_ (gx#stx-e _tl2003420059_)))
                              (let ((_hd2003620065_ (##car _e2003520062_))
                                    (_tl2003720067_ (##cdr _e2003520062_)))
                                (if (gx#stx-null? _tl2003720067_)
                                    ((lambda (_L20070_)
                                       (gxc#compile-e _L20070_))
                                     _hd2003620065_)
                                    (_g2002820049_ _g2003020052_))))
                            (_g2002820049_ _g2003020052_))))
                    (_g2002820049_ _g2003020052_)))))
        (_g2002720083_ _stx20026_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19959_)
      (let* ((_g1996119978_
              (lambda (_g1996219975_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1996219975_)))
             (_g1996020023_
              (lambda (_g1996219981_)
                (if (gx#stx-pair? _g1996219981_)
                    (let ((_e1996519983_ (gx#stx-e _g1996219981_)))
                      (let ((_hd1996619986_ (##car _e1996519983_))
                            (_tl1996719988_ (##cdr _e1996519983_)))
                        (if (gx#stx-pair? _tl1996719988_)
                            (let ((_e1996819991_ (gx#stx-e _tl1996719988_)))
                              (let ((_hd1996919994_ (##car _e1996819991_))
                                    (_tl1997019996_ (##cdr _e1996819991_)))
                                (if (gx#stx-pair? _tl1997019996_)
                                    (let ((_e1997119999_
                                           (gx#stx-e _tl1997019996_)))
                                      (let ((_hd1997220002_
                                             (##car _e1997119999_))
                                            (_tl1997320004_
                                             (##cdr _e1997119999_)))
                                        (if (gx#stx-null? _tl1997320004_)
                                            ((lambda (_L20007_ _L20008_)
                                               (gxc#compile-e _L20007_))
                                             _hd1997220002_
                                             _hd1996919994_)
                                            (_g1996119978_ _g1996219981_))))
                                    (_g1996119978_ _g1996219981_))))
                            (_g1996119978_ _g1996219981_))))
                    (_g1996119978_ _g1996219981_)))))
        (_g1996020023_ _stx19959_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18600_)
      (let* ((_g1860718906_
              (lambda (_g1860818903_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1860818903_)))
             (_g1860618913_ (lambda (_g1860818909_) ((lambda () '#f))))
             (_g1860519302_
              (lambda (_g1860818916_)
                (if (gx#stx-pair? _g1860818916_)
                    (let ((_e1879718918_ (gx#stx-e _g1860818916_)))
                      (let ((_hd1879818921_ (##car _e1879718918_))
                            (_tl1879918923_ (##cdr _e1879718918_)))
                        (if (gx#stx-pair? _tl1879918923_)
                            (let ((_e1880018926_ (gx#stx-e _tl1879918923_)))
                              (let ((_hd1880118929_ (##car _e1880018926_))
                                    (_tl1880218931_ (##cdr _e1880018926_)))
                                (if (gx#stx-pair? _hd1880118929_)
                                    (let ((_e1880318934_
                                           (gx#stx-e _hd1880118929_)))
                                      (let ((_hd1880418937_
                                             (##car _e1880318934_))
                                            (_tl1880518939_
                                             (##cdr _e1880318934_)))
                                        (if (gx#stx-pair? _tl1880218931_)
                                            (let ((_e1880618942_
                                                   (gx#stx-e _tl1880218931_)))
                                              (let ((_hd1880718945_
                                                     (##car _e1880618942_))
                                                    (_tl1880818947_
                                                     (##cdr _e1880618942_)))
                                                (if (gx#stx-pair?
                                                     _hd1880718945_)
                                                    (let ((_e1880918950_
                                                           (gx#stx-e
                                                            _hd1880718945_)))
                                                      (let ((_hd1881018953_
                                                             (##car _e1880918950_))
                                                            (_tl1881118955_
                                                             (##cdr _e1880918950_)))
                                                        (if (gx#identifier?
                                                             _hd1881018953_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1881018953_)
                        (if (gx#stx-pair? _tl1881118955_)
                            (let ((_e1881218958_ (gx#stx-e _tl1881118955_)))
                              (let ((_hd1881318961_ (##car _e1881218958_))
                                    (_tl1881418963_ (##cdr _e1881218958_)))
                                (if (gx#stx-pair? _hd1881318961_)
                                    (let ((_e1881518966_
                                           (gx#stx-e _hd1881318961_)))
                                      (let ((_hd1881618969_
                                             (##car _e1881518966_))
                                            (_tl1881718971_
                                             (##cdr _e1881518966_)))
                                        (if (gx#identifier? _hd1881618969_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1881618969_)
                                                (if (gx#stx-pair?
                                                     _tl1881718971_)
                                                    (let ((_e1881818974_
                                                           (gx#stx-e
                                                            _tl1881718971_)))
                                                      (let ((_hd1881918977_
                                                             (##car _e1881818974_))
                                                            (_tl1882018979_
                                                             (##cdr _e1881818974_)))
                                                        (if (gx#stx-null?
                                                             _tl1882018979_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1881418963_)
                        (let ((_e1882118982_ (gx#stx-e _tl1881418963_)))
                          (let ((_hd1882218985_ (##car _e1882118982_))
                                (_tl1882318987_ (##cdr _e1882118982_)))
                            (if (gx#stx-pair? _hd1882218985_)
                                (let ((_e1882418990_
                                       (gx#stx-e _hd1882218985_)))
                                  (let ((_hd1882518993_ (##car _e1882418990_))
                                        (_tl1882618995_ (##cdr _e1882418990_)))
                                    (if (gx#identifier? _hd1882518993_)
                                        (if (gx#stx-eq? '%#ref _hd1882518993_)
                                            (if (gx#stx-pair? _tl1882618995_)
                                                (let ((_e1882718998_
                                                       (gx#stx-e
                                                        _tl1882618995_)))
                                                  (let ((_hd1882819001_
                                                         (##car _e1882718998_))
                                                        (_tl1882919003_
                                                         (##cdr _e1882718998_)))
                                                    (if (gx#stx-null?
                                                         _tl1882919003_)
                                                        (if (gx#stx-pair?
                                                             _tl1882318987_)
                                                            (let ((_e1883019006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1882318987_)))
                      (let ((_hd1883119009_ (##car _e1883019006_))
                            (_tl1883219011_ (##cdr _e1883019006_)))
                        (if (gx#stx-pair? _hd1883119009_)
                            (let ((_e1883319014_ (gx#stx-e _hd1883119009_)))
                              (let ((_hd1883419017_ (##car _e1883319014_))
                                    (_tl1883519019_ (##cdr _e1883319014_)))
                                (if (gx#identifier? _hd1883419017_)
                                    (if (gx#stx-eq? '%#ref _hd1883419017_)
                                        (if (gx#stx-pair? _tl1883519019_)
                                            (let ((_e1883619022_
                                                   (gx#stx-e _tl1883519019_)))
                                              (let ((_hd1883719025_
                                                     (##car _e1883619022_))
                                                    (_tl1883819027_
                                                     (##cdr _e1883619022_)))
                                                (if (gx#stx-null?
                                                     _tl1883819027_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1883219011_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1883219011_)
                          '1)
                    (let ((_g27934_
                           (gx#syntax-split-splice _tl1883219011_ '1)))
                      (begin
                        (let ((_g27935_
                               (if (##values? _g27934_)
                                   (##vector-length _g27934_)
                                   1)))
                          (if (not (##fx= _g27935_ 2))
                              (error "Context expects 2 values" _g27935_)))
                        (let ((_target1883919030_ (##vector-ref _g27934_ 0))
                              (_tl1884119032_ (##vector-ref _g27934_ 1)))
                          (if (gx#stx-pair? _tl1884119032_)
                              (let ((_e1885419035_ (gx#stx-e _tl1884119032_)))
                                (let ((_hd1885519038_ (##car _e1885419035_))
                                      (_tl1885619040_ (##cdr _e1885419035_)))
                                  (if (gx#stx-pair? _hd1885519038_)
                                      (let ((_e1885719043_
                                             (gx#stx-e _hd1885519038_)))
                                        (let ((_hd1885819046_
                                               (##car _e1885719043_))
                                              (_tl1885919048_
                                               (##cdr _e1885719043_)))
                                          (if (gx#identifier? _hd1885819046_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1885819046_)
                                                  (if (gx#stx-pair?
                                                       _tl1885919048_)
                                                      (let ((_e1886019051_
                                                             (gx#stx-e
                                                              _tl1885919048_)))
                                                        (let ((_hd1886119054_
                                                               (##car _e1886019051_))
                                                              (_tl1886219056_
                                                               (##cdr _e1886019051_)))
                                                          (if (gx#stx-null?
                                                               _tl1886219056_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1885619040_)
                          (letrec ((_loop1884219059_
                                    (lambda (_hd1884019062_
                                             _-absent-value1884619064_
                                             _key1884719066_
                                             _-xkwvar1884819068_
                                             _-hash-ref1884919070_)
                                      (if (gx#stx-pair? _hd1884019062_)
                                          (let ((_e1884319073_
                                                 (gx#stx-e _hd1884019062_)))
                                            (let ((_lp-hd1884419076_
                                                   (##car _e1884319073_))
                                                  (_lp-tl1884519078_
                                                   (##cdr _e1884319073_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1884419076_)
                                                  (let ((_e1886319081_
                                                         (gx#stx-e
                                                          _lp-hd1884419076_)))
                                                    (let ((_hd1886419084_
                                                           (##car _e1886319081_))
                                                          (_tl1886519086_
                                                           (##cdr _e1886319081_)))
                                                      (if (gx#identifier?
                                                           _hd1886419084_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1886419084_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1886519086_)
                          (let ((_e1886619089_ (gx#stx-e _tl1886519086_)))
                            (let ((_hd1886719092_ (##car _e1886619089_))
                                  (_tl1886819094_ (##cdr _e1886619089_)))
                              (if (gx#stx-pair? _hd1886719092_)
                                  (let ((_e1886919097_
                                         (gx#stx-e _hd1886719092_)))
                                    (let ((_hd1887019100_
                                           (##car _e1886919097_))
                                          (_tl1887119102_
                                           (##cdr _e1886919097_)))
                                      (if (gx#identifier? _hd1887019100_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1887019100_)
                                              (if (gx#stx-pair? _tl1887119102_)
                                                  (let ((_e1887219105_
                                                         (gx#stx-e
                                                          _tl1887119102_)))
                                                    (let ((_hd1887319108_
                                                           (##car _e1887219105_))
                                                          (_tl1887419110_
                                                           (##cdr _e1887219105_)))
                                                      (if (gx#stx-null?
                                                           _tl1887419110_)
                                                          (if (gx#stx-pair?
                                                               _tl1886819094_)
                                                              (let ((_e1887519113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1886819094_)))
                        (let ((_hd1887619116_ (##car _e1887519113_))
                              (_tl1887719118_ (##cdr _e1887519113_)))
                          (if (gx#stx-pair? _hd1887619116_)
                              (let ((_e1887819121_ (gx#stx-e _hd1887619116_)))
                                (let ((_hd1887919124_ (##car _e1887819121_))
                                      (_tl1888019126_ (##cdr _e1887819121_)))
                                  (if (gx#identifier? _hd1887919124_)
                                      (if (gx#stx-eq? '%#ref _hd1887919124_)
                                          (if (gx#stx-pair? _tl1888019126_)
                                              (let ((_e1888119129_
                                                     (gx#stx-e
                                                      _tl1888019126_)))
                                                (let ((_hd1888219132_
                                                       (##car _e1888119129_))
                                                      (_tl1888319134_
                                                       (##cdr _e1888119129_)))
                                                  (if (gx#stx-null?
                                                       _tl1888319134_)
                                                      (if (gx#stx-pair?
                                                           _tl1887719118_)
                                                          (let ((_e1888419137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1887719118_)))
                    (let ((_hd1888519140_ (##car _e1888419137_))
                          (_tl1888619142_ (##cdr _e1888419137_)))
                      (if (gx#stx-pair? _hd1888519140_)
                          (let ((_e1888719145_ (gx#stx-e _hd1888519140_)))
                            (let ((_hd1888819148_ (##car _e1888719145_))
                                  (_tl1888919150_ (##cdr _e1888719145_)))
                              (if (gx#identifier? _hd1888819148_)
                                  (if (gx#stx-eq? '%#quote _hd1888819148_)
                                      (if (gx#stx-pair? _tl1888919150_)
                                          (let ((_e1889019153_
                                                 (gx#stx-e _tl1888919150_)))
                                            (let ((_hd1889119156_
                                                   (##car _e1889019153_))
                                                  (_tl1889219158_
                                                   (##cdr _e1889019153_)))
                                              (if (gx#stx-null? _tl1889219158_)
                                                  (if (gx#stx-pair?
                                                       _tl1888619142_)
                                                      (let ((_e1889319161_
                                                             (gx#stx-e
                                                              _tl1888619142_)))
                                                        (let ((_hd1889419164_
                                                               (##car _e1889319161_))
                                                              (_tl1889519166_
                                                               (##cdr _e1889319161_)))
                                                          (if (gx#stx-pair?
                                                               _hd1889419164_)
                                                              (let ((_e1889619169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1889419164_)))
                        (let ((_hd1889719172_ (##car _e1889619169_))
                              (_tl1889819174_ (##cdr _e1889619169_)))
                          (if (gx#identifier? _hd1889719172_)
                              (if (gx#stx-eq? '%#ref _hd1889719172_)
                                  (if (gx#stx-pair? _tl1889819174_)
                                      (let ((_e1889919177_
                                             (gx#stx-e _tl1889819174_)))
                                        (let ((_hd1890019180_
                                               (##car _e1889919177_))
                                              (_tl1890119182_
                                               (##cdr _e1889919177_)))
                                          (if (gx#stx-null? _tl1890119182_)
                                              (if (gx#stx-null? _tl1889519166_)
                                                  (_loop1884219059_
                                                   _lp-tl1884519078_
                                                   (cons _hd1890019180_
                                                         _-absent-value1884619064_)
                                                   (cons _hd1889119156_
                                                         _key1884719066_)
                                                   (cons _hd1888219132_
                                                         _-xkwvar1884819068_)
                                                   (cons _hd1887319108_
                                                         _-hash-ref1884919070_))
                                                  (_g1860618913_
                                                   _g1860818916_))
                                              (_g1860618913_ _g1860818916_))))
                                      (_g1860618913_ _g1860818916_))
                                  (_g1860618913_ _g1860818916_))
                              (_g1860618913_ _g1860818916_))))
                      (_g1860618913_ _g1860818916_))))
              (_g1860618913_ _g1860818916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860618913_
                                                   _g1860818916_))))
                                          (_g1860618913_ _g1860818916_))
                                      (_g1860618913_ _g1860818916_))
                                  (_g1860618913_ _g1860818916_))))
                          (_g1860618913_ _g1860818916_))))
                  (_g1860618913_ _g1860818916_))
              (_g1860618913_ _g1860818916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1860618913_ _g1860818916_))
                                          (_g1860618913_ _g1860818916_))
                                      (_g1860618913_ _g1860818916_))))
                              (_g1860618913_ _g1860818916_))))
                      (_g1860618913_ _g1860818916_))
                  (_g1860618913_ _g1860818916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860618913_
                                                   _g1860818916_))
                                              (_g1860618913_ _g1860818916_))
                                          (_g1860618913_ _g1860818916_))))
                                  (_g1860618913_ _g1860818916_))))
                          (_g1860618913_ _g1860818916_))
                      (_g1860618913_ _g1860818916_))
                  (_g1860618913_ _g1860818916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860618913_
                                                   _g1860818916_))))
                                          (let ((_-absent-value1885019185_
                                                 (reverse _-absent-value1884619064_))
                                                (_key1885119187_
                                                 (reverse _key1884719066_))
                                                (_-xkwvar1885219189_
                                                 (reverse _-xkwvar1884819068_))
                                                (_-hash-ref1885319191_
                                                 (reverse _-hash-ref1884919070_)))
                                            (if (gx#stx-null? _tl1880818947_)
                                                ((lambda (_L19194_
                                                          _L19195_
                                                          _L19196_
                                                          _L19197_
                                                          _L19198_
                                                          _L19199_
                                                          _L19200_
                                                          _L19201_
                                                          _L19202_
                                                          _L19203_)
                                                   (if (if (gx#identifier?
                                                            _L19203_)
                                                           (if (gx#identifier?
                                                                _L19202_)
                                                               (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L19201_)
                                'apply)
                           (if (gx#free-identifier=? _L19203_ _L19199_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1925819261_
                                                               _g1925919263_)
                                                        (cons _g1925819261_
                                                              _g1925919263_))
                                                      '()
                                                      _L19196_)))
                                   (if (andmap1 (lambda (_id19266_)
                                                  (eq? (gxc#identifier-symbol
                                                        _id19266_)
                                                       'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1926719270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1926819272_)
                    (cons _g1926719270_ _g1926819272_))
                  '()
                  _L19198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_id19275_)
                                                      (eq? (gxc#identifier-symbol
                                                            _id19275_)
                                                           'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1927619279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1927719281_)
                        (cons _g1927619279_ _g1927719281_))
                      '()
                      _L19195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1928319285_)
                                                      (gx#free-identifier=?
                                                       _g1928319285_
                                                       _L19203_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1928719290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1928819292_)
                        (cons _g1928719290_ _g1928819292_))
                      '()
                      _L19197_)))
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
                       (foldr1 (lambda (_g1929419297_ _g1929519299_)
                                 (cons _g1929419297_ _g1929519299_))
                               '()
                               _L19196_)))
                (gxc#identifier-symbol _L19200_))
               (_g1860618913_ _g1860818916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1886119054_
                                                 _-absent-value1885019185_
                                                 _key1885119187_
                                                 _-xkwvar1885219189_
                                                 _-hash-ref1885319191_
                                                 _hd1883719025_
                                                 _hd1882819001_
                                                 _hd1881918977_
                                                 _tl1880518939_
                                                 _hd1880418937_)
                                                (_g1860618913_
                                                 _g1860818916_)))))))
                            (_loop1884219059_
                             _target1883919030_
                             '()
                             '()
                             '()
                             '()))
                          (_g1860618913_ _g1860818916_))
                      (_g1860618913_ _g1860818916_))))
              (_g1860618913_ _g1860818916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1860618913_
                                                   _g1860818916_))
                                              (_g1860618913_ _g1860818916_))))
                                      (_g1860618913_ _g1860818916_))))
                              (_g1860618913_ _g1860818916_)))))
                    (_g1860618913_ _g1860818916_))
                (_g1860618913_ _g1860818916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860618913_
                                                     _g1860818916_))))
                                            (_g1860618913_ _g1860818916_))
                                        (_g1860618913_ _g1860818916_))
                                    (_g1860618913_ _g1860818916_))))
                            (_g1860618913_ _g1860818916_))))
                    (_g1860618913_ _g1860818916_))
                (_g1860618913_ _g1860818916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860618913_ _g1860818916_))
                                            (_g1860618913_ _g1860818916_))
                                        (_g1860618913_ _g1860818916_))))
                                (_g1860618913_ _g1860818916_))))
                        (_g1860618913_ _g1860818916_))
                    (_g1860618913_ _g1860818916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860618913_
                                                     _g1860818916_))
                                                (_g1860618913_ _g1860818916_))
                                            (_g1860618913_ _g1860818916_))))
                                    (_g1860618913_ _g1860818916_))))
                            (_g1860618913_ _g1860818916_))
                        (_g1860618913_ _g1860818916_))
                    (_g1860618913_ _g1860818916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860618913_
                                                     _g1860818916_))))
                                            (_g1860618913_ _g1860818916_))))
                                    (_g1860618913_ _g1860818916_))))
                            (_g1860618913_ _g1860818916_))))
                    (_g1860618913_ _g1860818916_))))
             (_g1860419519_
              (lambda (_g1860819305_)
                (if (gx#stx-pair? _g1860819305_)
                    (let ((_e1873019307_ (gx#stx-e _g1860819305_)))
                      (let ((_hd1873119310_ (##car _e1873019307_))
                            (_tl1873219312_ (##cdr _e1873019307_)))
                        (if (gx#stx-pair? _tl1873219312_)
                            (let ((_e1873319315_ (gx#stx-e _tl1873219312_)))
                              (let ((_hd1873419318_ (##car _e1873319315_))
                                    (_tl1873519320_ (##cdr _e1873319315_)))
                                (if (gx#stx-pair? _tl1873519320_)
                                    (let ((_e1873619323_
                                           (gx#stx-e _tl1873519320_)))
                                      (let ((_hd1873719326_
                                             (##car _e1873619323_))
                                            (_tl1873819328_
                                             (##cdr _e1873619323_)))
                                        (if (gx#stx-pair? _hd1873719326_)
                                            (let ((_e1873919331_
                                                   (gx#stx-e _hd1873719326_)))
                                              (let ((_hd1874019334_
                                                     (##car _e1873919331_))
                                                    (_tl1874119336_
                                                     (##cdr _e1873919331_)))
                                                (if (gx#identifier?
                                                     _hd1874019334_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1874019334_)
                                                        (if (gx#stx-pair?
                                                             _tl1874119336_)
                                                            (let ((_e1874219339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1874119336_)))
                      (let ((_hd1874319342_ (##car _e1874219339_))
                            (_tl1874419344_ (##cdr _e1874219339_)))
                        (if (gx#stx-pair? _hd1874319342_)
                            (let ((_e1874519347_ (gx#stx-e _hd1874319342_)))
                              (let ((_hd1874619350_ (##car _e1874519347_))
                                    (_tl1874719352_ (##cdr _e1874519347_)))
                                (if (gx#identifier? _hd1874619350_)
                                    (if (gx#stx-eq? '%#ref _hd1874619350_)
                                        (if (gx#stx-pair? _tl1874719352_)
                                            (let ((_e1874819355_
                                                   (gx#stx-e _tl1874719352_)))
                                              (let ((_hd1874919358_
                                                     (##car _e1874819355_))
                                                    (_tl1875019360_
                                                     (##cdr _e1874819355_)))
                                                (if (gx#stx-null?
                                                     _tl1875019360_)
                                                    (if (gx#stx-pair?
                                                         _tl1874419344_)
                                                        (let ((_e1875119363_
                                                               (gx#stx-e
                                                                _tl1874419344_)))
                                                          (let ((_hd1875219366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1875119363_))
                        (_tl1875319368_ (##cdr _e1875119363_)))
                    (if (gx#stx-pair? _hd1875219366_)
                        (let ((_e1875419371_ (gx#stx-e _hd1875219366_)))
                          (let ((_hd1875519374_ (##car _e1875419371_))
                                (_tl1875619376_ (##cdr _e1875419371_)))
                            (if (gx#identifier? _hd1875519374_)
                                (if (gx#stx-eq? '%#ref _hd1875519374_)
                                    (if (gx#stx-pair? _tl1875619376_)
                                        (let ((_e1875719379_
                                               (gx#stx-e _tl1875619376_)))
                                          (let ((_hd1875819382_
                                                 (##car _e1875719379_))
                                                (_tl1875919384_
                                                 (##cdr _e1875719379_)))
                                            (if (gx#stx-null? _tl1875919384_)
                                                (if (gx#stx-pair?
                                                     _tl1875319368_)
                                                    (let ((_e1876019387_
                                                           (gx#stx-e
                                                            _tl1875319368_)))
                                                      (let ((_hd1876119390_
                                                             (##car _e1876019387_))
                                                            (_tl1876219392_
                                                             (##cdr _e1876019387_)))
                                                        (if (gx#stx-pair?
                                                             _hd1876119390_)
                                                            (let ((_e1876319395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1876119390_)))
                      (let ((_hd1876419398_ (##car _e1876319395_))
                            (_tl1876519400_ (##cdr _e1876319395_)))
                        (if (gx#identifier? _hd1876419398_)
                            (if (gx#stx-eq? '%#quote _hd1876419398_)
                                (if (gx#stx-pair? _tl1876519400_)
                                    (let ((_e1876619403_
                                           (gx#stx-e _tl1876519400_)))
                                      (let ((_hd1876719406_
                                             (##car _e1876619403_))
                                            (_tl1876819408_
                                             (##cdr _e1876619403_)))
                                        (if (gx#stx-null? _tl1876819408_)
                                            (if (gx#stx-pair? _tl1876219392_)
                                                (let ((_e1876919411_
                                                       (gx#stx-e
                                                        _tl1876219392_)))
                                                  (let ((_hd1877019414_
                                                         (##car _e1876919411_))
                                                        (_tl1877119416_
                                                         (##cdr _e1876919411_)))
                                                    (if (gx#stx-pair?
                                                         _hd1877019414_)
                                                        (let ((_e1877219419_
                                                               (gx#stx-e
                                                                _hd1877019414_)))
                                                          (let ((_hd1877319422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1877219419_))
                        (_tl1877419424_ (##cdr _e1877219419_)))
                    (if (gx#identifier? _hd1877319422_)
                        (if (gx#stx-eq? '%#ref _hd1877319422_)
                            (if (gx#stx-pair? _tl1877419424_)
                                (let ((_e1877519427_
                                       (gx#stx-e _tl1877419424_)))
                                  (let ((_hd1877619430_ (##car _e1877519427_))
                                        (_tl1877719432_ (##cdr _e1877519427_)))
                                    (if (gx#stx-null? _tl1877719432_)
                                        (if (gx#stx-pair? _tl1877119416_)
                                            (let ((_e1877819435_
                                                   (gx#stx-e _tl1877119416_)))
                                              (let ((_hd1877919438_
                                                     (##car _e1877819435_))
                                                    (_tl1878019440_
                                                     (##cdr _e1877819435_)))
                                                (if (gx#stx-pair?
                                                     _hd1877919438_)
                                                    (let ((_e1878119443_
                                                           (gx#stx-e
                                                            _hd1877919438_)))
                                                      (let ((_hd1878219446_
                                                             (##car _e1878119443_))
                                                            (_tl1878319448_
                                                             (##cdr _e1878119443_)))
                                                        (if (gx#identifier?
                                                             _hd1878219446_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1878219446_)
                        (if (gx#stx-pair? _tl1878319448_)
                            (let ((_e1878419451_ (gx#stx-e _tl1878319448_)))
                              (let ((_hd1878519454_ (##car _e1878419451_))
                                    (_tl1878619456_ (##cdr _e1878419451_)))
                                (if (gx#stx-null? _tl1878619456_)
                                    (if (gx#stx-null? _tl1878019440_)
                                        (if (gx#stx-null? _tl1873819328_)
                                            ((lambda (_L19459_
                                                      _L19460_
                                                      _L19461_
                                                      _L19462_
                                                      _L19463_
                                                      _L19464_)
                                               (if (if (gx#identifier?
                                                        _L19464_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L19463_)
                        'apply)
                   (if (eq? (gxc#identifier-symbol _L19462_) 'keyword-dispatch)
                       (gx#free-identifier=? _L19464_ _L19459_)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_tab19514_
                                                           (gx#stx-e _L19461_))
                                                          (_keys19516_
                                                           (if _tab19514_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab19514_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys19516_
                                                      (gxc#identifier-symbol
                                                       _L19460_)))
                                                   (_g1860519302_
                                                    _g1860819305_)))
                                             _hd1878519454_
                                             _hd1877619430_
                                             _hd1876719406_
                                             _hd1875819382_
                                             _hd1874919358_
                                             _hd1873419318_)
                                            (_g1860519302_ _g1860819305_))
                                        (_g1860519302_ _g1860819305_))
                                    (_g1860519302_ _g1860819305_))))
                            (_g1860519302_ _g1860819305_))
                        (_g1860519302_ _g1860819305_))
                    (_g1860519302_ _g1860819305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860519302_
                                                     _g1860819305_))))
                                            (_g1860519302_ _g1860819305_))
                                        (_g1860519302_ _g1860819305_))))
                                (_g1860519302_ _g1860819305_))
                            (_g1860519302_ _g1860819305_))
                        (_g1860519302_ _g1860819305_))))
                (_g1860519302_ _g1860819305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860519302_ _g1860819305_))
                                            (_g1860519302_ _g1860819305_))))
                                    (_g1860519302_ _g1860819305_))
                                (_g1860519302_ _g1860819305_))
                            (_g1860519302_ _g1860819305_))))
                    (_g1860519302_ _g1860819305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860519302_
                                                     _g1860819305_))
                                                (_g1860519302_
                                                 _g1860819305_))))
                                        (_g1860519302_ _g1860819305_))
                                    (_g1860519302_ _g1860819305_))
                                (_g1860519302_ _g1860819305_))))
                        (_g1860519302_ _g1860819305_))))
                (_g1860519302_ _g1860819305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860519302_
                                                     _g1860819305_))))
                                            (_g1860519302_ _g1860819305_))
                                        (_g1860519302_ _g1860819305_))
                                    (_g1860519302_ _g1860819305_))))
                            (_g1860519302_ _g1860819305_))))
                    (_g1860519302_ _g1860819305_))
                (_g1860519302_ _g1860819305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860519302_
                                                     _g1860819305_))))
                                            (_g1860519302_ _g1860819305_))))
                                    (_g1860519302_ _g1860819305_))))
                            (_g1860519302_ _g1860819305_))))
                    (_g1860519302_ _g1860819305_))))
             (_g1860319541_
              (lambda (_g1860819522_)
                (if (gx#stx-pair? _g1860819522_)
                    (let ((_e1872119524_ (gx#stx-e _g1860819522_)))
                      (let ((_hd1872219527_ (##car _e1872119524_))
                            (_tl1872319529_ (##cdr _e1872119524_)))
                        ((lambda (_L19532_)
                           (if (gxc#dispatch-lambda-form? _L19532_)
                               (let ((__obj27864
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27864
                                    'lambda
                                    (gxc#lambda-form-arity _L19532_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19532_))
                                   __obj27864))
                               (_g1860419519_ _g1860819522_)))
                         _tl1872319529_)))
                    (_g1860419519_ _g1860819522_))))
             (_g1860219771_
              (lambda (_g1860819544_)
                (if (gx#stx-pair? _g1860819544_)
                    (let ((_e1866619546_ (gx#stx-e _g1860819544_)))
                      (let ((_hd1866719549_ (##car _e1866619546_))
                            (_tl1866819551_ (##cdr _e1866619546_)))
                        (if (gx#stx-pair? _tl1866819551_)
                            (let ((_e1866919554_ (gx#stx-e _tl1866819551_)))
                              (let ((_hd1867019557_ (##car _e1866919554_))
                                    (_tl1867119559_ (##cdr _e1866919554_)))
                                (if (gx#stx-pair/null? _hd1867019557_)
                                    (if (fx>= (gx#stx-length _hd1867019557_)
                                              '0)
                                        (let ((_g27936_
                                               (gx#syntax-split-splice
                                                _hd1867019557_
                                                '0)))
                                          (begin
                                            (let ((_g27937_
                                                   (if (##values? _g27936_)
                                                       (##vector-length
                                                        _g27936_)
                                                       1)))
                                              (if (not (##fx= _g27937_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27937_)))
                                            (let ((_target1867219562_
                                                   (##vector-ref _g27936_ 0))
                                                  (_tl1867419564_
                                                   (##vector-ref _g27936_ 1)))
                                              (if (gx#stx-null? _tl1867419564_)
                                                  (letrec ((_loop1867519567_
                                                            (lambda (_hd1867319570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1867919572_)
                      (if (gx#stx-pair? _hd1867319570_)
                          (let ((_e1867619575_ (gx#stx-e _hd1867319570_)))
                            (let ((_lp-hd1867719578_ (##car _e1867619575_))
                                  (_lp-tl1867819580_ (##cdr _e1867619575_)))
                              (_loop1867519567_
                               _lp-tl1867819580_
                               (cons _lp-hd1867719578_ _arg1867919572_))))
                          (let ((_arg1868019583_ (reverse _arg1867919572_)))
                            (if (gx#stx-pair? _tl1867119559_)
                                (let ((_e1868119586_
                                       (gx#stx-e _tl1867119559_)))
                                  (let ((_hd1868219589_ (##car _e1868119586_))
                                        (_tl1868319591_ (##cdr _e1868119586_)))
                                    (if (gx#stx-pair? _hd1868219589_)
                                        (let ((_e1868419594_
                                               (gx#stx-e _hd1868219589_)))
                                          (let ((_hd1868519597_
                                                 (##car _e1868419594_))
                                                (_tl1868619599_
                                                 (##cdr _e1868419594_)))
                                            (if (gx#identifier? _hd1868519597_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1868519597_)
                                                    (if (gx#stx-pair?
                                                         _tl1868619599_)
                                                        (let ((_e1868719602_
                                                               (gx#stx-e
                                                                _tl1868619599_)))
                                                          (let ((_hd1868819605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1868719602_))
                        (_tl1868919607_ (##cdr _e1868719602_)))
                    (if (gx#stx-pair? _hd1868819605_)
                        (let ((_e1869019610_ (gx#stx-e _hd1868819605_)))
                          (let ((_hd1869119613_ (##car _e1869019610_))
                                (_tl1869219615_ (##cdr _e1869019610_)))
                            (if (gx#identifier? _hd1869119613_)
                                (if (gx#stx-eq? '%#ref _hd1869119613_)
                                    (if (gx#stx-pair? _tl1869219615_)
                                        (let ((_e1869319618_
                                               (gx#stx-e _tl1869219615_)))
                                          (let ((_hd1869419621_
                                                 (##car _e1869319618_))
                                                (_tl1869519623_
                                                 (##cdr _e1869319618_)))
                                            (if (gx#stx-null? _tl1869519623_)
                                                (if (gx#stx-pair?
                                                     _tl1868919607_)
                                                    (let ((_e1869619626_
                                                           (gx#stx-e
                                                            _tl1868919607_)))
                                                      (let ((_hd1869719629_
                                                             (##car _e1869619626_))
                                                            (_tl1869819631_
                                                             (##cdr _e1869619626_)))
                                                        (if (gx#stx-pair?
                                                             _hd1869719629_)
                                                            (let ((_e1869919634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1869719629_)))
                      (let ((_hd1870019637_ (##car _e1869919634_))
                            (_tl1870119639_ (##cdr _e1869919634_)))
                        (if (gx#identifier? _hd1870019637_)
                            (if (gx#stx-eq? '%#ref _hd1870019637_)
                                (if (gx#stx-pair? _tl1870119639_)
                                    (let ((_e1870219642_
                                           (gx#stx-e _tl1870119639_)))
                                      (let ((_hd1870319645_
                                             (##car _e1870219642_))
                                            (_tl1870419647_
                                             (##cdr _e1870219642_)))
                                        (if (gx#stx-null? _tl1870419647_)
                                            (if (gx#stx-pair/null?
                                                 _tl1869819631_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1869819631_)
                                                          '0)
                                                    (let ((_g27938_
                                                           (gx#syntax-split-splice
                                                            _tl1869819631_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27939_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g27938_)
                           (##vector-length _g27938_)
                           1)))
                  (if (not (##fx= _g27939_ 2))
                      (error "Context expects 2 values" _g27939_)))
                (let ((_target1870519650_ (##vector-ref _g27938_ 0))
                      (_tl1870719652_ (##vector-ref _g27938_ 1)))
                  (if (gx#stx-null? _tl1870719652_)
                      (letrec ((_loop1870819655_
                                (lambda (_hd1870619658_ _xarg1871219660_)
                                  (if (gx#stx-pair? _hd1870619658_)
                                      (let ((_e1870919663_
                                             (gx#stx-e _hd1870619658_)))
                                        (let ((_lp-hd1871019666_
                                               (##car _e1870919663_))
                                              (_lp-tl1871119668_
                                               (##cdr _e1870919663_)))
                                          (if (gx#stx-pair? _lp-hd1871019666_)
                                              (let ((_e1871419671_
                                                     (gx#stx-e
                                                      _lp-hd1871019666_)))
                                                (let ((_hd1871519674_
                                                       (##car _e1871419671_))
                                                      (_tl1871619676_
                                                       (##cdr _e1871419671_)))
                                                  (if (gx#identifier?
                                                       _hd1871519674_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1871519674_)
                                                          (if (gx#stx-pair?
                                                               _tl1871619676_)
                                                              (let ((_e1871719679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1871619676_)))
                        (let ((_hd1871819682_ (##car _e1871719679_))
                              (_tl1871919684_ (##cdr _e1871719679_)))
                          (if (gx#stx-null? _tl1871919684_)
                              (_loop1870819655_
                               _lp-tl1871119668_
                               (cons _hd1871819682_ _xarg1871219660_))
                              (_g1860319541_ _g1860819544_))))
                      (_g1860319541_ _g1860819544_))
                  (_g1860319541_ _g1860819544_))
              (_g1860319541_ _g1860819544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1860319541_ _g1860819544_))))
                                      (let ((_xarg1871319687_
                                             (reverse _xarg1871219660_)))
                                        (if (gx#stx-null? _tl1868319591_)
                                            ((lambda (_L19690_
                                                      _L19691_
                                                      _L19692_
                                                      _L19693_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1973019733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1973119735_)
                            (cons _g1973019733_ _g1973119735_))
                          '()
                          _L19693_)))
               (if (eq? (gxc#identifier-symbol _L19692_) 'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1973719740_
                                                       _g1973819742_)
                                                (cons _g1973719740_
                                                      _g1973819742_))
                                              '()
                                              _L19693_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1974419747_
                                                       _g1974519749_)
                                                (cons _g1974419747_
                                                      _g1974519749_))
                                              '()
                                              _L19690_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1975119754_ _g1975219756_)
                                            (cons _g1975119754_ _g1975219756_))
                                          '()
                                          _L19693_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1975819761_ _g1975919763_)
                                            (cons _g1975819761_ _g1975919763_))
                                          '()
                                          _L19690_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19766_
                                                           (gxc#identifier-symbol
                                                            _L19691_))
                                                          (_type19768_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19766_)))
                                                     (if (##structure-instance-of?
                                                          _type19768_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19766_)
                                                         '#f))
                                                   (_g1860319541_
                                                    _g1860819544_)))
                                             _xarg1871319687_
                                             _hd1870319645_
                                             _hd1869419621_
                                             _arg1868019583_)
                                            (_g1860319541_ _g1860819544_)))))))
                        (_loop1870819655_ _target1870519650_ '()))
                      (_g1860319541_ _g1860819544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860319541_
                                                     _g1860819544_))
                                                (_g1860319541_ _g1860819544_))
                                            (_g1860319541_ _g1860819544_))))
                                    (_g1860319541_ _g1860819544_))
                                (_g1860319541_ _g1860819544_))
                            (_g1860319541_ _g1860819544_))))
                    (_g1860319541_ _g1860819544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860319541_
                                                     _g1860819544_))
                                                (_g1860319541_
                                                 _g1860819544_))))
                                        (_g1860319541_ _g1860819544_))
                                    (_g1860319541_ _g1860819544_))
                                (_g1860319541_ _g1860819544_))))
                        (_g1860319541_ _g1860819544_))))
                (_g1860319541_ _g1860819544_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860319541_
                                                     _g1860819544_))
                                                (_g1860319541_
                                                 _g1860819544_))))
                                        (_g1860319541_ _g1860819544_))))
                                (_g1860319541_ _g1860819544_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1867519567_
                                                     _target1867219562_
                                                     '()))
                                                  (_g1860319541_
                                                   _g1860819544_)))))
                                        (_g1860319541_ _g1860819544_))
                                    (_g1860319541_ _g1860819544_))))
                            (_g1860319541_ _g1860819544_))))
                    (_g1860319541_ _g1860819544_))))
             (_g1860119956_
              (lambda (_g1860819774_)
                (if (gx#stx-pair? _g1860819774_)
                    (let ((_e1861419776_ (gx#stx-e _g1860819774_)))
                      (let ((_hd1861519779_ (##car _e1861419776_))
                            (_tl1861619781_ (##cdr _e1861419776_)))
                        (if (gx#stx-pair? _tl1861619781_)
                            (let ((_e1861719784_ (gx#stx-e _tl1861619781_)))
                              (let ((_hd1861819787_ (##car _e1861719784_))
                                    (_tl1861919789_ (##cdr _e1861719784_)))
                                (if (gx#stx-pair? _tl1861919789_)
                                    (let ((_e1862019792_
                                           (gx#stx-e _tl1861919789_)))
                                      (let ((_hd1862119795_
                                             (##car _e1862019792_))
                                            (_tl1862219797_
                                             (##cdr _e1862019792_)))
                                        (if (gx#stx-pair? _hd1862119795_)
                                            (let ((_e1862319800_
                                                   (gx#stx-e _hd1862119795_)))
                                              (let ((_hd1862419803_
                                                     (##car _e1862319800_))
                                                    (_tl1862519805_
                                                     (##cdr _e1862319800_)))
                                                (if (gx#identifier?
                                                     _hd1862419803_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1862419803_)
                                                        (if (gx#stx-pair?
                                                             _tl1862519805_)
                                                            (let ((_e1862619808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1862519805_)))
                      (let ((_hd1862719811_ (##car _e1862619808_))
                            (_tl1862819813_ (##cdr _e1862619808_)))
                        (if (gx#stx-pair? _hd1862719811_)
                            (let ((_e1862919816_ (gx#stx-e _hd1862719811_)))
                              (let ((_hd1863019819_ (##car _e1862919816_))
                                    (_tl1863119821_ (##cdr _e1862919816_)))
                                (if (gx#identifier? _hd1863019819_)
                                    (if (gx#stx-eq? '%#ref _hd1863019819_)
                                        (if (gx#stx-pair? _tl1863119821_)
                                            (let ((_e1863219824_
                                                   (gx#stx-e _tl1863119821_)))
                                              (let ((_hd1863319827_
                                                     (##car _e1863219824_))
                                                    (_tl1863419829_
                                                     (##cdr _e1863219824_)))
                                                (if (gx#stx-null?
                                                     _tl1863419829_)
                                                    (if (gx#stx-pair?
                                                         _tl1862819813_)
                                                        (let ((_e1863519832_
                                                               (gx#stx-e
                                                                _tl1862819813_)))
                                                          (let ((_hd1863619835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1863519832_))
                        (_tl1863719837_ (##cdr _e1863519832_)))
                    (if (gx#stx-pair? _hd1863619835_)
                        (let ((_e1863819840_ (gx#stx-e _hd1863619835_)))
                          (let ((_hd1863919843_ (##car _e1863819840_))
                                (_tl1864019845_ (##cdr _e1863819840_)))
                            (if (gx#identifier? _hd1863919843_)
                                (if (gx#stx-eq? '%#ref _hd1863919843_)
                                    (if (gx#stx-pair? _tl1864019845_)
                                        (let ((_e1864119848_
                                               (gx#stx-e _tl1864019845_)))
                                          (let ((_hd1864219851_
                                                 (##car _e1864119848_))
                                                (_tl1864319853_
                                                 (##cdr _e1864119848_)))
                                            (if (gx#stx-null? _tl1864319853_)
                                                (if (gx#stx-pair?
                                                     _tl1863719837_)
                                                    (let ((_e1864419856_
                                                           (gx#stx-e
                                                            _tl1863719837_)))
                                                      (let ((_hd1864519859_
                                                             (##car _e1864419856_))
                                                            (_tl1864619861_
                                                             (##cdr _e1864419856_)))
                                                        (if (gx#stx-pair?
                                                             _hd1864519859_)
                                                            (let ((_e1864719864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1864519859_)))
                      (let ((_hd1864819867_ (##car _e1864719864_))
                            (_tl1864919869_ (##cdr _e1864719864_)))
                        (if (gx#identifier? _hd1864819867_)
                            (if (gx#stx-eq? '%#ref _hd1864819867_)
                                (if (gx#stx-pair? _tl1864919869_)
                                    (let ((_e1865019872_
                                           (gx#stx-e _tl1864919869_)))
                                      (let ((_hd1865119875_
                                             (##car _e1865019872_))
                                            (_tl1865219877_
                                             (##cdr _e1865019872_)))
                                        (if (gx#stx-null? _tl1865219877_)
                                            (if (gx#stx-pair? _tl1864619861_)
                                                (let ((_e1865319880_
                                                       (gx#stx-e
                                                        _tl1864619861_)))
                                                  (let ((_hd1865419883_
                                                         (##car _e1865319880_))
                                                        (_tl1865519885_
                                                         (##cdr _e1865319880_)))
                                                    (if (gx#stx-pair?
                                                         _hd1865419883_)
                                                        (let ((_e1865619888_
                                                               (gx#stx-e
                                                                _hd1865419883_)))
                                                          (let ((_hd1865719891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1865619888_))
                        (_tl1865819893_ (##cdr _e1865619888_)))
                    (if (gx#identifier? _hd1865719891_)
                        (if (gx#stx-eq? '%#ref _hd1865719891_)
                            (if (gx#stx-pair? _tl1865819893_)
                                (let ((_e1865919896_
                                       (gx#stx-e _tl1865819893_)))
                                  (let ((_hd1866019899_ (##car _e1865919896_))
                                        (_tl1866119901_ (##cdr _e1865919896_)))
                                    (if (gx#stx-null? _tl1866119901_)
                                        (if (gx#stx-null? _tl1865519885_)
                                            (if (gx#stx-null? _tl1862219797_)
                                                ((lambda (_L19904_
                                                          _L19905_
                                                          _L19906_
                                                          _L19907_
                                                          _L19908_)
                                                   (if (if (gx#identifier?
                                                            _L19908_)
                                                           (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19907_)
                            'apply)
                       (if (eq? (gxc#identifier-symbol _L19906_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L19908_ _L19904_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19951_ (gxc#identifier-symbol _L19905_))
                      (_type19953_ (gxc#optimizer-resolve-type _type-t19951_)))
                 (if (##structure-instance-of?
                      _type19953_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19951_)
                     '#f))
               (_g1860219771_ _g1860819774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1866019899_
                                                 _hd1865119875_
                                                 _hd1864219851_
                                                 _hd1863319827_
                                                 _hd1861819787_)
                                                (_g1860219771_ _g1860819774_))
                                            (_g1860219771_ _g1860819774_))
                                        (_g1860219771_ _g1860819774_))))
                                (_g1860219771_ _g1860819774_))
                            (_g1860219771_ _g1860819774_))
                        (_g1860219771_ _g1860819774_))))
                (_g1860219771_ _g1860819774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860219771_ _g1860819774_))
                                            (_g1860219771_ _g1860819774_))))
                                    (_g1860219771_ _g1860819774_))
                                (_g1860219771_ _g1860819774_))
                            (_g1860219771_ _g1860819774_))))
                    (_g1860219771_ _g1860819774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219771_
                                                     _g1860819774_))
                                                (_g1860219771_
                                                 _g1860819774_))))
                                        (_g1860219771_ _g1860819774_))
                                    (_g1860219771_ _g1860819774_))
                                (_g1860219771_ _g1860819774_))))
                        (_g1860219771_ _g1860819774_))))
                (_g1860219771_ _g1860819774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219771_
                                                     _g1860819774_))))
                                            (_g1860219771_ _g1860819774_))
                                        (_g1860219771_ _g1860819774_))
                                    (_g1860219771_ _g1860819774_))))
                            (_g1860219771_ _g1860819774_))))
                    (_g1860219771_ _g1860819774_))
                (_g1860219771_ _g1860819774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1860219771_
                                                     _g1860819774_))))
                                            (_g1860219771_ _g1860819774_))))
                                    (_g1860219771_ _g1860819774_))))
                            (_g1860219771_ _g1860819774_))))
                    (_g1860219771_ _g1860819774_)))))
        (_g1860119956_ _stx18600_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18546_)
      (letrec ((_clause-e18548_
                (lambda (_form18598_)
                  (let ((__obj27865 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27865
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18598_)
                       (gxc#dispatch-lambda-form-delegate _form18598_))
                      __obj27865)))))
        (let* ((_g1855118561_
                (lambda (_g1855218558_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1855218558_)))
               (_g1855018568_ (lambda (_g1855218564_) ((lambda () '#f))))
               (_g1854918595_
                (lambda (_g1855218571_)
                  (if (gx#stx-pair? _g1855218571_)
                      (let ((_e1855418573_ (gx#stx-e _g1855218571_)))
                        (let ((_hd1855518576_ (##car _e1855418573_))
                              (_tl1855618578_ (##cdr _e1855418573_)))
                          ((lambda (_L18581_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18581_)
                                 (let ((_clauses18593_
                                        (map _clause-e18548_ _L18581_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18593_))
                                 (_g1855018568_ _g1855218571_)))
                           _tl1855618578_)))
                      (_g1855018568_ _g1855218571_)))))
          (_g1854918595_ _stx18546_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx18451_)
      (let* ((_g1845418474_
              (lambda (_g1845518471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1845518471_)))
             (_g1845318481_ (lambda (_g1845518477_) ((lambda () '#f))))
             (_g1845218543_
              (lambda (_g1845518484_)
                (if (gx#stx-pair? _g1845518484_)
                    (let ((_e1845818486_ (gx#stx-e _g1845518484_)))
                      (let ((_hd1845918489_ (##car _e1845818486_))
                            (_tl1846018491_ (##cdr _e1845818486_)))
                        (if (gx#stx-pair? _tl1846018491_)
                            (let ((_e1846118494_ (gx#stx-e _tl1846018491_)))
                              (let ((_hd1846218497_ (##car _e1846118494_))
                                    (_tl1846318499_ (##cdr _e1846118494_)))
                                (if (gx#stx-pair? _hd1846218497_)
                                    (let ((_e1846418502_
                                           (gx#stx-e _hd1846218497_)))
                                      (let ((_hd1846518505_
                                             (##car _e1846418502_))
                                            (_tl1846618507_
                                             (##cdr _e1846418502_)))
                                        (if (gx#identifier? _hd1846518505_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1846518505_)
                                                (if (gx#stx-pair?
                                                     _tl1846618507_)
                                                    (let ((_e1846718510_
                                                           (gx#stx-e
                                                            _tl1846618507_)))
                                                      (let ((_hd1846818513_
                                                             (##car _e1846718510_))
                                                            (_tl1846918515_
                                                             (##cdr _e1846718510_)))
                                                        (if (gx#stx-null?
                                                             _tl1846918515_)
                                                            ((lambda (_L18518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18519_)
                       (let ((_type-e1853618538_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#identifier-symbol _L18519_)
                               '#f)))
                         (if _type-e1853618538_
                             (let ((_type-e18541_ _type-e1853618538_))
                               (_type-e18541_ _stx18451_ _L18518_))
                             '#f)))
                     _tl1846318499_
                     _hd1846818513_)
                    (_g1845318481_ _g1845518484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1845318481_
                                                     _g1845518484_))
                                                (_g1845318481_ _g1845518484_))
                                            (_g1845318481_ _g1845518484_))))
                                    (_g1845318481_ _g1845518484_))))
                            (_g1845318481_ _g1845518484_))))
                    (_g1845318481_ _g1845518484_)))))
        (_g1845218543_ _stx18451_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17936_ _args17937_)
      (let* ((_g1794118054_
              (lambda (_g1794218051_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1794218051_)))
             (_g1794018061_
              (lambda (_g1794218057_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17936_))
                     '#f)))))
             (_g1793918268_
              (lambda (_g1794218064_)
                (if (gx#stx-pair? _g1794218064_)
                    (let ((_e1800218066_ (gx#stx-e _g1794218064_)))
                      (let ((_hd1800318069_ (##car _e1800218066_))
                            (_tl1800418071_ (##cdr _e1800218066_)))
                        (if (gx#stx-pair? _hd1800318069_)
                            (let ((_e1800518074_ (gx#stx-e _hd1800318069_)))
                              (let ((_hd1800618077_ (##car _e1800518074_))
                                    (_tl1800718079_ (##cdr _e1800518074_)))
                                (if (gx#identifier? _hd1800618077_)
                                    (if (gx#stx-eq? '%#quote _hd1800618077_)
                                        (if (gx#stx-pair? _tl1800718079_)
                                            (let ((_e1800818082_
                                                   (gx#stx-e _tl1800718079_)))
                                              (let ((_hd1800918085_
                                                     (##car _e1800818082_))
                                                    (_tl1801018087_
                                                     (##cdr _e1800818082_)))
                                                (if (gx#stx-null?
                                                     _tl1801018087_)
                                                    (if (gx#stx-pair?
                                                         _tl1800418071_)
                                                        (let ((_e1801118090_
                                                               (gx#stx-e
                                                                _tl1800418071_)))
                                                          (let ((_hd1801218093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1801118090_))
                        (_tl1801318095_ (##cdr _e1801118090_)))
                    (if (gx#stx-pair? _hd1801218093_)
                        (let ((_e1801418098_ (gx#stx-e _hd1801218093_)))
                          (let ((_hd1801518101_ (##car _e1801418098_))
                                (_tl1801618103_ (##cdr _e1801418098_)))
                            (if (gx#identifier? _hd1801518101_)
                                (if (gx#stx-eq? '%#ref _hd1801518101_)
                                    (if (gx#stx-pair? _tl1801618103_)
                                        (let ((_e1801718106_
                                               (gx#stx-e _tl1801618103_)))
                                          (let ((_hd1801818109_
                                                 (##car _e1801718106_))
                                                (_tl1801918111_
                                                 (##cdr _e1801718106_)))
                                            (if (gx#stx-null? _tl1801918111_)
                                                (if (gx#stx-pair?
                                                     _tl1801318095_)
                                                    (let ((_e1802018114_
                                                           (gx#stx-e
                                                            _tl1801318095_)))
                                                      (let ((_hd1802118117_
                                                             (##car _e1802018114_))
                                                            (_tl1802218119_
                                                             (##cdr _e1802018114_)))
                                                        (if (gx#stx-pair?
                                                             _hd1802118117_)
                                                            (let ((_e1802318122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1802118117_)))
                      (let ((_hd1802418125_ (##car _e1802318122_))
                            (_tl1802518127_ (##cdr _e1802318122_)))
                        (if (gx#identifier? _hd1802418125_)
                            (if (gx#stx-eq? '%#quote _hd1802418125_)
                                (if (gx#stx-pair? _tl1802518127_)
                                    (let ((_e1802618130_
                                           (gx#stx-e _tl1802518127_)))
                                      (let ((_hd1802718133_
                                             (##car _e1802618130_))
                                            (_tl1802818135_
                                             (##cdr _e1802618130_)))
                                        (if (gx#stx-null? _tl1802818135_)
                                            (if (gx#stx-pair? _tl1802218119_)
                                                (let ((_e1802918138_
                                                       (gx#stx-e
                                                        _tl1802218119_)))
                                                  (let ((_hd1803018141_
                                                         (##car _e1802918138_))
                                                        (_tl1803118143_
                                                         (##cdr _e1802918138_)))
                                                    (if (gx#stx-pair?
                                                         _tl1803118143_)
                                                        (let ((_e1803218146_
                                                               (gx#stx-e
                                                                _tl1803118143_)))
                                                          (let ((_hd1803318149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1803218146_))
                        (_tl1803418151_ (##cdr _e1803218146_)))
                    (if (gx#stx-pair? _hd1803318149_)
                        (let ((_e1803518154_ (gx#stx-e _hd1803318149_)))
                          (let ((_hd1803618157_ (##car _e1803518154_))
                                (_tl1803718159_ (##cdr _e1803518154_)))
                            (if (gx#identifier? _hd1803618157_)
                                (if (gx#stx-eq? '%#quote _hd1803618157_)
                                    (if (gx#stx-pair? _tl1803718159_)
                                        (let ((_e1803818162_
                                               (gx#stx-e _tl1803718159_)))
                                          (let ((_hd1803918165_
                                                 (##car _e1803818162_))
                                                (_tl1804018167_
                                                 (##cdr _e1803818162_)))
                                            (if (gx#stx-null? _tl1804018167_)
                                                (if (gx#stx-pair?
                                                     _tl1803418151_)
                                                    (let ((_e1804118170_
                                                           (gx#stx-e
                                                            _tl1803418151_)))
                                                      (let ((_hd1804218173_
                                                             (##car _e1804118170_))
                                                            (_tl1804318175_
                                                             (##cdr _e1804118170_)))
                                                        (if (gx#stx-pair?
                                                             _hd1804218173_)
                                                            (let ((_e1804418178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1804218173_)))
                      (let ((_hd1804518181_ (##car _e1804418178_))
                            (_tl1804618183_ (##cdr _e1804418178_)))
                        (if (gx#identifier? _hd1804518181_)
                            (if (gx#stx-eq? '%#quote _hd1804518181_)
                                (if (gx#stx-pair? _tl1804618183_)
                                    (let ((_e1804718186_
                                           (gx#stx-e _tl1804618183_)))
                                      (let ((_hd1804818189_
                                             (##car _e1804718186_))
                                            (_tl1804918191_
                                             (##cdr _e1804718186_)))
                                        (if (gx#stx-null? _tl1804918191_)
                                            ((lambda (_L18194_
                                                      _L18195_
                                                      _L18196_
                                                      _L18197_
                                                      _L18198_
                                                      _L18199_)
                                               (let* ((_super-t18245_
                                                       (if (gx#stx-e _L18198_)
                                                           (gxc#identifier-symbol
                                                            _L18198_)
                                                           '#f))
                                                      (_super-type18247_
                                                       (if _super-t18245_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t18245_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type18247_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type18247_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17936_
                _L18198_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields18263_
                                                          (gx#stx-e _L18197_))
                                                         (_xfields18264_
                                                          (if _super-type18247_
                                                              (let ((_super-fields1824918252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type18247_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1825018254_
                             (##structure-ref
                              _super-type18247_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1824918252_
                            (if _super-xfields1825018254_
                                (let ((_super-fields18257_
                                       _super-fields1824918252_)
                                      (_super-xfields18258_
                                       _super-xfields1825018254_))
                                  (fx+ _super-fields18257_
                                       _super-xfields18258_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist18265_ (gx#stx-e _L18195_))
                 (_ctor18266_
                  (let ((_$e18260_ (gx#stx-e _L18194_)))
                    (if _$e18260_
                        (values _$e18260_)
                        (if _super-type18247_
                            (##structure-ref
                             _super-type18247_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t18245_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27866
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27866
                                                          (gx#stx-e _L18199_)
                                                          _super-t18245_
                                                          _fields18263_
                                                          _xfields18264_
                                                          _ctor18266_
                                                          _plist18265_)
                                                         __obj27866))))))
                                             _hd1804818189_
                                             _hd1803918165_
                                             _hd1803018141_
                                             _hd1802718133_
                                             _hd1801818109_
                                             _hd1800918085_)
                                            (_g1794018061_ _g1794218064_))))
                                    (_g1794018061_ _g1794218064_))
                                (_g1794018061_ _g1794218064_))
                            (_g1794018061_ _g1794218064_))))
                    (_g1794018061_ _g1794218064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1794018061_
                                                     _g1794218064_))
                                                (_g1794018061_
                                                 _g1794218064_))))
                                        (_g1794018061_ _g1794218064_))
                                    (_g1794018061_ _g1794218064_))
                                (_g1794018061_ _g1794218064_))))
                        (_g1794018061_ _g1794218064_))))
                (_g1794018061_ _g1794218064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1794018061_ _g1794218064_))
                                            (_g1794018061_ _g1794218064_))))
                                    (_g1794018061_ _g1794218064_))
                                (_g1794018061_ _g1794218064_))
                            (_g1794018061_ _g1794218064_))))
                    (_g1794018061_ _g1794218064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1794018061_
                                                     _g1794218064_))
                                                (_g1794018061_
                                                 _g1794218064_))))
                                        (_g1794018061_ _g1794218064_))
                                    (_g1794018061_ _g1794218064_))
                                (_g1794018061_ _g1794218064_))))
                        (_g1794018061_ _g1794218064_))))
                (_g1794018061_ _g1794218064_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1794018061_
                                                     _g1794218064_))))
                                            (_g1794018061_ _g1794218064_))
                                        (_g1794018061_ _g1794218064_))
                                    (_g1794018061_ _g1794218064_))))
                            (_g1794018061_ _g1794218064_))))
                    (_g1794018061_ _g1794218064_))))
             (_g1793818448_
              (lambda (_g1794218271_)
                (if (gx#stx-pair? _g1794218271_)
                    (let ((_e1794818273_ (gx#stx-e _g1794218271_)))
                      (let ((_hd1794918276_ (##car _e1794818273_))
                            (_tl1795018278_ (##cdr _e1794818273_)))
                        (if (gx#stx-pair? _hd1794918276_)
                            (let ((_e1795118281_ (gx#stx-e _hd1794918276_)))
                              (let ((_hd1795218284_ (##car _e1795118281_))
                                    (_tl1795318286_ (##cdr _e1795118281_)))
                                (if (gx#identifier? _hd1795218284_)
                                    (if (gx#stx-eq? '%#quote _hd1795218284_)
                                        (if (gx#stx-pair? _tl1795318286_)
                                            (let ((_e1795418289_
                                                   (gx#stx-e _tl1795318286_)))
                                              (let ((_hd1795518292_
                                                     (##car _e1795418289_))
                                                    (_tl1795618294_
                                                     (##cdr _e1795418289_)))
                                                (if (gx#stx-null?
                                                     _tl1795618294_)
                                                    (if (gx#stx-pair?
                                                         _tl1795018278_)
                                                        (let ((_e1795718297_
                                                               (gx#stx-e
                                                                _tl1795018278_)))
                                                          (let ((_hd1795818300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1795718297_))
                        (_tl1795918302_ (##cdr _e1795718297_)))
                    (if (gx#stx-pair? _hd1795818300_)
                        (let ((_e1796018305_ (gx#stx-e _hd1795818300_)))
                          (let ((_hd1796118308_ (##car _e1796018305_))
                                (_tl1796218310_ (##cdr _e1796018305_)))
                            (if (gx#identifier? _hd1796118308_)
                                (if (gx#stx-eq? '%#quote _hd1796118308_)
                                    (if (gx#stx-pair? _tl1796218310_)
                                        (let ((_e1796318313_
                                               (gx#stx-e _tl1796218310_)))
                                          (let ((_hd1796418316_
                                                 (##car _e1796318313_))
                                                (_tl1796518318_
                                                 (##cdr _e1796318313_)))
                                            (if (gx#stx-datum? _hd1796418316_)
                                                (if (equal? (gx#stx-e
                                                             _hd1796418316_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1796518318_)
                                                        (if (gx#stx-pair?
                                                             _tl1795918302_)
                                                            (let ((_e1796618321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1795918302_)))
                      (let ((_hd1796718324_ (##car _e1796618321_))
                            (_tl1796818326_ (##cdr _e1796618321_)))
                        (if (gx#stx-pair? _hd1796718324_)
                            (let ((_e1796918329_ (gx#stx-e _hd1796718324_)))
                              (let ((_hd1797018332_ (##car _e1796918329_))
                                    (_tl1797118334_ (##cdr _e1796918329_)))
                                (if (gx#identifier? _hd1797018332_)
                                    (if (gx#stx-eq? '%#quote _hd1797018332_)
                                        (if (gx#stx-pair? _tl1797118334_)
                                            (let ((_e1797218337_
                                                   (gx#stx-e _tl1797118334_)))
                                              (let ((_hd1797318340_
                                                     (##car _e1797218337_))
                                                    (_tl1797418342_
                                                     (##cdr _e1797218337_)))
                                                (if (gx#stx-null?
                                                     _tl1797418342_)
                                                    (if (gx#stx-pair?
                                                         _tl1796818326_)
                                                        (let ((_e1797518345_
                                                               (gx#stx-e
                                                                _tl1796818326_)))
                                                          (let ((_hd1797618348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1797518345_))
                        (_tl1797718350_ (##cdr _e1797518345_)))
                    (if (gx#stx-pair? _tl1797718350_)
                        (let ((_e1797818353_ (gx#stx-e _tl1797718350_)))
                          (let ((_hd1797918356_ (##car _e1797818353_))
                                (_tl1798018358_ (##cdr _e1797818353_)))
                            (if (gx#stx-pair? _hd1797918356_)
                                (let ((_e1798118361_
                                       (gx#stx-e _hd1797918356_)))
                                  (let ((_hd1798218364_ (##car _e1798118361_))
                                        (_tl1798318366_ (##cdr _e1798118361_)))
                                    (if (gx#identifier? _hd1798218364_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1798218364_)
                                            (if (gx#stx-pair? _tl1798318366_)
                                                (let ((_e1798418369_
                                                       (gx#stx-e
                                                        _tl1798318366_)))
                                                  (let ((_hd1798518372_
                                                         (##car _e1798418369_))
                                                        (_tl1798618374_
                                                         (##cdr _e1798418369_)))
                                                    (if (gx#stx-null?
                                                         _tl1798618374_)
                                                        (if (gx#stx-pair?
                                                             _tl1798018358_)
                                                            (let ((_e1798718377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1798018358_)))
                      (let ((_hd1798818380_ (##car _e1798718377_))
                            (_tl1798918382_ (##cdr _e1798718377_)))
                        (if (gx#stx-pair? _hd1798818380_)
                            (let ((_e1799018385_ (gx#stx-e _hd1798818380_)))
                              (let ((_hd1799118388_ (##car _e1799018385_))
                                    (_tl1799218390_ (##cdr _e1799018385_)))
                                (if (gx#identifier? _hd1799118388_)
                                    (if (gx#stx-eq? '%#quote _hd1799118388_)
                                        (if (gx#stx-pair? _tl1799218390_)
                                            (let ((_e1799318393_
                                                   (gx#stx-e _tl1799218390_)))
                                              (let ((_hd1799418396_
                                                     (##car _e1799318393_))
                                                    (_tl1799518398_
                                                     (##cdr _e1799318393_)))
                                                (if (gx#stx-null?
                                                     _tl1799518398_)
                                                    ((lambda (_L18401_
                                                              _L18402_
                                                              _L18403_
                                                              _L18404_
                                                              _L18405_)
                                                       (let ((__obj27867
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27867
                                                            (gx#stx-e _L18405_)
                                                            '#f
                                                            (gx#stx-e _L18404_)
                                                            '0
                                                            (gx#stx-e _L18401_)
                                                            (gx#stx-e
                                                             _L18402_))
                                                           __obj27867)))
                                                     _hd1799418396_
                                                     _hd1798518372_
                                                     _hd1797618348_
                                                     _hd1797318340_
                                                     _hd1795518292_)
                                                    (_g1793918268_
                                                     _g1794218271_))))
                                            (_g1793918268_ _g1794218271_))
                                        (_g1793918268_ _g1794218271_))
                                    (_g1793918268_ _g1794218271_))))
                            (_g1793918268_ _g1794218271_))))
                    (_g1793918268_ _g1794218271_))
                (_g1793918268_ _g1794218271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1793918268_ _g1794218271_))
                                            (_g1793918268_ _g1794218271_))
                                        (_g1793918268_ _g1794218271_))))
                                (_g1793918268_ _g1794218271_))))
                        (_g1793918268_ _g1794218271_))))
                (_g1793918268_ _g1794218271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793918268_
                                                     _g1794218271_))))
                                            (_g1793918268_ _g1794218271_))
                                        (_g1793918268_ _g1794218271_))
                                    (_g1793918268_ _g1794218271_))))
                            (_g1793918268_ _g1794218271_))))
                    (_g1793918268_ _g1794218271_))
                (_g1793918268_ _g1794218271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793918268_
                                                     _g1794218271_))
                                                (_g1793918268_
                                                 _g1794218271_))))
                                        (_g1793918268_ _g1794218271_))
                                    (_g1793918268_ _g1794218271_))
                                (_g1793918268_ _g1794218271_))))
                        (_g1793918268_ _g1794218271_))))
                (_g1793918268_ _g1794218271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1793918268_
                                                     _g1794218271_))))
                                            (_g1793918268_ _g1794218271_))
                                        (_g1793918268_ _g1794218271_))
                                    (_g1793918268_ _g1794218271_))))
                            (_g1793918268_ _g1794218271_))))
                    (_g1793918268_ _g1794218271_)))))
        (_g1793818448_ _args17937_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17862_ _args17863_)
      (let* ((_g1786617882_
              (lambda (_g1786717879_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1786717879_)))
             (_g1786517889_ (lambda (_g1786717885_) ((lambda () '#f))))
             (_g1786417933_
              (lambda (_g1786717892_)
                (if (gx#stx-pair? _g1786717892_)
                    (let ((_e1786917894_ (gx#stx-e _g1786717892_)))
                      (let ((_hd1787017897_ (##car _e1786917894_))
                            (_tl1787117899_ (##cdr _e1786917894_)))
                        (if (gx#stx-pair? _hd1787017897_)
                            (let ((_e1787217902_ (gx#stx-e _hd1787017897_)))
                              (let ((_hd1787317905_ (##car _e1787217902_))
                                    (_tl1787417907_ (##cdr _e1787217902_)))
                                (if (gx#identifier? _hd1787317905_)
                                    (if (gx#stx-eq? '%#ref _hd1787317905_)
                                        (if (gx#stx-pair? _tl1787417907_)
                                            (let ((_e1787517910_
                                                   (gx#stx-e _tl1787417907_)))
                                              (let ((_hd1787617913_
                                                     (##car _e1787517910_))
                                                    (_tl1787717915_
                                                     (##cdr _e1787517910_)))
                                                (if (gx#stx-null?
                                                     _tl1787717915_)
                                                    (if (gx#stx-null?
                                                         _tl1787117899_)
                                                        ((lambda (_L17918_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#identifier-symbol
                                                             _L17918_)))
                                                         _hd1787617913_)
                                                        (_g1786517889_
                                                         _g1786717892_))
                                                    (_g1786517889_
                                                     _g1786717892_))))
                                            (_g1786517889_ _g1786717892_))
                                        (_g1786517889_ _g1786717892_))
                                    (_g1786517889_ _g1786717892_))))
                            (_g1786517889_ _g1786717892_))))
                    (_g1786517889_ _g1786717892_)))))
        (_g1786417933_ _args17863_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17733_ _args17734_ _unchecked?17735_)
        (let* ((_g1773817764_
                (lambda (_g1773917761_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1773917761_)))
               (_g1773717771_ (lambda (_g1773917767_) ((lambda () '#f))))
               (_g1773617847_
                (lambda (_g1773917774_)
                  (if (gx#stx-pair? _g1773917774_)
                      (let ((_e1774217776_ (gx#stx-e _g1773917774_)))
                        (let ((_hd1774317779_ (##car _e1774217776_))
                              (_tl1774417781_ (##cdr _e1774217776_)))
                          (if (gx#stx-pair? _hd1774317779_)
                              (let ((_e1774517784_ (gx#stx-e _hd1774317779_)))
                                (let ((_hd1774617787_ (##car _e1774517784_))
                                      (_tl1774717789_ (##cdr _e1774517784_)))
                                  (if (gx#identifier? _hd1774617787_)
                                      (if (gx#stx-eq? '%#ref _hd1774617787_)
                                          (if (gx#stx-pair? _tl1774717789_)
                                              (let ((_e1774817792_
                                                     (gx#stx-e
                                                      _tl1774717789_)))
                                                (let ((_hd1774917795_
                                                       (##car _e1774817792_))
                                                      (_tl1775017797_
                                                       (##cdr _e1774817792_)))
                                                  (if (gx#stx-null?
                                                       _tl1775017797_)
                                                      (if (gx#stx-pair?
                                                           _tl1774417781_)
                                                          (let ((_e1775117800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1774417781_)))
                    (let ((_hd1775217803_ (##car _e1775117800_))
                          (_tl1775317805_ (##cdr _e1775117800_)))
                      (if (gx#stx-pair? _hd1775217803_)
                          (let ((_e1775417808_ (gx#stx-e _hd1775217803_)))
                            (let ((_hd1775517811_ (##car _e1775417808_))
                                  (_tl1775617813_ (##cdr _e1775417808_)))
                              (if (gx#identifier? _hd1775517811_)
                                  (if (gx#stx-eq? '%#quote _hd1775517811_)
                                      (if (gx#stx-pair? _tl1775617813_)
                                          (let ((_e1775717816_
                                                 (gx#stx-e _tl1775617813_)))
                                            (let ((_hd1775817819_
                                                   (##car _e1775717816_))
                                                  (_tl1775917821_
                                                   (##cdr _e1775717816_)))
                                              (if (gx#stx-null? _tl1775917821_)
                                                  (if (gx#stx-null?
                                                       _tl1775317805_)
                                                      ((lambda (_L17824_
                                                                _L17825_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#identifier-symbol
                                                           _L17825_)
                                                          (gx#stx-e _L17824_)
                                                          _unchecked?17735_))
                                                       _hd1775817819_
                                                       _hd1774917795_)
                                                      (_g1773717771_
                                                       _g1773917774_))
                                                  (_g1773717771_
                                                   _g1773917774_))))
                                          (_g1773717771_ _g1773917774_))
                                      (_g1773717771_ _g1773917774_))
                                  (_g1773717771_ _g1773917774_))))
                          (_g1773717771_ _g1773917774_))))
                  (_g1773717771_ _g1773917774_))
              (_g1773717771_ _g1773917774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1773717771_ _g1773917774_))
                                          (_g1773717771_ _g1773917774_))
                                      (_g1773717771_ _g1773917774_))))
                              (_g1773717771_ _g1773917774_))))
                      (_g1773717771_ _g1773917774_)))))
          (_g1773617847_ _args17734_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17853_ _args17854_)
          (let ((_unchecked?17856_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17853_
             _args17854_
             _unchecked?17856_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27941_
          (let ((_g27940_ (length _g27941_)))
            (cond ((##fx= _g27940_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27941_))
                  ((##fx= _g27940_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27941_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27941_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17603_ _args17604_ _unchecked?17605_)
        (let* ((_g1760817634_
                (lambda (_g1760917631_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1760917631_)))
               (_g1760717641_ (lambda (_g1760917637_) ((lambda () '#f))))
               (_g1760617717_
                (lambda (_g1760917644_)
                  (if (gx#stx-pair? _g1760917644_)
                      (let ((_e1761217646_ (gx#stx-e _g1760917644_)))
                        (let ((_hd1761317649_ (##car _e1761217646_))
                              (_tl1761417651_ (##cdr _e1761217646_)))
                          (if (gx#stx-pair? _hd1761317649_)
                              (let ((_e1761517654_ (gx#stx-e _hd1761317649_)))
                                (let ((_hd1761617657_ (##car _e1761517654_))
                                      (_tl1761717659_ (##cdr _e1761517654_)))
                                  (if (gx#identifier? _hd1761617657_)
                                      (if (gx#stx-eq? '%#ref _hd1761617657_)
                                          (if (gx#stx-pair? _tl1761717659_)
                                              (let ((_e1761817662_
                                                     (gx#stx-e
                                                      _tl1761717659_)))
                                                (let ((_hd1761917665_
                                                       (##car _e1761817662_))
                                                      (_tl1762017667_
                                                       (##cdr _e1761817662_)))
                                                  (if (gx#stx-null?
                                                       _tl1762017667_)
                                                      (if (gx#stx-pair?
                                                           _tl1761417651_)
                                                          (let ((_e1762117670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1761417651_)))
                    (let ((_hd1762217673_ (##car _e1762117670_))
                          (_tl1762317675_ (##cdr _e1762117670_)))
                      (if (gx#stx-pair? _hd1762217673_)
                          (let ((_e1762417678_ (gx#stx-e _hd1762217673_)))
                            (let ((_hd1762517681_ (##car _e1762417678_))
                                  (_tl1762617683_ (##cdr _e1762417678_)))
                              (if (gx#identifier? _hd1762517681_)
                                  (if (gx#stx-eq? '%#quote _hd1762517681_)
                                      (if (gx#stx-pair? _tl1762617683_)
                                          (let ((_e1762717686_
                                                 (gx#stx-e _tl1762617683_)))
                                            (let ((_hd1762817689_
                                                   (##car _e1762717686_))
                                                  (_tl1762917691_
                                                   (##cdr _e1762717686_)))
                                              (if (gx#stx-null? _tl1762917691_)
                                                  (if (gx#stx-null?
                                                       _tl1762317675_)
                                                      ((lambda (_L17694_
                                                                _L17695_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#identifier-symbol
                                                           _L17695_)
                                                          (gx#stx-e _L17694_)
                                                          _unchecked?17605_))
                                                       _hd1762817689_
                                                       _hd1761917665_)
                                                      (_g1760717641_
                                                       _g1760917644_))
                                                  (_g1760717641_
                                                   _g1760917644_))))
                                          (_g1760717641_ _g1760917644_))
                                      (_g1760717641_ _g1760917644_))
                                  (_g1760717641_ _g1760917644_))))
                          (_g1760717641_ _g1760917644_))))
                  (_g1760717641_ _g1760917644_))
              (_g1760717641_ _g1760917644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1760717641_ _g1760917644_))
                                          (_g1760717641_ _g1760917644_))
                                      (_g1760717641_ _g1760917644_))))
                              (_g1760717641_ _g1760917644_))))
                      (_g1760717641_ _g1760917644_)))))
          (_g1760617717_ _args17604_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17723_ _args17724_)
          (let ((_unchecked?17726_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17723_
             _args17724_
             _unchecked?17726_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27943_
          (let ((_g27942_ (length _g27943_)))
            (cond ((##fx= _g27942_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27943_))
                  ((##fx= _g27942_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27943_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27943_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17599_ _args17600_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17599_
       _args17600_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17596_ _args17597_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17596_
       _args17597_
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
    (lambda (_stx17545_)
      (let* ((_g1754717560_
              (lambda (_g1754817557_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1754817557_)))
             (_g1754617593_
              (lambda (_g1754817563_)
                (if (gx#stx-pair? _g1754817563_)
                    (let ((_e1755017565_ (gx#stx-e _g1754817563_)))
                      (let ((_hd1755117568_ (##car _e1755017565_))
                            (_tl1755217570_ (##cdr _e1755017565_)))
                        (if (gx#stx-pair? _tl1755217570_)
                            (let ((_e1755317573_ (gx#stx-e _tl1755217570_)))
                              (let ((_hd1755417576_ (##car _e1755317573_))
                                    (_tl1755517578_ (##cdr _e1755317573_)))
                                (if (gx#stx-null? _tl1755517578_)
                                    ((lambda (_L17581_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L17581_)))
                                     _hd1755417576_)
                                    (_g1754717560_ _g1754817563_))))
                            (_g1754717560_ _g1754817563_))))
                    (_g1754717560_ _g1754817563_)))))
        (_g1754617593_ _stx17545_))))
  (define gxc#optimize-call%
    (lambda (_stx17451_)
      (let* ((_g1745417474_
              (lambda (_g1745517471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1745517471_)))
             (_g1745317481_
              (lambda (_g1745517477_)
                ((lambda () (gxc#xform-call% _stx17451_)))))
             (_g1745217542_
              (lambda (_g1745517484_)
                (if (gx#stx-pair? _g1745517484_)
                    (let ((_e1745817486_ (gx#stx-e _g1745517484_)))
                      (let ((_hd1745917489_ (##car _e1745817486_))
                            (_tl1746017491_ (##cdr _e1745817486_)))
                        (if (gx#stx-pair? _tl1746017491_)
                            (let ((_e1746117494_ (gx#stx-e _tl1746017491_)))
                              (let ((_hd1746217497_ (##car _e1746117494_))
                                    (_tl1746317499_ (##cdr _e1746117494_)))
                                (if (gx#stx-pair? _hd1746217497_)
                                    (let ((_e1746417502_
                                           (gx#stx-e _hd1746217497_)))
                                      (let ((_hd1746517505_
                                             (##car _e1746417502_))
                                            (_tl1746617507_
                                             (##cdr _e1746417502_)))
                                        (if (gx#identifier? _hd1746517505_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1746517505_)
                                                (if (gx#stx-pair?
                                                     _tl1746617507_)
                                                    (let ((_e1746717510_
                                                           (gx#stx-e
                                                            _tl1746617507_)))
                                                      (let ((_hd1746817513_
                                                             (##car _e1746717510_))
                                                            (_tl1746917515_
                                                             (##cdr _e1746717510_)))
                                                        (if (gx#stx-null?
                                                             _tl1746917515_)
                                                            ((lambda (_L17518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17519_)
                       (let* ((_rator-id17537_
                               (gxc#identifier-symbol _L17519_))
                              (_rator-type17539_
                               (gxc#optimizer-resolve-type _rator-id17537_)))
                         (if (##structure-instance-of?
                              _rator-type17539_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17537_
                                '" => "
                                _rator-type17539_
                                '" "
                                (##structure-ref
                                 _rator-type17539_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17539_
                                'optimize-call
                                _stx17451_
                                _L17518_))
                             (if (not _rator-type17539_)
                                 (gxc#xform-call% _stx17451_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx17451_
                                  _rator-type17539_)))))
                     _tl1746317499_
                     _hd1746817513_)
                    (_g1745317481_ _g1745517484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1745317481_
                                                     _g1745517484_))
                                                (_g1745317481_ _g1745517484_))
                                            (_g1745317481_ _g1745517484_))))
                                    (_g1745317481_ _g1745517484_))))
                            (_g1745317481_ _g1745517484_))))
                    (_g1745317481_ _g1745517484_)))))
        (_g1745217542_ _stx17451_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self17305_ _stx17306_ _args17307_)
      (let* ((_self1730817314_ _self17305_)
             (_E1731017318_
              (lambda () (error '"No clause matching" _self1730817314_)))
             (_K1731117443_
              (lambda (_struct-t17321_)
                (let* ((_struct-type17323_
                        (gxc#optimizer-resolve-type _struct-t17321_))
                       (_struct-type1732417338_ _struct-type17323_)
                       (_E1732817342_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1732417338_)))
                       (_else1732717346_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx17306_
                           _struct-t17321_
                           _struct-type17323_)))
                       (_try-match1732617354_
                        (lambda ()
                          (let ((_K1732917351_
                                 (lambda () (gxc#xform-call% _stx17306_))))
                            (if (##eq? _struct-type1732417338_ '#f)
                                (_K1732917351_)
                                (_else1732717346_)))))
                       (_K1733017418_
                        (lambda (_plist17357_ _struct-type-id17358_)
                          (let* ((_g1736117371_
                                  (lambda (_g1736217368_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1736217368_)))
                                 (_g1736017378_
                                  (lambda (_g1736217374_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx17306_)))))
                                 (_g1735917415_
                                  (lambda (_g1736217381_)
                                    (if (gx#stx-pair? _g1736217381_)
                                        (let ((_e1736417383_
                                               (gx#stx-e _g1736217381_)))
                                          (let ((_hd1736517386_
                                                 (##car _e1736417383_))
                                                (_tl1736617388_
                                                 (##cdr _e1736417383_)))
                                            (if (gx#stx-null? _tl1736617388_)
                                                ((lambda (_L17391_)
                                                   (let ((_expr17412_
                                                          (gxc#compile-e
                                                           _L17391_))
                                                         (_op17413_
                                                          (if (if _plist17357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist17357_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op17413_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id17358_ '()))
                          (cons _expr17412_ '())))
              _stx17306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1736517386_)
                                                (_g1736017378_
                                                 _g1736217381_))))
                                        (_g1736017378_ _g1736217381_)))))
                            (_g1735917415_ _args17307_)))))
                  (if (##structure-instance-of?
                       _struct-type1732417338_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1733117421_
                              (##vector-ref _struct-type1732417338_ '1))
                             (_struct-type-id17424_ _e1733117421_)
                             (_e1733217426_
                              (##vector-ref _struct-type1732417338_ '2))
                             (_e1733317429_
                              (##vector-ref _struct-type1732417338_ '3))
                             (_e1733417432_
                              (##vector-ref _struct-type1732417338_ '4))
                             (_e1733517435_
                              (##vector-ref _struct-type1732417338_ '5))
                             (_e1733617438_
                              (##vector-ref _struct-type1732417338_ '6))
                             (_plist17441_ _e1733617438_))
                        (_K1733017418_ _plist17441_ _struct-type-id17424_))
                      (_try-match1732617354_))))))
        (if (##structure-instance-of?
             _self1730817314_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1731217446_ (##vector-ref _self1730817314_ '1))
                   (_struct-t17449_ _e1731217446_))
              (_K1731117443_ _struct-t17449_))
            (_E1731017318_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self17079_ _stx17080_ _args17081_)
      (let* ((_self1708217088_ _self17079_)
             (_E1708417092_
              (lambda () (error '"No clause matching" _self1708217088_)))
             (_K1708517175_
              (lambda (_struct-t17095_)
                (let* ((_struct-type17097_
                        (gxc#optimizer-resolve-type _struct-t17095_))
                       (_struct-type1709817111_ _struct-type17097_)
                       (_E1710217115_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1709817111_)))
                       (_else1710117119_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx17080_
                           _struct-t17095_
                           _struct-type17097_)))
                       (_try-match1710017127_
                        (lambda ()
                          (let ((_K1710317124_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t17095_)
                                     (gxc#xform-call% _stx17080_)))))
                            (if (##eq? _struct-type1709817111_ '#f)
                                (_K1710317124_)
                                (_else1710117119_)))))
                       (_K1710417149_
                        (lambda (_ctor17130_
                                 _xfields17131_
                                 _fields17132_
                                 _type-id17133_)
                          (let* ((_args17135_ (map gxc#compile-e _args17081_))
                                 (_$e17137_
                                  (if _ctor17130_
                                      (if _xfields17131_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type17097_
                                           _ctor17130_)
                                          '#f)
                                      '#f)))
                            (if _$e17137_
                                ((lambda (_kons17140_)
                                   (let ((_$obj17142_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj17142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t17095_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields17132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields17131_)
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
                                    (cons (cons '%#ref (cons _kons17140_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj17142_ '()))
                                                _args17135_)))
                              _stx17080_))
                            (cons (cons '%#ref (cons _$obj17142_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx17080_)))
                                 _$e17137_)
                                (if (let ((_$e17144_ _ctor17130_))
                                      (if _$e17144_
                                          _$e17144_
                                          (not _xfields17131_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t17095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args17135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx17080_)
                                    (let ((_arity17147_
                                           (fx+ _fields17132_ _xfields17131_)))
                                      (if (fx= _arity17147_
                                               (length _args17135_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t17095_ '())) _args17135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx17080_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx17080_
                                           _struct-t17095_
                                           _arity17147_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1709817111_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1710517152_
                              (##vector-ref _struct-type1709817111_ '1))
                             (_type-id17155_ _e1710517152_)
                             (_e1710617157_
                              (##vector-ref _struct-type1709817111_ '2))
                             (_e1710717160_
                              (##vector-ref _struct-type1709817111_ '3))
                             (_fields17163_ _e1710717160_)
                             (_e1710817165_
                              (##vector-ref _struct-type1709817111_ '4))
                             (_xfields17168_ _e1710817165_)
                             (_e1710917170_
                              (##vector-ref _struct-type1709817111_ '5))
                             (_ctor17173_ _e1710917170_))
                        (_K1710417149_
                         _ctor17173_
                         _xfields17168_
                         _fields17163_
                         _type-id17155_))
                      (_try-match1710017127_))))))
        (if (##structure-instance-of?
             _self1708217088_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1708617178_ (##vector-ref _self1708217088_ '1))
                   (_struct-t17181_ _e1708617178_))
              (_K1708517175_ _struct-t17181_))
            (_E1708417092_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16790_ _stx16791_ _args16792_)
      (let* ((_self1679316801_ _self16790_)
             (_E1679516805_
              (lambda () (error '"No clause matching" _self1679316801_)))
             (_K1679616939_
              (lambda (_unchecked?16808_ _off16809_ _struct-t16810_)
                (let* ((_struct-type16812_
                        (gxc#optimizer-resolve-type _struct-t16810_))
                       (_struct-type1681316827_ _struct-type16812_)
                       (_E1681716831_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1681316827_)))
                       (_else1681616835_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16791_
                           _struct-t16810_
                           _struct-type16812_)))
                       (_try-match1681516843_
                        (lambda ()
                          (let ((_K1681816840_
                                 (lambda () (gxc#xform-call% _stx16791_))))
                            (if (##eq? _struct-type1681316827_ '#f)
                                (_K1681816840_)
                                (_else1681616835_)))))
                       (_K1681916910_
                        (lambda (_plist16846_
                                 _xfields16847_
                                 _fields16848_
                                 _struct-type-id16849_)
                          (if _xfields16847_
                              (let* ((_g1685216862_
                                      (lambda (_g1685316859_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1685316859_)))
                                     (_g1685116869_
                                      (lambda (_g1685316865_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16791_)))))
                                     (_g1685016907_
                                      (lambda (_g1685316872_)
                                        (if (gx#stx-pair? _g1685316872_)
                                            (let ((_e1685516874_
                                                   (gx#stx-e _g1685316872_)))
                                              (let ((_hd1685616877_
                                                     (##car _e1685516874_))
                                                    (_tl1685716879_
                                                     (##cdr _e1685516874_)))
                                                (if (gx#stx-null?
                                                     _tl1685716879_)
                                                    ((lambda (_L16882_)
                                                       (let ((_expr16903_
                                                              (gxc#compile-e
                                                               _L16882_))
                                                             (_off16904_
                                                              (fx+ _off16809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16847_
                           '1))
                     (_op16905_
                      (if _unchecked?16808_
                          '%#struct-unchecked-ref
                          (if (if _plist16846_
                                  (assgetq 'final: _plist16846_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16905_
                        (cons (cons '%#ref (cons _struct-t16810_ '()))
                              (cons (cons '%#quote (cons _off16904_ '()))
                                    (cons _expr16903_ '()))))
                  _stx16791_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1685616877_)
                                                    (_g1685116869_
                                                     _g1685316872_))))
                                            (_g1685116869_ _g1685316872_)))))
                                (_g1685016907_ _args16792_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16849_)
                                (gxc#xform-call% _stx16791_))))))
                  (if (##structure-instance-of?
                       _struct-type1681316827_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1682016913_
                              (##vector-ref _struct-type1681316827_ '1))
                             (_struct-type-id16916_ _e1682016913_)
                             (_e1682116918_
                              (##vector-ref _struct-type1681316827_ '2))
                             (_e1682216921_
                              (##vector-ref _struct-type1681316827_ '3))
                             (_fields16924_ _e1682216921_)
                             (_e1682316926_
                              (##vector-ref _struct-type1681316827_ '4))
                             (_xfields16929_ _e1682316926_)
                             (_e1682416931_
                              (##vector-ref _struct-type1681316827_ '5))
                             (_e1682516934_
                              (##vector-ref _struct-type1681316827_ '6))
                             (_plist16937_ _e1682516934_))
                        (_K1681916910_
                         _plist16937_
                         _xfields16929_
                         _fields16924_
                         _struct-type-id16916_))
                      (_try-match1681516843_))))))
        (if (##structure-instance-of?
             _self1679316801_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1679716942_ (##vector-ref _self1679316801_ '1))
                   (_struct-t16945_ _e1679716942_)
                   (_e1679816947_ (##vector-ref _self1679316801_ '2))
                   (_off16950_ _e1679816947_)
                   (_e1679916952_ (##vector-ref _self1679316801_ '3))
                   (_unchecked?16955_ _e1679916952_))
              (_K1679616939_ _unchecked?16955_ _off16950_ _struct-t16945_))
            (_E1679516805_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self16484_ _stx16485_ _args16486_)
      (let* ((_self1648716495_ _self16484_)
             (_E1648916499_
              (lambda () (error '"No clause matching" _self1648716495_)))
             (_K1649016650_
              (lambda (_unchecked?16502_ _off16503_ _struct-t16504_)
                (let* ((_struct-type16506_
                        (gxc#optimizer-resolve-type _struct-t16504_))
                       (_struct-type1650716521_ _struct-type16506_)
                       (_E1651116525_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1650716521_)))
                       (_else1651016529_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16485_
                           _struct-t16504_
                           _struct-type16506_)))
                       (_try-match1650916537_
                        (lambda ()
                          (let ((_K1651216534_
                                 (lambda () (gxc#xform-call% _stx16485_))))
                            (if (##eq? _struct-type1650716521_ '#f)
                                (_K1651216534_)
                                (_else1651016529_)))))
                       (_K1651316621_
                        (lambda (_plist16540_
                                 _xfields16541_
                                 _fields16542_
                                 _struct-type-id16543_)
                          (if _xfields16541_
                              (let* ((_g1654616560_
                                      (lambda (_g1654716557_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1654716557_)))
                                     (_g1654516567_
                                      (lambda (_g1654716563_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx16485_)))))
                                     (_g1654416618_
                                      (lambda (_g1654716570_)
                                        (if (gx#stx-pair? _g1654716570_)
                                            (let ((_e1655016572_
                                                   (gx#stx-e _g1654716570_)))
                                              (let ((_hd1655116575_
                                                     (##car _e1655016572_))
                                                    (_tl1655216577_
                                                     (##cdr _e1655016572_)))
                                                (if (gx#stx-pair?
                                                     _tl1655216577_)
                                                    (let ((_e1655316580_
                                                           (gx#stx-e
                                                            _tl1655216577_)))
                                                      (let ((_hd1655416583_
                                                             (##car _e1655316580_))
                                                            (_tl1655516585_
                                                             (##cdr _e1655316580_)))
                                                        (if (gx#stx-null?
                                                             _tl1655516585_)
                                                            ((lambda (_L16588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16589_)
                       (let ((_expr16613_ (gxc#compile-e _L16589_))
                             (_val16614_ (gxc#compile-e _L16588_))
                             (_off16615_ (fx+ _off16503_ _xfields16541_ '1))
                             (_op16616_
                              (if _unchecked?16502_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16540_
                                          (assgetq 'final: _plist16540_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16616_
                                (cons (cons '%#ref (cons _struct-t16504_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16615_ '()))
                                            (cons _expr16613_
                                                  (cons _val16614_ '())))))
                          _stx16485_)))
                     _hd1655416583_
                     _hd1655116575_)
                    (_g1654516567_ _g1654716570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1654516567_
                                                     _g1654716570_))))
                                            (_g1654516567_ _g1654716570_)))))
                                (_g1654416618_ _args16486_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16543_)
                                (gxc#xform-call% _stx16485_))))))
                  (if (##structure-instance-of?
                       _struct-type1650716521_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1651416624_
                              (##vector-ref _struct-type1650716521_ '1))
                             (_struct-type-id16627_ _e1651416624_)
                             (_e1651516629_
                              (##vector-ref _struct-type1650716521_ '2))
                             (_e1651616632_
                              (##vector-ref _struct-type1650716521_ '3))
                             (_fields16635_ _e1651616632_)
                             (_e1651716637_
                              (##vector-ref _struct-type1650716521_ '4))
                             (_xfields16640_ _e1651716637_)
                             (_e1651816642_
                              (##vector-ref _struct-type1650716521_ '5))
                             (_e1651916645_
                              (##vector-ref _struct-type1650716521_ '6))
                             (_plist16648_ _e1651916645_))
                        (_K1651316621_
                         _plist16648_
                         _xfields16640_
                         _fields16635_
                         _struct-type-id16627_))
                      (_try-match1650916537_))))))
        (if (##structure-instance-of?
             _self1648716495_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1649116653_ (##vector-ref _self1648716495_ '1))
                   (_struct-t16656_ _e1649116653_)
                   (_e1649216658_ (##vector-ref _self1648716495_ '2))
                   (_off16661_ _e1649216658_)
                   (_e1649316663_ (##vector-ref _self1648716495_ '3))
                   (_unchecked?16666_ _e1649316663_))
              (_K1649016650_ _unchecked?16666_ _off16661_ _struct-t16656_))
            (_E1648916499_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self16318_ _stx16319_ _args16320_)
      (let* ((_self1632116330_ _self16318_)
             (_E1632316334_
              (lambda () (error '"No clause matching" _self1632116330_)))
             (_K1632416341_
              (lambda (_inline16337_ _dispatch16338_ _arity16339_)
                (begin
                  (if (gxc#!lambda-arity-match? _self16318_ _args16320_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx16319_
                       _arity16339_))
                  (if _inline16337_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline16337_ _stx16319_)
                          _stx16319_)))
                      (if _dispatch16338_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch16338_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch16338_ '()))
                                          _args16320_))
                              _stx16319_)))
                          (gxc#xform-call% _stx16319_)))))))
        (if (##structure-instance-of?
             _self1632116330_
             (##type-id gxc#!lambda::t))
            (let* ((_e1632516344_ (##vector-ref _self1632116330_ '1))
                   (_e1632616347_ (##vector-ref _self1632116330_ '2))
                   (_arity16350_ _e1632616347_)
                   (_e1632716352_ (##vector-ref _self1632116330_ '3))
                   (_dispatch16355_ _e1632716352_)
                   (_e1632816357_ (##vector-ref _self1632116330_ '4))
                   (_inline16360_ _e1632816357_))
              (_K1632416341_ _inline16360_ _dispatch16355_ _arity16350_))
            (_E1632316334_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self16157_ _stx16158_ _args16159_)
      (let* ((_self1616016167_ _self16157_)
             (_E1616216171_
              (lambda () (error '"No clause matching" _self1616016167_)))
             (_K1616316185_
              (lambda (_clauses16174_)
                (let ((_$e16180_
                       (find (lambda (_g1617516177_)
                               (gxc#!lambda-arity-match?
                                _g1617516177_
                                _args16159_))
                             _clauses16174_)))
                  (if _$e16180_
                      ((lambda (_clause16183_)
                         (call-method
                          _clause16183_
                          'optimize-call
                          _stx16158_
                          _args16159_))
                       _$e16180_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx16158_
                       (map gxc#!lambda-arity _clauses16174_)))))))
        (if (##structure-instance-of?
             _self1616016167_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1616416188_ (##vector-ref _self1616016167_ '1))
                   (_e1616516191_ (##vector-ref _self1616016167_ '2))
                   (_clauses16194_ _e1616516191_))
              (_K1616316185_ _clauses16194_))
            (_E1616216171_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15971_ _args15972_)
      (let* ((_self1597315980_ _self15971_)
             (_E1597515984_
              (lambda () (error '"No clause matching" _self1597315980_)))
             (_K1597616024_
              (lambda (_arity15987_)
                (let* ((_arity1598815997_ _arity15987_)
                       (_E1599116001_
                        (lambda ()
                          (error '"No clause matching" _arity1598815997_)))
                       (_try-match1599016017_
                        (lambda ()
                          (let ((_K1599216007_
                                 (lambda (_arity16005_)
                                   (fx>= (length _args15972_) _arity16005_))))
                            (if (##pair? _arity1598815997_)
                                (let ((_hd1599316010_
                                       (##car _arity1598815997_))
                                      (_tl1599416012_
                                       (##cdr _arity1598815997_)))
                                  (let ((_arity16015_ _hd1599316010_))
                                    (if (##null? _tl1599416012_)
                                        (_K1599216007_ _arity16015_)
                                        (_E1599116001_))))
                                (_E1599116001_)))))
                       (_K1599516021_
                        (lambda () (fx= (length _args15972_) _arity15987_))))
                  (if (fixnum? _arity1598815997_)
                      (_K1599516021_)
                      (_try-match1599016017_))))))
        (if (##structure-instance-of?
             _self1597315980_
             (##type-id gxc#!lambda::t))
            (let* ((_e1597716027_ (##vector-ref _self1597315980_ '1))
                   (_e1597816030_ (##vector-ref _self1597315980_ '2))
                   (_arity16033_ _e1597816030_))
              (_K1597616024_ _arity16033_))
            (_E1597515984_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15856_ _stx15857_ _args15858_)
      (let* ((_self1585915867_ _self15856_)
             (_E1586115871_
              (lambda () (error '"No clause matching" _self1585915867_)))
             (_K1586215955_
              (lambda (_dispatch15874_ _table15875_)
                (let* ((_g1587615885_
                        (gxc#optimizer-lookup-type _dispatch15874_))
                       (_E1587915889_
                        (lambda ()
                          (error '"No clause matching" _g1587615885_)))
                       (_else1587815893_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15874_)
                            (gxc#xform-call% _stx15857_))))
                       (_K1588015939_
                        (lambda (_main15896_ _keys15897_)
                          (let ((_g27944_
                                 (gxc#!kw-lambda-split-args
                                  _stx15857_
                                  _args15858_)))
                            (begin
                              (let ((_g27945_
                                     (if (##values? _g27944_)
                                         (##vector-length _g27944_)
                                         1)))
                                (if (not (##fx= _g27945_ 2))
                                    (error "Context expects 2 values"
                                           _g27945_)))
                              (let ((_pargs15899_ (##vector-ref _g27944_ 0))
                                    (_kwargs15900_ (##vector-ref _g27944_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15896_)
                                  (if _table15875_
                                      (let ((_xargs15907_
                                             (map (lambda (_key15902_)
                                                    (let ((_$e15904_
                                                           (assgetq _key15902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15900_)))
              (if _$e15904_ (values _$e15904_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15897_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15909_)
                                             (if (memq (car _kw15909_)
                                                       _keys15897_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx15857_
                                                  _keys15897_
                                                  _kw15909_)))
                                           _kwargs15900_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15899_ _xargs15907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15857_))))
                                      (let* ((_kwt15911_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15914_
                                              (map (lambda (_g27946_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15900_))
                                             (_kwbind15919_
                                              (map (lambda (_kw15916_
                                                            _kwvar15917_)
                                                     (cons (cons _kwvar15917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15916_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15900_
                                                   _kwvars15914_))
                                             (_kwset15924_
                                              (map (lambda (_kw15921_
                                                            _kwvar15922_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15911_ '()))
                               (cons (cons '%#quote (cons (car _kw15921_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15922_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15900_
                                                   _kwvars15914_))
                                             (_xkwargs15929_
                                              (map (lambda (_kw15926_
                                                            _kwvar15927_)
                                                     (cons (car _kw15926_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15927_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15900_
                                                   _kwvars15914_))
                                             (_xargs15936_
                                              (map (lambda (_key15931_)
                                                     (let ((_$e15933_
                                                            (assgetq _key15931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15929_)))
               (if _$e15933_ (values _$e15933_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15897_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15919_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15911_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15900_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15857_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15896_ '()))
                               (cons (cons '%#ref (cons _kwt15911_ '()))
                                     (foldr1 cons _pargs15899_ _xargs15936_))))
                   _stx15857_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15924_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15857_)))))))))))
                  (if (##structure-instance-of?
                       _g1587615885_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1588115942_ (##vector-ref _g1587615885_ '1))
                             (_e1588215945_ (##vector-ref _g1587615885_ '2))
                             (_keys15948_ _e1588215945_)
                             (_e1588315950_ (##vector-ref _g1587615885_ '3))
                             (_main15953_ _e1588315950_))
                        (_K1588015939_ _main15953_ _keys15948_))
                      (_else1587815893_))))))
        (if (##structure-instance-of?
             _self1585915867_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1586315958_ (##vector-ref _self1585915867_ '1))
                   (_e1586415961_ (##vector-ref _self1585915867_ '2))
                   (_table15964_ _e1586415961_)
                   (_e1586515966_ (##vector-ref _self1585915867_ '3))
                   (_dispatch15969_ _e1586515966_))
              (_K1586215955_ _dispatch15969_ _table15964_))
            (_E1586115871_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx15479_ _args15480_)
      (let _lp15482_ ((_rest15484_ _args15480_)
                      (_pargs15485_ '())
                      (_kwargs15486_ '()))
        (let* ((_g1549215542_
                (lambda (_g1549315539_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1549315539_)))
               (_g1549115549_
                (lambda (_g1549315545_)
                  (if (gx#stx-null? _g1549315545_)
                      ((lambda ()
                         (values (reverse _pargs15485_)
                                 (reverse _kwargs15486_))))
                      (_g1549215542_ _g1549315545_))))
               (_g1549015577_
                (lambda (_g1549315552_)
                  (if (gx#stx-pair? _g1549315552_)
                      (let ((_e1553515554_ (gx#stx-e _g1549315552_)))
                        (let ((_hd1553615557_ (##car _e1553515554_))
                              (_tl1553715559_ (##cdr _e1553515554_)))
                          ((lambda (_L15562_ _L15563_)
                             (_lp15482_
                              _L15562_
                              (cons _L15563_ _pargs15485_)
                              _kwargs15486_))
                           _tl1553715559_
                           _hd1553615557_)))
                      (_g1549115549_ _g1549315552_))))
               (_g1548915635_
                (lambda (_g1549315580_)
                  (if (gx#stx-pair? _g1549315580_)
                      (let ((_e1552115582_ (gx#stx-e _g1549315580_)))
                        (let ((_hd1552215585_ (##car _e1552115582_))
                              (_tl1552315587_ (##cdr _e1552115582_)))
                          (if (gx#stx-pair? _hd1552215585_)
                              (let ((_e1552415590_ (gx#stx-e _hd1552215585_)))
                                (let ((_hd1552515593_ (##car _e1552415590_))
                                      (_tl1552615595_ (##cdr _e1552415590_)))
                                  (if (gx#identifier? _hd1552515593_)
                                      (if (gx#stx-eq? '%#quote _hd1552515593_)
                                          (if (gx#stx-pair? _tl1552615595_)
                                              (let ((_e1552715598_
                                                     (gx#stx-e
                                                      _tl1552615595_)))
                                                (let ((_hd1552815601_
                                                       (##car _e1552715598_))
                                                      (_tl1552915603_
                                                       (##cdr _e1552715598_)))
                                                  (if (gx#stx-null?
                                                       _tl1552915603_)
                                                      (if (gx#stx-pair?
                                                           _tl1552315587_)
                                                          (let ((_e1553015606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1552315587_)))
                    (let ((_hd1553115609_ (##car _e1553015606_))
                          (_tl1553215611_ (##cdr _e1553015606_)))
                      ((lambda (_L15614_ _L15615_ _L15616_)
                         (if (gx#stx-keyword? _L15616_)
                             (let ((_kw15633_ (gx#stx-e _L15616_)))
                               (if (assq _kw15633_ _kwargs15486_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx15479_
                                    _kw15633_)
                                   (_lp15482_
                                    _L15614_
                                    _pargs15485_
                                    (cons (cons _kw15633_ _L15615_)
                                          _kwargs15486_))))
                             (_g1549015577_ _g1549315580_)))
                       _tl1553215611_
                       _hd1553115609_
                       _hd1552815601_)))
                  (_g1549015577_ _g1549315580_))
              (_g1549015577_ _g1549315580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1549015577_ _g1549315580_))
                                          (_g1549015577_ _g1549315580_))
                                      (_g1549015577_ _g1549315580_))))
                              (_g1549015577_ _g1549315580_))))
                      (_g1549015577_ _g1549315580_))))
               (_g1548815677_
                (lambda (_g1549315638_)
                  (if (gx#stx-pair? _g1549315638_)
                      (let ((_e1550915640_ (gx#stx-e _g1549315638_)))
                        (let ((_hd1551015643_ (##car _e1550915640_))
                              (_tl1551115645_ (##cdr _e1550915640_)))
                          (if (gx#stx-pair? _hd1551015643_)
                              (let ((_e1551215648_ (gx#stx-e _hd1551015643_)))
                                (let ((_hd1551315651_ (##car _e1551215648_))
                                      (_tl1551415653_ (##cdr _e1551215648_)))
                                  (if (gx#identifier? _hd1551315651_)
                                      (if (gx#stx-eq? '%#quote _hd1551315651_)
                                          (if (gx#stx-pair? _tl1551415653_)
                                              (let ((_e1551515656_
                                                     (gx#stx-e
                                                      _tl1551415653_)))
                                                (let ((_hd1551615659_
                                                       (##car _e1551515656_))
                                                      (_tl1551715661_
                                                       (##cdr _e1551515656_)))
                                                  (if (gx#stx-datum?
                                                       _hd1551615659_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1551615659_)
                          '#!rest)
                  (if (gx#stx-null? _tl1551715661_)
                      ((lambda (_L15664_)
                         (values (foldl1 cons _L15664_ _pargs15485_)
                                 (reverse _kwargs15486_)))
                       _tl1551115645_)
                      (_g1548915635_ _g1549315638_))
                  (_g1548915635_ _g1549315638_))
              (_g1548915635_ _g1549315638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1548915635_ _g1549315638_))
                                          (_g1548915635_ _g1549315638_))
                                      (_g1548915635_ _g1549315638_))))
                              (_g1548915635_ _g1549315638_))))
                      (_g1548915635_ _g1549315638_))))
               (_g1548715731_
                (lambda (_g1549315680_)
                  (if (gx#stx-pair? _g1549315680_)
                      (let ((_e1549615682_ (gx#stx-e _g1549315680_)))
                        (let ((_hd1549715685_ (##car _e1549615682_))
                              (_tl1549815687_ (##cdr _e1549615682_)))
                          (if (gx#stx-pair? _hd1549715685_)
                              (let ((_e1549915690_ (gx#stx-e _hd1549715685_)))
                                (let ((_hd1550015693_ (##car _e1549915690_))
                                      (_tl1550115695_ (##cdr _e1549915690_)))
                                  (if (gx#identifier? _hd1550015693_)
                                      (if (gx#stx-eq? '%#quote _hd1550015693_)
                                          (if (gx#stx-pair? _tl1550115695_)
                                              (let ((_e1550215698_
                                                     (gx#stx-e
                                                      _tl1550115695_)))
                                                (let ((_hd1550315701_
                                                       (##car _e1550215698_))
                                                      (_tl1550415703_
                                                       (##cdr _e1550215698_)))
                                                  (if (gx#stx-datum?
                                                       _hd1550315701_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1550315701_)
                          '#!key)
                  (if (gx#stx-null? _tl1550415703_)
                      (if (gx#stx-pair? _tl1549815687_)
                          (let ((_e1550515706_ (gx#stx-e _tl1549815687_)))
                            (let ((_hd1550615709_ (##car _e1550515706_))
                                  (_tl1550715711_ (##cdr _e1550515706_)))
                              ((lambda (_L15714_ _L15715_)
                                 (_lp15482_
                                  _L15714_
                                  (cons _L15715_ _pargs15485_)
                                  _kwargs15486_))
                               _tl1550715711_
                               _hd1550615709_)))
                          (_g1548815677_ _g1549315680_))
                      (_g1548815677_ _g1549315680_))
                  (_g1548815677_ _g1549315680_))
              (_g1548815677_ _g1549315680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1548815677_ _g1549315680_))
                                          (_g1548815677_ _g1549315680_))
                                      (_g1548815677_ _g1549315680_))))
                              (_g1548815677_ _g1549315680_))))
                      (_g1548815677_ _g1549315680_)))))
          (_g1548715731_ _rest15484_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self15475_ _stx15476_ _args15477_) (gxc#xform-call% _stx15476_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#generate-ssxi-module%
    (lambda (_stx15293_)
      (let* ((_g1529515309_
              (lambda (_g1529615306_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1529615306_)))
             (_g1529415350_
              (lambda (_g1529615312_)
                (if (gx#stx-pair? _g1529615312_)
                    (let ((_e1529915314_ (gx#stx-e _g1529615312_)))
                      (let ((_hd1530015317_ (##car _e1529915314_))
                            (_tl1530115319_ (##cdr _e1529915314_)))
                        (if (gx#stx-pair? _tl1530115319_)
                            (let ((_e1530215322_ (gx#stx-e _tl1530115319_)))
                              (let ((_hd1530315325_ (##car _e1530215322_))
                                    (_tl1530415327_ (##cdr _e1530215322_)))
                                ((lambda (_L15330_ _L15331_)
                                   (let* ((_ctx15344_
                                           (gx#syntax-local-e__0 _L15331_))
                                          (_code15346_
                                           (##structure-ref
                                            _ctx15344_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code15346_))
                                      gx#current-expander-context
                                      _ctx15344_)))
                                 _tl1530415327_
                                 _hd1530315325_)))
                            (_g1529515309_ _g1529615312_))))
                    (_g1529515309_ _g1529615312_)))))
        (_g1529415350_ _stx15293_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx15103_)
      (letrec ((_generate-e15105_
                (lambda (_id15282_)
                  (let* ((_sym15284_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id15282_)
                              '#f))
                         (_$e15286_
                          (if _sym15284_
                              (gxc#optimizer-lookup-type _sym15284_)
                              '#f)))
                    (if _$e15286_
                        ((lambda (_type15289_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym15284_)
                             (let ((_typedecl15291_
                                    (call-method _type15289_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym15284_
                                           (cons _typedecl15291_ '()))))))
                         _$e15286_)
                        '(begin))))))
        (let* ((_g1510815146_
                (lambda (_g1510915143_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1510915143_)))
               (_g1510715227_
                (lambda (_g1510915149_)
                  (if (gx#stx-pair? _g1510915149_)
                      (let ((_e1512415151_ (gx#stx-e _g1510915149_)))
                        (let ((_hd1512515154_ (##car _e1512415151_))
                              (_tl1512615156_ (##cdr _e1512415151_)))
                          (if (gx#stx-pair? _tl1512615156_)
                              (let ((_e1512715159_ (gx#stx-e _tl1512615156_)))
                                (let ((_hd1512815162_ (##car _e1512715159_))
                                      (_tl1512915164_ (##cdr _e1512715159_)))
                                  (if (gx#stx-pair/null? _hd1512815162_)
                                      (if (fx>= (gx#stx-length _hd1512815162_)
                                                '0)
                                          (let ((_g27947_
                                                 (gx#syntax-split-splice
                                                  _hd1512815162_
                                                  '0)))
                                            (begin
                                              (let ((_g27948_
                                                     (if (##values? _g27947_)
                                                         (##vector-length
                                                          _g27947_)
                                                         1)))
                                                (if (not (##fx= _g27948_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27948_)))
                                              (let ((_target1513015167_
                                                     (##vector-ref _g27947_ 0))
                                                    (_tl1513215169_
                                                     (##vector-ref
                                                      _g27947_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1513215169_)
                                                    (letrec ((_loop1513315172_
                                                              (lambda (_hd1513115175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1513715177_)
                        (if (gx#stx-pair? _hd1513115175_)
                            (let ((_e1513415180_ (gx#stx-e _hd1513115175_)))
                              (let ((_lp-hd1513515183_ (##car _e1513415180_))
                                    (_lp-tl1513615185_ (##cdr _e1513415180_)))
                                (_loop1513315172_
                                 _lp-tl1513615185_
                                 (cons _lp-hd1513515183_ _id1513715177_))))
                            (let ((_id1513815188_ (reverse _id1513715177_)))
                              (if (gx#stx-pair? _tl1512915164_)
                                  (let ((_e1513915191_
                                         (gx#stx-e _tl1512915164_)))
                                    (let ((_hd1514015194_
                                           (##car _e1513915191_))
                                          (_tl1514115196_
                                           (##cdr _e1513915191_)))
                                      (if (gx#stx-null? _tl1514115196_)
                                          ((lambda (_L15199_)
                                             (let ((_types15225_
                                                    (map _generate-e15105_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1521715220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1521815222_)
                             (cons _g1521715220_ _g1521815222_))
                           '()
                           _L15199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types15225_)))
                                           _id1513815188_)
                                          (_g1510815146_ _g1510915149_))))
                                  (_g1510815146_ _g1510915149_)))))))
              (_loop1513315172_ _target1513015167_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1510815146_
                                                     _g1510915149_)))))
                                          (_g1510815146_ _g1510915149_))
                                      (_g1510815146_ _g1510915149_))))
                              (_g1510815146_ _g1510915149_))))
                      (_g1510815146_ _g1510915149_))))
               (_g1510615279_
                (lambda (_g1510915230_)
                  (if (gx#stx-pair? _g1510915230_)
                      (let ((_e1511115232_ (gx#stx-e _g1510915230_)))
                        (let ((_hd1511215235_ (##car _e1511115232_))
                              (_tl1511315237_ (##cdr _e1511115232_)))
                          (if (gx#stx-pair? _tl1511315237_)
                              (let ((_e1511415240_ (gx#stx-e _tl1511315237_)))
                                (let ((_hd1511515243_ (##car _e1511415240_))
                                      (_tl1511615245_ (##cdr _e1511415240_)))
                                  (if (gx#stx-pair? _hd1511515243_)
                                      (let ((_e1511715248_
                                             (gx#stx-e _hd1511515243_)))
                                        (let ((_hd1511815251_
                                               (##car _e1511715248_))
                                              (_tl1511915253_
                                               (##cdr _e1511715248_)))
                                          (if (gx#stx-null? _tl1511915253_)
                                              (if (gx#stx-pair? _tl1511615245_)
                                                  (let ((_e1512015256_
                                                         (gx#stx-e
                                                          _tl1511615245_)))
                                                    (let ((_hd1512115259_
                                                           (##car _e1512015256_))
                                                          (_tl1512215261_
                                                           (##cdr _e1512015256_)))
                                                      (if (gx#stx-null?
                                                           _tl1512215261_)
                                                          ((lambda (_L15264_)
                                                             (_generate-e15105_
                                                              _L15264_))
                                                           _hd1511815251_)
                                                          (_g1510715227_
                                                           _g1510915230_))))
                                                  (_g1510715227_
                                                   _g1510915230_))
                                              (_g1510715227_ _g1510915230_))))
                                      (_g1510715227_ _g1510915230_))))
                              (_g1510715227_ _g1510915230_))))
                      (_g1510715227_ _g1510915230_)))))
          (_g1510615279_ _stx15103_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14657_)
      (let* ((_g1466114763_
              (lambda (_g1466214760_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1466214760_)))
             (_g1466014770_ (lambda (_g1466214766_) ((lambda () '(begin)))))
             (_g1465914920_
              (lambda (_g1466214773_)
                (if (gx#stx-pair? _g1466214773_)
                    (let ((_e1472014775_ (gx#stx-e _g1466214773_)))
                      (let ((_hd1472114778_ (##car _e1472014775_))
                            (_tl1472214780_ (##cdr _e1472014775_)))
                        (if (gx#stx-pair? _tl1472214780_)
                            (let ((_e1472314783_ (gx#stx-e _tl1472214780_)))
                              (let ((_hd1472414786_ (##car _e1472314783_))
                                    (_tl1472514788_ (##cdr _e1472314783_)))
                                (if (gx#stx-pair? _hd1472414786_)
                                    (let ((_e1472614791_
                                           (gx#stx-e _hd1472414786_)))
                                      (let ((_hd1472714794_
                                             (##car _e1472614791_))
                                            (_tl1472814796_
                                             (##cdr _e1472614791_)))
                                        (if (gx#identifier? _hd1472714794_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1472714794_)
                                                (if (gx#stx-pair?
                                                     _tl1472814796_)
                                                    (let ((_e1472914799_
                                                           (gx#stx-e
                                                            _tl1472814796_)))
                                                      (let ((_hd1473014802_
                                                             (##car _e1472914799_))
                                                            (_tl1473114804_
                                                             (##cdr _e1472914799_)))
                                                        (if (gx#stx-null?
                                                             _tl1473114804_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1472514788_)
                        (let ((_e1473214807_ (gx#stx-e _tl1472514788_)))
                          (let ((_hd1473314810_ (##car _e1473214807_))
                                (_tl1473414812_ (##cdr _e1473214807_)))
                            (if (gx#stx-pair? _hd1473314810_)
                                (let ((_e1473514815_
                                       (gx#stx-e _hd1473314810_)))
                                  (let ((_hd1473614818_ (##car _e1473514815_))
                                        (_tl1473714820_ (##cdr _e1473514815_)))
                                    (if (gx#identifier? _hd1473614818_)
                                        (if (gx#stx-eq? '%#ref _hd1473614818_)
                                            (if (gx#stx-pair? _tl1473714820_)
                                                (let ((_e1473814823_
                                                       (gx#stx-e
                                                        _tl1473714820_)))
                                                  (let ((_hd1473914826_
                                                         (##car _e1473814823_))
                                                        (_tl1474014828_
                                                         (##cdr _e1473814823_)))
                                                    (if (gx#stx-null?
                                                         _tl1474014828_)
                                                        (if (gx#stx-pair?
                                                             _tl1473414812_)
                                                            (let ((_e1474114831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1473414812_)))
                      (let ((_hd1474214834_ (##car _e1474114831_))
                            (_tl1474314836_ (##cdr _e1474114831_)))
                        (if (gx#stx-pair? _hd1474214834_)
                            (let ((_e1474414839_ (gx#stx-e _hd1474214834_)))
                              (let ((_hd1474514842_ (##car _e1474414839_))
                                    (_tl1474614844_ (##cdr _e1474414839_)))
                                (if (gx#identifier? _hd1474514842_)
                                    (if (gx#stx-eq? '%#quote _hd1474514842_)
                                        (if (gx#stx-pair? _tl1474614844_)
                                            (let ((_e1474714847_
                                                   (gx#stx-e _tl1474614844_)))
                                              (let ((_hd1474814850_
                                                     (##car _e1474714847_))
                                                    (_tl1474914852_
                                                     (##cdr _e1474714847_)))
                                                (if (gx#stx-null?
                                                     _tl1474914852_)
                                                    (if (gx#stx-pair?
                                                         _tl1474314836_)
                                                        (let ((_e1475014855_
                                                               (gx#stx-e
                                                                _tl1474314836_)))
                                                          (let ((_hd1475114858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1475014855_))
                        (_tl1475214860_ (##cdr _e1475014855_)))
                    (if (gx#stx-pair? _hd1475114858_)
                        (let ((_e1475314863_ (gx#stx-e _hd1475114858_)))
                          (let ((_hd1475414866_ (##car _e1475314863_))
                                (_tl1475514868_ (##cdr _e1475314863_)))
                            (if (gx#identifier? _hd1475414866_)
                                (if (gx#stx-eq? '%#ref _hd1475414866_)
                                    (if (gx#stx-pair? _tl1475514868_)
                                        (let ((_e1475614871_
                                               (gx#stx-e _tl1475514868_)))
                                          (let ((_hd1475714874_
                                                 (##car _e1475614871_))
                                                (_tl1475814876_
                                                 (##cdr _e1475614871_)))
                                            (if (gx#stx-null? _tl1475814876_)
                                                (if (gx#stx-null?
                                                     _tl1475214860_)
                                                    ((lambda (_L14879_
                                                              _L14880_
                                                              _L14881_
                                                              _L14882_)
                                                       (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#identifier-symbol _L14881_)
                               (cons (gx#stx-e _L14880_)
                                     (cons (gxc#identifier-symbol _L14879_)
                                           (cons '#f '())))))
                   (_g1466014770_ _g1466214773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1475714874_
                                                     _hd1474814850_
                                                     _hd1473914826_
                                                     _hd1473014802_)
                                                    (_g1466014770_
                                                     _g1466214773_))
                                                (_g1466014770_
                                                 _g1466214773_))))
                                        (_g1466014770_ _g1466214773_))
                                    (_g1466014770_ _g1466214773_))
                                (_g1466014770_ _g1466214773_))))
                        (_g1466014770_ _g1466214773_))))
                (_g1466014770_ _g1466214773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1466014770_
                                                     _g1466214773_))))
                                            (_g1466014770_ _g1466214773_))
                                        (_g1466014770_ _g1466214773_))
                                    (_g1466014770_ _g1466214773_))))
                            (_g1466014770_ _g1466214773_))))
                    (_g1466014770_ _g1466214773_))
                (_g1466014770_ _g1466214773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1466014770_ _g1466214773_))
                                            (_g1466014770_ _g1466214773_))
                                        (_g1466014770_ _g1466214773_))))
                                (_g1466014770_ _g1466214773_))))
                        (_g1466014770_ _g1466214773_))
                    (_g1466014770_ _g1466214773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1466014770_
                                                     _g1466214773_))
                                                (_g1466014770_ _g1466214773_))
                                            (_g1466014770_ _g1466214773_))))
                                    (_g1466014770_ _g1466214773_))))
                            (_g1466014770_ _g1466214773_))))
                    (_g1466014770_ _g1466214773_))))
             (_g1465815100_
              (lambda (_g1466214923_)
                (if (gx#stx-pair? _g1466214923_)
                    (let ((_e1466814925_ (gx#stx-e _g1466214923_)))
                      (let ((_hd1466914928_ (##car _e1466814925_))
                            (_tl1467014930_ (##cdr _e1466814925_)))
                        (if (gx#stx-pair? _tl1467014930_)
                            (let ((_e1467114933_ (gx#stx-e _tl1467014930_)))
                              (let ((_hd1467214936_ (##car _e1467114933_))
                                    (_tl1467314938_ (##cdr _e1467114933_)))
                                (if (gx#stx-pair? _hd1467214936_)
                                    (let ((_e1467414941_
                                           (gx#stx-e _hd1467214936_)))
                                      (let ((_hd1467514944_
                                             (##car _e1467414941_))
                                            (_tl1467614946_
                                             (##cdr _e1467414941_)))
                                        (if (gx#identifier? _hd1467514944_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1467514944_)
                                                (if (gx#stx-pair?
                                                     _tl1467614946_)
                                                    (let ((_e1467714949_
                                                           (gx#stx-e
                                                            _tl1467614946_)))
                                                      (let ((_hd1467814952_
                                                             (##car _e1467714949_))
                                                            (_tl1467914954_
                                                             (##cdr _e1467714949_)))
                                                        (if (gx#stx-null?
                                                             _tl1467914954_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1467314938_)
                        (let ((_e1468014957_ (gx#stx-e _tl1467314938_)))
                          (let ((_hd1468114960_ (##car _e1468014957_))
                                (_tl1468214962_ (##cdr _e1468014957_)))
                            (if (gx#stx-pair? _hd1468114960_)
                                (let ((_e1468314965_
                                       (gx#stx-e _hd1468114960_)))
                                  (let ((_hd1468414968_ (##car _e1468314965_))
                                        (_tl1468514970_ (##cdr _e1468314965_)))
                                    (if (gx#identifier? _hd1468414968_)
                                        (if (gx#stx-eq? '%#ref _hd1468414968_)
                                            (if (gx#stx-pair? _tl1468514970_)
                                                (let ((_e1468614973_
                                                       (gx#stx-e
                                                        _tl1468514970_)))
                                                  (let ((_hd1468714976_
                                                         (##car _e1468614973_))
                                                        (_tl1468814978_
                                                         (##cdr _e1468614973_)))
                                                    (if (gx#stx-null?
                                                         _tl1468814978_)
                                                        (if (gx#stx-pair?
                                                             _tl1468214962_)
                                                            (let ((_e1468914981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1468214962_)))
                      (let ((_hd1469014984_ (##car _e1468914981_))
                            (_tl1469114986_ (##cdr _e1468914981_)))
                        (if (gx#stx-pair? _hd1469014984_)
                            (let ((_e1469214989_ (gx#stx-e _hd1469014984_)))
                              (let ((_hd1469314992_ (##car _e1469214989_))
                                    (_tl1469414994_ (##cdr _e1469214989_)))
                                (if (gx#identifier? _hd1469314992_)
                                    (if (gx#stx-eq? '%#quote _hd1469314992_)
                                        (if (gx#stx-pair? _tl1469414994_)
                                            (let ((_e1469514997_
                                                   (gx#stx-e _tl1469414994_)))
                                              (let ((_hd1469615000_
                                                     (##car _e1469514997_))
                                                    (_tl1469715002_
                                                     (##cdr _e1469514997_)))
                                                (if (gx#stx-null?
                                                     _tl1469715002_)
                                                    (if (gx#stx-pair?
                                                         _tl1469114986_)
                                                        (let ((_e1469815005_
                                                               (gx#stx-e
                                                                _tl1469114986_)))
                                                          (let ((_hd1469915008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1469815005_))
                        (_tl1470015010_ (##cdr _e1469815005_)))
                    (if (gx#stx-pair? _hd1469915008_)
                        (let ((_e1470115013_ (gx#stx-e _hd1469915008_)))
                          (let ((_hd1470215016_ (##car _e1470115013_))
                                (_tl1470315018_ (##cdr _e1470115013_)))
                            (if (gx#identifier? _hd1470215016_)
                                (if (gx#stx-eq? '%#ref _hd1470215016_)
                                    (if (gx#stx-pair? _tl1470315018_)
                                        (let ((_e1470415021_
                                               (gx#stx-e _tl1470315018_)))
                                          (let ((_hd1470515024_
                                                 (##car _e1470415021_))
                                                (_tl1470615026_
                                                 (##cdr _e1470415021_)))
                                            (if (gx#stx-null? _tl1470615026_)
                                                (if (gx#stx-pair?
                                                     _tl1470015010_)
                                                    (let ((_e1470715029_
                                                           (gx#stx-e
                                                            _tl1470015010_)))
                                                      (let ((_hd1470815032_
                                                             (##car _e1470715029_))
                                                            (_tl1470915034_
                                                             (##cdr _e1470715029_)))
                                                        (if (gx#stx-pair?
                                                             _hd1470815032_)
                                                            (let ((_e1471015037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1470815032_)))
                      (let ((_hd1471115040_ (##car _e1471015037_))
                            (_tl1471215042_ (##cdr _e1471015037_)))
                        (if (gx#identifier? _hd1471115040_)
                            (if (gx#stx-eq? '%#quote _hd1471115040_)
                                (if (gx#stx-pair? _tl1471215042_)
                                    (let ((_e1471315045_
                                           (gx#stx-e _tl1471215042_)))
                                      (let ((_hd1471415048_
                                             (##car _e1471315045_))
                                            (_tl1471515050_
                                             (##cdr _e1471315045_)))
                                        (if (gx#stx-null? _tl1471515050_)
                                            (if (gx#stx-null? _tl1470915034_)
                                                ((lambda (_L15053_
                                                          _L15054_
                                                          _L15055_
                                                          _L15056_
                                                          _L15057_)
                                                   (if (eq? (gxc#identifier-symbol
                                                             _L15057_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15056_)
                           (cons (gx#stx-e _L15055_)
                                 (cons (gxc#identifier-symbol _L15054_)
                                       (cons (gx#stx-e _L15053_) '())))))
               (_g1465914920_ _g1466214923_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1471415048_
                                                 _hd1470515024_
                                                 _hd1469615000_
                                                 _hd1468714976_
                                                 _hd1467814952_)
                                                (_g1465914920_ _g1466214923_))
                                            (_g1465914920_ _g1466214923_))))
                                    (_g1465914920_ _g1466214923_))
                                (_g1465914920_ _g1466214923_))
                            (_g1465914920_ _g1466214923_))))
                    (_g1465914920_ _g1466214923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465914920_
                                                     _g1466214923_))
                                                (_g1465914920_
                                                 _g1466214923_))))
                                        (_g1465914920_ _g1466214923_))
                                    (_g1465914920_ _g1466214923_))
                                (_g1465914920_ _g1466214923_))))
                        (_g1465914920_ _g1466214923_))))
                (_g1465914920_ _g1466214923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465914920_
                                                     _g1466214923_))))
                                            (_g1465914920_ _g1466214923_))
                                        (_g1465914920_ _g1466214923_))
                                    (_g1465914920_ _g1466214923_))))
                            (_g1465914920_ _g1466214923_))))
                    (_g1465914920_ _g1466214923_))
                (_g1465914920_ _g1466214923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1465914920_ _g1466214923_))
                                            (_g1465914920_ _g1466214923_))
                                        (_g1465914920_ _g1466214923_))))
                                (_g1465914920_ _g1466214923_))))
                        (_g1465914920_ _g1466214923_))
                    (_g1465914920_ _g1466214923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1465914920_
                                                     _g1466214923_))
                                                (_g1465914920_ _g1466214923_))
                                            (_g1465914920_ _g1466214923_))))
                                    (_g1465914920_ _g1466214923_))))
                            (_g1465914920_ _g1466214923_))))
                    (_g1465914920_ _g1466214923_)))))
        (_g1465815100_ _stx14657_))))
  (define gxc#!alias::typedecl
    (lambda (_self14633_)
      (let* ((_self1463414640_ _self14633_)
             (_E1463614644_
              (lambda () (error '"No clause matching" _self1463414640_)))
             (_K1463714649_
              (lambda (_alias-id14647_)
                (cons '@alias (cons _alias-id14647_ '())))))
        (if (##structure-instance-of?
             _self1463414640_
             (##type-id gxc#!alias::t))
            (let* ((_e1463814652_ (##vector-ref _self1463414640_ '1))
                   (_alias-id14655_ _e1463814652_))
              (_K1463714649_ _alias-id14655_))
            (_E1463614644_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self14455_)
      (let* ((_self1445614467_ _self14455_)
             (_E1445814471_
              (lambda () (error '"No clause matching" _self1445614467_)))
             (_K1445914480_
              (lambda (_plist14474_
                       _ctor14475_
                       _fields14476_
                       _super14477_
                       _type-id14478_)
                (cons '@struct-type
                      (cons _type-id14478_
                            (cons _super14477_
                                  (cons _fields14476_
                                        (cons _ctor14475_
                                              (cons _plist14474_ '())))))))))
        (if (##structure-instance-of?
             _self1445614467_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1446014483_ (##vector-ref _self1445614467_ '1))
                   (_type-id14486_ _e1446014483_)
                   (_e1446114488_ (##vector-ref _self1445614467_ '2))
                   (_super14491_ _e1446114488_)
                   (_e1446214493_ (##vector-ref _self1445614467_ '3))
                   (_fields14496_ _e1446214493_)
                   (_e1446314498_ (##vector-ref _self1445614467_ '4))
                   (_e1446414501_ (##vector-ref _self1445614467_ '5))
                   (_ctor14504_ _e1446414501_)
                   (_e1446514506_ (##vector-ref _self1445614467_ '6))
                   (_plist14509_ _e1446514506_))
              (_K1445914480_
               _plist14509_
               _ctor14504_
               _fields14496_
               _super14491_
               _type-id14486_))
            (_E1445814471_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self14309_)
      (let* ((_self1431014316_ _self14309_)
             (_E1431214320_
              (lambda () (error '"No clause matching" _self1431014316_)))
             (_K1431314325_
              (lambda (_struct-t14323_)
                (cons '@struct-pred (cons _struct-t14323_ '())))))
        (if (##structure-instance-of?
             _self1431014316_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1431414328_ (##vector-ref _self1431014316_ '1))
                   (_struct-t14331_ _e1431414328_))
              (_K1431314325_ _struct-t14331_))
            (_E1431214320_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self14163_)
      (let* ((_self1416414170_ _self14163_)
             (_E1416614174_
              (lambda () (error '"No clause matching" _self1416414170_)))
             (_K1416714179_
              (lambda (_struct-t14177_)
                (cons '@struct-cons (cons _struct-t14177_ '())))))
        (if (##structure-instance-of?
             _self1416414170_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1416814182_ (##vector-ref _self1416414170_ '1))
                   (_struct-t14185_ _e1416814182_))
              (_K1416714179_ _struct-t14185_))
            (_E1416614174_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self14003_)
      (let* ((_self1400414012_ _self14003_)
             (_E1400614016_
              (lambda () (error '"No clause matching" _self1400414012_)))
             (_K1400714023_
              (lambda (_unchecked?14019_ _off14020_ _struct-t14021_)
                (cons '@struct-getf
                      (cons _struct-t14021_
                            (cons _off14020_ (cons _unchecked?14019_ '())))))))
        (if (##structure-instance-of?
             _self1400414012_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1400814026_ (##vector-ref _self1400414012_ '1))
                   (_struct-t14029_ _e1400814026_)
                   (_e1400914031_ (##vector-ref _self1400414012_ '2))
                   (_off14034_ _e1400914031_)
                   (_e1401014036_ (##vector-ref _self1400414012_ '3))
                   (_unchecked?14039_ _e1401014036_))
              (_K1400714023_ _unchecked?14039_ _off14034_ _struct-t14029_))
            (_E1400614016_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13843_)
      (let* ((_self1384413852_ _self13843_)
             (_E1384613856_
              (lambda () (error '"No clause matching" _self1384413852_)))
             (_K1384713863_
              (lambda (_unchecked?13859_ _off13860_ _struct-t13861_)
                (cons '@struct-setf
                      (cons _struct-t13861_
                            (cons _off13860_ (cons _unchecked?13859_ '())))))))
        (if (##structure-instance-of?
             _self1384413852_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1384813866_ (##vector-ref _self1384413852_ '1))
                   (_struct-t13869_ _e1384813866_)
                   (_e1384913871_ (##vector-ref _self1384413852_ '2))
                   (_off13874_ _e1384913871_)
                   (_e1385013876_ (##vector-ref _self1384413852_ '3))
                   (_unchecked?13879_ _e1385013876_))
              (_K1384713863_ _unchecked?13879_ _off13874_ _struct-t13869_))
            (_E1384613856_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13669_)
      (let* ((_self1367013680_ _self13669_)
             (_E1367213684_
              (lambda () (error '"No clause matching" _self1367013680_)))
             (_K1367313695_
              (lambda (_typedecl13687_
                       _inline13688_
                       _dispatch13689_
                       _arity13690_)
                (if _inline13688_
                    (let ((_$e13692_ _typedecl13687_))
                      (if _$e13692_
                          _$e13692_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13690_ (cons _dispatch13689_ '())))))))
        (if (##structure-instance-of?
             _self1367013680_
             (##type-id gxc#!lambda::t))
            (let* ((_e1367413698_ (##vector-ref _self1367013680_ '1))
                   (_e1367513701_ (##vector-ref _self1367013680_ '2))
                   (_arity13704_ _e1367513701_)
                   (_e1367613706_ (##vector-ref _self1367013680_ '3))
                   (_dispatch13709_ _e1367613706_)
                   (_e1367713711_ (##vector-ref _self1367013680_ '4))
                   (_inline13714_ _e1367713711_)
                   (_e1367813716_ (##vector-ref _self1367013680_ '5))
                   (_typedecl13719_ _e1367813716_))
              (_K1367313695_
               _typedecl13719_
               _inline13714_
               _dispatch13709_
               _arity13704_))
            (_E1367213684_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self13480_)
      (letrec ((_clause-e13482_
                (lambda (_clause13512_)
                  (let* ((_clause1351313521_ _clause13512_)
                         (_E1351513525_
                          (lambda ()
                            (error '"No clause matching" _clause1351313521_)))
                         (_K1351613531_
                          (lambda (_dispatch13528_ _arity13529_)
                            (cons _arity13529_ (cons _dispatch13528_ '())))))
                    (if (##structure-instance-of?
                         _clause1351313521_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1351713534_
                                (##vector-ref _clause1351313521_ '1))
                               (_e1351813537_
                                (##vector-ref _clause1351313521_ '2))
                               (_arity13540_ _e1351813537_)
                               (_e1351913542_
                                (##vector-ref _clause1351313521_ '3))
                               (_dispatch13545_ _e1351913542_))
                          (_K1351613531_ _dispatch13545_ _arity13540_))
                        (_E1351513525_))))))
        (let* ((_self1348313490_ _self13480_)
               (_E1348513494_
                (lambda () (error '"No clause matching" _self1348313490_)))
               (_K1348613501_
                (lambda (_clauses13497_)
                  (let ((_clauses13499_ (map _clause-e13482_ _clauses13497_)))
                    (cons '@case-lambda _clauses13499_)))))
          (if (##structure-instance-of?
               _self1348313490_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1348713504_ (##vector-ref _self1348313490_ '1))
                     (_e1348813507_ (##vector-ref _self1348313490_ '2))
                     (_clauses13510_ _e1348813507_))
                (_K1348613501_ _clauses13510_))
              (_E1348513494_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self13323_)
      (let* ((_self1332413332_ _self13323_)
             (_E1332613336_
              (lambda () (error '"No clause matching" _self1332413332_)))
             (_K1332713342_
              (lambda (_dispatch13339_ _table13340_)
                (cons '@kw-lambda
                      (cons _table13340_ (cons _dispatch13339_ '()))))))
        (if (##structure-instance-of?
             _self1332413332_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1332813345_ (##vector-ref _self1332413332_ '1))
                   (_e1332913348_ (##vector-ref _self1332413332_ '2))
                   (_table13351_ _e1332913348_)
                   (_e1333013353_ (##vector-ref _self1332413332_ '3))
                   (_dispatch13356_ _e1333013353_))
              (_K1332713342_ _dispatch13356_ _table13351_))
            (_E1332613336_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self13166_)
      (let* ((_self1316713175_ _self13166_)
             (_E1316913179_
              (lambda () (error '"No clause matching" _self1316713175_)))
             (_K1317013185_
              (lambda (_main13182_ _keys13183_)
                (cons '@kw-lambda-dispatch
                      (cons _keys13183_ (cons _main13182_ '()))))))
        (if (##structure-instance-of?
             _self1316713175_
             (##type-id gxc#!kw-lambda-primary::t))
            (let* ((_e1317113188_ (##vector-ref _self1316713175_ '1))
                   (_e1317213191_ (##vector-ref _self1316713175_ '2))
                   (_keys13194_ _e1317213191_)
                   (_e1317313196_ (##vector-ref _self1316713175_ '3))
                   (_main13199_ _e1317313196_))
              (_K1317013185_ _main13199_ _keys13194_))
            (_E1316913179_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx13042_)
      (if (##structure-direct-instance-of? _stx13042_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx13042_)
          (gx#stx-e _stx13042_)))))
